
-- $Id: draft.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

-- 
-- Table structure for table `draft`
-- 

CREATE TABLE `draft` (
  `guid` varchar(32) NOT NULL,
  `entity` varchar(32) NOT NULL COMMENT 'Entity to which this draft is related',
  `author` varchar(32) NOT NULL,
  `image` longblob,
  `meta_image` text,
  `part` text,
  `isfinal` enum('no','yes') NOT NULL,
  `last_update` int(11) NOT NULL default '0',
  PRIMARY KEY  (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Changelog:
-- $Log: draft.sql,v $
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
-- Revision 1.1  2009-03-21 23:15:15  dkolev
-- *** empty log message ***
--
-- Revision 1.1  2009-03-21 23:10:52  dkolev
-- Moving from installers project
--
-- Revision 1.1  2009-01-08 21:20:37  dkolev
-- Initial import
--