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
-- Table structure for table `blood_bank`
--

DROP TABLE IF EXISTS `blood_bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blood_bank` (
  `B_ID` int NOT NULL AUTO_INCREMENT,
  `B_NAME` text,
  `CITY` text,
  `PINCODE` int DEFAULT NULL,
  `A_ID` int DEFAULT NULL,
  `PH_NO` varchar(10) DEFAULT NULL,
  `ADDRESS` text,
  `CAPACITY` int DEFAULT NULL,
  PRIMARY KEY (`B_ID`),
  KEY `A_ID` (`A_ID`),
  CONSTRAINT `blood_bank_ibfk_1` FOREIGN KEY (`A_ID`) REFERENCES `admin` (`A_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blood_bank`
--

LOCK TABLES `blood_bank` WRITE;
/*!40000 ALTER TABLE `blood_bank` DISABLE KEYS */;
INSERT INTO `blood_bank` VALUES (2100,'CITY HOSPITAL','MANGALORE',575001,9878,'9878987898','348opp Kumaran Silks, Oppanakara Street, Townhall',150),(2101,'APEX BLOOD BANK','MANGALORE',575006,9898,'9878987328','304, 3rd Flr, Vikas Bldg, 11 Bank Street, Fort',120),(2102,'RAKTH KENDRA','BANGALORE',530068,9888,'9876987328','Gandigate Road, Opp Chitekhan Street, Mandvi',120),(2103,'E-RED','BANGALORE',560002,9777,'7776987328','  Shop 9, Kandori Nagar Chs, Panjrapole Lane, Opp Madhav Baug Post Off, Bhuleshwar',110),(2104,'TEJASVINI','UDUPI',576104,9776,'9776987328','18 B-6, Central Market, Ashok Vihar',120),(2105,'KMC','UDUPI',576108,9775,'9776911128','Street No 3,st.pauls Lane, Hyderguda',110),(2106,'RAKTHKOSH','MYSORE',570004,9722,'9276911128','Anusuya Pts, Daji Ramchandra Rd, Nr Income Tax Office, Charai',140),(2107,'HOPKINS','MYSORE',570001,9552,'9276916668','1393, 80 Feet Road K K Halli, Hbr Layout, Hbr Layout',155),(2108,'RAKTH','DHARWAD',580003,9522,'9276555668','39/39jaimuniraoclemgdrdblr-23, Jaimuni Rao Circle',135),(2109,'APEX','DHARWAD',580005,9222,'8276555668','204, 204,vstngrblr-52, Millers Road, Vasanthnagar',155);
/*!40000 ALTER TABLE `blood_bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-19 22:16:52
