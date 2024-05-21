-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: vagnertest
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add model1',7,'add_model1'),(26,'Can change model1',7,'change_model1'),(27,'Can delete model1',7,'delete_model1'),(28,'Can view model1',7,'view_model1'),(29,'Can add photoes model1',8,'add_photoesmodel1'),(30,'Can change photoes model1',8,'change_photoesmodel1'),(31,'Can delete photoes model1',8,'delete_photoesmodel1'),(32,'Can view photoes model1',8,'view_photoesmodel1'),(33,'Can add model2',9,'add_model2'),(34,'Can change model2',9,'change_model2'),(35,'Can delete model2',9,'delete_model2'),(36,'Can view model2',9,'view_model2'),(37,'Can add photoes model2',10,'add_photoesmodel2'),(38,'Can change photoes model2',10,'change_photoesmodel2'),(39,'Can delete photoes model2',10,'delete_photoesmodel2'),(40,'Can view photoes model2',10,'view_photoesmodel2'),(41,'Can add photoes big',8,'add_photoesbig'),(42,'Can change photoes big',8,'change_photoesbig'),(43,'Can delete photoes big',8,'delete_photoesbig'),(44,'Can view photoes big',8,'view_photoesbig'),(45,'Can add photoes small',10,'add_photoessmall'),(46,'Can change photoes small',10,'change_photoessmall'),(47,'Can delete photoes small',10,'delete_photoessmall'),(48,'Can view photoes small',10,'view_photoessmall'),(49,'Can add source',11,'add_source'),(50,'Can change source',11,'change_source'),(51,'Can delete source',11,'delete_source'),(52,'Can view source',11,'view_source'),(53,'Can add thumbnail',12,'add_thumbnail'),(54,'Can change thumbnail',12,'change_thumbnail'),(55,'Can delete thumbnail',12,'delete_thumbnail'),(56,'Can view thumbnail',12,'view_thumbnail'),(57,'Can add thumbnail dimensions',13,'add_thumbnaildimensions'),(58,'Can change thumbnail dimensions',13,'change_thumbnaildimensions'),(59,'Can delete thumbnail dimensions',13,'delete_thumbnaildimensions'),(60,'Can view thumbnail dimensions',13,'view_thumbnaildimensions'),(61,'Can add clipboard',14,'add_clipboard'),(62,'Can change clipboard',14,'change_clipboard'),(63,'Can delete clipboard',14,'delete_clipboard'),(64,'Can view clipboard',14,'view_clipboard'),(65,'Can add clipboard item',15,'add_clipboarditem'),(66,'Can change clipboard item',15,'change_clipboarditem'),(67,'Can delete clipboard item',15,'delete_clipboarditem'),(68,'Can view clipboard item',15,'view_clipboarditem'),(69,'Can add file',16,'add_file'),(70,'Can change file',16,'change_file'),(71,'Can delete file',16,'delete_file'),(72,'Can view file',16,'view_file'),(73,'Can add Folder',17,'add_folder'),(74,'Can change Folder',17,'change_folder'),(75,'Can delete Folder',17,'delete_folder'),(76,'Can view Folder',17,'view_folder'),(77,'Can use directory listing',17,'can_use_directory_listing'),(78,'Can add folder permission',18,'add_folderpermission'),(79,'Can change folder permission',18,'change_folderpermission'),(80,'Can delete folder permission',18,'delete_folderpermission'),(81,'Can view folder permission',18,'view_folderpermission'),(82,'Can add image',19,'add_image'),(83,'Can change image',19,'change_image'),(84,'Can delete image',19,'delete_image'),(85,'Can view image',19,'view_image'),(86,'Can add thumbnail option',20,'add_thumbnailoption'),(87,'Can change thumbnail option',20,'change_thumbnailoption'),(88,'Can delete thumbnail option',20,'delete_thumbnailoption'),(89,'Can view thumbnail option',20,'view_thumbnailoption');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (2,'pbkdf2_sha256$600000$sOEBRdLqGRsggJhX7abYT8$4LE5F9/1jHtW+TJDpTFxXDT6r5wn4HoAGvDD1YSsXXo=','2024-05-20 08:14:14.198021',1,'andreymazo','','','',1,1,'2024-05-20 08:13:47.983137');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-20 08:15:45.379992','1','Model1 object (1)',1,'[{\"added\": {}}]',7,2),(2,'2024-05-20 08:15:57.586201','1','Model 1 with name 1',1,'[{\"added\": {}}]',8,2),(3,'2024-05-20 08:16:07.579192','2','Model 1 with name 1',1,'[{\"added\": {}}]',8,2),(4,'2024-05-20 08:16:17.116632','3','Model 1 with name 1',1,'[{\"added\": {}}]',8,2),(5,'2024-05-21 09:04:10.696352','1','Model2 object (1)',1,'[{\"added\": {}}]',9,2),(6,'2024-05-21 09:04:23.818808','1','Model1 object (1)',3,'',7,2),(7,'2024-05-21 09:04:37.872412','2','Model1 object (2)',1,'[{\"added\": {}}]',7,2),(8,'2024-05-21 09:06:07.355325','1','SmallSeaCreatures',1,'[{\"added\": {}}]',10,2),(9,'2024-05-21 09:08:59.887551','1','SmallSeaCreatures',2,'[]',10,2),(10,'2024-05-21 09:09:54.058772','2','SmallSeaCreatures',1,'[{\"added\": {}}]',10,2),(11,'2024-05-21 09:10:24.318712','4','SmallSeaCreatures',1,'[{\"added\": {}}]',10,2),(12,'2024-05-21 09:13:14.392746','5','SmallSeaCreatures path: photoes2/crab_small3.jpg',1,'[{\"added\": {}}]',10,2),(13,'2024-05-21 09:13:56.180368','6','SmallSeaCreatures path: photoes2/lezh_small1_CptG7XF.jpeg',1,'[{\"added\": {}}]',10,2),(14,'2024-05-21 09:14:29.574633','7','SmallSeaCreatures path: photoes2/crab3_small.jpg',1,'[{\"added\": {}}]',10,2),(15,'2024-05-21 09:17:18.344017','4','SeaCreatures path: photoes1/karas1_big.jpg',1,'[{\"added\": {}}]',8,2),(16,'2024-05-21 09:17:27.373053','5','SeaCreatures path: photoes1/crab_big2.jpg',1,'[{\"added\": {}}]',8,2),(17,'2024-05-21 09:44:19.092738','4','SeaCreatures path: photoes1/karas1_big.jpg',3,'',8,2),(18,'2024-05-21 09:44:30.751667','6','SeaCreatures path: photoes1/karas1_big_s7TEOwf.jpg',1,'[{\"added\": {}}]',8,2),(19,'2024-05-21 09:44:37.745185','5','SeaCreatures path: photoes1/crab_big2.jpg',3,'',8,2),(20,'2024-05-21 09:45:52.804038','7','SeaCreatures path: photoes1/crab_big2_lhGbQCX.jpg',1,'[{\"added\": {}}]',8,2),(21,'2024-05-21 09:46:44.363655','7','SmallSeaCreatures path: photoes2/crab3_small.jpg',3,'',10,2),(22,'2024-05-21 09:46:47.702120','6','SmallSeaCreatures path: photoes2/lezh_small1_CptG7XF.jpeg',3,'',10,2),(23,'2024-05-21 09:46:50.924658','5','SmallSeaCreatures path: photoes2/crab_small3.jpg',3,'',10,2),(24,'2024-05-21 09:46:53.939264','4','SmallSeaCreatures path: photoes2/crab_small2.jpg',3,'',10,2),(25,'2024-05-21 09:46:56.600857','2','SmallSeaCreatures path: photoes2/karas_small1.jpg',3,'',10,2),(26,'2024-05-21 09:46:59.428049','1','SmallSeaCreatures path: photoes2/karas_small3.jpeg',3,'',10,2),(27,'2024-05-21 09:47:23.322315','2','SmallSeaCreatures',1,'[{\"added\": {}}]',9,2),(28,'2024-05-21 09:47:32.987935','2','SmallSeaCreatures',3,'',9,2),(29,'2024-05-21 09:57:23.244832','8','SmallSeaCreatures path: photoes2/karas_small1_IzRWAXQ.jpg',1,'[{\"added\": {}}]',10,2),(30,'2024-05-21 10:04:37.480317','9','SmallSeaCreatures path: photoes2/karas_small2jpeg.jpg',1,'[{\"added\": {}}]',10,2),(31,'2024-05-21 10:04:46.245319','10','SmallSeaCreatures path: photoes2/crab_small1.jpeg',1,'[{\"added\": {}}]',10,2),(32,'2024-05-21 10:04:56.198307','11','SmallSeaCreatures path: photoes2/crab_small3_6jfDTDi.jpg',1,'[{\"added\": {}}]',10,2),(33,'2024-05-21 10:05:14.793287','12','SmallSeaCreatures path: photoes2/crab_small2_vuPOOAY.jpg',1,'[{\"added\": {}}]',10,2),(34,'2024-05-21 10:05:28.344067','13','SmallSeaCreatures path: photoes2/lezh_small1_RKiINyy.jpeg',1,'[{\"added\": {}}]',10,2),(35,'2024-05-21 10:05:46.571598','8','SeaCreatures path: photoes1/karas1_big.jpg',1,'[{\"added\": {}}]',8,2),(36,'2024-05-21 10:05:54.339061','9','SeaCreatures path: photoes1/crab_big2.jpg',1,'[{\"added\": {}}]',8,2),(37,'2024-05-21 10:06:04.098562','10','SeaCreatures path: photoes1/crab_big2_WQVQ2r9.jpg',1,'[{\"added\": {}}]',8,2),(38,'2024-05-21 10:06:10.711156','11','SeaCreatures path: photoes1/karas1_big_ymABSV6.jpg',1,'[{\"added\": {}}]',8,2),(39,'2024-05-21 10:10:06.090417','11','SeaCreatures path: photoes1/karas1_big_ymABSV6.jpg',3,'',8,2),(40,'2024-05-21 10:10:09.598250','10','SeaCreatures path: photoes1/crab_big2_WQVQ2r9.jpg',3,'',8,2),(41,'2024-05-21 10:10:27.658601','9','SeaCreatures path: photoes1/crab_big2.jpg',3,'',8,2),(42,'2024-05-21 10:10:41.294488','6','SeaCreatures path: photoes1/karas1_big_s7TEOwf.jpg',3,'',8,2),(43,'2024-05-21 10:41:30.394093','12','SeaCreatures path: photoes1/crab_big1.jpeg',1,'[{\"added\": {}}]',8,2),(44,'2024-05-21 10:41:41.461888','13','SeaCreatures path: photoes1/crab_big3.jpg',1,'[{\"added\": {}}]',8,2),(45,'2024-05-21 10:43:47.407338','14','SeaCreatures path: photoes1/lezh_big1.jpeg',1,'[{\"added\": {}}]',8,2),(46,'2024-05-21 10:45:00.401395','15','SeaCreatures path: photoes1/karas_big2.jpeg',1,'[{\"added\": {}}]',8,2),(47,'2024-05-21 12:01:39.460678','12','SmallSeaCreatures path: photoes2/crab_small2_vuPOOAY.jpg',3,'',10,2),(48,'2024-05-21 12:02:11.093186','14','SmallSeaCreatures path: photoes2/crab_small2_7nbWIyk.jpg',1,'[{\"added\": {}}]',10,2),(49,'2024-05-21 12:03:02.967507','14','SmallSeaCreatures path: photoes2/crab_small2_7nbWIyk.jpg',3,'',10,2),(50,'2024-05-21 12:03:42.700185','15','SmallSeaCreatures path: photoes2/crab_small2_jzIs0F0.jpg',1,'[{\"added\": {}}]',10,2),(51,'2024-05-21 12:06:27.713461','15','SmallSeaCreatures path: photoes2/crab_small2_jzIs0F0.jpg',3,'',10,2),(52,'2024-05-21 12:07:45.694855','16','SmallSeaCreatures path: photoes2/crab_small2_fQ9Dfbo.jpg',1,'[{\"added\": {}}]',10,2),(53,'2024-05-21 12:07:56.491524','16','SeaCreatures path: photoes1/crab_big2_m5LVW4y.jpg',1,'[{\"added\": {}}]',8,2),(54,'2024-05-21 12:09:09.552826','16','SeaCreatures path: photoes1/crab_big2_m5LVW4y.jpg',3,'',8,2),(55,'2024-05-21 12:10:41.889647','7','SeaCreatures path: photoes1/crab_big2_lhGbQCX.jpg',3,'',8,2),(56,'2024-05-21 12:10:51.657250','16','SmallSeaCreatures path: photoes2/crab_small2_fQ9Dfbo.jpg',3,'',10,2),(57,'2024-05-21 12:11:40.716558','10','SmallSeaCreatures path: photoes2/crab_small1.jpeg',3,'',10,2),(58,'2024-05-21 12:26:37.973004','12','SeaCreatures path: photoes1/crab_big1.jpeg',3,'',8,2),(59,'2024-05-21 12:38:06.620528','13','SeaCreatures path: photoes1/crab_big3.jpg',3,'',8,2),(60,'2024-05-21 12:38:10.196396','14','SeaCreatures path: photoes1/lezh_big1.jpeg',3,'',8,2),(61,'2024-05-21 12:38:18.409941','15','SeaCreatures path: photoes1/karas_big2.jpeg',3,'',8,2),(62,'2024-05-21 12:39:00.374935','9','SeaCreatures path: photoes1/karas_big2_uRAD8TD.jpeg',1,'[{\"added\": {}}]',8,2),(63,'2024-05-21 12:39:28.518986','10','SeaCreatures path: photoes1/crab_big3_0XHXvvX.jpg',1,'[{\"added\": {}}]',8,2),(64,'2024-05-21 12:39:47.959472','11','SeaCreatures path: photoes1/lezh_big1_5DnmbWN.jpeg',1,'[{\"added\": {}}]',8,2),(65,'2024-05-21 12:41:26.127614','14','SmallSeaCreatures path: photoes2/crab_small1_d4we9Jp.jpeg',1,'[{\"added\": {}}]',10,2),(66,'2024-05-21 12:41:37.606682','12','SeaCreatures path: photoes1/crab_big1_kEkk5gz.jpeg',1,'[{\"added\": {}}]',8,2),(67,'2024-05-21 12:41:49.713110','13','SeaCreatures path: photoes1/crab_big2_9UJpWGu.jpg',1,'[{\"added\": {}}]',8,2),(68,'2024-05-21 12:42:04.271517','15','SmallSeaCreatures path: photoes2/crab_small2_5rRbtMw.jpg',1,'[{\"added\": {}}]',10,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(11,'easy_thumbnails','source'),(12,'easy_thumbnails','thumbnail'),(13,'easy_thumbnails','thumbnaildimensions'),(14,'filer','clipboard'),(15,'filer','clipboarditem'),(16,'filer','file'),(17,'filer','folder'),(18,'filer','folderpermission'),(19,'filer','image'),(20,'filer','thumbnailoption'),(6,'sessions','session'),(7,'vagnertest','model1'),(9,'vagnertest','model2'),(8,'vagnertest','photoesbig'),(10,'vagnertest','photoessmall');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-20 07:15:36.927846'),(2,'auth','0001_initial','2024-05-20 07:15:38.286613'),(3,'admin','0001_initial','2024-05-20 07:15:38.542296'),(4,'admin','0002_logentry_remove_auto_add','2024-05-20 07:15:38.553542'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-20 07:15:38.564090'),(6,'contenttypes','0002_remove_content_type_name','2024-05-20 07:15:38.687915'),(7,'auth','0002_alter_permission_name_max_length','2024-05-20 07:15:38.799314'),(8,'auth','0003_alter_user_email_max_length','2024-05-20 07:15:38.826455'),(9,'auth','0004_alter_user_username_opts','2024-05-20 07:15:38.839511'),(10,'auth','0005_alter_user_last_login_null','2024-05-20 07:15:38.926887'),(11,'auth','0006_require_contenttypes_0002','2024-05-20 07:15:38.932980'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-20 07:15:38.944725'),(13,'auth','0008_alter_user_username_max_length','2024-05-20 07:15:39.066194'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-20 07:15:39.179719'),(15,'auth','0010_alter_group_name_max_length','2024-05-20 07:15:39.205035'),(16,'auth','0011_update_proxy_permissions','2024-05-20 07:15:39.216174'),(17,'auth','0012_alter_user_first_name_max_length','2024-05-20 07:15:39.328780'),(18,'sessions','0001_initial','2024-05-20 07:15:39.400638'),(19,'vagnertest','0001_initial','2024-05-20 08:01:55.319941'),(20,'vagnertest','0002_alter_photoesmodel1_model1','2024-05-20 08:04:01.154299'),(21,'vagnertest','0003_model2_alter_photoesmodel1_image_photoesmodel2','2024-05-21 09:01:27.371301'),(22,'vagnertest','0004_alter_photoesmodel1_model1','2024-05-21 10:00:10.589818'),(23,'vagnertest','0005_alter_photoesmodel2_model2','2024-05-21 10:01:18.497313'),(24,'vagnertest','0006_rename_photoesmodel1_photoesbig_and_more','2024-05-21 10:03:36.459127'),(25,'easy_thumbnails','0001_initial','2024-05-21 12:48:34.057410'),(26,'easy_thumbnails','0002_thumbnaildimensions','2024-05-21 12:48:34.226576'),(27,'filer','0001_initial','2024-05-21 12:48:36.265442'),(28,'filer','0002_auto_20150606_2003','2024-05-21 12:48:36.279559'),(29,'filer','0003_thumbnailoption','2024-05-21 12:48:36.330120'),(30,'filer','0004_auto_20160328_1434','2024-05-21 12:48:36.442518'),(31,'filer','0005_auto_20160623_1425','2024-05-21 12:48:36.468367'),(32,'filer','0006_auto_20160623_1627','2024-05-21 12:48:36.599224'),(33,'filer','0007_auto_20161016_1055','2024-05-21 12:48:36.609580'),(34,'filer','0008_auto_20171117_1313','2024-05-21 12:48:36.623892'),(35,'filer','0009_auto_20171220_1635','2024-05-21 12:48:36.778672'),(36,'filer','0010_auto_20180414_2058','2024-05-21 12:48:36.795800'),(37,'filer','0011_auto_20190418_0137','2024-05-21 12:48:37.012410'),(38,'filer','0012_file_mime_type','2024-05-21 12:48:37.085371'),(39,'filer','0013_image_width_height_to_float','2024-05-21 12:48:37.349437'),(40,'filer','0014_folder_permission_choices','2024-05-21 12:48:37.391902'),(41,'filer','0015_alter_file_owner_alter_file_polymorphic_ctype_and_more','2024-05-21 12:48:37.420768'),(42,'filer','0016_alter_folder_index_together_remove_folder_level_and_more','2024-05-21 12:48:37.667242'),(43,'filer','0017_image__transparent','2024-05-21 12:48:37.726601'),(44,'vagnertest','0007_auto_20240521_1343','2024-05-21 13:46:26.002737'),(45,'vagnertest','0008_auto_20240521_1348','2024-05-21 13:49:03.019444'),(46,'vagnertest','0009_auto_20240521_1351','2024-05-21 13:51:29.610052');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('yntp4w8ukfnsftkeul8fmbd9p1t2g161','.eJxVjDsOwjAQBe_iGlnKxl9Kes5geXe9OIAcKU4qxN0hUgpo38y8l0p5W2vaelnSxOqsQJ1-N8z0KG0HfM_tNmua27pMqHdFH7Tr68zleTncv4Oae_3W3kEAC4wh2Og5giMzOGbK6J0xOYpEAZFBihFnSxGwSKMXxFG8J_X-AOMeOL0:1s8y9u:fn-Y_hkN_8EoNwsmh8WGs-o-iX-G0KpVL0IhRhONmQk','2024-06-03 08:14:14.204283');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int NOT NULL,
  `width` int unsigned DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`),
  CONSTRAINT `easy_thumbnails_thumbnaildimensions_chk_1` CHECK ((`width` >= 0)),
  CONSTRAINT `easy_thumbnails_thumbnaildimensions_chk_2` CHECK ((`height` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_clipboard` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `clipboard_id` int NOT NULL,
  `file_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_file` (
  `id` int NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `polymorphic_ctype_id` int DEFAULT NULL,
  `mime_type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_folder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `owner_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_folderpermission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` smallint NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint DEFAULT NULL,
  `can_read` smallint DEFAULT NULL,
  `can_add_children` smallint DEFAULT NULL,
  `folder_id` int DEFAULT NULL,
  `group_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int NOT NULL,
  `_height` double DEFAULT NULL,
  `_width` double DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  `_transparent` tinyint(1) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagnertest_model1`
--

DROP TABLE IF EXISTS `vagnertest_model1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagnertest_model1` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_model1`
--

LOCK TABLES `vagnertest_model1` WRITE;
/*!40000 ALTER TABLE `vagnertest_model1` DISABLE KEYS */;
INSERT INTO `vagnertest_model1` VALUES (2,'SeaCreatures');
/*!40000 ALTER TABLE `vagnertest_model1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagnertest_model2`
--

DROP TABLE IF EXISTS `vagnertest_model2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagnertest_model2` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_model2`
--

LOCK TABLES `vagnertest_model2` WRITE;
/*!40000 ALTER TABLE `vagnertest_model2` DISABLE KEYS */;
INSERT INTO `vagnertest_model2` VALUES (1,'SmallSeaCreatures');
/*!40000 ALTER TABLE `vagnertest_model2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagnertest_photoesbig`
--

DROP TABLE IF EXISTS `vagnertest_photoesbig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagnertest_photoesbig` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `model1_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vagnertest_photoesmo_model1_id_a819b1c4_fk_vagnertes` (`model1_id`),
  CONSTRAINT `vagnertest_photoesmo_model1_id_a819b1c4_fk_vagnertes` FOREIGN KEY (`model1_id`) REFERENCES `vagnertest_model1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_photoesbig`
--

LOCK TABLES `vagnertest_photoesbig` WRITE;
/*!40000 ALTER TABLE `vagnertest_photoesbig` DISABLE KEYS */;
INSERT INTO `vagnertest_photoesbig` VALUES (8,'photoes1/karas1_big.jpg',2),(9,'photoes1/karas_big2_uRAD8TD.jpeg',2),(10,'photoes1/crab_big3_0XHXvvX.jpg',2),(11,'photoes1/lezh_big1_5DnmbWN.jpeg',2),(12,'photoes1/crab_big1_kEkk5gz.jpeg',2),(13,'photoes1/crab_big2_9UJpWGu.jpg',2);
/*!40000 ALTER TABLE `vagnertest_photoesbig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vagnertest_photoessmall`
--

DROP TABLE IF EXISTS `vagnertest_photoessmall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vagnertest_photoessmall` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `model2_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vagnertest_photoesmo_model2_id_b1f811f2_fk_vagnertes` (`model2_id`),
  CONSTRAINT `vagnertest_photoesmo_model2_id_b1f811f2_fk_vagnertes` FOREIGN KEY (`model2_id`) REFERENCES `vagnertest_model2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_photoessmall`
--

LOCK TABLES `vagnertest_photoessmall` WRITE;
/*!40000 ALTER TABLE `vagnertest_photoessmall` DISABLE KEYS */;
INSERT INTO `vagnertest_photoessmall` VALUES (8,'photoes2/karas_small1_IzRWAXQ.jpg',1),(9,'photoes2/karas_small2jpeg.jpg',1),(11,'photoes2/crab_small3_6jfDTDi.jpg',1),(13,'photoes2/lezh_small1_RKiINyy.jpeg',1),(14,'photoes2/crab_small1_d4we9Jp.jpeg',1),(15,'photoes2/crab_small2_5rRbtMw.jpg',1);
/*!40000 ALTER TABLE `vagnertest_photoessmall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'vagnertest'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-21 16:52:37
