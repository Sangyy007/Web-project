CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `APP_NO` int NOT NULL,
  `SNO` int NOT NULL,
  `PID` int DEFAULT NULL,
  `D_ID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`APP_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,3,1,'D0003'),(2,1,1,'D0004'),(3,1,1,'D0005'),(4,1,1,'D0005'),(5,1,1,'D0005'),(6,1,1,'D0005'),(7,1,1,'D0005'),(8,1,1,'D0005'),(9,1,1,'D0005'),(10,1,1,'D0005'),(11,1,1,'D0005'),(12,1,1,'D0005'),(13,3,1,'D0005'),(14,3,1,'D0006'),(15,2,1,'D0005'),(16,3,2,'D0008'),(17,3,2,'D0004'),(18,2,3,'D0005'),(19,1,3,'D0009'),(20,3,4,'D0006'),(21,3,4,'D0005'),(22,1,5,'D0004'),(23,2,1,'D0009'),(24,3,2,'D0002'),(25,3,1,'D0004'),(26,1,1,'D0007'),(27,3,2,'D0006'),(28,2,2,'D0005'),(29,2,1,'D0005'),(30,2,2,'D0005'),(31,2,1,'D0005'),(32,2,2,'D0005'),(33,2,2,'D0005'),(34,2,1,'D0005'),(35,2,2,'D0005'),(36,1,2,'D0005'),(37,3,2,'D0005'),(38,3,1,'D0005'),(39,1,1,'D0005'),(40,1,1,'D0009'),(41,3,2,'D0005'),(42,4,7,'D0008'),(43,3,1,'D0001'),(44,3,1,'D0008'),(45,4,1,'D0004'),(46,3,1,'D0010'),(47,1,8,'D0004'),(48,3,8,'D0003'),(49,3,1,'D0010');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DEPT_NAME` varchar(20) DEFAULT NULL,
  `DEPT_NO` int NOT NULL,
  PRIMARY KEY (`DEPT_NO`),
  UNIQUE KEY `DEPT_NAME` (`DEPT_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('CARDIOLOGY',5),('GYNAECOLOGY',3),('NEUROLOGY',1),('OPD',4),('RADIOLOGY',2);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctor` (
  `DID` char(5) NOT NULL,
  `DNAME` varchar(25) NOT NULL,
  `DSEX` varchar(7) DEFAULT NULL,
  `DADDRESS` varchar(50) DEFAULT NULL,
  `DAGE` int DEFAULT NULL,
  `DPHONE` char(10) DEFAULT NULL,
  `DEPT_NUM` int DEFAULT NULL,
  PRIMARY KEY (`DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES ('D0001','Anshul Mehra','MALE','SECTOR 21,  CANAUGHT PLACE, NEW DELHI',49,'7778880999',1),('D0002','Aamir Siddhiqui','MALE','SECTOR 09, NOIDA, UP ',48,'9983473238',2),('D0003','Riddhi Rawat','FEMALE','SECTOR 19, SAKET, NEW DELHI',38,'8841968274',3),('D0004','Seema Singh','FEMALE','SECTOR 8,  LAJPATNAGAR, NEW DELHI',43,'9167349385',4),('D0005','Hemant Pandey','MALE','SECTOR 3,  HAUJ KHAS, NEW DELHI',41,'8473297449',5),('D0006','Harshit Sethana','Male','sector 19, Vijayanagar, New  Delhi',52,'8889992221',1),('D0007','Anshul Mehta','Male','sector 15,Navalakha, New Delhi',43,'9994447773',2),('D0008','Yukta Chakrawarti','Female','Sector 19,Vijayanagar, New Delhi',46,'6668883332',3),('D0009','Suman Avasthi','Female','Sector 20, Shri Satya Sai, New Delhi',39,'9823928392',4),('D0010','Jitendra Jain','Male','Sector 15,Indrapuri, Gurgaon, Haryana',47,'9752458058',5);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `EMAIL` varchar(40) NOT NULL,
  `PAT_ID` int NOT NULL,
  `LOGIN_NAME` varchar(40) DEFAULT NULL,
  `PASSWORD` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`EMAIL`,`PAT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES ('abcd@gmail.com',4,'abcd','abcd'),('abhijityaul17@gmail.com',5,'Abhijit ','Abhi'),('haha@gmail.com',8,'haha','haha'),('karan@gmail.com',6,'karan','karan'),('sangrang@gmail.com',7,'Sangrang b','sangrang'),('sarvesh@gmail.com',1,'sarvesh','sarvesh'),('yash@gmail.com',2,'yash','yash'),('yashbehare@gmail.com',3,'Yash','yash');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `PATIENT_ID` int NOT NULL,
  `PNAME` varchar(25) NOT NULL,
  `AGE` int DEFAULT NULL,
  `SEX` varchar(13) DEFAULT NULL,
  `ADDRESS` varchar(50) DEFAULT NULL,
  `PHONE` bigint NOT NULL,
  PRIMARY KEY (`PATIENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'sarvesh',20,'Male','nit delhi',8600068123),(2,'yash',21,'male','nit delhi',7283278745),(3,'Yash',22,'male','amravati',8999383825),(4,'abcd',19,'male','hvhvv',23748332432),(5,'Abhijit ',1,'mael','CHandravati colony sai nagar amt',9960352976),(6,'karan',24,'male','nagpur',8967452310),(7,'Sangrang b',34,'Male','nit delhi',9876544562),(8,'haha',21,'Male','amravati',8654321223);
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slot`
--

DROP TABLE IF EXISTS `slot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `slot` (
  `slot_no` int NOT NULL,
  `from_time` time DEFAULT NULL,
  `to_time` time DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`slot_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slot`
--

LOCK TABLES `slot` WRITE;
/*!40000 ALTER TABLE `slot` DISABLE KEYS */;
INSERT INTO `slot` VALUES (1,'09:00:00','11:00:00','available'),(2,'12:00:00','14:00:00','available'),(3,'16:00:00','18:00:00','available'),(4,'19:00:00','21:00:00','available');
/*!40000 ALTER TABLE `slot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 19:11:24
