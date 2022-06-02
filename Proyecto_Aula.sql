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
  PRIMARY KEY (`gas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gastos_registro`
--

LOCK TABLES `gastos_registro` WRITE;
/*!40000 ALTER TABLE `gastos_registro` DISABLE KEYS */;
INSERT INTO `gastos_registro` VALUES (1,3245,345,3454),(2,65,678,3453),(3,123,3122,1232),(4,123,123,123),(5,123,123,123),(6,123,123,123);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inicio`
--

LOCK TABLES `inicio` WRITE;
/*!40000 ALTER TABLE `inicio` DISABLE KEYS */;
INSERT INTO `inicio` VALUES (1,'a@gmail.com','123123123'),(2,'gus','1'),(3,'tavo@gmail.com','234'),(4,'dad@gmail.com','67'),(5,'cp@gmail.com','1245'),(6,'cp@gmail.com','1245'),(7,'cp@gmail.com','1245'),(8,'pep@gmail.com','tet'),(9,'pepe3@gmail.com','6'),(10,'a@gmail.com','12'),(11,'job@gmail.com','1234'),(12,'job@gmail.com','1234'),(13,'gus@gmail.com','12312');
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
  `usu_nombre` varchar(45) COLLATE utf8_bin NOT NULL,
  `usu_genero` varchar(45) COLLATE utf8_bin NOT NULL,
  `usu_fecharegistro` datetime DEFAULT NULL,
  `usu_saldo` float NOT NULL,
  `gas_id` int NOT NULL,
  `ini_id` int NOT NULL,
  PRIMARY KEY (`usu_id`),
  KEY `ini_id_idx` (`ini_id`),
  KEY `gas_id_idx` (`gas_id`),
  CONSTRAINT `gas_id` FOREIGN KEY (`gas_id`) REFERENCES `gastos_registro` (`gas_id`),
  CONSTRAINT `ini_id` FOREIGN KEY (`ini_id`) REFERENCES `inicio` (`ini_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'pepe','2','2022-06-02 01:08:59',0,3,10),(2,'job','1','2022-06-02 02:10:26',0,4,11),(3,'job','1','2022-06-02 02:10:56',0,4,11),(4,'gus','1','2022-06-02 02:11:53',0,4,13);
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

-- Dump completed on 2022-06-02  2:29:58
