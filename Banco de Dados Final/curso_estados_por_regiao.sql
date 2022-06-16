-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: curso
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `estados_por_regiao`
--

DROP TABLE IF EXISTS `estados_por_regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados_por_regiao` (
  `Codigo_IBGE` int NOT NULL,
  `Estado` text,
  `Sigla` text,
  `Regiao` text,
  `Fuso` int DEFAULT NULL,
  PRIMARY KEY (`Codigo_IBGE`),
  UNIQUE KEY `Código_IBGE_UNIQUE` (`Codigo_IBGE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados_por_regiao`
--

LOCK TABLES `estados_por_regiao` WRITE;
/*!40000 ALTER TABLE `estados_por_regiao` DISABLE KEYS */;
INSERT INTO `estados_por_regiao` VALUES (11,'Rondônia','RO','Norte',-1),(12,'Acre','AC','Norte',-2),(13,'Amazonas','AM','Norte',-1),(14,'Roraima','RR','Norte',-1),(15,'Pará','PA','Norte',0),(16,'Amapá','AP','Norte',0),(17,'Tocantins','TO','Norte',0),(21,'Maranhão','MA','Nordeste',0),(22,'Piauí','PI','Nordeste',0),(23,'Ceará','CE','Nordeste',0),(24,'Rio Grande do Norte','RN','Nordeste',0),(25,'Paraíba','PB','Nordeste',0),(26,'Pernambuco','PE','Nordeste',0),(27,'Alagoas','AL','Nordeste',0),(28,'Sergipe','SE','Nordeste',0),(29,'Bahia','BA','Nordeste',0),(31,'Minas Gerais','MG','Sudeste',0),(32,'Espírito Santo','ES','Sudeste',0),(33,'Rio de Janeiro','RJ','Sudeste',0),(35,'São Paulo','SP','Sudeste',0),(41,'Paraná','PR','Sul',0),(42,'Santa Catarina','SC','Sul',0),(43,'Rio Grande do Sul','RS','Sul',0),(50,'Mato Grosso do Sul','MS','Centro-Oeste',-1),(51,'Mato Grosso','MT','Centro-Oeste',-1),(52,'Goiás','GO','Centro-Oeste',0),(53,'Distrito Federal','DF','Centro-Oeste',0);
/*!40000 ALTER TABLE `estados_por_regiao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-19 22:29:33
