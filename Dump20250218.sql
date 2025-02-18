CREATE DATABASE  IF NOT EXISTS `fornecedores_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fornecedores_db`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: fornecedores_db
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `F_id` char(2) NOT NULL,
  `FNOME` varchar(30) NOT NULL,
  `STATUS` int DEFAULT NULL,
  `CIDADE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`F_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES ('F1','Pedro',20,'Recife'),('F2','Maria',10,'Fortaleza'),('F3','Sônia',30,'João Pessoa'),('F4','José',20,'Recife'),('F5','Afrânio',30,'Natal');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pecas`
--

DROP TABLE IF EXISTS `pecas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pecas` (
  `P_ID` char(2) NOT NULL,
  `PNOME` varchar(30) NOT NULL,
  `COR` varchar(30) DEFAULT NULL,
  `PESO` decimal(10,0) DEFAULT NULL,
  `CIDADE` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pecas`
--

LOCK TABLES `pecas` WRITE;
/*!40000 ALTER TABLE `pecas` DISABLE KEYS */;
INSERT INTO `pecas` VALUES ('P1','Porca','Vermelho',8,'Recife'),('P2','Pino','Verde',17,'Fortaleza'),('P3','Parafuso_1','Azul',10,'Natal'),('P4','Parafuso_2','Vermelho',14,'Recife'),('P5','Cano','Azul',18,'Fortaleza'),('P6','Mola','preta',16,'Natal'),('P7','Tubo','Vermelho',15,'Recife');
/*!40000 ALTER TABLE `pecas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remessa`
--

DROP TABLE IF EXISTS `remessa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remessa` (
  `F_ID` char(2) NOT NULL,
  `P_ID` char(2) NOT NULL,
  `QTD` int DEFAULT NULL,
  PRIMARY KEY (`F_ID`,`P_ID`),
  KEY `P_ID` (`P_ID`),
  CONSTRAINT `remessa_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `fornecedor` (`F_id`),
  CONSTRAINT `remessa_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `pecas` (`P_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remessa`
--

LOCK TABLES `remessa` WRITE;
/*!40000 ALTER TABLE `remessa` DISABLE KEYS */;
INSERT INTO `remessa` VALUES ('F1','P1',300),('F1','P2',200),('F1','P3',220),('F1','P4',200),('F1','P5',100),('F1','P6',100),('F2','P1',300),('F2','P2',400),('F2','P3',70),('F4','P2',200),('F4','P4',60),('F4','P5',50);
/*!40000 ALTER TABLE `remessa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-18 20:17:06
