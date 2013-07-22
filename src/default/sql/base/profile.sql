-- --------------------------------------------------------
-- Host:                         vdbgsbwc.db.11401321.hostedresource.com
-- Server version:               5.0.96-log - MySQL Community Server (GPL)
-- Server OS:                    unknown-linux-gnu
-- HeidiSQL Version:             8.0.0.4396
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table vdbgsbwc.profile
CREATE TABLE IF NOT EXISTS `profile` (
  `guid` varchar(32) NOT NULL default '',
  `su` enum('no','yes') default NULL,
  `nickname` varchar(50) default NULL,
  `name_prefix` varchar(50) default NULL,
  `name_first` varchar(50) default NULL,
  `name_middle` varchar(50) default NULL,
  `name_last` varchar(50) default NULL,
  `name_suffix` varchar(50) default NULL,
  `name_secondary_prefix` varchar(50) default NULL,
  `name_secondary_first` varchar(50) default NULL,
  `name_secondary_middle` varchar(50) default NULL,
  `name_secondary_last` varchar(50) default NULL,
  `name_secondary_suffix` varchar(50) default NULL,
  `org` varchar(50) default NULL,
  `org_offer` text,
  `org_accredit_accreditor` varchar(50) default NULL,
  `org_accredit_expiration` int(11) default NULL,
  `org_accredit_qualifications` text,
  `org_accredit_yearsinpractice` smallint(6) default NULL,
  `jobtitle` varchar(50) default NULL,
  `address1` varchar(255) default NULL,
  `address2` varchar(255) default NULL,
  `city` varchar(50) default NULL,
  `region` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `zip` varchar(50) default NULL,
  `country` varchar(50) default NULL,
  `phone` varchar(50) default NULL,
  `phone2` varchar(50) default NULL,
  `fax` varchar(50) default NULL,
  `mobile` varchar(50) default NULL,
  `age` tinyint(2) default NULL,
  `email` varchar(255) default NULL,
  `email2` varchar(255) default NULL,
  `url_homepage` varchar(255) default NULL,
  `url_business` varchar(255) default NULL,
  `url_event` varchar(255) default NULL,
  `url_photo` varchar(255) default NULL,
  `meta_keywords` text,
  `meta_description` text,
  `description` text,
  `about` text,
  `buddies` text,
  `signature` text,
  `login` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `secure_chunk` text,
  `admin_msg` text,
  `notes` text,
  `status` enum('new','pending','active','service_freeze','suspended') default NULL,
  `last_login` bigint(20) default NULL,
  `logged_in` enum('no','yes') default NULL,
  `last_update` bigint(20) default NULL,
  PRIMARY KEY  (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table vdbgsbwc.profile: 1 rows
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` (`guid`, `su`, `nickname`, `name_prefix`, `name_first`, `name_middle`, `name_last`, `name_suffix`, `name_secondary_prefix`, `name_secondary_first`, `name_secondary_middle`, `name_secondary_last`, `name_secondary_suffix`, `org`, `org_offer`, `org_accredit_accreditor`, `org_accredit_expiration`, `org_accredit_qualifications`, `org_accredit_yearsinpractice`, `jobtitle`, `address1`, `address2`, `city`, `region`, `state`, `zip`, `country`, `phone`, `phone2`, `fax`, `mobile`, `age`, `email`, `email2`, `url_homepage`, `url_business`, `url_event`, `url_photo`, `meta_keywords`, `meta_description`, `description`, `about`, `buddies`, `signature`, `login`, `password`, `secure_chunk`, `admin_msg`, `notes`, `status`, `last_login`, `logged_in`, `last_update`) VALUES
	('10A677D53439719BC0AC34D9B28E06C5', 'yes', NULL, NULL, 'm3anhax0r', '', '.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dobroslav.kolev@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'no\r\n', NULL, '852DECBBF4EB34FD49FDAFD28CF99133', NULL, NULL, 'active', 1374422852, 'yes', NULL);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
