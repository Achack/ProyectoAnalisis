-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: proyecto.cmwa1by6y31n.us-east-1.rds.amazonaws.com    Database: proyecto
-- ------------------------------------------------------
-- Server version	8.0.28

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Clientes`
--

DROP TABLE IF EXISTS `Clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Clientes` (
  `Id_cliente` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `telefono` bigint NOT NULL,
  `Id_direccion` int NOT NULL,
  `Id_tipoCliente` int NOT NULL,
  PRIMARY KEY (`Id_cliente`),
  KEY `Id_direccion` (`Id_direccion`),
  KEY `Id_tipoCliente` (`Id_tipoCliente`),
  CONSTRAINT `Clientes_ibfk_1` FOREIGN KEY (`Id_direccion`) REFERENCES `Direccion` (`Id_direccion`),
  CONSTRAINT `Clientes_ibfk_2` FOREIGN KEY (`Id_tipoCliente`) REFERENCES `Tipo_Cliente` (`Id_tipoCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Clientes`
--

LOCK TABLES `Clientes` WRITE;
/*!40000 ALTER TABLE `Clientes` DISABLE KEYS */;
INSERT INTO `Clientes` VALUES (1001001,'Adriana Galiano',95974612,123001,1001),(1001002,'Felix Ferreiro',95974612,123001,1001),(1001003,'Ionut Mejias',95974613,123002,1002),(1001004,'Candido Gallego',95974615,123003,1003),(1001005,'Macarena Aguado',95974662,123001,1004),(1001006,'Sara Planas',95974679,123002,1005),(1001007,'Josefa Giner',95974663,123001,1006),(1001008,'Oscar Segura',95975672,123001,1007),(1001009,'Roque Quintero',95977435,123007,1008),(10010010,'Nicole Bartolome',95974724,123005,1009);
/*!40000 ALTER TABLE `Clientes` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-24 16:11:28
