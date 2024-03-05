CREATE DATABASE  IF NOT EXISTS `mobil` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mobil`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: mobil
-- ------------------------------------------------------
-- Server version	8.0.34

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

--
-- Table structure for table `base`
--

DROP TABLE IF EXISTS `base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base` (
  `base_id` int NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `brand` int NOT NULL,
  `battery` int NOT NULL,
  `size` int NOT NULL,
  `res_x` int NOT NULL,
  `res_y` int NOT NULL,
  `ram` int NOT NULL,
  `storage` int NOT NULL,
  `rear_camera` int NOT NULL,
  `front_camera` int NOT NULL,
  `op` int NOT NULL,
  `bluetooth` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `gps` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `sim_number` int NOT NULL,
  `3g` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `4G/ LTE` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `price` int NOT NULL,
  `gpu` int NOT NULL,
  `cpu` int NOT NULL,
  `img` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `db` int NOT NULL,
  PRIMARY KEY (`base_id`),
  KEY `brand_idx` (`brand`),
  KEY `battery_idx` (`battery`),
  KEY `gpu_idx` (`gpu`),
  KEY `cpu_idx` (`cpu`),
  KEY `ram_idx` (`ram`),
  KEY `op_idx` (`op`),
  KEY `storage_idx` (`storage`),
  KEY `size_idx` (`size`),
  KEY `x_res_idx` (`res_x`),
  KEY `y_res_idx` (`res_y`),
  KEY `rear_camera_idx` (`rear_camera`),
  KEY `front_cam_idx` (`front_camera`),
  CONSTRAINT `battery` FOREIGN KEY (`battery`) REFERENCES `battery` (`battery_id`),
  CONSTRAINT `brand` FOREIGN KEY (`brand`) REFERENCES `brand` (`brand_id`),
  CONSTRAINT `cpu` FOREIGN KEY (`cpu`) REFERENCES `cpu` (`cpu_id`),
  CONSTRAINT `front_cam` FOREIGN KEY (`front_camera`) REFERENCES `camera` (`camera_id`),
  CONSTRAINT `gpu` FOREIGN KEY (`gpu`) REFERENCES `gpu` (`gpu_id`),
  CONSTRAINT `op` FOREIGN KEY (`op`) REFERENCES `op` (`id_op`),
  CONSTRAINT `ram` FOREIGN KEY (`ram`) REFERENCES `ram` (`ram_id`),
  CONSTRAINT `rear_cam` FOREIGN KEY (`rear_camera`) REFERENCES `camera` (`camera_id`),
  CONSTRAINT `size` FOREIGN KEY (`size`) REFERENCES `size` (`size_id`),
  CONSTRAINT `storage` FOREIGN KEY (`storage`) REFERENCES `storage` (`storage_id`),
  CONSTRAINT `x_res` FOREIGN KEY (`res_x`) REFERENCES `resolution` (`res_id`),
  CONSTRAINT `y_res` FOREIGN KEY (`res_y`) REFERENCES `resolution` (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base`
--

