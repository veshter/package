
-- $Id: profile.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `profile` (
  `guid` varchar(32) NOT NULL default '',
  `su` enum('no','yes') default NULL,
  `name_prefix`  varchar(50),
  `name_first`  varchar(50),
  `name_middle`  varchar(50),
  `name_last`  varchar(50),
  `name_suffix`  varchar(50),
  `email` varchar(255),
  `login` varchar(255),
  `password` varchar(50),
  `secure_chunk` text,
  `status` enum('new','pending','active','service_freeze','suspended') default NULL,
  `last_login` int(12) default NULL,
  `logged_in` enum('no','yes') default NULL,
  `last_update` int(12) default NULL,
  
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- Changelog:
-- $Log: profile.sql,v $
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
-- Revision 1.3  2009-07-16 10:30:07  dkolev
-- Added email address
--
-- Revision 1.2  2009-07-05 20:43:05  dkolev
-- Removed unnecessary fields from profile
--
-- Revision 1.1  2009-03-21 23:15:14  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:10:52  dkolev
-- Moving from installers project
--
-- Revision 1.3  2009-01-07 22:58:10  dkolev
-- Added space so that scripting won't break
--
-- Revision 1.2  2009-01-07 21:40:56  dkolev
-- Added CVS commenting
--