-- --------------------------------------------------------
-- Host:                         72.3.233.132
-- Server version:               5.1.61-log - Percona Server (GPL), 13.2, Revision 2
-- Server OS:                    unknown-linux-gnu
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2013-07-14 14:53:38
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping structure for table 382520_VESHTER50.tip
CREATE TABLE IF NOT EXISTS `tip` (
  `guid` varchar(32) NOT NULL,
  `realm` varchar(225) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `workgroup` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table 382520_VESHTER50.tip: 2 rows
/*!40000 ALTER TABLE `tip` DISABLE KEYS */;
INSERT INTO `tip` (`guid`, `realm`, `category`, `workgroup`, `title`, `description`) VALUES
	('AE333D1C6BE8CFF723B4E813A83BD5AC', 'administrator', 'Quips', 'admin', 'You can request support at any time by clicking on the Support section.', NULL),
	('084A67EE008FDEDAF64CF1FE343EA6A5', 'administrator', 'Quips', 'admin', 'VESHTER tools can be as flexible as you need them to be. Contact your account representative for more information. ', NULL);
/*!40000 ALTER TABLE `tip` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
