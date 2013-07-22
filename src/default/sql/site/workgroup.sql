
-- $Id: workgroup.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `workgroup` (
  `guid` varchar(32) NOT NULL default '',
  `codename` tinytext,
  `name` text,
  `notes` text,
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 
-- Dumping data for table `workgroup`
-- 

INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('1c5f938c3679487bba53d18d496adeef', 'member', 'Web Site Member', 'Grants general access to the pages in the /member realm');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('de70577dc62745ddbf55013702faf476', 'backup', 'BackUp Operator', 'Backups needed information of the site.');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('574e7df857e8483391b0cb2035e19394', 'db', 'DataBase Manager', 'Manages raw DB data.');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('a811bff5d9924ca9bf00c5edef0b2d1a', 'log', 'Log Manager', '');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('6dd1fa9130ca4492bc583b2f611f1138', 'file', 'Files and Folders Manager', 'Grant the ability to manage files and folders');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('d8095cb5b54c48648f943db138c7af6c', 'profile', 'Users and Workgroups Manager', 'Grant the ability to manage user accounts and workgroups');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('6b52e3541ec74bd9a635dea21829b1d5', 'admin', 'Web Site Administrator', 'Grants access to general pages in the /admin realm');
INSERT INTO `workgroup` (`guid`, `codename`, `name`, `notes`) VALUES ('584effe1329e4ada9b6ff24ed57703f4', 'page', 'Page Content Manager', 'Content posted by members of this group is automatically published. ');

-- Changelog:
-- $Log: workgroup.sql,v $
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
-- Revision 1.1  2009-03-21 23:15:14  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:10:52  dkolev
-- Moving from installers project
--
-- Revision 1.6  2009-01-07 22:58:10  dkolev
-- Added space so that scripting won't break
--
-- Revision 1.5  2009-01-07 21:40:55  dkolev
-- Added CVS commenting
--