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
-- Table structure for table `Concesionarios`
--

DROP TABLE IF EXISTS `Concesionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Concesionarios` (
  `Id_Conc` int NOT NULL,
  `Id_venta` int NOT NULL,
  `fecha_venta` date NOT NULL,
  `Id_Compra` int NOT NULL,
  `Id_Vehiculo` int NOT NULL,
  `Id_Marca` int NOT NULL,
  `Id_Opciones` int NOT NULL,
  `Id_Cliente` int NOT NULL,
  `Id_Planta` int NOT NULL,
  PRIMARY KEY (`Id_Conc`),
  KEY `Id_Vehiculo` (`Id_Vehiculo`),
  KEY `Id_Marca` (`Id_Marca`),
  KEY `Id_Opciones` (`Id_Opciones`),
  KEY `Id_Cliente` (`Id_Cliente`),
  KEY `Id_Planta` (`Id_Planta`),
  CONSTRAINT `Concesionarios_ibfk_1` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `Vehiculos` (`Id`),
  CONSTRAINT `Concesionarios_ibfk_2` FOREIGN KEY (`Id_Marca`) REFERENCES `Marcas` (`Id_marca`),
  CONSTRAINT `Concesionarios_ibfk_3` FOREIGN KEY (`Id_Opciones`) REFERENCES `Opciones` (`Id_opc`),
  CONSTRAINT `Concesionarios_ibfk_4` FOREIGN KEY (`Id_Cliente`) REFERENCES `Clientes` (`Id_cliente`),
  CONSTRAINT `Concesionarios_ibfk_5` FOREIGN KEY (`Id_Planta`) REFERENCES `Plantas` (`Id_planta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Concesionarios`
--

LOCK TABLES `Concesionarios` WRITE;
/*!40000 ALTER TABLE `Concesionarios` DISABLE KEYS */;
INSERT INTO `Concesionarios` VALUES (500101,701,'2020-01-01',801,901,1,10101,1001001,801001001),(500102,702,'2020-02-02',802,902,2,10102,1001002,801001002),(500103,703,'2020-03-03',803,903,3,10103,1001003,801001003),(500104,704,'2020-04-04',804,904,4,10104,1001004,801001004),(500105,705,'2020-05-05',805,905,5,10105,1001005,801001005),(500106,706,'2020-06-06',806,906,6,10106,1001006,801001006),(500107,707,'2020-07-07',807,907,7,10107,1001007,801001007),(500108,708,'2020-08-08',808,908,8,10108,1001008,801001008),(500109,709,'2020-09-09',809,909,9,10109,1001009,801001009);
/*!40000 ALTER TABLE `Concesionarios` ENABLE KEYS */;
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

-- Dump completed on 2022-04-24 16:11:42
