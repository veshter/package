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

-- Dumping structure for table 382520_VESHTER50.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `guid` varchar(32) NOT NULL DEFAULT '',
  `su` enum('no','yes') DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `name_prefix` varchar(50) DEFAULT NULL,
  `name_first` varchar(50) DEFAULT NULL,
  `name_middle` varchar(50) DEFAULT NULL,
  `name_last` varchar(50) DEFAULT NULL,
  `name_suffix` varchar(50) DEFAULT NULL,
  `name_secondary_prefix` varchar(50) DEFAULT NULL,
  `name_secondary_first` varchar(50) DEFAULT NULL,
  `name_secondary_middle` varchar(50) DEFAULT NULL,
  `name_secondary_last` varchar(50) DEFAULT NULL,
  `name_secondary_suffix` varchar(50) DEFAULT NULL,
  `org` varchar(50) DEFAULT NULL,
  `org_offer` text,
  `org_accredit_accreditor` varchar(50) DEFAULT NULL,
  `org_accredit_expiration` int(11) DEFAULT NULL,
  `org_accredit_qualifications` text,
  `org_accredit_yearsinpractice` smallint(6) DEFAULT NULL,
  `jobtitle` varchar(50) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `phone2` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `age` tinyint(2) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email2` varchar(255) DEFAULT NULL,
  `url_homepage` varchar(255) DEFAULT NULL,
  `url_business` varchar(255) DEFAULT NULL,
  `url_event` varchar(255) DEFAULT NULL,
  `url_photo` varchar(255) DEFAULT NULL,
  `meta_keywords` text,
  `meta_description` text,
  `description` text,
  `about` text,
  `buddies` text,
  `signature` text,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `secure_chunk` text,
  `admin_msg` text,
  `notes` text,
  `status` enum('new','pending','active','service_freeze','suspended') DEFAULT NULL,
  `last_login` bigint(20) DEFAULT NULL,
  `logged_in` enum('no','yes') DEFAULT NULL,
  `last_update` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table 382520_VESHTER50.profile: 1 rows
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` (`guid`, `su`, `nickname`, `name_prefix`, `name_first`, `name_middle`, `name_last`, `name_suffix`, `name_secondary_prefix`, `name_secondary_first`, `name_secondary_middle`, `name_secondary_last`, `name_secondary_suffix`, `org`, `org_offer`, `org_accredit_accreditor`, `org_accredit_expiration`, `org_accredit_qualifications`, `org_accredit_yearsinpractice`, `jobtitle`, `address1`, `address2`, `city`, `region`, `state`, `zip`, `country`, `phone`, `phone2`, `fax`, `mobile`, `age`, `email`, `email2`, `url_homepage`, `url_business`, `url_event`, `url_photo`, `meta_keywords`, `meta_description`, `description`, `about`, `buddies`, `signature`, `login`, `password`, `secure_chunk`, `admin_msg`, `notes`, `status`, `last_login`, `logged_in`, `last_update`) VALUES
	('10A677D53439719BC0AC34D9B28E06C5', 'yes', NULL, NULL, 'm3anhax0r', '', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dobroslav.kolev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.google.com/accounts/o8/id?id=AItOawnNT5X0mORobITgUtl8PI4GUgAphqSYf-c', NULL, '4091EC6110454096294C63A03C4F0032', NULL, NULL, 'active', 1368500021, 'yes', NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
