package tech.zerofiltre.blog.infra.providers.notification.user;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.MessageSource;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.thymeleaf.ITemplateEngine;
import org.thymeleaf.context.Context;
import tech.zerofiltre.blog.domain.article.ArticleProvider;
import tech.zerofiltre.blog.domain.article.ArticleViewProvider;
import tech.zerofiltre.blog.domain.user.UserProvider;
import tech.zerofiltre.blog.domain.user.model.User;
import tech.zerofiltre.blog.infra.InfraProperties;
import tech.zerofiltre.blog.infra.providers.notification.user.model.Email;
import tech.zerofiltre.blog.infra.security.config.EmailValidator;

import java.time.LocalDate;
import java.util.*;
import java.util.concurrent.TimeUnit;

import static tech.zerofiltre.blog.util.ZerofiltreUtils.defineStartDateAndEndDate;
import static tech.zerofiltre.blog.util.ZerofiltreUtils.getOriginUrl;

@Slf4j
@Component
@RequiredArgsConstructor
public class MonthlyStatsReminder {

    private static final int START_DATE = 0;
    private static final int END_DATE = 1;

    private final UserProvider userProvider;
    private final ZerofiltreEmailSender emailSender;
    private final MessageSource messages;
    private final InfraProperties infraProperties;
    private final ITemplateEngine emailTemplateEngine;
    private final ArticleViewProvider articleViewProvider;
    private final ArticleProvider articleProvider;


    @Scheduled(cron = "${zerofiltre.infra.stats.reminder.cron}")
    public void sendStats() throws InterruptedException {

        List<User> users = userProvider.users();
        //TODO: Get only users having views/enrollments ... only active users actually

        List<LocalDate> listDates = defineStartDateAndEndDate();

        for (User user : users) {
            if (user.getEmail() != null && EmailValidator.validateEmail(user.getEmail())) {

                String language = user.getLanguage() != null ? user.getLanguage() : Locale.FRANCE.getLanguage();
                Locale locale = new Locale(language);

                String subject = messages.getMessage("message.stats.subject.remind", null, locale);

                String pageUri = "/articles";

                int articlesViewsCount = articleViewProvider.countArticlesReadByDatesAndUser(listDates.get(START_DATE), listDates.get(END_DATE), user.getId());
                int publishedArticlesCount = articleProvider.countPublishedArticlesByDatesAndUser(listDates.get(START_DATE), listDates.get(END_DATE), user.getId());

                Map<String, Object> templateModel = new HashMap<>();
                templateModel.put("fullName", user.getFullName());
                templateModel.put("articlesViewsCount", articlesViewsCount);
                templateModel.put("publishedArticlesCount", publishedArticlesCount);
                templateModel.put("startNewArticleLink", getOriginUrl(infraProperties.getEnv()) + pageUri);
                templateModel.put("readLatestArticlesLink", getOriginUrl(infraProperties.getEnv()) + pageUri);
                Context thymeleafContext = new Context();
                thymeleafContext.setVariables(templateModel);
                thymeleafContext.setLocale(locale);
                String emailContent = emailTemplateEngine.process("stats_reminder.html", thymeleafContext);
                Email email = new Email();
                email.setSubject(subject);
                email.setContent(emailContent);
                email.setRecipients(Collections.singletonList(user.getEmail()));
                emailSender.send(email, true);
            }
            TimeUnit.SECONDS.sleep(10);
        }
        log.info("Broadcast of {} stats mail succeeded", users.size());


    }
}
