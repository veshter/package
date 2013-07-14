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

-- Dumping structure for table 382520_VESHTER50.config
CREATE TABLE IF NOT EXISTS `config` (
  `guid` varchar(32) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `value` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `attribute` (`attribute`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table 382520_VESHTER50.config: 35 rows
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES
	('801BB99AA5670DA1821AE5025CCDF074', 'site.name', 'Web Site Administration'),
	('E278CFAC1AF44417015C6AF603AF7F50', 'rep.support.url.photo', 'http://www.myopenid.com/image?id=91788'),
	('FDBEE7709EA58E178B1A48F4B8A057B3', 'rep.support.url.profile', 'http://dkolev.myopenid.com/'),
	('6AABC0553B9947EC678C22B12048F62E', 'rep.support.name', 'Dobri Kolev'),
	('ADC30CA0853D45984F6A97FF70B28EAC', 'site.forcessl', 'no'),
	('EFA55E64FF358F7CCF9EEABC0A2FE7AB', 'studio.url.help', '/content/administrator/studiohelp.vesh'),
	('D844B06E29238BB547D577811F15C601', 'site.timezone', 'America/New_York'),
	('FBC04B6516D7C26D7AF664406E9F0EE1', 'site.email.outbound.address', 'noreply@systemnotification.com'),
	('D3DD918C76776F8E9CF154EE2B52E807', 'site.email.outbound.server.smtp', 'smtp.contentsrvr.net'),
	('D3DD918C76776F8E9CF154EE2B52E802', 'site.email.outbound.password', '87uHWB!'),
	('DA87293587AE213CDBCA607F2B7B0206', 'site.email.outbound.name', 'System Notification'),
	('5627E20E5621F412B1BFE8AD3F099B93', 'site.email.outbound.login', 'noreply@systemnotification.com'),
	('D3DD918C76776F8E9CF154EE2B52E801', 'site.dir.temp', '../tmp/'),
	('42BE6DC2BAECB818FE95CC2566CD9B81', 'site.resource.id', 'invalid'),
	('CE2F331DEB7D27E5D10981CBDD0C6E7B', 'site.limit.storage', '1073741824 '),
	('C09F47F01ACD10743DB5AD58EC0BFB13', 'studio.motd', ''),
	('5EB3837F6AAD3EED9B9E72AF8D47B24C', 'studio.alert', ''),
	('DB9C7CC78EE452044E9077552A6F4EC3', 'rep.support.phone', '703-663-0154'),
	('fcfbc2271c664249ab8e0a5cbabccc5a', 'site.encryption', 'none'),
	('FACF032B6B6F53B06EA3100CB145E741', 'asp.name', 'VESHTER Network, LLC'),
	('42BE6DC2BAECB818FE95CC2566CD9B80', 'asp.address', 'PO Box 1082'),
	('D844B06E29238BB547D577811F15C603', 'asp.city', 'Vienna'),
	('90B3024D27CD8788519B120766CDF74A', 'asp.state', 'VA'),
	('4B1073F7A41C83D35F4DDAB5DBFDC09B', 'asp.zip', '22180'),
	('7F6EFFBDF6B70F818E4B73CF2B8DDC2E', 'asp.phone', '877-4-WWW-CMS (877-499-9267)'),
	('CD11633D18EFB2D10746179FDB578C7F', 'asp.address2', ''),
	('B187BB75FCF6CABA9ADAFB620982D26E', 'asp.url.logo', 'https://secure.veshter.com/images/logo_white.jpg'),
	('C2B2AE63842EAA2B0E7781A51B66F536', 'asp.email.billing.address', 'billing@veshter.com'),
	('17d982d9a89441529c69a809fd015b29', 'studio.url.forward_login_success', '/content/administrator/index.vesh'),
	('AB6CA02958CD728557AE7E421937048C', 'studio.url.webstats', 'invalid'),
	('CE2F331DEB7D27E5D10981CBDD0C6E7A', 'site.client.id', 'invalid'),
	('CE3F331DEB7D27E5D10981CBDD0C6E7A', 'site.id', 'invalid'),
	('CE2F331DEB7D27E5D10981CBDD0C6E3A', 'site.secure_chunk', '123456789'),
	('C20A374A5BB84DA58D125B9D15DBB51B', 'studio.name', 'VESHTER WebStudio 5.0rel'),
	('496276EF5351986F6F86186B261F1869', 'studio.url.about', 'http://www.veshter.com/studio');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
