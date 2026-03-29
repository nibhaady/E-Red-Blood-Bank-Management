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
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `U_ID` int NOT NULL AUTO_INCREMENT,
  `NAME` text,
  `GENDER` text,
  `AGE` int DEFAULT NULL,
  `B_TYPE` text,
  `PHNO` varchar(10) DEFAULT NULL,
  `WEIGHT` double DEFAULT NULL,
  `B_ID` int DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`U_ID`),
  KEY `B_ID` (`B_ID`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`B_ID`) REFERENCES `blood_bank` (`B_ID`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1142,'MAHARA AYSHA','M',21,'B+ve','7896780989',67,2100,'Bangalore'),(1143,'NILLA PALLA','F',22,'B+ve','8231238286',70.5,2100,'Bangalore'),(1144,'NILAM COMAR','F',24,'B+ve','8090238286',49.5,2100,'Bangalore'),(1145,'ARUNDATHI JHA','F',61,'O+ve','8002354661',46,2100,'Bangalore'),(1146,'MADHUR KRISHNA','M',22,'O+ve','8236038286',70.5,2100,'Bangalore'),(1147,'LOCHAN DUGGAL','M',24,'O+ve','8090778286',49.5,2100,'Bangalore'),(1148,'MADHUKAR ','M',61,'A+ve','8781200466',46,2100,'Bangalore'),(1149,'NILIMA ','F',22,'A+ve','8232338286',70.5,2100,'Bangalore'),(1150,'SANDY SULE','F',21,'AB+ve','8001154661',46,2100,'Bangalore'),(1151,'SARVESH RAO','M',32,'AB+ve','8116038286',70.5,2100,'Bangalore'),(1152,'SANDIP SULE','M',54,'A-ve','8890778286',49.5,2100,'Bangalore'),(1153,'TRISHNA GOEL ','M',31,'A-ve','8221200466',46,2100,'Bangalore'),(1154,'NAYANA ','F',22,'A-ve','8232338236',70.5,2100,'Bangalore'),(1155,'SANDY ','F',46,'B-ve','8001004661',46,2100,NULL),(1156,'SATHISH RAO','M',32,'B-ve','8119838286',70.5,2100,NULL),(1157,'SAKETH SULE','M',54,'B-ve','8891278286',49.5,2100,NULL),(1158,'KRISH GOEL ','M',31,'A+ve','8228200466',46,2105,'Bangalore'),(1159,'NIYATHI R ','F',22,'A+ve','8232938236',70.5,2105,NULL),(1160,'SANDYA RAWAT ','F',46,'AB-ve','8001004661',46,2100,NULL),(1161,'AKASH SHENOY','M',32,'AB-ve','8119838286',70.5,2100,'Bangalore'),(1162,'ARJUN BIJLANI','M',54,'B+ve','8891278286',49.5,2105,NULL),(1163,'YATHIRAJ ','M',31,'B+ve','8228200466',46,2105,'Bangalore'),(1164,'AARVI M ','F',22,'AB+ve','8232938236',70.5,2105,'Bangalore'),(1165,'SHEKAR NOI ','F',46,'O-ve','8001004661',46,2100,'Bangalore'),(1166,'RISHI LAD','M',32,'O-ve','8119838286',70.5,2100,'Bangalore'),(1167,'VIANNE','M',54,'AB+ve','8891278286',49.5,2105,'Bangalore'),(1168,'MEHUL SETHI ','M',31,'O+ve','8228200466',46,2105,'Bangalore'),(1169,'ASMITHA GANESH ','F',22,'O+ve','8232938236',70.5,2105,'Bangalore'),(1170,'DHRUV KAR','M',61,'A+ve','8781235466',46,2101,'Bangalore'),(1171,'SUNITI SAINI','F',22,'A+ve','8231238286',70.5,2101,'Bangalore'),(1172,'SONAM','F',24,'A+ve','8090238286',49.5,2101,'Bangalore'),(1173,'MANAV','M',61,'B+ve','8781235466',46,2101,'Bangalore'),(1174,'NIDHI RAJESH','F',22,'B+ve','8231238286',70.5,2101,'Bangalore'),(1175,'RICHA','F',24,'B+ve','8090238286',49.5,2101,'Bangalore'),(1176,'ARUNA SM','F',61,'O+ve','8002354661',46,2101,'Bangalore'),(1177,'KRISHNA','M',22,'O+ve','8236038286',70.5,2101,'Bangalore'),(1178,'LOCHANDRA DUGGAL','M',24,'O+ve','8090778286',49.5,2101,'Bangalore'),(1179,'RAJ KUMTA','M',61,'AB+ve','8781235466',46,2101,'Bangalore'),(1180,'NANADAN RAJ','F',22,'AB+ve','8231238286',70.5,2101,'Bangalore'),(1181,'FALAK MEHTHA','F',24,'AB+ve','8090238286',49.5,2101,'Mangalore'),(1182,'WELSON DSOUZA','F',21,'A-ve','8001154661',46,2101,'Mangalore'),(1183,'PRITHVI RAJ','M',32,'A-ve','8116038286',70.5,2101,'Mangalore'),(1184,'PUNITH SHETTY','M',54,'A-ve','8890778286',49.5,2101,'Mangalore'),(1185,'DRUV RATHI','M',54,'B-ve','8891278286',49.5,2101,'Mangalore'),(1186,'GAYAN HANS ','M',31,'B-ve','8228200466',46,2101,'Mangalore'),(1187,'TRISHA ','F',22,'B-ve','8232938236',70.5,2101,'Mangalore'),(1188,'CHARAN PRASAD','M',54,'AB-ve','8891278286',49.5,2101,'Mangalore'),(1189,'KARTHIK RAI ','M',31,'AB-ve','8228200466',46,2101,'Mangalore'),(1190,'ANSHU KOTIAN','F',22,'AB-ve','8232938236',70.5,2101,'Mangalore'),(1191,'VIVIAN PAIS','M',54,'O-ve','8891278286',49.5,2101,'Mangalore'),(1192,'ADARSH ','M',31,'O-ve','8228200466',46,2101,'Mangalore'),(1193,'SHRUTHI PAI','F',22,'O-ve','8232938236',70.5,2101,'Mangalore'),(1194,'NADAN','M',61,'A+ve','8781235466',46,2102,'Mangalore'),(1195,'SAYLI','F',22,'A+ve','8231238286',70.5,2102,'Mangalore'),(1196,'SUDHA','F',24,'A+ve','8090238286',49.5,2102,'Mangalore'),(1197,'RAJESH','M',61,'B+ve','8781235466',46,2102,'Mangalore'),(1198,'NEHA','F',22,'B+ve','8231238286',70.5,2102,'Mangalore'),(1199,'RACHAEL','F',24,'B+ve','8090238286',49.5,2102,'Mangalore'),(1200,'KRISHA','F',61,'O+ve','8002354661',46,2102,'Mangalore'),(1201,'GURUPRASAD','M',22,'O+ve','8236038286',70.5,2102,'Udupi'),(1202,'ULLAS','M',24,'O+ve','8090778286',49.5,2102,'Udupi'),(1203,'SATHISHA','M',61,'AB+ve','8781235466',46,2102,'Udupi'),(1204,'HINA','F',22,'AB+ve','8231238286',70.5,2102,'Udupi'),(1205,'FAISA','F',24,'AB+ve','8090238286',49.5,2102,'Udupi'),(1206,'KATERINE','F',21,'A-ve','8001154661',46,2102,'Udupi'),(1207,'BINU','M',32,'A-ve','8116038286',70.5,2102,'Udupi'),(1208,'BADRINATH','M',54,'A-ve','8890778286',49.5,2102,'Udupi'),(1209,'OSI','M',54,'B-ve','8891278286',49.5,2102,'Udupi'),(1210,'NISHAN ','M',31,'B-ve','8228200466',46,2102,'Udupi'),(1211,'PIYA ','F',22,'B-ve','8232938236',70.5,2102,'Udupi'),(1212,'ISHAAN','M',54,'AB-ve','8891278286',49.5,2102,'Udupi'),(1213,'JOSHI','M',31,'AB-ve','8228200466',46,2102,'Udupi'),(1214,'ZENDAYA','F',22,'AB-ve','8232938236',70.5,2102,'Udupi'),(1215,'ADITHYA NARAYAN','M',54,'O-ve','8891278286',49.5,2102,'Udupi'),(1216,'LOHITH ','M',31,'O-ve','8228200466',46,2102,'Udupi'),(1217,'SANIDHYA','F',22,'O-ve','8232938236',70.5,2102,'Udupi'),(1218,'SHIVA','M',61,'A+ve','8781235466',46,2103,'Udupi'),(1219,'PALLAVI','F',22,'A+ve','8231238286',70.5,2103,'Udupi'),(1220,'FAREEDA','F',24,'A+ve','8090238286',49.5,2103,'Udupi'),(1221,'POORNESH','M',61,'B+ve','8781235466',46,2103,'Udupi'),(1222,'ISHA','F',22,'B+ve','8231238286',70.5,2103,'Udupi'),(1223,'YATHIKA','F',24,'B+ve','8090238286',49.5,2103,'Udupi'),(1224,'TARUN','F',61,'O+ve','8002354661',46,2103,'Udupi'),(1225,'GAMAN','M',22,'O+ve','8236038286',70.5,2103,'Udupi'),(1226,'VIRAT','M',24,'O+ve','8090778286',49.5,2103,'Udupi'),(1227,'ANUSHKA','M',61,'AB+ve','8781235466',46,2103,'Udupi'),(1228,'PRASHI','F',22,'AB+ve','8231238286',70.5,2103,'Udupi'),(1229,'PRABHASINI','F',24,'AB+ve','8090238286',49.5,2103,'Udupi'),(1230,'KATRINA','F',21,'A-ve','8001154661',46,2103,'Udupi'),(1231,'BINUJ','M',32,'A-ve','8116038286',70.5,2103,'Udupi'),(1232,'BADRI','M',54,'A-ve','8890778286',49.5,2103,'Udupi'),(1233,'OM','M',54,'B-ve','8891278286',49.5,2103,'Udupi'),(1234,'NISHITH ','M',31,'B-ve','8228200466',46,2103,'Udupi'),(1235,'PIYAL ','F',22,'B-ve','8232938236',70.5,2103,'Udupi'),(1236,'ISHAN','M',54,'AB-ve','8891278286',49.5,2103,'Udupi'),(1237,'JOSHUA','M',31,'AB-ve','8228200466',46,2103,'Mysore'),(1238,'GAYATRI','F',22,'AB-ve','8232938236',70.5,2103,'Mysore'),(1239,'NARAYAN','M',54,'O-ve','8891278286',49.5,2103,'Mysore'),(1240,'PRUTHVI ','M',31,'O-ve','8228200466',46,2103,'Mysore'),(1241,'ANKURI','F',22,'O-ve','8232938236',70.5,2103,'Mysore'),(1242,'ASHIAH','M',61,'A+ve','8781235466',46,2104,'Mysore'),(1243,'SHAILA','F',22,'A+ve','8231238286',70.5,2104,'Mysore'),(1244,'RAJASHREE','F',24,'A+ve','8090238286',49.5,2104,'Mysore'),(1245,'SANMITH','M',61,'B+ve','8781235466',46,2104,'Mysore'),(1246,'VIDHISHA','F',22,'B+ve','8231238286',70.5,2104,'Mysore'),(1247,'VIDHI','F',24,'B+ve','8090238286',49.5,2104,'Mysore'),(1248,'MOHITHA','F',61,'O+ve','8002354661',46,2104,'Mysore'),(1249,'MOHAN','M',22,'O+ve','8236038286',70.5,2104,'Mysore'),(1250,'MANOJ','M',24,'O+ve','8090778286',49.5,2104,'Mysore'),(1251,'SIDDHARTH','M',61,'AB+ve','8781235466',46,2104,'Mysore'),(1252,'SHAMITHA','F',22,'AB+ve','8231238286',70.5,2104,'Mysore'),(1253,'MAHER','F',24,'AB+ve','8090238286',49.5,2104,'Mysore'),(1254,'VIKY','F',21,'A-ve','8001154661',46,2104,'Mysore'),(1255,'VIKAS','M',32,'A-ve','8116038286',70.5,2104,'Mysore'),(1256,'BINDYA','M',54,'A-ve','8890778286',49.5,2104,'Mysore'),(1257,'MINU','M',54,'B-ve','8891278286',49.5,2104,'Mysore'),(1258,'OSHUA ','M',31,'B-ve','8228200466',46,2104,'Mysore'),(1259,'PIYATRI','F',22,'B-ve','8232938236',70.5,2104,'Mysore'),(1260,'FIROZ','M',54,'AB-ve','8891278286',49.5,2104,'Mysore'),(1261,'PARIKSHIT','M',31,'AB-ve','8228200466',46,2104,'Mysore'),(1262,'ANU','F',22,'AB-ve','8232938236',70.5,2104,'Mysore'),(1263,'JETALAL','M',54,'O-ve','8891278286',49.5,2104,'Mysore'),(1264,'SHARATH','M',31,'O-ve','8228200466',46,2104,'Mysore'),(1265,'SADHANA','F',22,'O-ve','8232938236',70.5,2104,'Mysore'),(1266,'ANIRUDH','M',61,'A+ve','8781235466',46,2106,'Mysore'),(1267,'SHEELA','F',22,'A+ve','8231238286',70.5,2106,'Mysore'),(1268,'RAJA','F',24,'A+ve','8090238286',49.5,2106,'Mysore'),(1269,'SURAJ','M',61,'B+ve','8781235466',46,2106,'Mysore'),(1270,'NIDHISHA','F',22,'B+ve','8231238286',70.5,2106,'Mysore'),(1271,'HIDHI','F',24,'B+ve','8090238286',49.5,2106,'Mysore'),(1272,'MOHINI','F',61,'O+ve','8002354661',46,2106,'Mysore'),(1273,'MOHITH','M',22,'O+ve','8236038286',70.5,2106,'Mysore'),(1274,'MANVINDER','M',24,'O+ve','8090778286',49.5,2106,'Mysore'),(1275,'SID','M',61,'AB+ve','8781235466',46,2106,'Dharwad'),(1276,'SHAMI','F',22,'AB+ve','8231238286',70.5,2106,'Dharwad'),(1277,'MAHERA','F',24,'AB+ve','8090238286',49.5,2106,'Dharwad'),(1278,'NIKY','F',21,'A-ve','8001154661',46,2106,'Dharwad'),(1279,'VIKASH','M',32,'A-ve','8116038286',70.5,2106,'Dharwad'),(1280,'BINDYAL','M',54,'A-ve','8890778286',49.5,2106,'Dharwad'),(1281,'MINUR','M',54,'B-ve','8891278286',49.5,2106,'Dharwad'),(1282,'KOSHUA ','M',31,'B-ve','8228200466',46,2106,'Dharwad'),(1283,'PATRI','F',22,'B-ve','8232938236',70.5,2106,'Dharwad'),(1284,'FIROZA','M',54,'AB-ve','8891278286',49.5,2106,'Dharwad'),(1285,'PARIKSH','M',31,'AB-ve','8228200466',46,2106,'Dharwad'),(1286,'ANUJNA','F',22,'AB-ve','8232938236',70.5,2106,'Dharwad'),(1287,'JETAL','M',54,'O-ve','8891278286',49.5,2106,'Dharwad'),(1288,'SHARAT','M',31,'O-ve','8228200466',46,2106,'Dharwad'),(1289,'SADHAVI','F',22,'O-ve','8232938236',70.5,2106,'Dharwad'),(1290,'PRATHAM','M',61,'A+ve','8781235466',46,2107,'Dharwad'),(1291,'SUJAYA','F',22,'A+ve','8231238286',70.5,2108,'Dharwad'),(1292,'DINESHA','F',24,'A+ve','8090238286',49.5,2109,'Dharwad'),(1293,'SURAT','M',61,'B+ve','8781235466',46,2107,'Dharwad'),(1294,'SIARA','F',22,'B+ve','8231238286',70.5,2108,'Dharwad'),(1295,'KIARA','F',24,'B+ve','8090238286',49.5,2109,'Dharwad'),(1296,'MAHI','F',61,'O+ve','8002354661',46,2108,'Dharwad'),(1297,'MAHIM','M',22,'O+ve','8236038286',70.5,2109,'Dharwad'),(1298,'MANVIT','M',24,'O+ve','8090778286',49.5,2107,'Dharwad'),(1299,'LIKITH','M',61,'AB+ve','8781235466',46,2107,'Dharwad'),(1300,'SHAMIRA','F',22,'AB+ve','8231238286',70.5,2108,'Dharwad'),(1301,'MAHENA','F',24,'AB+ve','8090238286',49.5,2109,'Dharwad'),(1302,'NIKYTHA','F',21,'A-ve','8001154661',46,2107,'Dharwad'),(1303,'NIKASH','M',32,'A-ve','8116038286',70.5,2108,'Dharwad'),(1304,'KOMI','M',54,'A-ve','8890778286',49.5,2109,'Dharwad'),(1305,'TUPUR','M',54,'B-ve','8891278286',49.5,2107,'Dharwad'),(1306,'AARNAV ','M',31,'B-ve','8228200466',46,2108,'Dharwad'),(1307,'AAHI','F',22,'B-ve','8232938236',70.5,2109,'Dharwad'),(1308,'AVIN','M',54,'AB-ve','8891278286',49.5,2107,'Dharwad'),(1309,'BHAVIN','M',31,'AB-ve','8228200466',46,2108,'Dharwad'),(1310,'AVNI','F',22,'AB-ve','8232938236',70.5,2109,'Dharwad'),(1311,'JETENDRA','M',54,'O-ve','8891278286',49.5,2107,'Dharwad'),(1312,'SHARV','M',31,'O-ve','8228200466',46,2108,'Dharwad'),(1313,'SANIH','F',22,'O-ve','8232938236',70.5,2109,'Dharwad'),(1314,'NIBHA','F',18,'B+ve','8989898989',32,NULL,NULL),(1315,'ni','M',23,'B+ve','9898989898',34,NULL,'Udupi'),(1316,'om','M',32,'A+ve','9898989898',32,NULL,'Udupi'),(1317,'ni','F',43,'B+ve','9898989898',43,NULL,'Dharwad'),(1318,'','F',43,'B+ve','9898989898',43,NULL,'Dharwad'),(1319,'','',43,'B+ve','9898989898',43,NULL,'Dharwad'),(1320,'','',34,'','9898989898',12,NULL,'Dharwad'),(1321,'','',34,'','9898989898',12,NULL,''),(1322,'v','F',45,'A+ve','9898989898',43,NULL,'Bangalore'),(1323,'NIDHI','F',45,'AB+ve','7897890989',45,NULL,'Bangalore'),(1324,'ashwitha','F',45,'A+ve','8786768765',56,NULL,'Mangalore'),(1325,'anusuya','F',45,'A+ve','9878798789',56,NULL,'Mangalore'),(1326,'NIBHA','F',20,'B+ve','8767868768',56,NULL,'Mangalore'),(1327,'XYZ','M',45,'O+ve','9899898989',45,NULL,'Udupi'),(1328,'XYZ','M',45,'O+ve','9899898989',45,NULL,'Udupi'),(1329,'HIMANI','F',25,'O+ve','9878987890',32,NULL,'Udupi'),(1330,'AA','M',54,'B+ve','9999999999',43,NULL,'Mangalore');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `user_BEFORE_INSERT` BEFORE INSERT ON `user` FOR EACH ROW BEGIN
IF (NEW.AGE<18 OR NEW.AGE>65 ) OR CHAR_LENGTH(NEW.PHNO)!=10  THEN
                    
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

-- Dump completed on 2022-02-19 22:16:51
