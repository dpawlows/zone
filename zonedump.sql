-- MySQL dump 10.13  Distrib 5.5.23, for osx10.6 (i386)
--
-- Host: localhost    Database: zone
-- ------------------------------------------------------
-- Server version	5.5.23

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add migration history',8,'add_migrationhistory'),(23,'Can change migration history',8,'change_migrationhistory'),(24,'Can delete migration history',8,'delete_migrationhistory'),(25,'Can add rank',9,'add_rank'),(26,'Can change rank',9,'change_rank'),(27,'Can delete rank',9,'delete_rank'),(28,'Can add person',10,'add_person'),(29,'Can change person',10,'change_person'),(30,'Can delete person',10,'delete_person');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'dpawlows','','','dpawlows@emich.edu','pbkdf2_sha256$10000$8oWY1I77mvRG$Y0xrc3hDOSSe5+MdLjnyypvkd8g7LSsfGWT+yYCUBv0=',1,1,1,'2013-03-09 19:31:26','2013-02-05 01:38:38');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-02-05 01:39:21',1,9,'1','Faculty',1,''),(2,'2013-02-05 01:39:30',1,9,'2','Undergraduate Student',1,''),(3,'2013-02-05 01:39:35',1,9,'3','Graduate Student',1,''),(4,'2013-02-05 01:45:19',1,10,'4','Pawlowski222, Dave222',3,''),(5,'2013-02-05 01:45:19',1,10,'3','Pawlowski22, Dave22',3,''),(6,'2013-02-05 01:45:19',1,10,'2','Pawlowski2, Dave2',3,''),(7,'2013-02-05 18:04:06',1,10,'5','Pawlowski2, Dave2',3,''),(8,'2013-02-06 17:02:24',1,10,'6','p, dave2',3,''),(9,'2013-03-10 18:18:22',1,10,'1','Pawlowski, Dave',2,'Changed university.'),(10,'2013-03-12 12:23:11',1,10,'51','Gurganus, Colin',2,'Changed abstract.'),(11,'2013-03-12 12:36:26',1,10,'51','Gurganus, Colin',2,'Changed presentation.'),(12,'2013-03-13 12:53:04',1,10,'63','Brisbois, Chad',2,'Changed presentation and abstract.'),(13,'2013-03-13 12:58:50',1,10,'13','Pickard, Brendan',2,'Changed housing.'),(14,'2013-03-13 15:26:05',1,10,'68','Vivier, Susan',2,'Changed housing.'),(15,'2013-03-14 13:54:37',1,10,'57','Walsh, Ashley',3,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'migration history','south','migrationhistory'),(9,'rank','register','rank'),(10,'person','register','person');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('12674a266c2d71e300e671406dfec868','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-02-19 18:03:57'),('33f3d271df307c0f9476b8abebd2f561','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-22 16:21:11'),('70018fc6ecd039965c2e7c27c691fcc1','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-02-20 05:05:16'),('99db51a455da1c5722a91276f59b4372','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-02-19 01:39:14'),('a6b1fbddfe945cf05e4825b063b2e45a','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-08 16:18:58'),('aee82eca72d6843d4c7b41bbd2b6761b','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-02-21 00:14:09'),('af55c8298211e88debf1a28fb0d63e9d','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-09 18:52:23'),('b5f748444aa3524b03f0843c8f5d0be7','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-16 02:06:52'),('b6568c765213cd47b80ba3c8767c157f','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-15 20:14:22'),('bdbd7e1ab198e02b781d73c33264bfa5','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-20 14:05:42'),('c08d5125b04f7cb7a90551d128bca8d9','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-23 19:31:26'),('ec8fd0b01be46f7c21062fa53afc2e15','M2I4YjM2OTVlODA2N2E1N2IyODVhNjEzZWVkODM4ZWNkZWFhOGJmODqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-03-17 17:49:51');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_person`
--

DROP TABLE IF EXISTS `register_person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `university` varchar(255) NOT NULL,
  `rank_id` int(11) NOT NULL,
  `housing` tinyint(1) NOT NULL DEFAULT '0',
  `presentation` tinyint(1) NOT NULL DEFAULT '0',
  `abstract` longtext,
  PRIMARY KEY (`id`),
  KEY `register_person_845cd956` (`rank_id`),
  CONSTRAINT `rank_id_refs_id_8d78171c3e8e4c6` FOREIGN KEY (`rank_id`) REFERENCES `register_rank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_person`
--

