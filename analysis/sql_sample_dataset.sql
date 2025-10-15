CREATE DATABASE  IF NOT EXISTS `telecomm_dataset` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `telecomm_dataset`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: telecomm_dataset
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `telecomm`
--

DROP TABLE IF EXISTS `telecomm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telecomm` (
  `customer_id` bigint NOT NULL,
  `telecom_partner` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `pincode` char(6) DEFAULT NULL,
  `date_of_registration` date DEFAULT NULL,
  `num_dependents` int DEFAULT NULL,
  `estimated_salary` double DEFAULT NULL,
  `calls_made` int DEFAULT NULL,
  `sms_sent` int DEFAULT NULL,
  `data_used` float DEFAULT NULL,
  `churn` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customer_id` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telecomm`
--

LOCK TABLES `telecomm` WRITE;
/*!40000 ALTER TABLE `telecomm` DISABLE KEYS */;
INSERT INTO `telecomm` VALUES (1,'Reliance Jio','F',25,'Karnataka','Kolkata','755597','2020-01-01',4,124962,44,45,-361,0),(2,'Reliance Jio','F',55,'Mizoram','Mumbai','125926','2020-01-01',2,130556,62,39,5973,0),(3,'Vodafone','F',57,'Arunachal Pradesh','Delhi','423976','2020-01-01',0,148828,49,24,193,1),(4,'BSNL','M',46,'Tamil Nadu','Kolkata','522841','2020-01-01',1,138722,80,25,9377,1),(5,'BSNL','F',26,'Tripura','Delhi','740247','2020-01-01',2,55098,78,15,1393,0),(6,'Vodafone','M',36,'Uttarakhand','Chennai','120612','2020-01-01',1,73452,91,24,8109,0),(7,'BSNL','F',60,'Karnataka','Delhi','609616','2020-01-01',1,110035,36,13,8512,0),(8,'BSNL','M',46,'Arunachal Pradesh','Kolkata','866786','2020-01-01',4,104541,87,40,2245,1),(9,'Reliance Jio','F',53,'Himachal Pradesh','Mumbai','765257','2020-01-01',2,79439,34,12,10039,0),(10,'BSNL','F',57,'Rajasthan','Mumbai','506308','2020-01-01',0,126422,61,33,567,0);
/*!40000 ALTER TABLE `telecomm` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-10-15 13:05:06
