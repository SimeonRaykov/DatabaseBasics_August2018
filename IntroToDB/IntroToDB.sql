-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.34-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for minions
CREATE DATABASE IF NOT EXISTS `minions` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `minions`;

-- Dumping structure for table minions.minions
CREATE TABLE IF NOT EXISTS `minions` (
  `id` int(11) NOT NULL,
  `towns_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_minions_towns` (`towns_id`),
  CONSTRAINT `FK_minions_towns` FOREIGN KEY (`towns_id`) REFERENCES `towns` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table minions.minions: ~0 rows (approximately)
/*!40000 ALTER TABLE `minions` DISABLE KEYS */;
/*!40000 ALTER TABLE `minions` ENABLE KEYS */;

-- Dumping structure for table minions.towns
CREATE TABLE IF NOT EXISTS `towns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table minions.towns: ~0 rows (approximately)
/*!40000 ALTER TABLE `towns` DISABLE KEYS */;
INSERT INTO `towns` (`id`, `name`) VALUES
	(1, 'To'),
	(2, 'Mo');
/*!40000 ALTER TABLE `towns` ENABLE KEYS */;

-- Dumping structure for table minions.xaxax
CREATE TABLE IF NOT EXISTS `xaxax` (
  `id` int(11) NOT NULL,
  `student` varchar(50) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table minions.xaxax: ~3 rows (approximately)
/*!40000 ALTER TABLE `xaxax` DISABLE KEYS */;
INSERT INTO `xaxax` (`id`, `student`, `money`) VALUES
	(1, 'Pesho', 101),
	(2, 'Kolio', 201),
	(3, 'Adam', 401);
/*!40000 ALTER TABLE `xaxax` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
