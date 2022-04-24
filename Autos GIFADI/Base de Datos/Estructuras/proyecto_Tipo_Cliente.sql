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
-- Table structure for table `Tipo_Cliente`
--

DROP TABLE IF EXISTS `Tipo_Cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tipo_Cliente` (
  `Id_tipoCliente` int NOT NULL,
  `Id_persona` int DEFAULT NULL,
  `Id_compania` int DEFAULT NULL,
  PRIMARY KEY (`Id_tipoCliente`),
  KEY `Id_persona` (`Id_persona`),
  KEY `Id_compania` (`Id_compania`),
  CONSTRAINT `Tipo_Cliente_ibfk_1` FOREIGN KEY (`Id_persona`) REFERENCES `Persona_natural` (`Id_pn`),
  CONSTRAINT `Tipo_Cliente_ibfk_2` FOREIGN KEY (`Id_compania`) REFERENCES `Compania` (`Id_compania`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tipo_Cliente`
--

LOCK TABLES `Tipo_Cliente` WRITE;
/*!40000 ALTER TABLE `Tipo_Cliente` DISABLE KEYS */;
INSERT INTO `Tipo_Cliente` VALUES (1001,1219901001,101010101),(1002,1219951002,101010102),(1003,1219921003,101010103),(1004,1219931004,101010104),(1005,1219961005,101010105),(1006,1219971006,101010101),(1007,1219981007,101010102),(1008,1219911008,101010103),(1009,1219921009,101010104);
/*!40000 ALTER TABLE `Tipo_Cliente` ENABLE KEYS */;
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

-- Dump completed on 2022-04-24 16:11:44