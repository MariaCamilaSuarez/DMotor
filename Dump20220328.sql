-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dmotor1
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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Nombre` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Apellido` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Numero_Documento` varchar(15) NOT NULL,
  `Correo` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Id_VehiculoFK` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Correo_UNIQUE` (`Correo`),
  KEY `Id_Vehiculo_idx` (`Id_VehiculoFK`),
  CONSTRAINT `Id_Vehiculo` FOREIGN KEY (`Id_VehiculoFK`) REFERENCES `vehiculo` (`Id_Vehiculo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Ana','Rojas','1234566','ddiaz074@misena.edu.co','3043970440',NULL),(16,'Juanito','Perez','123456','deissy@gmail.com','123',NULL),(21,'Juan','Avila','855555','sddgfh@gmail.com','3215655',NULL),(24,'Juan','Avila','551453','jsjuan@gamil.com','3215655',NULL),(26,'Ana','Martinez','987456','ana123@gmail.com','3043970440',NULL);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` tinyint(1) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (0,'Activo'),(1,'Inactivo');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `Id_Rol` int NOT NULL AUTO_INCREMENT,
  `Nombre_Rol` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`Id_Rol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Mecanico');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `ID_Solicitud` int NOT NULL AUTO_INCREMENT,
  `Fecha` varchar(10) NOT NULL,
  `Id_Usuario` int NOT NULL,
  `Id_Cliente` int NOT NULL,
  `Id_Vehiculo` int NOT NULL,
  `Repuesto` varchar(50) NOT NULL,
  `Servicio` varchar(25) NOT NULL,
  `Parte` varchar(50) NOT NULL,
  `Observacion` text,
  `Precio` int DEFAULT NULL,
  PRIMARY KEY (`ID_Solicitud`),
  KEY `SOLIUSUFK` (`Id_Usuario`),
  KEY `SOLICLIFK` (`Id_Cliente`),
  KEY `SOLIVEHIFK_idx` (`Id_Vehiculo`),
  CONSTRAINT `SOLICLIFK` FOREIGN KEY (`Id_Cliente`) REFERENCES `cliente` (`Id`),
  CONSTRAINT `SOLIUSUFK` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuario` (`Id_Usuario`),
  CONSTRAINT `SOLIVEHIFK` FOREIGN KEY (`Id_Vehiculo`) REFERENCES `vehiculo` (`Id_Vehiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (6,'2022-03-10',1,1,9,'Manija','Mantenimiento Correctivo','Puerta','shjhjadhjhfhfgvblsjhetewugfbeuw',2000),(7,'2022-03-10',2,16,10,'Manija','Mantenimiento Correctivo','Puerta','efshjvdfdhjfdjhdhcv',1000),(8,'2022-03-11',1,1,9,'Manija','Mantenimiento Correctivo','Puerta','rhtghrth',2000),(9,'2022-03-11',1,1,9,'Manija','Mantenimiento Correctivo','Puerta','hjsjgsavjhshjbs',20000),(10,'2022-03-21',2,24,14,'Manija','Mantenimiento preventico','Puerta','dsgrygre',200),(11,'2022-03-20',1,21,12,'ddd','Mantenimiento Periodico','ddd','dfsfgtrthtr',55555),(12,'2022-03-27',1,26,15,'Manija','Mantenimiento preventico','Puerta','No tiene manija la puerta',20000);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo`
--

DROP TABLE IF EXISTS `tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo` (
  `Id_Tipo` int NOT NULL AUTO_INCREMENT,
  `Nombre_Tipo` varchar(35) NOT NULL,
  PRIMARY KEY (`Id_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo`
--

LOCK TABLES `tipo` WRITE;
/*!40000 ALTER TABLE `tipo` DISABLE KEYS */;
INSERT INTO `tipo` VALUES (1,'Carro'),(2,'Moto');
/*!40000 ALTER TABLE `tipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Id_Usuario` int NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(30) NOT NULL,
  `apellidoUsuario` varchar(30) NOT NULL,
  `correoUsuario` varchar(30) NOT NULL,
  `claveUsuario` varchar(250) NOT NULL,
  `Id_Rol` int NOT NULL,
  `Id_Estado` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id_Usuario`),
  UNIQUE KEY `correoUsuario` (`correoUsuario`),
  KEY `USERROLFK` (`Id_Rol`),
  KEY `usuarioEstadoFK` (`Id_Estado`),
  CONSTRAINT `USERROLFK` FOREIGN KEY (`Id_Rol`) REFERENCES `rol` (`Id_Rol`),
  CONSTRAINT `usuarioEstadoFK` FOREIGN KEY (`Id_Estado`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Maria','Suuarez','cami@gmail.com','12345',2,1),(2,'Ivan','Suarez','nestor@gmail.com','1234',1,0),(3,'Miguel','rozo','miguel@gmail.com','America123',2,0),(4,'july','suarez','july@gmail.com','Andreslindo',1,0),(5,'liliana','Suarez','lilisupa@hotmail.com','camine',2,0),(6,'Olga','Suarez','OligisSuarez@gmail.com','TomiJuli',1,0),(7,'Rodrigo','perez','Dperez@gmail.com','123',2,1),(8,'Sophia','Suarez Donato ','SophiSD@gmail.com','123',1,0),(9,'Saul','Suarez','Saul@gmail.com','123',2,0),(10,'Deissy','Diaz','deissydiaz@gmail.com','123',1,0),(13,'Lorena','Diaz','lorenadiaz18.ld@gmail.com','123',2,1),(18,'Deissy','Diaz','ddiaz074@misena.edu.co','123',2,1),(20,'Deissy','Diaz','uval8diazdeissy@gmail.com','02dejulio',2,1),(21,'Natalia','Diaz','natalia@gmail.com','12345',1,1),(22,'Carlitos','Perez','carlitos@gmail.com','987',2,1),(24,'Maria','Rojas','camila@gmaill.com','12345',1,1),(25,'Carolina','Gomez','caro123@gmail.com','12345',1,1),(26,'Valentina','Sanchez','valentina123@gmail.com','12345',1,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `Id_Vehiculo` int NOT NULL AUTO_INCREMENT,
  `Modelo` varchar(35) NOT NULL,
  `Color` varchar(30) NOT NULL,
  `Placa` varchar(6) NOT NULL,
  `Id_Tipo` int NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `Id_ClienteFK` int NOT NULL,
  PRIMARY KEY (`Id_Vehiculo`),
  KEY `VEHICULOTIPOFK` (`Id_Tipo`),
  KEY `Id_ClienteFK_idx` (`Id_ClienteFK`),
  CONSTRAINT `VEHICULOTIPOFK` FOREIGN KEY (`Id_Tipo`) REFERENCES `tipo` (`Id_Tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (9,'ss','rosa','asd645',1,'fsfgfh',0),(10,'asasds','amarillo','sdf545',1,'fsfgfh',0),(11,'wds','verde','sdf523',1,'sfdfad',21),(12,'asasds','verde','sdf545',1,'fsfgfh',22),(13,'asasds','amarillo','sdf545',1,'sfdfad',23),(14,'asasds','amarillo','sdf545',1,'sfdfad',25),(15,'aaaa','amarillo','ddd123',1,'KIA',26);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-28  8:41:53
