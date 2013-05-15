
-- $Id: profile_privilege.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `profile_privilege` (
  `guid` varchar(32) NOT NULL default '',
  `profile` varchar(32) default NULL,
  `workgroup` varchar(32) default NULL,
  `canread` varchar(3) default NULL,
  `canwrite` varchar(3) default NULL,
  `cangrant` varchar(2) default NULL,
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Changelog:
-- $Log: profile_privilege.sql,v $
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
-- Revision 1.3  2009-01-07 22:58:10  dkolev
-- Added space so that scripting won't break
--
-- Revision 1.2  2009-01-07 21:40:56  dkolev
-- Added CVS commenting
--
