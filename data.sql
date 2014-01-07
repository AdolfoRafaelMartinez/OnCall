-- MySQL dump 10.13  Distrib 5.1.52, for redhat-linux-gnu (i386)
--
-- Host: localhost    Database: oncall_development
-- ------------------------------------------------------
-- Server version	5.1.52

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `availabilities`
--

DROP TABLE IF EXISTS `availabilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `availabilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) DEFAULT NULL,
  `fromDay` date DEFAULT NULL,
  `toDay` date DEFAULT NULL,
  `fromTime` time DEFAULT NULL,
  `toTime` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `availabilities`
--

LOCK TABLES `availabilities` WRITE;
/*!40000 ALTER TABLE `availabilities` DISABLE KEYS */;
INSERT INTO `availabilities` VALUES (1,21,'2006-01-01','2016-12-31','00:00:00','23:59:00','2011-04-14 14:14:06','2011-04-14 17:19:54');
/*!40000 ALTER TABLE `availabilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (4,'SYB',16,'2011-04-08 19:55:12','2011-04-14 19:28:15'),(5,'TEC',23,'2011-04-08 19:56:38','2011-04-12 21:24:51'),(6,'POS',18,'2011-04-08 19:56:56','2011-04-08 21:17:26'),(7,'DBA',37,'2011-04-08 19:57:08','2011-04-08 21:17:38'),(8,'MF',35,'2011-04-08 19:57:17','2011-04-08 21:17:53');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offices`
--

DROP TABLE IF EXISTS `offices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sun` tinyint(1) DEFAULT NULL,
  `mon` tinyint(1) DEFAULT NULL,
  `tue` tinyint(1) DEFAULT NULL,
  `wed` tinyint(1) DEFAULT NULL,
  `thu` tinyint(1) DEFAULT NULL,
  `fri` tinyint(1) DEFAULT NULL,
  `sat` tinyint(1) DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notes` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offices`
--

LOCK TABLES `offices` WRITE;
/*!40000 ALTER TABLE `offices` DISABLE KEYS */;
INSERT INTO `offices` VALUES (1,'Bexar GM and N Title Serv',0,1,1,1,1,1,1,'?','6:00 pm','CST','(210) 223-7612, backup (210) 436-9210','',NULL,'2011-03-29 18:58:42'),(2,'Bexar Ksnow Title Serv TA311',0,0,0,0,0,0,1,'9:00 am','1:00 pm','?','(210) 436-4401','\r',NULL,NULL),(3,'Bexar MO',0,0,0,1,0,0,0,'?','7:00 pm','?','(210) 335-6523 thru 6527','\r',NULL,NULL),(4,'Bexar TA312',0,0,0,0,0,0,1,'9:00 am','1:00 pm','?','(210) 927-5100','\r',NULL,NULL),(5,'Bexar Texas Auto Title Serv TA700',0,1,1,1,1,1,1,'?','6:00 pm','?','(210) 438-8585','\r',NULL,NULL),(6,'Collin McKinney',0,0,0,0,1,0,0,'?','7:00 pm','?','(972) 547-5012','\r',NULL,NULL),(7,'Collin Plano',0,0,1,0,0,0,0,'?','7:00 pm','?','(972) 881-3018','\r',NULL,NULL),(8,'Denton Lewisville Substation',0,0,1,0,0,0,0,'?','6:30 pm','?','(972) 434-4733','\r',NULL,NULL),(9,'Denton MO',0,0,1,0,0,0,0,'?','6:30 pm','?','(940) 349-3504 or 3508','\r',NULL,NULL),(10,'El Paso Auto Reg & Title #3',0,1,1,1,1,1,1,'11:00 am','7:00 pm','CST','(915) 852-2500','\r',NULL,NULL),(11,'El Paso Auto Reg & Title #4',0,1,1,1,1,1,0,'10:00 am','7:00 pm','CST','(915) 313-9701','\r',NULL,NULL),(12,'El Paso Region',0,1,1,1,1,1,0,'?','6:30 pm','CST','(915) 591-7958','\r',NULL,NULL),(13,'El Paso Tri-Star',0,0,0,0,0,0,1,'9:00 am','1:00 pm','MST','(915) 772-8427','\r',NULL,NULL),(14,'El Paso Zaragosa',0,1,1,1,1,1,0,'?','7:00 pm','CST','(915) 859-1916','\r',NULL,NULL),(15,'Galveston Texas City Substation',0,1,1,1,1,1,0,'7:00 am','6:00 pm','?','(409) 770-5809','\r',NULL,NULL),(16,'Global 360',0,0,0,0,0,0,1,'8:00 am','2:00 pm','?','(210) 576-0546','\r',NULL,NULL),(17,'Hood Granbury',0,0,0,0,0,0,1,'9:00 am','1:00 pm','?','(817) 579-3295','1st Sat','0000-00-00 00:00:00',NULL),(18,'Hunt',0,1,1,1,1,0,0,'?','5:45 pm','?','Greenville (903) 408-4000 Quinian (903) 356-2830 Commerce (903) 886-3009','\r',NULL,NULL),(19,'Lipscomb',0,1,1,1,1,0,0,'?','6:00 pm','?','(806) 862-2911','\r',NULL,NULL),(20,'McLennan',0,0,1,0,0,0,0,'?','6:00 pm','?','(254) 757-5161, (254) 757-5136','\r',NULL,NULL),(21,'Oakhill Title Serv',0,0,0,0,0,0,1,'9:00 am','12:30 pm','?','(512) 892-5225','Occasionally Sun','0000-00-00 00:00:00',NULL),(22,'SA Auto Title Service TA402',0,0,0,0,0,0,1,'9:00 am','1:00 pm','?','(210) 680-4036','\r',NULL,NULL),(23,'Somervell Glen Rose',0,0,0,0,0,0,1,'8:00 am','12:00 pm','?','(254) 897-2419','1st Sat','0000-00-00 00:00:00',NULL),(24,'Tisdale Auto Title Serv',0,0,0,0,0,0,1,'9:30 am','1:00 pm','?','(210) 658-4238','2nd & 3rd Sat. Trial basis.','0000-00-00 00:00:00',NULL),(25,'Wilson County Grizzly Auto Title',0,0,0,0,0,0,1,'?','?','?','(830) 779-2686 Mike or April','\r',NULL,NULL);
/*!40000 ALTER TABLE `offices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nonwork` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (3,'Henry Holguin','(512) 302-2229','(830) 609-2505 Home, (210) 663-3438 Cell',5,'2011-04-08 19:59:30','2011-04-11 13:46:31'),(4,'Marshall Ruzicka','(512) 302-2239','(512) 345-8792 Home, (512) 422-1736 Cell',5,'2011-04-08 20:00:35','2011-04-08 20:00:44'),(5,'Bob Brown','(512) 467-3767','(512) 891-9854 Home, (512) 567-8009 Cell',6,'2011-04-08 20:01:18','2011-04-08 20:01:27'),(6,'Bill Hargrove','(512) 467-5978','(512) 459-4910 Home',6,'2011-04-08 20:02:32','2011-04-14 14:26:45'),(7,'Debbie Bates','(512) 465-3088','(512) 695-3176 Home, (512) 658-2465 Cell',4,'2011-04-08 20:03:15','2011-04-08 20:03:26'),(8,'Magnolia Cavanaugh','(512) 302-2207','(512) 905-2757 Home, (512) 658-2465 Cell',NULL,'2011-04-08 20:04:31','2011-04-08 20:04:43'),(9,'Diane Counts','(512) 302-2209','(512) 454-0211 Home, (512) 658-2465 Cell',4,'2011-04-08 20:05:25','2011-04-08 20:05:34'),(10,'Jeff Foster','(512) 302-2270','(512) 343-2209 Home, (512) 658-2465 Cell',4,'2011-04-08 20:06:08','2011-04-08 20:06:16'),(11,'Gloria Guerrero','(512) 302-2212','(512) 567-1397 Home, (512) 658-2465 Cell',4,'2011-04-08 20:11:04','2011-04-08 20:11:18'),(12,'Darlene Hancock','(512) 302-2273','(512) 698-9165 Home, (512) 658-2465 Cell',4,'2011-04-08 20:12:18','2011-04-08 20:12:28'),(13,'Lisa Mendoza','(512) 302-2206','(512) 925-7344 Home, (512) 658-2465 Cell',4,'2011-04-08 20:13:26','2011-04-08 20:13:36'),(14,'Guy Montgomery','(512) 302-2208','(512) 423-8173 Home, (512) 658-2465 Cell',4,'2011-04-08 20:57:24','2011-04-08 20:57:24'),(15,'Mark Payne','(512) 302-2271','(512) 626-6950 Home, (512) 658-2465 Cell',4,'2011-04-08 20:58:01','2011-04-08 20:58:01'),(16,'Laurie Pershin','(512) 302-2210','(512) 255-5831 Home, (512) 658-2465 Cell',4,'2011-04-08 20:58:35','2011-04-08 20:58:35'),(17,'Kathy Harrell','(512) 467-5966','(512) 329-8836 Home, (512) 751-6021 Cell',6,'2011-04-08 20:59:16','2011-04-08 20:59:16'),(18,'Todd Pederson','(512) 467-5964','(512) 791-0597 Cell',6,'2011-04-08 20:59:59','2011-04-08 20:59:59'),(19,'Mark Reyes','(512) 374-5310','(512) 441-2045 Home, (512) 791-0441 Cell',6,'2011-04-08 21:00:39','2011-04-08 21:00:39'),(20,'Ray Rowehl','(512) 465-7501','(512) 750-9569 Cell, (512) 739-0861 Blackberry',6,'2011-04-08 21:01:25','2011-04-08 21:01:25'),(21,'Robin Taylor','(512) 467-5965','(830) 693-4425 Home, (830) 798-7708 Cell',6,'2011-04-08 21:02:11','2011-04-08 21:02:11'),(22,'Jim Zwiener','(512) 467-5988','(512) 347-7101 Home, (512) 771-8510 Cell',6,'2011-04-08 21:03:34','2011-04-08 21:03:34'),(23,'Donald Sliva','(512) 465-7407','(512) 722-3632 Home, (512) 470-1634 Cell',5,'2011-04-08 21:04:14','2011-04-08 21:04:14'),(24,'Rebecca Mason','(512) 467-5954','(512) 751-4463 Cell',5,'2011-04-08 21:04:59','2011-04-08 21:04:59'),(25,'Jonathan Catron','(512) 302-2237','(512) 565-8653 Cell',5,'2011-04-08 21:05:39','2011-04-08 21:05:39'),(27,'Laura Dennis','(512) 467-5967','(512) 454-4096 Home, (512) 203-7423 Cell',8,'2011-04-08 21:07:46','2011-04-12 19:02:46'),(28,'David Wigington','(512) 465-3060','(512) 264-0822 Home, (512) 659-6847 Cell',8,'2011-04-08 21:08:19','2011-04-12 19:02:01'),(29,'Soheila Thum','(512) 465-3071','(512) 346-9500 Home, (512) 825-9500 Cell',8,'2011-04-08 21:08:50','2011-04-12 19:03:14'),(30,'Kevin Dickson','(512) 465-3679','(512) 968-5836 Cell',8,'2011-04-08 21:09:22','2011-04-12 19:02:30'),(31,'Dave Childers','(512) 302-2323','(512) 296-6107 Home, (512) 350-5248 Cell',8,'2011-04-08 21:10:01','2011-04-12 19:01:31'),(32,'Fred Vogiatzis','(512) 467-3849','(210) 875-7497 Cell',8,'2011-04-08 21:10:39','2011-04-12 19:02:16'),(33,'David Flathmann','(512) 467-5973','(512) 336-1403 Home, (512) 925-1928 Cell',8,'2011-04-08 21:11:21','2011-04-12 19:01:47'),(34,'Reuben Patschke','(512) 467-5982','(512) 759-9581 Home, (512) 791-3918 Cell',8,'2011-04-08 21:12:18','2011-04-12 19:03:01'),(35,'Chris Kanute','(512) 467-5981','(512) 246-9407 Home, (512) 422-7315 Cell',8,'2011-04-08 21:12:57','2011-04-12 19:01:12'),(36,'Jeff Gardner','(512) 302-2203','(512) 302-3702 Home, (512) 849-3680 Beeper',7,'2011-04-08 21:14:02','2011-04-08 21:14:02'),(37,'Cindy Gendron','(512) 465-7760','(512) 295-2275 Home, (512) 606-6062 Beeper',7,'2011-04-08 21:14:39','2011-04-08 21:14:39'),(39,'Dwight Miles','512-467-3948','512-905-9935',NULL,'2011-04-12 21:20:23','2011-04-12 21:20:23');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110408185049'),('20110408185157'),('20110411151404'),('20110413140623'),('20110414135844'),('20110414140118');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-04-14 14:41:06
