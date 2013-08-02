Migrating from VESHTER Network servers
======================================

As part of the migration process away from VESHTER Network, the company issues asset and source files which can be installed on any server that has the necessary prerequisite software. There is no installer or setup application; however, the installation process is fairly straight forward.

_Note:_ If you wish to simply host your web site somewhere but not have to setup the server and pre-requisite software, there are many inexpensive web hosting plans available on the Internet. For example, GoDaddy.

Required Software for hosting
-----------------
+ Modern LAMP (Linux, Apache, MySQL, PHP) server.
+ Web hosting with the ability to specify custom root folder (/content vs /)
+ Database hosting for two MySQL databases
+ [Google API license] (https://code.google.com/apis/console/)

Recommended Software for development
-----------------
+ [HeidiSQL] (http://www.heidisql.com)
+ [PhpStorm] (http://www.jetbrains.com/phpstorm)

Transition Archive file
-----------------
VESHTER transition files are a complete set of all asset and source files. Those files are compressed in one or more archive or [.rar] (http://www.rarlab.com) files in increments of 100 megabytes. For example a 300 megabytes of compressed data would be in three files. If there are two or more archive files, all of them have to downloaded and extracted.

Once extracted, there will be three different folders available:
+ Raw assets - all raw/original at work or content that was original used to create the web site.
+ Database - content database at the time when the archive was created.
+ Package - script files required for the web site to function.

### Raw assets
This folder contains any and all files used in the original creation of the site. Raw assets are not required for the web site to function; however, they can be useful if the site was being redesigned. Items such as Flash or PhotoShop files will be found there.

### Database
_Note:_ For general VESHTER software documentation, [click here] (../)

This folder contains a snapshot of the content database table files located in this folder need to be restored on the new server where the web site will be hosted. This content database works in conjunction with the [VESHTER Baseline database] (../../src/default/sql/base).

### Package
_Note:_ For general VESHTER software documentation, [click here] (../)

This folder contains a snapshot of all scripts necessary for the web site to function. They are not updated to [the latest version due to a risk of potentially losing custom functionality. You are free to update the package files from [framework] (https://github.com/veshter/framework/tree/master/src) or [package] (../../src/) at your own risk.

Pre-Installation
-----------------

### Google Authentication (OATH2) API
Visit the [Google Console] (https://code.google.com/apis/console) using a generic account (preferably only used for this web site) and then create a new web application client ID. This will allow your web site to authenticate users based on their Google IDs and thus freeing you from the responsibility to storing people's passwords on your site. Click on API access, Create a new OATH2.0 client and enter a project name. A project name can be "Your Site Single Signon". Click Next. Select Web Application. If not already visible, select (more options) next to Your Site or hostname.

For Authorized Redirect URLs enter:
+ http://www.YOUR-DOMAIN-NAME.com/log.vesh?do=login
+ http://YOUR-DOMAIN-NAME.com/log.vesh?do=login
+ 
Where YOUR-DOMAIN-NAME.com is your domain name. If you use SSL, specify the SSL schema. If you have a staging web site address, enter it as well. Do not forget to end the address with /log.vesh?do=login

Record the Client ID, Client secret and API key. You will need them in the configuration step.

Installation
-----------------
+ Extract the archive
+ Restore the content database on the new database server.
Keep in mind, the content database files are MySQL table files not .sql scripts.
+ Create a read/write MySQL user for the content database for the site to use as well as for administrative purposes (i.e. for HeidiSQL or PhpMyAdmin)
+ Download the [baseline database] (../../src/default/sql/base) .sql files and run them inside a new/empty database
+ Create a read/write MySQL user for the baseline database __for administrative purposes only__ (i.e. for HeidiSQL or
 PhpMyAdmin)
+ Create a read-only (or read/write if read-only is not an option) user for the baseline database for the site to use.
+ Upload the contents of the package folder to your new web server.
Your web site has to point to the /content package folder and __not__ /, otherwise virtual paths will not work.

Configuration
-----------------
+ Navigate to /etc/ folder and edit config.inc.php. For the _DATASOURCE constants, specify the server and credential information for the content database. For the _DEFAULTSDATASOURCE, specify the server and credential information for the baseline database.

<pre>
define ('_DATASOURCE_HOST', 				'');
define ('_DATASOURCE_TYPE',					'MySQL');
define ('_DATASOURCE_NAME', 				'');
define ('_DATASOURCE_LOGIN', 				'');
define ('_DATASOURCE_PASSWORD',	 			'');

//database information for the defaults database
define ('_DEFAULTSDATASOURCE_HOST', 		'');
define ('_DEFAULTSDATASOURCE_TYPE',			'MySQL');
define ('_DEFAULTSDATASOURCE_NAME', 		'');
define ('_DEFAULTSDATASOURCE_LOGIN', 		'');
define ('_DEFAULTSDATASOURCE_PASSWORD', 	'');
</pre>

+ Ensure connectivity between the web site and the database server.
+ Open HeidiSQL or PhpMyAdmin and edit the "config" table of the content database. Find the entries for site.auth.clientid, site.auth.clientsecret and site.auth.developerkey. If they don't exist, create them. Set their values to the Google web application client ID.

<pre>
INSERT INTO `config` (`guid`, `attribute`, `value`) VALUES
    ('35EE3D8C56730121699184046EE68F01', 'site.auth.clientid', ''),
	('35EE3D8C56730121699184046EE68F02', 'site.auth.clientsecret', ''),
	('35EE3D8C56730121699184046EE68F03', 'site.auth.developerkey', '');
</pre>

+ Open HeidiSQL or PhpMyAdmin and edit the "profile" table in the content database. Add your Google User ID as a super user. If you do not know what your Google User ID is, simply attempt to login and use the ID the error message
  gives you. Google User IDs are numeric, they are not Gmail addresses. For example, 726535632130834122404

<pre>
INSERT INTO `profile` (`guid`, `su`, `login`, `status`) VALUES
	('10A677D53439719BC0AC34D9B28E06C7', 'yes', 'YOURGOOGLEIDHERE', 'active');
</pre>

Summary
-----------------
At this point, your site should be operational and ready to test. Attempt to login by going to http://www
.YOUR-DOMAIN-NAME.com. To open the administrative area, go to  http://www.YOUR-DOMAIN-NAME.com/admin




