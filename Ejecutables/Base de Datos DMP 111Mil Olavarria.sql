CREATE DATABASE  IF NOT EXISTS `dmp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `dmp`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: dmp
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `enfermedades`
--

DROP TABLE IF EXISTS `enfermedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `enfermedades` (
  `idEnfermedad` int(11) NOT NULL AUTO_INCREMENT,
  `enfermedad` varchar(100) DEFAULT NULL,
  `presionMax` float DEFAULT NULL,
  `presionMin` float DEFAULT NULL,
  `glucemiaMax` float DEFAULT NULL,
  `glucemiaMin` float DEFAULT NULL,
  `globulosBlancosMax` float DEFAULT NULL,
  `globulosBlancosMin` float DEFAULT NULL,
  `globulosRojosMax` float DEFAULT NULL,
  `globulosRojosMin` float DEFAULT NULL,
  `colesterolMax` float DEFAULT NULL,
  `colesterolMin` float DEFAULT NULL,
  `trigliceridosMax` float DEFAULT NULL,
  `trigliceridosMin` float DEFAULT NULL,
  `acidoUricoMax` float DEFAULT NULL,
  `acidoUricoMin` float DEFAULT NULL,
  `uremiaMax` float DEFAULT NULL,
  `uremiaMin` float DEFAULT NULL,
  `creatininaMax` float DEFAULT NULL,
  `creatininaMin` float DEFAULT NULL,
  `iptMax` float DEFAULT NULL COMMENT 'Ionograma plasmatico',
  `iptMin` float DEFAULT NULL COMMENT 'Ionograma plasmatico',
  `tgoMax` float DEFAULT NULL COMMENT 'Transaminasa Glutamico Oxalecetica',
  `tgoMin` float DEFAULT NULL COMMENT 'Transaminasa Glutamico Oxalecetica',
  `tgpMax` float DEFAULT NULL COMMENT 'Transaminasa Glutamico Piruvica',
  `tgpMin` float DEFAULT NULL COMMENT 'Transaminasa Glutamico Piruvica',
  `faMax` float DEFAULT NULL COMMENT 'Fosfatasa Alcalina',
  `faMin` float DEFAULT NULL COMMENT 'Fosfatasa Alcalina',
  `plaquetasMax` float DEFAULT NULL,
  `plaquetasMin` float DEFAULT NULL,
  `ppmMax` float DEFAULT NULL,
  `ppmMin` float DEFAULT NULL,
  `hemoglobinaMax` float DEFAULT NULL,
  `hemoglobinaMin` float DEFAULT NULL,
  `hierroMax` float DEFAULT NULL,
  `hierroMin` float DEFAULT NULL,
  `temperaturaMax` float DEFAULT NULL,
  `temperaturaMin` float DEFAULT NULL,
  `enfermedadesPadecidas` varchar(45) DEFAULT NULL,
  `recomendaciones` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idEnfermedad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedades`
--


--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuarios` (
  `idusuarios` int(11) NOT NULL AUTO_INCREMENT,
  `tipoUsuario` int(11) DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL,
  `matricula` varchar(20) DEFAULT NULL,
  `codigoValidacion` varchar(100) DEFAULT NULL,
  `nombre` varchar(60) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `cuil` varchar(15) DEFAULT NULL,
  `sexo` varchar(2) DEFAULT NULL,
  `edad` varchar(4) DEFAULT NULL,
  `peso` int(11) DEFAULT NULL,
  `altura` float DEFAULT NULL,
  `fechaNacimiento` varchar(10) DEFAULT NULL,
  `cuit` varchar(15) DEFAULT NULL,
  `grupo` char(3) DEFAULT NULL,
  `factor` char(3) DEFAULT NULL,
  `imc` float DEFAULT NULL,
  `idEnfermedad` int(11) DEFAULT NULL,
  `idMatricula` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idusuarios`),
  KEY `idEnfermedad_idx` (`idEnfermedad`),
  CONSTRAINT `idEnfermedad` FOREIGN KEY (`idEnfermedad`) REFERENCES `enfermedades` (`idenfermedad`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` VALUES (1,NULL,'m','mjPasswordField1',NULL,NULL,'m','m','m','m',NULL,'m',NULL,'M',NULL,NULL,NULL,'m',NULL,NULL,NULL,NULL,NULL,NULL),(2,NULL,'JuanT','1234',NULL,NULL,'Juan','Gomez','35.235.245','juangomez@gmail.com',NULL,'0228415263565',NULL,'M',NULL,NULL,NULL,'11/08/1985',NULL,NULL,NULL,NULL,NULL,NULL),(3,NULL,'JS','123456',NULL,NULL,'Jorge','Salvado','40.326.898','js@gmail.com',NULL,'0228415656966',NULL,'M',NULL,NULL,NULL,'1/05/1991',NULL,NULL,NULL,NULL,NULL,NULL),(4,NULL,'Fer','123456',NULL,NULL,'Fernanda','Intel','39.326.898','ferIntel@gmail.com',NULL,'0228415656965',NULL,'M',NULL,NULL,NULL,'1/07/1991',NULL,NULL,NULL,NULL,NULL,NULL),(5,NULL,'Hernestito','12345',NULL,NULL,'Hernesto','Lopez','37.258.369','elhernesto@yahoo.com.ar',NULL,'0228415545654',NULL,'M',NULL,NULL,NULL,'31/07/1993',NULL,NULL,NULL,NULL,NULL,NULL);

--
-- Table structure for table `valoresanalisis`
--

DROP TABLE IF EXISTS `valoresanalisis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `valoresanalisis` (
  `idValores` int(11) NOT NULL AUTO_INCREMENT,
  `presion` float DEFAULT NULL,
  `glucemia` float DEFAULT NULL,
  `globulosBlancos` float DEFAULT NULL,
  `globulosRojos` float DEFAULT NULL,
  `colesterol` float DEFAULT NULL,
  `trigliceridos` float DEFAULT NULL,
  `acidoUrico` float DEFAULT NULL,
  `uremia` float DEFAULT NULL,
  `creatinina` float DEFAULT NULL,
  `ipt` float DEFAULT NULL,
  `tgo` float DEFAULT NULL,
  `tgp` float DEFAULT NULL,
  `fa` float DEFAULT NULL,
  `plaquetas` float DEFAULT NULL,
  `ppm` float DEFAULT NULL,
  `hemoglobina` float DEFAULT NULL,
  `hierro` float DEFAULT NULL,
  `temperatura` float DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idusuario` int(11) NOT NULL,
  `idEnfermedad` int(11) NOT NULL,
  PRIMARY KEY (`idValores`),
  KEY `idusuario_idx` (`idusuario`),
  KEY `idEnfermedad_idx` (`idEnfermedad`),
  CONSTRAINT `idusuario` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuarios`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `valoresanalisis`
--


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