LOCK TABLES `register_person` WRITE;
/*!40000 ALTER TABLE `register_person` DISABLE KEYS */;
INSERT INTO `register_person` VALUES (1,'Dave','Pawlowski','dpawlows@emich.edu','Eastern Michigan University',1,0,0,''),(7,'Jacob','Smock','jwsmock@mtu.edu','Michigan Technological University',2,0,0,''),(8,'Shannon','Bourke','sbourke@emich.edu','Eastern Michigan University',3,0,0,''),(9,'Steven','Schultz','Sschul15@emich.edu','Eastern Michigan University ',2,0,0,''),(10,'Yunjie','Yang','yjyang@umich.edu','University of Michigan',2,0,0,''),(11,'Abhilash','Kantamneni','akantamn@mtu.edu','MTU',3,0,0,''),(12,'Britney','Blankenship','bfleet@umich.edu','University of Michigan',2,0,0,''),(13,'Brendan','Pickard','bpickard@emich.edu','Eastern Michigan University',2,1,0,''),(14,'Tyler','Plamondon','Tjplamon@mtu.edu','Michigan Technological University',2,0,0,''),(15,'Scott','Saenz','scott.saenz@cmich.edu','Central Michigan University',2,0,0,''),(16,'Stephen','Stassen','sjstasse@mtu.edu','Michigan Tech',2,0,1,'Using Photoacoustic spectroscopy for aerosol research. '),(17,'Emily','Hare','HareEJ1@gcc.edu','Grove City College',2,1,0,''),(18,'Renee','Batzloff','rmbatzlo@mtu.edu','Michigan Technological University',3,0,0,''),(19,'Lauren','Dallachiesa','DallachiesaLA1@gcc.edu','Grove City College',2,1,0,''),(20,'April','Liska','aliska@mix.wvu.edu','West Virginia University',2,1,0,''),(21,'Christopher','Rymph','crymph@umich.edu','University of Michigan',2,0,0,''),(22,'Nico','Wagner','nicowa@umich.edu','University of Michigan',2,0,1,'Title: Beating Conventional Light Microscopy: Two Super Resolution Imaging Techniques\r\n\r\nSubtitle: Stochastic Optical Reconstruction Microscopy (STORM) & Cryo-Electron Tomography (CryoET)\r\n\r\n\r\nAbstract: It has long been established that conventional light microscopy is limited in resolution to about 200 nm. Many biological structures, however, are much smaller than 200 nm and cannot be imaged by conventional microscopes.  STORM takes advantage of labeled fluorescent proteins that can be individually tracked and used to reconstruct images with a resolution in the tens of nanometers. CryoET uses cryo-freezing rather than the traditional method of preparing samples for electron microscopy, allowing samples to be imaged in their native states and with a resolution of up to 2 nm. '),(23,'Anya','Leach','aleach4@mix.wvu.edu','West Virginia University',2,1,0,''),(24,'Viviana ','Nguyen','vnguyen3@mix.wvu.edu','West Virginia University ',2,1,0,''),(25,'Jon','White','jawh@umich.edu','University of Michigan',2,0,0,''),(26,'Sawyer','Hopkins','sshopkin@mtu.edu','Michigan Technological University',2,0,0,''),(27,'Mallory','Fuhst','fuhstm@gmail.com','Grand Valley State University',2,1,1,'Previous studies have found that Ag2Te and Ag2Se thin films possess a large positive magnetoresistance. Our preliminary research with these materials suggests that the surface state effects are significant even in bulk and poly crystal forms at room temperature. If this is the case, Ag2Te and Ag2Se would be practical materials for commercial applications, particularly thermoelectrics. Therefore, we are creating thin films on silicon dioxide crystals to minimize the bulk contributions. The thin films are being created in a vacuum chamber through evaporation deposition. After verifying that the films are Ag2Te and Ag2Se with an electron microscope, we will test their magnetoresistance.'),(28,'Craig','Tenney','ctenney2@mix.wvu.edu','West Virginia University',2,1,0,''),(29,'zachariah','jeter','zachariahbud@gmail.com','West Virginia University',2,1,0,''),(30,'Katherine','Duncan-Chamberlin','kduncanchamberlin13@jcu.edu','John Carroll University',2,0,0,''),(31,'Kathryn','Cox','kmcox@mtu.edu','Michigan Technological University',2,0,0,''),(32,'Walter','Baker','wbaker4@mix.wvu.edu','West Virginia University',2,1,0,''),(33,'Emily','Safron','esafron@rockets.utoledo.edu','The University of Toledo',2,1,0,''),(34,'Logan','Shamberger','lshamber@mix.wvu.edu','West Virginia University',2,1,0,''),(35,'Tessa','Maynard','tmmaynard@mix.wvu.edu','West Virgnia University',2,1,1,'Pulsar Science: Arecibo 327 MHz Drift Scan Processing\r\n\r\n\r\nPulsars are the extremely dense remnants of stellar cores that have survived supernovaexplosions. As they rotate, they emit pulses of radiation. For the past nine years, WVUastronomers have conducted a drift scan using the 305-meter radio telescope at the Arecibo Observatory. This project is part of an effort to process the radio data that was collected, in order to find new pulsars and to test hypotheses about previously known pulsars. Software was developed and used to isolate pieces of radio data for individual pulsars and pulsar candidates.This isolated data were processed by folding the data at the pulsars\' period, in order to reveal the flux densities, or luminosities, of the known pulsars at the survey frequency of 327 MHz. It is hypothesized that the flux densities at 327 MHz will match those predicted by a model based on the known flux densities at 1400 MHz. The results of this experiment allowed us to calibrate the survey sensitivity.'),(36,'Stephen','Mullins','smullin6@mix.wvu.edu','West Virginia University',2,1,0,''),(37,'Greg','Furlich','gdfurlic@mtu.edu','Michigan Technological University',2,0,0,''),(38,'Mark','Soderholm','mark.e.soderholm@gmail.com','WVU',2,1,0,''),(39,'Patrick','Nelson','penelson@mix.wvu.edu','West Virginia University',2,1,0,''),(40,'John','Garbini','garbinij@mail.gvsu.edu','Grand Valley State University',2,1,0,''),(41,'Luke','Kwiatkowski','luke.paul.kwiatkowski@gmail.com','Toledo',2,1,0,''),(42,'Robert','Haining','rchaining@Gmail.com','WVU',2,1,0,''),(43,'Douglas','Hoblet','dhoblet@rockets.utoledo.edu','The university of toledo',2,1,0,''),(44,'Ryan','Salata','rsalata13@jcu.edu','John Carroll university ',2,0,0,''),(45,'Bryan','Scott','bscott14@jcu.edu','John Carroll ',2,0,0,''),(46,'Dan','Guilliams','dguillia@mix.wvu.edu','West Virginia University ',2,1,0,''),(47,'Alexander','Coulter','coultera@umich.edu','University of Michigan',2,0,0,''),(48,'Allen','Ziga','aziga15@jcu.edu','John Carroll University',2,0,0,''),(49,'Celeste','Carruth','cceleste@umich.edu','University of Michigan',2,0,1,'Title: A Monte Carlo Study of a Level II Trigger Cut for the K0TO \r\nExperiment\r\n\r\nAbstract:\r\nThe K0TO experiment is a high energy physics experiment at a particle accelerator in Japan that will study a rare kaon decay. In order to accommodate the high kaon flux, the data acquisition system must quickly discard a high percentage of background events while retaining all signal events. Monte Carlo simulations show that we can effectively separate background and signal events by checking the center of energy radius of incoming events.'),(50,'Nathan','Tehrani','ntehrani@mix.wvu.edu','West Virginia University',2,1,1,'Pulsar Science: Arecibo 327 MHz Drift Scan Processing\r\nNathan Tehrani and Tessa Maynard\r\nWest Virginia University\r\n\r\nMaura McLaughlin – Advisor\r\n\r\n\r\nPulsars are the extremely dense remnants of stellar cores that have survived supernovaexplosions.\r\nAs they rotate, they emit pulses of radiation. For the past nine years, WVUastronomers have\r\nconducted a drift scan using the 305-meter radio telescope at the Arecibo Observatory. This project\r\nis part of an effort to process the radio data that was collected, in order to find new pulsars and to\r\ntest hypotheses about previously known pulsars. Software was developed and used to isolate pieces\r\nof radio data for individual pulsars and pulsar candidates.This isolated data were processed by\r\nfolding the data at the pulsars\' period, in order to reveal the flux densities, or luminosities, of the\r\nknown pulsars at the survey frequency of 327 MHz. It is hypothesized that the flux densities at 327\r\nMHz will match those predicted by a model based on the known flux densities at 1400 MHz. The\r\nresults of this experiment allowed us to calibrate the survey sensitivity.\r\n'),(51,'Colin','Gurganus','colin.gurganus@gmail.com','Michigan Tech',3,0,1,'Fast Imaging of Freezing Drops: Studies of Contact Nucleation\r\n\r\nColin Gurganus1,2, Alexander B. Kostinski1,2, Raymond A. Shaw1,2\r\n1. Department of Physics, Michigan Technological University\r\n2. Department of Atmospheric Sciences, Michigan Technological University\r\nUnderstanding cloud processes represents a cornerstone of the NASA Earth Science Mission. Sophisticated remote sensing satellites in the A-Train constellation monitor cloud structure and microphysical properties on a global scale. Decades of these observations aid in the development of parameterizations for climate models to help understand variability in the atmosphere. Despite the complexities of these tools, a poor understanding of microphysical cloud processes limits the fidelity of climate and weather models at all scales. Our efforts are aimed at better understanding the phase transitions of supercooled cloud droplets, which can initiate precipitation processes and drive cloud turbulent mixing through the release of latent heat. The nucleation of these droplets in the lower troposphere is dominated by the heterogeneous mode due to the abundance of natural and anthropogenic aerosol catalyst particles. Disentangling complex droplet-aerosol interactions in the laboratory is important for correct parameterization in cloud microphysical models.\r\nHeterogeneous nucleation is further complicated by the various mechanisms in which individual aerosol particles may induce crystallization. The relevant roles of the two primary pathways, aerosol-droplet contact (contact mode) and nucleation by an immersed aerosol (immersion mode), remains an open question. An interpretation of the difference between the contact and immersion modes is based on the energy barrier for nucleation at a three-phase and two-phase interface, respectively. Previous laboratory experiments have noted a preference for nucleation in the contact mode, with freezing temperatures 2-5K warmer than in the immersion mode. Contact nucleation remains enigmatic and our approach utilizes simple experiments to disentangle several competing hypothesizes. We employ high speed imaging of supercooled water drops, to determine nucleation site spatial statistics on the droplet-substrate plane. To that end, the focus of our initial study was droplets in a spherical cap geometry resting on homogeneous and atomically smooth silicon substrates. Radial distributions of the nucleation sites in these slowly cooled systems revealed no preference for nucleation at the three-phase contact line, a surprising null result [1].\r\nOne hypothesis for this conflicting observation is the presence of a thermal gradient within droplets experiencing differential cooling, which can be induced by rapid cooling in cloud updrafts. Our initial experiment was designed to limit this effect, but here we report on the modification of our experiment to examine these parameters in more detail. Initial results with this apparatus agree with our previous observations suggesting that the lower energy barrier to nucleation in some contact studies may result from a nanometer scale “point-like” interaction. It remains unclear to what extent morphology, texture and size influence the nucleation rate in other non-idealized systems.\r\n1. C. Gurganus, A. B. Konstiski and R. A. Shaw (2011). \"Fast Imaging of Freezing Drops: No Preference for Nucleation at the Contact Line.\" The Journal of Physical Chemistry Letters 2(12): 1449-1454.'),(52,'Nathan','Tripp','trippna@mail.gvsu.edu','Grand Valley State University',2,1,1,'Title: \"An Analysis Of The Effects Of Massive Rotating Bodies On Orbits In The Weak Field\"\r\n\r\nAbstract: \"Newtonian theories of gravity fail to describe certain minute but detectable phenomena. The existence of such phenomena spurred the development of improved theories of gravitation, the most popular of which is general relativity. This project involved mathematical examination of various implications of general relativity, including the perihelion precession of orbits, de Sitter precession, and Lense-Thirring precession. Expressions for the first two quantities were derived using the Schwarzschild metric, while the Lense-Thirring precession was derived using a low angular momentum limit of the Kerr metric.”'),(53,'Katie','Kruk','krukk@mail.gvsu.edu','Grand Valley State',2,1,0,''),(54,'Angus','MacAskill','amacaskill13@jcu.edu','John Carroll University',2,0,0,''),(55,'Kevin','Belcik','kevin.belcik@gmail.com','University of Toledo',2,0,0,''),(56,'Ben','Malec','bjmalec@mtu.edu','Michigan Tech',2,0,0,''),(58,'Niki','Grishkevich','ngrishke@emich.edu','Eastern Michigan University',2,0,0,''),(59,'Elliot','MacNeille','macnelli@umich.edu','University of MIchigan',2,1,0,''),(60,'Nathaniel','Franklin','nfrankl2@emich.edu','Eastern Michigan University',3,0,0,''),(61,'Danielle','Harris','harrdani92@gmail.com','Grand Valley State University',2,1,0,''),(62,'Cassie','Noffsinger','cnoffsi1@emich.edu','Eastern Michigan University',2,0,0,''),(63,'Chad','Brisbois','cbrisboi@emich.edu','Eastern Michigan University',2,0,1,'Proof of Concept for a Simple Smartphone Sky Monitor\r\n\r\nWe present a novel approach of obtaining a cloud and bright sky monitor by using a standard smartphone with a downloadable app. The addition of an inexpensive fisheye lens can extend the angular range to the entire sky visible above the device. A preliminary proof of concept image shows an optical limit of about visual magnitude 5 for a 70-second exposure. Support science objectives include cloud monitoring in a manner similar to the more expensive cloud monitors in use at most major astronomical observatories, making expensive observing time at these observatories more efficient. Primary science objectives include bright meteor tracking, bright comet tracking, and monitoring the variability of bright stars. Citizen science objectives include crowd sourcing of many networked sky monitoring smartphones typically in broader support of many of the primary science goals. The deployment of a citizen smartphone array in an active science mode could leverage the sky monitoring data infrastructure to track other non-visual science opportunities, including monitoring the Earth\'s magnetic field for the effects of solar flares and exhaustive surface coverage for strong seismic events.'),(64,'DJ','Wagner','djwagner@gcc.edu','Grove City College',1,0,0,''),(65,'Justin','Hodges','jhodge10@emich.edu','Eastern Michigan University',2,1,1,'Characterization of an Ion Gun for Use on Extraterrestrial Projects\r\n\r\nThe EMU Plasma Lab ion gun, built by graduate students, is a tool that produces a beam of positively charged particles. Once the gun is characterized, it can be used to model solar wind and how high-speed solar wind particles sputter solid materials from the surface of various rocks, which is a process that is interesting to NASA in the study of such interactions on Mercury. Characterization of the beam includes measurement of the beam energy, current, diameter, and intensity profile. The construction and design of a Faraday probe, which will be used to analyze the ion beam, as well as the operation of, and applications for, the ion gun will also be explored.'),(66,'Caliph ','Lebrun','clebrun@emich.edu','Eastern Michigan University',2,0,1,'High Altitude Balloon Project.\r\nA High Altitude Balloon (HAB)project requires designing, building, testing, and launching a high altitude balloon.  The HAB provides a platform to measure the temperature, pressure, and humidity of the atmosphere during the flight of the balloon.  The project will include the measurement of acceleration and position in order to determine the location of different regions of the atmosphere, including the location of the tropopause.  Video and picture taking capabilities will be included on the payload in order to record the voyage.  This project is expected to yield data relevant to issues concerning weather, atmospheric conditions, and to serve as an introductory exploration of near space.'),(67,'Darcy','Jacobson','Dmjacobs@mtu.edu','Michigan Technological University',2,0,0,''),(68,'Susan','Vivier','svivier@emich.edu','EMU',2,1,0,''),(69,'Andrew','Havranek','ahavranek@emich.edu','Eastern Michigan University',2,0,1,'High Altitude Ballooning - A Comprehensive Approach\r\n\r\nThe objective of the proposed research is to create a data profile of atmospheric conditions over SE Michigan by way of a helium high-altitude balloon. The team will design and fabricate a set of payloads and their components, in compliance with FAA regulations, that will measure select parameters during the entire ight. The main payload is expected to reach an altitude of nearly 30km (19 miles) above sea-level with instrumentation that will collect temperature, pressure, humidity, acceleration, and GPS coordinate data. The information will be logged on-board, while a radio frequency (RF) transmitter simultaneously sends data packets to a command station on the ground. A target has been set to maintain radio contact with the vessel for of at least 80% of the mission. To help ensure the recovery of the payload,\r\na secondary GPS unit will send coordinates through an alternate information pathway. A\r\npair of cameras will capture still frames from di?erent perspectives in the lower deck of the payload, while a third camera records video. In addition to the main instrument payload, a smaller secondary payload will be deployed at a specific altitude and tracked via GPS. This\r\nis a training exercise that will add a degree of complexity to the electronics programming and also provide a basis for friendly competition among rival colleagues. ');
/*!40000 ALTER TABLE `register_person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register_rank`
--

DROP TABLE IF EXISTS `register_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `register_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register_rank`
--

LOCK TABLES `register_rank` WRITE;
/*!40000 ALTER TABLE `register_rank` DISABLE KEYS */;
INSERT INTO `register_rank` VALUES (1,'Faculty'),(2,'Undergraduate Student'),(3,'Graduate Student');
/*!40000 ALTER TABLE `register_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `south_migrationhistory`
--

DROP TABLE IF EXISTS `south_migrationhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `south_migrationhistory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_name` varchar(255) NOT NULL,
  `migration` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `south_migrationhistory`
--

LOCK TABLES `south_migrationhistory` WRITE;
/*!40000 ALTER TABLE `south_migrationhistory` DISABLE KEYS */;
INSERT INTO `south_migrationhistory` VALUES (1,'register','0001_initial','2013-02-05 01:38:42'),(2,'register','0002_auto__del_field_person_competition','2013-02-05 14:35:10');
/*!40000 ALTER TABLE `south_migrationhistory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-14  9:58:53
