
-- $Id: config.sql,v 1.2 2013-01-14 21:13:18 dkolev Exp $

CREATE TABLE `config` (
  `guid` varchar(32) NOT NULL,
  `attribute` varchar(255) NOT NULL,
  `value` varchar(5000) default NULL,
  PRIMARY KEY  (`guid`),
  UNIQUE KEY `attribute` (`attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES ('35EE3D8C56730121699184046EE68F08','site.name', 'Company Web Site');
INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES ('7EEE3D8C56730121699184046EE68F08','site.resource.id','69A9FDFC228D775321181936DCA16BCD');
INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES ('AE380FE5FB52D6BE32F9E2A253106CF5','site.id','-1');
INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES ('C1754EEF5E93DB95A18810C4102A3EA9','site.client.id','-1');
INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES ('FE5306F4D0FF7A782E1618EC4B822447','studio.url.webstats','invalid');

-- Changelog:
-- $Log: config.sql,v $
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
-- Revision 1.2  2009-06-15 08:21:32  dkolev
-- Added some more defalt configuration paramaters
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
-- Revision 1.3  2009-01-07 21:40:55  dkolev
-- Added CVS commenting
--