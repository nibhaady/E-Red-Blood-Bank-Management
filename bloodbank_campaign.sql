-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bloodbank
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `campaign` (
  `C_ID` int NOT NULL AUTO_INCREMENT,
  `C_NAME` text,
  `C_DATE` date DEFAULT NULL,
  `C_ORG_NAME` text,
  `C_LOC` text,
  `A_ID` int DEFAULT NULL,
  PRIMARY KEY (`C_ID`),
  KEY `A_ID` (`A_ID`),
  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `admin` (`A_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `campaign`
--

LOCK TABLES `campaign` WRITE;
/*!40000 ALTER TABLE `campaign` DISABLE KEYS */;
INSERT INTO `campaign` VALUES (38,'UNILIFE','2022-02-11','SANKALP INDIA FOUNDATION','MYSORE',9898),(39,'SAVE LIFE','2022-02-11','SANKALP INDIA FOUNDATION','MYSORE',9898),(40,'RAKTH DHAN','2023-02-11','FREINDS TO SUPPORT','UDUPI',9888),(41,'LIFELINE','2022-07-21','INDIAN RED CROSS','MANGALORE',9888),(42,'BLOOD DONOR DAY','2023-01-11','ATHAR FOUNDATION','DHARWAD',9878),(43,'GIVE LIFE','2022-05-21','NACO','MYSORE',9898),(44,'RED LIFE','2022-06-10','SANKALP INDIA FOUNDATION','BANGALORE',9888),(47,'GIVE BLOOD GIVE LIFE','2022-09-09','SATYA FOUNDATION','BANGALORE',9878),(48,'TEST','2023-01-01','TEST','UDUPI',9878),(49,'TEST','2023-01-01','TEST','UDUPI',9878);
/*!40000 ALTER TABLE `campaign` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `campaign_BEFORE_INSERT` BEFORE INSERT ON `campaign` FOR EACH ROW BEGIN
IF NEW.C_DATE NOT BETWEEN current_date() AND '2025-01-01' THEN
signal sqlstate '45000';
END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-19 22:16:52
