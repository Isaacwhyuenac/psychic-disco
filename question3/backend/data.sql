-- MySQL dump 10.13  Distrib 8.0.23, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('9f08fe864d6b');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vote`
--

DROP TABLE IF EXISTS `vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vote` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vote` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kiosk_id` varchar(255) NOT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vote`
--

LOCK TABLES `vote` WRITE;
/*!40000 ALTER TABLE `vote` DISABLE KEYS */;
INSERT INTO `vote` VALUES (1,'林林','1','2021-01-24 09:01:14'),(2,'林林','1','2021-01-24 09:01:14'),(3,'林林','1','2021-01-24 09:01:14'),(4,'林林','1','2021-01-24 09:01:14'),(5,'林林','1','2021-01-24 09:01:14'),(6,'林林','1','2021-01-24 09:01:14'),(7,'林林','1','2021-01-24 09:01:14'),(8,'林林','1','2021-01-24 09:01:14'),(9,'林林','1','2021-01-24 09:01:14'),(10,'林林','1','2021-01-24 09:01:14'),(11,'林林','1','2021-01-24 09:01:14'),(12,'林林','1','2021-01-24 09:01:14'),(13,'林林','1','2021-01-24 09:01:14'),(14,'林林','1','2021-01-24 09:01:14'),(15,'林林','1','2021-01-24 09:01:14'),(16,'林林','1','2021-01-24 09:01:14'),(17,'林林','1','2021-01-24 09:01:14'),(18,'林林','1','2021-01-24 09:01:14'),(19,'林林','1','2021-01-24 09:01:14'),(20,'林林','1','2021-01-24 09:01:14'),(21,'林林','1','2021-01-24 09:01:14'),(22,'林林','1','2021-01-24 09:01:14'),(23,'薯片','1','2021-01-24 09:01:14'),(24,'薯片','1','2021-01-24 09:01:14'),(25,'薯片','1','2021-01-24 09:01:14'),(26,'薯片','1','2021-01-24 09:01:14'),(27,'薯片','1','2021-01-24 09:01:14'),(28,'薯片','1','2021-01-24 09:01:14'),(29,'薯片','1','2021-01-24 09:01:14'),(30,'薯片','1','2021-01-24 09:01:14'),(31,'薯片','1','2021-01-24 09:01:14'),(32,'薯片','1','2021-01-24 09:01:14'),(33,'薯片','1','2021-01-24 09:01:14'),(34,'薯片','1','2021-01-24 09:01:14'),(35,'薯片','1','2021-01-24 09:01:14'),(36,'薯片','1','2021-01-24 09:01:14'),(37,'薯片','1','2021-01-24 09:01:14'),(38,'薯片','1','2021-01-24 09:01:14'),(39,'薯片','1','2021-01-24 09:01:14'),(40,'薯片','1','2021-01-24 09:01:14'),(41,'薯片','1','2021-01-24 09:01:14'),(42,'薯片','1','2021-01-24 09:01:14'),(43,'薯片','1','2021-01-24 09:01:14'),(44,'薯片','1','2021-01-24 09:01:14'),(45,'薯片','1','2021-01-24 09:01:14'),(46,'薯片','1','2021-01-24 09:01:14'),(47,'薯片','1','2021-01-24 09:01:14'),(48,'薯片','1','2021-01-24 09:01:14'),(49,'薯片','1','2021-01-24 09:01:14'),(50,'薯片','1','2021-01-24 09:01:14'),(51,'薯片','1','2021-01-24 09:01:14'),(52,'薯片','1','2021-01-24 09:01:14'),(53,'薯片','1','2021-01-24 09:01:14'),(54,'薯片','1','2021-01-24 09:01:14'),(55,'薯片','1','2021-01-24 09:01:14'),(56,'薯片','1','2021-01-24 09:01:14'),(57,'薯片','1','2021-01-24 09:01:14'),(58,'薯片','1','2021-01-24 09:01:14'),(59,'薯片','1','2021-01-24 09:01:14'),(60,'正氣','1','2021-01-24 09:01:14'),(61,'正氣','1','2021-01-24 09:01:14'),(62,'正氣','1','2021-01-24 09:01:14'),(63,'正氣','1','2021-01-24 09:01:14'),(64,'正氣','1','2021-01-24 09:01:14'),(65,'正氣','1','2021-01-24 09:01:14'),(66,'正氣','1','2021-01-24 09:01:14'),(67,'正氣','1','2021-01-24 09:01:14'),(68,'正氣','1','2021-01-24 09:01:14'),(69,'正氣','1','2021-01-24 09:01:14'),(70,'正氣','1','2021-01-24 09:01:14'),(71,'正氣','1','2021-01-24 09:01:14'),(72,'正氣','1','2021-01-24 09:01:14'),(73,'正氣','1','2021-01-24 09:01:14'),(74,'正氣','1','2021-01-24 09:01:14'),(75,'正氣','1','2021-01-24 09:01:14'),(76,'正氣','1','2021-01-24 09:01:14'),(77,'正氣','1','2021-01-24 09:01:14'),(78,'正氣','1','2021-01-24 09:01:14'),(79,'正氣','1','2021-01-24 09:01:14'),(80,'正氣','1','2021-01-24 09:01:14'),(81,'正氣','1','2021-01-24 09:01:14'),(82,'正氣','1','2021-01-24 09:01:14'),(83,'正氣','1','2021-01-24 09:01:14'),(84,'正氣','1','2021-01-24 09:01:14'),(85,'正氣','1','2021-01-24 09:01:14'),(86,'正氣','1','2021-01-24 09:01:14'),(87,'正氣','1','2021-01-24 09:01:14');
/*!40000 ALTER TABLE `vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-24  9:07:33
