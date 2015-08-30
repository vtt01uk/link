-- MySQL dump 10.13  Distrib 5.6.24, for osx10.8 (x86_64)
--
-- Host: 127.0.0.1    Database: linkdb
-- ------------------------------------------------------
-- Server version	5.5.42

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
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `coordinates` varchar(45) DEFAULT NULL,
  `number_of_attendees` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `memberships`
--

DROP TABLE IF EXISTS `memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `useridfk` (`user_id`),
  KEY `teamidfk` (`team_id`),
  CONSTRAINT `useridfk` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `teamidfk` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `memberships`
--

LOCK TABLES `memberships` WRITE;
/*!40000 ALTER TABLE `memberships` DISABLE KEYS */;
/*!40000 ALTER TABLE `memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_messages`
--

DROP TABLE IF EXISTS `msg_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thread_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `priority` int(2) NOT NULL DEFAULT '0',
  `sender_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2056 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_messages`
--

LOCK TABLES `msg_messages` WRITE;
/*!40000 ALTER TABLE `msg_messages` DISABLE KEYS */;
INSERT INTO `msg_messages` VALUES (1047,23,'arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida',1,15,'2015-07-13 08:15:04','2014-11-23 17:47:32'),(1051,24,'pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna.',1,4,'2015-07-05 20:19:56','2015-06-09 05:45:23'),(1059,24,'Phasellus at augue id ante dictum cursus. Nunc mauris elit,',1,10,'2015-07-14 23:48:46','2015-06-10 10:33:58'),(1086,24,'est ac mattis semper, dui lectus rutrum urna, nec luctus',1,10,'2015-07-22 04:26:02','2014-12-06 17:38:43'),(1087,23,'molestie dapibus ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare',1,1,'2015-07-12 09:56:56','2014-11-24 10:37:38'),(1098,23,'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula',1,13,'2015-07-26 19:18:13','2014-12-14 22:54:19'),(1108,24,'mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam',1,11,'2015-07-07 18:14:58','2015-04-20 14:24:04'),(1115,23,'elit, a feugiat tellus lorem eu metus. In lorem. Donec',1,3,'2015-07-29 21:54:03','2014-11-20 14:09:51'),(1119,23,'eu, odio. Phasellus at augue id ante dictum cursus. Nunc',1,1,'2015-07-04 19:54:12','2015-01-29 12:37:08'),(1134,23,'nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras',1,15,'2015-07-25 03:17:49','2014-11-29 16:52:19'),(1140,23,'sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci',1,4,'2015-07-17 01:01:20','2015-02-14 16:24:52'),(1144,24,'convallis, ante lectus convallis est, vitae sodales nisi magna sed',1,13,'2015-07-25 13:01:53','2014-11-21 20:54:52'),(1145,24,'ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget',1,1,'2015-07-30 17:52:31','2014-09-12 07:37:09'),(1150,23,'interdum enim non nisi. Aenean eget metus. In nec orci.',1,11,'2015-07-26 05:20:54','2015-06-15 08:27:44'),(1160,24,'gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet',1,10,'2015-07-20 21:11:54','2014-11-30 00:20:09'),(1191,24,'aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper.',1,3,'2015-07-26 07:04:56','2015-03-06 12:03:36'),(1193,24,'eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra',1,8,'2015-07-26 12:17:36','2014-10-07 22:28:59'),(1244,23,'Mauris blandit enim consequat purus. Maecenas libero est, congue a,',1,7,'2015-07-14 01:53:57','2015-05-15 23:41:38'),(1272,23,'In at pede. Cras vulputate velit eu sem. Pellentesque ut',1,10,'2015-07-14 17:49:02','2015-01-12 06:28:16'),(1304,24,'tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse',1,3,'2015-07-25 14:37:56','2014-11-14 21:14:36'),(1312,23,'diam vel arcu. Curabitur ut odio vel est tempor bibendum.',1,5,'2015-07-16 01:11:20','2015-03-27 09:39:00'),(1317,24,'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper',1,10,'2015-07-15 11:39:04','2015-04-01 11:37:33'),(1348,24,'Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam',1,5,'2015-07-30 20:49:05','2014-09-23 05:35:15'),(1367,24,'Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie',1,2,'2015-07-28 00:09:11','2014-12-17 03:15:37'),(1376,24,'facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo',1,2,'2015-07-11 03:31:32','2015-02-14 09:31:32'),(1384,24,'Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum',1,1,'2015-07-13 13:46:22','2014-11-11 14:06:23'),(1403,24,'posuere at, velit. Cras lorem lorem, luctus ut, pellentesque eget,',1,5,'2015-07-22 18:19:47','2015-05-16 11:43:08'),(1421,23,'lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis',1,7,'2015-07-07 19:20:20','2015-02-07 17:47:49'),(1430,24,'pede et risus. Quisque libero lacus, varius et, euismod et,',1,3,'2015-07-09 18:58:29','2014-11-09 05:43:33'),(1438,23,'luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi',1,5,'2015-07-12 17:52:45','2015-04-16 01:58:33'),(1442,24,'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu',1,2,'2015-07-13 05:27:33','2014-11-19 03:10:42'),(1463,23,'Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla.',1,10,'2015-07-30 11:30:58','2015-05-11 07:29:08'),(1471,23,'Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed',1,13,'2015-07-02 10:36:50','2015-03-15 20:26:10'),(1473,24,'Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis',1,8,'2015-07-07 22:27:02','2015-01-29 10:38:28'),(1511,23,'in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer',1,14,'2015-07-18 00:45:11','2015-01-21 03:45:13'),(1526,24,'consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate',1,4,'2015-07-31 01:27:02','2014-09-14 16:35:35'),(1531,23,'et nunc. Quisque ornare tortor at risus. Nunc ac sem',1,13,'2015-07-25 08:19:07','2015-05-15 00:12:53'),(1534,24,'nunc nulla vulputate dui, nec tempus mauris erat eget ipsum.',1,4,'2015-08-01 05:40:56','2015-05-30 13:36:07'),(1546,23,'in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum',1,1,'2015-07-16 12:24:29','2015-06-08 04:57:40'),(1556,24,'arcu iaculis enim, sit amet ornare lectus justo eu arcu.',1,2,'2015-07-19 18:42:39','2015-06-03 00:22:33'),(1572,24,'nec mauris blandit mattis. Cras eget nisi dictum augue malesuada',1,10,'2015-07-15 09:49:49','2014-10-24 13:12:56'),(1576,23,'dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In',1,10,'2015-07-26 14:42:02','2014-11-25 18:49:44'),(1579,23,'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies',1,3,'2015-07-17 16:13:48','2015-03-24 11:59:39'),(1611,24,'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed',1,7,'2015-07-16 00:55:37','2014-11-21 04:51:08'),(1615,23,'Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed',1,11,'2015-07-06 05:35:08','2014-10-12 20:54:24'),(1617,24,'magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem',1,5,'2015-07-09 08:18:30','2015-04-06 20:07:49'),(1637,23,'vel est tempor bibendum. Donec felis orci, adipiscing non, luctus',1,15,'2015-07-23 01:19:49','2015-05-17 10:35:06'),(1659,24,'tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum',1,8,'2015-07-05 23:33:27','2014-10-26 18:10:16'),(1661,23,'aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non',1,12,'2015-07-04 07:10:26','2015-05-21 07:53:01'),(1662,24,'neque. In ornare sagittis felis. Donec tempor, est ac mattis',1,10,'2015-07-03 18:12:47','2014-09-29 04:19:29'),(1678,23,'a neque. Nullam ut nisi a odio semper cursus. Integer',1,14,'2015-07-29 10:32:12','2014-11-08 16:01:48'),(1681,24,'magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac',1,11,'2015-08-01 00:04:57','2014-09-09 21:13:26'),(1717,24,'malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna.',1,8,'2015-07-31 01:55:58','2015-01-19 04:33:32'),(1724,23,'primis in faucibus orci luctus et ultrices posuere cubilia Curae',1,12,'2015-07-30 08:48:00','2014-10-13 07:34:58'),(1731,24,'facilisis, magna tellus faucibus leo, in lobortis tellus justo sit',1,1,'2015-07-16 09:45:44','2015-05-25 20:00:31'),(1786,23,'augue, eu tempor erat neque non quam. Pellentesque habitant morbi',1,7,'2015-07-14 13:01:46','2014-11-11 12:43:37'),(1793,23,'et nunc. Quisque ornare tortor at risus. Nunc ac sem',1,1,'2015-07-01 22:32:46','2015-06-09 21:44:39'),(1806,23,'ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor.',1,5,'2015-07-20 22:01:37','2015-04-06 05:09:37'),(1809,24,'condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus',1,7,'2015-07-30 13:06:25','2015-04-16 17:40:12'),(1842,23,'dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc',1,7,'2015-07-16 02:18:57','2015-01-31 12:45:11'),(1856,23,'purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula',1,11,'2015-07-31 17:47:40','2015-03-16 07:31:49'),(1866,24,'elit erat vitae risus. Duis a mi fringilla mi lacinia',1,12,'2015-07-26 14:31:19','2015-01-24 05:35:30'),(1892,24,'sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus',1,3,'2015-07-10 13:40:26','2014-10-18 22:43:54'),(1907,23,'justo sit amet nulla. Donec non justo. Proin non massa',1,13,'2015-07-25 06:02:51','2015-04-16 19:03:00'),(1935,24,'mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus.',1,5,'2015-07-24 15:07:50','2014-11-19 08:29:06'),(1950,23,'Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu.',1,11,'2015-07-16 01:15:51','2015-02-13 17:46:48'),(1974,24,'vel arcu. Curabitur ut odio vel est tempor bibendum. Donec',1,5,'2015-07-04 23:14:22','2014-10-11 07:56:34'),(1975,23,'ante dictum mi, ac mattis velit justo nec ante. Maecenas',1,6,'2015-07-31 11:31:29','2015-05-04 17:43:53'),(2003,24,'risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a',1,3,'2015-07-19 10:34:05','2015-05-18 03:37:09'),(2053,81,'Yay, createdat works now',1,1,'2015-08-30 05:22:00','2015-08-29 10:22:00'),(2054,82,'Hooray',2,1,'2015-08-30 05:23:06','2015-08-29 10:23:06'),(2055,83,'I\'m Ani!',2,2,'2015-08-30 07:38:14','2015-08-30 12:38:14');
/*!40000 ALTER TABLE `msg_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_participants`
--

DROP TABLE IF EXISTS `msg_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_participants` (
  `user_id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`thread_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_participants`
--

LOCK TABLES `msg_participants` WRITE;
/*!40000 ALTER TABLE `msg_participants` DISABLE KEYS */;
INSERT INTO `msg_participants` VALUES (1,1,'2015-08-30 05:10:37'),(1,23,'2015-08-29 20:24:33'),(1,81,'2015-08-30 05:22:00'),(1,82,'2015-08-30 05:23:06'),(1,83,'2015-08-30 07:38:14'),(2,1,'2015-08-30 05:10:37'),(2,23,'2015-08-29 20:24:33'),(2,81,'2015-08-30 05:22:00'),(2,82,'2015-08-30 05:23:06'),(2,83,'2015-08-30 07:38:14'),(3,1,'2015-08-30 05:10:37'),(3,81,'2015-08-30 05:22:00'),(3,82,'2015-08-30 05:23:06'),(3,83,'2015-08-30 07:38:14'),(4,23,'2014-09-19 17:23:00'),(4,81,'2015-08-30 05:22:00'),(4,82,'2015-08-30 05:23:06'),(4,83,'2015-08-30 07:38:14'),(5,81,'2015-08-30 05:22:00'),(5,83,'2015-08-30 07:38:14'),(6,23,'2015-04-08 10:35:17'),(6,81,'2015-08-30 05:22:00'),(6,83,'2015-08-30 07:38:14'),(7,23,'2015-01-28 12:17:57'),(7,81,'2015-08-30 05:22:00'),(7,83,'2015-08-30 07:38:14');
/*!40000 ALTER TABLE `msg_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_status`
--

DROP TABLE IF EXISTS `msg_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_status` (
  `message_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`message_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_status`
--

LOCK TABLES `msg_status` WRITE;
/*!40000 ALTER TABLE `msg_status` DISABLE KEYS */;
INSERT INTO `msg_status` VALUES (6,1,1),(6,2,0),(7,1,1),(7,2,0),(8,1,1),(8,2,0),(9,1,1),(9,2,0),(10,1,1),(10,2,0),(12,1,1),(12,2,0),(13,1,1),(13,2,0),(14,1,1),(14,2,0),(15,1,1),(15,2,0),(16,1,1),(16,2,0),(17,1,1),(17,2,0),(18,1,1),(18,2,0),(19,1,1),(19,2,0),(20,1,1),(20,2,0),(21,1,1),(21,2,0),(23,2,0),(24,1,1),(24,2,0),(25,1,1),(25,2,0),(26,1,1),(26,2,0),(27,1,1),(27,2,0),(28,1,1),(28,2,0),(29,1,0),(29,2,1),(30,1,0),(30,2,1),(31,1,0),(31,2,1),(32,1,0),(32,2,1),(33,1,0),(33,2,1),(34,1,1),(34,2,0),(2037,1,1),(2037,2,0),(2037,3,0),(2037,4,0),(2038,1,1),(2038,2,0),(2038,3,0),(2038,4,0),(2046,1,1),(2046,2,0),(2046,3,0),(2048,1,1),(2048,2,0),(2048,3,0),(2049,1,1),(2049,2,0),(2049,3,0),(2051,1,1),(2051,2,0),(2051,3,0),(2052,1,1),(2052,2,0),(2052,3,0),(2053,1,1),(2053,2,0),(2053,3,0),(2053,4,0),(2053,5,0),(2053,6,0),(2053,7,0),(2054,1,1),(2054,2,0),(2054,3,0),(2054,4,0),(2055,1,0),(2055,2,1),(2055,3,0),(2055,4,0),(2055,5,0),(2055,6,0),(2055,7,0);
/*!40000 ALTER TABLE `msg_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `msg_threads`
--

DROP TABLE IF EXISTS `msg_threads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msg_threads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` text,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `msg_threads`
--

LOCK TABLES `msg_threads` WRITE;
/*!40000 ALTER TABLE `msg_threads` DISABLE KEYS */;
INSERT INTO `msg_threads` VALUES (1,'First Message','2015-08-29 08:22:00'),(23,'What\'s going on at LINK?','2015-08-29 09:22:00'),(81,'This is a test yall','2015-08-29 10:22:00'),(82,'New Message','2015-08-29 10:23:06'),(83,'Hi Everybody','2015-08-30 12:38:14');
/*!40000 ALTER TABLE `msg_threads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `message` text,
  `approve_user_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requests`
--

LOCK TABLES `requests` WRITE;
/*!40000 ALTER TABLE `requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rescues`
--

DROP TABLE IF EXISTS `rescues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rescues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) DEFAULT NULL,
  `amount_raised` float(10,2) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rescues`
--

LOCK TABLES `rescues` WRITE;
/*!40000 ALTER TABLE `rescues` DISABLE KEYS */;
/*!40000 ALTER TABLE `rescues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statistics`
--

DROP TABLE IF EXISTS `statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL,
  `donation_amount` float(10,2) DEFAULT NULL,
  `number_of_attendees` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `team_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statistics`
--

LOCK TABLES `statistics` WRITE;
/*!40000 ALTER TABLE `statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `logo` blob,
  `description` text,
  `leader_user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=674 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'UT Austin','Austin, TX',NULL,'Hook \'em horns',3,'0000-00-00 00:00:00',NULL),(2,'UCSD','La Jolla, CA',NULL,'Tritons',NULL,'0000-00-00 00:00:00',NULL),(3,'Link HQ','Torrance, CA',NULL,'Liberty For All',NULL,'0000-00-00 00:00:00',NULL),(4,'ACS Cobham International School - Rescue Team','Cobham, England',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(5,'Adolfo Camarillo High School-Rescue Team','Camarillo, California',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(6,'Alexander Hamilton High School - Rescue Team','Los Angeles, California',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(7,'Amador Valley High School -Rescue Team','Pleasanton, California',NULL,NULL,NULL,NULL,NULL),(8,'American Community School-Rescue Team','Abu Dhabi, Abu Dhabi',NULL,NULL,NULL,NULL,NULL),(9,'Amherst College - Rescue Team','Amherst, Massachusetts',NULL,NULL,NULL,NULL,NULL),(10,'Anchorage Community-Rescue Team','Anchorage, Alaska',NULL,NULL,NULL,NULL,NULL),(11,'Angers Community - Rescue Team','Angers, Pays de la Loire',NULL,NULL,NULL,NULL,NULL),(12,'Archbishop Mitty High School-Rescue Team','San Jose, California',NULL,NULL,NULL,NULL,NULL),(13,'Arnold O. Beckman High School - Rescue Team','Irvine, California',NULL,NULL,NULL,NULL,NULL),(14,'Ashland High School (OR) - Rescue Team','Ashland, Oregon',NULL,NULL,NULL,NULL,NULL),(15,'Athens Community - Rescue Team','Athens, Georgia',NULL,NULL,NULL,NULL,NULL),(16,'Auckland International College-Rescue Team','Auckland, Auckland',NULL,NULL,NULL,NULL,NULL),(17,'Austin College - Rescue Team','Sherman, Texas',NULL,NULL,NULL,NULL,NULL),(18,'Austin Community-Rescue Team','Austin, Texas',NULL,NULL,NULL,NULL,NULL),(19,'Avon High School (CT)-Rescue Team','Avon, Connecticut',NULL,NULL,NULL,NULL,NULL),(20,'Bakersfield High School-Rescue Team','Bakersfield, California',NULL,NULL,NULL,NULL,NULL),(21,'Ball State University - Rescue Team','Muncie, Indiana',NULL,NULL,NULL,NULL,NULL),(22,'Belmont University-Rescue Team','Nashville, Tennessee',NULL,NULL,NULL,NULL,NULL),(23,'Bergen County Academies - Rescue Team','Hackensack, New Jersey',NULL,NULL,NULL,NULL,NULL),(24,'Binghamton University - Rescue Team','Binghamton, New York',NULL,NULL,NULL,NULL,NULL),(25,'Boise State University-Rescue Team','Boise, Idaho',NULL,NULL,NULL,NULL,NULL),(26,'Bonita Vista High School - Rescue Team','Chula Vista, California',NULL,NULL,NULL,NULL,NULL),(27,'Boston College-Rescue Team','Boston, Massachusetts',NULL,NULL,NULL,NULL,NULL),(28,'Boston Conservatory - Rescue Team','Boston, Massachusetts',NULL,NULL,NULL,NULL,NULL),(29,'Boston Latin School - Rescue Team','Boston, Massachusetts',NULL,NULL,NULL,NULL,NULL),(30,'Boston University - Rescue Team','Boston, Massachusetts',NULL,NULL,NULL,NULL,NULL),(31,'Bow Valley High School - Rescue Team','Cochrane, Alberta',NULL,NULL,NULL,NULL,NULL),(32,'Brandeis University-Rescue Team','Waltham, Massachusetts',NULL,NULL,NULL,NULL,NULL),(33,'Bristol Community-Rescue Team','Bristol, England',NULL,NULL,NULL,NULL,NULL),(34,'Brown University - Rescue Team','Providence, Rhode Island',NULL,NULL,NULL,NULL,NULL),(35,'Bryn Mawr College-Rescue Team','Bryn Mawr, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(36,'Buena High School (CA)-Rescue Team','San Buenaventura (Ventura), California',NULL,NULL,NULL,NULL,NULL),(37,'Buena High School-Rescue Team','Sierra Vista, Arizona',NULL,NULL,NULL,NULL,NULL),(38,'California State University Northridge-Rescue Team','Northridge, California',NULL,NULL,NULL,NULL,NULL),(39,'California State University, Fresno-Rescue Team','Fresno, California',NULL,NULL,NULL,NULL,NULL),(40,'Calvin College - Rescue Team','Grand Rapids, Michigan',NULL,NULL,NULL,NULL,NULL),(41,'Cambridge (UK) Community-Rescue Team','Cambridge, England',NULL,NULL,NULL,NULL,NULL),(42,'Carleton College-Rescue Team','Northfield, Minnesota',NULL,NULL,NULL,NULL,NULL),(43,'Carlsbad High School-Rescue Team','Carlsbad, California',NULL,NULL,NULL,NULL,NULL),(44,'Carnegie Mellon University - Rescue Team','Pittsburgh, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(45,'Catlin Gabel School-Semi-Rescue Team','Portland, Oregon',NULL,NULL,NULL,NULL,NULL),(46,'Centennial High School (Corona) - Rescue Team','Corona, California',NULL,NULL,NULL,NULL,NULL),(47,'Centennial High School (MD)-Rescue Team','Ellicott City, Maryland',NULL,NULL,NULL,NULL,NULL),(48,'Central High School - Rescue Team','Springfield, Missouri',NULL,NULL,NULL,NULL,NULL),(49,'Central Michigan University-Rescue Team','Mount Pleasant, Michigan',NULL,NULL,NULL,NULL,NULL),(50,'Centreville High School- Rescue Team','Centreville, Virginia',NULL,NULL,NULL,NULL,NULL),(51,'Chantilly High School-Rescue Team','Chantilly, Virginia',NULL,NULL,NULL,NULL,NULL),(52,'Charlotte Catholic High School - Rescue Team','Charlotte, North Carolina',NULL,NULL,NULL,NULL,NULL),(53,'Chinese International School-Rescue Team','North Point, Hong Kong',NULL,NULL,NULL,NULL,NULL),(54,'Choate Rosemary Hall - Rescue Team','Wallingford, Connecticut',NULL,NULL,NULL,NULL,NULL),(55,'Christian Center Philadelphia-Rescue Team','Tuxtla Gutierrez, Chiapas',NULL,NULL,NULL,NULL,NULL),(56,'Cincinnati Community-Rescue Team','Cincinnati, Ohio',NULL,NULL,NULL,NULL,NULL),(57,'Claremont McKenna College - Rescue Team','Claremont, California',NULL,NULL,NULL,NULL,NULL),(58,'Clark University - Rescue Team','Worcester, Massachusetts',NULL,NULL,NULL,NULL,NULL),(59,'Claudia Taylor \"Lady Bird\" Johnson High School-Rescue Team','San Antonio, Texas',NULL,NULL,NULL,NULL,NULL),(60,'Cleveland High School (Reseda)- Rescue Team','Reseda, California',NULL,NULL,NULL,NULL,NULL),(61,'Coe College - Rescue Team','Cedar Rapids, Iowa',NULL,NULL,NULL,NULL,NULL),(62,'Colonel Gray High School-Rescue Team','Charlottetown, Prince Edward Island',NULL,NULL,NULL,NULL,NULL),(63,'Columbia University - Rescue Team','New York City, New York',NULL,NULL,NULL,NULL,NULL),(64,'Conestoga High School-Rescue Team','Berwyn, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(65,'Confidential Information - Do Not Distribute',',',NULL,NULL,NULL,NULL,NULL),(66,'Cooper City High School-Semi Rescue Team','Cooper City, Florida',NULL,NULL,NULL,NULL,NULL),(67,'Copyright (c) 2000-2015 salesforce.com, inc. All rights reserved.',',',NULL,NULL,NULL,NULL,NULL),(68,'Crest High School-Rescue Team','Shelby, North Carolina',NULL,NULL,NULL,NULL,NULL),(69,'Cross County High School - Rescue Team','Cherry Valley, Arkansas',NULL,NULL,NULL,NULL,NULL),(70,'CUNY-City College of New York-Rescue Team','New York, New York',NULL,NULL,NULL,NULL,NULL),(71,'Cypress Bay High School - Rescue Team','Weston, Florida',NULL,NULL,NULL,NULL,NULL),(72,'Cypress High School-Rescue Team','Orange County, California',NULL,NULL,NULL,NULL,NULL),(73,'Daegu Community-Rescue Team','Daegu, Yeongnam',NULL,NULL,NULL,NULL,NULL),(74,'Dalhousie University-Rescue Team','Halifax, Nova Scotia',NULL,NULL,NULL,NULL,NULL),(75,'Dallas Community - Rescue Team','Dallas, Texas',NULL,NULL,NULL,NULL,NULL),(76,'DC Metro and Northern Virginia Community - Rescue Team','Washington D.C., Washington D.C.',NULL,NULL,NULL,NULL,NULL),(77,'Del Lago Academy - Rescue Team','Escondido, California',NULL,NULL,NULL,NULL,NULL),(78,'Del Norte High School - Rescue Team','San Diego, California',NULL,NULL,NULL,NULL,NULL),(79,'Desert Christian High School-Rescue Team','Lancaster, CA',NULL,NULL,NULL,NULL,NULL),(80,'Detroit Community-Rescue Team','Detroit, Michigan',NULL,NULL,NULL,NULL,NULL),(81,'Don Bosco Prep High School - Rescue Team','Ramsey, New Jersey',NULL,NULL,NULL,NULL,NULL),(82,'Dougherty Valley High School - Rescue Team','San Ramon, California',NULL,NULL,NULL,NULL,NULL),(83,'Dover Bay Secondary School-Rescue Team','Nanaimo, British Columbia',NULL,NULL,NULL,NULL,NULL),(84,'Downey High School-Rescue Team','Downey, California',NULL,NULL,NULL,NULL,NULL),(85,'Dulaney High School-Rescue Team','Timonium, Maryland',NULL,NULL,NULL,NULL,NULL),(86,'East Chapel Hill High School-Rescue Team','Chapel Hill, North Carolina',NULL,NULL,NULL,NULL,NULL),(87,'East Los Angeles College-Rescue Team','Monterey Park, California',NULL,NULL,NULL,NULL,NULL),(88,'Edinburgh Community -Rescue Team','Edinburgh, Scotland',NULL,NULL,NULL,NULL,NULL),(89,'El Modena High School-Rescue Team','Orange, CA',NULL,NULL,NULL,NULL,NULL),(90,'Elmhurst College-Rescue Team','Chicago, Illinois',NULL,NULL,NULL,NULL,NULL),(91,'Emory University - Rescue Team','Atlanta, Georgia',NULL,NULL,NULL,NULL,NULL),(92,'Fair Lawn High School - Rescue Team','Fair Lawn, New Jersey',NULL,NULL,NULL,NULL,NULL),(93,'Faustin Fl_ret High School - Rescue Team','Morne-A-l\'Eau, Gaudeloupe',NULL,NULL,NULL,NULL,NULL),(94,'Finland Community - Rescue Team','Jorvas, Southern Finland',NULL,NULL,NULL,NULL,NULL),(95,'Fleming College - Rescue Team','Peterborough, Ontario',NULL,NULL,NULL,NULL,NULL),(96,'Florida Gulf Coast University-Rescue Team','Fort Myers, Florida',NULL,NULL,NULL,NULL,NULL),(97,'Fountain Valley High School - Rescue Team','Fountain Valley, California',NULL,NULL,NULL,NULL,NULL),(98,'Fraser Heights Secondary School-Rescue Team','Surrey, British Columbia',NULL,NULL,NULL,NULL,NULL),(99,'Furman University-Rescue Team','Greenville, South Carolina',NULL,NULL,NULL,NULL,NULL),(100,'Generated By: Rescue Teams 8/28/2015 9:02 PM',',',NULL,NULL,NULL,NULL,NULL),(101,'George Mason High School-Rescue Team','Falls Church, Virginia',NULL,NULL,NULL,NULL,NULL),(102,'George Mason University- Rescue Team','Fairfax, Virginia',NULL,NULL,NULL,NULL,NULL),(103,'George Washington University-Rescue Team','Washington D.C., Washington D.C.',NULL,NULL,NULL,NULL,NULL),(104,'Georgia Institute of Technology - Rescue Team','Atlanta, Georgia',NULL,NULL,NULL,NULL,NULL),(105,'Glen A. Wilson High School - Rescue Team','Hacienda Heights, California',NULL,NULL,NULL,NULL,NULL),(106,'Glenbrook South High School-Rescue Team','Glenview, Ilinois',NULL,NULL,NULL,NULL,NULL),(107,'Glendora High School-Rescue Team','Glendora, California',NULL,NULL,NULL,NULL,NULL),(108,'Glenelg Country School-Rescue Team','Ellicott City, Maryland',NULL,NULL,NULL,NULL,NULL),(109,'Global Vision Christian School-Rescue Team','Mungyeong, North Gyeongsang',NULL,NULL,NULL,NULL,NULL),(110,'Golden Valley High School-Rescue Team','Santa Clarita, California',NULL,NULL,NULL,NULL,NULL),(111,'Grand Rapids Community-Rescue Team','Grand Rapids, Michigan',NULL,NULL,NULL,NULL,NULL),(112,'Great Bay Community- Rescue Team','Portsmouth, New Hampshire',NULL,NULL,NULL,NULL,NULL),(113,'Grinnell College - Rescue Team','Grinnell, Iowa',NULL,NULL,NULL,NULL,NULL),(114,'Gunsan Community-Rescue Team','Gunsan, North Jeolla',NULL,NULL,NULL,NULL,NULL),(115,'Gwangju Community-Semi-Rescue Team','Gwangju, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(116,'Gyeonggi Suwon International School - Rescue Team','Suwon, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(117,'Hamilton College - Rescue Team','Clinton, New York',NULL,NULL,NULL,NULL,NULL),(118,'Hammond High School-Rescue Team','Columbia, Maryland',NULL,NULL,NULL,NULL,NULL),(119,'Hampshire College-Semi-Rescue Team','Amherst, Massachusetts',NULL,NULL,NULL,NULL,NULL),(120,'Harvard-Westlake School -Rescue Team','Studio City, California',NULL,NULL,NULL,NULL,NULL),(121,'Hong Kong Community -Rescue Team','Hong Kong, Hong Kong',NULL,NULL,NULL,NULL,NULL),(122,'Humboldt Community - Rescue Team','Eureka, California',NULL,NULL,NULL,NULL,NULL),(123,'Hunter College Campus High School-Rescue Team','New York, New York',NULL,NULL,NULL,NULL,NULL),(124,'Huron High School-Rescue Team','Ann Arbor, Michigan',NULL,NULL,NULL,NULL,NULL),(125,'Incheon International High School-Rescue Team','Incheon, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(126,'Independence High School-Rescue Team','San Jose, California',NULL,NULL,NULL,NULL,NULL),(127,'International Community School - Rescue Team','Kirkland, Washington',NULL,NULL,NULL,NULL,NULL),(128,'International Community School (Singapore)-Rescue Team','Singapore, Singapore',NULL,NULL,NULL,NULL,NULL),(129,'Irvine High School - Rescue Team','Irvine, California',NULL,NULL,NULL,NULL,NULL),(130,'Ivy Tech Community College-Semi Rescue Team','Carmel, Indiana',NULL,NULL,NULL,NULL,NULL),(131,'J Concert Artists - Semi - Rescue Team','Los Angeles, California',NULL,NULL,NULL,NULL,NULL),(132,'James Madison University - Rescue Team','Harrisonburg, Virginia',NULL,NULL,NULL,NULL,NULL),(133,'Jersey Village High School - Rescue Team','Houston, Texas',NULL,NULL,NULL,NULL,NULL),(134,'Jesse Bethel High School-Rescue Team','Vallejo, California',NULL,NULL,NULL,NULL,NULL),(135,'John F. Kennedy High School-Rescue Team','La Palma, California',NULL,NULL,NULL,NULL,NULL),(136,'John F. Kennedy Middle College High School - Rescue Team','Norco, California',NULL,NULL,NULL,NULL,NULL),(137,'John Polanyi Collegiate Institute-Semi Rescue Team','Toronto, Ontario',NULL,NULL,NULL,NULL,NULL),(138,'Johns Hopkins University-Rescue Team','Baltimore, Maryland',NULL,NULL,NULL,NULL,NULL),(139,'Judson College-Rescue Team','Marion, Alabama',NULL,NULL,NULL,NULL,NULL),(140,'Jurupa Hills High School - Rescue Team','Fontana, California',NULL,NULL,NULL,NULL,NULL),(141,'Kelvin High School-Rescue Team','Winnipeg, Manitoba',NULL,NULL,NULL,NULL,NULL),(142,'Kennesaw State University - Rescue Team','Kennesaw, Georgia',NULL,NULL,NULL,NULL,NULL),(143,'Kent-Meridian High School - Rescue Team','Kent, Washington',NULL,NULL,NULL,NULL,NULL),(144,'King\'s High School - Rescue Team','Seattle, Washington',NULL,NULL,NULL,NULL,NULL),(145,'Knox College- Rescue Team','Galesburg, Illinois',NULL,NULL,NULL,NULL,NULL),(146,'Korea International School (KIS)-Rescue Team','Seongnam, Gyeonggi-do',NULL,NULL,NULL,NULL,NULL),(147,'Korean International Christian School-Semi-Rescue Team','Bucheon, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(148,'Korean Minjok Leadership Academy - Rescue Team','Hoengseong-gun, Gangwon-do',NULL,NULL,NULL,NULL,NULL),(149,'Korean Presbyterian Church of Miami - Rescue Team','Fort Lauderdale, Florida',NULL,NULL,NULL,NULL,NULL),(150,'Koreatown Boy Scouts & Girl Scouts-Semi Rescue Team','Los Angeles, California',NULL,NULL,NULL,NULL,NULL),(151,'La Ca_ada High School - Rescue Team','La Ca_ada Flintridge, California',NULL,NULL,NULL,NULL,NULL),(152,'LA Comedy - Rescue Team','Los Angeles, California',NULL,NULL,NULL,NULL,NULL),(153,'Lake Braddock Secondary School-Rescue Team','Burke, Virginia',NULL,NULL,NULL,NULL,NULL),(154,'Le Moyne College-Rescue Team','Syracuse, New York',NULL,NULL,NULL,NULL,NULL),(155,'Leigh High School-Rescue Team','San Jose, California',NULL,NULL,NULL,NULL,NULL),(156,'Leland High School-Rescue Team','San Jose, California',NULL,NULL,NULL,NULL,NULL),(157,'Lewis and Clark College-Rescue Team','Portland, Oregon',NULL,NULL,NULL,NULL,NULL),(158,'Lewis and Clark High School - Rescue Team','Spokane, Washington',NULL,NULL,NULL,NULL,NULL),(159,'Lexington High School-Rescue Team','Lexington, Massachusetts',NULL,NULL,NULL,NULL,NULL),(160,'Lynwood High School - Rescue Team','Lynwood, Washington',NULL,NULL,NULL,NULL,NULL),(161,'Macalester College-Rescue Team','St. Paul, Minnesota',NULL,NULL,NULL,NULL,NULL),(162,'Maggie L. Walker Governor\'s School - Rescue Team','Richmond, Virginia',NULL,NULL,NULL,NULL,NULL),(163,'Malmo Borgarskolan - Rescue Team','Malmo, Scania',NULL,NULL,NULL,NULL,NULL),(164,'Manhattan College - Rescue Team','Riverdale, New York',NULL,NULL,NULL,NULL,NULL),(165,'Marjory Stoneman Douglas High School-Semi Rescue Team','Parkland, Florida',NULL,NULL,NULL,NULL,NULL),(166,'Marlborough High School-Rescue Team','Los Angeles, California',NULL,NULL,NULL,NULL,NULL),(167,'Massachusetts Institute of Technology - Rescue Team','Boston, Massachusetts',NULL,NULL,NULL,NULL,NULL),(168,'McGill University-Rescue Team','Montreal, Quebec',NULL,NULL,NULL,NULL,NULL),(169,'Melbourne High School (Australia)-Rescue Team','Melbourne, Victoria',NULL,NULL,NULL,NULL,NULL),(170,'Memorial High School (Houston)-Rescue Team','Houston, Texas',NULL,NULL,NULL,NULL,NULL),(171,'Mentone Girls\' Grammar School - Rescue Team','Melbourne, Victoria',NULL,NULL,NULL,NULL,NULL),(172,'Merrimack High School-Rescue Team','Merrimack, New Hampshire',NULL,NULL,NULL,NULL,NULL),(173,'Miami University Oxford -Semi- Rescue Team','Oxford, Ohio',NULL,NULL,NULL,NULL,NULL),(174,'Michigan State University-Rescue Team','East Lansing, Michigan',NULL,NULL,NULL,NULL,NULL),(175,'Middle Tennessee State University - Rescue Team','Murfreesboro, Tennessee',NULL,NULL,NULL,NULL,NULL),(176,'Midrand Graduate Institute-Rescue Team','Midrand, Gauteng',NULL,NULL,NULL,NULL,NULL),(177,'Milpitas High School - Rescue Team','San Jose, California',NULL,NULL,NULL,NULL,NULL),(178,'Missouri State University - Rescue Team','Springfield, Missouri',NULL,NULL,NULL,NULL,NULL),(179,'Mount Holyoke College - Rescue Team','South Hadley, Massachusetts',NULL,NULL,NULL,NULL,NULL),(180,'Neighborhood Unitarian Universalist Church of Pasadena-Rescue Team','Pasadena, California',NULL,NULL,NULL,NULL,NULL),(181,'New Jersey Community-Rescue Team','Ewing, New Jersey',NULL,NULL,NULL,NULL,NULL),(182,'New York Community - Rescue Team','New York City, New York',NULL,NULL,NULL,NULL,NULL),(183,'New York University - Rescue Team','New York City, New York',NULL,NULL,NULL,NULL,NULL),(184,'Newton South High School - Rescue Team','Newton, Massachusetts',NULL,NULL,NULL,NULL,NULL),(185,'Nixa High School-Semi-Rescue Team','Nixa, Missouri',NULL,NULL,NULL,NULL,NULL),(186,'NorCal Community-Rescue Team','Pleasanton, California',NULL,NULL,NULL,NULL,NULL),(187,'North Penn High School-Rescue Team','Lansdale, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(188,'Northeastern University -Rescue Team','Boston, Massachusetts',NULL,NULL,NULL,NULL,NULL),(189,'Northfield Mount Hermon - Rescue Team','Mount Hermon, Massachusetts',NULL,NULL,NULL,NULL,NULL),(190,'Northview High School - Rescue Team','Johns Creek, Georgia',NULL,NULL,NULL,NULL,NULL),(191,'Northwood High School - Rescue Team','Irvine, California',NULL,NULL,NULL,NULL,NULL),(192,'Nova High School (Davie)-Rescue Team','Davie, Florida',NULL,NULL,NULL,NULL,NULL),(193,'NYOS Charter School - Rescue Team','Austin, Texas',NULL,NULL,NULL,NULL,NULL),(194,'Ohio State University - Rescue Team','Columbus, Ohio',NULL,NULL,NULL,NULL,NULL),(195,'Ohio University-Rescue Team','Athens, Ohio',NULL,NULL,NULL,NULL,NULL),(196,'Open Source-Rescue Team','Miami, Florida',NULL,NULL,NULL,NULL,NULL),(197,'Orange County School of the Arts - Rescue Team','Orange County, California',NULL,NULL,NULL,NULL,NULL),(198,'Oxford Academy - Rescue Team','Cypress, California',NULL,NULL,NULL,NULL,NULL),(199,'Pace University-Semi-Rescue Team','New York City, New York',NULL,NULL,NULL,NULL,NULL),(200,'Pacific Ridge School-Rescue Team','Carlsbad, California',NULL,NULL,NULL,NULL,NULL),(201,'Paju Community-Rescue Team','Paju, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(202,'Palisades Charter High School-Rescue Team','Pacific Palisades, California',NULL,NULL,NULL,NULL,NULL),(203,'Pennsylvania State University - Rescue Team','State College, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(204,'Phillips Academy Andover-Rescue Team','Andover, Massachusetts',NULL,NULL,NULL,NULL,NULL),(205,'Phillips Exeter Academy - Rescue Team','Exeter, New Hampshire',NULL,NULL,NULL,NULL,NULL),(206,'Polytechnic High School (Pasadena)-Rescue Team','Pasadena, California',NULL,NULL,NULL,NULL,NULL),(207,'Poway High School - Rescue Team','Poway, California',NULL,NULL,NULL,NULL,NULL),(208,'Purdue University - Rescue Team','West Lafayette, Indiana',NULL,NULL,NULL,NULL,NULL),(209,'Quincy Community - Rescue Team','Quincy, Massachusetts',NULL,NULL,NULL,NULL,NULL),(210,'Ravenscroft School - Rescue Team','Raleigh, North Carolina',NULL,NULL,NULL,NULL,NULL),(211,'Renaissance Magnet High School - Rescue Team','Meridian, Idaho',NULL,NULL,NULL,NULL,NULL),(212,'Rescue Teams',',',NULL,NULL,NULL,NULL,NULL),(213,'Reynolds High School - Rescue Team','Troutdale, Oregon',NULL,NULL,NULL,NULL,NULL),(214,'Rice Memorial High School-Semi Rescue Team','Burlington, Vermont',NULL,NULL,NULL,NULL,NULL),(215,'Ridge High School - Rescue Team','Basking Ridge, New Jersey',NULL,NULL,NULL,NULL,NULL),(216,'Rock Valley College-Rescue Team','Rockford, Illinois',NULL,NULL,NULL,NULL,NULL),(217,'Roseville Area High School - Rescue Team','Roseville, Minnesota',NULL,NULL,NULL,NULL,NULL),(218,'Rowan College at Gloucester County-Rescue Team','Sewell, New Jersey',NULL,NULL,NULL,NULL,NULL),(219,'Royal West Academy-Rescue Team','Montreal, Quebec',NULL,NULL,NULL,NULL,NULL),(220,'Rutgers University-Rescue Team','Piscataway, New Jersey',NULL,NULL,NULL,NULL,NULL),(221,'Saint Viator High School-Rescue Team','Arlington Heights, Illinois',NULL,NULL,NULL,NULL,NULL),(222,'San Antonio Community - Rescue Team','San Antonio, Texas',NULL,NULL,NULL,NULL,NULL),(223,'San Jose Community-Rescue Team','San Jose, California',NULL,NULL,NULL,NULL,NULL),(224,'Santiago High School - Rescue Team','Corona, California',NULL,NULL,NULL,NULL,NULL),(225,'Savannah Arts Academy-Rescue Team','Savannah, Georgia',NULL,NULL,NULL,NULL,NULL),(226,'Seattle Colleges District - Rescue Team','Seattle, Washington',NULL,NULL,NULL,NULL,NULL),(227,'Seattle Community-Rescue Team','Seattle, Washington',NULL,NULL,NULL,NULL,NULL),(228,'Seoul Community-Rescue Team','Incheon, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(229,'Seoul Foreign School-Rescue Team','Seoul, Gyeonggi',NULL,NULL,NULL,NULL,NULL),(230,'Seoul International School-Rescue Team','Seoul, Gyeonggi-do',NULL,NULL,NULL,NULL,NULL),(231,'Serrano High School - Rescue Team','Phelan, California',NULL,NULL,NULL,NULL,NULL),(232,'Singapore Community-Rescue Team','Singapore, Central Singapore',NULL,NULL,NULL,NULL,NULL),(233,'Sixth Form College-Rescue Team','Colchester, England',NULL,NULL,NULL,NULL,NULL),(234,'Smith College - Rescue Team','Northhampton, Massachusetts',NULL,NULL,NULL,NULL,NULL),(235,'South High School (Torrance)-Rescue Team','Torrance, California',NULL,NULL,NULL,NULL,NULL),(236,'Southern Hills Middle School-Rescue Team','Boulder, Colorado',NULL,NULL,NULL,NULL,NULL),(237,'Southern Methodist University-Rescue Team','Dallas, Texas',NULL,NULL,NULL,NULL,NULL),(238,'Spain Community-Rescue Team','Madrid, Madrid',NULL,NULL,NULL,NULL,NULL),(239,'St. Paul\'s Girls\' School-Rescue Team','London, England',NULL,NULL,NULL,NULL,NULL),(240,'St. Paul\'s School (Concord)-Rescue Team','Concord, New Hampshire',NULL,NULL,NULL,NULL,NULL),(241,'St. Xavier University-Rescue Team','Chicago, Illinois',NULL,NULL,NULL,NULL,NULL),(242,'Stanford University - Rescue Team','Stanford, California',NULL,NULL,NULL,NULL,NULL),(243,'State University of New York Oneonta- Rescue Team','Oneonta, New York',NULL,NULL,NULL,NULL,NULL),(244,'State University of New York Oswego-Semi Rescue Team','Oswego, New York',NULL,NULL,NULL,NULL,NULL),(245,'State University of New York, Geneseo - Rescue Team','Geneseo, New York',NULL,NULL,NULL,NULL,NULL),(246,'Stuyvesant High School - Rescue Team','New York, New York',NULL,NULL,NULL,NULL,NULL),(247,'Summit Charter Collegiate Academy-Rescue Team','Porterville, California',NULL,NULL,NULL,NULL,NULL),(248,'Sunny Hills High School-Rescue Team','Fullerton, California',NULL,NULL,NULL,NULL,NULL),(249,'SUNY-New Paltz-Rescue Team','New Paltz, New York',NULL,NULL,NULL,NULL,NULL),(250,'Sydney Community-Rescue Team','Sydney, New South Wales',NULL,NULL,NULL,NULL,NULL),(251,'Syracuse University - Rescue Team','Syracuse, New York',NULL,NULL,NULL,NULL,NULL),(252,'Temple University - Rescue Team','Philadelphia, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(253,'Texas A&M Univeristy- Central Texas-Rescue Team','College Station, Texas',NULL,NULL,NULL,NULL,NULL),(254,'Texas A&M University-Rescue Team','College Station, Texas',NULL,NULL,NULL,NULL,NULL),(255,'Texas Christian University-Rescue Team','Fort Worth, Texas',NULL,NULL,NULL,NULL,NULL),(256,'The Bishop\'s School-Rescue Team','La Jolla, California',NULL,NULL,NULL,NULL,NULL),(257,'The O\'Neal School-Rescue Team','Southern Pines, North Carolina',NULL,NULL,NULL,NULL,NULL),(258,'The Westminster School-Rescue Team','Atlanta, Georgia',NULL,NULL,NULL,NULL,NULL),(259,'The Williston Northampton School - Rescue Team','Easthampton, Massachusetts',NULL,NULL,NULL,NULL,NULL),(260,'Torrey Pines High School-Rescue Team','San Diego, California',NULL,NULL,NULL,NULL,NULL),(261,'Tufts University - Rescue Team','Medford, Massachusetts',NULL,NULL,NULL,NULL,NULL),(262,'Union University-Rescue Team','Jackson, Tennessee',NULL,NULL,NULL,NULL,NULL),(263,'United World College of South East Asia (UWCSEA) - Rescue Team','Singapore, Singapore',NULL,NULL,NULL,NULL,NULL),(264,'University College London-Rescue Team','London, England',NULL,NULL,NULL,NULL,NULL),(265,'University of Alabama at Birmingham - Rescue Team','Birmingham, Alabama',NULL,NULL,NULL,NULL,NULL),(266,'University of Arizona-Rescue Team','Tuscon, Arizona',NULL,NULL,NULL,NULL,NULL),(267,'University of Bochum-Rescue Team','Bochum, North Rhine-Westphalia',NULL,NULL,NULL,NULL,NULL),(268,'University of British Columbia-Rescue Team','Vancouver, British Columbia',NULL,NULL,NULL,NULL,NULL),(269,'University of California, Berkeley (Cal) - Rescue Team','Berkeley, California',NULL,NULL,NULL,NULL,NULL),(270,'University of California, Davis (UCD)-Rescue Team','Davis, California',NULL,NULL,NULL,NULL,NULL),(271,'University of California, Irvine - Rescue Team','Irvine, California',NULL,NULL,NULL,NULL,NULL),(272,'University of California, Los Angeles - Rescue Team','Los Angeles, California',NULL,NULL,NULL,NULL,NULL),(273,'University of California, Riverside-Rescue Team','Riverside, California',NULL,NULL,NULL,NULL,NULL),(274,'University of California, San Diego (UCSD) - Rescue Team','La Jolla, California',NULL,NULL,NULL,NULL,NULL),(275,'University of Colorado at Colorado Springs-Rescue Team','Colorado Springs, Colorado',NULL,NULL,NULL,NULL,NULL),(276,'University of Findlay-Rescue Team','Findlay, Ohio',NULL,NULL,NULL,NULL,NULL),(277,'University of Florida - Rescue Team','Gainesville, Florida',NULL,NULL,NULL,NULL,NULL),(278,'University of Georgia-Rescue Team','Athens, Georgia',NULL,NULL,NULL,NULL,NULL),(279,'University of Hawaii at Manoa-Rescue Team','Honolulu, Hawaii',NULL,NULL,NULL,NULL,NULL),(280,'University of Illinois Chicago - Rescue Team','Chicago, Illinois',NULL,NULL,NULL,NULL,NULL),(281,'University of Illinois Urbana Champaign - Rescue Team','Urbana, Illinois',NULL,NULL,NULL,NULL,NULL),(282,'University of Iowa - Rescue Team','Iowa City, Iowa',NULL,NULL,NULL,NULL,NULL),(283,'University of Kansas - Rescue Team','Lawrence, Kansas',NULL,NULL,NULL,NULL,NULL),(284,'University of Maryland-College Park-Rescue Team','College Park, Maryland',NULL,NULL,NULL,NULL,NULL),(285,'University of Michigan - Rescue Team','Ann Arbor, Michigan',NULL,NULL,NULL,NULL,NULL),(286,'University of Minnesota-Rescue Team','Minneapolis, Minnesota',NULL,NULL,NULL,NULL,NULL),(287,'University of Mount Union-Semi Rescue Team','Alliance, Ohio',NULL,NULL,NULL,NULL,NULL),(288,'University of Nevada Las Vegas -Rescue Team','Las Vegas, Nevada',NULL,NULL,NULL,NULL,NULL),(289,'University of New South Wales - Rescue Team','Sydney, New South Wales',NULL,NULL,NULL,NULL,NULL),(290,'University of North Carolina Chapel Hill - Rescue Team','Chapel Hill, North Carolina',NULL,NULL,NULL,NULL,NULL),(291,'University of North Florida-Rescue Team','Jacksonville, Florida',NULL,NULL,NULL,NULL,NULL),(292,'University of Notre Dame - Rescue Team','South Bend, Indiana',NULL,NULL,NULL,NULL,NULL),(293,'University of Pennsylvania - Rescue Team','Philadelphia, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(294,'University of Pittsburgh-Rescue Team','Pittsburgh, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(295,'University of Redlands - Rescue Team','Redlands, California',NULL,NULL,NULL,NULL,NULL),(296,'University of Regina-Rescue Team','Regina, Saskatchewan',NULL,NULL,NULL,NULL,NULL),(297,'University of Rochester - Rescue Team','Rochester, New York',NULL,NULL,NULL,NULL,NULL),(298,'University of Southern California (USC) - Rescue Team','Los Angeles, California',NULL,NULL,NULL,NULL,NULL),(299,'University of Southern Maine-Semi Rescue Team','Portland, Maine',NULL,NULL,NULL,NULL,NULL),(300,'University of Texas at Austin - Rescue Team','Austin, Texas',NULL,NULL,NULL,NULL,NULL),(301,'University of Texas at Dallas-Rescue Team','Dallas, Texas',NULL,NULL,NULL,NULL,NULL),(302,'University of Toronto - Rescue Team','Toronto, Ontario',NULL,NULL,NULL,NULL,NULL),(303,'University of Virginia - Rescue Team','Charlottesville, Virginia',NULL,NULL,NULL,NULL,NULL),(304,'University of Wisconsin Madison - Rescue Team','Madison, Wisconsin',NULL,NULL,NULL,NULL,NULL),(305,'University of Wisconsin River Falls-Rescue Team','River Falls, Wisconsin',NULL,NULL,NULL,NULL,NULL),(306,'Van Nuys High School - Rescue Team','Van Nuys, California',NULL,NULL,NULL,NULL,NULL),(307,'Vancouver Korean Presbyterian Church-Rescue Team','Vancouver, British Columbia',NULL,NULL,NULL,NULL,NULL),(308,'Vanderbilt University - Rescue Team','Nashville, Tennessee',NULL,NULL,NULL,NULL,NULL),(309,'Vassar College - Rescue Team','Poughkeepsie, New York',NULL,NULL,NULL,NULL,NULL),(310,'Walnut High School-Rescue Team','Walnut, California',NULL,NULL,NULL,NULL,NULL),(311,'Walnut Hill School for the Arts-Rescue Team','Natick, Massachusetts',NULL,NULL,NULL,NULL,NULL),(312,'Walton High School-Rescue Team','Marietta, Georgia',NULL,NULL,NULL,NULL,NULL),(313,'Washburn Rural HIgh School - Rescue Team','Topeka, Kansas',NULL,NULL,NULL,NULL,NULL),(314,'Washington University in St. Louis - Rescue Team','St. Louis, Missouri',NULL,NULL,NULL,NULL,NULL),(315,'Washtenaw Community College-Semi Rescue Team','Ann Arbor, Michigan',NULL,NULL,NULL,NULL,NULL),(316,'Watchung Hills Regional High School - Rescue Team','Englewood, New Jersey',NULL,NULL,NULL,NULL,NULL),(317,'Wayzata High School-Rescue Team','Plymouth, Minnesota',NULL,NULL,NULL,NULL,NULL),(318,'Wesleyan University - Rescue Team','Middletown, Connecticut',NULL,NULL,NULL,NULL,NULL),(319,'West Ranch High School-Rescue Team','Santa Clarita, California',NULL,NULL,NULL,NULL,NULL),(320,'Westfield High School - Rescue Team','Chantilly, Virginia',NULL,NULL,NULL,NULL,NULL),(321,'Westminster High School - Rescue Team','Westminster, California',NULL,NULL,NULL,NULL,NULL),(322,'Westridge School - Rescue Team','Pasadena, California',NULL,NULL,NULL,NULL,NULL),(323,'Westtown School - Rescue Team','West Chester, Pennsylvania',NULL,NULL,NULL,NULL,NULL),(324,'Wheatland High School-Rescue Team','Wheatland, California',NULL,NULL,NULL,NULL,NULL),(325,'Wheaton College-Rescue Team','Wheaton, Illinois',NULL,NULL,NULL,NULL,NULL),(326,'Whitney M. Young Magnet High School- Rescue Team','Chicago, Illinois',NULL,NULL,NULL,NULL,NULL),(327,'Wichita State University - Rescue Team','Wichita, Kansas',NULL,NULL,NULL,NULL,NULL),(328,'William Aberhart High School - Rescue Team','Calgary, Alberta',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(329,'William Fremd High School-Rescue Team','Palatine, Illinois',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(330,'William Paterson University-Rescue Team','Wayne, New Jersey',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(331,'William S. Hart High School-Rescue Team','Santa Clarita, California',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(332,'Willow Wind - Rescue Team','Ashland, Oregon',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(333,'Willow Wind Community Learning Center-Rescue Team','Ashland, Oregon',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(334,'Wilson Commencement Magnet High School-Rescue Team','Rochester, New York',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(335,'Woodbridge High School-Rescue Team','Irvine, California',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(336,'Yale University-Rescue Team','New Haven, Connecticut',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(337,'Yongsan International School of Seoul (YISS)-Rescue Team','Seoul, Gyeonggi',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL),(671,NULL,'New Haven, Connecticut',NULL,NULL,NULL,'0000-00-00 00:00:00',NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams_events`
--

DROP TABLE IF EXISTS `teams_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teamidfx` (`team_id`),
  KEY `eventidfx` (`event_id`),
  CONSTRAINT `teamidfx` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `eventidfx` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams_events`
--

LOCK TABLES `teams_events` WRITE;
/*!40000 ALTER TABLE `teams_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `teams_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `user_level` smallint(5) DEFAULT NULL,
  `profile_pic` blob,
  `logged_in` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `institution` mediumtext,
  `motivation` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jalal','Beauchman','test@test.com',NULL,'(753) 799-7795',1,NULL,NULL,'2014-12-20 19:44:17',NULL,NULL,NULL),(2,'Ani','Bird','Aliquam.gravida.mauris@dignissimmagna.com',NULL,'(734) 523-0591',1,NULL,NULL,'2015-11-18 14:39:09',NULL,NULL,NULL),(3,'Lan','Nguyen','lan@hi.com','12345678','(196) 283-7013',1,NULL,NULL,'2015-05-11 15:40:34',NULL,NULL,NULL),(4,'Nick','Leonard','montes.nascetur.ridiculus@egestasrhoncus.com',NULL,'(468) 977-8362',2,NULL,NULL,'2016-03-30 02:10:03',NULL,NULL,NULL),(5,'Sarah','Palmer','sarah@link.com','12345678','(400) 855-9969',1,NULL,NULL,'2016-03-21 06:56:33',NULL,NULL,NULL),(6,'Isaac','Lee','arcu@eleifendnondapibus.co.uk',NULL,'(991) 211-1943',3,NULL,NULL,'2014-11-08 16:39:50',NULL,NULL,NULL),(7,'Vince','Logan','vince@hi.com','12345678','(970) 504-2812',1,NULL,NULL,'2015-07-31 09:00:58',NULL,NULL,NULL),(8,'Normal','User','normal@user.com','12345678','(922) 501-4906',4,NULL,NULL,'2016-07-17 20:05:31',NULL,NULL,NULL),(9,'Abdul','Mcgowan','dis@Duisrisusodio.co.uk',NULL,'(627) 581-9380',3,NULL,NULL,'2015-05-07 19:29:50',NULL,NULL,NULL),(10,'Martha','Murphy','non.hendrerit@Seddictum.edu',NULL,'(861) 367-9690',3,NULL,NULL,'2016-07-30 17:17:27',NULL,NULL,NULL),(11,'Lillian','Savage','aliquet.vel.vulputate@necmollisvitae.ca',NULL,'(383) 636-0166',4,NULL,NULL,'2016-07-06 04:27:29',NULL,NULL,NULL),(12,'Clark','Hurst','aliquet@sem.com',NULL,'(824) 741-7825',4,NULL,NULL,'2015-05-11 20:58:12',NULL,NULL,NULL),(13,'Hall','Bryan','ante@Vestibulumaccumsanneque.co.uk',NULL,'(668) 619-1697',4,NULL,NULL,'2015-07-12 23:38:13',NULL,NULL,NULL),(14,'Reuben','Pickett','in@ullamcorpervelit.net',NULL,'(439) 786-2235',4,NULL,NULL,'2016-06-23 01:14:13',NULL,NULL,NULL),(15,'Sylvia','Pope','Lorem@risusDonecegestas.edu',NULL,'(551) 218-7465',4,NULL,NULL,'2016-04-02 22:07:52',NULL,NULL,NULL),(16,'Jelani','Mccarty','euismod.in@ipsumnon.org',NULL,'(171) 346-1146',4,NULL,NULL,'2015-06-22 02:14:06',NULL,NULL,NULL),(17,'Blaine','Whitehead','nec@sempereratin.net',NULL,'(414) 121-0050',5,NULL,NULL,'2015-07-02 16:54:03',NULL,NULL,NULL),(18,'Blaine','Yang','facilisis@dolorsitamet.org',NULL,'(966) 681-3251',5,NULL,NULL,'2015-02-05 16:15:52',NULL,NULL,NULL),(19,'Rowan','Holland','ante.Maecenas@mattissemperdui.org',NULL,'(315) 578-3440',5,NULL,NULL,'2015-11-16 09:34:46',NULL,NULL,NULL),(20,'Montana','Leach','pharetra.Nam.ac@ametconsectetuer.edu',NULL,'(517) 889-6818',5,NULL,NULL,'2015-03-07 19:52:18',NULL,NULL,NULL),(21,'Ferris','Sheppard','vestibulum@volutpat.org',NULL,'(706) 810-5003',5,NULL,NULL,'2016-04-04 06:17:43',NULL,NULL,NULL),(22,'Maisie','Gallagher','metus.In.nec@condimentum.net',NULL,'(467) 344-6580',5,NULL,NULL,'2015-02-28 07:25:53',NULL,NULL,NULL),(23,'Skyler','Alexander','lorem.lorem@Integereulacus.net',NULL,'(760) 680-1531',5,NULL,NULL,'2015-08-15 00:11:47',NULL,NULL,NULL),(24,'Talon','Baxter','lacinia.at@Quisque.org',NULL,'(472) 601-4729',2,NULL,NULL,'2015-08-24 11:58:52',NULL,NULL,NULL),(25,'Keiko','Chavez','molestie@torquent.net',NULL,'(713) 659-9271',1,NULL,NULL,'2014-12-05 10:40:39',NULL,NULL,NULL),(26,'Roary','Mullins','adipiscing.lacus.Ut@feugiatnonlobortis.net',NULL,'(657) 382-3782',1,NULL,NULL,'2015-03-13 10:05:04',NULL,NULL,NULL),(27,'Leroy','Hicks','eleifend.Cras.sed@Crasegetnisi.com',NULL,'(479) 859-6103',5,NULL,NULL,'2016-04-29 08:51:25',NULL,NULL,NULL),(28,'Griffith','Mathews','Nullam.lobortis@euismod.org',NULL,'(381) 171-4963',1,NULL,NULL,'2015-06-08 14:26:42',NULL,NULL,NULL),(29,'Mira','Kent','ultrices@amet.co.uk',NULL,'(685) 868-8617',2,NULL,NULL,'2016-08-25 02:28:20',NULL,NULL,NULL),(30,'Odette','Combs','Cras.vulputate@ipsum.co.uk',NULL,'(221) 179-5266',4,NULL,NULL,'2016-08-01 17:53:55',NULL,NULL,NULL),(31,'Julie','Snow','tellus.justo@Nuncmauris.org',NULL,'(655) 586-9537',5,NULL,NULL,'2015-11-09 18:09:22',NULL,NULL,NULL),(32,'Lani','Pitts','amet.lorem@velmauris.com',NULL,'(678) 196-2602',4,NULL,NULL,'2015-06-17 20:47:51',NULL,NULL,NULL),(33,'Walter','Mosley','at.risus.Nunc@venenatisamagna.com',NULL,'(146) 783-6529',4,NULL,NULL,'2015-12-27 12:49:48',NULL,NULL,NULL),(34,'Dahlia','Webb','habitant@nuncinterdum.ca',NULL,'(972) 105-1893',4,NULL,NULL,'2014-10-08 21:49:21',NULL,NULL,NULL),(35,'Nash','Humphrey','eleifend@egestasnuncsed.org',NULL,'(303) 725-9515',5,NULL,NULL,'2015-02-02 21:41:43',NULL,NULL,NULL),(36,'Devin','Combs','felis.purus.ac@Quisquetinciduntpede.co.uk',NULL,'(134) 758-4303',2,NULL,NULL,'2014-09-10 14:38:30',NULL,NULL,NULL),(37,'Sebastian','English','non@vulputateposuere.net',NULL,'(236) 105-2945',1,NULL,NULL,'2015-08-11 13:35:14',NULL,NULL,NULL),(38,'Axel','Flowers','et.rutrum@Nulladignissim.net',NULL,'(962) 914-9232',5,NULL,NULL,'2015-05-07 10:07:31',NULL,NULL,NULL),(39,'Olympia','Sims','sit.amet@faucibus.edu',NULL,'(884) 341-6453',2,NULL,NULL,'2015-11-21 05:04:27',NULL,NULL,NULL),(40,'Moana','Pierce','ullamcorper.viverra@sitamet.com',NULL,'(671) 403-5802',2,NULL,NULL,'2014-10-05 19:12:05',NULL,NULL,NULL),(41,'Ulric','Lott','Curabitur@ligulaNullamenim.com',NULL,'(522) 231-6302',1,NULL,NULL,'2015-09-04 17:30:11',NULL,NULL,NULL),(42,'Carl','Ward','ac.tellus@urnanec.org',NULL,'(972) 775-5549',4,NULL,NULL,'2015-02-07 21:03:37',NULL,NULL,NULL),(43,'Angela','Christensen','sem.magna.nec@euligula.edu',NULL,'(160) 546-3022',4,NULL,NULL,'2016-04-05 13:40:44',NULL,NULL,NULL),(44,'Jade','Tran','fermentum@sedconsequatauctor.net',NULL,'(205) 969-4549',2,NULL,NULL,'2015-07-29 19:15:14',NULL,NULL,NULL),(45,'Yasir','Duran','Nunc@lectusNullamsuscipit.org',NULL,'(324) 310-0971',3,NULL,NULL,'2015-03-10 20:05:11',NULL,NULL,NULL),(46,'Cade','Marks','eros.Proin@iaculis.org',NULL,'(904) 692-1800',4,NULL,NULL,'2015-12-26 06:59:13',NULL,NULL,NULL),(47,'Sara','Rocha','ipsum@vitaesodalesnisi.co.uk',NULL,'(167) 911-5146',4,NULL,NULL,'2014-09-10 01:15:35',NULL,NULL,NULL),(48,'Jasper','Pratt','purus@iderat.ca',NULL,'(178) 256-2011',5,NULL,NULL,'2016-02-05 01:15:48',NULL,NULL,NULL),(49,'Carolyn','Gaines','lacinia@nuncac.edu',NULL,'(100) 498-7358',4,NULL,NULL,'2015-03-17 23:25:36',NULL,NULL,NULL),(50,'Myles','Chambers','Nam.ligula@ataugue.edu',NULL,'(154) 793-0800',4,NULL,NULL,'2016-08-19 13:03:16',NULL,NULL,NULL),(51,'Fitzgerald','Booker','nulla@turpisvitae.com',NULL,'(533) 194-1343',2,NULL,NULL,'2015-11-04 21:12:57',NULL,NULL,NULL),(52,'Zoe','Benson','Mauris@feugiatnonlobortis.ca',NULL,'(927) 813-1904',1,NULL,NULL,'2016-05-11 07:30:28',NULL,NULL,NULL),(53,'Otto','Copeland','tellus@nunc.co.uk',NULL,'(854) 752-9239',5,NULL,NULL,'2015-05-29 00:16:40',NULL,NULL,NULL),(54,'Armando','Silva','neque@felisullamcorper.co.uk',NULL,'(566) 154-4731',2,NULL,NULL,'2015-10-17 09:59:00',NULL,NULL,NULL),(55,'Meredith','Watkins','vitae.nibh@Donecporttitor.edu',NULL,'(800) 132-0473',4,NULL,NULL,'2016-07-11 04:28:57',NULL,NULL,NULL),(56,'Quinlan','Ewing','Proin.sed.turpis@lobortisquis.edu',NULL,'(610) 427-3674',4,NULL,NULL,'2016-08-23 09:49:31',NULL,NULL,NULL),(57,'Thor','Johnston','eu@nostraper.org',NULL,'(338) 255-2530',2,NULL,NULL,'2015-03-09 00:36:47',NULL,NULL,NULL),(58,'Indira','Mccormick','turpis@cursuspurus.co.uk',NULL,'(268) 852-1002',5,NULL,NULL,'2016-02-01 21:17:58',NULL,NULL,NULL),(59,'Jaden','Mason','Vestibulum.ante.ipsum@massalobortisultrices.com',NULL,'(103) 144-8248',4,NULL,NULL,'2015-08-23 11:42:41',NULL,NULL,NULL),(60,'Kimberley','Kim','Nulla.aliquet@anteipsumprimis.edu',NULL,'(934) 119-0904',1,NULL,NULL,'2015-11-18 02:56:46',NULL,NULL,NULL),(61,'Marcia','Emerson','diam.Pellentesque@disparturient.net',NULL,'(349) 113-6510',2,NULL,NULL,'2014-11-28 21:49:51',NULL,NULL,NULL),(62,'Halee','Boone','Cum@sed.org',NULL,'(209) 492-7798',4,NULL,NULL,'2016-01-25 19:26:31',NULL,NULL,NULL),(63,'Basia','Sharpe','Proin@urnaUt.net',NULL,'(491) 901-0025',2,NULL,NULL,'2016-07-17 07:49:59',NULL,NULL,NULL),(64,'Akeem','Noble','Vivamus.sit@arcu.org',NULL,'(326) 311-1855',3,NULL,NULL,'2016-08-28 04:13:06',NULL,NULL,NULL),(65,'Kane','Lara','ullamcorper.magna.Sed@venenatislacusEtiam.edu',NULL,'(765) 643-3320',1,NULL,NULL,'2014-12-27 04:44:18',NULL,NULL,NULL),(66,'Jayme','Mills','ac.metus.vitae@interdum.org',NULL,'(689) 843-5530',2,NULL,NULL,'2016-04-15 04:44:46',NULL,NULL,NULL),(67,'Rosalyn','Hebert','elit.dictum@ac.edu',NULL,'(101) 961-7801',5,NULL,NULL,'2015-11-11 03:27:35',NULL,NULL,NULL),(68,'Kasimir','Parker','dictum.magna@nibhvulputate.com',NULL,'(675) 275-2816',3,NULL,NULL,'2015-07-10 06:52:44',NULL,NULL,NULL),(69,'Dylan','Gilmore','malesuada.id@ultriciesornare.org',NULL,'(862) 866-3047',5,NULL,NULL,'2016-07-29 10:36:56',NULL,NULL,NULL),(70,'Christian','Russell','ipsum.Curabitur.consequat@scelerisquesedsapien.ca',NULL,'(203) 143-0306',2,NULL,NULL,'2016-04-07 22:04:20',NULL,NULL,NULL),(71,'Kirk','Hoover','viverra.Maecenas@montesnascetur.com',NULL,'(718) 418-9955',1,NULL,NULL,'2015-11-19 23:22:36',NULL,NULL,NULL),(72,'Darius','George','accumsan.laoreet.ipsum@ipsum.com',NULL,'(113) 767-3708',1,NULL,NULL,'2014-10-17 20:04:45',NULL,NULL,NULL),(73,'Hayfa','Neal','felis.eget@netusetmalesuada.co.uk',NULL,'(816) 261-3182',2,NULL,NULL,'2014-12-21 19:30:08',NULL,NULL,NULL),(74,'Demetria','Calderon','molestie.Sed.id@nisi.com',NULL,'(520) 472-9381',3,NULL,NULL,'2016-01-23 05:40:11',NULL,NULL,NULL),(75,'Alea','Moon','Suspendisse.eleifend@Suspendissealiquetmolestie.org',NULL,'(271) 320-3958',2,NULL,NULL,'2015-11-21 19:53:04',NULL,NULL,NULL),(76,'Xyla','Forbes','aliquet.magna.a@erosProin.co.uk',NULL,'(240) 189-9712',5,NULL,NULL,'2016-04-09 08:38:29',NULL,NULL,NULL),(77,'Emma','Oliver','tortor.at.risus@Etiamimperdietdictum.com',NULL,'(403) 607-6686',1,NULL,NULL,'2015-04-13 07:50:52',NULL,NULL,NULL),(78,'Laith','Guerrero','Etiam@vitaesodalesnisi.org',NULL,'(528) 902-7900',2,NULL,NULL,'2016-03-27 15:40:54',NULL,NULL,NULL),(79,'Camilla','Snyder','et.lacinia.vitae@cursuset.com',NULL,'(834) 347-0837',3,NULL,NULL,'2016-04-01 17:24:00',NULL,NULL,NULL),(80,'Harding','Mcmahon','nulla.Cras@urna.co.uk',NULL,'(379) 823-1965',4,NULL,NULL,'2015-07-11 11:05:04',NULL,NULL,NULL),(81,'Maxwell','Schneider','luctus.vulputate@purusinmolestie.ca',NULL,'(958) 964-3876',5,NULL,NULL,'2014-12-21 23:28:39',NULL,NULL,NULL),(82,'Kellie','House','Duis@ullamcorper.ca',NULL,'(233) 381-0334',3,NULL,NULL,'2016-03-18 00:36:29',NULL,NULL,NULL),(83,'Tad','Dillard','tempus@neque.co.uk',NULL,'(829) 820-5276',5,NULL,NULL,'2014-09-03 21:16:25',NULL,NULL,NULL),(84,'Quon','Burris','rhoncus.id.mollis@vitaenibh.com',NULL,'(923) 586-0571',5,NULL,NULL,'2015-03-22 00:28:22',NULL,NULL,NULL),(85,'Wyatt','Foreman','amet.lorem@dictumeu.com',NULL,'(842) 909-1455',4,NULL,NULL,'2016-08-24 15:13:53',NULL,NULL,NULL),(86,'Hanae','Serrano','dictum.cursus@magnaUttincidunt.co.uk',NULL,'(955) 566-6094',2,NULL,NULL,'2014-11-15 13:24:23',NULL,NULL,NULL),(87,'Sharon','Gilmore','eget@eu.edu',NULL,'(591) 888-8929',2,NULL,NULL,'2016-08-22 19:41:12',NULL,NULL,NULL),(88,'Kenneth','Daniel','eu.odio@loremsitamet.co.uk',NULL,'(744) 184-2504',1,NULL,NULL,'2016-08-01 11:32:22',NULL,NULL,NULL),(89,'Merritt','Beck','eu.euismod.ac@laoreetlectusquis.edu',NULL,'(133) 967-0651',4,NULL,NULL,'2016-05-13 20:42:20',NULL,NULL,NULL),(90,'Oleg','Galloway','fermentum.convallis@Fuscefermentumfermentum.edu',NULL,'(169) 322-4654',2,NULL,NULL,'2016-05-08 01:49:37',NULL,NULL,NULL),(91,'Maile','Park','In.nec.orci@eratneque.com',NULL,'(318) 474-2008',2,NULL,NULL,'2015-01-03 08:24:03',NULL,NULL,NULL),(92,'Roth','Blair','sociis.natoque@Cum.net',NULL,'(320) 298-4788',1,NULL,NULL,'2015-03-25 14:09:34',NULL,NULL,NULL),(93,'Wayne','Nunez','molestie.dapibus@feugiat.net',NULL,'(380) 582-3131',3,NULL,NULL,'2015-06-02 21:40:37',NULL,NULL,NULL),(94,'Wynter','Valenzuela','eget.nisi@loremipsum.org',NULL,'(668) 421-7647',2,NULL,NULL,'2016-01-01 16:10:20',NULL,NULL,NULL),(95,'Abra','Blevins','elit.a@liberonec.org',NULL,'(388) 127-5867',3,NULL,NULL,'2015-05-17 03:06:14',NULL,NULL,NULL),(96,'Gary','Gill','tincidunt@magnisdis.net',NULL,'(517) 356-3617',1,NULL,NULL,'2015-04-16 15:30:37',NULL,NULL,NULL),(97,'Xavier','Mcleod','ridiculus.mus.Aenean@euismod.com',NULL,'(753) 933-0891',4,NULL,NULL,'2015-08-25 20:01:50',NULL,NULL,NULL),(98,'Montana','Haley','Quisque.ac.libero@SedmolestieSed.ca',NULL,'(489) 982-7358',3,NULL,NULL,'2014-11-20 13:57:55',NULL,NULL,NULL),(99,'Otto','Macdonald','sed@pedeet.co.uk',NULL,'(790) 985-0094',2,NULL,NULL,'2014-10-13 07:18:50',NULL,NULL,NULL),(100,'Hasad','Koch','purus.accumsan.interdum@vel.ca',NULL,'(167) 520-1850',4,NULL,NULL,'2014-10-22 05:24:15',NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_events`
--

DROP TABLE IF EXISTS `users_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_events`
--

LOCK TABLES `users_events` WRITE;
/*!40000 ALTER TABLE `users_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_events` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-30 10:21:30
