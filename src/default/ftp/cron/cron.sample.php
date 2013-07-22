<?php

/*
 * %LICENSE% - see LICENSE
 *
 * $Id: cron.sample.php,v 1.1 2010-04-09 00:04:52 dkolev Exp $
 */

error_reporting(E_ALL);

/**
 * Filename of the script to run. For Example script.sample.php 
 * 
 * @var string
 */
define('_CRON_FILENAME', 'script.sample.php');

require_once(dirname(__FILE__) . '/cron.generic.php');

/*
 *
 * Changelog:
 * $Log: cron.sample.php,v $
 * Revision 1.1  2010-04-09 00:04:52  dkolev
 * Move
 *
 * Revision 1.1  2010-04-08 23:24:38  dkolev
 * Missing files from migrations
 *
 * Revision 1.1  2010-03-15 01:52:32  dkolev
 * Sample cron script
 *
 * Revision 1.1  2009-11-16 00:21:28  dkolev
 * Moved to site folder.
 *
 * Revision 1.1  2009-11-15 00:25:36  dkolev
 * Initial import
 *
 */ 


?>