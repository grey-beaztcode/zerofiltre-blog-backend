-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: blog-api-db.cttqyqreuonm.eu-west-3.rds.amazonaws.com    Database: blogapidb_dev
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `DATABASECHANGELOG`
--

DROP TABLE IF EXISTS `DATABASECHANGELOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOG` (
  `ID` varchar(255) NOT NULL,
  `AUTHOR` varchar(255) NOT NULL,
  `FILENAME` varchar(255) NOT NULL,
  `DATEEXECUTED` datetime NOT NULL,
  `ORDEREXECUTED` int NOT NULL,
  `EXECTYPE` varchar(10) NOT NULL,
  `MD5SUM` varchar(35) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `COMMENTS` varchar(255) DEFAULT NULL,
  `TAG` varchar(255) DEFAULT NULL,
  `LIQUIBASE` varchar(20) DEFAULT NULL,
  `CONTEXTS` varchar(255) DEFAULT NULL,
  `LABELS` varchar(255) DEFAULT NULL,
  `DEPLOYMENT_ID` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOG`
--

LOCK TABLES `DATABASECHANGELOG` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOG` DISABLE KEYS */;
/*!40000 ALTER TABLE `DATABASECHANGELOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DATABASECHANGELOGLOCK`
--

DROP TABLE IF EXISTS `DATABASECHANGELOGLOCK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DATABASECHANGELOGLOCK` (
  `ID` int NOT NULL,
  `LOCKED` bit(1) NOT NULL,
  `LOCKGRANTED` datetime DEFAULT NULL,
  `LOCKEDBY` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DATABASECHANGELOGLOCK`
--

LOCK TABLES `DATABASECHANGELOGLOCK` WRITE;
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` DISABLE KEYS */;
INSERT INTO `DATABASECHANGELOGLOCK` VALUES (1,_binary '\0',NULL,NULL);
/*!40000 ALTER TABLE `DATABASECHANGELOGLOCK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `created_at` datetime(6) DEFAULT NULL,
  `last_published_at` datetime(6) DEFAULT NULL,
  `last_saved_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `views_count` bigint NOT NULL,
  `author_id` bigint DEFAULT NULL,
  `premium` bit(1) NOT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgwrtdbqvt9ucntp82nd3yiuec` (`author_id`),
  CONSTRAINT `FKgwrtdbqvt9ucntp82nd3yiuec` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article`
VALUES (1,
        'undefined![alt](https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/FLYER%20Pressing2.png)\n\n![alt](https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/FLYER%20Pressing2.png)\n\n',
        '2023-02-18 07:37:28.106519', NULL, '2024-07-08 09:01:27.306510', NULL, 0,
        'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/enersy.png','Enersy',0,2,_binary '\0',NULL),(2,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins,
        puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',
        '2023-04-15 10:40:09.693715', NULL, '2023-09-18 00:18:22.976467', NULL, 3,
        'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',NULL,'Un nouvel article',0,2,_binary '\0',NULL),(3,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins,
        puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n\n      ','2023-05-26 20:14:51.786451',NULL,'2023-09-18 00:19:16.466685',NULL,3,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'un article de test again', 0, 2, _binary '\0', NULL),
       (4,
        '\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ','2023-07-10 23:32:39.940374','2023-07-10 23:33:46.931515','2023-07-10 23:33:46.931515','2023-07-10 23:33:46.931515',1,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'TEst view', 20418, 4, _binary '\0', NULL),
       (5,
        '\n      ## Introduction\n        \n        ```java\n        String lang = \"java\"\n        ```\n\n        `single line code`\n\n      Ici vous dites ce que vous allez faire de façon objective\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.\n                       \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.            \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.           \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.            \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stopon his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.\n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.            \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.              \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.          \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.              \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.                 \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.               \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.     \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.        \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.    \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.        \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.        \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.## 2/ Contenu 2\n       Once upon a time, in a far-off land, there was a very lazy king who spent all day lounging on his throne.\n       One day, his advisors came to him with a problem: the kingdom was running out of money.\n       The king thought long and hard, and finally came up with a brilliant plan: he would tax the jokes in the\n       kingdom. Jokester began sneaking into the castle in the middle of the night and leaving jokes all over the\n       place: under the king\'s pillow, in
        his soup, even in the royal toilet. The king was furious,
        but he couldn\'t\n        seem to stop Jokester.        \n        And then, one day, the people of the kingdom discovered that the jokes left by Jokester were so funny                       \n        that they couldn\'t help but laugh. And once they started laughing,
        they couldn\'t stop.\n   \n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      \n\n',
        '2023-07-10 23:38:43.653170', '2024-08-14 18:30:29.177868', '2024-08-14 18:30:29.177868',
        '2023-07-10 23:38:46.415992', 1,
        'Veuillez indiquer ici le résume de votre article. Ex: M, ettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',NULL,'katka',21211,2,_binary '','https://www.youtube.com/watch?v=V1f8MOQiHRw&list=TLPQMjQwMzIwMjSjFNi8oS6pvA&index=5'),(6,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins,
        puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',
        '2023-07-10 23:39:27.695333', NULL, '2023-07-10 23:39:30.052502', NULL, 3,
        'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',NULL,'Abna',0,4,_binary '\0',NULL),(7,'undefined![alt](https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/enr_tips.png)![alt](https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Logo.png.jpg)![alt](https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/visuel_articles_payants.jpeg)![alt](https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/prom-thanos-vm.png)mlkfmslkdfmlskdfmlksfmlkfmslkdfmlskdfmlksf\n\n\nsmdlkfsmldkfzeizsmdlkfsmldkfzeiz\n\n\nmldkfmldkfglmkdfglmkdlmmldkfmldkfglmkdfglmkdlm\n','2023-08-17 05:57:23.156198',NULL,'2024-07-06 08:39:15.095992',NULL,0,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'Test soumission avec envoi de mail', 0, 3, _binary '\0', NULL),
       (8,
        '\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ','2023-09-18 00:15:52.753666',NULL,'2023-09-18 00:16:02.698670',NULL,3,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'dfzzef', 0, 2, _binary '\0', NULL),
       (9,
        '\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ','2023-09-18 00:16:35.951326',NULL,'2023-09-18 00:16:39.500296',NULL,3,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'Demo 1', 0, 2, _binary '\0', NULL),
       (10,
        '\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ','2023-09-18 00:17:19.387063',NULL,'2023-09-18 00:17:22.657060',NULL,3,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'Demo 2', 0, 2, _binary '\0', NULL),
       (11, NULL, '2023-09-18 00:27:28.135721', NULL, '2023-09-18 00:27:28.135721', NULL, 0, NULL, NULL, 'Hello', 0, 2,
        _binary '\0', NULL),
       (12, NULL, '2023-09-18 00:28:53.726032', NULL, '2023-09-18 00:28:53.726032', NULL, 0, NULL, NULL, 'Demo 3', 0, 2,
        _binary '\0', NULL),
       (13,
        '\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ','2023-12-28 20:47:12.878854',NULL,'2023-12-28 20:47:18.417532',NULL,3,'Veuillez indiquer ici le résume de votre article. Ex: Mettre en place un serveur de messagerie n\'a jamais été aussi simple. Voici comment faire.',
        NULL, 'Test soumission envoi e-mail', 0, 3, _binary '\0', NULL),
       (14, NULL, '2024-03-12 12:17:37.056780', NULL, '2024-03-12 12:17:37.056780', NULL, 0, NULL, NULL, 'Hello test',
        0, 2, _binary '\0', NULL),
       (15, 'The new content', '2024-04-17 22:17:41.821247', NULL, '2024-04-17 22:21:34.015004', NULL, 3,
        'Admin summary added by the administrator', 'The new thumbnail', 'Modified by', 0, 1, _binary '\0',
        'an awesome youtube video');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_tag` (
  `article_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `FKesqp7s9jj2wumlnhssbme5ule` (`tag_id`),
  CONSTRAINT `FKenqeees0y8hkm7x1p1ittuuye` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`),
  CONSTRAINT `FKesqp7s9jj2wumlnhssbme5ule` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_view`
--

DROP TABLE IF EXISTS `article_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `article_view` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `viewed_at` datetime(6) DEFAULT NULL,
  `viewed_id` bigint DEFAULT NULL,
  `viewer_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK35ij98bostr30tl9yro7uxma` (`viewed_id`),
  KEY `FKr0698t20aj71w5i24b187h20n` (`viewer_id`),
  CONSTRAINT `FK35ij98bostr30tl9yro7uxma` FOREIGN KEY (`viewed_id`) REFERENCES `article` (`id`),
  CONSTRAINT `FKr0698t20aj71w5i24b187h20n` FOREIGN KEY (`viewer_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48126 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_view`
--

LOCK TABLES `article_view` WRITE;
/*!40000 ALTER TABLE `article_view` DISABLE KEYS */;
INSERT INTO `article_view`
VALUES (46760, '2024-03-14 20:37:49.761843', 5, NULL),
       (46761, '2024-03-14 20:37:49.777042', 4, NULL),
       (46762, '2024-03-14 20:37:49.930464', 4, NULL),
       (46763, '2024-03-14 20:37:50.077852', 4, NULL),
       (46764, '2024-03-14 20:37:50.282395', 5, NULL),
       (46765, '2024-03-14 20:37:50.627006', 5, NULL),
       (46766, '2024-03-14 20:37:50.841847', 5, NULL),
       (46767, '2024-03-14 20:37:51.024165', 5, NULL),
       (46768, '2024-03-14 20:37:51.172000', 5, NULL),
       (46769, '2024-03-14 20:37:51.694404', 4, NULL),
       (46770, '2024-03-14 20:37:51.950780', 4, NULL),
       (46771, '2024-03-14 20:37:52.277134', 4, NULL),
       (46772, '2024-03-14 20:37:52.419187', 4, NULL),
       (46773, '2024-03-14 20:37:52.824575', 5, NULL),
       (46774, '2024-03-14 20:37:53.116622', 5, NULL),
       (46775, '2024-03-14 20:37:53.257484', 4, NULL),
       (46776, '2024-03-14 20:37:53.915680', 5, NULL),
       (46777, '2024-03-14 20:37:53.925547', 5, NULL),
       (46778, '2024-03-14 20:37:53.963070', 4, NULL),
       (46779, '2024-03-14 20:37:54.263185', 4, NULL),
       (46780, '2024-03-14 20:37:54.346339', 5, NULL),
       (46781, '2024-03-14 20:37:55.025213', 5, NULL),
       (46782, '2024-03-14 20:37:55.149631', 4, NULL),
       (46783, '2024-03-14 20:37:55.375801', 5, NULL),
       (46784, '2024-03-14 20:37:55.626500', 4, NULL),
       (46785, '2024-03-14 20:37:56.137180', 4, NULL),
       (46786, '2024-03-14 20:37:56.250863', 5, NULL),
       (46787, '2024-03-14 20:37:56.469390', 4, NULL),
       (46788, '2024-03-14 20:37:56.699433', 5, NULL),
       (46789, '2024-03-14 20:37:57.190132', 5, NULL),
       (46790, '2024-03-14 20:37:57.505706', 5, NULL),
       (46791, '2024-03-14 20:37:58.455822', 4, NULL),
       (46792, '2024-03-14 20:37:58.734057', 4, NULL),
       (46793, '2024-03-14 20:37:58.845637', 4, NULL),
       (46794, '2024-03-14 20:37:58.864494', 4, NULL),
       (46795, '2024-03-14 20:37:59.045342', 4, NULL),
       (46796, '2024-03-14 20:37:59.209630', 4, NULL),
       (46797, '2024-03-14 20:37:59.412544', 4, NULL),
       (46798, '2024-03-14 20:37:59.525021', 5, NULL),
       (46799, '2024-03-14 20:37:59.820025', 5, NULL),
       (46800, '2024-03-14 20:38:00.620333', 5, NULL),
       (46801, '2024-03-14 20:38:00.659302', 4, NULL),
       (46802, '2024-03-14 20:38:00.664458', 5, NULL),
       (46803, '2024-03-14 20:38:00.670846', 5, NULL),
       (46804, '2024-03-14 20:38:00.694948', 5, NULL),
       (46805, '2024-03-14 20:38:00.842059', 4, NULL),
       (46806, '2024-03-14 20:38:00.850008', 5, NULL),
       (46807, '2024-03-14 20:38:01.844207', 5, NULL),
       (46808, '2024-03-14 20:38:01.874388', 5, NULL),
       (46809, '2024-03-14 20:38:02.488045', 4, NULL),
       (46810, '2024-03-14 20:38:02.702798', 4, NULL),
       (46811, '2024-03-14 20:38:03.237104', 4, NULL),
       (46812, '2024-03-14 20:38:03.548684', 5, NULL),
       (46813, '2024-03-14 20:38:03.759163', 5, NULL),
       (46814, '2024-03-14 20:38:04.354906', 5, NULL),
       (46815, '2024-03-14 20:38:04.384657', 4, NULL),
       (46816, '2024-03-14 20:38:04.434330', 4, NULL),
       (46817, '2024-03-14 20:38:04.637874', 4, NULL),
       (46818, '2024-03-14 20:38:04.668724', 4, NULL),
       (46819, '2024-03-14 20:38:05.447804', 5, NULL),
       (46820, '2024-03-14 20:38:05.449746', 4, NULL),
       (46821, '2024-03-14 20:38:05.819135', 5, NULL),
       (46822, '2024-03-14 20:38:06.128219', 5, NULL),
       (46823, '2024-03-14 20:38:06.136194', 4, NULL),
       (46824, '2024-03-14 20:38:06.141800', 5, NULL),
       (46825, '2024-03-14 20:38:06.500386', 4, NULL),
       (46826, '2024-03-14 20:38:06.525503', 5, NULL),
       (46827, '2024-03-14 20:38:07.104057', 5, NULL),
       (46828, '2024-03-14 20:38:07.320228', 4, NULL),
       (46829, '2024-03-14 20:38:07.541534', 5, NULL),
       (46830, '2024-03-14 20:38:08.230564', 4, NULL),
       (46831, '2024-03-14 20:38:08.416335', 4, NULL),
       (46832, '2024-03-14 20:38:08.428401', 5, NULL),
       (46833, '2024-03-14 20:38:08.907396', 4, NULL),
       (46834, '2024-03-14 20:38:09.302297', 5, NULL),
       (46835, '2024-03-14 20:38:09.374214', 4, NULL),
       (46836, '2024-03-14 20:38:09.446038', 5, NULL),
       (46837, '2024-03-14 20:38:09.986957', 5, NULL),
       (46838, '2024-03-14 20:38:10.110353', 4, NULL),
       (46839, '2024-03-14 20:38:10.229911', 4, NULL),
       (46840, '2024-03-14 20:38:10.506838', 5, NULL),
       (46841, '2024-03-14 20:38:11.228498', 4, NULL),
       (46842, '2024-03-14 20:38:11.753900', 5, NULL),
       (46843, '2024-03-14 20:38:11.753551', 4, NULL),
       (46844, '2024-03-14 20:38:11.764742', 5, NULL),
       (46845, '2024-03-14 20:38:11.799509', 4, NULL),
       (46846, '2024-03-14 20:38:12.137633', 5, NULL),
       (46847, '2024-03-14 20:38:12.250718', 5, NULL),
       (46848, '2024-03-14 20:38:12.854316', 5, NULL),
       (46849, '2024-03-14 20:38:13.252512', 4, NULL),
       (46850, '2024-03-14 20:38:13.262697', 4, NULL),
       (46851, '2024-03-14 20:38:13.273557', 4, NULL),
       (46852, '2024-03-14 20:38:13.935477', 4, NULL),
       (46853, '2024-03-14 20:38:14.436565', 5, NULL),
       (46854, '2024-03-14 20:38:14.445773', 5, NULL),
       (46855, '2024-03-14 20:38:14.480230', 5, NULL),
       (46856, '2024-03-14 20:38:14.979463', 5, NULL),
       (46857, '2024-03-14 20:38:15.510960', 4, NULL),
       (46858, '2024-03-14 20:38:15.574150', 4, NULL),
       (46859, '2024-03-14 20:38:16.460054', 4, NULL),
       (46860, '2024-03-14 20:38:16.628804', 4, NULL),
       (46861, '2024-03-14 20:38:16.642504', 5, NULL),
       (46862, '2024-03-14 20:38:16.733446', 5, NULL),
       (46863, '2024-03-14 20:38:16.914974', 4, NULL),
       (46864, '2024-03-14 20:38:17.025215', 4, NULL),
       (46865, '2024-03-14 20:38:17.542124', 4, NULL),
       (46866, '2024-03-14 20:38:17.573575', 4, NULL),
       (46867, '2024-03-14 20:38:17.822176', 5, NULL),
       (46868, '2024-03-14 20:38:17.844624', 5, NULL),
       (46869, '2024-03-14 20:38:17.928535', 5, NULL),
       (46870, '2024-03-14 20:38:18.085974', 5, NULL),
       (46871, '2024-03-14 20:38:18.538126', 5, NULL),
       (46872, '2024-03-14 20:38:18.617404', 5, NULL),
       (46873, '2024-03-14 20:38:20.343308', 4, NULL),
       (46874, '2024-03-14 20:38:20.352900', 4, NULL),
       (46875, '2024-03-14 20:38:20.366226', 4, NULL),
       (46876, '2024-03-14 20:38:20.476720', 4, NULL),
       (46877, '2024-03-14 20:38:20.543926', 4, NULL),
       (46878, '2024-03-14 20:38:20.761312', 4, NULL),
       (46879, '2024-03-14 20:38:20.852023', 4, NULL),
       (46880, '2024-03-14 20:38:21.078782', 4, NULL),
       (46881, '2024-03-14 20:38:21.341746', 5, NULL),
       (46882, '2024-03-14 20:38:21.351623', 5, NULL),
       (46883, '2024-03-14 20:38:21.452416', 5, NULL),
       (46884, '2024-03-14 20:38:21.568134', 5, NULL),
       (46885, '2024-03-14 20:38:22.020431', 5, NULL),
       (46886, '2024-03-14 20:38:22.546382', 5, NULL),
       (46887, '2024-03-14 20:38:22.573867', 4, NULL),
       (46888, '2024-03-14 20:38:22.615398', 5, NULL),
       (46889, '2024-03-14 20:38:22.623712', 5, NULL),
       (46890, '2024-03-14 20:38:22.909841', 5, NULL),
       (46891, '2024-03-14 20:38:23.924636', 4, NULL),
       (46892, '2024-03-14 20:38:24.838988', 4, NULL),
       (46893, '2024-03-14 20:38:24.847647', 4, NULL),
       (46894, '2024-03-14 20:38:24.855791', 4, NULL),
       (46895, '2024-03-14 20:38:25.064599', 5, NULL),
       (46896, '2024-03-14 20:38:25.515184', 4, NULL),
       (46897, '2024-03-14 20:38:25.855995', 5, NULL),
       (46898, '2024-03-14 20:38:25.937292', 5, NULL),
       (46899, '2024-03-14 20:38:25.945597', 5, NULL),
       (46900, '2024-03-14 20:38:26.232801', 4, NULL),
       (46901, '2024-03-14 20:38:26.608074', 5, NULL),
       (46902, '2024-03-14 20:38:26.831658', 4, NULL),
       (46903, '2024-03-14 20:38:26.841472', 4, NULL),
       (46904, '2024-03-14 20:38:27.282585', 5, NULL),
       (46905, '2024-03-14 20:38:27.737126', 4, NULL),
       (46906, '2024-03-14 20:38:27.739387', 5, NULL),
       (46907, '2024-03-14 20:38:27.924983', 5, NULL),
       (46908, '2024-03-14 20:38:28.419116', 4, NULL),
       (46909, '2024-03-14 20:38:28.718131', 4, NULL),
       (46910, '2024-03-14 20:38:28.833375', 5, NULL),
       (46911, '2024-03-14 20:38:29.412162', 4, NULL),
       (46912, '2024-03-14 20:38:29.414680', 5, NULL),
       (46913, '2024-03-14 20:38:29.425448', 4, NULL),
       (46914, '2024-03-14 20:38:29.844009', 4, NULL),
       (46915, '2024-03-14 20:38:29.846353', 5, NULL),
       (46916, '2024-03-14 20:38:30.439506', 5, NULL),
       (46917, '2024-03-14 20:38:30.662372', 5, NULL),
       (46918, '2024-03-14 20:38:30.923155', 5, NULL),
       (46919, '2024-03-14 20:38:31.117510', 4, NULL),
       (46920, '2024-03-14 20:38:31.719148', 4, NULL),
       (46921, '2024-03-14 20:38:31.823489', 4, NULL),
       (46922, '2024-03-14 20:38:32.219786', 4, NULL),
       (46923, '2024-03-14 20:38:32.230308', 5, NULL),
       (46924, '2024-03-14 20:38:32.835294', 4, NULL),
       (46925, '2024-03-14 20:38:32.838489', 5, NULL),
       (46926, '2024-03-14 20:38:32.844226', 4, NULL),
       (46927, '2024-03-14 20:38:32.969650', 5, NULL),
       (46928, '2024-03-14 20:38:33.235898', 5, NULL),
       (46929, '2024-03-14 20:38:33.930997', 4, NULL),
       (46930, '2024-03-14 20:38:34.323789', 5, NULL),
       (46931, '2024-03-14 20:38:34.330229', 5, NULL),
       (46932, '2024-03-14 20:38:34.360831', 4, NULL),
       (46933, '2024-03-14 20:38:34.839878', 5, NULL),
       (46934, '2024-03-14 20:38:35.392156', 5, NULL),
       (46935, '2024-03-14 20:38:35.486904', 4, NULL),
       (46936, '2024-03-14 20:38:36.118732', 4, NULL),
       (46937, '2024-03-14 20:38:36.266221', 4, NULL),
       (46938, '2024-03-14 20:38:36.542502', 5, NULL),
       (46939, '2024-03-14 20:38:37.134586', 4, NULL),
       (46940, '2024-03-14 20:38:37.191033', 5, NULL),
       (46941, '2024-03-14 20:38:37.261265', 4, NULL),
       (46942, '2024-03-14 20:38:37.457167', 5, NULL),
       (46943, '2024-03-14 20:38:38.431676', 4, NULL),
       (46944, '2024-03-14 20:38:38.432182', 5, NULL),
       (46945, '2024-03-14 20:38:38.438209', 4, NULL),
       (46946, '2024-03-14 20:38:38.622521', 5, NULL),
       (46947, '2024-03-14 20:38:39.338426', 5, NULL),
       (46948, '2024-03-14 20:38:39.676059', 5, NULL),
       (46949, '2024-03-14 20:38:39.721528', 4, NULL),
       (46950, '2024-03-14 20:38:40.237207', 4, NULL),
       (46951, '2024-03-14 20:38:41.114846', 5, NULL),
       (46952, '2024-03-14 20:38:41.150318', 4, NULL),
       (46953, '2024-03-14 20:38:41.285402', 5, NULL),
       (46954, '2024-03-14 20:38:41.415836', 4, NULL),
       (46955, '2024-03-14 20:38:41.963896', 4, NULL),
       (46956, '2024-03-14 20:38:42.347176', 4, NULL),
       (46957, '2024-03-14 20:38:42.379258', 5, NULL),
       (46958, '2024-03-14 20:38:42.505732', 5, NULL),
       (46959, '2024-03-14 20:38:42.620683', 4, NULL),
       (46960, '2024-03-14 20:38:43.023787', 5, NULL),
       (46961, '2024-03-14 20:38:43.375425', 5, NULL),
       (46962, '2024-03-14 20:38:43.833263', 4, NULL),
       (46963, '2024-03-14 20:38:43.836097', 5, NULL),
       (46964, '2024-03-14 20:38:44.263970', 4, NULL),
       (46965, '2024-03-14 20:38:44.612018', 4, NULL),
       (46966, '2024-03-14 20:38:44.854844', 5, NULL),
       (46967, '2024-03-14 20:38:44.991103', 4, NULL),
       (46968, '2024-03-14 20:38:45.332529', 5, NULL),
       (46969, '2024-03-14 20:38:45.690885', 5, NULL),
       (46970, '2024-03-14 20:38:46.064018', 5, NULL),
       (46971, '2024-03-14 20:38:46.665280', 4, NULL),
       (46972, '2024-03-14 20:38:47.132754', 4, NULL),
       (46973, '2024-03-14 20:38:47.141633', 4, NULL),
       (46974, '2024-03-14 20:38:47.151464', 4, NULL),
       (46975, '2024-03-14 20:38:47.554996', 4, NULL),
       (46976, '2024-03-14 20:38:47.639350', 4, NULL),
       (46977, '2024-03-14 20:38:47.641409', 5, NULL),
       (46978, '2024-03-14 20:38:47.916139', 5, NULL),
       (46979, '2024-03-14 20:38:48.155861', 5, NULL),
       (46980, '2024-03-14 20:38:48.185674', 4, NULL),
       (46981, '2024-03-14 20:38:48.249075', 5, NULL),
       (46982, '2024-03-14 20:38:48.618298', 5, NULL),
       (46983, '2024-03-14 20:38:48.666861', 5, NULL),
       (46984, '2024-03-14 20:38:49.254450', 5, NULL),
       (46985, '2024-03-14 20:38:49.705199', 4, NULL),
       (46986, '2024-03-14 20:38:50.729187', 4, NULL),
       (46987, '2024-03-14 20:38:50.733739', 5, NULL),
       (46988, '2024-03-14 20:38:51.352863', 4, NULL),
       (46989, '2024-03-14 20:38:51.361005', 4, NULL),
       (46990, '2024-03-14 20:38:51.797468', 5, NULL),
       (46991, '2024-03-14 20:38:52.725717', 4, NULL),
       (46992, '2024-03-14 20:38:52.918697', 5, NULL),
       (46993, '2024-03-14 20:38:52.925484', 4, NULL),
       (46994, '2024-03-14 20:38:52.927924', 5, NULL),
       (46995, '2024-03-14 20:38:53.129329', 4, NULL),
       (46996, '2024-03-14 20:38:53.421002', 5, NULL),
       (46997, '2024-03-14 20:38:53.638711', 4, NULL),
       (46998, '2024-03-14 20:38:53.804210', 5, NULL),
       (46999, '2024-03-14 20:38:53.892927', 4, NULL),
       (47000, '2024-03-14 20:38:54.066090', 4, NULL),
       (47001, '2024-03-14 20:38:54.155230', 5, NULL),
       (47002, '2024-03-14 20:38:54.263213', 4, NULL),
       (47003, '2024-03-14 20:38:54.597078', 4, NULL),
       (47004, '2024-03-14 20:38:54.741622', 5, NULL),
       (47005, '2024-03-14 20:38:54.977148', 5, NULL),
       (47006, '2024-03-14 20:38:55.078060', 5, NULL),
       (47007, '2024-03-14 20:38:55.326616', 5, NULL),
       (47008, '2024-03-14 20:38:55.753310', 5, NULL),
       (47009, '2024-03-14 20:38:55.753890', 4, NULL),
       (47010, '2024-03-14 20:38:56.843879', 5, NULL),
       (47011, '2024-03-14 20:38:57.027107', 4, NULL),
       (47012, '2024-03-14 20:38:57.171514', 4, NULL),
       (47013, '2024-03-14 20:38:57.637117', 4, NULL),
       (47014, '2024-03-14 20:38:58.437555', 4, NULL),
       (47015, '2024-03-14 20:38:58.469092', 5, NULL),
       (47016, '2024-03-14 20:38:58.553094', 5, NULL),
       (47017, '2024-03-14 20:38:58.744925', 5, NULL),
       (47018, '2024-03-14 20:38:58.759287', 4, NULL),
       (47019, '2024-03-14 20:38:59.425652', 5, NULL),
       (47020, '2024-03-14 20:38:59.463201', 4, NULL),
       (47021, '2024-03-14 20:38:59.827856', 4, NULL),
       (47022, '2024-03-14 20:38:59.934923', 4, NULL),
       (47023, '2024-03-14 20:38:59.942406', 5, NULL),
       (47024, '2024-03-14 20:39:00.217126', 4, NULL),
       (47025, '2024-03-14 20:39:00.524439', 5, NULL),
       (47026, '2024-03-14 20:39:00.695252', 4, NULL),
       (47027, '2024-03-14 20:39:00.814079', 5, NULL),
       (47028, '2024-03-14 20:39:00.931407', 5, NULL),
       (47029, '2024-03-14 20:39:01.137686', 4, NULL),
       (47030, '2024-03-14 20:39:01.172088', 5, NULL),
       (47031, '2024-03-14 20:39:02.034976', 5, NULL),
       (47032, '2024-03-14 20:39:02.035210', 4, NULL),
       (47033, '2024-03-14 20:39:02.241034', 5, NULL),
       (47034, '2024-03-14 20:39:02.434462', 4, NULL),
       (47035, '2024-03-14 20:39:02.462727', 4, NULL),
       (47036, '2024-03-14 20:39:03.123824', 5, NULL),
       (47037, '2024-03-14 20:39:03.450553', 5, NULL),
       (47038, '2024-03-14 20:39:03.537925', 5, NULL),
       (47039, '2024-03-14 20:39:04.139180', 4, NULL),
       (47040, '2024-03-14 20:39:04.336588', 4, NULL),
       (47041, '2024-03-14 20:39:05.242932', 4, NULL),
       (47042, '2024-03-14 20:39:05.242855', 5, NULL),
       (47043, '2024-03-14 20:39:05.418216', 5, NULL),
       (47044, '2024-03-14 20:39:06.253332', 4, NULL),
       (47045, '2024-03-14 20:39:06.615914', 4, NULL),
       (47046, '2024-03-14 20:39:06.624972', 4, NULL),
       (47047, '2024-03-14 20:39:06.649355', 5, NULL),
       (47048, '2024-03-14 20:39:06.748181', 4, NULL),
       (47049, '2024-03-14 20:39:06.928175', 4, NULL),
       (47050, '2024-03-14 20:39:07.340528', 4, NULL),
       (47051, '2024-03-14 20:39:07.366321', 5, NULL),
       (47052, '2024-03-14 20:39:07.590262', 5, NULL),
       (47053, '2024-03-14 20:39:07.702608', 5, NULL),
       (47054, '2024-03-14 20:39:07.816116', 5, NULL),
       (47055, '2024-03-14 20:39:07.985444', 5, NULL),
       (47056, '2024-03-14 20:39:09.023579', 4, NULL),
       (47057, '2024-03-14 20:39:09.033594', 4, NULL),
       (47058, '2024-03-14 20:39:09.052297', 5, NULL),
       (47059, '2024-03-14 20:39:09.943859', 5, NULL),
       (47060, '2024-03-14 20:39:09.945882', 4, NULL),
       (47061, '2024-03-14 20:39:10.086967', 5, NULL),
       (47062, '2024-03-14 20:39:10.650090', 4, NULL),
       (47063, '2024-03-14 20:39:10.754680', 4, NULL),
       (47064, '2024-03-14 20:39:11.220242', 4, NULL),
       (47065, '2024-03-14 20:39:11.220193', 5, NULL),
       (47066, '2024-03-14 20:39:11.630755', 4, NULL),
       (47067, '2024-03-14 20:39:11.842428', 5, NULL),
       (47068, '2024-03-14 20:39:11.880254', 4, NULL),
       (47069, '2024-03-14 20:39:11.964850', 5, NULL),
       (47070, '2024-03-14 20:39:12.228216', 5, NULL),
       (47071, '2024-03-14 20:39:12.753217', 5, NULL),
       (47072, '2024-03-14 20:39:12.794252', 5, NULL),
       (47073, '2024-03-14 20:39:13.259579', 4, NULL),
       (47074, '2024-03-14 20:39:14.066674', 4, NULL),
       (47075, '2024-03-14 20:39:14.443769', 4, NULL),
       (47076, '2024-03-14 20:39:14.449714', 5, NULL),
       (47077, '2024-03-14 20:39:14.452989', 4, NULL),
       (47078, '2024-03-14 20:39:15.054813', 4, NULL),
       (47079, '2024-03-14 20:39:15.450524', 5, NULL),
       (47080, '2024-03-14 20:39:15.621411', 5, NULL),
       (47081, '2024-03-14 20:39:15.648023', 5, NULL),
       (47082, '2024-03-14 20:39:15.830770', 4, NULL),
       (47083, '2024-03-14 20:39:16.068638', 5, NULL),
       (47084, '2024-03-14 20:39:16.290784', 4, NULL),
       (47085, '2024-03-14 20:39:16.621300', 4, NULL),
       (47086, '2024-03-14 20:39:16.829600', 4, NULL),
       (47087, '2024-03-14 20:39:17.053478', 4, NULL),
       (47088, '2024-03-14 20:39:17.160353', 5, NULL),
       (47089, '2024-03-14 20:39:17.390672', 5, NULL),
       (47090, '2024-03-14 20:39:17.654444', 4, NULL),
       (47091, '2024-03-14 20:39:17.767685', 5, NULL),
       (47092, '2024-03-14 20:39:17.886631', 5, NULL),
       (47093, '2024-03-14 20:39:18.030356', 5, NULL),
       (47094, '2024-03-14 20:39:18.713523', 5, NULL),
       (47095, '2024-03-14 20:39:18.914171', 4, NULL),
       (47096, '2024-03-14 20:39:19.449517', 4, NULL),
       (47097, '2024-03-14 20:39:19.953409', 5, NULL),
       (47098, '2024-03-14 20:39:20.543939', 5, NULL),
       (47099, '2024-03-14 20:39:20.718066', 4, NULL),
       (47100, '2024-03-14 20:39:21.173377', 4, NULL),
       (47101, '2024-03-14 20:39:21.844827', 4, NULL),
       (47102, '2024-03-14 20:39:21.854644', 4, NULL),
       (47103, '2024-03-14 20:39:21.871214', 4, NULL),
       (47104, '2024-03-14 20:39:21.946261', 5, NULL),
       (47105, '2024-03-14 20:39:22.123647', 4, NULL),
       (47106, '2024-03-14 20:39:22.224292', 5, NULL),
       (47107, '2024-03-14 20:39:22.419308', 5, NULL),
       (47108, '2024-03-14 20:39:22.955326', 5, NULL),
       (47109, '2024-03-14 20:39:22.983032', 5, NULL),
       (47110, '2024-03-14 20:39:23.043304', 4, NULL),
       (47111, '2024-03-14 20:39:23.234679', 5, NULL),
       (47112, '2024-03-14 20:39:23.452439', 4, NULL),
       (47113, '2024-03-14 20:39:23.680951', 4, NULL),
       (47114, '2024-03-14 20:39:24.105605', 5, NULL),
       (47115, '2024-03-14 20:39:24.532633', 5, NULL),
       (47116, '2024-03-14 20:39:24.711742', 5, NULL),
       (47117, '2024-03-14 20:39:24.845630', 4, NULL),
       (47118, '2024-03-14 20:39:25.643572', 4, NULL),
       (47119, '2024-03-14 20:39:26.035378', 5, NULL),
       (47120, '2024-03-14 20:39:26.333193', 4, NULL),
       (47121, '2024-03-14 20:39:26.825387', 5, NULL),
       (47122, '2024-03-14 20:39:27.100729', 4, NULL),
       (47123, '2024-03-14 20:39:27.825347', 4, NULL),
       (47124, '2024-03-14 20:39:27.828058', 5, NULL),
       (47125, '2024-03-14 20:39:27.854082', 4, NULL),
       (47126, '2024-03-14 20:39:28.122108', 4, NULL),
       (47127, '2024-03-14 20:39:28.194053', 5, NULL),
       (47128, '2024-03-14 20:39:28.310605', 5, NULL),
       (47129, '2024-03-14 20:39:28.644347', 4, NULL),
       (47130, '2024-03-14 20:39:29.028010', 5, NULL),
       (47131, '2024-03-14 20:39:29.059022', 4, NULL),
       (47132, '2024-03-14 20:39:29.069118', 4, NULL),
       (47133, '2024-03-14 20:39:29.116009', 4, NULL),
       (47134, '2024-03-14 20:39:29.269417', 5, NULL),
       (47135, '2024-03-14 20:39:29.704315', 5, NULL),
       (47136, '2024-03-14 20:39:30.226730', 5, NULL),
       (47137, '2024-03-14 20:39:30.235959', 5, NULL),
       (47138, '2024-03-14 20:39:30.246118', 5, NULL),
       (47139, '2024-03-14 20:39:30.663961', 4, NULL),
       (47140, '2024-03-14 20:39:31.721019', 5, NULL),
       (47141, '2024-03-14 20:39:31.779033', 4, NULL),
       (47142, '2024-03-14 20:39:32.492543', 4, NULL),
       (47143, '2024-03-14 20:39:32.853434', 5, NULL),
       (47144, '2024-03-14 20:39:32.988438', 4, NULL),
       (47145, '2024-03-14 20:39:33.477394', 4, NULL),
       (47146, '2024-03-14 20:39:33.630359', 5, NULL),
       (47147, '2024-03-14 20:39:34.044506', 4, NULL),
       (47148, '2024-03-14 20:39:34.119055', 5, NULL),
       (47149, '2024-03-14 20:39:34.190143', 4, NULL),
       (47150, '2024-03-14 20:39:34.502746', 5, NULL),
       (47151, '2024-03-14 20:39:34.605169', 4, NULL),
       (47152, '2024-03-14 20:39:34.796138', 4, NULL),
       (47153, '2024-03-14 20:39:35.025272', 4, NULL),
       (47154, '2024-03-14 20:39:35.127821', 5, NULL),
       (47155, '2024-03-14 20:39:35.264594', 5, NULL),
       (47156, '2024-03-14 20:39:35.664712', 5, NULL),
       (47157, '2024-03-14 20:39:35.958900', 5, NULL),
       (47158, '2024-03-14 20:39:35.964491', 4, NULL),
       (47159, '2024-03-14 20:39:36.182996', 5, NULL),
       (47160, '2024-03-14 20:39:37.050528', 5, NULL),
       (47161, '2024-03-14 20:39:37.292044', 4, NULL),
       (47162, '2024-03-14 20:39:37.449031', 4, NULL),
       (47163, '2024-03-14 20:39:37.964699', 4, NULL),
       (47164, '2024-03-14 20:39:38.421151', 4, NULL),
       (47165, '2024-03-14 20:39:38.456333', 5, NULL),
       (47166, '2024-03-14 20:39:38.583474', 5, NULL),
       (47167, '2024-03-14 20:39:38.639444', 4, NULL),
       (47168, '2024-03-14 20:39:38.921841', 4, NULL),
       (47169, '2024-03-14 20:39:39.261048', 5, NULL),
       (47170, '2024-03-14 20:39:40.054558', 4, NULL),
       (47171, '2024-03-14 20:39:40.150685', 5, NULL),
       (47172, '2024-03-14 20:39:40.150192', 4, NULL),
       (47173, '2024-03-14 20:39:40.160346', 5, NULL),
       (47174, '2024-03-14 20:39:40.180610', 4, NULL),
       (47175, '2024-03-14 20:39:40.247816', 5, NULL),
       (47176, '2024-03-14 20:39:40.262738', 4, NULL),
       (47177, '2024-03-14 20:39:40.723816', 5, NULL),
       (47178, '2024-03-14 20:39:40.904718', 5, NULL),
       (47179, '2024-03-14 20:39:41.264904', 5, NULL),
       (47180, '2024-03-14 20:39:41.282817', 5, NULL),
       (47181, '2024-03-14 20:39:42.423266', 4, NULL),
       (47182, '2024-03-14 20:39:43.427091', 4, NULL),
       (47183, '2024-03-14 20:39:43.528252', 4, NULL),
       (47184, '2024-03-14 20:39:43.560162', 5, NULL),
       (47185, '2024-03-14 20:39:43.925195', 4, NULL),
       (47186, '2024-03-14 20:39:44.330523', 4, NULL),
       (47187, '2024-03-14 20:39:44.738169', 4, NULL),
       (47188, '2024-03-14 20:39:44.738802', 5, NULL),
       (47189, '2024-03-14 20:39:44.748118', 5, NULL),
       (47190, '2024-03-14 20:39:44.781810', 4, NULL),
       (47191, '2024-03-14 20:39:45.330088', 5, NULL),
       (47192, '2024-03-14 20:39:45.459615', 5, NULL),
       (47193, '2024-03-14 20:39:45.958272', 5, NULL),
       (47194, '2024-03-14 20:39:45.966667', 4, NULL),
       (47195, '2024-03-14 20:39:45.987423', 5, NULL),
       (47196, '2024-03-14 20:39:46.011202', 4, NULL),
       (47197, '2024-03-14 20:39:46.274426', 4, NULL),
       (47198, '2024-03-14 20:39:46.923481', 5, NULL),
       (47199, '2024-03-14 20:39:47.025950', 5, NULL),
       (47200, '2024-03-14 20:39:47.365413', 5, NULL),
       (47201, '2024-03-14 20:39:47.724274', 4, NULL),
       (47202, '2024-03-14 20:39:48.850724', 5, NULL),
       (47203, '2024-03-14 20:39:49.400816', 4, NULL),
       (47204, '2024-03-14 20:39:50.313683', 4, NULL),
       (47205, '2024-03-14 20:39:50.511724', 5, NULL),
       (47206, '2024-03-14 20:39:50.547849', 4, NULL),
       (47207, '2024-03-14 20:39:50.812261', 4, NULL),
       (47208, '2024-03-14 20:39:51.195861', 4, NULL),
       (47209, '2024-03-14 20:39:51.526626', 5, NULL),
       (47210, '2024-03-14 20:39:51.536037', 4, NULL),
       (47211, '2024-03-14 20:39:51.562798', 4, NULL),
       (47212, '2024-03-14 20:39:51.646146', 5, NULL),
       (47213, '2024-03-14 20:39:52.337320', 5, NULL),
       (47214, '2024-03-14 20:39:52.531742', 4, NULL),
       (47215, '2024-03-14 20:39:52.544176', 5, NULL),
       (47216, '2024-03-14 20:39:52.562940', 4, NULL),
       (47217, '2024-03-14 20:39:52.750391', 5, NULL),
       (47218, '2024-03-14 20:39:52.760449', 5, NULL),
       (47219, '2024-03-14 20:39:53.387811', 5, NULL),
       (47220, '2024-03-14 20:39:53.541112', 5, NULL),
       (47221, '2024-03-14 20:39:53.573108', 4, NULL),
       (47222, '2024-03-14 20:39:54.601751', 5, NULL),
       (47223, '2024-03-14 20:39:55.652667', 4, NULL),
       (47224, '2024-03-14 20:39:55.855642', 4, NULL),
       (47225, '2024-03-14 20:39:56.093036', 4, NULL),
       (47226, '2024-03-14 20:39:56.608686', 4, NULL),
       (47227, '2024-03-14 20:39:56.667036', 4, NULL),
       (47228, '2024-03-14 20:39:56.745749', 5, NULL),
       (47229, '2024-03-14 20:39:56.938981', 5, NULL),
       (47230, '2024-03-14 20:39:57.022463', 4, NULL),
       (47231, '2024-03-14 20:39:57.247916', 5, NULL),
       (47232, '2024-03-14 20:39:57.373741', 4, NULL),
       (47233, '2024-03-14 20:39:57.559833', 4, NULL),
       (47234, '2024-03-14 20:39:57.739970', 5, NULL),
       (47235, '2024-03-14 20:39:58.427204', 5, NULL),
       (47236, '2024-03-14 20:39:58.480001', 4, NULL),
       (47237, '2024-03-14 20:39:58.528063', 5, NULL),
       (47238, '2024-03-14 20:39:58.717473', 5, NULL),
       (47239, '2024-03-14 20:39:58.728846', 5, NULL),
       (47240, '2024-03-14 20:39:59.310811', 4, NULL),
       (47241, '2024-03-14 20:39:59.625618', 5, NULL),
       (47242, '2024-03-14 20:39:59.646456', 4, NULL),
       (47243, '2024-03-14 20:40:00.523834', 5, NULL),
       (47244, '2024-03-14 20:40:00.664419', 5, NULL),
       (47245, '2024-03-14 20:40:00.664977', 4, NULL),
       (47246, '2024-03-14 20:40:01.820505', 5, NULL),
       (47247, '2024-03-14 20:40:02.314801', 4, NULL),
       (47248, '2024-03-14 20:40:02.566894', 4, NULL),
       (47249, '2024-03-14 20:40:02.958878', 4, NULL),
       (47250, '2024-03-14 20:40:03.037073', 4, NULL),
       (47251, '2024-03-14 20:40:03.213838', 4, NULL),
       (47252, '2024-03-14 20:40:03.460115', 5, NULL),
       (47253, '2024-03-14 20:40:03.638227', 5, NULL),
       (47254, '2024-03-14 20:40:03.844337', 4, NULL),
       (47255, '2024-03-14 20:40:04.021812', 4, NULL),
       (47256, '2024-03-14 20:40:04.258419', 5, NULL),
       (47257, '2024-03-14 20:40:04.289217', 5, NULL),
       (47258, '2024-03-14 20:40:05.017885', 5, NULL),
       (47259, '2024-03-14 20:40:05.020425', 4, NULL),
       (47260, '2024-03-14 20:40:05.133280', 4, NULL),
       (47261, '2024-03-14 20:40:05.139682', 5, NULL),
       (47262, '2024-03-14 20:40:05.186344', 5, NULL),
       (47263, '2024-03-14 20:40:05.256980', 4, NULL),
       (47264, '2024-03-14 20:40:05.784561', 5, NULL),
       (47265, '2024-03-14 20:40:06.215374', 5, NULL),
       (47266, '2024-03-14 20:40:06.214744', 4, NULL),
       (47267, '2024-03-14 20:40:06.353653', 5, NULL),
       (47268, '2024-03-14 20:40:07.267752', 5, NULL),
       (47269, '2024-03-14 20:40:07.344576', 4, NULL),
       (47270, '2024-03-14 20:40:08.058589', 4, NULL),
       (47271, '2024-03-14 20:40:08.416427', 5, NULL),
       (47272, '2024-03-14 20:40:08.518092', 4, NULL),
       (47273, '2024-03-14 20:40:09.204732', 5, NULL),
       (47274, '2024-03-14 20:40:09.326054', 4, NULL),
       (47275, '2024-03-14 20:40:09.405508', 4, NULL),
       (47276, '2024-03-14 20:40:09.561351', 5, NULL),
       (47277, '2024-03-14 20:40:09.939629', 4, NULL),
       (47278, '2024-03-14 20:40:10.063953', 4, NULL),
       (47279, '2024-03-14 20:40:10.167198', 4, NULL),
       (47280, '2024-03-14 20:40:10.386121', 5, NULL),
       (47281, '2024-03-14 20:40:10.462822', 5, NULL),
       (47282, '2024-03-14 20:40:10.949515', 4, NULL),
       (47283, '2024-03-14 20:40:10.972453', 5, NULL),
       (47284, '2024-03-14 20:40:11.154534', 5, NULL),
       (47285, '2024-03-14 20:40:11.244417', 5, NULL),
       (47286, '2024-03-14 20:40:11.442057', 4, NULL),
       (47287, '2024-03-14 20:40:11.968659', 5, NULL),
       (47288, '2024-03-14 20:40:12.109439', 4, NULL),
       (47289, '2024-03-14 20:40:12.592325', 5, NULL),
       (47290, '2024-03-14 20:40:13.220146', 4, NULL),
       (47291, '2024-03-14 20:40:13.220775', 5, NULL),
       (47292, '2024-03-14 20:40:14.077967', 4, NULL),
       (47293, '2024-03-14 20:40:14.279200', 5, NULL),
       (47294, '2024-03-14 20:40:14.646625', 4, NULL),
       (47295, '2024-03-14 20:40:14.927992', 4, NULL),
       (47296, '2024-03-14 20:40:15.129610', 5, NULL),
       (47297, '2024-03-14 20:40:15.683078', 5, NULL),
       (47298, '2024-03-14 20:40:15.841443', 4, NULL),
       (47299, '2024-03-14 20:40:15.937729', 4, NULL),
       (47300, '2024-03-14 20:40:16.137105', 4, NULL),
       (47301, '2024-03-14 20:40:16.136509', 5, NULL),
       (47302, '2024-03-14 20:40:16.276161', 4, NULL),
       (47303, '2024-03-14 20:40:17.537468', 5, NULL),
       (47304, '2024-03-14 20:40:17.537501', 4, NULL),
       (47305, '2024-03-14 20:40:17.546943', 5, NULL),
       (47306, '2024-03-14 20:40:17.549333', 4, NULL),
       (47307, '2024-03-14 20:40:17.556411', 5, NULL),
       (47308, '2024-03-14 20:40:17.582190', 5, NULL),
       (47309, '2024-03-14 20:40:18.001770', 5, NULL),
       (47310, '2024-03-14 20:40:18.353698', 4, NULL),
       (47311, '2024-03-14 20:40:18.452337', 5, NULL),
       (47312, '2024-03-14 20:40:18.620556', 4, NULL),
       (47313, '2024-03-14 20:40:19.183966', 4, NULL),
       (47314, '2024-03-14 20:40:19.448527', 5, NULL),
       (47315, '2024-03-14 20:40:19.833594', 4, NULL),
       (47316, '2024-03-14 20:40:19.839451', 5, NULL),
       (47317, '2024-03-14 20:40:20.038173', 4, NULL),
       (47318, '2024-03-14 20:40:20.401654', 5, NULL),
       (47319, '2024-03-14 20:40:20.619046', 4, NULL),
       (47320, '2024-03-14 20:40:20.837455', 5, NULL),
       (47321, '2024-03-14 20:40:21.182383', 5, NULL),
       (47322, '2024-03-14 20:40:21.618701', 4, NULL),
       (47323, '2024-03-14 20:40:21.696298', 5, NULL),
       (47324, '2024-03-14 20:40:21.794679', 4, NULL),
       (47325, '2024-03-14 20:40:21.924406', 4, NULL),
       (47326, '2024-03-14 20:40:22.628059', 4, NULL),
       (47327, '2024-03-14 20:40:23.131517', 5, NULL),
       (47328, '2024-03-14 20:40:23.140379', 5, NULL),
       (47329, '2024-03-14 20:40:23.150120', 5, NULL),
       (47330, '2024-03-14 20:40:23.161289', 4, NULL),
       (47331, '2024-03-14 20:40:23.645777', 5, NULL),
       (47332, '2024-03-14 20:40:24.161232', 4, NULL),
       (47333, '2024-03-14 20:40:24.190686', 5, NULL),
       (47334, '2024-03-14 20:40:25.049654', 4, NULL),
       (47335, '2024-03-14 20:40:25.121304', 4, NULL),
       (47336, '2024-03-14 20:40:25.238374', 4, NULL),
       (47337, '2024-03-14 20:40:25.326574', 5, NULL),
       (47338, '2024-03-14 20:40:26.024218', 4, NULL),
       (47339, '2024-03-14 20:40:26.076439', 5, NULL),
       (47340, '2024-03-14 20:40:26.206840', 5, NULL),
       (47341, '2024-03-14 20:40:26.342425', 4, NULL),
       (47342, '2024-03-14 20:40:26.346532', 5, NULL),
       (47343, '2024-03-14 20:40:26.553934', 4, NULL),
       (47344, '2024-03-14 20:40:26.624778', 4, NULL),
       (47345, '2024-03-14 20:40:26.960249', 4, NULL),
       (47346, '2024-03-14 20:40:27.152866', 5, NULL),
       (47347, '2024-03-14 20:40:27.341021', 5, NULL),
       (47348, '2024-03-14 20:40:28.056293', 4, NULL),
       (47349, '2024-03-14 20:40:28.056651', 5, NULL),
       (47350, '2024-03-14 20:40:28.078520', 5, NULL),
       (47351, '2024-03-14 20:40:28.154542', 5, NULL),
       (47352, '2024-03-14 20:40:28.405868', 4, NULL),
       (47353, '2024-03-14 20:40:29.020754', 4, NULL),
       (47354, '2024-03-14 20:40:29.042584', 5, NULL),
       (47355, '2024-03-14 20:40:29.480822', 5, NULL),
       (47356, '2024-03-14 20:40:29.606783', 4, NULL),
       (47357, '2024-03-14 20:40:30.095037', 5, NULL),
       (47358, '2024-03-14 20:40:30.652462', 5, NULL),
       (47359, '2024-03-14 20:40:30.741915', 4, NULL),
       (47360, '2024-03-14 20:40:30.983397', 4, NULL),
       (47361, '2024-03-14 20:40:31.638178', 4, NULL),
       (47362, '2024-03-14 20:40:31.803344', 5, NULL),
       (47363, '2024-03-14 20:40:31.856999', 4, NULL),
       (47364, '2024-03-14 20:40:32.082061', 5, NULL),
       (47365, '2024-03-14 20:40:32.603690', 4, NULL),
       (47366, '2024-03-14 20:40:32.699840', 5, NULL),
       (47367, '2024-03-14 20:40:32.918356', 5, NULL),
       (47368, '2024-03-14 20:40:33.246495', 4, NULL),
       (47369, '2024-03-14 20:40:33.727000', 5, NULL),
       (47370, '2024-03-14 20:40:34.071271', 4, NULL),
       (47371, '2024-03-14 20:40:34.145667', 4, NULL),
       (47372, '2024-03-14 20:40:34.439883', 5, NULL),
       (47373, '2024-03-14 20:40:35.106293', 5, NULL),
       (47374, '2024-03-14 20:40:35.240109', 5, NULL),
       (47375, '2024-03-14 20:40:35.657288', 4, NULL),
       (47376, '2024-03-14 20:40:36.253615', 4, NULL),
       (47377, '2024-03-14 20:40:36.339388', 4, NULL),
       (47378, '2024-03-14 20:40:36.815496', 4, NULL),
       (47379, '2024-03-14 20:40:36.851790', 4, NULL),
       (47380, '2024-03-14 20:40:36.880754', 5, NULL),
       (47381, '2024-03-14 20:40:37.094613', 4, NULL),
       (47382, '2024-03-14 20:40:37.520025', 5, NULL),
       (47383, '2024-03-14 20:40:37.536211', 5, NULL),
       (47384, '2024-03-14 20:40:37.563949', 4, NULL),
       (47385, '2024-03-14 20:40:37.820630', 5, NULL),
       (47386, '2024-03-14 20:40:37.830339', 5, NULL),
       (47387, '2024-03-14 20:40:37.860264', 4, NULL),
       (47388, '2024-03-14 20:40:38.021338', 4, NULL),
       (47389, '2024-03-14 20:40:38.228101', 5, NULL),
       (47390, '2024-03-14 20:40:38.567116', 5, NULL),
       (47391, '2024-03-14 20:40:39.031142', 5, NULL),
       (47392, '2024-03-14 20:40:39.054262', 5, NULL),
       (47393, '2024-03-14 20:40:39.058452', 4, NULL),
       (47394, '2024-03-14 20:40:39.591908', 4, NULL),
       (47395, '2024-03-14 20:40:40.195666', 5, NULL),
       (47396, '2024-03-14 20:40:40.261187', 4, NULL),
       (47397, '2024-03-14 20:40:40.613757', 5, NULL),
       (47398, '2024-03-14 20:40:41.361918', 5, NULL),
       (47399, '2024-03-14 20:40:41.499892', 4, NULL),
       (47400, '2024-03-14 20:40:41.733220', 4, NULL),
       (47401, '2024-03-14 20:40:41.848671', 4, NULL),
       (47402, '2024-03-14 20:40:42.602331', 5, NULL),
       (47403, '2024-03-14 20:40:42.716402', 5, NULL),
       (47404, '2024-03-14 20:40:42.901180', 5, NULL),
       (47405, '2024-03-14 20:40:43.020627', 4, NULL),
       (47406, '2024-03-14 20:40:43.255596', 4, NULL),
       (47407, '2024-03-14 20:40:43.906558', 4, NULL),
       (47408, '2024-03-14 20:40:44.112431', 5, NULL),
       (47409, '2024-03-14 20:40:44.237662', 4, NULL),
       (47410, '2024-03-14 20:40:44.426515', 4, NULL),
       (47411, '2024-03-14 20:40:44.432341', 5, NULL),
       (47412, '2024-03-14 20:40:45.153551', 4, NULL),
       (47413, '2024-03-14 20:40:45.181648', 4, NULL),
       (47414, '2024-03-14 20:40:45.226726', 5, NULL),
       (47415, '2024-03-14 20:40:45.370169', 5, NULL),
       (47416, '2024-03-14 20:40:45.505809', 5, NULL),
       (47417, '2024-03-14 20:40:45.663353', 4, NULL),
       (47418, '2024-03-14 20:40:45.750602', 5, NULL),
       (47419, '2024-03-14 20:40:46.066824', 4, NULL),
       (47420, '2024-03-14 20:40:46.163692', 5, NULL),
       (47421, '2024-03-14 20:40:46.787503', 5, NULL),
       (47422, '2024-03-14 20:40:47.176582', 4, NULL),
       (47423, '2024-03-14 20:40:47.188076', 5, NULL),
       (47424, '2024-03-14 20:40:47.411046', 4, NULL),
       (47425, '2024-03-14 20:40:48.228186', 5, NULL),
       (47426, '2024-03-14 20:40:48.540075', 5, NULL),
       (47427, '2024-03-14 20:40:48.949339', 4, NULL),
       (47428, '2024-03-14 20:40:49.102090', 4, NULL),
       (47429, '2024-03-14 20:40:49.314328', 4, NULL),
       (47430, '2024-03-14 20:40:49.837792', 4, NULL),
       (47431, '2024-03-14 20:40:49.926756', 5, NULL),
       (47432, '2024-03-14 20:40:50.030289', 4, NULL),
       (47433, '2024-03-14 20:40:50.227317', 5, NULL),
       (47434, '2024-03-14 20:40:50.255297', 4, NULL),
       (47435, '2024-03-14 20:40:50.534716', 5, NULL),
       (47436, '2024-03-14 20:40:50.860426', 4, NULL),
       (47437, '2024-03-14 20:40:50.987336', 5, NULL),
       (47438, '2024-03-14 20:40:51.119388', 5, NULL),
       (47439, '2024-03-14 20:40:51.195087', 5, NULL),
       (47440, '2024-03-14 20:40:51.286151', 4, NULL),
       (47441, '2024-03-14 20:40:51.466396', 4, NULL),
       (47442, '2024-03-14 20:40:51.937495', 5, NULL),
       (47443, '2024-03-14 20:40:52.365278', 5, NULL),
       (47444, '2024-03-14 20:40:52.657547', 4, NULL),
       (47445, '2024-03-14 20:40:52.682657', 5, NULL),
       (47446, '2024-03-14 20:40:53.713866', 5, NULL),
       (47447, '2024-03-14 20:40:53.856086', 4, NULL),
       (47448, '2024-03-14 20:40:54.568308', 4, NULL),
       (47449, '2024-03-14 20:40:54.825344', 4, NULL),
       (47450, '2024-03-14 20:40:54.922707', 5, NULL),
       (47451, '2024-03-14 20:40:55.068198', 4, NULL),
       (47452, '2024-03-14 20:40:55.249989', 4, NULL),
       (47453, '2024-03-14 20:40:55.522423', 4, NULL),
       (47454, '2024-03-14 20:40:55.623708', 5, NULL),
       (47455, '2024-03-14 20:40:55.933082', 4, NULL),
       (47456, '2024-03-14 20:40:55.962644', 5, NULL),
       (47457, '2024-03-14 20:40:56.040089', 4, NULL),
       (47458, '2024-03-14 20:40:56.543080', 5, NULL),
       (47459, '2024-03-14 20:40:56.720536', 5, NULL),
       (47460, '2024-03-14 20:40:56.729200', 5, NULL),
       (47461, '2024-03-14 20:40:57.017951', 5, NULL),
       (47462, '2024-03-14 20:40:57.109660', 5, NULL),
       (47463, '2024-03-14 20:40:57.661871', 4, NULL),
       (47464, '2024-03-14 20:40:57.815508', 4, NULL),
       (47465, '2024-03-14 20:40:58.043075', 4, NULL),
       (47466, '2024-03-14 20:40:58.806162', 5, NULL),
       (47467, '2024-03-14 20:40:58.851016', 5, NULL),
       (47468, '2024-03-14 20:40:59.116879', 4, NULL),
       (47469, '2024-03-14 20:40:59.118911', 5, NULL),
       (47470, '2024-03-14 20:41:00.400688', 5, NULL),
       (47471, '2024-03-14 20:41:00.560342', 4, NULL),
       (47472, '2024-03-14 20:41:00.569736', 4, NULL),
       (47473, '2024-03-14 20:41:01.325123', 4, NULL),
       (47474, '2024-03-14 20:41:01.335186', 4, NULL),
       (47475, '2024-03-14 20:41:01.658186', 5, NULL),
       (47476, '2024-03-14 20:41:01.691377', 5, NULL),
       (47477, '2024-03-14 20:41:02.455973', 5, NULL),
       (47478, '2024-03-14 20:41:02.468474', 5, NULL),
       (47479, '2024-03-14 20:41:03.026490', 4, NULL),
       (47480, '2024-03-14 20:41:03.035846', 4, NULL),
       (47481, '2024-03-14 20:41:03.045362', 4, NULL),
       (47482, '2024-03-14 20:41:03.637710', 4, NULL),
       (47483, '2024-03-14 20:41:03.644972', 5, NULL),
       (47484, '2024-03-14 20:41:03.734491', 5, NULL),
       (47485, '2024-03-14 20:41:04.124550', 5, NULL),
       (47486, '2024-03-14 20:41:04.709668', 4, NULL),
       (47487, '2024-03-14 20:41:04.748465', 5, NULL),
       (47488, '2024-03-14 20:41:04.843601', 4, NULL),
       (47489, '2024-03-14 20:41:05.817913', 4, NULL),
       (47490, '2024-03-14 20:41:05.820156', 5, NULL),
       (47491, '2024-03-14 20:41:05.946476', 4, NULL),
       (47492, '2024-03-14 20:41:06.039721', 5, NULL),
       (47493, '2024-03-14 20:41:06.860292', 5, NULL),
       (47494, '2024-03-14 20:41:07.051396', 4, NULL),
       (47495, '2024-03-14 20:41:07.160913', 5, NULL),
       (47496, '2024-03-14 20:41:07.164139', 4, NULL),
       (47497, '2024-03-14 20:41:08.061848', 5, NULL),
       (47498, '2024-03-14 20:41:08.245365', 4, NULL),
       (47499, '2024-03-14 20:41:08.247574', 5, NULL),
       (47500, '2024-03-14 20:41:08.476312', 4, NULL),
       (47501, '2024-03-14 20:41:09.028087', 4, NULL),
       (47502, '2024-03-14 20:41:09.737653', 4, NULL),
       (47503, '2024-03-14 20:41:09.741554', 5, NULL),
       (47504, '2024-03-14 20:41:09.747240', 4, NULL),
       (47505, '2024-03-14 20:41:09.750557', 5, NULL),
       (47506, '2024-03-14 20:41:10.168255', 5, NULL),
       (47507, '2024-03-14 20:41:10.289631', 4, NULL),
       (47508, '2024-03-14 20:41:10.650212', 5, NULL),
       (47509, '2024-03-14 20:41:10.829376', 5, NULL),
       (47510, '2024-03-14 20:41:11.347178', 5, NULL),
       (47511, '2024-03-14 20:41:11.439272', 4, NULL),
       (47512, '2024-03-14 20:41:11.774680', 4, NULL),
       (47513, '2024-03-14 20:41:12.502458', 5, NULL),
       (47514, '2024-03-14 20:41:12.829325', 5, NULL),
       (47515, '2024-03-14 20:41:13.097285', 4, NULL),
       (47516, '2024-03-14 20:41:13.929329', 4, NULL),
       (47517, '2024-03-14 20:41:14.029773', 4, NULL),
       (47518, '2024-03-14 20:41:14.232056', 5, NULL),
       (47519, '2024-03-14 20:41:14.412584', 4, NULL),
       (47520, '2024-03-14 20:41:14.954499', 5, NULL),
       (47521, '2024-03-14 20:41:15.054781', 5, NULL),
       (47522, '2024-03-14 20:41:15.151583', 4, NULL),
       (47523, '2024-03-14 20:41:15.496389', 5, NULL),
       (47524, '2024-03-14 20:41:15.938737', 4, NULL),
       (47525, '2024-03-14 20:41:15.949111', 4, NULL),
       (47526, '2024-03-14 20:41:16.343178', 5, NULL),
       (47527, '2024-03-14 20:41:16.393580', 4, NULL),
       (47528, '2024-03-14 20:41:16.734353', 4, NULL),
       (47529, '2024-03-14 20:41:17.031921', 5, NULL),
       (47530, '2024-03-14 20:41:17.042105', 5, NULL),
       (47531, '2024-03-14 20:41:17.225051', 4, NULL),
       (47532, '2024-03-14 20:41:17.532071', 5, NULL),
       (47533, '2024-03-14 20:41:17.866452', 5, NULL),
       (47534, '2024-03-14 20:41:18.347259', 4, NULL),
       (47535, '2024-03-14 20:41:18.358493', 4, NULL),
       (47536, '2024-03-14 20:41:18.383013', 5, NULL),
       (47537, '2024-03-14 20:41:19.318280', 5, NULL),
       (47538, '2024-03-14 20:41:19.362370', 5, NULL),
       (47539, '2024-03-14 20:41:19.539356', 4, NULL),
       (47540, '2024-03-14 20:41:19.832715', 4, NULL),
       (47541, '2024-03-14 20:41:20.363329', 4, NULL),
       (47542, '2024-03-14 20:41:20.606865', 5, NULL),
       (47543, '2024-03-14 20:41:20.733069', 4, NULL),
       (47544, '2024-03-14 20:41:21.025104', 5, NULL),
       (47545, '2024-03-14 20:41:21.602063', 5, NULL),
       (47546, '2024-03-14 20:41:21.952418', 4, NULL),
       (47547, '2024-03-14 20:41:21.974243', 5, NULL),
       (47548, '2024-03-14 20:41:22.144742', 4, NULL),
       (47549, '2024-03-14 20:41:22.150475', 4, NULL),
       (47550, '2024-03-14 20:41:22.281964', 4, NULL),
       (47551, '2024-03-14 20:41:23.029394', 5, NULL),
       (47552, '2024-03-14 20:41:23.440809', 5, NULL),
       (47553, '2024-03-14 20:41:23.450915', 5, NULL),
       (47554, '2024-03-14 20:41:23.461733', 5, NULL),
       (47555, '2024-03-14 20:41:23.669109', 4, NULL),
       (47556, '2024-03-14 20:41:24.588256', 4, NULL),
       (47557, '2024-03-14 20:41:24.819871', 5, NULL),
       (47558, '2024-03-14 20:41:25.633460', 4, NULL),
       (47559, '2024-03-14 20:41:25.672798', 5, NULL),
       (47560, '2024-03-14 20:41:25.849110', 4, NULL),
       (47561, '2024-03-14 20:41:26.149827', 4, NULL),
       (47562, '2024-03-14 20:41:26.565883', 4, NULL),
       (47563, '2024-03-14 20:41:26.819737', 4, NULL),
       (47564, '2024-03-14 20:41:26.822061', 5, NULL),
       (47565, '2024-03-14 20:41:26.942358', 5, NULL),
       (47566, '2024-03-14 20:41:27.444036', 5, NULL),
       (47567, '2024-03-14 20:41:27.781633', 4, NULL),
       (47568, '2024-03-14 20:41:27.931006', 4, NULL),
       (47569, '2024-03-14 20:41:28.101095', 4, NULL),
       (47570, '2024-03-14 20:41:28.542518', 5, NULL),
       (47571, '2024-03-14 20:41:28.555007', 5, NULL),
       (47572, '2024-03-14 20:41:28.880252', 5, NULL),
       (47573, '2024-03-14 20:41:29.044407', 5, NULL),
       (47574, '2024-03-14 20:41:29.196944', 5, NULL),
       (47575, '2024-03-14 20:41:30.340318', 4, NULL),
       (47576, '2024-03-14 20:41:30.758711', 4, NULL),
       (47577, '2024-03-14 20:41:31.464240', 5, NULL),
       (47578, '2024-03-14 20:41:31.466115', 4, NULL),
       (47579, '2024-03-14 20:41:31.654005', 4, NULL),
       (47580, '2024-03-14 20:41:31.927610', 5, NULL),
       (47581, '2024-03-14 20:41:31.958206', 4, NULL),
       (47582, '2024-03-14 20:41:32.523990', 5, NULL),
       (47583, '2024-03-14 20:41:32.733541', 5, NULL),
       (47584, '2024-03-14 20:41:32.943337', 4, NULL),
       (47585, '2024-03-14 20:41:33.058590', 5, NULL),
       (47586, '2024-03-14 20:41:33.646888', 4, NULL),
       (47587, '2024-03-14 20:41:34.035373', 4, NULL),
       (47588, '2024-03-17 13:50:12.454724', 5, NULL),
       (47589, '2024-03-17 13:50:23.368531', 5, NULL),
       (47590, '2024-03-17 13:50:33.339648', 5, NULL),
       (47591, '2024-03-17 13:50:43.555461', 5, NULL),
       (47592, '2024-03-27 23:22:46.548076', 5, NULL),
       (47593, '2024-03-27 23:23:28.042018', 5, NULL),
       (47594, '2024-03-27 23:28:51.409187', 4, NULL),
       (47595, '2024-03-27 23:36:10.910339', 4, NULL),
       (47596, '2024-04-07 09:35:35.581651', 4, NULL),
       (47597, '2024-04-07 09:35:48.639489', 5, NULL),
       (47598, '2024-04-07 09:36:33.717017', 5, NULL),
       (47599, '2024-04-07 09:48:26.962536', 5, NULL),
       (47600, '2024-04-07 09:48:58.870976', 5, NULL),
       (47601, '2024-04-07 09:57:05.841539', 5, NULL),
       (47602, '2024-04-13 13:40:16.686295', 5, NULL),
       (47603, '2024-04-13 11:45:44.191515', 5, NULL),
       (47604, '2024-04-13 13:47:16.882810', 5, NULL),
       (47605, '2024-04-13 11:47:46.063709', 5, NULL),
       (47606, '2024-04-13 11:50:16.451073', 5, NULL),
       (47607, '2024-04-13 12:00:05.939892', 5, NULL),
       (47608, '2024-04-13 14:16:11.194837', 5, NULL),
       (47609, '2024-04-13 12:16:21.145857', 5, NULL),
       (47610, '2024-04-13 12:16:47.367449', 5, NULL),
       (47611, '2024-04-13 12:19:32.605982', 5, NULL),
       (47612, '2024-04-13 12:19:34.654893', 5, NULL),
       (47613, '2024-04-13 12:23:07.484747', 5, NULL),
       (47614, '2024-04-13 12:40:21.397766', 5, NULL),
       (47615, '2024-04-13 12:42:34.611737', 5, NULL),
       (47616, '2024-04-13 12:46:12.544147', 4, 1),
       (47617, '2024-04-13 12:48:07.962263', 5, 1),
       (47618, '2024-04-13 12:48:13.852219', 5, NULL),
       (47619, '2024-04-13 12:48:15.738028', 5, 1),
       (47620, '2024-04-13 12:48:47.203000', 5, 1),
       (47621, '2024-04-17 17:56:29.230961', 5, NULL),
       (47622, '2024-04-17 18:18:02.562980', 5, NULL),
       (47623, '2024-04-17 18:18:07.132019', 5, NULL),
       (47624, '2024-04-17 18:18:47.822108', 5, NULL),
       (47625, '2024-04-17 18:18:50.670161', 5, NULL),
       (47626, '2024-04-17 18:22:01.631737', 5, NULL),
       (47627, '2024-04-17 18:22:05.256260', 5, NULL),
       (47628, '2024-04-17 18:22:10.322158', 5, NULL),
       (47629, '2024-04-17 18:22:18.452676', 5, NULL),
       (47630, '2024-04-17 18:22:25.322176', 5, NULL),
       (47631, '2024-04-17 18:24:04.595853', 5, NULL),
       (47632, '2024-04-17 18:29:08.349088', 5, NULL),
       (47633, '2024-04-17 18:29:40.547783', 5, NULL),
       (47634, '2024-04-17 18:29:45.759294', 5, NULL),
       (47635, '2024-04-17 18:30:10.276587', 5, NULL),
       (47636, '2024-04-17 18:30:50.342876', 5, NULL),
       (47637, '2024-04-17 18:31:10.013464', 5, NULL),
       (47638, '2024-04-17 18:31:24.914360', 5, NULL),
       (47639, '2024-04-17 18:32:06.116480', 5, NULL),
       (47640, '2024-04-17 18:32:18.241454', 5, NULL),
       (47641, '2024-04-17 18:32:22.200766', 5, NULL),
       (47642, '2024-04-17 18:33:41.378821', 5, NULL),
       (47643, '2024-04-17 18:34:19.788321', 5, NULL),
       (47644, '2024-04-17 18:35:03.447800', 5, NULL),
       (47645, '2024-04-17 18:36:01.002531', 5, NULL),
       (47646, '2024-04-17 18:36:12.862854', 5, NULL),
       (47647, '2024-04-17 18:36:57.586360', 5, NULL),
       (47648, '2024-04-17 18:37:23.720100', 5, NULL),
       (47649, '2024-04-17 18:37:27.277704', 5, NULL),
       (47650, '2024-04-17 18:38:15.748325', 5, NULL),
       (47651, '2024-04-17 18:38:20.695673', 5, NULL),
       (47652, '2024-04-17 18:38:40.038517', 5, NULL),
       (47653, '2024-04-17 18:38:57.571535', 5, NULL),
       (47654, '2024-04-17 18:39:33.776331', 5, NULL),
       (47655, '2024-04-17 18:43:03.354142', 5, NULL),
       (47656, '2024-04-17 18:43:35.222439', 5, NULL),
       (47657, '2024-04-17 18:43:40.432549', 5, NULL),
       (47658, '2024-04-17 18:44:51.416466', 5, NULL),
       (47659, '2024-04-17 18:46:23.084074', 5, NULL),
       (47660, '2024-04-17 18:46:26.631487', 5, NULL),
       (47661, '2024-04-17 18:47:00.771839', 5, NULL),
       (47662, '2024-04-17 18:47:15.173226', 5, NULL),
       (47663, '2024-04-17 18:47:47.009738', 5, NULL),
       (47664, '2024-04-17 18:48:32.695810', 5, NULL),
       (47665, '2024-04-17 18:50:04.169843', 5, NULL),
       (47666, '2024-04-17 18:50:11.107974', 5, NULL),
       (47667, '2024-04-17 18:50:14.606983', 5, NULL),
       (47668, '2024-04-17 18:50:29.922853', 5, NULL),
       (47669, '2024-04-17 18:50:36.671860', 5, NULL),
       (47670, '2024-04-17 18:51:09.181975', 5, NULL),
       (47671, '2024-04-17 18:51:23.459366', 5, NULL),
       (47672, '2024-04-17 18:51:39.703982', 5, NULL),
       (47673, '2024-04-17 18:51:44.572797', 5, NULL),
       (47674, '2024-04-17 18:52:01.902309', 5, NULL),
       (47675, '2024-04-17 18:52:10.577762', 5, NULL),
       (47676, '2024-04-17 18:52:15.526668', 5, NULL),
       (47677, '2024-04-17 18:52:31.921997', 5, NULL),
       (47678, '2024-04-17 18:53:05.872033', 5, NULL),
       (47679, '2024-04-17 18:54:18.316086', 5, NULL),
       (47680, '2024-04-17 18:54:29.495759', 5, NULL),
       (47681, '2024-04-17 18:54:41.549774', 5, NULL),
       (47682, '2024-04-17 18:54:46.915950', 5, NULL),
       (47683, '2024-04-17 18:54:57.474804', 5, NULL),
       (47684, '2024-04-17 18:55:04.007430', 5, NULL),
       (47685, '2024-04-17 18:55:07.994660', 5, NULL),
       (47686, '2024-04-17 18:55:13.148658', 5, NULL),
       (47687, '2024-04-17 18:55:16.143697', 5, NULL),
       (47688, '2024-04-17 18:55:29.803274', 5, NULL),
       (47689, '2024-04-17 18:55:35.878435', 5, NULL),
       (47690, '2024-04-17 18:55:41.463621', 5, NULL),
       (47691, '2024-04-17 18:56:13.012078', 5, NULL),
       (47692, '2024-04-17 18:56:17.895186', 5, NULL),
       (47693, '2024-04-17 18:56:39.069583', 5, NULL),
       (47694, '2024-04-17 18:56:47.452887', 5, NULL),
       (47695, '2024-04-17 18:56:58.504898', 5, NULL),
       (47696, '2024-04-17 18:57:50.112044', 5, NULL),
       (47697, '2024-04-17 18:58:09.018302', 5, NULL),
       (47698, '2024-04-17 18:58:13.986116', 5, NULL),
       (47699, '2024-04-17 18:58:38.628455', 5, NULL),
       (47700, '2024-04-17 18:58:50.940188', 5, NULL),
       (47701, '2024-04-17 18:59:16.430198', 5, NULL),
       (47702, '2024-04-17 18:59:25.122097', 5, NULL),
       (47703, '2024-04-17 19:01:19.840100', 5, NULL),
       (47704, '2024-04-17 19:01:33.989167', 5, NULL),
       (47705, '2024-04-17 19:01:40.606630', 5, NULL),
       (47706, '2024-04-17 19:04:29.056542', 5, NULL),
       (47707, '2024-04-17 19:04:56.812431', 5, NULL),
       (47708, '2024-04-17 19:05:26.307137', 5, NULL),
       (47709, '2024-04-17 19:06:21.689309', 5, NULL),
       (47710, '2024-04-17 19:06:28.401235', 5, NULL),
       (47711, '2024-04-17 19:06:43.877728', 5, NULL),
       (47712, '2024-04-17 19:07:07.688406', 5, NULL),
       (47713, '2024-04-17 19:07:09.739836', 5, NULL),
       (47714, '2024-04-17 19:07:32.913343', 5, NULL),
       (47715, '2024-04-17 19:08:49.858919', 5, NULL),
       (47716, '2024-04-17 19:09:27.883906', 5, NULL),
       (47717, '2024-04-17 19:09:41.511840', 5, NULL),
       (47718, '2024-04-17 19:10:22.584941', 5, NULL),
       (47719, '2024-04-17 19:10:31.572477', 5, NULL),
       (47720, '2024-04-17 19:10:45.187906', 5, NULL),
       (47721, '2024-04-17 19:10:53.081462', 5, NULL),
       (47722, '2024-04-17 19:11:05.847886', 5, NULL),
       (47723, '2024-04-17 19:11:41.868245', 5, NULL),
       (47724, '2024-04-17 19:12:38.100581', 5, NULL),
       (47725, '2024-04-17 19:12:41.242023', 5, NULL),
       (47726, '2024-04-17 19:13:19.290039', 5, NULL),
       (47727, '2024-04-17 19:13:58.193424', 5, NULL),
       (47728, '2024-04-17 19:15:22.773008', 5, NULL),
       (47729, '2024-04-17 19:16:46.641884', 5, NULL),
       (47730, '2024-04-17 20:24:35.516099', 5, NULL),
       (47731, '2024-04-17 20:24:41.181831', 5, NULL),
       (47732, '2024-04-17 20:38:01.236561', 5, NULL),
       (47733, '2024-04-17 21:11:22.657133', 5, NULL),
       (47734, '2024-04-17 21:12:21.216428', 5, NULL),
       (47735, '2024-04-17 21:12:57.132780', 5, NULL),
       (47736, '2024-04-17 21:13:00.538704', 5, NULL),
       (47737, '2024-04-17 21:13:18.541670', 5, NULL),
       (47738, '2024-04-17 21:14:22.654985', 5, NULL),
       (47739, '2024-04-17 21:14:26.541939', 5, NULL),
       (47740, '2024-04-17 21:15:30.816168', 5, NULL),
       (47741, '2024-04-17 21:16:33.422925', 5, NULL),
       (47742, '2024-04-17 21:19:58.023098', 5, NULL),
       (47743, '2024-04-18 17:23:44.244566', 5, NULL),
       (47744, '2024-04-18 17:31:41.339962', 5, NULL),
       (47745, '2024-04-18 17:34:40.063738', 5, NULL),
       (47746, '2024-04-18 17:34:50.442212', 5, NULL),
       (47747, '2024-04-18 17:36:19.978684', 5, NULL),
       (47748, '2024-04-18 17:36:23.532909', 5, NULL),
       (47749, '2024-04-18 17:36:44.987192', 5, NULL),
       (47750, '2024-04-18 17:38:00.641769', 5, NULL),
       (47751, '2024-04-18 17:38:06.216098', 5, NULL),
       (47752, '2024-04-18 17:38:11.532120', 5, NULL),
       (47753, '2024-04-18 17:38:22.331399', 5, NULL),
       (47754, '2024-04-18 17:38:39.543291', 5, NULL),
       (47755, '2024-04-18 17:39:16.440026', 5, NULL),
       (47756, '2024-04-18 17:40:23.684813', 5, NULL),
       (47757, '2024-04-18 17:41:00.431371', 5, NULL),
       (47758, '2024-04-18 17:41:14.223853', 5, NULL),
       (47759, '2024-04-18 17:41:33.686425', 5, NULL),
       (47760, '2024-04-18 17:41:52.680841', 5, NULL),
       (47761, '2024-04-18 17:42:06.349203', 5, NULL),
       (47762, '2024-04-18 17:42:25.841588', 5, NULL),
       (47763, '2024-04-18 17:42:50.294785', 5, NULL),
       (47764, '2024-04-18 17:43:06.971395', 5, NULL),
       (47765, '2024-04-18 17:43:10.363126', 5, NULL),
       (47766, '2024-04-18 17:43:18.400014', 5, NULL),
       (47767, '2024-04-18 17:43:35.576022', 5, NULL),
       (47768, '2024-04-18 17:43:50.765708', 5, NULL),
       (47769, '2024-04-18 17:44:17.580628', 5, NULL),
       (47770, '2024-04-18 17:44:26.690971', 5, NULL),
       (47771, '2024-04-18 17:44:33.455114', 5, NULL),
       (47772, '2024-04-18 17:44:42.238136', 5, NULL),
       (47773, '2024-04-18 17:45:44.591194', 5, NULL),
       (47774, '2024-04-18 17:46:22.152542', 5, NULL),
       (47775, '2024-04-18 17:46:58.716490', 5, NULL),
       (47776, '2024-04-18 17:47:23.837718', 5, NULL),
       (47777, '2024-04-18 17:48:51.465010', 5, NULL),
       (47778, '2024-04-18 17:48:54.172354', 5, NULL),
       (47779, '2024-04-18 17:49:37.232647', 5, NULL),
       (47780, '2024-04-18 17:49:48.558468', 5, NULL),
       (47781, '2024-04-18 17:49:57.448147', 5, NULL),
       (47782, '2024-04-18 17:50:03.950196', 5, NULL),
       (47783, '2024-04-18 17:50:12.117137', 5, NULL),
       (47784, '2024-04-18 17:50:21.649393', 5, NULL),
       (47785, '2024-04-18 17:50:35.168388', 5, NULL),
       (47786, '2024-04-18 17:52:18.827493', 5, NULL),
       (47787, '2024-04-18 17:53:47.668530', 5, NULL),
       (47788, '2024-04-18 17:54:48.841794', 5, NULL),
       (47789, '2024-04-18 17:55:44.043979', 5, NULL),
       (47790, '2024-04-18 17:55:48.380218', 5, NULL),
       (47791, '2024-04-18 18:29:06.469326', 5, NULL),
       (47792, '2024-04-18 18:36:24.271441', 5, NULL),
       (47793, '2024-04-19 08:47:05.827056', 4, 2),
       (47794, '2024-04-19 09:07:33.936870', 5, NULL),
       (47795, '2024-04-19 09:08:56.879454', 4, NULL),
       (47796, '2024-04-19 09:09:05.565782', 5, NULL),
       (47797, '2024-04-19 09:09:12.546800', 5, NULL),
       (47798, '2024-04-19 09:09:14.384227', 5, NULL),
       (47799, '2024-04-19 09:36:00.492591', 5, NULL),
       (47800, '2024-04-20 08:10:05.972506', 5, 3),
       (47801, '2024-04-20 08:10:22.952821', 5, 3),
       (47802, '2024-04-20 08:10:51.624854', 5, NULL),
       (47803, '2024-04-20 08:10:53.765599', 5, 3),
       (47804, '2024-04-20 08:12:33.343733', 5, 3),
       (47805, '2024-04-20 08:13:13.363801', 5, NULL),
       (47806, '2024-04-20 08:13:25.504951', 5, NULL),
       (47807, '2024-04-20 08:19:29.797822', 5, 3),
       (47808, '2024-04-20 08:19:40.716595', 5, NULL),
       (47809, '2024-04-20 08:19:42.692052', 5, 3),
       (47810, '2024-04-20 08:34:35.134018', 5, NULL),
       (47811, '2024-04-20 08:49:25.442264', 5, NULL),
       (47812, '2024-04-20 08:51:12.745160', 5, NULL),
       (47813, '2024-04-20 08:51:18.537914', 5, NULL),
       (47814, '2024-04-20 08:51:47.490314', 5, NULL),
       (47815, '2024-04-20 08:51:53.587580', 5, NULL),
       (47816, '2024-04-20 08:51:59.392461', 5, NULL),
       (47817, '2024-04-20 08:52:42.538839', 5, NULL),
       (47818, '2024-04-20 08:52:53.739591', 5, NULL),
       (47819, '2024-04-20 08:53:16.986549', 5, NULL),
       (47820, '2024-04-20 08:53:24.499629', 5, NULL),
       (47821, '2024-04-20 08:53:32.993476', 5, NULL),
       (47822, '2024-04-20 08:54:14.752403', 5, NULL),
       (47823, '2024-04-20 08:54:16.880130', 5, NULL),
       (47824, '2024-04-20 08:54:18.759660', 5, NULL),
       (47825, '2024-04-20 08:54:20.376449', 5, NULL),
       (47826, '2024-04-20 08:54:22.132351', 5, NULL),
       (47827, '2024-04-20 08:55:21.332983', 5, NULL),
       (47828, '2024-04-20 08:55:25.184659', 5, NULL),
       (47829, '2024-04-20 08:55:35.504356', 5, NULL),
       (47830, '2024-04-20 08:55:37.958783', 5, NULL),
       (47831, '2024-04-20 08:55:39.744144', 5, NULL),
       (47832, '2024-04-20 08:56:43.998409', 5, NULL),
       (47833, '2024-04-20 08:57:43.075045', 5, NULL),
       (47834, '2024-04-20 08:57:54.578689', 5, NULL),
       (47835, '2024-04-20 08:58:36.344964', 5, NULL),
       (47836, '2024-04-20 08:58:44.046009', 5, NULL),
       (47837, '2024-04-20 08:59:01.120564', 5, NULL),
       (47838, '2024-04-20 08:59:25.885846', 5, NULL),
       (47839, '2024-04-20 08:59:35.968122', 5, NULL),
       (47840, '2024-04-20 09:00:40.437292', 5, NULL),
       (47841, '2024-04-20 09:00:45.730839', 5, NULL),
       (47842, '2024-04-20 10:11:41.450786', 5, NULL),
       (47843, '2024-04-20 10:16:10.227588', 4, NULL),
       (47844, '2024-04-20 21:02:14.916638', 5, 3),
       (47845, '2024-04-21 07:28:27.037854', 4, NULL),
       (47846, '2024-04-21 07:28:36.730909', 4, NULL),
       (47847, '2024-04-21 07:34:20.077649', 4, NULL),
       (47848, '2024-04-21 07:34:24.900314', 4, NULL),
       (47849, '2024-04-21 08:57:14.200489', 5, NULL),
       (47850, '2024-04-21 08:59:11.555664', 5, NULL),
       (47851, '2024-04-21 09:02:01.264480', 5, NULL),
       (47852, '2024-04-21 09:03:10.597680', 5, NULL),
       (47853, '2024-04-21 09:03:17.245109', 5, NULL),
       (47854, '2024-04-21 09:04:01.869465', 5, NULL),
       (47855, '2024-04-21 09:04:23.207395', 5, NULL),
       (47856, '2024-04-21 09:07:09.488438', 5, NULL),
       (47857, '2024-04-21 09:07:30.964064', 5, NULL),
       (47858, '2024-04-21 09:08:37.426154', 5, NULL),
       (47859, '2024-04-21 09:09:03.423225', 5, NULL),
       (47860, '2024-04-21 09:10:38.668108', 5, NULL),
       (47861, '2024-04-21 09:12:26.904383', 5, NULL),
       (47862, '2024-04-21 09:20:50.012806', 5, NULL),
       (47863, '2024-04-21 09:21:32.126558', 5, NULL),
       (47864, '2024-04-21 09:22:51.962112', 5, NULL),
       (47865, '2024-04-21 09:23:18.878968', 5, NULL),
       (47866, '2024-04-21 09:24:26.346961', 5, NULL),
       (47867, '2024-04-21 09:25:41.028400', 5, NULL),
       (47868, '2024-04-21 09:26:06.349824', 5, NULL),
       (47869, '2024-04-21 09:26:47.644953', 5, NULL),
       (47870, '2024-04-21 09:28:14.730413', 5, NULL),
       (47871, '2024-04-21 09:28:36.581224', 5, NULL),
       (47872, '2024-04-21 09:39:21.409145', 5, NULL),
       (47873, '2024-04-21 09:39:31.976850', 5, NULL),
       (47874, '2024-04-22 06:09:35.599762', 5, NULL),
       (47875, '2024-04-22 08:38:02.023498', 4, NULL),
       (47876, '2024-04-26 15:51:07.457367', 5, NULL),
       (47877, '2024-04-26 15:51:14.653037', 5, NULL),
       (47878, '2024-05-08 11:12:35.602374', 4, NULL),
       (47879, '2024-05-08 11:13:01.416788', 4, NULL),
       (47880, '2024-05-08 15:48:17.818664', 5, NULL),
       (47881, '2024-05-08 15:48:33.584525', 5, NULL),
       (47882, '2024-05-15 07:40:52.358332', 5, NULL),
       (47883, '2024-05-15 07:41:02.488625', 4, NULL),
       (47884, '2024-05-15 07:41:16.622178', 4, NULL),
       (47885, '2024-05-15 08:13:25.811821', 4, NULL),
       (47886, '2024-05-15 08:13:41.271620', 4, NULL),
       (47887, '2024-05-15 08:14:20.254969', 4, NULL),
       (47888, '2024-05-15 08:17:29.919361', 4, NULL),
       (47889, '2024-05-15 08:17:38.781005', 4, NULL),
       (47890, '2024-05-15 08:18:18.354287', 4, NULL),
       (47891, '2024-05-15 08:18:27.360904', 4, NULL),
       (47892, '2024-05-15 08:18:36.969369', 4, NULL),
       (47893, '2024-05-15 08:18:41.108319', 4, NULL),
       (47894, '2024-05-15 08:18:48.895664', 4, NULL),
       (47895, '2024-05-15 08:19:57.011849', 4, NULL),
       (47896, '2024-05-15 08:20:13.915154', 4, NULL),
       (47897, '2024-05-15 08:20:37.086465', 4, NULL),
       (47898, '2024-05-15 08:20:40.211983', 4, NULL),
       (47899, '2024-05-15 08:20:56.541252', 4, NULL),
       (47900, '2024-05-15 08:22:12.156654', 4, NULL),
       (47901, '2024-05-15 08:22:29.542075', 4, NULL),
       (47902, '2024-05-15 08:22:35.498498', 4, NULL),
       (47903, '2024-05-15 08:22:47.961447', 5, NULL),
       (47904, '2024-05-15 08:23:18.260482', 5, NULL),
       (47905, '2024-05-15 08:24:09.131872', 5, NULL),
       (47906, '2024-05-15 08:24:29.352394', 5, NULL),
       (47907, '2024-05-15 08:24:36.353390', 5, NULL),
       (47908, '2024-05-15 08:24:45.454365', 5, NULL),
       (47909, '2024-05-15 08:25:05.946904', 5, NULL),
       (47910, '2024-05-15 08:25:20.391755', 5, NULL),
       (47911, '2024-05-15 08:26:16.223020', 4, NULL),
       (47912, '2024-05-15 08:26:53.625235', 4, NULL),
       (47913, '2024-05-15 08:28:49.512511', 4, NULL),
       (47914, '2024-05-15 08:28:58.459449', 4, NULL),
       (47915, '2024-05-22 18:43:57.410582', 5, NULL),
       (47916, '2024-05-22 18:44:13.298454', 5, NULL),
       (47917, '2024-05-26 23:36:49.927385', 4, NULL),
       (47918, '2024-05-26 23:37:46.032489', 4, NULL),
       (47919, '2024-05-28 12:08:41.138392', 5, NULL),
       (47920, '2024-05-28 21:20:55.322426', 4, NULL),
       (47921, '2024-05-30 15:11:28.425648', 5, NULL),
       (47922, '2024-05-30 15:59:29.167512', 5, NULL),
       (47923, '2024-05-30 19:30:06.110744', 5, NULL),
       (47924, '2024-05-30 19:30:15.776931', 5, NULL),
       (47925, '2024-05-31 00:57:45.913571', 4, NULL),
       (47926, '2024-05-31 00:57:53.997394', 4, NULL),
       (47927, '2024-05-31 01:02:23.265414', 4, NULL),
       (47928, '2024-06-01 10:43:30.658221', 4, NULL),
       (47929, '2024-06-01 10:43:37.532051', 4, NULL),
       (47930, '2024-06-01 23:08:50.617333', 4, NULL),
       (47931, '2024-06-02 19:47:58.752207', 5, NULL),
       (47932, '2024-06-02 19:48:02.323403', 5, NULL),
       (47933, '2024-06-06 15:59:43.180484', 5, NULL),
       (47934, '2024-06-06 16:00:40.216083', 5, NULL),
       (47935, '2024-06-08 23:49:32.125329', 4, NULL),
       (47936, '2024-06-08 23:49:41.644035', 4, NULL),
       (47937, '2024-06-09 09:48:47.390689', 4, NULL),
       (47938, '2024-06-09 09:48:51.678710', 4, NULL),
       (47939, '2024-06-10 18:50:41.792720', 5, NULL),
       (47940, '2024-06-10 18:50:48.054909', 5, NULL),
       (47941, '2024-06-13 09:06:38.942203', 5, NULL),
       (47942, '2024-06-14 01:08:47.216520', 5, NULL),
       (47943, '2024-06-14 01:25:26.067420', 5, NULL),
       (47944, '2024-06-14 07:44:37.896631', 4, NULL),
       (47945, '2024-06-14 07:46:20.165342', 4, NULL),
       (47946, '2024-06-19 08:33:03.954744', 4, 78),
       (47947, '2024-06-19 08:34:38.234598', 4, 78),
       (47948, '2024-06-20 01:50:40.680917', 4, NULL),
       (47949, '2024-06-20 04:12:15.689864', 4, NULL),
       (47950, '2024-06-20 04:12:20.922868', 4, NULL),
       (47951, '2024-06-22 14:01:37.428129', 5, NULL),
       (47952, '2024-06-23 12:05:56.117097', 5, NULL),
       (47953, '2024-06-23 12:12:25.845162', 5, NULL),
       (47954, '2024-06-23 12:12:36.676900', 5, NULL),
       (47955, '2024-06-23 12:47:12.978517', 5, NULL),
       (47956, '2024-06-23 12:47:41.155727', 5, NULL),
       (47957, '2024-06-24 07:14:45.306962', 5, NULL),
       (47958, '2024-06-25 02:47:31.625277', 4, NULL),
       (47959, '2024-06-25 02:47:47.837902', 4, NULL),
       (47960, '2024-06-25 03:56:48.759098', 5, NULL),
       (47961, '2024-06-25 03:56:53.176021', 5, NULL),
       (47962, '2024-06-25 17:57:28.856699', 5, NULL),
       (47963, '2024-06-25 17:57:50.272376', 5, NULL),
       (47964, '2024-06-27 06:18:18.278872', 4, NULL),
       (47965, '2024-06-27 06:36:47.063999', 4, NULL),
       (47966, '2024-06-27 06:46:07.138340', 5, NULL),
       (47967, '2024-06-28 10:42:19.722068', 4, 2),
       (47968, '2024-06-30 13:06:51.371163', 5, NULL),
       (47969, '2024-07-02 08:47:11.436066', 4, NULL),
       (47970, '2024-07-02 08:47:27.568865', 4, NULL),
       (47971, '2024-07-02 23:17:25.024647', 5, NULL),
       (47972, '2024-07-02 23:17:32.317220', 5, NULL),
       (47973, '2024-07-06 08:19:39.306314', 5, NULL),
       (47974, '2024-07-09 15:38:08.692030', 5, NULL),
       (47975, '2024-07-09 23:52:46.433683', 4, NULL),
       (47976, '2024-07-09 23:52:54.482888', 4, NULL),
       (47977, '2024-07-11 23:43:13.202032', 5, NULL),
       (47978, '2024-07-11 23:43:23.577224', 4, NULL),
       (47979, '2024-07-13 13:45:46.083414', 4, NULL),
       (47980, '2024-07-13 13:46:01.183672', 4, NULL),
       (47981, '2024-07-13 19:44:12.168299', 4, NULL),
       (47982, '2024-07-13 19:44:22.960085', 4, NULL),
       (47983, '2024-07-17 19:45:35.688215', 5, NULL),
       (47984, '2024-07-17 19:46:32.489259', 5, NULL),
       (47985, '2024-07-18 03:40:19.473336', 5, NULL),
       (47986, '2024-07-18 03:40:28.635938', 5, NULL),
       (47987, '2024-07-18 12:11:38.812661', 4, NULL),
       (47988, '2024-07-18 16:18:00.857093', 4, NULL),
       (47989, '2024-07-18 18:47:48.900208', 4, NULL),
       (47990, '2024-07-18 18:51:53.795416', 4, NULL),
       (47991, '2024-07-22 09:31:57.522877', 5, NULL),
       (47992, '2024-07-22 09:32:04.834990', 5, NULL),
       (47993, '2024-07-25 00:30:08.649299', 4, NULL),
       (47994, '2024-07-29 00:17:00.421659', 4, NULL),
       (47995, '2024-07-29 00:17:11.077708', 4, NULL),
       (47996, '2024-07-30 09:32:04.205060', 5, NULL),
       (47997, '2024-07-30 09:37:52.726472', 5, NULL),
       (47998, '2024-07-31 06:35:20.068384', 4, NULL),
       (47999, '2024-07-31 06:36:06.781636', 4, NULL),
       (48000, '2024-08-03 12:54:27.680196', 4, NULL),
       (48001, '2024-08-03 12:54:34.307231', 4, NULL),
       (48002, '2024-08-03 20:06:06.232682', 4, NULL),
       (48003, '2024-08-04 10:56:17.838891', 5, NULL),
       (48004, '2024-08-05 17:40:02.239406', 5, NULL),
       (48005, '2024-08-05 20:13:42.484181', 5, NULL),
       (48006, '2024-08-05 21:38:43.836539', 5, NULL),
       (48007, '2024-08-06 06:09:30.158650', 5, NULL),
       (48008, '2024-08-06 08:16:46.798943', 5, NULL),
       (48009, '2024-08-06 19:08:03.926619', 5, NULL),
       (48010, '2024-08-08 16:08:36.863386', 5, NULL),
       (48011, '2024-08-08 17:44:46.256453', 5, NULL),
       (48012, '2024-08-08 17:46:02.935357', 5, NULL),
       (48013, '2024-08-08 17:46:19.742853', 5, NULL),
       (48014, '2024-08-08 23:34:16.709730', 4, 2),
       (48015, '2024-08-08 23:38:34.678437', 4, 2),
       (48016, '2024-08-08 23:43:34.003879', 4, 2),
       (48017, '2024-08-08 23:44:58.422220', 4, 2),
       (48018, '2024-08-08 23:47:38.173724', 4, 2),
       (48019, '2024-08-09 07:10:43.775499', 4, NULL),
       (48020, '2024-08-09 07:11:06.711600', 4, NULL),
       (48021, '2024-08-09 07:23:28.612995', 5, NULL),
       (48022, '2024-08-14 18:26:26.344495', 4, 2),
       (48023, '2024-08-15 18:46:28.158495', 4, NULL),
       (48024, '2024-08-15 22:49:29.085055', 5, NULL),
       (48025, '2024-08-16 21:48:32.517243', 4, NULL),
       (48026, '2024-08-16 21:48:40.314612', 4, NULL),
       (48027, '2024-08-17 15:17:10.028658', 5, NULL),
       (48028, '2024-08-17 18:03:26.279145', 5, NULL),
       (48029, '2024-08-18 06:02:16.924442', 5, NULL),
       (48030, '2024-08-18 06:02:21.209071', 5, NULL),
       (48031, '2024-08-18 11:12:19.021503', 5, NULL),
       (48032, '2024-08-18 11:13:05.881436', 5, NULL),
       (48033, '2024-08-19 07:11:18.785641', 5, NULL),
       (48034, '2024-08-19 07:18:14.965694', 5, NULL),
       (48035, '2024-08-19 08:48:00.422834', 5, NULL),
       (48036, '2024-08-19 09:19:21.280462', 5, NULL),
       (48037, '2024-08-19 11:51:11.794976', 4, NULL),
       (48038, '2024-08-20 09:36:38.340433', 4, NULL),
       (48039, '2024-08-20 09:36:44.917912', 4, NULL),
       (48040, '2024-08-21 16:26:18.432803', 5, NULL),
       (48041, '2024-08-21 16:29:04.125531', 5, NULL),
       (48042, '2024-08-21 16:30:21.015602', 5, NULL),
       (48043, '2024-08-21 16:30:35.351223', 5, NULL),
       (48044, '2024-08-21 16:32:31.913520', 5, NULL),
       (48045, '2024-08-21 16:33:04.707122', 5, NULL),
       (48046, '2024-08-21 16:33:06.963398', 5, NULL),
       (48047, '2024-08-21 16:33:48.324656', 5, NULL),
       (48048, '2024-08-21 16:33:56.036969', 5, NULL),
       (48049, '2024-08-21 16:34:00.740889', 5, NULL),
       (48050, '2024-08-21 16:34:21.691112', 5, NULL),
       (48051, '2024-08-21 16:34:27.062556', 5, NULL),
       (48052, '2024-08-21 16:34:58.956515', 5, NULL),
       (48053, '2024-08-21 16:35:02.536671', 5, NULL),
       (48054, '2024-08-21 16:35:07.410682', 5, NULL),
       (48055, '2024-08-21 16:36:54.838122', 5, NULL),
       (48056, '2024-08-21 16:37:38.795615', 5, NULL),
       (48057, '2024-08-21 16:38:02.819360', 5, NULL),
       (48058, '2024-08-21 16:38:49.108532', 5, NULL),
       (48059, '2024-08-21 16:40:48.226291', 5, NULL),
       (48060, '2024-08-21 16:42:10.853325', 5, NULL),
       (48061, '2024-08-21 16:45:48.925967', 5, NULL),
       (48062, '2024-08-21 16:45:57.863024', 5, NULL),
       (48063, '2024-08-21 16:46:15.819270', 5, NULL),
       (48064, '2024-08-21 16:46:39.091925', 5, NULL),
       (48065, '2024-08-21 16:47:13.196126', 5, NULL),
       (48066, '2024-08-21 16:47:24.988886', 5, NULL),
       (48067, '2024-08-21 16:47:25.868679', 5, NULL),
       (48068, '2024-08-21 16:47:53.994608', 5, NULL),
       (48069, '2024-08-21 16:47:55.779910', 5, NULL),
       (48070, '2024-08-21 16:48:03.564455', 5, NULL),
       (48071, '2024-08-21 16:48:04.203766', 5, NULL),
       (48072, '2024-08-21 16:49:07.466556', 5, NULL),
       (48073, '2024-08-21 16:49:13.237226', 5, NULL),
       (48074, '2024-08-21 16:49:41.478173', 5, NULL),
       (48075, '2024-08-21 16:49:46.795416', 5, NULL),
       (48076, '2024-08-21 16:50:21.712641', 5, NULL),
       (48077, '2024-08-21 16:50:43.506280', 5, NULL),
       (48078, '2024-08-21 16:50:51.508306', 5, NULL),
       (48079, '2024-08-21 16:50:58.253228', 5, NULL),
       (48080, '2024-08-21 16:51:18.121703', 5, NULL),
       (48081, '2024-08-21 16:51:50.717081', 5, NULL),
       (48082, '2024-08-21 16:51:55.810396', 5, NULL),
       (48083, '2024-08-21 16:52:21.895750', 5, NULL),
       (48084, '2024-08-21 16:52:36.499553', 5, NULL),
       (48085, '2024-08-21 16:53:03.691956', 5, NULL),
       (48086, '2024-08-21 16:53:22.919399', 5, NULL),
       (48087, '2024-08-21 16:53:30.949361', 5, NULL),
       (48088, '2024-08-21 16:53:42.783184', 5, NULL),
       (48089, '2024-08-21 16:54:27.075579', 5, NULL),
       (48090, '2024-08-21 16:54:38.826074', 5, NULL),
       (48091, '2024-08-21 16:55:37.275080', 5, NULL),
       (48092, '2024-08-21 16:57:00.455712', 5, NULL),
       (48093, '2024-08-21 16:57:28.382193', 5, NULL),
       (48094, '2024-08-21 16:57:33.040036', 5, NULL),
       (48095, '2024-08-21 16:57:44.524346', 5, NULL),
       (48096, '2024-08-21 16:58:01.952266', 5, NULL),
       (48097, '2024-08-21 16:58:20.208351', 5, NULL),
       (48098, '2024-08-21 17:34:41.751959', 5, NULL),
       (48099, '2024-08-21 17:34:56.587611', 5, NULL),
       (48100, '2024-08-21 17:35:50.776470', 5, NULL),
       (48101, '2024-08-21 17:36:15.767935', 5, NULL),
       (48102, '2024-08-21 17:36:21.571687', 5, NULL),
       (48103, '2024-08-21 17:36:27.444366', 5, NULL),
       (48104, '2024-08-21 17:36:56.158263', 5, NULL),
       (48105, '2024-08-21 17:37:02.008909', 5, NULL),
       (48106, '2024-08-21 17:37:09.282762', 5, NULL),
       (48107, '2024-08-21 17:37:23.344066', 5, NULL),
       (48108, '2024-08-21 17:37:56.790075', 5, NULL),
       (48109, '2024-08-21 17:39:02.948892', 4, NULL),
       (48110, '2024-08-21 17:47:42.225822', 5, NULL),
       (48111, '2024-08-21 17:59:47.782060', 5, NULL),
       (48112, '2024-08-21 18:04:48.057250', 5, NULL),
       (48113, '2024-08-21 19:21:00.599016', 5, NULL),
       (48114, '2024-08-22 21:30:54.426015', 4, NULL),
       (48115, '2024-08-22 21:31:05.724058', 4, NULL),
       (48116, '2024-08-30 07:56:07.455001', 5, NULL),
       (48117, '2024-08-30 07:56:15.096857', 5, NULL),
       (48118, '2024-09-01 19:33:06.041333', 4, NULL),
       (48119, '2024-09-01 19:33:22.756585', 4, NULL),
       (48120, '2024-09-03 14:39:09.799785', 4, NULL),
       (48121, '2024-09-03 15:01:35.890885', 5, NULL),
       (48122, '2024-09-03 15:02:06.720797', 5, NULL),
       (48123, '2024-09-03 17:50:24.769180', 4, NULL),
       (48124, '2024-09-03 17:56:28.411921', 5, NULL),
       (48125, '2024-09-03 17:56:44.745947', 5, NULL);
/*!40000 ALTER TABLE `article_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chapter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhhaina8rg7bpmg1qesiluu8vu` (`course_id`),
  CONSTRAINT `FKhhaina8rg7bpmg1qesiluu8vu` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` VALUES (1,'Un autre Test modif sur nombre ',1,0),(3,'Bien démarrer avec le Domain-Driven Design (DDD) ',2,0),(5,'Pocketbase Setup',3,0),(6,'Les Value Objects',2,0),(7,'Préparer son apprentissage',2,0),(8,'Bien debuter Bien debuter Bien debuter Bien debuter Bien debuter Bien debuter Bien debuter Bien debuter Bien debuter',4,1),(9,'Un autre Test modif sur nombre ',2,1),(18,'Mieux taper au clavier',1,1),(20,'chap 2',3,1),(22,'chap 1',11,1),(25,'chap 3',4,4),(26,'chap 3',3,3),(27,'chap 2',4,2),(28,'chap 4',4,3),(29,'Section 1',12,1),(30,'Débuter même lorsque l\'on a peur !',16,1);
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) DEFAULT NULL,
  `enrolled_count` bigint NOT NULL,
  `last_published_at` datetime(6) DEFAULT NULL,
  `last_saved_at` datetime(6) DEFAULT NULL,
  `price` bigint NOT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `sandbox_type` varchar(255) DEFAULT NULL,
  `mentored` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmaatvkqyrdpwoiq3opi1obk7b` (`author_id`),
  CONSTRAINT `FKmaatvkqyrdpwoiq3opi1obk7b` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'2023-02-15 07:40:00.757076',0,NULL,'2023-02-15 07:40:00.757076',0,NULL,1,NULL,NULL,NULL,'Mastering Test doubles',NULL,1,NULL,_binary '\0'),(2,'2023-02-15 07:10:10.977163',0,'2023-11-19 20:47:55.350324','2023-11-19 20:47:55.350324',6000,'2023-02-15 07:54:27.369038',1,'Apprenez le DDD par la pratique','Apprenez et implémentez des modèles de conception simples\npour satisfaire des\nbesoins logiciels toujours plus complexes.','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/kubernetes_free.png','Mettez (enfin) en place le DDD [Bootcamp]','https://www.youtube.com/embed/4awWlKVZ1Hk',1,'K8S',_binary ''),(3,'2023-02-16 08:44:17.975581',0,'2024-03-29 22:31:37.690839','2024-03-29 22:31:37.690839',2000,'2024-03-29 22:31:37.690839',1,'Une app de chat en temps réel','Un petit resIn the following tutorial we will build a chat app with Pocketbase and Svelte. Pocketbase is a backend (inspired by Firebase) structured as a single executable file. It provides a realtime DB based on SQLite and user autheume du cours ici',NULL,'Pocketbase Chat App','https://www.youtube.com/watch?v=Uo3cL4nrGOk',2,'NONE',_binary '\0'),(4,'2023-03-01 18:42:07.050462',0,'2024-05-18 08:21:18.201907','2024-05-18 08:21:18.201907',0,'2024-03-29 22:35:52.235203',1,'Construire son app mobile de soi meme','Un petit resume du cours ici','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/No_video.png','Full Cycle Dev/Ops | Élevez le Développe\\ ment au-delà du Build','https://www.youtube.com/watch?v=ue_RmtKCLLA',2,'NONE',_binary '\0'),(5,'2023-04-27 07:21:59.343977',0,NULL,'2023-04-27 07:21:59.343977',0,NULL,1,NULL,NULL,NULL,'Test enregistrement',NULL,1,NULL,_binary '\0'),(11,'2023-05-17 21:26:02.392717',0,NULL,'2023-05-17 21:56:18.133883',0,NULL,3,'Ce sous titre est à titre indicatif,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              vous devrez le changer!','Ce sommaire est à titre indicatif,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              vous devrez le changer!',NULL,'cours de test',NULL,2,NULL,_binary '\0'),(12,'2023-11-19 15:16:14.510748',0,'2023-11-19 20:47:22.831435','2023-11-19 20:47:22.831435',10000,'2023-11-19 15:18:52.711774',1,'Sous titre','Un petit resume du cours ici.','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/wachatGPT.jpg','Simple Course example','https://www.youtube.com/embed/4awWlKVZ1Hk',1,'NONE',_binary '\0'),(14,'2024-02-08 22:52:28.509353',0,NULL,'2024-02-08 23:05:25.158271',0,NULL,1,'Ecrire du code react comme un pro','React est une lib puissante mais si elle est mal utilisée le resultat est très désagreable. Aprenez à mieux tirer profit avec les meilleures pratiques comme des pros.','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202024-02-08%20at%2010.42.43%E2%80%AFAM.png','REACT PRO','https://www.youtube.com/embed/3WCIyNOrzwM?si=fToFY_RwxdSelQwu',2,'NONE',_binary '\0'),(15,'2024-03-12 12:19:39.232334',0,NULL,'2024-03-12 12:19:39.232334',0,NULL,1,NULL,NULL,NULL,'Cours Test',NULL,2,'NONE',_binary '\0'),(16,'2024-03-29 22:23:20.483925',0,'2024-03-29 22:31:12.905976','2024-03-29 22:31:12.905976',0,'2024-03-29 22:31:12.905976',1,'Un cours relié au bootcamp','Un petit résumé du cours relié ?\nOk,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              il consiste à tester l\'affichage et l\'enrollement aux cours associés.',NULL,'Cours relié','Nothing',1,'NONE',_binary '\0');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tag`
--

DROP TABLE IF EXISTS `course_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_tag` (
  `course_id` bigint NOT NULL,
  `tag_id` bigint NOT NULL,
  PRIMARY KEY (`course_id`,`tag_id`),
  KEY `FKj7piuv0dh0v01l3aolwwd1jwh` (`tag_id`),
  CONSTRAINT `FK3tta6lkm8fr0rgfyr4y3xrr3u` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKj7piuv0dh0v01l3aolwwd1jwh` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tag`
--

LOCK TABLES `course_tag` WRITE;
/*!40000 ALTER TABLE `course_tag` DISABLE KEYS */;
INSERT INTO `course_tag` VALUES (3,1),(4,1),(12,1),(14,1),(16,4);
/*!40000 ALTER TABLE `course_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) NOT NULL,
  `completed` bit(1) NOT NULL,
  `enrolled_at` datetime(6) DEFAULT NULL,
  `last_modified_at` datetime(6) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `suspended_at` datetime(6) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `for_life` bit(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UniqueUserPerCourseId` (`user_id`,`course_id`),
  KEY `FKbhhcqkw1px6yljqg92m0sh2gt` (`course_id`),
  CONSTRAINT `FKbhhcqkw1px6yljqg92m0sh2gt` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKgpuyid9pbfpxghv9vyhb0ictd` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment`
--

LOCK TABLES `enrollment` WRITE;
/*!40000 ALTER TABLE `enrollment` DISABLE KEYS */;
INSERT INTO `enrollment` VALUES (3,_binary '',_binary '\0','2023-05-01 10:22:34.258607','2023-05-01 10:22:34.258607','BASIC',NULL,2,7,_binary ''),(6,_binary '',_binary '\0','2023-05-26 21:28:08.734292','2023-05-27 07:26:32.336605','PRO',NULL,2,2,_binary '\0'),(7,_binary '',_binary '\0','2023-05-26 21:36:05.390607','2023-05-26 21:36:05.390607','BASIC',NULL,2,50,_binary ''),(8,_binary '',_binary '\0','2023-05-28 13:21:29.665542','2023-05-28 13:21:29.665542','PRO',NULL,3,2,_binary '\0'),(9,_binary '',_binary '\0','2023-06-09 14:59:25.507139','2023-06-09 14:59:25.507139','PRO',NULL,11,2,_binary '\0'),(10,_binary '',_binary '\0','2023-06-10 05:08:46.186800','2023-06-10 05:08:46.186800','PRO',NULL,4,2,_binary '\0'),(12,_binary '\0',_binary '\0','2023-11-19 15:18:56.750823','2023-11-19 20:42:26.464340','PRO','2024-04-26 21:39:48.961253',12,1,_binary '\0'),(15,_binary '',_binary '\0','2024-01-11 22:32:01.878993','2024-01-11 22:32:01.878993','PRO',NULL,12,2,_binary '\0'),(20,_binary '',_binary '\0','2024-01-29 20:08:16.118553','2024-03-12 22:54:08.753829','BASIC',NULL,12,4,_binary ''),(21,_binary '',_binary '\0','2024-01-29 20:09:24.643170','2024-01-31 00:35:57.329809','BASIC',NULL,2,4,_binary ''),(22,_binary '',_binary '\0','2024-01-29 21:44:59.625497','2024-01-29 22:26:50.590213','BASIC',NULL,2,79,_binary ''),(23,_binary '\0',_binary '\0','2024-01-29 22:10:59.495591','2024-01-29 22:10:59.495591','PRO','2024-03-11 23:44:56.498780',12,79,_binary '\0'),(24,_binary '',_binary '\0','2024-02-27 22:18:30.927261','2024-09-02 15:59:42.106661','BASIC',NULL,2,1,_binary ''),(26,_binary '\0',_binary '\0','2024-03-12 23:42:06.699180','2024-03-12 23:42:06.699180','PRO','2024-03-12 23:43:10.158141',12,3,_binary '\0'),(27,_binary '\0',_binary '\0','2024-03-29 22:26:50.056484','2024-03-29 22:26:50.056484','PRO','2024-04-26 21:39:48.816518',16,1,_binary '\0'),(28,_binary '',_binary '\0','2024-03-30 14:21:10.423301','2024-03-30 14:21:10.423301','PRO',NULL,16,2,_binary '\0'),(29,_binary '',_binary '\0','2024-03-30 15:25:48.022752','2024-03-30 15:25:48.022752','BASIC',NULL,2,3,_binary ''),(30,_binary '',_binary '\0','2024-04-09 23:44:10.623592','2024-04-09 23:44:10.623592','PRO',NULL,14,2,_binary '\0'),(31,_binary '',_binary '\0','2024-04-09 23:44:31.809177','2024-04-09 23:44:31.809177','PRO',NULL,15,2,_binary '\0'),(32,_binary '\0',_binary '\0','2024-07-24 10:00:00.000000','2024-08-06 22:15:24.285325','BASIC','2024-08-06 22:17:34.527056',2,84,_binary ''),(34,_binary '\0',_binary '\0','2024-08-10 09:11:51.064451','2024-08-13 09:46:54.304513',NULL,'2024-08-13 09:47:07.550883',3,1,_binary ''),(35,_binary '\0',_binary '\0','2024-08-10 11:25:30.554994','2024-08-10 11:27:46.922632',NULL,'2024-08-12 20:07:50.729172',4,1,_binary ''),(37,_binary '\0',_binary '\0','2024-08-14 13:11:01.922814','2024-08-14 14:00:46.130130',NULL,'2024-08-14 12:01:48.063952',1,86,_binary '\0'),(38,_binary '',_binary '\0','2024-08-14 14:34:10.251010','2024-08-15 11:14:57.447868',NULL,NULL,1,85,_binary ''),(39,_binary '',_binary '\0','2024-08-15 11:29:32.689722','2024-08-15 11:29:32.689722',NULL,NULL,2,85,_binary ''),(40,_binary '\0',_binary '\0','2024-08-15 11:34:32.241793','2024-08-15 11:34:32.241793',NULL,'2024-08-15 11:35:45.025614',3,85,_binary ''),(41,_binary '',_binary '\0','2024-08-20 10:09:07.892341','2024-08-20 10:09:07.892341',NULL,NULL,4,84,_binary ''),(42,_binary '',_binary '\0','2024-08-29 13:49:58.422257','2024-08-29 13:49:58.422257',NULL,NULL,2,86,_binary '');
/*!40000 ALTER TABLE `enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enrollment_completed_lessons`
--

DROP TABLE IF EXISTS `enrollment_completed_lessons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enrollment_completed_lessons` (
  `enrollment_id` bigint NOT NULL,
  `lesson_id` bigint NOT NULL,
  `completed_at` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`enrollment_id`,`lesson_id`),
  KEY `FKblc7p66mc5wg1m6g4ml51yflr` (`lesson_id`),
  CONSTRAINT `FKblc7p66mc5wg1m6g4ml51yflr` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`),
  CONSTRAINT `FKmovwpr92c2368hr5lkus1kjge` FOREIGN KEY (`enrollment_id`) REFERENCES `enrollment` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enrollment_completed_lessons`
--

LOCK TABLES `enrollment_completed_lessons` WRITE;
/*!40000 ALTER TABLE `enrollment_completed_lessons` DISABLE KEYS */;
INSERT INTO `enrollment_completed_lessons` VALUES (3,6,NULL),(3,7,NULL),(6,2,'2024-05-15 09:50:55.168343'),(6,6,'2024-05-15 09:35:59.820958'),(6,7,'2024-05-15 09:51:11.785401'),(6,11,'2024-08-28 16:24:35.005251'),(6,12,'2024-08-28 16:24:42.744392'),(6,13,'2024-08-10 15:27:45.498232'),(6,14,'2024-08-10 16:55:48.740435'),(6,15,'2024-05-22 08:40:45.855865'),(6,16,'2024-08-10 12:02:01.818368'),(6,17,'2024-08-28 16:23:01.931313'),(6,22,'2024-05-22 11:22:00.704099'),(6,25,'2024-05-14 09:04:09.734814'),(8,31,'2024-03-12 12:42:39.470970'),(10,20,'2024-08-12 18:29:53.722331'),(10,21,'2024-08-12 18:29:58.602361'),(10,24,'2024-08-12 18:30:04.580785'),(10,29,'2024-08-12 18:30:09.435218'),(10,34,'2024-08-20 15:40:57.248113'),(12,30,'2024-02-09 22:38:47.576046'),(21,2,NULL),(21,6,'2024-02-09 21:58:06.666365'),(21,7,'2024-02-09 21:58:33.790263'),(21,11,'2024-02-09 21:59:13.453606'),(21,15,'2024-02-09 21:58:52.108385'),(21,16,'2024-02-09 22:00:02.219254'),(29,2,'2024-07-05 06:38:33.407693'),(29,6,'2024-07-05 06:38:43.827673'),(29,7,'2024-07-05 06:38:49.562692'),(29,11,'2024-05-15 10:09:51.690332'),(29,12,'2024-05-15 10:10:03.349870'),(29,13,'2024-05-15 10:10:10.655495'),(29,14,'2024-05-15 10:09:30.799966'),(29,15,'2024-07-05 06:38:56.222824'),(29,16,'2024-07-05 06:39:02.341958'),(29,17,'2024-07-05 06:38:22.313713'),(29,22,'2024-08-20 07:20:39.428558'),(29,25,'2024-08-20 07:20:34.057089'),(41,20,'2024-08-20 10:09:54.313502'),(41,21,'2024-08-20 10:09:58.572168'),(41,24,'2024-08-20 10:10:02.314065'),(41,29,'2024-08-20 10:10:06.354430'),(41,34,'2024-08-25 14:15:22.869073'),(42,2,'2024-09-05 08:03:42.092617');
/*!40000 ALTER TABLE `enrollment_completed_lessons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lesson` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `free` bit(1) NOT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `chapter_id` bigint DEFAULT NULL,
  `number` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKyd2sg2b1awfx3br81o66mrwl` (`chapter_id`),
  CONSTRAINT `FKyd2sg2b1awfx3br81o66mrwl` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
INSERT INTO `lesson` VALUES (1,'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Maloru\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',_binary '\0','des petites bonnes actions que chacun posera.','nini','Différence en CI et CD','video','https://www.youtube.com/watch?v=5Ti0yJkfbiA&t=30s',1,0),(2,'\n      ## Introduction\n\n      Ici vous dites ce que vous allez faire de façon objective.\n\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n\n      Votre second paragraphe\n\n      ## 3/ Contenu 3\n\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      \n\n\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n\n      Votre second paragraphe\n\n      ## 3/ Contenu 3\n\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '\0','des petites bonnes actions.',NULL,'A stub is not a mock, nor a fake.','text',NULL,3,0),(6,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon  très objective.\n\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '','des petites bonnes actions.',NULL,'Leçon 14','video','https://vimeo.com/804564267',3,0),(7,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '\0','des petites bonnes actions.',NULL,'Leçon 15','video','https://vimeo.com/804933075',3,0),(11,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '\0','des petites bonnes actions.',NULL,'Comment les reconnaître ?','text',NULL,6,0),(12,NULL,_binary '\0',NULL,NULL,'Leçon 1','text',NULL,6,0),(13,NULL,_binary '\0',NULL,NULL,'Leçon 2','text',NULL,6,0),(14,NULL,_binary '\0',NULL,NULL,'Leçon 25','text',NULL,6,0),(15,NULL,_binary '\0',NULL,NULL,'Episode 4','text',NULL,3,0),(16,NULL,_binary '\0',NULL,NULL,'Episode 45','text',NULL,3,0),(17,NULL,_binary '\0',NULL,NULL,'Episode 85','text',NULL,3,0),(18,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '','des petites bonnes actions.',NULL,'Lesson 2','text','',5,0),(20,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '','des petites bonnes actions.',NULL,'les bases necessaire','video','https://vimeo.com/824706036',8,0),(21,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '\0','des petites bonnes actions.',NULL,'Lesson 2','video','https://vimeo.com/824505527',8,1),(22,NULL,_binary '\0',NULL,NULL,'A stub is not a mock, nor a fake.','text',NULL,9,2),(24,'\n      ## Introduction\n      Ici vous dites ce que vous allez faire de façon objective.\n      Ex: Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.\n\n      ## 1/ Contenu 1\n      Votre premier paragraphe\n      ## 2/ Contenu 2\n      Votre second paragraphe\n      ## 3/ Contenu 3\n      Votre troisieme paragraphe\n\n      etc...\n\n      ...\n      N\'hésitez pas à rajouter des sous-titres au besoin ?\n      ### 3-1/ Sous-contenu 3\n\n\n      ## Conclusion\n      Ici rappelez ce que vous avez fait !\n      ',_binary '\0','des petites bonnes actions.',NULL,'Lesson 3','video','https://vimeo.com/824507001',8,2),(25,'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Maloru\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.',_binary '\0','des petites bonnes actions que chacun posera.','nini','Différence en CI et CD','video','https://www.youtube.com/watch?v=5Ti0yJkfbiA&t=30s',9,1),(28,NULL,_binary '\0',NULL,NULL,'lesson 1','text',NULL,22,1),(29,NULL,_binary '\0',NULL,NULL,'lesson 4','text',NULL,8,3),(30,NULL,_binary '\0',NULL,NULL,'Leçon 1','text',NULL,29,1),(31,NULL,_binary '\0',NULL,NULL,'lesson test','text',NULL,5,1),(32,NULL,_binary '\0',NULL,NULL,'Lesson test 3','text',NULL,5,2),(33,NULL,_binary '\0',NULL,NULL,'La situation ne peut être plus grave','text',NULL,30,1),(34,' ',_binary '\0','des petites bonnes actions.',NULL,'Une leçon sans contenu','text',NULL,8,4);
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `at` datetime(6) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `recurring_interval` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UniquePaymentPerReference` (`reference`),
  KEY `FK4spfnm9si9dowsatcqs5or42i` (`user_id`),
  CONSTRAINT `FK4spfnm9si9dowsatcqs5or42i` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment`
VALUES (1, '2024-05-31 06:02:14.293453', '2328fcfd-4889-445a-8e2c-86188d6b2c14', NULL, NULL, NULL),
       (2, '2024-05-31 04:17:34.315860', '20574817-f411-4d93-885c-999c361fed3a', 1, NULL, NULL),
       (3, '2024-05-31 04:23:20.779484', 'cd044d53-474c-4ad5-b059-e49cc5fae631', 1, NULL, NULL),
       (4, '2024-05-31 05:37:03.989953', '3f724d75-d84d-40f6-867c-b81c4ddcb1bf', 1, NULL, NULL),
       (5, '2024-05-31 05:40:13.579266', '9fe966b0-3a25-4f7b-b771-ddebc41982bb', 1, NULL, NULL),
       (6, '2024-05-31 06:43:26.249349', 'bf87832b-a4e6-45ba-b341-e2b09cd1c18a', 78, NULL, NULL),
       (7, '2024-05-31 06:44:44.025372', '8a8f022b-310d-45bf-ba1e-56d5f5ebe5f4', 78, NULL, NULL),
       (8, '2024-05-31 06:45:58.284339', '24a46a1a-ca14-4894-a9b7-529b8bf380df', 78, NULL, NULL),
       (9, '2024-05-31 06:46:02.046785', 'a14cfd25-7007-4299-b861-5916e09e92e4', 78, NULL, NULL),
       (10, '2024-05-31 06:47:34.220127', '2c88ef8e-c8fa-4d8d-8ef5-504ccebec044', 78, NULL, NULL),
       (11, '2024-05-31 06:51:00.694344', '2730ee9d-7400-4703-b3e4-2ae60bb01f92', 78, NULL, NULL),
       (12, '2024-05-31 06:51:10.814952', 'be40aab4-4ef2-4688-b7e7-c8455fe5e742', 78, NULL, NULL),
       (13, '2024-05-31 06:56:14.588947', '9d3581f2-4795-4b9a-bbaa-9a5e4ab8d8d1', 78, NULL, NULL),
       (14, '2024-05-31 07:02:41.872318', 'ff97be5b-c412-453f-a69c-88c29f44ecdc', 78, NULL, NULL),
       (15, '2024-05-31 07:02:47.320359', '17f46afa-a067-48b2-83f2-cf677f509529', 78, NULL, NULL),
       (16, '2024-05-31 07:04:12.598583', '4fa5be88-6cd6-4daf-92ec-80dbd522fd9c', 78, NULL, NULL),
       (17, '2024-05-31 07:04:16.420963', '69949791-ee7e-4ee5-8bac-e15be9ca9418', 78, NULL, NULL),
       (18, '2024-05-31 07:05:24.578372', '369955ef-b2fa-4197-a946-0851d6721344', 78, NULL, NULL),
       (19, '2024-05-31 07:05:27.652366', '82c28914-ab55-425c-a6dd-7a2e9b01cf6a', 78, NULL, NULL),
       (20, '2024-05-31 07:06:21.764028', 'e519c5be-cad5-4f17-a23b-0dd7df54f21d', 78, NULL, NULL),
       (21, '2024-05-31 07:06:26.630024', 'cc522723-ebdb-4880-b70a-2a7924182f59', 78, NULL, NULL),
       (22, '2024-05-31 07:06:33.490047', 'ab381e75-1a29-44e2-9d7d-dc25188b261b', 78, NULL, NULL),
       (23, '2024-05-31 07:06:36.457325', '6c88b798-31f4-4731-a0ef-b7c2dbfa9e32', 78, NULL, NULL),
       (24, '2024-05-31 07:22:48.968809', '74e9a0e5-6601-40e6-9723-58326705d024', 78, NULL, NULL),
       (25, '2024-05-31 12:08:12.582185', '57deb562-4583-41f6-b5ae-b1a68026a797', 78, NULL, NULL),
       (26, '2024-05-31 12:10:39.718127', 'dc74f526-3f38-4404-b89a-e85c13a8f38d', 78, NULL, NULL),
       (27, '2024-05-31 12:15:09.315771', 'ba40ca2b-ec37-479f-8f25-16d7b85c23a7', 78, NULL, NULL),
       (28, '2024-05-31 12:24:36.694485', '2806f30b-899e-488c-b56f-daf98f0764d5', 78, NULL, NULL),
       (29, '2024-05-31 12:25:38.814509', '2bba2dac-bdb4-4d17-a975-80d45de34a8f', 78, NULL, NULL),
       (30, '2024-05-31 18:41:58.325067', '62c5aadb-b63f-415b-bec9-71db10c7b8a2', 78, NULL, NULL),
       (31, '2024-06-01 10:23:18.735668', '213b98d7-6c3f-4616-8359-65b9b7943966', 78, NULL, NULL),
       (32, '2024-06-01 10:47:53.319892', 'b3de8229-5b3a-41b3-b167-a6fb773ec361', 78, NULL, NULL),
       (33, '2024-06-01 11:12:34.248897', '32616b18-681b-474a-aa86-7e73b02e7d6e', 78, NULL, NULL),
       (34, '2024-06-03 07:03:52.354717', '6a077cab-801f-43a6-a5d3-e832f50028ba', 2, NULL, NULL),
       (35, '2024-06-05 23:25:48.252615', '9be3c640-e7a2-4f9b-9d55-a0cf2eab16aa', 1, NULL, NULL),
       (36, '2024-06-05 23:27:07.307728', '1d0dd053-42e2-405d-92d0-c6eddb4e5208', 1, NULL, NULL),
       (37, '2024-06-05 23:36:12.064797', '4650fc0d-56e1-448e-b238-c2f19d188521', 1, NULL, NULL),
       (38, '2024-06-05 23:37:04.271743', '7fee08fa-d771-4743-bb4a-b26b85edc1ad', 1, NULL, NULL),
       (41, '2024-05-13 19:58:17.526000', 'b215be90-8be0-4f6c-9b68-eb3144d8ac4b', 1, 'completed', 'month'),
       (61, '2024-06-13 18:54:46.501975', 'ba903fe0-b0d4-4856-9c3c-133454213482', 78, 'initialized', 'month'),
       (62, '2024-06-13 19:01:19.990154', 'f5d07df1-bf5f-461e-85ac-458e00e6985d', 78, 'initialized', 'year'),
       (63, '2024-05-15 21:16:03.038000', '509f18fd-5118-44b5-858f-5c3d96a8deaf', 1, 'completed', 'month'),
       (64, '2023-06-15 21:19:48.773000', 'b81e3a4b-6320-4d31-956a-1bd90106cdbb', 1, 'completed', 'year'),
       (65, '2024-06-14 07:23:13.285912', '911d9561-d19f-435b-b0a3-8e25878c2704', 78, 'completed', 'year'),
       (66, '2024-06-14 07:24:51.654425', '81dfe242-c5aa-4a24-8402-9791ec0feaca', 78, 'completed', 'month'),
       (69, '2024-06-15 13:00:04.750392', 'd3b0be19-cacd-48bb-8367-a6a451637f58', 1, 'initialized', 'month'),
       (70, '2024-06-15 13:00:21.621679', '5787fa6c-79f3-4ce3-99ee-f3fff8958394', 1, 'initialized', 'month'),
       (71, '2024-06-17 12:06:57.125221', '9609b7e1-0f73-4481-8bc1-73e99386cbc2', 78, 'initialized', 'month'),
       (72, '2024-06-17 12:07:23.184086', 'b9fb3d07-b709-4098-87a2-e07cfbdc90f7', 78, 'initialized', 'year'),
       (73, '2024-06-28 18:04:24.059475', 'b6184f30-ddf2-4616-8324-54c65e04d22a', 2, 'initialized', 'month'),
       (74, '2024-06-28 18:24:49.726619', 'e22018c2-cd4e-4c08-9d9b-85531580798a', 2, 'initialized', 'year'),
       (75, '2024-07-13 12:58:51.209810', 'e42d1d15-cc66-4d04-9610-747d33354ea3', 1, 'initialized', 'month'),
       (76, '2024-07-13 13:00:11.787243', '95f58f1f-0563-48e8-8353-01ba68003778', 78, 'initialized', 'month'),
       (77, '2024-07-13 13:01:52.268048', '5e06282d-8686-4ce5-82d9-c497e35e366a', 1, 'initialized', 'month'),
       (78, '2024-07-13 13:02:45.130761', '0a0d3aca-43c1-4b2f-83b8-9fc8eec24c10', 1, 'initialized', 'month'),
       (79, '2024-07-13 13:02:58.086266', '6797322e-120e-4b93-935d-5cf6f54b830a', 1, 'initialized', 'month'),
       (80, '2024-07-13 13:04:56.128520', '225e83ec-f75a-487d-946e-5262d535347c', 1, 'initialized', 'month'),
       (81, '2024-07-13 13:05:58.627728', 'd468344c-51d3-4c60-9e31-737123b11c98', 78, 'initialized', 'month'),
       (82, '2024-07-13 13:15:14.480253', '6b81a6fa-8f68-40e4-b461-39069ec7322f', 1, 'initialized', 'month'),
       (83, '2024-07-13 13:18:37.620701', '51228c04-c716-4331-a3d4-51860bab9dd6', 1, 'initialized', 'month'),
       (84, '2024-07-14 00:00:12.895945', 'b11a34bc-5cab-467e-be75-ff8b0ab7d5b5', 78, 'initialized', 'month'),
       (85, '2024-07-14 13:54:55.723142', '0262ab35-1d05-4388-8b52-03cca06bfd38', 1, 'initialized', 'month'),
       (86, '2024-08-13 09:30:01.817823', '5966316e-a317-41e8-9923-d7019a3690d1', 1, 'initialized', 'month'),
       (87, '2024-08-22 19:12:38.834315', '01702950-de41-4397-a87a-8979278627c8', 87, 'initialized', 'year'),
       (88, '2024-08-29 18:17:26.184998', '33ce02ab-ab2a-41a9-b7f4-5e9552757a51', 3, 'initialized', 'month'),
       (89, '2024-09-04 20:30:57.016917', '2010f3b1-7c89-4898-b5ce-5fd611d1af0a', 87, 'initialized', 'month'),
       (90, '2024-09-05 09:53:04.394724', '5e2a26d7-3e47-405b-83f9-60a548a410ac', 4, 'initialized', 'month');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase`
--

DROP TABLE IF EXISTS `purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `at` datetime(6) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UniquePurchasePerUserIdAndCourseId` (`user_id`,`course_id`),
  KEY `FK1p8k2mby007nu77e2jbtd34ux` (`course_id`),
  CONSTRAINT `FK1p8k2mby007nu77e2jbtd34ux` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FK86i0stm7cqsglqptdvjij1k3m` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase`
--

LOCK TABLES `purchase` WRITE;
/*!40000 ALTER TABLE `purchase` DISABLE KEYS */;
INSERT INTO `purchase`
VALUES (4, '2024-01-29 12:30:28.917968', 12, 79),
       (6, '2024-01-29 20:08:15.869895', 12, 4),
       (10, '2024-01-29 22:26:50.495188', 2, 79),
       (12, '2024-01-31 00:35:56.966047', 2, 4),
       (14, '2024-03-12 22:19:39.071088', 12, 3),
       (15, '2024-03-30 15:25:47.889000', 2, 3),
       (18, '2024-08-10 09:11:50.765463', 3, 1),
       (25, '2024-08-15 11:14:57.152167', 1, 85),
       (26, '2024-08-15 11:29:32.267453', 2, 85),
       (30, '2024-08-20 10:09:07.607272', 4, 84),
       (31, '2024-08-29 13:49:58.116818', 2, 86);
/*!40000 ALTER TABLE `purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reaction`
--

DROP TABLE IF EXISTS `reaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reaction` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` int DEFAULT NULL,
  `article_id` bigint DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9oyd6r2tf90uhlvrsd61d2ksc` (`article_id`),
  KEY `FK59wroowslb3nidkpd1gqa2smu` (`author_id`),
  CONSTRAINT `FK59wroowslb3nidkpd1gqa2smu` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK9oyd6r2tf90uhlvrsd61d2ksc` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reaction`
--

LOCK TABLES `reaction` WRITE;
/*!40000 ALTER TABLE `reaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `reaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reaction_article`
--

DROP TABLE IF EXISTS `reaction_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reaction_article` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` int DEFAULT NULL,
  `article_id` bigint DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKl7b483ooi8hv3g0otjekqjhlr` (`article_id`),
  KEY `FK20f05wjhfn8mw84lppyuv76cd` (`author_id`),
  CONSTRAINT `FK20f05wjhfn8mw84lppyuv76cd` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FKl7b483ooi8hv3g0otjekqjhlr` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reaction_article`
--

LOCK TABLES `reaction_article` WRITE;
/*!40000 ALTER TABLE `reaction_article` DISABLE KEYS */;
/*!40000 ALTER TABLE `reaction_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reaction_course`
--

DROP TABLE IF EXISTS `reaction_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reaction_course` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` int DEFAULT NULL,
  `author_id` bigint DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKes9wte4pme81f959jcwmfy3vk` (`author_id`),
  KEY `FKal1m2vblvouiri6njtc595hx0` (`course_id`),
  CONSTRAINT `FKal1m2vblvouiri6njtc595hx0` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`),
  CONSTRAINT `FKes9wte4pme81f959jcwmfy3vk` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reaction_course`
--

LOCK TABLES `reaction_course` WRITE;
/*!40000 ALTER TABLE `reaction_course` DISABLE KEYS */;
INSERT INTO `reaction_course` VALUES (1,3,1,2),(2,0,1,2),(3,2,1,2),(4,2,1,2),(5,2,1,2),(6,0,2,2),(7,0,3,16),(8,1,3,16),(9,2,3,16),(10,2,3,16),(11,3,3,16);
/*!40000 ALTER TABLE `reaction_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource`
--

DROP TABLE IF EXISTS `resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resource` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lesson_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKgpi9gjtubx2nwit2971txbqrm` (`lesson_id`),
  CONSTRAINT `FKgpi9gjtubx2nwit2971txbqrm` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource`
--

LOCK TABLES `resource` WRITE;
/*!40000 ALTER TABLE `resource` DISABLE KEYS */;
INSERT INTO `resource` VALUES (1,'zerofiltre','img','https://zerofiltre.tech',22),(2,'zerofiltre','img','https://zerofiltre.tech',6),(3,'zerofiltre','img','https://zerofiltre.tech',6),(9,'assigned_card.png','img','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/assigned_card.png',20),(20,'canceled-removebg.png','img','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/canceled-removebg.png',18),(22,'Screenshot 2023-04-24 at 5.44.52 PM.png','img','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202023-04-24%20at%205.44.52%20PM.png',18),(29,'BAR-TH-145 vA36-3 � compter du 12-10-2020.pdf','pdf','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/BAR-TH-145%20vA36-3%20%EF%BF%BD%20compter%20du%2012-10-2020.pdf',20),(32,'Modele-CV-chronologique.doc','doc','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Modele-CV-chronologique.doc',20),(33,'exple.txt','txt','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/exple.txt',20),(34,'Green Yellow - ISO DECO.zip','doc','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Green%20Yellow%20-%20ISO%20DECO.zip',20),(35,'GY AH BAR TH 112.docx','doc','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/GY%20AH%20BAR%20TH%20112.docx',20),(36,'related_course','course','https://dev.zerofiltre.tech/cours/12-simple-course-example',14),(37,'anada_course','course','https://dev.zerofiltre.tech/cours/12-simple-course-example',6),(38,'Pocket base chat Application','course','https://dev.zerofiltre.tech/cours/3-pocketbase-chat-app',6),(40,'Bien débuter','course','https://dev.zerofiltre.tech/cours/4-react-native',6);
/*!40000 ALTER TABLE `resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `chapter_explanations` varchar(255) DEFAULT NULL,
  `chapter_impressions`                          varchar(255) DEFAULT NULL,
  `chapter_satisfaction_score` int NOT NULL,
  `chapter_understanding_score` int NOT NULL,
  `favorite_learning_tool_of_the_chapter`        varchar(255) DEFAULT NULL,
  `improvement_suggestion`                       varchar(255) DEFAULT NULL,
  `overall_chapter_satisfaction` int NOT NULL,
  `reason_favorite_learning_tool_of_the_chapter` varchar(255) DEFAULT NULL,
  `recommend_course` varchar(255) DEFAULT NULL,
  `why_recommending_this_course`                 varchar(255) DEFAULT NULL,
  `chapter_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `course_id`                                    bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK61mbapjs1bba7ysadqv1k812q` (`chapter_id`),
  KEY `FKsdlcf7wf8l1k0m00gik0m6b1m` (`user_id`),
  CONSTRAINT `FK61mbapjs1bba7ysadqv1k812q` FOREIGN KEY (`chapter_id`) REFERENCES `chapter` (`id`),
  CONSTRAINT `FKsdlcf7wf8l1k0m00gik0m6b1m` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews`
VALUES (3, 'claire', 'La methodologie est claire et digeste', 3, 3, 'Vidéos explicatives',
        'Faites de contenu de qualité', 3, 'Videos très bien editees', 'true', 'Ce cours est extraordinaire', 3, 85, 0),
       (4, 'Extrêmement clair', 'gezzrfd', 5, 5,
        'Vidéos explicatives,Description détaillée,Exercices pratiques,Discussions interactives', 'fdsfsfds', 5,
        'dffdds', 'true', 'dsfsdfs', 8, 2, 0),
       (5, 'Extrêmement clair', 'awesome', 5, 5, 'other', 'new make awesome', 5, 'yes', 'true', 'awesome', 8, 84, 0),
       (6, 'Extrêmement clair', 'Les cours sur Zerofiltre sont vraiment', 5, 5,
        'Vidéos explicatives,Exercices pratiques,Description détaillée,Discussions interactives',
        'Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.', 5,
        'Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.', 'true',
        'Nous allons voir comment déployer un serveur de messagerie en 2 mins, puis le déployer.', 3, 2, 0),
       (7, 'Très clair, I ', 'La methodologie est claire et digeste', 3, 3, 'Vidéos explicatives,Exercices pratiques',
        'Faites davantage de contenu de qualité', 3, 'les videos sont bien editees', 'true', 'Ce cours est magnifique',
        6, 1, 2);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `image` varchar(255) DEFAULT NULL,
  `position` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `course_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoy8uc0ftpivwopwf5ptwdtar0` (`course_id`),
  CONSTRAINT `FKoy8uc0ftpivwopwf5ptwdtar0` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (3,'Le DDD (Domain-Driven Design) , en français, conception orientée par le métier.','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/googling2.jpg',2,'Le but d’un logiciel est de satisfaire au le besoin du client.',2),(4,NULL,'string 2',1,'title 2',1),(5,'Les sources de données les plus utilisées pour servir ce but sont les logs et les métriques. Dans cet article, nous parlerons de notre stack d\'exploitation des logs et en particulier la mise en place de cette dernière.\n\nNous avons utilisé les solutions de la stack elastic à savoir :\n\n    Elasticsearch pour la sauvegarde et recherche de données: la base de données ?\n\n    Beats , plus précisément filebeat pour la récolte de logs depuis les applications et l\'indexation en base ?\n\n    kibana pour la recherche graphique et la construction de tableaux ou dashboards : L\'interface graphique ?\n','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/0102_04_REST-Security-using-Java-and-Spring_Dan_illustration-dc6cfd3e7760ea9a8d75a8f9d0b93a77.png',1,'Pourquoi acheter ce cours ?',2),(7,'Les sources de données les plus utilisées pour servir ce but sont les logs et les métriques. Dans cet article, nous parlerons de notre stack d\'exploitation des logs et en particulier la mise en place de cette dernière.Nous avons utilisé les solutions de la stack elastic à savoir : Elasticsearch pour la sauvegarde et recherche de données: la base de données ?Beats ,plusprécisément filebeat pour la récolte de logs depuis les applications et l\'indexation en base ?kibana pour la recherche graphique et la construction de tableaux ou dashboards : L\'interface graphique ?','string 2',2,'title 2',1),(8,'Les sources de données les plus utilisées pour servir ce but sont les logs et les métriques. Dans cet article, nous parlerons de notre stack d\'exploitation des logs et en particulier la mise en place de cette dernière.Nous avons utilisé les solutions de la stack elastic à savoir : Elasticsearch pour la sauvegarde et recherche de données: la base de données ?Beats ,plusprécisément filebeat pour la récolte de logs depuis les applications et l\'indexation en base ?kibana pour la recherche graphique et la construction de tableaux ou dashboards : L\'interface graphique ?','string 2',4,'title 2',1),(9,'Les sources de données les plus utilisées pour servir ce but sont les logs et les métriques. Dans cet article, nous parlerons de notre stack d\'exploitation des logs et en particulier la mise en place de cette dernière.Nous avons utilisé les solutions de la stack elastic à savoir : Elasticsearch pour la sauvegarde et recherche de données: la base de données ?Beats ,plusprécisément filebeat pour la récolte de logs depuis les applications et l\'indexation en base ?kibana pour la recherche graphique et la construction de tableaux ou dashboards : L\'interface graphique ?','string 2',4,'title 2',1),(10,'Les sources de données les plus utilisées pour servir ce but sont les logs et les métriques. Dans cet article, nous parlerons de notre stack d\'exploitation des logs et en particulier la mise en place de cette dernière.Nous avons utilisé les solutions de la stack elastic à savoir : Elasticsearch pour la sauvegarde et recherche de données: la base de données ?Beats ,plusprécisément filebeat pour la récolte de logs depuis les applications et l\'indexation en base ?kibana pour la recherche graphique et la construction de tableaux ou dashboards : L\'interface graphique ?','string 2',5,'title 2',1),(11,'Les sources de données les plus utilisées pour servir ce but sont les logs et les métriques. Dans cet article, nous parlerons de notre stack d\'exploitation des logs et en particulier la mise en place de cette dernière.Nous avons utilisé les solutions de la stack elastic à savoir : Elasticsearch pour la sauvegarde et recherche de données: la base de données ?Beats ,plusprécisément filebeat pour la récolte de logs depuis les applications et l\'indexation en base ?kibana pour la recherche graphique et la construction de tableaux ou dashboards : L\'interface graphique ?','string 2',6,'title 2',1),(12,'string 2','new image',3,'title 16 updated',1),(13,'contenu section 1','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/assigned_card%20(1).png',1,'section 1',4),(14,'contenu section 2','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/canceled-removebg.png',3,'section 2',4),(15,'contenu section 3','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/plan.png',4,'section 3',4),(16,'contenu section 4','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/RENDERING-STRATEGY-FRONTEND.png',2,'section 4',4),(17,'Loerem ipsum dolor','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/wachatGPT.jpg',1,'Une section',12),(18,'Pull request example','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/pull_request_ibra.png',2,'Seconde section',12),(19,'bla bla bla','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202024-02-08%20at%2010.42.29%E2%80%AFAM.png',1,'Comment debuter?',14),(20,'bla bla bla bla','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202024-02-08%20at%2010.42.07%E2%80%AFAM.png',2,'Section 2',14),(21,'csdfdsfds sdfdsfds fsdfs','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202024-02-08%20at%2010.42.29%E2%80%AFAM.png',3,'dffg',14),(22,'fsdqfd gfdsgd gfdgdf gsdgdf','https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202024-02-08%20at%2010.42.43%E2%80%AFAM.png',4,'rthddsf',14);
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_link`
--

DROP TABLE IF EXISTS `social_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_link` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `link` varchar(255) DEFAULT NULL,
  `platform` int DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrvlxdrbu2moypj8ptxlajxewo` (`user_id`),
  CONSTRAINT `FKrvlxdrbu2moypj8ptxlajxewo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_link`
--

LOCK TABLES `social_link` WRITE;
/*!40000 ALTER TABLE `social_link` DISABLE KEYS */;
INSERT INTO `social_link`
VALUES (4, 'https://twitter.com/ericmbouwe', 1, 5),
       (5, 'https://github.com/EricMbouwe', 0, 5),
       (6, 'https://stackoverflow.com/users/5615357/philippe-simo', 3, 3),
       (7, 'https://stackoverflow.com/users/8821223/eric-mbouwe', 3, 50),
       (12, 'https://github.com/hotiaDiallo', 0, 57),
       (24, 'https://github.com/diallo95dev', 0, 81),
       (25, 'https://github.com/hotiaDiallo', 0, 83),
       (26, 'https://github.com/boristchague', 0, 87);
/*!40000 ALTER TABLE `social_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tag` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `color_code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_1wdpsed5kna2y38hnbgrnhi5b` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (1,'#000000','machinelearning'),(2,'#FFF','dev'),(3,'#FFFCDE','ops'),(4,'#FFFDKL','flutter'),(5,'#FFEDKL','debutant'),(6,'#FFEDKL','avance'),(7,'#FGEDKL','intermediaire'),(8,'#EEE','angular'),(9,'#EEEFFF','react'),(10,'#FFF0FF','java'),(11,'#FFF00F','spring');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `bio` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `is_active` bit(1) NOT NULL,
  `is_expired` bit(1) NOT NULL,
  `is_locked` bit(1) NOT NULL,
  `language` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `payment_customer_id` varchar(255) DEFAULT NULL,
  `payment_email` varchar(255) DEFAULT NULL,
  `plan` varchar(255) DEFAULT NULL,
  `profession` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `pseudo_name` varchar(255) DEFAULT NULL,
  `registered_on` datetime(6) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `login_from` varchar(255) DEFAULT NULL,
  `social_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_rklkth2j85u8vxyljdkva1xjv` (`pseudo_name`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user`
VALUES (1, NULL, 'katari@gmail.com', 'Obele obele', _binary '\0', _binary '\0', _binary '\0', 'en',
        '$2a$10$nSaLe2LVgWhT9CxuRzjBE.eo0jzfqw6pK57E9mG3YXk16KwFL9qJu', 'cus_NhZalBCm03WArO', 'obele@gmail.com',
        'BASIC', NULL, 'https://www.gravatar.com/avatar/899e369f8a5b8075fbf48e6aee97acf7?s=256&d=identicon&r=PG', NULL,
        '2023-02-15 07:39:30.690354', NULL, NULL, NULL),
       (2, NULL, 'ericmbouwe@gmail.com', 'eric mbouwe', _binary '\0', _binary '\0', _binary '\0', 'fr',
        '$2a$10$60Y45SEUGUL3cZN/b2pUd.jyl8U.moHfCFZ4gwVSjJZy5FNOT4F9i', 'cus_NkTpJ7EjlMB2D0', 'ericmbouwe@gmail.com',
        'PRO', NULL,
        'https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/Screenshot%202023-03-23%20at%209.27.05%20PM.png',
        NULL, '2023-02-16 07:24:56.919750', NULL, NULL, NULL),
       (3, NULL, 'philippesimo2@zerofiltre.tech', 'Philippe GUEMKAM Simo', _binary '', _binary '\0', _binary '\0',
        'fr', NULL, 'cus_Q8m92FJ53tRABd', 'philippesimo2@zerofiltre.tech', 'BASIC', 'https://zerofiltre.tech',
        'https://www.gravatar.com/avatar/30bb65fba474796ea67d26cfe0a501bc?s=256&d=identicon&r=PG&f=1', NULL,
        '2023-02-21 23:51:00.075986', NULL, 'STACKOVERFLOW', '5615357'),
       (4, NULL, 'philippech@gmail.com', 'Philippe GUEMKAM SIMO GITHUB', _binary '', _binary '\0', _binary '\0', 'fr',
        NULL, 'cus_NjgX8UceCuZ0oH', 'philippech@gmail.com', 'BASIC', NULL,
        'https://storage.gra.cloud.ovh.net/v1/AUTH_5159edadfde2413fb43128c1fef06fbf/zerofiltre-object-container/googling.jpg',
        NULL, '2023-02-22 01:24:06.880359', NULL, 'GITHUB', '13754910'),
       (5, NULL, 'dd', 'Eric Mbouwe', _binary '', _binary '\0', _binary '\0', 'fr', NULL, NULL, NULL, 'BASIC',
        'https://ericmbouwe.netlify.app/', 'https://avatars.githubusercontent.com/u/40503704?v=4', NULL,
        '2023-03-27 07:01:18.383240', NULL, 'GITHUB', '40503704'),
       (7, NULL, 'berakahdomains@gmail.com', 'berakah', _binary '\0', _binary '\0', _binary '\0', 'fr',
        '$2a$10$i11jmvnYYLshEpos.T4vbupMb27TE9uk1t1.I3w890BqL5ie/FIaC', 'cus_NoDj97oaYmFpgS',
        'berakahdomains@gmail.com', 'BASIC', NULL,
        'https://www.gravatar.com/avatar/b31386e48e1039c714148dba2da8a03a?s=256&d=identicon&r=PG', NULL,
        '2023-04-30 13:49:27.732031', NULL, NULL, NULL),
       (50, NULL, 'ericmbouwe10@gmail.com', 'Eric Mbouwe', _binary '', _binary '\0', _binary '\0', 'fr', NULL,
        'cus_Ny4RqTRk4duii6', 'ericmbouwe@gmail.com', 'BASIC', NULL, 'https://i.stack.imgur.com/zcAwU.jpg?s=256&g=1',
        NULL, '2023-05-23 08:55:40.510184', 'https://ericmbouwe.netlify.app', 'STACKOVERFLOW', '8821223'),
       (57, NULL, 'hotiaDiallo', 'Ibrahima DIALLO', _binary '', _binary '\0', _binary '\0', 'fr', NULL, NULL, NULL,
        'BASIC', NULL, 'https://avatars.githubusercontent.com/u/44684977?v=4', NULL, '2023-10-21 09:23:06.734978', '',
        'GITHUB', NULL),
       (78, NULL, 'ericmbouwe2@gmail.com', 'le consultant', _binary '\0', _binary '\0', _binary '\0', 'fr',
        '$2a$10$BceqADxpjvDIg1TAH6j8M.yVuwNf7mIM8lieYqk1GKL7Mc7KHL2nq', 'cus_PQLWNOlC3VwaGS', 'ericmbouwe2@gmail.com',
        'BASIC', NULL, 'https://www.gravatar.com/avatar/7a2cb06d426c09426c3d91bb7fc45e6f?s=256&d=identicon&r=PG', NULL,
        '2024-01-22 19:35:57.514822', NULL, NULL, NULL),
       (79, NULL, 'djientcheucarole@gmail.com', 'Djientcheu carole', _binary '\0', _binary '\0', _binary '\0', 'fr',
        '$2a$10$wTnKil0isRrbKjfaW8kc1OfRtI6xRqLVFDT4wAxO1aKNZXpoec3K6', 'cus_PSpdLrvgMEINeY',
        'djientcheucarole@gmail.com', 'PRO', NULL,
        'https://www.gravatar.com/avatar/801a229b96b28609b1c679951f89e851?s=256&d=identicon&r=PG', NULL,
        '2024-01-29 12:22:13.022100', NULL, NULL, NULL),
       (80, NULL, 'hotiadiallo95@gmail.com', 'Hotia DIALLO', _binary '\0', _binary '\0', _binary '\0', 'fr',
        '$2a$10$jobJ/2ssnP.w2iz8dr7uh.OJiQqZ8lwtpWPyv2.4Ki0x1NDKLI0Mi', NULL, NULL, 'BASIC', NULL,
        'https://www.gravatar.com/avatar/866d8187f9bd19dc7739eb34ff5c783e?s=256&d=identicon&r=PG', NULL,
        '2024-02-10 19:48:28.808570', NULL, NULL, NULL),
       (81, NULL, 'hotiadiallo95+dev@gmail.com', 'Diallo95dev', _binary '', _binary '\0', _binary '\0', 'fr', NULL,
        NULL, NULL, 'BASIC', NULL, 'https://avatars.githubusercontent.com/u/160408067?v=4', NULL,
        '2024-02-18 14:23:04.103800', '', 'GITHUB', '160408067'),
       (83, NULL, 'ibrahimahotia.diallo@gmail.com', 'Ibrahima DIALLO', _binary '', _binary '\0', _binary '\0', 'fr',
        NULL, NULL, NULL, 'BASIC', NULL, 'https://avatars.githubusercontent.com/u/44684977?v=4', NULL,
        '2024-03-08 22:22:59.215889', '', 'GITHUB', '44684977'),
       (84, NULL, 'abdoulazizdiallofouta@gmail.com', 'Diallo', _binary '', _binary '\0', _binary '\0', 'en',
        '$2a$10$8uv4ZiBkmXYucrceUk5CvOP0wZbT7MvzEuQvK5uyHbVuPPtX1H/b.', 'cus_QhDNxRJ8Wek3sy',
        'abdoulazizdiallofouta@gmail.com', 'BASIC', NULL,
        'https://www.gravatar.com/avatar/52ef57d569ebe3365a8a595415faf749?s=256&d=identicon&r=PG', NULL,
        '2024-07-08 17:19:50.456196', NULL, NULL, NULL),
       (85, NULL, 'abdoulazizdiallo1120@gmail.com', 'fellah', _binary '', _binary '\0', _binary '\0', 'en',
        '$2a$10$EOPk1hh1cR4Tr5ooEi3qRudGInemwr7YYBgqosHtX23tW6udKe3LK', 'cus_Qekk3ogf8Nrhkb',
        'abdoulazizdiallo1120@gmail.com', 'BASIC', NULL,
        'https://www.gravatar.com/avatar/4f399661f95baaa7fcd3ccca6ef40b13?s=256&d=identicon&r=PG', NULL,
        '2024-08-04 17:50:15.078776', NULL, NULL, NULL),
       (86, NULL, 'philip.pernet@free.fr', 'Philippe', _binary '', _binary '\0', _binary '\0', 'fr',
        '$2a$10$MOx.C/DF9/KCuD.eVRk61uNj1Prgk6EXYW5MT1lc/AwYq.Byy4OmW', 'cus_QecvB7F65eBSUf', 'philip.pernet@free.fr',
        'BASIC', NULL, 'https://www.gravatar.com/avatar/2be630c7000e2af0c32625d633dd0881?s=256&d=identicon&r=PG', NULL,
        '2024-08-10 17:56:24.229579', NULL, NULL, NULL),
       (87, NULL, 'boris.tchague@gmail.com', 'Boristchague', _binary '', _binary '\0', _binary '\0', 'fr', NULL,
        'cus_Qi6eKyuYD1dvji', 'boris.tchague@gmail.com', 'BASIC', NULL,
        'https://avatars.githubusercontent.com/u/45273505?v=4', NULL, '2024-08-22 19:11:15.973919', '', 'GITHUB',
        '45273505'),
       (88, NULL, 'tppe@free.fr', 'pp', _binary '\0', _binary '\0', _binary '\0', 'fr',
        '$2a$10$sAIuxbGQfrwu99I87mjaMO84s2PSF5iH0pL1ljz/tyHTAyvXCxOQ.', NULL, NULL, 'BASIC', NULL,
        'https://www.gravatar.com/avatar/c5f16eb8b8557cd51fd0beae38f581df?s=256&d=identicon&r=PG', NULL,
        '2024-08-26 07:22:50.216754', NULL, NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userjpa_roles`
--

DROP TABLE IF EXISTS `userjpa_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userjpa_roles` (
  `userjpa_id` bigint NOT NULL,
  `roles` varchar(255) NOT NULL,
  PRIMARY KEY (`userjpa_id`,`roles`),
  CONSTRAINT `FK246a4yg63n49t1ku9n24yq9a3` FOREIGN KEY (`userjpa_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userjpa_roles`
--

LOCK TABLES `userjpa_roles` WRITE;
/*!40000 ALTER TABLE `userjpa_roles` DISABLE KEYS */;
INSERT INTO `userjpa_roles`
VALUES (1, 'ROLE_ADMIN'),
       (2, 'ROLE_USER'),
       (3, 'ROLE_USER'),
       (4, 'ROLE_ADMIN'),
       (4, 'ROLE_USER'),
       (5, 'ROLE_USER'),
       (7, 'ROLE_USER'),
       (50, 'ROLE_USER'),
       (57, 'ROLE_USER'),
       (78, 'ROLE_USER'),
       (79, 'ROLE_USER'),
       (80, 'ROLE_USER'),
       (81, 'ROLE_USER'),
       (83, 'ROLE_USER'),
       (84, 'ROLE_ADMIN'),
       (85, 'ROLE_ADMIN'),
       (86, 'ROLE_USER'),
       (87, 'ROLE_USER'),
       (88, 'ROLE_USER');
/*!40000 ALTER TABLE `userjpa_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `verification_token`
--

DROP TABLE IF EXISTS `verification_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `verification_token` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `expiry_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `user_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKrdn0mss276m9jdobfhhn2qogw` (`user_id`),
  CONSTRAINT `FKrdn0mss276m9jdobfhhn2qogw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `verification_token`
--

LOCK TABLES `verification_token` WRITE;
/*!40000 ALTER TABLE `verification_token` DISABLE KEYS */;
INSERT INTO `verification_token`
VALUES (2, '2024-09-06 23:33:16.540982', '76fecbbe-3788-45c4-9922-caf9fd93f7cf', 2),
       (40, '2024-08-07 19:35:10.523207', '1239aa7b-f07c-4699-bdff-80493909a32a', 7),
       (48, '2024-06-26 16:52:27.771517', '31eb19e6-58af-4c3c-b2a4-dccbc7d95d3f', 3),
       (49, '2024-06-22 11:13:41.098915', '854cfbe8-f26f-44b5-b0fb-774c9cfcdbf9', 50),
       (50, '2024-08-07 19:35:11.648931', 'dc81c7c6-c9db-4657-81a9-981195ca1a01', 78),
       (51, '2024-08-07 19:35:12.849864', '520c1084-d5f3-42b8-aac2-63de7e3b3be6', 79),
       (53, '2024-08-07 19:35:14.004185', 'c54641a9-7d6b-4e3b-95ac-fe9546cb939f', 80),
       (56, '2024-09-11 16:29:42.134228', 'aef2682e-a305-452a-a7dd-d29c5bf96f7f', 1),
       (58, '2024-09-05 07:13:56.598417', '5a76b9b2-f6ff-410d-89ed-6a1a01c444cc', 84),
       (60, '2024-08-28 13:42:38.026077', 'ec447367-92c3-48eb-885e-f52c691141b9', 85),
       (62, '2024-09-12 07:56:16.765978', '5cbc8f0c-8fa2-4cef-9894-fdfe9496cd51', 86),
       (63, '2024-08-23 19:11:37.204497', 'dcf6ed91-db1b-40b7-887e-456900eff288', 87),
       (64, '2024-09-02 07:22:50.479766', 'd41eb13f-99b0-4817-9e2c-00d54efbe40a', 88);
/*!40000 ALTER TABLE `verification_token` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-05 12:07:02