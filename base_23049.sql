-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.33 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para 23049
CREATE DATABASE IF NOT EXISTS `23049` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `23049`;

-- Volcando estructura para tabla 23049.articulos
CREATE TABLE IF NOT EXISTS `articulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) COLLATE latin1_bin NOT NULL,
  `imagen` varchar(256) COLLATE latin1_bin DEFAULT NULL,
  `autor` varchar(50) COLLATE latin1_bin DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `novedad` tinyint(1) NOT NULL DEFAULT '0',
  `codigo` varchar(10) COLLATE latin1_bin NOT NULL DEFAULT '',
  `fecha_creacion` datetime NOT NULL DEFAULT (now()),
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_bin;

-- La exportación de datos fue deseleccionada.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
