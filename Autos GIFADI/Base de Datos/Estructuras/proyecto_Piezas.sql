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
-- Table structure for table `Piezas`
--

DROP TABLE IF EXISTS `Piezas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Piezas` (
  `Id_pieza` int NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `tipo` text,
  PRIMARY KEY (`Id_pieza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Piezas`
--

LOCK TABLES `Piezas` WRITE;
/*!40000 ALTER TABLE `Piezas` DISABLE KEYS */;
INSERT INTO `Piezas` VALUES (10001,'Valvula de escape','Motor'),(10002,'Retenedores de resrote','Motor'),(10003,'Resortes de valvula','Motor'),(10004,'Guardian de Valvula','Motor'),(10005,'Cadena de distribucion','Motor'),(10006,'Piston','Motor'),(10007,'Biela','Motor'),(10008,'Cigueñal','Motor'),(10009,'Arandela de empuje','Motor'),(10010,'Bomba de aceite','Motor'),(10011,'Empaquetadura','Motor'),(10012,'Switch de ignicion','Transmision'),(10013,'Controlador de bloqueo','Transmision'),(10014,'Cambiar','Transmision'),(10015,'Cilindro maestro','Frenos'),(10016,'Muelle helicoidal','Suspension'),(10017,'Bateria','Electrico'),(10018,'Alternador','Electrico'),(10019,'Interruptores','Electrico'),(10020,'Luces traseras','Electrico'),(10021,'Luces delanteras','Electrico'),(10022,'Limpiaparabrisas','Electrico'),(10023,'Bocina','Electrico'),(10024,'MCE','Encendido'),(10025,'Bobina','Encendido');
/*!40000 ALTER TABLE `Piezas` ENABLE KEYS */;
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

-- Dump completed on 2022-04-24 16:11:55
