<?php

/*
 * %LICENSE% - see LICENSE
 *
 * $Id: config.inc.php,v 1.1 2010-04-09 00:04:53 dkolev Exp $
 */

die('This web site is not configured properly');

//databse information this particular site
define ('_DATASOURCE_HOST', 				'');
define ('_DATASOURCE_TYPE',					'MySQL');
define ('_DATASOURCE_NAME', 				'');
define ('_DATASOURCE_LOGIN', 				'');
define ('_DATASOURCE_PASSWORD',	 			'');

//database information for the defaults database
define ('_DEFAULTSDATASOURCE_HOST', 		'');
define ('_DEFAULTSDATASOURCE_TYPE',			'');
define ('_DEFAULTSDATASOURCE_NAME', 		'');
define ('_DEFAULTSDATASOURCE_LOGIN', 		'');
define ('_DEFAULTSDATASOURCE_PASSWORD', 	'');

/*
 *
 * Changelog:
 * $Log: config.inc.php,v $
 * Revision 1.1  2010-04-09 00:04:53  dkolev
 * Move
 *
 * Revision 1.1  2010-04-04 02:03:55  dkolev
 * *** empty log message ***
 *
 * Revision 1.2  2009-11-24 03:49:37  dkolev
 * Removed password information
 *
 * Revision 1.1  2009-11-16 00:21:25  dkolev
 * Moved to site folder.
 *
 * Revision 1.2  2009-06-15 08:21:04  dkolev
 * Removed database information from file.
 *
 * Revision 1.1  2009-03-22 04:43:49  dkolev
 * Renamed pagesetup to etc
 *
 * Revision 1.2  2009-03-21 23:05:05  dkolev
 * *** empty log message ***
 *
 */

?>