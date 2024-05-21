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
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add source',7,'add_source'),(26,'Can change source',7,'change_source'),(27,'Can delete source',7,'delete_source'),(28,'Can view source',7,'view_source'),(29,'Can add thumbnail',8,'add_thumbnail'),(30,'Can change thumbnail',8,'change_thumbnail'),(31,'Can delete thumbnail',8,'delete_thumbnail'),(32,'Can view thumbnail',8,'view_thumbnail'),(33,'Can add thumbnail dimensions',9,'add_thumbnaildimensions'),(34,'Can change thumbnail dimensions',9,'change_thumbnaildimensions'),(35,'Can delete thumbnail dimensions',9,'delete_thumbnaildimensions'),(36,'Can view thumbnail dimensions',9,'view_thumbnaildimensions'),(37,'Can add clipboard',10,'add_clipboard'),(38,'Can change clipboard',10,'change_clipboard'),(39,'Can delete clipboard',10,'delete_clipboard'),(40,'Can view clipboard',10,'view_clipboard'),(41,'Can add clipboard item',11,'add_clipboarditem'),(42,'Can change clipboard item',11,'change_clipboarditem'),(43,'Can delete clipboard item',11,'delete_clipboarditem'),(44,'Can view clipboard item',11,'view_clipboarditem'),(45,'Can add file',12,'add_file'),(46,'Can change file',12,'change_file'),(47,'Can delete file',12,'delete_file'),(48,'Can view file',12,'view_file'),(49,'Can add Folder',13,'add_folder'),(50,'Can change Folder',13,'change_folder'),(51,'Can delete Folder',13,'delete_folder'),(52,'Can view Folder',13,'view_folder'),(53,'Can use directory listing',13,'can_use_directory_listing'),(54,'Can add folder permission',14,'add_folderpermission'),(55,'Can change folder permission',14,'change_folderpermission'),(56,'Can delete folder permission',14,'delete_folderpermission'),(57,'Can view folder permission',14,'view_folderpermission'),(58,'Can add image',15,'add_image'),(59,'Can change image',15,'change_image'),(60,'Can delete image',15,'delete_image'),(61,'Can view image',15,'view_image'),(62,'Can add thumbnail option',16,'add_thumbnailoption'),(63,'Can change thumbnail option',16,'change_thumbnailoption'),(64,'Can delete thumbnail option',16,'delete_thumbnailoption'),(65,'Can view thumbnail option',16,'view_thumbnailoption'),(66,'Can add model1',17,'add_model1'),(67,'Can change model1',17,'change_model1'),(68,'Can delete model1',17,'delete_model1'),(69,'Can view model1',17,'view_model1'),(70,'Can add model2',18,'add_model2'),(71,'Can change model2',18,'change_model2'),(72,'Can delete model2',18,'delete_model2'),(73,'Can view model2',18,'view_model2'),(74,'Can add photoes small',19,'add_photoessmall'),(75,'Can change photoes small',19,'change_photoessmall'),(76,'Can delete photoes small',19,'delete_photoessmall'),(77,'Can view photoes small',19,'view_photoessmall'),(78,'Can add photoes big',20,'add_photoesbig'),(79,'Can change photoes big',20,'change_photoesbig'),(80,'Can delete photoes big',20,'delete_photoesbig'),(81,'Can view photoes big',20,'view_photoesbig');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$Pfkp8GZBOyGKjdH2wxYmJi$rDhcrUNAtZzzDsYulrqkNHJ3oi08FQFThDghkOGXUks=','2024-05-21 16:02:14.130472',1,'andreymazo','','','',1,1,'2024-05-21 16:01:58.078549');
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
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-21 16:03:19.392218','2','crab_small2.jpg',3,'',15,1),(2,'2024-05-21 16:04:28.343575','7','karas1.jpg',3,'',15,1),(3,'2024-05-21 16:07:46.223001','11','karas_small3.jpeg',3,'',15,1),(4,'2024-05-21 16:09:02.574794','1','SeaCreatures',1,'[{\"added\": {}}]',17,1),(5,'2024-05-21 16:09:12.190775','1','SmallSeaCreatures',1,'[{\"added\": {}}]',18,1),(6,'2024-05-21 16:09:57.692597','1','PhotoesBig object (1)',1,'[{\"added\": {}}]',20,1),(7,'2024-05-21 16:10:05.763513','1','PhotoesBig object (1)',2,'[]',20,1),(8,'2024-05-21 16:10:42.969924','2','PhotoesBig object (2)',1,'[{\"added\": {}}]',20,1),(9,'2024-05-21 16:10:52.371687','3','PhotoesBig object (3)',1,'[{\"added\": {}}]',20,1),(10,'2024-05-21 16:13:30.687898','4','SeaCreatures path: karas_big2.jpeg',1,'[{\"added\": {}}]',20,1),(11,'2024-05-21 16:13:40.927106','5','SeaCreatures path: karas1_big.jpg',1,'[{\"added\": {}}]',20,1),(12,'2024-05-21 16:13:48.137513','6','SeaCreatures path: lezh_big1.jpeg',1,'[{\"added\": {}}]',20,1),(13,'2024-05-21 16:14:08.235358','1','SmallSeaCreatures path: lezh_small1.jpeg',1,'[{\"added\": {}}]',19,1),(14,'2024-05-21 16:14:45.792551','1','SmallSeaCreatures path: lezh_small1.jpeg',3,'',19,1),(15,'2024-05-21 16:15:00.321103','2','SmallSeaCreatures path: crab_small1.jpeg',1,'[{\"added\": {}}]',19,1),(16,'2024-05-21 16:16:52.522106','4','SmallSeaCreatures path: crab_small2.jpg',1,'[{\"added\": {}}]',19,1),(17,'2024-05-21 16:17:11.714988','5','SmallSeaCreatures path: crab_small3.jpg',1,'[{\"added\": {}}]',19,1),(18,'2024-05-21 16:17:36.413960','6','SmallSeaCreatures path: karas_small2jpeg.jpg',1,'[{\"added\": {}}]',19,1),(19,'2024-05-21 16:17:57.176950','7','SmallSeaCreatures path: karas_small1.jpg',1,'[{\"added\": {}}]',19,1),(20,'2024-05-21 16:18:04.706922','8','SmallSeaCreatures path: lezh_small1.jpeg',1,'[{\"added\": {}}]',19,1),(21,'2024-05-21 17:03:36.183903','2','SmallSeaCreatures path: crab_small1.jpeg',3,'',19,1),(22,'2024-05-21 17:03:39.879072','4','SmallSeaCreatures path: crab_small2.jpg',3,'',19,1),(23,'2024-05-21 17:03:43.388370','5','SmallSeaCreatures path: crab_small3.jpg',3,'',19,1),(24,'2024-05-21 17:03:46.679854','6','SmallSeaCreatures path: karas_small2jpeg.jpg',3,'',19,1),(25,'2024-05-21 17:03:50.540091','7','SmallSeaCreatures path: karas_small1.jpg',3,'',19,1),(26,'2024-05-21 17:03:54.673518','8','SmallSeaCreatures path: lezh_small1.jpeg',3,'',19,1),(27,'2024-05-21 17:04:00.073376','1','SeaCreatures path: crab_big1.jpeg',3,'',20,1),(28,'2024-05-21 17:04:03.411276','2','SeaCreatures path: crab_big2.jpg',3,'',20,1),(29,'2024-05-21 17:04:06.647946','3','SeaCreatures path: crab_big3.jpg',3,'',20,1),(30,'2024-05-21 17:04:10.496500','4','SeaCreatures path: karas_big2.jpeg',3,'',20,1),(31,'2024-05-21 17:04:13.932105','5','SeaCreatures path: karas1_big.jpg',3,'',20,1),(32,'2024-05-21 17:04:16.877188','6','SeaCreatures path: lezh_big1.jpeg',3,'',20,1),(33,'2024-05-21 17:08:40.436482','9','SmallSeaCreatures path: karas_small1.jpg',1,'[{\"added\": {}}]',19,1),(34,'2024-05-21 17:08:59.899490','7','SeaCreatures path: karas1_big.jpg',1,'[{\"added\": {}}]',20,1),(35,'2024-05-21 17:09:23.943315','8','SeaCreatures path: crab_big1.jpeg',1,'[{\"added\": {}}]',20,1),(36,'2024-05-21 17:09:52.278682','10','SmallSeaCreatures path: crab_small1.jpeg',1,'[{\"added\": {}}]',19,1),(37,'2024-05-21 17:10:10.259576','11','SmallSeaCreatures path: crab_small2.jpg',1,'[{\"added\": {}}]',19,1),(38,'2024-05-21 17:10:25.307702','9','SeaCreatures path: crab_big2.jpg',1,'[{\"added\": {}}]',20,1),(39,'2024-05-21 17:10:42.967928','12','SmallSeaCreatures path: lezh_small1.jpeg',1,'[{\"added\": {}}]',19,1),(40,'2024-05-21 17:11:00.028704','10','SeaCreatures path: lezh_big1.jpeg',1,'[{\"added\": {}}]',20,1),(41,'2024-05-21 17:11:11.411483','11','SeaCreatures path: crab_big3.jpg',1,'[{\"added\": {}}]',20,1),(42,'2024-05-21 17:11:31.679408','13','SmallSeaCreatures path: crab_small3.jpg',1,'[{\"added\": {}}]',19,1),(43,'2024-05-21 17:12:33.319393','12','SeaCreatures path: karas_big2.jpeg',1,'[{\"added\": {}}]',20,1),(44,'2024-05-21 17:12:56.711614','14','SmallSeaCreatures path: karas_small2jpeg.jpg',1,'[{\"added\": {}}]',19,1),(45,'2024-05-21 17:14:47.076037','14','SmallSeaCreatures path: karas_small2jpeg.jpg',3,'',19,1),(46,'2024-05-21 17:14:47.086218','13','SmallSeaCreatures path: crab_small3.jpg',3,'',19,1),(47,'2024-05-21 17:14:47.093904','12','SmallSeaCreatures path: lezh_small1.jpeg',3,'',19,1),(48,'2024-05-21 17:14:47.103914','11','SmallSeaCreatures path: crab_small2.jpg',3,'',19,1),(49,'2024-05-21 17:14:47.113203','10','SmallSeaCreatures path: crab_small1.jpeg',3,'',19,1),(50,'2024-05-21 17:14:47.121370','9','SmallSeaCreatures path: karas_small1.jpg',3,'',19,1),(51,'2024-05-21 17:14:54.731119','12','SeaCreatures path: karas_big2.jpeg',3,'',20,1),(52,'2024-05-21 17:14:54.738037','11','SeaCreatures path: crab_big3.jpg',3,'',20,1),(53,'2024-05-21 17:14:54.744985','10','SeaCreatures path: lezh_big1.jpeg',3,'',20,1),(54,'2024-05-21 17:14:54.751815','9','SeaCreatures path: crab_big2.jpg',3,'',20,1),(55,'2024-05-21 17:14:54.758035','8','SeaCreatures path: crab_big1.jpeg',3,'',20,1),(56,'2024-05-21 17:14:54.765023','7','SeaCreatures path: karas1_big.jpg',3,'',20,1),(57,'2024-05-21 17:16:05.550779','15','SmallSeaCreatures path: None',1,'[{\"added\": {}}]',19,1),(58,'2024-05-21 17:16:20.562861','15','SmallSeaCreatures path: None',3,'',19,1),(59,'2024-05-21 17:16:50.404098','16','SmallSeaCreatures path: None',1,'[{\"added\": {}}]',19,1),(60,'2024-05-21 17:16:57.888839','16','SmallSeaCreatures path: None',2,'[]',19,1),(61,'2024-05-21 17:17:16.764976','17','SmallSeaCreatures path: None',1,'[{\"added\": {}}]',19,1),(62,'2024-05-21 17:18:01.648939','13','SeaCreatures path: None',1,'[{\"added\": {}}]',20,1),(63,'2024-05-21 17:18:26.391544','14','SeaCreatures path: None',1,'[{\"added\": {}}]',20,1),(64,'2024-05-21 17:25:09.980804','15','SeaCreatures path: None',1,'[{\"added\": {}}]',20,1),(65,'2024-05-21 17:25:22.556101','18','SmallSeaCreatures path: None',1,'[{\"added\": {}}]',19,1),(66,'2024-05-21 19:16:20.642071','16','SmallSeaCreatures path: photoes2/crab_small2.jpg',3,'',19,1),(67,'2024-05-21 19:16:20.650634','17','SmallSeaCreatures path: photoes2/karas_small1.jpg',3,'',19,1),(68,'2024-05-21 19:16:20.657879','18','SmallSeaCreatures path: photoes2/lezh_small1.jpeg',3,'',19,1),(69,'2024-05-21 19:16:26.713807','13','SeaCreatures path: photoes1/crab_big2.jpg',3,'',20,1),(70,'2024-05-21 19:16:26.719651','14','SeaCreatures path: photoes1/karas1_big.jpg',3,'',20,1),(71,'2024-05-21 19:16:26.726690','15','SeaCreatures path: photoes1/lezh_big1.jpeg',3,'',20,1),(72,'2024-05-21 19:16:41.016240','1','SeaCreatures path: media/photoes1/crab_big1.jpeg',1,'[{\"added\": {}}]',20,1),(73,'2024-05-21 19:16:56.472132','2','SeaCreatures path: media/photoes1/crab_big2.jpg',1,'[{\"added\": {}}]',20,1),(74,'2024-05-21 19:17:06.581588','3','SeaCreatures path: media/photoes1/crab_big3.jpg',1,'[{\"added\": {}}]',20,1),(75,'2024-05-21 19:17:44.231155','1','SmallSeaCreatures path: media/photoes2/crab3_small.jpg',1,'[{\"added\": {}}]',19,1),(76,'2024-05-21 19:17:53.660919','2','SmallSeaCreatures path: media/photoes2/crab_small2.jpg',1,'[{\"added\": {}}]',19,1),(77,'2024-05-21 19:18:00.000610','3','SmallSeaCreatures path: media/photoes2/crab_small1.jpeg',1,'[{\"added\": {}}]',19,1),(78,'2024-05-21 19:20:23.119350','1','SmallSeaCreatures path: media/photoes2/crab3_small.jpg',3,'',19,1),(79,'2024-05-21 19:20:23.125753','2','SmallSeaCreatures path: media/photoes2/crab_small2.jpg',3,'',19,1),(80,'2024-05-21 19:20:23.133420','3','SmallSeaCreatures path: media/photoes2/crab_small1.jpeg',3,'',19,1),(81,'2024-05-21 19:20:29.109712','1','SeaCreatures path: media/photoes1/crab_big1.jpeg',3,'',20,1),(82,'2024-05-21 19:20:29.115512','2','SeaCreatures path: media/photoes1/crab_big2.jpg',3,'',20,1),(83,'2024-05-21 19:20:29.121222','3','SeaCreatures path: media/photoes1/crab_big3.jpg',3,'',20,1),(84,'2024-05-21 19:20:59.105867','1','SeaCreatures path: photoes1/crab_big1.jpeg',1,'[{\"added\": {}}]',20,1),(85,'2024-05-21 19:21:17.367487','2','SeaCreatures path: photoes1/crab_big2.jpg',1,'[{\"added\": {}}]',20,1),(86,'2024-05-21 19:21:28.507471','3','SeaCreatures path: photoes1/crab_big3.jpg',1,'[{\"added\": {}}]',20,1),(87,'2024-05-21 19:22:02.432890','1','SmallSeaCreatures path: photoes2/crab_small1.jpeg',1,'[{\"added\": {}}]',19,1),(88,'2024-05-21 19:22:09.893932','2','SmallSeaCreatures path: photoes2/crab_small2.jpg',1,'[{\"added\": {}}]',19,1),(89,'2024-05-21 19:22:16.483899','3','SmallSeaCreatures path: photoes2/crab_small3.jpg',1,'[{\"added\": {}}]',19,1),(90,'2024-05-21 20:23:57.456071','4','SmallSeaCreatures path: photoes2/lezh_small1.jpeg',1,'[{\"added\": {}}]',19,1),(91,'2024-05-21 20:24:11.346445','4','SeaCreatures path: photoes1/lezh_big1.jpeg',1,'[{\"added\": {}}]',20,1),(92,'2024-05-21 20:25:01.088519','5','SmallSeaCreatures path: photoes2/karas_small2jpeg.jpg',1,'[{\"added\": {}}]',19,1),(93,'2024-05-21 20:25:11.561909','5','SeaCreatures path: photoes1/karas_big2.jpeg',1,'[{\"added\": {}}]',20,1),(94,'2024-05-21 20:36:29.634018','1','SmallSeaCreatures path: photoes2/crab_small1.jpeg',3,'',19,1),(95,'2024-05-21 20:36:29.641219','2','SmallSeaCreatures path: photoes2/crab_small2.jpg',3,'',19,1),(96,'2024-05-21 20:36:29.647327','3','SmallSeaCreatures path: photoes2/crab_small3.jpg',3,'',19,1),(97,'2024-05-21 20:36:29.654756','4','SmallSeaCreatures path: photoes2/lezh_small1.jpeg',3,'',19,1),(98,'2024-05-21 20:36:29.663323','5','SmallSeaCreatures path: photoes2/karas_small2jpeg.jpg',3,'',19,1),(99,'2024-05-21 20:37:45.936715','1','SmallSeaCreatures path: photoes2/crab_small1.jpeg',1,'[{\"added\": {}}]',19,1),(100,'2024-05-21 20:38:49.604022','2','SmallSeaCreatures path: photoes2/crab_small2.jpg',1,'[{\"added\": {}}]',19,1),(101,'2024-05-21 20:39:36.924265','3','SmallSeaCreatures path: photoes2/crab_small3.jpg',1,'[{\"added\": {}}]',19,1),(102,'2024-05-21 20:40:03.324169','4','SmallSeaCreatures path: photoes2/lezh_small1.jpeg',1,'[{\"added\": {}}]',19,1),(103,'2024-05-21 20:40:22.003348','5','SmallSeaCreatures path: photoes2/karas_small2jpeg.jpg',1,'[{\"added\": {}}]',19,1),(104,'2024-05-21 20:45:09.377075','4','SmallSeaCreatures path: photoes2/lezh_small1.jpeg',3,'',19,1),(105,'2024-05-21 20:45:57.427527','6','SmallSeaCreatures path: photoes2/lezh_small1_Mi3Vb0V.jpeg',1,'[{\"added\": {}}]',19,1),(106,'2024-05-21 20:47:17.640841','5','SmallSeaCreatures path: photoes2/karas_small2jpeg.jpg',3,'',19,1),(107,'2024-05-21 20:48:10.891810','7','SmallSeaCreatures path: photoes2/karas_small2jpeg_cDw1PqJ.jpg',1,'[{\"added\": {}}]',19,1),(108,'2024-05-21 20:49:34.634940','4','SeaCreatures path: photoes1/lezh_big1.jpeg',3,'',20,1),(109,'2024-05-21 20:49:34.641581','5','SeaCreatures path: photoes1/karas_big2.jpeg',3,'',20,1),(110,'2024-05-21 20:50:12.380221','1','SeaCreatures path: photoes1/crab_big1.jpeg',3,'',20,1),(111,'2024-05-21 20:50:12.386286','2','SeaCreatures path: photoes1/crab_big2.jpg',3,'',20,1),(112,'2024-05-21 20:50:12.392186','3','SeaCreatures path: photoes1/crab_big3.jpg',3,'',20,1),(113,'2024-05-21 20:50:41.375921','1','SeaCreatures path: photoes1/crab_big1_EmCLEi6.jpeg',1,'[{\"added\": {}}]',20,1),(114,'2024-05-21 20:51:39.709476','1','SmallSeaCreatures path: photoes2/crab_small1.jpeg',3,'',19,1),(115,'2024-05-21 20:51:39.715450','2','SmallSeaCreatures path: photoes2/crab_small2.jpg',3,'',19,1),(116,'2024-05-21 20:51:39.722673','3','SmallSeaCreatures path: photoes2/crab_small3.jpg',3,'',19,1),(117,'2024-05-21 20:51:39.728264','6','SmallSeaCreatures path: photoes2/lezh_small1_Mi3Vb0V.jpeg',3,'',19,1),(118,'2024-05-21 20:51:39.735571','7','SmallSeaCreatures path: photoes2/karas_small2jpeg_cDw1PqJ.jpg',3,'',19,1),(119,'2024-05-21 20:51:50.209006','1','SeaCreatures path: photoes1/crab_big1_EmCLEi6.jpeg',3,'',20,1),(120,'2024-05-21 20:52:26.860620','1','SeaCreatures path: photoes1/karas1_big.jpg',1,'[{\"added\": {}}]',20,1),(121,'2024-05-21 20:53:02.644091','1','SeaCreatures path: photoes1/karas1_big.jpg',3,'',20,1),(122,'2024-05-21 20:53:21.245067','1','SmallSeaCreatures path: photoes2/lezh_small1.jpeg',1,'[{\"added\": {}}]',19,1),(123,'2024-05-21 20:53:38.316663','1','SeaCreatures path: photoes1/lezh_big1.jpeg',1,'[{\"added\": {}}]',20,1),(124,'2024-05-21 20:54:12.444401','2','SmallSeaCreatures path: photoes2/crab_small1.jpeg',1,'[{\"added\": {}}]',19,1),(125,'2024-05-21 20:54:27.983370','3','SmallSeaCreatures path: photoes2/crab_small2.jpg',1,'[{\"added\": {}}]',19,1),(126,'2024-05-21 20:54:48.994336','2','SeaCreatures path: photoes1/crab_big1.jpeg',1,'[{\"added\": {}}]',20,1),(127,'2024-05-21 20:54:58.734282','3','SeaCreatures path: photoes1/crab_big2.jpg',1,'[{\"added\": {}}]',20,1),(128,'2024-05-21 20:55:38.264718','4','SmallSeaCreatures path: photoes2/karas_small2jpeg.jpg',1,'[{\"added\": {}}]',19,1),(129,'2024-05-21 20:55:49.166333','4','SeaCreatures path: photoes1/karas_big2.jpeg',1,'[{\"added\": {}}]',20,1),(130,'2024-05-21 21:00:18.522716','5','SeaCreatures path: photoes1/karas1_big.jpg',1,'[{\"added\": {}}]',20,1),(131,'2024-05-21 21:02:03.745563','5','SmallSeaCreatures path: photoes2/karas_small1.jpg',1,'[{\"added\": {}}]',19,1);
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
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'easy_thumbnails','source'),(8,'easy_thumbnails','thumbnail'),(9,'easy_thumbnails','thumbnaildimensions'),(10,'filer','clipboard'),(11,'filer','clipboarditem'),(12,'filer','file'),(13,'filer','folder'),(14,'filer','folderpermission'),(15,'filer','image'),(16,'filer','thumbnailoption'),(6,'sessions','session'),(17,'vagnertest','model1'),(18,'vagnertest','model2'),(20,'vagnertest','photoesbig'),(19,'vagnertest','photoessmall');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-21 15:57:36.433360'),(2,'auth','0001_initial','2024-05-21 15:57:37.594154'),(3,'admin','0001_initial','2024-05-21 15:57:37.851448'),(4,'admin','0002_logentry_remove_auto_add','2024-05-21 15:57:37.863180'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-21 15:57:37.878403'),(6,'contenttypes','0002_remove_content_type_name','2024-05-21 15:57:37.999277'),(7,'auth','0002_alter_permission_name_max_length','2024-05-21 15:57:38.112183'),(8,'auth','0003_alter_user_email_max_length','2024-05-21 15:57:38.142495'),(9,'auth','0004_alter_user_username_opts','2024-05-21 15:57:38.155719'),(10,'auth','0005_alter_user_last_login_null','2024-05-21 15:57:38.249034'),(11,'auth','0006_require_contenttypes_0002','2024-05-21 15:57:38.256008'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-21 15:57:38.268944'),(13,'auth','0008_alter_user_username_max_length','2024-05-21 15:57:38.391381'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-21 15:57:38.515023'),(15,'auth','0010_alter_group_name_max_length','2024-05-21 15:57:38.543717'),(16,'auth','0011_update_proxy_permissions','2024-05-21 15:57:38.560048'),(17,'auth','0012_alter_user_first_name_max_length','2024-05-21 15:57:38.683866'),(18,'easy_thumbnails','0001_initial','2024-05-21 15:57:39.042369'),(19,'easy_thumbnails','0002_thumbnaildimensions','2024-05-21 15:57:39.192404'),(20,'filer','0001_initial','2024-05-21 15:57:41.032175'),(21,'filer','0002_auto_20150606_2003','2024-05-21 15:57:41.052511'),(22,'filer','0003_thumbnailoption','2024-05-21 15:57:41.103205'),(23,'filer','0004_auto_20160328_1434','2024-05-21 15:57:41.206611'),(24,'filer','0005_auto_20160623_1425','2024-05-21 15:57:41.265804'),(25,'filer','0006_auto_20160623_1627','2024-05-21 15:57:41.416388'),(26,'filer','0007_auto_20161016_1055','2024-05-21 15:57:41.429361'),(27,'filer','0008_auto_20171117_1313','2024-05-21 15:57:41.449466'),(28,'filer','0009_auto_20171220_1635','2024-05-21 15:57:41.590855'),(29,'filer','0010_auto_20180414_2058','2024-05-21 15:57:41.606511'),(30,'filer','0011_auto_20190418_0137','2024-05-21 15:57:41.798304'),(31,'filer','0012_file_mime_type','2024-05-21 15:57:41.873882'),(32,'filer','0013_image_width_height_to_float','2024-05-21 15:57:42.080220'),(33,'filer','0014_folder_permission_choices','2024-05-21 15:57:42.112374'),(34,'filer','0015_alter_file_owner_alter_file_polymorphic_ctype_and_more','2024-05-21 15:57:42.152071'),(35,'filer','0016_alter_folder_index_together_remove_folder_level_and_more','2024-05-21 15:57:42.428159'),(36,'filer','0017_image__transparent','2024-05-21 15:57:42.480488'),(37,'sessions','0001_initial','2024-05-21 15:57:42.554479'),(38,'vagnertest','0001_initial','2024-05-21 15:57:42.641034'),(39,'vagnertest','0002_photoessmall_photoesbig','2024-05-21 15:59:41.967368'),(40,'vagnertest','0003_rename_imgage_photoesbig_image_and_more','2024-05-21 16:12:56.160014'),(41,'vagnertest','0004_photoesbig_img_photoessmall_img','2024-05-21 16:28:38.490329'),(42,'vagnertest','0005_alter_photoesbig_image_alter_photoessmall_image','2024-05-21 17:16:01.088593');
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
INSERT INTO `django_session` VALUES ('4pc5devr3o4nphlpvothyv65t5aa4a3a','.eJxVjjsOgzAQRO_iOrKMwR9Sps8ZrF3vOpBYtoShinL3gESRtPNmnuYtAmzrFLbGS5hJXEUnLr8ZQnxxOQA9oTyqjLWsy4zyqMiTNnmvxPl2dv8EE7RpX9sI4BgjelLeJZsSaGOG3phx1Bb12HmEHpXpeh_JkmY1sLOOleHEDLs0zXn3ZWhrSDXTebhsOX--tfVC-w:1s9T2e:Tka-_Etqp98Oy3E_0iDF8bRpBa1du3GhdCD82qP37Rs','2024-06-04 17:12:48.329794');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'0d677af76ca5bf5575d614e04932c3a4','filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg','2024-05-21 17:03:37.411510'),(3,'0d677af76ca5bf5575d614e04932c3a4','filer_public/3c/f4/3cf4901e-49f1-4f9d-9d11-0d840ffe8c32/crab_big2.jpg','2024-05-21 17:04:01.235702'),(4,'0d677af76ca5bf5575d614e04932c3a4','filer_public/f2/9a/f29ad794-8306-4996-a705-e82bfaa40aad/crab_big1.jpeg','2024-05-21 16:09:59.346798'),(5,'0d677af76ca5bf5575d614e04932c3a4','filer_public/97/42/9742fa39-2e98-49b4-b16a-bca77b06f439/lezh_big1.jpeg','2024-05-21 17:04:14.909227'),(6,'0d677af76ca5bf5575d614e04932c3a4','filer_public/15/af/15af88dd-e594-4551-91bb-dba21eb5c975/karas_big2.jpeg','2024-05-21 17:04:08.011201'),(8,'0d677af76ca5bf5575d614e04932c3a4','filer_public/3c/18/3c183d11-1f52-46f0-b724-b9ff907f44c3/crab_big3.jpg','2024-05-21 17:04:04.500905'),(9,'0d677af76ca5bf5575d614e04932c3a4','filer_public/b5/19/b5190fe1-6e8a-4ff0-a141-88aa60d051e6/crab_small1.jpeg','2024-05-21 17:03:32.595282'),(10,'0d677af76ca5bf5575d614e04932c3a4','filer_public/f7/5a/f75abd07-3078-4c04-9794-4074a031f141/crab_small3.jpg','2024-05-21 17:03:41.065357'),(12,'0d677af76ca5bf5575d614e04932c3a4','filer_public/79/9a/799a35d6-9d91-4963-a5cb-909a2802bd71/karas1_big.jpg','2024-05-21 17:04:11.766400'),(13,'0d677af76ca5bf5575d614e04932c3a4','filer_public/a6/7a/a67a4908-e88b-4fff-93c1-e1e501182d24/karas_small1.jpg','2024-05-21 17:03:47.867799'),(14,'0d677af76ca5bf5575d614e04932c3a4','filer_public/f4/a8/f4a8a2b5-3052-42a2-9263-b2d548a7f27d/lezh_small1.jpeg','2024-05-21 16:14:43.496434'),(15,'0d677af76ca5bf5575d614e04932c3a4','filer_public/3f/af/3fafa1c0-d91c-4516-aa4c-8af0a24d911a/karas_small2jpeg.jpg','2024-05-21 17:03:44.624932');
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
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:02:58.462476',1),(3,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/f4/3cf4901e-49f1-4f9d-9d11-0d840ffe8c32/crab_big2.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:03:07.789819',3),(5,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.309516',1),(6,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/f4/3cf4901e-49f1-4f9d-9d11-0d840ffe8c32/crab_big2.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.335296',3),(7,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f2/9a/f29ad794-8306-4996-a705-e82bfaa40aad/crab_big1.jpeg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:03:36.796461',4),(8,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f2/9a/f29ad794-8306-4996-a705-e82bfaa40aad/crab_big1.jpeg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 16:10:16.727285',4),(9,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/97/42/9742fa39-2e98-49b4-b16a-bca77b06f439/lezh_big1.jpeg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:03:49.243988',5),(10,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/97/42/9742fa39-2e98-49b4-b16a-bca77b06f439/lezh_big1.jpeg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.381779',5),(11,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/15/af/15af88dd-e594-4551-91bb-dba21eb5c975/karas_big2.jpeg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:03:52.230683',6),(12,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/15/af/15af88dd-e594-4551-91bb-dba21eb5c975/karas_big2.jpeg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.345102',6),(15,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/18/3c183d11-1f52-46f0-b724-b9ff907f44c3/crab_big3.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:04:46.733040',8),(16,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/18/3c183d11-1f52-46f0-b724-b9ff907f44c3/crab_big3.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.336923',8),(17,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/b5/19/b5190fe1-6e8a-4ff0-a141-88aa60d051e6/crab_small1.jpeg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:04:54.797074',9),(18,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/b5/19/b5190fe1-6e8a-4ff0-a141-88aa60d051e6/crab_small1.jpeg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.334392',9),(19,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f7/5a/f75abd07-3078-4c04-9794-4074a031f141/crab_small3.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:05:23.320211',10),(20,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f7/5a/f75abd07-3078-4c04-9794-4074a031f141/crab_small3.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.331603',10),(23,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/79/9a/799a35d6-9d91-4963-a5cb-909a2802bd71/karas1_big.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:05:47.870268',12),(24,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/79/9a/799a35d6-9d91-4963-a5cb-909a2802bd71/karas1_big.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.376536',12),(25,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/a6/7a/a67a4908-e88b-4fff-93c1-e1e501182d24/karas_small1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:05:55.873173',13),(26,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/a6/7a/a67a4908-e88b-4fff-93c1-e1e501182d24/karas_small1.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.356552',13),(27,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f4/a8/f4a8a2b5-3052-42a2-9263-b2d548a7f27d/lezh_small1.jpeg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:06:20.930713',14),(28,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f4/a8/f4a8a2b5-3052-42a2-9263-b2d548a7f27d/lezh_small1.jpeg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 16:14:51.051311',14),(29,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3f/af/3fafa1c0-d91c-4516-aa4c-8af0a24d911a/karas_small2jpeg.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2024-05-21 16:07:40.130113',15),(30,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3f/af/3fafa1c0-d91c-4516-aa4c-8af0a24d911a/karas_small2jpeg.jpg__40x40_q85_crop_subsampling-2.jpg','2024-05-21 17:04:20.372041',15),(31,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f2/9a/f29ad794-8306-4996-a705-e82bfaa40aad/crab_big1.jpeg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:09:17.392864',4),(32,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f2/9a/f29ad794-8306-4996-a705-e82bfaa40aad/crab_big1.jpeg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 16:09:59.354838',4),(33,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/f4/3cf4901e-49f1-4f9d-9d11-0d840ffe8c32/crab_big2.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:10:24.176500',3),(34,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/18/3c183d11-1f52-46f0-b724-b9ff907f44c3/crab_big3.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:11:08.222567',8),(35,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/15/af/15af88dd-e594-4551-91bb-dba21eb5c975/karas_big2.jpeg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:12:30.129198',6),(36,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/79/9a/799a35d6-9d91-4963-a5cb-909a2802bd71/karas1_big.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:08:56.753937',12),(37,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/97/42/9742fa39-2e98-49b4-b16a-bca77b06f439/lezh_big1.jpeg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:10:58.240461',5),(38,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f4/a8/f4a8a2b5-3052-42a2-9263-b2d548a7f27d/lezh_small1.jpeg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:10:41.027495',14),(39,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f4/a8/f4a8a2b5-3052-42a2-9263-b2d548a7f27d/lezh_small1.jpeg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 16:14:43.510373',14),(40,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/b5/19/b5190fe1-6e8a-4ff0-a141-88aa60d051e6/crab_small1.jpeg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:09:50.520558',9),(41,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:10:08.197883',1),(42,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg__210x162_q85_subsampling-2_upscale.jpg','2024-05-21 16:16:43.867064',1),(43,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg__420x324_q85_subsampling-2_upscale.jpg','2024-05-21 16:16:43.881710',1),(44,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f7/5a/f75abd07-3078-4c04-9794-4074a031f141/crab_small3.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:11:29.848895',10),(45,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3f/af/3fafa1c0-d91c-4516-aa4c-8af0a24d911a/karas_small2jpeg.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:12:53.659835',15),(46,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/a6/7a/a67a4908-e88b-4fff-93c1-e1e501182d24/karas_small1.jpg__80x80_q85_crop_subsampling-2.jpg','2024-05-21 17:08:35.973522',13),(47,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/b5/19/b5190fe1-6e8a-4ff0-a141-88aa60d051e6/crab_small1.jpeg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:03:32.604512',9),(48,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:03:37.419004',1),(49,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/f7/5a/f75abd07-3078-4c04-9794-4074a031f141/crab_small3.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:03:41.073111',10),(50,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3f/af/3fafa1c0-d91c-4516-aa4c-8af0a24d911a/karas_small2jpeg.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:03:44.633951',15),(51,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/a6/7a/a67a4908-e88b-4fff-93c1-e1e501182d24/karas_small1.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:03:47.875399',13),(52,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/f4/3cf4901e-49f1-4f9d-9d11-0d840ffe8c32/crab_big2.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:04:01.245377',3),(53,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/3c/18/3c183d11-1f52-46f0-b724-b9ff907f44c3/crab_big3.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:04:04.508045',8),(54,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/15/af/15af88dd-e594-4551-91bb-dba21eb5c975/karas_big2.jpeg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:04:08.018445',6),(55,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/79/9a/799a35d6-9d91-4963-a5cb-909a2802bd71/karas1_big.jpg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:04:11.775076',12),(56,'0d677af76ca5bf5575d614e04932c3a4','filer_public_thumbnails/filer_public/97/42/9742fa39-2e98-49b4-b16a-bca77b06f439/lezh_big1.jpeg__160x160_q85_crop_subsampling-2.jpg','2024-05-21 17:04:14.917849',5);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (1,'filer_public/fc/e4/fce44e5e-ba74-489c-991f-d67ae9c9c492/crab_small2.jpg',5052,'fd818e405854d4e1c06a33d729175708ef113b16',0,'crab_small2.jpg','',NULL,'2024-05-21 16:02:58.419757','2024-05-21 16:02:58.419774',1,NULL,1,15,'image/jpeg'),(3,'filer_public/3c/f4/3cf4901e-49f1-4f9d-9d11-0d840ffe8c32/crab_big2.jpg',95532,'ddbbb7544014a976d472cce4735685de38f1741c',0,'crab_big2.jpg','',NULL,'2024-05-21 16:03:07.766278','2024-05-21 16:03:07.766294',1,NULL,1,15,'image/jpeg'),(4,'filer_public/f2/9a/f29ad794-8306-4996-a705-e82bfaa40aad/crab_big1.jpeg',97047,'cf8f445178652ac71207c0d180383eaa19028840',0,'crab_big1.jpeg','',NULL,'2024-05-21 16:03:36.761296','2024-05-21 16:03:36.761316',1,NULL,1,15,'image/jpeg'),(5,'filer_public/97/42/9742fa39-2e98-49b4-b16a-bca77b06f439/lezh_big1.jpeg',109742,'55119ac45f9763de812ccfc909910324fc558983',0,'lezh_big1.jpeg','',NULL,'2024-05-21 16:03:49.215449','2024-05-21 16:03:49.215481',1,NULL,1,15,'image/jpeg'),(6,'filer_public/15/af/15af88dd-e594-4551-91bb-dba21eb5c975/karas_big2.jpeg',162439,'69fa76fcb32ce4789a28208924c4e94150047ca8',0,'karas_big2.jpeg','',NULL,'2024-05-21 16:03:52.190300','2024-05-21 16:03:52.190330',1,NULL,1,15,'image/jpeg'),(8,'filer_public/3c/18/3c183d11-1f52-46f0-b724-b9ff907f44c3/crab_big3.jpg',265699,'efc0eabc43d2dd5577a0582d3de0e8072f42b39a',0,'crab_big3.jpg','',NULL,'2024-05-21 16:04:46.702713','2024-05-21 16:04:46.702733',1,NULL,1,15,'image/jpeg'),(9,'filer_public/b5/19/b5190fe1-6e8a-4ff0-a141-88aa60d051e6/crab_small1.jpeg',4619,'a32d14b6bbfa399e1930ee8f80814e3493cfc412',0,'crab_small1.jpeg','',NULL,'2024-05-21 16:04:54.776608','2024-05-21 16:04:54.776636',1,NULL,1,15,'image/jpeg'),(10,'filer_public/f7/5a/f75abd07-3078-4c04-9794-4074a031f141/crab_small3.jpg',5406,'c6b6ae7219f6f5e927af0e92e46068b9bf7579a2',0,'crab_small3.jpg','',NULL,'2024-05-21 16:05:23.297834','2024-05-21 16:05:23.297868',1,NULL,1,15,'image/jpeg'),(12,'filer_public/79/9a/799a35d6-9d91-4963-a5cb-909a2802bd71/karas1_big.jpg',110542,'99962c7ef3c8fab3e5aa2abbc6f63628e4cb6b67',0,'karas1_big.jpg','',NULL,'2024-05-21 16:05:47.847322','2024-05-21 16:05:47.847344',1,NULL,1,15,'image/jpeg'),(13,'filer_public/a6/7a/a67a4908-e88b-4fff-93c1-e1e501182d24/karas_small1.jpg',3783,'d976e5db52a571a902569699695c1fefbcb2e81e',0,'karas_small1.jpg','',NULL,'2024-05-21 16:05:55.855003','2024-05-21 16:05:55.855020',1,NULL,1,15,'image/jpeg'),(14,'filer_public/f4/a8/f4a8a2b5-3052-42a2-9263-b2d548a7f27d/lezh_small1.jpeg',4355,'87bcdce5fb7491795f152d160bf2af12442bcf18',0,'lezh_small1.jpeg','',NULL,'2024-05-21 16:06:20.910826','2024-05-21 16:06:20.910849',1,NULL,1,15,'image/jpeg'),(15,'filer_public/3f/af/3fafa1c0-d91c-4516-aa4c-8af0a24d911a/karas_small2jpeg.jpg',4700,'0829777e7e7f81da2d66e363b2d70c96ad082db3',0,'karas_small2jpeg.jpg','',NULL,'2024-05-21 16:07:40.108908','2024-05-21 16:07:40.108930',1,NULL,1,15,'image/jpeg');
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
INSERT INTO `filer_image` VALUES (1,54,70,'2024-05-21 16:02:58.415693',NULL,NULL,NULL,0,0,'',0),(3,432,564,'2024-05-21 16:03:07.763155',NULL,NULL,NULL,0,0,'',0),(4,481,655,'2024-05-21 16:03:36.758862',NULL,NULL,NULL,0,0,'',0),(5,435,654,'2024-05-21 16:03:49.210972',NULL,NULL,NULL,0,0,'',0),(6,489,676,'2024-05-21 16:03:52.186153',NULL,NULL,NULL,0,0,'',0),(8,433,648,'2024-05-21 16:04:46.699378',NULL,NULL,NULL,0,0,'',0),(9,55,75,'2024-05-21 16:04:54.773297',NULL,NULL,NULL,0,0,'',0),(10,49,73,'2024-05-21 16:05:23.294637',NULL,NULL,NULL,0,0,'',0),(12,378,640,'2024-05-21 16:05:47.843745',NULL,NULL,NULL,0,0,'',0),(13,54,92,'2024-05-21 16:05:55.851856',NULL,NULL,NULL,0,0,'',0),(14,55,84,'2024-05-21 16:06:20.907447',NULL,NULL,NULL,0,0,'',0),(15,58,80,'2024-05-21 16:07:40.105277',NULL,NULL,NULL,0,0,'',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_model1`
--

LOCK TABLES `vagnertest_model1` WRITE;
/*!40000 ALTER TABLE `vagnertest_model1` DISABLE KEYS */;
INSERT INTO `vagnertest_model1` VALUES (1,'SeaCreatures');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `image_id` int DEFAULT NULL,
  `model1_id` bigint DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vagnertest_photoesbig_model1_id_1832d50d_fk_vagnertest_model1_id` (`model1_id`),
  KEY `vagnertest_photoesbig_imgage_id_f4db4cdf` (`image_id`),
  CONSTRAINT `vagnertest_photoesbi_image_id_3b3145fd_fk_filer_ima` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `vagnertest_photoesbig_model1_id_1832d50d_fk_vagnertest_model1_id` FOREIGN KEY (`model1_id`) REFERENCES `vagnertest_model1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_photoesbig`
--

LOCK TABLES `vagnertest_photoesbig` WRITE;
/*!40000 ALTER TABLE `vagnertest_photoesbig` DISABLE KEYS */;
INSERT INTO `vagnertest_photoesbig` VALUES (1,NULL,1,'photoes1/lezh_big1.jpeg'),(2,NULL,1,'photoes1/crab_big1.jpeg'),(3,NULL,1,'photoes1/crab_big2.jpg'),(4,NULL,1,'photoes1/karas_big2.jpeg'),(5,NULL,1,'photoes1/karas1_big.jpg');
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
  `image_id` int DEFAULT NULL,
  `model2_id` bigint DEFAULT NULL,
  `img` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vagnertest_photoessm_model2_id_cf5d6a06_fk_vagnertes` (`model2_id`),
  KEY `vagnertest_photoessmall_imgage_id_ad14326a` (`image_id`),
  CONSTRAINT `vagnertest_photoessm_image_id_39584e89_fk_filer_ima` FOREIGN KEY (`image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `vagnertest_photoessm_model2_id_cf5d6a06_fk_vagnertes` FOREIGN KEY (`model2_id`) REFERENCES `vagnertest_model2` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vagnertest_photoessmall`
--

LOCK TABLES `vagnertest_photoessmall` WRITE;
/*!40000 ALTER TABLE `vagnertest_photoessmall` DISABLE KEYS */;
INSERT INTO `vagnertest_photoessmall` VALUES (1,NULL,1,'photoes2/lezh_small1.jpeg'),(2,NULL,1,'photoes2/crab_small1.jpeg'),(3,NULL,1,'photoes2/crab_small2.jpg'),(4,NULL,1,'photoes2/karas_small2jpeg.jpg'),(5,NULL,1,'photoes2/karas_small1.jpg');
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

-- Dump completed on 2024-05-22  0:37:02
