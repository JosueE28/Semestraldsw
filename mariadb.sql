-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.2.0-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para java
CREATE DATABASE IF NOT EXISTS `java` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `java`;

-- Volcando estructura para tabla java.clientef
CREATE TABLE IF NOT EXISTS `clientef` (
  `cedula` varchar(30) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `nacimiento` varchar(30) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `corregimiento` varchar(30) DEFAULT NULL,
  `membresia` varchar(30) DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `promedio` double DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla java.clientef: ~1 rows (aproximadamente)
INSERT INTO `clientef` (`cedula`, `nombre`, `ciudad`, `sexo`, `correo`, `telefono`, `nacimiento`, `provincia`, `corregimiento`, `membresia`, `descuento`, `promedio`) VALUES
	('8-1000-989', 'David Nazario', 'Panamá', 'M', 'davideldios23@gmail.com', '6217-2193', '5-7-2000', 'Colón ', 'Chiapas', 'bronce', 10, 43.5);

-- Volcando estructura para tabla java.clienteo
CREATE TABLE IF NOT EXISTS `clienteo` (
  `cedula` varchar(30) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `nacimiento` varchar(30) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `corregimiento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla java.clienteo: ~1 rows (aproximadamente)
INSERT INTO `clienteo` (`cedula`, `nombre`, `ciudad`, `sexo`, `correo`, `telefono`, `nacimiento`, `provincia`, `corregimiento`) VALUES
	('2-753-1259', 'Raúl Arcia', 'Panamá', 'M', 'arciaraul79@gmail.com', '6267-7999', '21-3-2004', 'Coclé', 'El Harino');

-- Volcando estructura para tabla java.clientevip
CREATE TABLE IF NOT EXISTS `clientevip` (
  `cedula` varchar(30) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `ciudad` varchar(30) DEFAULT NULL,
  `sexo` varchar(30) DEFAULT NULL,
  `correo` varchar(30) DEFAULT NULL,
  `telefono` varchar(30) DEFAULT NULL,
  `nacimiento` varchar(30) DEFAULT NULL,
  `provincia` varchar(30) DEFAULT NULL,
  `corregimiento` varchar(30) DEFAULT NULL,
  `membresia` varchar(30) DEFAULT NULL,
  `descuento` float DEFAULT NULL,
  `asesor` varchar(30) DEFAULT NULL,
  `creditos` varchar(30) DEFAULT NULL,
  `promedio` double DEFAULT NULL,
  PRIMARY KEY (`cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla java.clientevip: ~2 rows (aproximadamente)
INSERT INTO `clientevip` (`cedula`, `nombre`, `ciudad`, `sexo`, `correo`, `telefono`, `nacimiento`, `provincia`, `corregimiento`, `membresia`, `descuento`, `asesor`, `creditos`, `promedio`) VALUES
	('5-5261-7812', 'Maria De La Roca', 'Panamá', 'F', ' gatoGOD@gmail.com', '6723-7793', '17-12-1996', 'Panamá', 'Tocumen', 'Plata', 5, 'Marketing y Comunicación', '20', 43.5),
	('7-1472-6813', 'José Hernandez', 'la palma', 'M', 'josemillonario@gmail.com', '6182-1617', '10-7-1993', 'Darien', 'Chumeca', 'Platino', 10, 'Asesor de Servicio VIP', '30', 43.5);

-- Volcando estructura para tabla java.compras
CREATE TABLE IF NOT EXISTS `compras` (
  `numerocompras` varchar(30) NOT NULL,
  `cliente` varchar(30) DEFAULT NULL,
  `productoscomprados` varchar(30) DEFAULT NULL,
  `itbms` float DEFAULT NULL,
  `costototal` float DEFAULT NULL,
  PRIMARY KEY (`numerocompras`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla java.compras: ~2 rows (aproximadamente)
INSERT INTO `compras` (`numerocompras`, `cliente`, `productoscomprados`, `itbms`, `costototal`) VALUES
	('12', 'Raúl Arcia', 'celular', 10, 200),
	('13', 'David Nazario', 'Four loco', 7, 10);

-- Volcando estructura para tabla java.productos
CREATE TABLE IF NOT EXISTS `productos` (
  `codigodebarras` varchar(30) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `precioestandar` float DEFAULT NULL,
  `preciodescuento` float DEFAULT NULL,
  PRIMARY KEY (`codigodebarras`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla java.productos: ~1 rows (aproximadamente)
INSERT INTO `productos` (`codigodebarras`, `nombre`, `precioestandar`, `preciodescuento`) VALUES
	('555', 'Four loko', 2.8, 2.52);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
