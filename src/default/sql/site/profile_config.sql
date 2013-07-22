
-- $Id: profile_config.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `profile_config` (
  `guid` varchar(32) NOT NULL,
  `profile` varchar(32) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `value` varchar(5000) default NULL,
  PRIMARY KEY  (`guid`),
  UNIQUE KEY `attribute` (`profile`,`attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Changelog:
-- $Log: profile_config.sql,v $
-- Revision 1.2  2013-01-14 21:13:18  dkolev
-- Merge to prototype
--
-- Revision 1.1.4.2  2012-02-19 20:50:22  dkolev
-- Changed to InnoBD
--
-- Revision 1.1.4.1  2011-11-19 21:04:45  dkolev
-- Fixed create sql to include ;
--
-- Revision 1.1  2010-04-18 19:38:50  dkolev
-- Initial import
--
