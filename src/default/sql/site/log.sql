
-- $Id: log.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

DROP TABLE IF EXISTS `log`;
DROP TABLE IF EXISTS `log_content`;
DROP TABLE IF EXISTS `log_category`;

CREATE TABLE `log` (
  `guid` varchar(32) NOT NULL,
  `log` varchar(255) NOT NULL default '0',
  `daydate` int(11) NOT NULL default '0',
  `daydate_end` int(11) NOT NULL default '0',
  `time_hour` tinyint(4) NOT NULL default '0',
  `time_min` tinyint(4) NOT NULL default '0',
  `time_hour_end` tinyint(4) NOT NULL default '0',
  `time_min_end` tinyint(4) NOT NULL default '0',
  `name` text NOT NULL,
  `about` text NOT NULL,
  `type` varchar(50) NOT NULL default 'info',
  `source` text NOT NULL,
  `custom_field1` text,
  `custom_value1` text,
  `custom_field2` text,
  `custom_value2` text,
  `custom_field3` text,
  `custom_value3` text,
  `custom_field4` text,
  `custom_value4` text,
  `custom_field5` text,
  `custom_value5` text,
  `custom_field6` text,
  `custom_value6` text,
  `custom_field7` text,
  `custom_value7` text,
  `custom_field8` text,
  `custom_value8` text,
  `custom_field9` text,
  `custom_value9` text,
  `custom_field10` text,
  `custom_value10` text,
  `custom_field11` text,
  `custom_value11` text,
  `custom_field12` text,
  `custom_value12` text,
  `custom_field13` text,
  `custom_value13` text,
  `custom_field14` text,
  `custom_value14` text,
  `custom_field15` text,
  `custom_value15` text,
  `custom_field16` text,
  `custom_value16` text,
  `custom_field17` text,
  `custom_value17` text,
  `custom_field18` text,
  `custom_value18` text,
  `custom_field19` text,
  `custom_value19` text,
  `custom_field20` text,
  `custom_value20` text,
  `custom_field21` text,
  `custom_value21` text,
  `custom_field22` text,
  `custom_value22` text,
  `custom_field23` text,
  `custom_value23` text,
  `custom_field24` text,
  `custom_value24` text,
  `custom_field25` text,
  `custom_value25` text,
  `custom_field26` text,
  `custom_value26` text,
  `custom_field27` text,
  `custom_value27` text,
  `custom_field28` text,
  `custom_value28` text,
  `custom_field29` text,
  `custom_value29` text,
  `custom_field30` text,
  `custom_value30` text,
  `user` varchar(32) NOT NULL default '0',
  `notes` text,
  `other` text,
  `severity` int(11) NOT NULL default '0',
  `last_update` bigint(20) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

-- Changelog:
-- $Log: log.sql,v $
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
-- Revision 1.2  2009-09-21 05:56:10  dkolev
-- Changed log type to string from enum
--
-- Revision 1.1  2009-03-21 23:15:14  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:10:52  dkolev
-- Moving from installers project
--
-- Revision 1.4  2009-01-07 22:58:10  dkolev
-- Added space so that scripting won't break
--
-- Revision 1.3  2008-09-13 22:50:41  dkolev
-- *** empty log message ***
--
