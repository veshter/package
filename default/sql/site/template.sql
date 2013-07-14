
-- $Id: template.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `template` (
  `guid` varchar(32) NOT NULL,
  `wrapper` varchar(32) default NULL,
  `realm` varchar(255) default 'general',
  `name` varchar(255) NOT NULL default '',
  `usage` text default NULL,
  `notes` text default NULL,
  `body_plain` text default NULL,
  `body_xml` text default NULL,
  `body_html` text default NULL,
  `last_update` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Changelog:
-- $Log: template.sql,v $
-- Revision 1.2  2013-01-14 21:13:18  dkolev
-- Merge to prototype
--
-- Revision 1.1.4.1  2012-02-19 20:50:22  dkolev
-- Changed to InnoBD
--
-- Revision 1.1  2010-04-09 00:04:51  dkolev
-- Move
--
-- Revision 1.1  2010-04-04 02:03:49  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:15:14  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:10:52  dkolev
-- Moving from installers project
--
-- Revision 1.5  2009-03-21 23:03:58  dkolev
-- *** empty log message ***
--
-- Revision 1.4  2009-01-07 22:58:10  dkolev
-- Added space so that scripting won't break
--
-- Revision 1.3  2009-01-07 21:40:55  dkolev
-- Added CVS commenting
--