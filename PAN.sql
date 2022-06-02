-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: proyecto_aula
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `diario_gasto`
--

DROP TABLE IF EXISTS `diario_gasto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diario_gasto` (
  `dia_id` int NOT NULL AUTO_INCREMENT,
  `dia_pasaje` int NOT NULL,
  `dia_comida` int NOT NULL,
  `dia_telefonia` int NOT NULL,
  `dia_emergencia` int NOT NULL,
  `dia_dia` int NOT NULL,
  `ini_id` int NOT NULL,
  PRIMARY KEY (`dia_id`),
  KEY `ini_id_idx` (`ini_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diario_gasto`
--

LOCK TABLES `diario_gasto` WRITE;
/*!40000 ALTER TABLE `diario_gasto` DISABLE KEYS */;
/*!40000 ALTER TABLE `diario_gasto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gastos_registro`
--

DROP TABLE IF EXISTS `gastos_registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gastos_registro` (
  `gas_id` int NOT NULL AUTO_INCREMENT,
  `gas_pasaje` int NOT NULL,
  `gas_comida` int NOT NULL,
  `gas_telefonia` int NOT NULL,
  `gas_emergencia` int NOT NULL,
  `ini_id` int DEFAULT NULL,
  PRIMARY KEY (`gas_id`),
  KEY `ini_id_idx` (`ini_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_registro`
--

LOCK TABLES `gastos_registro` WRITE;
/*!40000 ALTER TABLE `gastos_registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `gastos_registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inicio`
--

DROP TABLE IF EXISTS `inicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inicio` (
  `ini_id` int NOT NULL AUTO_INCREMENT,
  `ini_correo` varchar(45) NOT NULL,
  `ini_contraseña` varchar(16) NOT NULL,
  PRIMARY KEY (`ini_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio`
--

LOCK TABLES `inicio` WRITE;
/*!40000 ALTER TABLE `inicio` DISABLE KEYS */;
INSERT INTO `inicio` VALUES (1,'demian@aaasadas','556pene'),(2,'zzz','asd'),(3,'zzz','asd'),(4,'suaresramires','peneee'),(5,'c','p');
/*!40000 ALTER TABLE `inicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `usu_id` int NOT NULL AUTO_INCREMENT,
  `usu_nombre` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_bin NOT NULL,
  `usu_genero` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8_bin NOT NULL,
  `usu_fecharegistro` date NOT NULL,
  `dia_id` int NOT NULL,
  `gas_id` int NOT NULL,
  `ini_id` int NOT NULL,
  PRIMARY KEY (`usu_id`),
  KEY `dia_id_idx` (`dia_id`),
  KEY `gas_id_idx` (`gas_id`),
  KEY `ini_id_idx` (`ini_id`),
  CONSTRAINT `dia_id` FOREIGN KEY (`dia_id`) REFERENCES `diario_gasto` (`dia_id`),
  CONSTRAINT `gas_id` FOREIGN KEY (`gas_id`) REFERENCES `gastos_registro` (`gas_id`),
  CONSTRAINT `ini_id` FOREIGN KEY (`ini_id`) REFERENCES `inicio` (`ini_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-26 20:40:23
