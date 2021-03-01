-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: newdb
-- ------------------------------------------------------
-- Server version	8.0.23-0ubuntu0.20.04.1

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `subject` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  `image` varchar(45) NOT NULL,
  `original_url` varchar(45) NOT NULL,
  `view_count` int NOT NULL,
  `send` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `xyz` (`subject`),
  KEY `idx_gender` (`subject`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'abc','abcxyz','abc','abc',117,1),(2,'xyz','xyz','xyz','xyz',117,1),(3,'mno','mno','mno','mno',244,1),(4,'bong da','bong da','bong da','bong da',117,1),(5,'chung khoan','chung khoan','chung khoan','chung khoan',117,1),(6,'thoi su','thoi su','thoi su','thoi su',117,1),(7,'the thao','the thao','the thao','the thao',117,1),(8,'boxing','boxing','boxing','boxing',117,1),(9,'bi.a','bi.a','bi.a','bi.a',117,1),(10,'lien quan','danh nhau','lien quan','lien quan',200,1),(11,'jqk','jqk','jqk','jqk',234,1),(12,'nong san','nong san','nong san','nong san',294,1),(13,'thuy san','thuy san','thuy san','thuy san',38,1),(14,'hai san','hai san','hai san','hai san',88,1),(15,'ca hoi','ca hoi','ca hoi','ca hoi',29,1),(16,'lam san','lam san','lam san','lam san',47,1),(17,'pho bo','pho bo','pho bo','pho bo',92,1),(18,'com rang','com rang','com rang','com rang',30,1),(19,'mien xao','mien xao','mien xao','mien xao',20,1),(20,'mi xao','mi xao','mi xao','mi xao',19,1),(25,'anh','anh','anh','anh',10,0),(34,'cuanh','cuanh','anh','anh',50,0),(35,'cuanh123','cuanh','anh','anh',50,0),(36,'cuanh0308','cuanh','anh','anh',50,0),(37,'cuanh0308','cuanh','anh','anh',50,0),(38,'cuanh0308','cuanh','anh','anh',60,0),(39,'cuanh0308','cuanh','anh','anh',60,0),(40,'cuanh0308','cuanh','anh','anh',60,0),(46,'cuanh2s','cuanh','anh','anh',60,0),(47,'cuanh2000','cuanh','anh','anh',60,0),(48,'cuanh382k','cuanh','anh','anh',60,0),(49,'cuanh3823k','cuanh','anh','anh',60,0),(50,'cuanh382345k','cuanh','anh','anh',60,0),(51,'kieuanh','cuanh','anh','anh',60,0),(52,'kieuanh','cuanh','anh','anh',60,0),(53,'kieuanh','cuanh','anh','anh',60,0),(54,'vip','cuanh','anh','anh',60,0),(55,'vip','cuanh','anh','anh',60,0),(56,'kieu','cuanh','anh','anh',60,0),(57,'anh','cuanh','anh','anh',60,0),(58,'anh','cuanh','anh','anh',60,0),(59,'anh','cuanh','anh','anh',90,0),(60,'anh','cuanh','anh','anh',90,0),(61,'anh','cuanh','anh','anh',90,0),(62,'anh','cuanh','anh','anh',90,0),(63,'anh','cuanh','anh','anh',90,0),(64,'kanh','cuanh','anh','anh',90,0),(65,'kanh','cuanh','anh','anh',90,0),(66,'kanh','cuanh','anh','anh',90,0),(67,'kanh','cuanh','anh','anh',100,0),(68,'tienanh','cuanh','anh','anh',100,0),(69,'tienanh','cuanh','anh','anh',100,0),(70,'tienanh','cuanh','anh','anh',100,0),(71,'tienanh','cuanh','anh','anh',100,0),(72,'tienanh','cuanh','anh','anh',100,0),(73,'tienanh','cuanh','anh','anh',100,0),(74,'tienanh','cuanh','anh','anh',100,0),(75,'tienanh','cuanh','anh','anh',100,0),(76,'tienanh','cuanh','anh','anh',30,0),(77,'kieuanh','cuanh','anh','anh',40,0),(78,'kieuanh','cuanh','anh','anh',40,0),(79,'kieuanh','cuanh','anh','anh',40,0),(80,'kieuanh','cuanh','anh','anh',40,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-01 13:47:50
