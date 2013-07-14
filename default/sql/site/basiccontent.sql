
-- $Id: basiccontent.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `basiccontent` (
  `guid` varchar(32) NOT NULL,
  `parent` varchar(32) NULL,
  `wrapper` varchar(32) default NULL,
  `realm` varchar(255) NOT NULL default 'general',
  `category` varchar(255) default NULL,
  `folder` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `workgroup` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `description` varchar(500) default NULL,
  `keywords` varchar(500) default NULL,
  `image` longblob COMMENT 'Any type of binary data',
  `meta_image` text COMMENT 'META data for the binary column',
  `type` varchar(50) NOT NULL,
  `stereotype` varchar(255) default NULL,
  `part` text,
  `part2` text,
  `part3` text,
  `part4` text,
  `part5` text,
  `part6` text,
  `part7` text,
  `part8` text,
  `part9` text,
  `part10` text,
  `priority` int(11) NOT NULL default '0',
  `last_update` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  UNIQUE KEY `path` (`folder`,`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `basiccontent` (`guid`, `wrapper`, `realm`, `category`, `folder`, `filename`, `workgroup`, `title`, `description`, `keywords`, `image`, `meta_image`, `type`, `stereotype`, `part`, `part2`, `part3`, `part4`, `part5`, `part6`, `part7`, `part8`, `part9`, `part10`) VALUES ('DC16EC5F8F4EBD3741EC48D8950DAFAE', '', 'general', NULL, '', 'readycheck.vesh', 'any', 'Ready Check', '', '', NULL, NULL, 'page', NULL, 'Site is working correctly. You may begin population<br />\r\n', '<br />\r\n', '<br />\r\n', '<br />\r\n', '', '', '', '', '', '');

-- Changelog:
-- $Log: basiccontent.sql,v $
-- Revision 1.2  2013-01-14 21:13:18  dkolev
-- Merge to prototype
--
-- Revision 1.1.4.1  2012-02-19 20:50:22  dkolev
-- Changed to InnoBD
--
-- Revision 1.1  2010-04-09 00:04:51  dkolev
-- Move
--
-- Revision 1.1  2010-04-04 02:03:50  dkolev
-- *** empty log message ***
--
-- Revision 1.6  2009-07-16 10:30:20  dkolev
-- Made folder be not NULL
--
-- Revision 1.5  2009-07-05 20:42:40  dkolev
-- Changed folder to be "" as default not NULL
--
-- Revision 1.4  2009-04-04 10:59:01  dkolev
-- *** empty log message ***
--
-- Revision 1.2  2009-03-22 04:25:41  dkolev
-- Added the folder and filename instead of path
--
-- Revision 1.1  2009-03-21 23:15:15  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:10:52  dkolev
-- Moving from installers project
--
-- Revision 1.5  2009-01-08 21:20:50  dkolev
-- Added last_update column
--
-- Revision 1.4  2009-01-07 22:58:10  dkolev
-- Added space so that scripting won't break
--
-- Revision 1.3  2009-01-07 21:40:56  dkolev
-- Added CVS commenting
--
