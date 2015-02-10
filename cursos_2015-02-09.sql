# ************************************************************
# Sequel Pro SQL dump
# Version 4004
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.22)
# Database: cursos
# Generation Time: 2015-02-10 04:40:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table cursos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cursos`;

CREATE TABLE `cursos` (
  `idCurso` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  `codigo` varchar(10000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idCurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;

INSERT INTO `cursos` (`idCurso`, `nombre`, `codigo`)
VALUES
	(1,X'576562',X'313030'),
	(2,X'5265646573',X'313031'),
	(3,X'4269',X'313032'),
	(4,X'417271756974656374757261',X'313033');

/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table notas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notas`;

CREATE TABLE `notas` (
  `idNotas` int(11) NOT NULL AUTO_INCREMENT,
  `valor` float NOT NULL,
  `idTipo` int(11) NOT NULL,
  `idEstudiante` int(11) NOT NULL,
  `idCurso` int(11) DEFAULT NULL,
  PRIMARY KEY (`idNotas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;

INSERT INTO `notas` (`idNotas`, `valor`, `idTipo`, `idEstudiante`, `idCurso`)
VALUES
	(1,4.5,1,1,1),
	(2,4,2,1,1),
	(3,4.8,3,1,1),
	(4,4.3,1,3,2),
	(5,3.5,2,3,2),
	(6,2.4,3,3,2),
	(7,5,1,3,1),
	(8,4,2,3,1),
	(9,4.2,3,3,1),
	(10,4.9,1,4,4),
	(11,4.6,2,4,4),
	(12,3.7,3,4,4),
	(13,3.5,4,1,2),
	(14,4.8,5,1,2),
	(15,4.2,6,1,2),
	(16,2.7,7,1,2),
	(17,4.3,8,1,3),
	(18,5,9,1,3),
	(20,3.4,11,5,4),
	(21,4.2,12,5,4),
	(22,4.7,13,5,4),
	(23,4.2,8,2,3),
	(24,4.7,9,2,3);

/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tipos_notas
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tipos_notas`;

CREATE TABLE `tipos_notas` (
  `idTipo` int(11) NOT NULL AUTO_INCREMENT,
  `porcentaje` float NOT NULL,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  `idCurso` int(11) NOT NULL,
  PRIMARY KEY (`idTipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `tipos_notas` WRITE;
/*!40000 ALTER TABLE `tipos_notas` DISABLE KEYS */;

INSERT INTO `tipos_notas` (`idTipo`, `porcentaje`, `nombre`, `idCurso`)
VALUES
	(1,0.3,X'5072696D65726120656E7472656761',1),
	(2,0.3,X'536567756E646120656E7472656761',1),
	(3,0.4,X'456E74726567612066696E616C',1),
	(4,0.2,X'74616C6C65722031',2),
	(5,0.2,X'74616C6C65722032',2),
	(6,0.2,X'74616C6C65722033',2),
	(7,0.4,X'66696E616C',2),
	(8,0.6,X'706C616E63686173',3),
	(9,0.4,X'66696E616C',3),
	(10,0.2,X'746172656173',4),
	(11,0.2,X'7072696D65726120656E7472656761',4),
	(12,0.2,X'736567756E646120656E7472656761',4),
	(13,0.4,X'656E74726567612066696E616C',4);

/*!40000 ALTER TABLE `tipos_notas` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table estudiantes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `estudiantes`;

CREATE TABLE `estudiantes` (
  `idEstudiante` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10000) COLLATE utf8_bin NOT NULL,
  `nombre` varchar(10000) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `estudiantes` WRITE;
/*!40000 ALTER TABLE `estudiantes` DISABLE KEYS */;

INSERT INTO `estudiantes` (`idEstudiante`, `codigo`, `nombre`)
VALUES
	(1,X'3132323132303634',X'5665726F6E69636120416C6567726961'),
	(2,X'3132323132303633',X'44616E69656C612044656C6761646F'),
	(3,X'3132323132303632',X'4E617468616C6965204172616E61'),
	(4,X'3132323132303631',X'53656261737469616E204C6F70657A'),
	(5,X'3132323132303635',X'53656261737469616E2056696C6C616D697A6172');

/*!40000 ALTER TABLE `estudiantes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table estudiante_curso
# ------------------------------------------------------------

DROP TABLE IF EXISTS `estudiante_curso`;

CREATE TABLE `estudiante_curso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idEstudiante` int(11) NOT NULL,
  `idCurso` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idUsuario` (`idEstudiante`),
  KEY `idCurso` (`idCurso`),
  CONSTRAINT `idCurso` FOREIGN KEY (`idCurso`) REFERENCES `cursos` (`idCurso`),
  CONSTRAINT `idUsuario` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiantes` (`idEstudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

LOCK TABLES `estudiante_curso` WRITE;
/*!40000 ALTER TABLE `estudiante_curso` DISABLE KEYS */;

INSERT INTO `estudiante_curso` (`id`, `idEstudiante`, `idCurso`)
VALUES
	(1,1,1),
	(2,1,2),
	(3,1,3),
	(5,2,3),
	(6,3,1),
	(7,3,2),
	(8,4,4),
	(9,5,4);

/*!40000 ALTER TABLE `estudiante_curso` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