LOCK TABLES `base` WRITE;
/*!40000 ALTER TABLE `base` DISABLE KEYS */;
INSERT INTO `base` VALUES (1,'iPhone 11 Pro Max',1,1,1,1,21,1,1,11,11,2,'Yes','Yes',2,'Yes','Yes',427600,6,1,'4',0),(2,'iPhone 11',1,2,2,2,22,1,1,11,11,2,'Yes','Yes',2,'Yes','Yes',251600,16,1,'3',0),(3,'Samsung Galaxy Note 10+',2,3,3,3,23,2,2,11,9,1,'Yes','Yes',2,'Yes','Yes',318796,21,17,'3',0),(4,'Asus ROG Phone 2',3,4,4,4,24,3,3,36,27,1,'Yes','Yes',1,'Yes','Yes',151996,2,25,'5',0),(5,'Xiaomi Redmi K20',4,1,5,4,24,4,1,36,22,1,'Yes','Yes',2,'Yes','Yes',77128,21,20,'1',0),(6,'Huawei P30 Pro',5,5,6,4,24,3,2,34,32,1,'Yes','No',2,'Yes','Yes',217120,1,3,'3',0),(7,'Redmi Note 7 Pro',4,1,7,4,24,1,1,36,14,1,'Yes','Yes',2,'Yes','Yes',39196,10,7,'2',0),(8,'Huawei Mate 20 Pro',5,5,5,3,25,4,3,34,27,1,'Yes','Yes',2,'Yes','Yes',255960,21,28,'4',0),(9,'LG V40 ThinQ',6,6,8,3,25,4,3,11,41,1,'Yes','Yes',2,'Yes','Yes',119996,21,10,'3',0),(10,'Apple iPhone XR',1,7,2,2,22,5,1,11,40,2,'Yes','Yes',2,'Yes','Yes',181996,9,1,'6',0),(11,'Apple iPhone XS Max',1,8,1,1,21,1,1,11,40,2,'Yes','Yes',2,'Yes','Yes',279996,17,1,'3',0),(12,'Apple iPhone XS',1,8,9,5,26,1,1,11,40,2,'Yes','Yes',2,'Yes','Yes',239996,22,1,'3',0),(13,'Google Pixel 3 XL',7,9,7,3,27,1,1,12,41,1,'Yes','Yes',1,'Yes','Yes',191960,9,15,'4',0),(14,'Google Pixel 3',7,7,10,4,8,1,1,12,41,1,'Yes','Yes',1,'Yes','Yes',151996,18,22,'4',0),(15,'Asus ROG Phone',3,1,11,4,8,3,3,11,41,1,'Yes','Yes',2,'Yes','Yes',279996,15,21,'5',0),(16,'Samsung Galaxy Note 9',2,1,8,3,27,4,3,11,41,1,'Yes','Yes',2,'Yes','Yes',227996,20,19,'5',0),(17,'LG G7+ ThinQ',6,10,2,3,25,4,3,17,41,1,'Yes','Yes',2,'Yes','Yes',151996,8,30,'6',0),(18,'Asus ZenFone Max Pro M1',3,11,12,4,8,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',39960,20,2,'1',0),(19,'Huawei P20 Pro',5,1,2,4,28,1,1,34,27,1,'Yes','Yes',2,'No','Yes',199960,4,19,'6',0),(20,'Asus ZenFone 5Z (ZS620KL)',3,6,13,4,29,1,1,11,41,1,'Yes','Yes',2,'Yes','Yes',75996,17,8,'4',0),(21,'Redmi Note 5 Pro',4,1,12,4,8,1,1,11,22,1,'Yes','Yes',2,'Yes','Yes',37396,1,22,'1',0),(22,'Nokia 7 Plus',8,12,11,4,8,1,1,11,17,1,'Yes','Yes',2,'Yes','Yes',48000,17,19,'4',0),(23,'Samsung Galaxy S9+',2,13,13,3,27,4,1,11,41,1,'Yes','Yes',2,'Yes','Yes',119996,17,15,'4',0),(24,'Samsung Galaxy S9',2,10,9,3,27,1,1,11,41,1,'Yes','Yes',2,'Yes','Yes',107996,12,7,'3',0),(25,'Samsung Galaxy Note 8',2,6,7,3,27,4,1,11,41,1,'Yes','Yes',2,'Yes','Yes',199996,8,11,'3',0),(26,'Apple iPhone 8',1,14,14,6,30,6,1,11,40,2,'Yes','Yes',1,'Yes','Yes',147996,22,1,'4',0),(27,'Apple iPhone 8 Plus',1,8,10,4,31,5,1,11,40,2,'Yes','Yes',1,'Yes','Yes',188000,1,1,'4',0),(28,'Apple iPhone X',1,8,9,5,26,5,1,11,40,2,'Yes','Yes',1,'Yes','Yes',279996,7,1,'5',0),(29,'Nokia 8',8,2,15,3,32,1,1,14,14,1,'Yes','Yes',2,'Yes','Yes',59976,2,23,'4',0),(30,'Samsung Galaxy S8+',2,13,13,3,27,1,1,11,41,1,'Yes','Yes',1,'Yes','Yes',120000,11,17,'3',0),(31,'Samsung Galaxy S8',2,10,9,3,27,1,1,11,41,1,'Yes','Yes',1,'Yes','Yes',107976,14,15,'4',0),(32,'LG G6',6,6,16,3,33,5,4,14,37,1,'Yes','Yes',1,'Yes','Yes',95960,1,18,'4',0),(33,'Samsung Galaxy C9 Pro',2,1,11,4,31,4,1,17,17,1,'Yes','Yes',2,'No','Yes',67996,5,2,'1',0),(34,'Google Pixel XL',7,13,10,3,32,1,4,13,41,1,'Yes','Yes',1,'Yes','Yes',123960,4,2,'3',0),(35,'Apple iPhone 7 Plus',1,7,10,4,31,5,4,11,40,2,'Yes','Yes',1,'Yes','Yes',139996,15,1,'3',0),(36,'Apple iPhone 7',1,15,14,6,30,6,4,11,40,2,'Yes','Yes',1,'Yes','Yes',111996,21,1,'3',0),(37,'Honor 8',9,10,17,4,31,1,4,11,41,1,'Yes','Yes',2,'Yes','Yes',80984,9,7,'4',0),(38,'Asus ZenFone 3 Deluxe (ZS570KL)',3,10,16,4,31,4,2,26,41,1,'Yes','Yes',2,'Yes','Yes',179996,8,14,'2',0),(39,'Xiaomi Mi 5',4,10,18,4,31,5,4,17,33,1,'Yes','Yes',2,'Yes','Yes',99996,2,15,'4',0),(40,'Samsung Galaxy S7 Edge',2,16,10,3,32,1,4,11,37,1,'Yes','Yes',2,'Yes','Yes',159984,10,11,'4',0),(41,'Samsung Galaxy S7',2,10,19,3,32,1,4,11,37,1,'Yes','Yes',2,'Yes','Yes',95996,19,19,'5',0),(42,'Google Nexus 6P',5,13,16,3,32,5,4,13,41,1,'Yes','Yes',1,'Yes','Yes',171992,11,25,'2',0),(43,'Apple iPhone 6s Plus',1,17,10,4,31,6,5,11,37,2,'Yes','Yes',1,'Yes','Yes',103960,5,1,'5',0),(44,'Samsung Galaxy A8',2,2,16,4,31,6,4,17,37,1,'Yes','Yes',2,'Yes','Yes',29196,15,12,'4',0),(45,'Samsung Galaxy S6',2,18,19,3,32,5,4,17,37,1,'Yes','Yes',1,'Yes','Yes',103996,18,8,'5',0),(46,'Xiaomi Redmi Note',4,2,10,7,15,6,6,14,37,1,'Yes','Yes',2,'Yes','No',31996,22,24,'',0),(47,'Poco X2',10,19,20,4,34,4,1,39,22,1,'Yes','Yes',2,'Yes','Yes',63996,21,9,'',0),(48,'Vivo V17',11,19,21,4,34,3,3,36,32,1,'Yes','Yes',2,'Yes','Yes',84600,12,30,'',0),(49,'Vivo U20',11,11,22,4,24,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',43960,14,14,'',0),(50,'Vivo V17 Pro',11,20,21,4,34,3,3,36,32,1,'Yes','Yes',2,'Yes','Yes',104880,21,24,'',0),(51,'Samsung Galaxy M30s',2,4,8,4,24,1,1,36,17,1,'Yes','Yes',2,'Yes','Yes',51996,14,3,'',0),(52,'Vivo Z1x',11,19,23,4,24,1,3,36,32,1,'Yes','Yes',2,'Yes','Yes',63960,8,7,'',0),(53,'Redmi Note 8 Pro',4,19,22,4,24,4,1,39,22,1,'Yes','Yes',2,'Yes','Yes',55996,8,25,'',0),(54,'Nokia 7.2',8,13,7,4,24,1,1,36,22,1,'Yes','No',2,'Yes','Yes',61508,16,3,'',0),(55,'Samsung Galaxy A50s',2,1,8,4,24,1,3,36,32,1,'Yes','Yes',2,'Yes','Yes',66600,6,16,'',0),(56,'Vivo Z1 Pro',11,11,22,4,24,1,1,17,32,1,'Yes','Yes',2,'Yes','Yes',51960,16,28,'',0),(57,'Xiaomi Mi A3',4,1,24,7,35,1,1,36,32,1,'Yes','Yes',2,'Yes','Yes',47380,10,14,'',0),(58,'Asus 6Z',3,11,8,4,24,4,1,36,36,1,'Yes','Yes',2,'Yes','Yes',111996,20,13,'',0),(59,'Samsung Galaxy M40',2,13,7,4,24,4,3,32,17,1,'Yes','Yes',2,'Yes','Yes',67516,7,23,'',0),(60,'Redmi Note 7S',4,1,7,4,24,5,4,36,14,1,'Yes','Yes',2,'Yes','Yes',34596,4,19,'',0),(61,'Google Pixel 3a XL',7,21,11,4,8,1,1,12,41,1,'Yes','Yes',1,'Yes','Yes',139996,1,6,'',0),(62,'Samsung Galaxy A70',2,19,25,4,34,4,3,32,32,1,'Yes','Yes',2,'Yes','Yes',89196,19,23,'',0),(63,'LG G8s ThinQ',6,16,13,4,36,4,1,11,41,1,'Yes','Yes',2,'Yes','Yes',159960,4,13,'',0),(64,'Vivo V15 Pro',11,21,5,4,24,4,3,36,32,1,'Yes','Yes',2,'Yes','Yes',71892,6,8,'',0),(65,'Redmi Note 7',4,1,7,4,24,5,4,11,14,1,'Yes','Yes',2,'Yes','Yes',38796,10,14,'',0),(66,'Xiaomi Redmi 7',4,1,26,7,37,6,5,11,41,1,'Yes','Yes',2,'Yes','Yes',29328,9,29,'',0),(67,'Samsung Galaxy M30',2,11,8,4,24,5,4,14,17,1,'Yes','Yes',2,'Yes','Yes',37996,2,5,'',0),(68,'Asus ZenFone Max Pro M2',3,11,26,4,38,5,4,11,14,1,'Yes','Yes',2,'Yes','Yes',47996,18,14,'',0),(69,'Google Pixel 3a',7,10,27,4,39,1,1,12,41,1,'Yes','Yes',1,'Yes','Yes',123996,11,9,'',0),(70,'Honor 10 Lite',9,9,28,4,24,5,4,14,27,1,'Yes','Yes',2,'Yes','Yes',31996,6,13,'',0),(71,'Nokia 8.1',8,13,29,4,40,1,1,11,22,1,'Yes','Yes',2,'Yes','Yes',72000,21,23,'',0),(72,'Samsung Galaxy A9 (2018)',2,12,7,4,39,4,3,27,27,1,'Yes','Yes',2,'Yes','Yes',88000,16,23,'',0),(73,'Vivo V9 Pro',11,6,7,4,38,1,1,14,17,1,'Yes','Yes',2,'Yes','Yes',65960,19,13,'',0),(74,'Samsung Galaxy A7 (2018)',2,6,11,4,39,1,1,27,27,1,'Yes','Yes',2,'No','Yes',65960,4,8,'',0),(75,'Xiaomi Redmi Note 6 Pro',4,1,26,4,38,1,1,11,22,1,'Yes','Yes',2,'Yes','Yes',38320,11,15,'',0),(76,'Vivo V11 Pro',11,9,30,4,24,4,1,11,28,1,'Yes','Yes',2,'Yes','Yes',59960,16,27,'',0),(77,'Nokia 5.1 Plus',8,2,31,7,37,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',27996,9,2,'',0),(78,'Honor 8X',9,12,1,4,24,1,1,22,17,1,'Yes','Yes',2,'Yes','Yes',39996,20,23,'',0),(79,'Poco F1',10,1,29,4,29,4,1,11,22,1,'Yes','Yes',2,'Yes','Yes',59960,4,15,'',0),(80,'Nokia 6.1 Plus',8,2,9,4,38,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',35996,22,4,'',0),(81,'Vivo Nex',11,1,4,4,41,3,3,11,41,1,'Yes','Yes',2,'Yes','Yes',119996,21,11,'',0),(82,'Honor Play',9,12,7,4,24,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',72044,4,26,'',0),(83,'Xiaomi Mi A2',4,10,12,4,8,1,1,11,22,1,'Yes','Yes',2,'Yes','Yes',35960,20,28,'',0),(84,'Honor 10',9,9,32,4,38,4,3,17,27,1,'Yes','Yes',2,'Yes','Yes',67960,17,20,'',0),(85,'Vivo X21',11,22,33,4,38,4,1,11,11,1,'Yes','Yes',2,'Yes','Yes',73160,5,25,'',0),(86,'Nokia 8 Sirocco',8,6,10,3,32,4,3,11,37,1,'Yes','Yes',1,'Yes','Yes',55996,5,8,'',0),(87,'Nokia 6.1',8,10,10,4,31,5,4,17,41,1,'Yes','Yes',2,'Yes','Yes',35396,8,29,'',0),(88,'Honor View 10',9,12,12,4,8,4,3,17,14,1,'Yes','Yes',2,'Yes','Yes',63596,12,23,'',0),(89,'Honor 9i',9,6,34,4,8,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',35996,19,3,'',0),(90,'Xiaomi Mi MIX 2',4,9,12,4,8,4,1,11,37,1,'Yes','Yes',2,'Yes','Yes',119996,11,10,'',0),(91,'Lenovo K8 Plus',12,1,17,4,31,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',27960,10,12,'',0),(92,'Mi A1',4,2,10,4,31,1,4,11,37,1,'Yes','Yes',2,'Yes','Yes',39996,21,12,'',0),(93,'Sony Xperia XZ1',13,8,17,4,31,1,4,18,14,1,'Yes','Yes',2,'Yes','Yes',139960,3,4,'',0),(94,'LG V30+',6,6,11,3,33,1,3,17,37,1,'Yes','Yes',2,'Yes','Yes',111996,3,17,'',0),(95,'Lenovo K8 Note',12,1,10,4,31,5,4,14,14,1,'Yes','Yes',2,'Yes','Yes',29196,19,13,'',0),(96,'Google Pixel 2 XL',7,13,11,3,33,1,1,12,41,1,'Yes','Yes',1,'Yes','Yes',51976,16,2,'',0),(97,'Google Pixel 2',7,8,35,4,31,1,1,12,41,1,'Yes','Yes',1,'Yes','Yes',39976,20,22,'',0),(98,'Redmi 5',4,6,16,7,3,6,5,11,37,1,'Yes','Yes',2,'Yes','Yes',25996,8,28,'',0),(99,'Redmi Note 5',4,1,12,4,8,5,4,11,37,1,'Yes','Yes',2,'Yes','Yes',34796,3,2,'',0),(100,'Samsung Galaxy On Max',2,6,16,4,31,1,4,14,14,1,'Yes','Yes',2,'Yes','Yes',39560,6,14,'',0),(101,'Xiaomi Mi Max 2',4,23,21,4,31,1,4,11,37,1,'Yes','Yes',2,'Yes','Yes',35996,16,7,'',0),(102,'Asus ZenFone Zoom S',3,11,10,4,31,1,1,11,14,1,'Yes','Yes',2,'Yes','Yes',107996,1,15,'',0),(103,'Honor 8 Pro',9,1,16,3,32,4,3,11,41,1,'Yes','Yes',2,'No','Yes',70344,22,10,'',0),(104,'Sony Xperia XZ Premium',13,22,10,8,42,1,1,18,14,1,'Yes','Yes',2,'Yes','Yes',134000,22,18,'',0),(105,'Asus ZenFone 3S Max',3,11,17,7,15,5,4,14,41,1,'Yes','No',2,'Yes','Yes',59996,9,3,'',0),(106,'Samsung Galaxy C7 Pro',2,6,16,4,31,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',67996,6,24,'',0),(107,'Asus ZenFone AR',3,6,16,3,32,3,3,26,41,1,'Yes','Yes',2,'Yes','Yes',199996,10,2,'',0),(108,'Xiaomi Redmi 4A',4,2,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',27996,13,25,'',0),(109,'Xiaomi Redmi 4',4,20,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',35996,2,27,'',0),(110,'Lenovo Z2 Plus',12,13,35,4,31,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',45996,6,15,'',0),(111,'LG V20',6,22,16,3,32,1,1,17,37,1,'Yes','Yes',2,'Yes','Yes',107996,21,16,'',0),(112,'Lenovo K6 Power',12,1,35,4,31,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',34000,9,29,'',0),(113,'Sony Xperia XZ',13,7,17,4,31,5,1,26,14,1,'Yes','Yes',2,'Yes','Yes',47996,13,5,'',0),(114,'Samsung Galaxy J7 Prime',2,6,10,4,31,5,5,14,41,1,'Yes','Yes',2,'Yes','Yes',63980,11,19,'',0),(115,'Xiaomi Redmi Note 4',4,20,10,4,31,6,4,14,37,1,'Yes','Yes',2,'Yes','Yes',39960,15,26,'',0),(116,'Xiaomi Redmi 3S Prime',4,20,35,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',32000,18,19,'',0),(117,'Asus ZenFone 3 (ZE552KL)',3,10,10,4,31,1,1,17,41,1,'Yes','Yes',2,'Yes','Yes',59996,19,29,'',0),(118,'Xiaomi Mi Max',4,24,21,4,31,5,4,17,37,1,'Yes','Yes',2,'Yes','Yes',47960,4,2,'',0),(119,'Lenovo Zuk Z1',12,20,10,4,31,5,1,14,41,1,'Yes','Yes',2,'Yes','Yes',29996,19,18,'',0),(120,'Huawei P9',5,10,17,4,31,5,4,11,41,1,'Yes','Yes',1,'Yes','Yes',159996,3,7,'',0),(121,'Apple iPhone SE',1,25,36,9,43,6,5,11,5,2,'Yes','Yes',1,'Yes','Yes',67996,9,1,'',0),(122,'LG G5',6,17,15,3,32,1,4,17,41,1,'Yes','Yes',2,'Yes','Yes',43996,15,28,'',0),(123,'Samsung Galaxy A5 (2016)',2,7,17,4,31,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',79960,6,27,'',0),(124,'Xiaomi Redmi Note 3',4,20,10,4,31,6,5,17,37,1,'Yes','Yes',2,'Yes','Yes',27596,17,5,'',0),(125,'Google Nexus 5X',6,8,17,4,31,6,5,13,37,1,'Yes','Yes',1,'Yes','Yes',103960,10,26,'',0),(126,'Apple iPhone 6s',1,26,14,6,30,6,5,11,37,2,'Yes','Yes',1,'Yes','Yes',91996,3,1,'',0),(127,'Lenovo Vibe P1',12,24,10,4,31,6,4,14,37,1,'Yes','Yes',2,'Yes','Yes',63996,1,27,'',0),(128,'Lenovo Vibe S1',12,27,35,4,31,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',43960,15,26,'',0),(129,'Samsung Galaxy S6 Edge+',2,10,16,3,32,1,4,17,37,1,'Yes','Yes',1,'Yes','Yes',71996,9,7,'',0),(130,'Samsung Galaxy Note 5',2,10,16,3,32,1,4,17,37,1,'Yes','Yes',1,'Yes','Yes',59996,20,22,'',0),(131,'Honor 7',9,2,17,4,31,5,5,22,41,1,'Yes','Yes',1,'Yes','Yes',63996,5,19,'',0),(132,'Asus ZenFone Selfie',3,10,10,4,31,6,5,14,14,1,'Yes','Yes',2,'Yes','Yes',59996,21,19,'',0),(133,'LG G4',6,10,10,3,32,5,4,17,41,1,'Yes','Yes',1,'Yes','Yes',53196,4,7,'',0),(134,'Xiaomi Mi 4i',4,2,35,4,31,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',51996,1,15,'',0),(135,'Lenovo K3 Note',12,7,10,4,31,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',39996,12,12,'',0),(136,'Lenovo Vibe Shot',12,7,35,4,31,5,4,17,41,1,'Yes','Yes',2,'Yes','Yes',39196,14,18,'',0),(137,'Samsung Galaxy S6 Edge',2,18,19,3,32,5,4,17,37,1,'Yes','Yes',1,'Yes','Yes',103996,5,14,'',0),(138,'Honor 6 Plus',9,16,10,4,31,5,4,41,41,1,'Yes','Yes',2,'Yes','Yes',105996,12,6,'',0),(139,'Apple iPhone 6 Plus',1,7,10,4,31,7,5,41,5,2,'Yes','Yes',1,'Yes','Yes',95996,8,1,'',0),(140,'Apple iPhone 6',1,14,14,6,30,7,5,41,5,2,'Yes','Yes',1,'Yes','Yes',63996,10,1,'',0),(141,'Sony Xperia Z3 Compact',13,18,37,7,15,6,5,24,21,1,'Yes','Yes',1,'Yes','Yes',155960,13,7,'',0),(142,'Samsung Galaxy Note 4',2,22,16,3,32,5,4,17,31,1,'Yes','Yes',1,'Yes','Yes',111600,20,12,'',0),(143,'Samsung Galaxy Note Edge',2,10,27,10,32,5,4,17,31,1,'Yes','Yes',1,'Yes','Yes',119800,9,22,'',0),(144,'Xiaomi Mi 4',4,2,35,4,31,5,5,14,41,1,'Yes','Yes',1,'Yes','No',31948,18,15,'',0),(145,'Lenovo Vibe Z2 Pro',12,1,11,3,32,5,4,17,37,1,'Yes','Yes',2,'Yes','Yes',119996,17,5,'',0),(146,'Samsung Galaxy S5',2,17,19,4,31,6,5,17,19,1,'Yes','Yes',1,'Yes','Yes',135996,8,13,'',0),(147,'Sony Xperia Z2',13,22,17,4,31,5,5,24,21,1,'Yes','Yes',1,'Yes','Yes',143960,9,27,'',0),(148,'Sony Xperia Z1 Compact',13,28,38,7,15,6,5,24,19,1,'Yes','Yes',1,'Yes','Yes',47996,11,26,'',0),(149,'Samsung Galaxy Grand 2',2,18,17,7,15,7,6,41,8,1,'Yes','Yes',2,'Yes','Yes',63996,12,12,'',0),(150,'Google Nexus 5',6,28,39,4,31,6,5,41,6,1,'Yes','Yes',1,'Yes','Yes',48000,10,28,'',0),(151,'Nokia Lumia 1520',8,9,11,4,31,6,4,22,5,1,'Yes','Yes',1,'Yes','Yes',139960,22,15,'',0),(152,'Apple iPhone 5c',1,29,36,9,43,7,6,41,5,2,'Yes','Yes',1,'Yes','Yes',33996,5,1,'',0),(153,'Xiaomi Mi 3',4,2,35,4,31,6,5,14,19,1,'Yes','Yes',1,'Yes','No',55996,17,21,'',0),(154,'Samsung Galaxy Note 3',2,22,16,4,31,5,4,14,19,1,'Yes','Yes',1,'Yes','Yes',202600,20,2,'',0),(155,'Sony Xperia Z1',13,10,35,4,31,6,5,24,19,1,'Yes','Yes',1,'Yes','Yes',226796,12,28,'',0),(156,'LG G2',6,10,17,4,31,6,5,14,20,1,'Yes','Yes',1,'Yes','Yes',89996,22,23,'',0),(157,'Sony Xperia Z',13,28,35,4,31,6,5,15,21,1,'Yes','Yes',1,'Yes','Yes',129960,1,29,'',0),(158,'Samsung Galaxy S III',2,30,40,7,15,7,5,41,8,1,'Yes','Yes',1,'Yes','Yes',23996,11,7,'',0),(159,'Samsung Galaxy S4',2,18,35,4,31,6,5,14,19,1,'Yes','Yes',1,'Yes','Yes',231660,20,8,'',0),(160,'Nokia Lumia 920',8,15,41,11,15,7,4,43,6,1,'Yes','Yes',1,'Yes','No',35996,2,27,'',0),(161,'Vivo S1 Pro',11,19,23,4,24,3,3,36,32,1,'Yes','Yes',2,'Yes','Yes',74396,16,8,'',0),(162,'Vivo U10',11,11,42,7,44,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',35960,21,20,'',0),(163,'Redmi 8A',4,11,43,7,37,6,4,11,41,1,'Yes','Yes',2,'Yes','Yes',25996,3,30,'',0),(164,'Samsung Galaxy M10s',2,1,8,7,37,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',33996,3,19,'',0),(165,'Redmi Note 8',4,1,7,4,38,5,4,36,14,1,'Yes','Yes',2,'Yes','Yes',36780,19,4,'',0),(166,'Redmi 8',4,11,43,7,37,1,1,11,41,1,'Yes','Yes',2,'Yes','Yes',31996,13,9,'',0),(167,'Honor 9X',9,1,4,4,24,1,3,36,17,1,'Yes','Yes',2,'Yes','Yes',55996,14,12,'',0),(168,'LG W30',6,1,26,7,37,5,4,14,17,1,'Yes','Yes',2,'Yes','Yes',33996,17,13,'',0),(169,'Redmi 7A',4,1,44,7,3,6,5,11,37,1,'Yes','Yes',2,'Yes','Yes',21996,12,27,'',0),(170,'Xiaomi Redmi Y3',4,1,26,7,37,5,4,11,32,1,'Yes','Yes',2,'Yes','Yes',31996,21,22,'',0),(171,'Honor 20i',9,9,28,4,24,1,3,27,32,1,'Yes','Yes',2,'Yes','Yes',43996,17,22,'',0),(172,'Vivo V15',11,1,22,4,24,4,1,11,32,1,'Yes','Yes',2,'Yes','Yes',59960,19,26,'',0),(173,'Redmi Go',4,10,35,7,15,7,6,41,37,1,'Yes','Yes',2,'Yes','Yes',17996,11,22,'',0),(174,'Asus ZenFone Max M2',3,1,26,7,37,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',29996,21,13,'',0),(175,'Asus ZenFone Lite L1 (ZA551KL)',3,10,44,7,3,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',19996,5,18,'',0),(176,'Asus ZenFone Max M1 (ZB556KL)',3,1,44,7,3,5,4,14,41,1,'Yes','No',2,'Yes','Yes',23996,18,23,'',0),(177,'Nokia 3.1 Plus',8,13,11,7,3,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',27400,20,11,'',0),(178,'Honor 8C',9,1,26,7,37,1,4,14,41,1,'Yes','Yes',2,'Yes','Yes',31996,18,18,'',0),(179,'Panasonic Eluga X1 Pro',14,10,29,4,29,4,3,17,17,1,'Yes','Yes',2,'Yes','Yes',119996,10,12,'',0),(180,'Honor 9N',9,10,32,4,38,5,4,14,17,1,'Yes','Yes',2,'Yes','Yes',29996,5,9,'',0),(181,'Huawei Nova 3i',5,6,7,4,24,1,3,17,27,1,'Yes','Yes',2,'Yes','Yes',87996,17,9,'',0),(182,'Huawei Nova 3',5,12,7,4,24,4,3,17,27,1,'Yes','Yes',2,'Yes','Yes',63996,7,12,'',0),(183,'Xiaomi Redmi 6 Pro',4,1,32,4,38,5,4,11,37,1,'Yes','Yes',2,'Yes','Yes',33160,3,18,'',0),(184,'Xiaomi Redmi 6A',4,10,44,7,3,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',22796,10,3,'',0),(185,'Xiaomi Redmi Y2',4,2,12,7,3,5,4,11,17,1,'Yes','Yes',2,'Yes','Yes',31996,8,13,'',0),(186,'Redmi 6',4,10,44,7,3,5,4,11,37,1,'Yes','Yes',2,'Yes','Yes',28720,2,20,'',0),(187,'Samsung Galaxy J8',2,13,11,7,3,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',61996,3,30,'',0),(188,'Samsung Galaxy J6',2,10,27,7,45,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',37960,1,17,'',0),(189,'Huawei P20 Lite',5,10,32,4,38,1,1,17,27,1,'Yes','Yes',2,'Yes','Yes',51200,12,25,'',0),(190,'Vivo V9',11,6,7,4,38,1,1,17,27,1,'Yes','Yes',2,'Yes','Yes',54960,12,28,'',0),(191,'Honor 7C',9,10,12,7,3,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',31196,3,19,'',0),(192,'Honor 9 Lite',9,10,45,4,8,5,4,14,14,1,'Yes','Yes',2,'Yes','Yes',35716,2,16,'',0),(193,'Vivo V7',11,10,16,7,3,1,4,17,27,1,'Yes','Yes',2,'Yes','Yes',55960,2,19,'',0),(194,'Redmi Y1',4,2,10,7,15,6,5,14,17,1,'Yes','Yes',2,'Yes','Yes',33960,3,9,'',0),(195,'Redmi 5A',4,10,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',28796,22,24,'',0),(196,'Honor 7X',9,6,46,4,8,1,4,17,41,1,'Yes','Yes',2,'Yes','Yes',50888,12,24,'',0),(197,'Honor Holly 4',9,10,35,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',33996,12,19,'',0),(198,'Vivo V7+',11,22,12,7,3,1,1,17,27,1,'Yes','Yes',2,'Yes','Yes',43960,12,12,'',0),(199,'Asus ZenFone 4 Selfie Pro',3,10,10,4,31,1,1,17,11,1,'Yes','Yes',2,'Yes','Yes',103996,14,9,'',0),(200,'LG Q6',6,10,10,4,8,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',35792,13,23,'',0),(201,'Vivo V5s',11,10,10,7,15,1,1,14,22,1,'Yes','Yes',2,'Yes','Yes',51960,6,17,'',0),(202,'Sony Xperia XA1 Ultra',13,8,11,4,31,1,1,26,17,1,'Yes','Yes',2,'No','Yes',23976,5,10,'',0),(203,'Sony Xperia XZs',13,7,17,4,31,1,4,18,14,1,'Yes','Yes',2,'Yes','Yes',119960,20,21,'',0),(204,'Honor 8 Lite',9,10,17,4,31,1,1,11,41,1,'Yes','No',2,'Yes','Yes',59732,1,14,'',0),(205,'Vivo V5 Plus',11,2,10,4,31,1,1,17,22,1,'Yes','Yes',2,'Yes','Yes',50000,15,28,'',0),(206,'Nokia 6',8,10,10,4,31,6,5,17,41,1,'Yes','Yes',2,'Yes','Yes',29000,4,12,'',0),(207,'Samsung Galaxy A7 (2017)',2,16,16,4,31,5,4,17,17,1,'Yes','Yes',2,'Yes','Yes',103600,9,2,'',0),(208,'Samsung Galaxy A5 (2017)',2,10,17,4,31,5,4,17,17,1,'Yes','Yes',2,'Yes','Yes',75996,1,23,'',0),(209,'Vivo V5',11,10,10,7,15,1,4,14,22,1,'Yes','Yes',2,'Yes','Yes',66164,7,6,'',0),(210,'Asus ZenFone 3 Max (ZC553KL)',3,20,10,4,31,6,4,17,41,1,'Yes','Yes',2,'Yes','Yes',34396,6,14,'',0),(211,'Honor 6X',9,6,10,4,31,5,4,11,41,1,'Yes','Yes',2,'Yes','Yes',55996,14,29,'',0),(212,'Lenovo P2',12,31,10,4,31,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',67996,22,19,'',0),(213,'Lenovo K6 Note',12,1,10,4,31,5,4,17,41,1,'Yes','Yes',2,'Yes','Yes',35560,13,13,'',0),(214,'Asus ZenFone 3 Laser',3,10,10,4,31,1,4,14,41,1,'Yes','Yes',2,'Yes','Yes',21996,13,13,'',0),(215,'Lenovo Phab 2 Plus',12,20,8,4,31,5,4,14,41,1,'Yes','Yes',1,'Yes','Yes',39996,1,10,'',0),(216,'Vivo V3Max',11,10,10,4,31,1,4,14,41,1,'Yes','Yes',2,'Yes','Yes',71916,12,29,'',0),(217,'Lenovo Vibe K5',12,17,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',23996,17,8,'',0),(218,'Lenovo Vibe K5 Plus',12,17,35,4,31,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',31996,19,8,'',0),(219,'LG X screen',6,28,47,7,15,6,5,14,41,1,'Yes','Yes',1,'Yes','Yes',31960,20,4,'',0),(220,'Lenovo Vibe K4 Note',12,6,10,4,31,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',35960,9,19,'',0),(221,'Honor 5X',9,10,10,4,31,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',29600,4,18,'',0),(222,'Sony Xperia Z5 Dual',13,7,17,4,31,5,4,26,37,1,'Yes','Yes',2,'Yes','Yes',183996,19,21,'',0),(223,'Acer Liquid Z630s',15,1,10,7,15,5,4,41,41,1,'Yes','Yes',2,'Yes','Yes',28760,21,14,'',0),(224,'Xiaomi Redmi 2 Prime',4,32,14,7,15,6,5,41,19,1,'Yes','Yes',2,'Yes','Yes',27996,11,5,'',0),(225,'Asus ZenFone Max',3,11,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',19996,14,21,'',0),(226,'Asus ZenFone 2 Deluxe',3,10,10,4,31,1,1,14,37,1,'Yes','Yes',2,'Yes','Yes',67996,4,28,'',0),(227,'Asus ZenFone 2 Laser (ZE550KL)',3,10,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',51996,19,6,'',0),(228,'Honor 4C',9,18,35,7,15,6,6,14,37,1,'Yes','Yes',2,'Yes','No',35996,5,23,'',0),(229,'Lenovo A6000 Plus',12,28,35,7,15,6,5,41,19,1,'Yes','Yes',2,'Yes','Yes',25596,16,16,'',0),(230,'Lenovo A7000',12,7,10,7,15,6,6,41,37,1,'Yes','Yes',2,'Yes','Yes',26664,20,20,'',0),(231,'Lenovo A6000',12,28,35,7,15,7,6,41,19,1,'Yes','Yes',2,'Yes','Yes',20000,16,6,'',0),(232,'Asus ZenFone Zoom',3,10,10,4,31,1,1,14,37,1,'Yes','Yes',1,'Yes','Yes',63996,1,10,'',0),(233,'Xiaomi Redmi 2',4,32,14,7,15,7,6,41,19,1,'Yes','Yes',2,'Yes','Yes',21596,15,13,'',0),(234,'Vivo Y15',11,33,41,12,20,7,7,37,19,1,'Yes','Yes',2,'Yes','No',26156,15,14,'',0),(235,'Honor 4X',9,10,10,7,15,6,6,14,37,1,'Yes','Yes',2,'Yes','Yes',39996,3,9,'',0),(236,'Nokia Lumia 830',8,32,35,7,15,7,5,9,3,1,'Yes','Yes',1,'Yes','Yes',79996,10,30,'',0),(237,'Samsung Galaxy Alpha',2,33,14,7,15,6,4,11,20,1,'Yes','Yes',1,'Yes','Yes',39996,15,2,'',0),(238,'Xiaomi Redmi 1S',4,15,14,7,15,7,6,41,7,1,'Yes','Yes',2,'Yes','No',23996,19,7,'',0),(239,'Panasonic P81',14,34,10,7,15,7,6,14,19,1,'Yes','Yes',2,'Yes','No',47600,2,13,'',0),(240,'Nokia X Dual SIM',8,29,36,12,19,7,7,29,1,1,'Yes','Yes',2,'Yes','No',31996,14,5,'',0),(241,'Lenovo S660',12,10,14,13,46,7,6,41,2,1,'Yes','Yes',2,'Yes','No',26800,19,13,'',0),(242,'LG G Pro 2',6,22,34,4,31,5,5,14,20,1,'Yes','Yes',1,'Yes','Yes',168084,7,16,'',0),(243,'Samsung Galaxy Note 3 Neo',2,2,10,7,15,6,5,41,19,1,'Yes','Yes',1,'Yes','Yes',45000,5,7,'',0),(244,'Asus ZenFone 6',3,6,11,7,15,6,5,14,19,1,'Yes','Yes',2,'Yes','No',35564,17,19,'',0),(245,'Nokia Lumia 1020',8,15,41,11,15,6,4,35,5,1,'Yes','Yes',1,'Yes','Yes',43960,1,28,'',0),(246,'Lenovo P780',12,1,35,7,15,7,7,41,2,1,'Yes','Yes',2,'Yes','No',61640,22,17,'',0),(247,'Sony Xperia U',13,35,48,12,20,7,6,37,2,1,'Yes','Yes',1,'Yes','No',19960,21,9,'',0),(248,'Sony Xperia SP',13,27,37,7,15,7,6,41,2,1,'Yes','Yes',1,'Yes','Yes',85960,6,20,'',0),(249,'Samsung Galaxy Y Pro Duos',2,36,49,14,47,8,8,30,2,1,'Yes','Yes',2,'Yes','No',22220,3,2,'',0),(250,'Samsung Galaxy Mega 5.8',2,18,9,13,46,7,6,41,8,1,'Yes','Yes',2,'Yes','No',27996,8,6,'',0),(251,'Nokia Lumia 620',8,35,50,12,19,7,6,37,2,1,'Yes','Yes',1,'Yes','No',19996,14,3,'',0),(252,'Nokia Lumia 820',8,26,38,12,19,7,6,41,2,1,'Yes','Yes',1,'Yes','No',78640,17,6,'',0),(253,'LG Optimus G',6,30,14,11,15,6,4,14,6,1,'Yes','Yes',1,'Yes','No',39996,20,4,'',0),(254,'Samsung Galaxy M10',2,9,43,7,37,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',27996,19,8,'',0),(255,'Samsung Galaxy J2 Core',2,18,35,13,46,7,6,41,37,1,'Yes','Yes',2,'Yes','Yes',24760,8,7,'',0),(256,'Panasonic Eluga Ray 550',14,6,16,7,3,5,5,14,41,1,'Yes','No',2,'Yes','Yes',22836,16,11,'',0),(257,'Samsung Galaxy On7 Prime',2,6,10,4,31,5,4,14,14,1,'Yes','Yes',2,'Yes','Yes',43960,18,5,'',0),(258,'Panasonic Eluga A3 Pro',14,1,17,7,15,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',36000,18,21,'',0),(259,'Vivo Y66',11,10,10,7,15,5,4,14,17,1,'Yes','Yes',2,'Yes','Yes',43996,16,17,'',0),(260,'Vivo Y55s',11,8,17,15,7,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',43960,22,28,'',0),(261,'Panasonic Eluga Prim',14,34,35,7,15,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',33760,21,17,'',0),(262,'Panasonic Eluga Arc',14,14,14,7,15,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',19596,20,7,'',0),(263,'Vivo V3',11,18,35,7,15,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',59920,22,27,'',0),(264,'Honor Holly 2 Plus',9,1,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',34224,2,16,'',0),(265,'Vivo V1Max',11,8,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',52000,22,25,'',0),(266,'Panasonic Eluga Icon',14,13,10,7,15,6,5,14,41,1,'Yes','Yes',2,'Yes','Yes',18000,14,15,'',0),(267,'Sony Xperia Z3+',13,7,17,4,31,5,4,24,37,1,'Yes','Yes',1,'Yes','Yes',139660,4,24,'',0),(268,'LG G4 Stylus',6,10,16,7,15,7,5,14,37,1,'Yes','Yes',2,'Yes','Yes',23996,14,14,'',0),(269,'Microsoft Lumia 540 Dual SIM',16,32,35,7,15,7,6,41,37,1,'Yes','Yes',2,'Yes','No',28000,13,7,'',0),(270,'Asus ZenFone C (ZC451CG)',3,30,41,12,20,7,6,37,2,1,'Yes','No',2,'Yes','No',21996,10,14,'',0),(271,'Honor Holly',9,15,35,7,15,7,5,41,19,1,'Yes','Yes',2,'Yes','No',23996,1,26,'',0),(272,'Lenovo Vibe X2',12,28,35,4,31,6,4,14,37,1,'Yes','Yes',2,'Yes','Yes',69996,11,28,'',0),(273,'LG G3 Stylus',6,10,10,13,46,7,6,14,6,1,'Yes','Yes',2,'Yes','No',41960,17,29,'',0),(274,'LG G3 Beat',6,34,35,7,15,7,6,41,6,1,'Yes','Yes',1,'Yes','Yes',23996,14,12,'',0),(275,'Sony Xperia T3',13,34,15,7,15,7,6,41,4,1,'Yes','Yes',1,'Yes','Yes',73960,11,14,'',0),(276,'LG L90 Dual',6,34,14,13,46,7,6,41,2,1,'Yes','Yes',2,'Yes','No',13196,21,28,'',0),(277,'Nokia Lumia 525',8,36,36,12,19,7,6,37,1,1,'Yes','Yes',1,'Yes','No',30000,14,12,'',0),(278,'Nokia Lumia 1320',8,9,11,7,15,7,6,37,2,1,'Yes','Yes',1,'Yes','Yes',39840,8,12,'',0),(279,'LG G Pro Lite',6,2,10,13,46,7,6,41,6,1,'Yes','Yes',2,'Yes','No',23596,6,6,'',0),(280,'Nokia Lumia 625',8,15,14,12,19,7,6,37,2,1,'Yes','Yes',1,'Yes','Yes',19996,1,6,'',0),(281,'Samsung Galaxy S4 Zoom',2,28,38,16,46,7,6,17,8,1,'Yes','Yes',1,'Yes','Yes',63960,16,12,'',0),(282,'Samsung Galaxy Pocket',2,37,51,14,47,8,9,19,1,1,'Yes','Yes',1,'Yes','No',12760,14,17,'',0),(283,'Samsung Galaxy Grand Duos',2,30,35,12,19,7,6,41,19,1,'Yes','Yes',2,'Yes','No',35996,11,22,'',0),(284,'Nokia Lumia 610',8,35,52,12,19,8,6,37,1,1,'Yes','Yes',1,'Yes','No',19960,18,29,'',0),(285,'Nokia Lumia 520',8,36,36,12,19,7,6,37,1,1,'Yes','Yes',1,'Yes','No',15400,12,12,'',0),(286,'LG Optimus L3 II Dual',6,29,53,14,47,7,7,29,1,1,'Yes','Yes',2,'Yes','No',7996,7,16,'',0),(287,'Asus ZenFone Live',3,8,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',18396,10,29,'',0),(288,'Samsung Galaxy S20+',2,19,25,3,48,3,3,11,9,1,'Yes','Yes',2,'Yes','Yes',295996,18,13,'',0),(289,'Samsung Galaxy S20 Ultra',2,11,54,3,48,2,3,10,34,1,'Yes','Yes',2,'Yes','Yes',371996,12,4,'',0),(290,'Redmi 8A Dual',4,11,43,7,37,6,4,14,41,1,'Yes','Yes',2,'Yes','Yes',25996,13,21,'',0),(291,'Samsung Galaxy S20',2,1,13,3,48,3,3,11,9,1,'Yes','Yes',2,'Yes','Yes',267996,5,24,'',0),(292,'Nokia 2.3',8,1,13,7,37,6,4,14,37,1,'Yes','No',2,'Yes','Yes',28596,22,16,'',0),(293,'Vivo Y19',11,11,22,4,24,1,3,17,17,1,'Yes','Yes',2,'Yes','Yes',55960,7,15,'',0),(294,'Google Pixel 4 XL',7,21,7,3,23,4,1,17,41,1,'Yes','Yes',2,'Yes','Yes',335600,9,9,'',0),(295,'Google Pixel 4',7,17,16,4,38,4,1,17,41,1,'Yes','Yes',2,'Yes','Yes',278000,14,18,'',0),(296,'Lenovo K10 Plus',12,20,43,7,37,1,1,14,17,1,'Yes','Yes',2,'Yes','Yes',43996,12,30,'',0),(297,'iPhone 11 Pro',1,10,9,5,26,1,1,11,11,2,'Yes','Yes',2,'Yes','Yes',387600,19,1,'',0),(298,'Samsung Galaxy A20s',2,1,1,7,35,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',43996,12,2,'',0),(299,'Samsung Galaxy A30s',2,1,8,7,35,1,1,28,17,1,'Yes','Yes',2,'Yes','Yes',55920,17,25,'',0),(300,'Samsung Galaxy A10s',2,1,13,7,37,6,4,14,41,1,'Yes','Yes',2,'Yes','Yes',33996,20,12,'',0),(301,'Huawei Mate 30 Pro',5,19,22,17,34,3,3,34,32,1,'Yes','Yes',2,'Yes','Yes',309196,14,2,'',0),(302,'Samsung Galaxy Note 10',2,13,7,4,38,3,2,11,9,1,'Yes','Yes',2,'Yes','Yes',279996,21,21,'',0),(303,'LG W30 Pro',6,20,43,7,37,1,1,14,17,1,'Yes','No',2,'Yes','Yes',49920,16,11,'',0),(304,'Vivo Y12',11,11,42,7,44,5,1,41,41,1,'Yes','Yes',2,'Yes','Yes',38200,6,7,'',0),(305,'Huawei Y9 Prime 2019',5,1,4,4,24,1,3,17,17,1,'Yes','No',2,'Yes','Yes',57800,9,23,'',0),(306,'Samsung Galaxy A80',2,21,25,4,34,3,3,36,1,1,'Yes','Yes',2,'Yes','Yes',143960,16,27,'',0),(307,'Samsung Galaxy A2 Core',2,18,35,13,46,7,5,37,37,1,'Yes','Yes',2,'Yes','Yes',21160,19,14,'',0),(308,'Vivo Y91i',11,1,43,7,37,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',27196,16,3,'',0),(309,'Panasonic Eluga Ray 800',14,1,10,4,31,1,1,14,41,1,'Yes','No',2,'Yes','Yes',25952,20,21,'',0),(310,'Samsung Galaxy Fold',2,38,55,18,49,2,10,17,9,1,'Yes','Yes',2,'Yes','Yes',659996,14,4,'',0),(311,'Vivo Y91',11,1,43,7,37,6,4,14,41,1,'Yes','No',2,'Yes','Yes',33396,16,4,'',0),(312,'Panasonic Eluga Z1 Pro',14,1,56,7,50,1,1,14,41,1,'Yes','No',2,'Yes','Yes',33960,2,3,'',0),(313,'Panasonic Eluga Z1',14,1,56,7,50,5,4,14,41,1,'Yes','No',2,'Yes','Yes',27960,1,25,'',0),(314,'Panasonic Eluga Ray 530',14,10,16,7,3,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',35996,21,26,'',0),(315,'Razer Phone 2',17,1,57,3,32,3,1,11,41,1,'Yes','Yes',1,'Yes','Yes',219960,22,19,'',0),(316,'Panasonic Eluga X1',14,10,29,4,29,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',35596,8,27,'',0),(317,'Vivo V11',11,6,7,4,24,4,1,17,28,1,'Yes','Yes',2,'Yes','Yes',56916,10,6,'',0),(318,'Samsung Galaxy On8 (2018)',2,13,11,7,45,1,1,17,17,1,'Yes','Yes',2,'Yes','Yes',79960,4,11,'',0),(319,'Samsung Galaxy On6',2,10,27,7,45,1,1,14,41,1,'Yes','No',2,'Yes','Yes',70400,17,2,'',0),(320,'Vivo Y81',11,6,43,7,37,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',39160,4,11,'',0),(321,'Panasonic P90',14,27,35,7,15,7,5,37,37,1,'Yes','Yes',2,'Yes','Yes',15596,2,11,'',0),(322,'Lenovo A5',12,1,44,7,3,6,5,14,41,1,'Yes','Yes',2,'Yes','Yes',21200,21,15,'',0),(323,'Vivo Y83',11,6,43,7,37,1,4,14,41,1,'Yes','Yes',2,'Yes','Yes',41596,6,15,'',0),(324,'Nokia X6',8,2,9,4,38,1,4,17,17,1,'Yes','Yes',2,'Yes','Yes',27996,20,7,'',0),(325,'Samsung Galaxy J4',2,10,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',27696,21,13,'',0),(326,'Samsung Galaxy J2 (2018)',2,18,35,13,46,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',27196,15,21,'',0),(327,'Vivo Y53i',11,34,35,13,46,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',30824,18,5,'',0),(328,'Vivo V9 Youth',11,6,7,4,38,1,4,17,17,1,'Yes','Yes',2,'Yes','Yes',35960,8,26,'',0),(329,'Vivo Y71',11,9,11,7,3,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',34000,6,6,'',0),(330,'Honor 7A',9,10,16,7,3,6,4,14,41,1,'Yes','Yes',2,'Yes','Yes',27996,16,27,'',0),(331,'LG K9',6,34,35,7,15,6,5,41,37,1,'Yes','No',2,'Yes','Yes',25196,8,29,'',0),(332,'Samsung Galaxy J7 Prime 2',2,6,10,4,31,5,4,14,14,1,'Yes','Yes',2,'Yes','Yes',42000,21,2,'',0),(333,'Sony Xperia XZ2',13,22,16,4,8,1,1,18,37,1,'Yes','Yes',2,'Yes','Yes',231600,9,18,'',0),(334,'Panasonic P100',14,32,35,7,15,7,5,41,37,1,'Yes','No',2,'Yes','Yes',17996,13,7,'',0),(335,'Vivo Y53',11,34,35,13,46,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',33960,10,8,'',0),(336,'Sony Xperia L2',13,6,10,7,15,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',293200,21,3,'',0),(337,'Sony Xperia XA2 Ultra',13,16,11,4,31,1,4,26,17,1,'Yes','Yes',2,'Yes','Yes',296656,22,17,'',0),(338,'Panasonic Eluga I9',14,34,35,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',21960,20,23,'',0),(339,'Panasonic Eluga I5',14,34,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',35960,18,6,'',0),(340,'Panasonic Eluga A4',14,11,17,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',23740,11,24,'',0),(341,'Redmi Y1 Lite',4,2,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',23996,2,18,'',0),(342,'Huawei Holly 4 Plus',5,1,10,7,51,5,4,11,41,1,'Yes','Yes',2,'Yes','Yes',59960,16,28,'',0),(343,'Sony Xperia R1 Plus',13,18,17,7,15,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',38000,18,30,'',0),(344,'Sony Xperia R1',13,18,17,7,15,6,5,14,41,1,'Yes','Yes',2,'Yes','Yes',39960,21,26,'',0),(345,'Nokia 2',8,20,35,7,15,7,6,41,37,1,'Yes','Yes',2,'Yes','Yes',27996,11,25,'',0),(346,'Samsung Galaxy J2 (2017)',2,15,14,13,46,7,6,37,19,1,'Yes','Yes',2,'Yes','Yes',24000,20,18,'',0),(347,'LG K7i',6,34,35,12,20,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',17284,2,16,'',0),(348,'Panasonic Eluga I4',14,10,35,7,15,6,5,41,37,1,'Yes','Yes',2,'No','Yes',22796,19,10,'',0),(349,'Panasonic Eluga Ray 700',14,11,10,4,31,5,4,14,14,1,'Yes','Yes',2,'Yes','Yes',27996,10,5,'',0),(350,'Panasonic Eluga Ray 500',14,1,35,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',23564,4,26,'',0),(351,'Lenovo K8',12,1,17,7,15,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',28160,15,9,'',0),(352,'Panasonic P9',14,32,35,12,20,7,5,41,37,1,'Yes','Yes',2,'Yes','Yes',26416,11,3,'',0),(353,'Sony Xperia XA1 Plus',13,9,10,4,31,5,4,26,41,1,'Yes','Yes',2,'Yes','Yes',63960,13,6,'',0),(354,'Vivo Y69',11,10,10,7,15,5,4,14,17,1,'Yes','Yes',2,'Yes','Yes',38000,2,7,'',0),(355,'Asus ZenFone 4',3,6,10,4,31,1,1,11,41,1,'Yes','Yes',2,'Yes','Yes',25996,7,29,'',0),(356,'Panasonic Eluga I2 Activ',14,32,35,7,15,7,5,41,37,1,'Yes','Yes',2,'Yes','Yes',19960,1,10,'',0),(357,'Asus ZenFone 4 Selfie DC (ZD553KL)',3,10,10,7,15,1,1,17,22,1,'Yes','Yes',2,'Yes','Yes',27992,5,27,'',0),(358,'Panasonic Eluga A3',14,1,17,7,15,5,5,14,41,1,'Yes','Yes',2,'No','Yes',23740,6,19,'',0),(359,'Samsung Galaxy J7 Nxt',2,10,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',43960,19,17,'',0),(360,'Asus ZenFone 4 Selfie',3,10,10,4,31,1,4,17,11,1,'Yes','Yes',1,'Yes','Yes',25796,14,8,'',0),(361,'LG Q6+',6,10,10,4,8,1,1,14,37,1,'Yes','Yes',1,'Yes','Yes',39996,20,9,'',0),(362,'Samsung Galaxy J7 Max',2,6,16,4,31,1,4,14,14,1,'Yes','Yes',2,'Yes','Yes',44184,6,8,'',0),(363,'Samsung Galaxy J7 Pro',2,16,10,4,31,5,1,14,14,1,'Yes','Yes',2,'No','Yes',67600,21,22,'',0),(364,'Panasonic Eluga I3 Mega',14,1,10,7,15,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',23324,6,10,'',0),(365,'Samsung Z4',2,39,41,12,19,7,6,37,37,1,'Yes','Yes',2,'Yes','Yes',19160,20,21,'',0),(366,'Panasonic P85',14,1,35,7,15,6,5,41,19,1,'Yes','No',2,'Yes','Yes',25996,22,12,'',0),(367,'Panasonic Eluga Ray',14,1,35,7,15,5,5,14,37,1,'Yes','No',2,'Yes','Yes',31996,6,7,'',0),(368,'Asus ZenFone Go 5.5 (ZB552KL)',3,10,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',24440,11,9,'',0),(369,'Honor Bee 2',9,30,41,12,20,7,6,37,19,1,'Yes','Yes',2,'Yes','Yes',21996,17,12,'',0),(370,'Panasonic Eluga Ray X',14,1,10,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',23720,12,6,'',0),(371,'Panasonic Eluga Ray Max',14,10,17,4,31,1,4,17,41,1,'Yes','Yes',2,'Yes','Yes',45996,1,27,'',0),(372,'Asus ZenFone Go 5.0 LTE (ZB500KL)',3,18,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',19996,19,30,'',0),(373,'LG Stylus 3',6,22,16,7,15,5,5,14,41,1,'Yes','Yes',1,'Yes','Yes',27996,18,3,'',0),(374,'LG K8 (2017)',6,34,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',29800,9,6,'',0),(375,'Panasonic Eluga Mark 2',14,10,10,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',55960,1,5,'',0),(376,'Panasonic P71',14,15,35,7,15,7,5,41,19,1,'Yes','Yes',2,'No','Yes',27992,3,26,'',0),(377,'Huawei Mate 9',5,1,34,4,31,1,1,22,41,1,'Yes','Yes',2,'Yes','Yes',215932,11,18,'',0),(378,'Samsung Galaxy On Nxt',2,6,10,4,31,5,5,14,41,1,'Yes','Yes',2,'Yes','Yes',44800,13,16,'',0),(379,'Honor 8 Smart',9,10,17,4,31,6,5,14,41,1,'Yes','Yes',1,'No','Yes',66796,5,4,'',0),(380,'Xiaomi Mi Max Prime',4,24,21,4,31,1,3,17,37,1,'Yes','Yes',2,'Yes','Yes',79996,16,9,'',0),(381,'Google Pixel',7,17,35,4,31,1,4,13,41,1,'Yes','Yes',1,'Yes','Yes',89196,2,20,'',0),(382,'Samsung Galaxy On8',2,6,10,4,31,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',31996,2,30,'',0),(383,'Panasonic P77',14,15,35,7,15,7,6,41,19,1,'Yes','Yes',2,'No','Yes',27960,19,20,'',0),(384,'Samsung Galaxy J5 Prime',2,27,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',49996,12,13,'',0),(385,'Lenovo A7700',12,7,10,7,15,6,5,41,19,1,'Yes','Yes',2,'Yes','Yes',27960,6,15,'',0),(386,'Lenovo A6600 Plus',12,28,35,7,15,6,5,41,19,1,'Yes','Yes',2,'Yes','Yes',29200,3,27,'',0),(387,'Lenovo A6600',12,28,35,7,15,7,5,41,19,1,'Yes','Yes',2,'Yes','Yes',29800,16,13,'',0),(388,'Vivo Y21L',11,15,41,12,20,7,5,37,19,1,'Yes','Yes',2,'Yes','Yes',28400,20,9,'',0),(389,'Samsung Z2',2,29,36,12,19,7,6,37,2,1,'Yes','Yes',2,'Yes','Yes',14396,20,14,'',0),(390,'Asus ZenFone Go (ZB450KL)',3,30,41,12,20,7,6,41,19,1,'Yes','Yes',2,'Yes','Yes',17996,13,3,'',0),(391,'Lenovo Vibe K5 Note',12,13,10,4,31,5,4,14,41,1,'Yes','Yes',2,'Yes','Yes',31960,11,30,'',0),(392,'Panasonic Eluga Arc 2',14,34,35,7,15,5,4,41,37,1,'Yes','Yes',2,'Yes','Yes',22396,12,22,'',0),(393,'Panasonic T44 Lite',14,27,36,19,12,7,6,19,2,1,'Yes','No',2,'Yes','No',8760,21,5,'',0),(394,'Samsung Galaxy J2 Pro',2,18,35,7,15,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',41920,15,11,'',0),(395,'Asus ZenFone 3 Max (ZC520TL)',3,20,17,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',55960,8,15,'',0),(396,'Samsung Galaxy On7 Pro',2,10,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',23960,4,12,'',0),(397,'Samsung Galaxy On5 Pro',2,18,35,7,15,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',25920,20,16,'',0),(398,'Samsung Galaxy J2 (2016)',2,18,35,7,15,7,6,41,37,1,'Yes','Yes',1,'Yes','Yes',23960,6,28,'',0),(399,'Panasonic Eluga Note',14,10,10,4,31,5,4,17,37,1,'Yes','Yes',2,'Yes','Yes',43960,10,5,'',0),(400,'Vivo X7',11,10,17,4,31,1,1,14,17,1,'Yes','Yes',2,'Yes','Yes',39996,16,30,'',0),(401,'Panasonic P75',14,11,35,7,15,7,6,41,37,1,'Yes','Yes',2,'Yes','No',21996,4,11,'',0),(402,'Xiaomi Redmi 3S',4,20,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',26000,20,10,'',0),(403,'Panasonic T44',14,27,36,12,19,7,6,37,19,1,'Yes','Yes',2,'Yes','No',14360,18,22,'',0),(404,'Panasonic T30',14,36,36,12,19,7,7,37,19,1,'Yes','Yes',2,'Yes','No',9952,8,3,'',0),(405,'Lenovo Phab 2',12,20,8,7,15,5,4,14,37,1,'Yes','Yes',1,'Yes','Yes',35996,5,7,'',0),(406,'Lenovo Phab 2 Pro',12,20,8,3,32,1,1,17,41,1,'Yes','Yes',1,'Yes','Yes',91996,11,2,'',0),(407,'Samsung Galaxy J3 Pro',2,18,35,7,15,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',33196,20,25,'',0),(408,'LG Stylus 2 Plus',6,10,16,4,31,5,5,17,41,1,'Yes','Yes',1,'Yes','Yes',35996,19,15,'',0),(409,'LG X Power',6,20,15,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',27996,14,24,'',0),(410,'Panasonic Eluga A2',14,1,35,7,15,5,5,41,37,1,'Yes','Yes',2,'Yes','Yes',21720,3,23,'',0),(411,'Sony Xperia XA Ultra',13,8,11,4,31,5,5,25,17,1,'Yes','Yes',1,'Yes','Yes',31996,20,15,'',0),(412,'Lenovo Vibe C',12,28,35,7,15,7,6,37,19,1,'Yes','Yes',1,'Yes','Yes',18000,13,23,'',0),(413,'Honor 5C',9,10,17,4,31,6,5,14,41,1,'Yes','Yes',2,'Yes','No',39996,6,25,'',0),(414,'Panasonic Eluga I3',14,8,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',22196,19,16,'',0),(415,'Asus ZenFone Go 4.5 (ZB452KG)',3,30,41,12,20,7,6,37,2,1,'Yes','Yes',2,'Yes','No',15996,10,27,'',0),(416,'Asus Zenfone Go 5.0 LTE',3,34,35,7,15,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',19960,5,28,'',0),(417,'Samsung Galaxy A9 Pro',2,11,11,4,31,1,4,17,41,1,'Yes','Yes',2,'Yes','Yes',79920,2,4,'',0),(418,'Samsung Galaxy J7 (2016)',2,6,10,7,4,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',53800,1,16,'',0),(419,'Samsung Galaxy J5 (2016)',2,2,17,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',39996,15,13,'',0),(420,'Vivo Y31L',11,32,14,13,46,7,5,41,37,1,'Yes','Yes',2,'Yes','Yes',34396,17,5,'',0),(421,'Panasonic T50',14,25,41,12,20,7,6,37,19,1,'Yes','Yes',2,'Yes','No',27040,3,12,'',0),(422,'Sony Xperia X',13,18,35,4,31,5,4,26,14,1,'Yes','Yes',1,'Yes','Yes',79960,15,10,'',0),(423,'Sony Xperia XA',13,28,35,7,15,6,5,14,41,1,'Yes','Yes',1,'Yes','Yes',31976,22,20,'',0),(424,'HP Elite x3',18,5,58,3,32,1,1,16,41,1,'Yes','Yes',1,'Yes','Yes',354876,19,23,'',0),(425,'LG Stylus 2',6,10,16,7,15,7,5,14,41,1,'Yes','Yes',1,'Yes','Yes',31996,18,30,'',0),(426,'Microsoft Lumia 650',16,15,35,7,15,7,5,41,37,1,'Yes','Yes',1,'Yes','Yes',39960,17,24,'',0),(427,'LG X cam',6,34,17,4,31,6,5,14,41,1,'Yes','Yes',1,'Yes','Yes',32000,6,24,'',0),(428,'Lenovo Vibe P1 Turbo',12,11,10,4,31,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',30716,10,3,'',0),(429,'Vivo Y51L',11,27,35,13,46,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',36396,9,29,'',0),(430,'Lenovo K5 Note',12,13,10,4,31,6,5,14,41,1,'Yes','Yes',2,'Yes','Yes',35960,12,30,'',0),(431,'Panasonic Eluga Turbo',14,27,35,7,15,5,4,14,37,1,'Yes','Yes',2,'Yes','Yes',55952,13,19,'',0),(432,'Lenovo A7000 Turbo',12,7,10,4,31,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',56000,17,3,'',0),(433,'LG K7',6,30,35,12,20,7,6,37,37,1,'Yes','Yes',1,'Yes','No',3976,14,14,'',0),(434,'LG K10',6,28,15,7,15,7,6,14,37,1,'Yes','Yes',1,'Yes','No',15976,7,6,'',0),(435,'Xiaomi Redmi Note Prime',4,2,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',35996,19,6,'',0),(436,'Panasonic Eluga Mark',14,34,10,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',27960,6,16,'',0),(437,'Samsung Galaxy A7 (2016)',2,6,10,4,31,5,5,14,37,1,'Yes','Yes',1,'Yes','Yes',39996,10,6,'',0),(438,'Samsung Galaxy J3 (6)',2,18,35,7,15,7,6,41,37,1,'Yes','Yes',1,'Yes','Yes',19996,10,7,'',0),(439,'Samsung Galaxy On7',2,10,10,7,15,7,6,14,37,1,'Yes','Yes',2,'Yes','Yes',39908,18,27,'',0),(440,'Samsung Galaxy On5',2,18,35,7,15,7,6,41,37,1,'Yes','Yes',2,'Yes','Yes',18620,2,7,'',0),(441,'Lenovo A1000',12,15,36,12,19,7,6,37,2,1,'Yes','Yes',2,'Yes','No',14196,7,27,'',0),(442,'Lenovo A6000 Shot',12,28,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',23960,8,19,'',0),(443,'Samsung Z3',2,18,35,7,15,7,6,41,37,1,'Yes','Yes',2,'Yes','No',19960,1,30,'',0),(444,'Panasonic P65 Flash',14,7,10,7,15,7,6,41,19,1,'Yes','Yes',2,'Yes','No',33996,21,28,'',0),(445,'Panasonic P50 Idol',14,32,35,7,15,7,6,41,19,1,'Yes','Yes',2,'Yes','No',15596,17,23,'',0),(446,'Microsoft Lumia 550',16,30,14,7,15,7,6,37,19,1,'Yes','Yes',1,'Yes','Yes',21592,8,9,'',0),(447,'Microsoft Lumia 950',16,10,17,3,32,5,4,22,37,1,'Yes','Yes',1,'Yes','Yes',165560,22,3,'',0),(448,'Microsoft Lumia 950 XL',16,6,16,3,32,5,4,22,37,1,'Yes','Yes',1,'Yes','Yes',99996,18,22,'',0),(449,'LG V10',6,10,16,3,32,1,1,17,37,1,'Yes','Yes',1,'Yes','Yes',59996,10,28,'',0),(450,'Vivo Y15S',11,33,41,20,12,7,6,37,19,1,'Yes','Yes',2,'Yes','No',19996,19,17,'',0),(451,'Samsung Galaxy J1 Ace',2,14,38,12,19,7,7,37,19,1,'Yes','Yes',2,'Yes','No',17200,18,4,'',0),(452,'Vivo Y27L',11,28,14,7,15,7,5,41,37,1,'Yes','Yes',2,'Yes','Yes',36004,7,2,'',0),(453,'Lenovo Vibe P1m',12,40,35,7,15,6,5,41,37,1,'Yes','Yes',2,'Yes','Yes',27996,20,13,'',0),(454,'Sony Xperia Z5 Premium Dual',13,9,10,8,42,5,4,26,37,1,'Yes','Yes',2,'Yes','Yes',230000,11,14,'',0),(455,'Acer Liquid Z530',15,27,35,7,15,6,5,41,41,1,'Yes','Yes',1,'Yes','Yes',23000,21,19,'',0),(456,'Panasonic Eluga Switch',14,7,10,4,31,6,4,14,41,1,'Yes','Yes',2,'Yes','Yes',59960,9,9,'',0),(457,'Lenovo A2010',12,15,41,12,20,7,6,37,19,1,'Yes','Yes',2,'Yes','Yes',24000,21,3,'',0),(458,'Panasonic T45 4G',14,14,41,12,20,7,6,37,2,1,'Yes','Yes',2,'Yes','Yes',18600,19,28,'',0),(459,'Panasonic Eluga I2',14,15,35,7,15,7,6,41,19,1,'Yes','Yes',2,'Yes','Yes',23320,19,18,'',0),(460,'Panasonic Eluga L2',14,34,10,13,46,7,6,41,19,1,'Yes','Yes',2,'Yes','Yes',15960,22,8,'',0),(461,'Philips Xenium S309',19,25,36,12,19,7,7,37,2,1,'Yes','Yes',1,'Yes','No',12796,6,17,'',0),(462,'Asus ZenFone 2 Laser (ZE601KL)',3,10,11,4,31,5,5,14,37,1,'Yes','Yes',2,'Yes','Yes',35996,18,23,'',0),(463,'Asus ZenFone 2 Laser (ZE500KL)',3,30,35,7,15,6,6,14,37,1,'Yes','Yes',2,'Yes','Yes',23960,5,21,'',0),(464,'Sony Xperia M5',13,18,35,4,31,5,5,25,14,1,'Yes','Yes',1,'Yes','Yes',23996,20,4,'',0),(465,'Sony Xperia C5 Ultra',13,7,11,4,31,6,5,14,14,1,'Yes','Yes',1,'Yes','Yes',103960,9,16,'',0),(466,'Panasonic Love T10',14,36,48,12,19,7,7,19,2,1,'Yes','No',2,'Yes','No',8000,16,12,'',0),(467,'LG Max',6,34,35,12,20,7,6,41,37,1,'Yes','Yes',2,'Yes','No',15996,6,25,'',0),(468,'Panasonic T33',14,29,36,12,19,7,7,29,2,1,'Yes','Yes',2,'Yes','No',11960,5,13,'',0),(469,'Vivo V1',11,28,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','Yes',61200,13,12,'',0),(470,'Panasonic Eluga Z',14,30,35,7,15,6,5,14,37,1,'Yes','Yes',2,'Yes','No',22116,15,4,'',0);
/*!40000 ALTER TABLE `base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_conn_order`
--

DROP TABLE IF EXISTS `base_conn_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base_conn_order` (
  `product_id` int NOT NULL,
  `order_id` int NOT NULL,
  `db` int NOT NULL,
  PRIMARY KEY (`product_id`,`order_id`),
  KEY `conn_order_idx` (`order_id`),
  CONSTRAINT `conn_base` FOREIGN KEY (`product_id`) REFERENCES `base` (`base_id`),
  CONSTRAINT `conn_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_conn_order`
--

LOCK TABLES `base_conn_order` WRITE;
/*!40000 ALTER TABLE `base_conn_order` DISABLE KEYS */;
INSERT INTO `base_conn_order` VALUES (1,1,1);
/*!40000 ALTER TABLE `base_conn_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battery`
--

DROP TABLE IF EXISTS `battery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `battery` (
  `capacity` int NOT NULL,
  `battery_id` int NOT NULL,
  PRIMARY KEY (`battery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battery`
--

LOCK TABLES `battery` WRITE;
/*!40000 ALTER TABLE `battery` DISABLE KEYS */;
INSERT INTO `battery` VALUES (4000,1),(3100,2),(4300,3),(6000,4),(4200,5),(3300,6),(2900,7),(2700,8),(3400,9),(3000,10),(5000,11),(3800,12),(3500,13),(1800,14),(2000,15),(3600,16),(2800,17),(2600,18),(4500,19),(4100,20),(3700,21),(3200,22),(5300,23),(4900,24),(1600,25),(1700,26),(2400,27),(2300,28),(1500,29),(2100,30),(5100,31),(2200,32),(1900,33),(2500,34),(1300,35),(1400,36),(1200,37),(4400,38),(1100,39),(3900,40);
/*!40000 ALTER TABLE `battery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brand_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `brand_id` int NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
INSERT INTO `brand` VALUES ('Apple',1),('Samsung',2),('Asus',3),('Xiaomi',4),('Huawei',5),('LG',6),('Google',7),('Nokia',8),('Honor',9),('Poco',10),('Vivo',11),('Lenovo',12),('Sony',13),('Panasonic',14),('Acer',15),('Microsoft',16),('Razer',17),('HP',18),('Philips',19);
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera`
--

DROP TABLE IF EXISTS `camera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera` (
  `camera` double NOT NULL,
  `camera_id` int NOT NULL,
  PRIMARY KEY (`camera_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera`
--

LOCK TABLES `camera` WRITE;
/*!40000 ALTER TABLE `camera` DISABLE KEYS */;
INSERT INTO `camera` VALUES (0,1),(0.3,2),(0.9,3),(1.1,4),(1.2,5),(1.3,6),(1.6,7),(1.9,8),(10,9),(108,10),(12,11),(12.2,12),(12.3,13),(13,14),(13.1,15),(15,16),(16,17),(19,18),(2,19),(2.1,20),(2.2,21),(20,22),(20,23),(20.7,24),(21.5,25),(23,26),(24,27),(25,28),(3,29),(3.2,30),(3.7,31),(32,32),(4,33),(40,34),(41,35),(48,36),(5,37),(5,38),(64,39),(7,40),(8,41),(8,42),(8.7,43);
/*!40000 ALTER TABLE `camera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `cpu_id` int NOT NULL,
  `cpu_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`cpu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
INSERT INTO `cpu` VALUES (1,'Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)'),(2,'Octa-core (2x2.73 GHz Mongoose M4 & 2x2.4 GHz Cortex-A75 & 4x1.9 GHz Cortex-A55) - EMEA/LATAM'),(3,'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485) - USA/China'),(4,'Octa-core (1x2.96 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)'),(5,'Octa-core (2x2.2 GHz Kryo 470 Gold & 6x1.8 GHz Kryo 470 Silver)'),(6,'Octa-core (2x2.6 GHz Cortex-A76 & 2x1.92 GHz Cortex-A76 & 4x1.8 GHz Cortex-A55)'),(7,'Octa-core (2x2.0 GHz Kryo 460 Gold & 6x1.7 GHz Kryo 460 Silver)'),(8,'Octa-core (4x2.8 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)'),(9,'Hexa-core (2x2.5 GHz Vortex + 4x1.6 GHz Tempest)'),(10,'Octa-core (4x2.5 GHz Kryo 385 Gold & 4x1.6 GHz Kryo 385 Silver)'),(11,'Octa-core (4x2.7 GHz Mongoose M3 & 4x1.8 GHz Cortex-A55)'),(12,'Octa-core (4x2.2 GHz Kryo 260 Gold & 4x1.8 GHz Kryo 260 Silver)'),(13,'Octa-core (4x2.35 GHz Kryo & 4x1.9 GHz Kryo)'),(14,'Octa-core (4x2.3 GHz Mongoose M2 & 4x1.7 GHz Cortex-A53) '),(15,'Octa-core (4x2.5 GHz Kryo & 4x1.8 GHz Kryo)'),(16,'Octa-core (2x2.05 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55)'),(17,'Octa-core (1x2.84 GHz Kryo 485 & 3x2.42 GHz Kryo 485 & 4x1.78 GHz Kryo 485)'),(18,'Octa-core (2x2.0 GHz 360 Gold & 6x1.7 GHz Kryo 360 Silver)'),(19,'Octa-core (4x2.45 GHz Kryo & 4x1.9 GHz Kryo)'),(20,'Quad-core (2x2.15 GHz Kryo & 2x1.6 GHz Kryo)'),(21,'Octa-core (4x2.7 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)'),(22,'Octa-core 2.0 GHz Cortex-A53'),(23,'Octa-core (2x1.6 GHz Cortex-A73 & 6x1.35 GHz Cortex-A53)'),(24,'Octa-core (4x1.8 GHz Kryo 250 Gold & 4x1.8 GHz Kryo 250 Silver)'),(25,'Quad-core 1.4 GHz Cortex-A53'),(26,'Octa-core (4x1.5 GHz Cortex-A53 & 4x1.2 GHz Cortex-A53)'),(27,'Octa-core (4x1.8 GHz Kryo 260 Gold & 4x1.6 GHz Kryo 260 Silver)'),(28,'Octa-core 1.2 GHz Cortex-A53'),(29,'Octa-core (4x2.0 GHz Cortex-A55 & 4x2.0 GHz Cortex-A55)'),(30,'Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)');
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `get_max_price`
--

DROP TABLE IF EXISTS `get_max_price`;
/*!50001 DROP VIEW IF EXISTS `get_max_price`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `get_max_price` AS SELECT 
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `get_products`
--

DROP TABLE IF EXISTS `get_products`;
/*!50001 DROP VIEW IF EXISTS `get_products`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `get_products` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `ar`,
 1 AS `brand_name`,
 1 AS `img`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `gpu`
--

DROP TABLE IF EXISTS `gpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu` (
  `gpu_name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `gpu_id` int NOT NULL,
  PRIMARY KEY (`gpu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu`
--

LOCK TABLES `gpu` WRITE;
/*!40000 ALTER TABLE `gpu` DISABLE KEYS */;
INSERT INTO `gpu` VALUES ('Apple GPU (4-core graphics)',1),('Mali-G76 MP12 - EMEA/LATAM',2),('Adreno 640',3),('Adreno 618',4),('Mali-G76 MP10',5),('Adreno 612',6),('Adreno 630',7),('Mali-G72 MP18 ',8),('Adreno 512',9),('Adreno 540',10),('Mali-G71 MP20 ',11),('Mali-G76 MC4',12),('Adreno 615',13),('Adreno 530',14),('Adreno 506',15),('Mali-G71 MP2',16),('Adreno 308',17),('Adreno 405',18),('Adreno 509',19),('Mali-450 MP4',20),('PowerVR GE8320',21),('Mali-400 MP1',22);
/*!40000 ALTER TABLE `gpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `op`
--

DROP TABLE IF EXISTS `op`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `op` (
  `id_op` int NOT NULL,
  `op_syst` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`id_op`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `op`
--

LOCK TABLES `op` WRITE;
/*!40000 ALTER TABLE `op` DISABLE KEYS */;
INSERT INTO `op` VALUES (1,'Android'),(2,'iOs');
/*!40000 ALTER TABLE `op` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `user_id` int NOT NULL,
  `order_date` date DEFAULT NULL,
  `location` varchar(80) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `user_idx` (`user_id`),
  CONSTRAINT `user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,2,'2024-02-22',''),(2,1,NULL,''),(3,1,NULL,'');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_all_details`
--

DROP TABLE IF EXISTS `product_all_details`;
/*!50001 DROP VIEW IF EXISTS `product_all_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_all_details` AS SELECT 
 1 AS `base_id`,
 1 AS `name`,
 1 AS `brand_name`,
 1 AS `capacity`,
 1 AS `screen_size`,
 1 AS `res_x`,
 1 AS `res_y`,
 1 AS `ram`,
 1 AS `storage`,
 1 AS `rear_camera`,
 1 AS `front_camera`,
 1 AS `op_syst`,
 1 AS `gpu_name`,
 1 AS `cpu_name`,
 1 AS `price`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ram`
--

DROP TABLE IF EXISTS `ram`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ram` (
  `ram` int NOT NULL,
  `ram_id` int NOT NULL,
  PRIMARY KEY (`ram_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ram`
--

LOCK TABLES `ram` WRITE;
/*!40000 ALTER TABLE `ram` DISABLE KEYS */;
INSERT INTO `ram` VALUES (4,1),(12,2),(8,3),(6,4),(3,5),(2,6),(1,7),(0,8);
/*!40000 ALTER TABLE `ram` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `rendel`
--

DROP TABLE IF EXISTS `rendel`;
/*!50001 DROP VIEW IF EXISTS `rendel`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `rendel` AS SELECT 
 1 AS `base_id`,
 1 AS `name`,
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `order_date`,
 1 AS `db`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `resolution`
--

DROP TABLE IF EXISTS `resolution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resolution` (
  `res_size` int NOT NULL,
  `res_id` int NOT NULL,
  PRIMARY KEY (`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resolution`
--

LOCK TABLES `resolution` WRITE;
/*!40000 ALTER TABLE `resolution` DISABLE KEYS */;
INSERT INTO `resolution` VALUES (1242,1),(828,2),(1440,3),(1080,4),(1125,5),(750,6),(720,7),(2160,8),(640,9),(1600,10),(768,11),(480,12),(540,13),(240,14),(1280,15),(560,16),(1176,17),(1536,18),(800,19),(854,20),(2688,21),(1792,22),(3040,23),(2340,24),(3120,25),(2436,26),(2960,27),(2240,28),(2246,29),(1334,30),(1920,31),(2560,32),(2880,33),(2400,34),(1560,35),(2248,36),(1520,37),(2280,38),(2220,39),(2244,40),(2316,41),(3840,42),(1136,43),(1544,44),(1480,45),(960,46),(320,47),(3200,48),(2152,49),(1500,50),(1290,51);
/*!40000 ALTER TABLE `resolution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `size`
--

DROP TABLE IF EXISTS `size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `size` (
  `screen_size` double NOT NULL,
  `size_id` int NOT NULL,
  PRIMARY KEY (`size_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `size`
--

LOCK TABLES `size` WRITE;
/*!40000 ALTER TABLE `size` DISABLE KEYS */;
INSERT INTO `size` VALUES (6.5,1),(6.1,2),(6.8,3),(6.59,4),(6.39,5),(6.47,6),(6.3,7),(6.4,8),(5.8,9),(5.5,10),(6,11),(5.99,12),(6.2,13),(4.7,14),(5.3,15),(5.7,16),(5.2,17),(5.15,18),(5.1,19),(6.67,20),(6.44,21),(6.53,22),(6.38,23),(6.08,24),(6.7,25),(6.26,26),(5.6,27),(6.21,28),(6.18,29),(6.41,30),(5.86,31),(5.84,32),(6.28,33),(5.9,34),(5,35),(4,36),(4.6,37),(4.3,38),(4.95,39),(4.8,40),(4.5,41),(6.35,42),(6.22,43),(5.45,44),(5.65,45),(5.93,46),(4.93,47),(3.5,48),(2.6,49),(3.8,50),(2.8,51),(3.7,52),(3.2,53),(6.9,54),(7.3,55),(6.19,56),(5.72,57),(5.96,58);
/*!40000 ALTER TABLE `size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage`
--

DROP TABLE IF EXISTS `storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage` (
  `storage` double NOT NULL,
  `storage_id` int NOT NULL,
  PRIMARY KEY (`storage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage`
--

LOCK TABLES `storage` WRITE;
/*!40000 ALTER TABLE `storage` DISABLE KEYS */;
INSERT INTO `storage` VALUES (64,1),(256,2),(128,3),(32,4),(16,5),(8,6),(4,7),(0.16,8),(3,9),(512,10);
/*!40000 ALTER TABLE `storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `type_id` int NOT NULL,
  `type_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'user'),(2,'admin'),(3,'owner');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `user_email` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_hungarian_ci NOT NULL,
  `user_tel` int NOT NULL,
  `user_type` int NOT NULL,
  `user_pass` varchar(200) COLLATE utf8mb3_hungarian_ci NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_email_UNIQUE` (`user_email`),
  UNIQUE KEY `user_name_UNIQUE` (`user_name`),
  KEY `type_idx` (`user_type`),
  CONSTRAINT `type` FOREIGN KEY (`user_type`) REFERENCES `user_type` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_hungarian_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Kovács Béla','kovacsbela@gmail.hu',0,1,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),(2,'Kis Pista','kispista@gmail.hu',0,1,'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),(4,'admin','admin@gmail.com',0,3,'8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `get_max_price`
--

/*!50001 DROP VIEW IF EXISTS `get_max_price`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `get_max_price` AS select `base`.`price` AS `price` from `base` order by `base`.`price` desc limit 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `get_products`
--

/*!50001 DROP VIEW IF EXISTS `get_products`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `get_products` AS select `base`.`base_id` AS `id`,`base`.`name` AS `name`,`base`.`price` AS `ar`,`brand`.`brand_name` AS `brand_name`,`base`.`img` AS `img` from (`base` join `brand` on((`base`.`brand` = `brand`.`brand_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_all_details`
--

/*!50001 DROP VIEW IF EXISTS `product_all_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_all_details` AS select `base`.`base_id` AS `base_id`,`base`.`name` AS `name`,`brand`.`brand_name` AS `brand_name`,`battery`.`capacity` AS `capacity`,`size`.`screen_size` AS `screen_size`,`resolution_x`.`res_size` AS `res_x`,`resolution_y`.`res_size` AS `res_y`,`ram`.`ram` AS `ram`,`storage`.`storage` AS `storage`,`camera_rear`.`camera` AS `rear_camera`,`camera_front`.`camera` AS `front_camera`,`op`.`op_syst` AS `op_syst`,`gpu`.`gpu_name` AS `gpu_name`,`cpu`.`cpu_name` AS `cpu_name`,`base`.`price` AS `price` from ((((((((((((`base` left join `brand` on((`base`.`brand` = `brand`.`brand_id`))) left join `battery` on((`base`.`battery` = `battery`.`battery_id`))) left join `size` on((`base`.`size` = `size`.`size_id`))) left join `resolution` `resolution_x` on((`base`.`res_x` = `resolution_x`.`res_id`))) left join `resolution` `resolution_y` on((`base`.`res_y` = `resolution_y`.`res_id`))) left join `ram` on((`base`.`ram` = `ram`.`ram_id`))) left join `storage` on((`base`.`storage` = `storage`.`storage_id`))) left join `camera` `camera_rear` on((`base`.`rear_camera` = `camera_rear`.`camera_id`))) left join `camera` `camera_front` on((`base`.`front_camera` = `camera_front`.`camera_id`))) left join `op` on((`base`.`op` = `op`.`id_op`))) left join `gpu` on((`base`.`gpu` = `gpu`.`gpu_id`))) left join `cpu` on((`base`.`cpu` = `cpu`.`cpu_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `rendel`
--

/*!50001 DROP VIEW IF EXISTS `rendel`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`user`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `rendel` AS select `base`.`base_id` AS `base_id`,`base`.`name` AS `name`,`users`.`user_id` AS `user_id`,`users`.`user_name` AS `user_name`,`orders`.`order_date` AS `order_date`,`base_conn_order`.`db` AS `db` from (((`base` join `base_conn_order` on((`base`.`base_id` = `base_conn_order`.`product_id`))) join `orders` on((`base_conn_order`.`order_id` = `orders`.`order_id`))) join `users` on((`orders`.`user_id` = `users`.`user_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-05 20:26:44
