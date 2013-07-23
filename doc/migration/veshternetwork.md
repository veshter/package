Migrating from VESHTER Network servers
======================================

As part of the migration process away from VESHTER Network, the company issues asset and source files which can be installed on any server that has the necessary prerequisite software. There is no installer or setup application; however, the installation process is fairly straight forward.

_Note:_ If you wish to simply host your web site somewhere but not have to setup the server and pre-requisite software, there are many inexpensive web hosting plans available on the Internet. For example, GoDaddy.

Required Software for hosting
-----------------

+ Modern LAMP (Linux, Apache, MySQL, PHP) server.
+ Web hosting for two MySQL databases
+ [Google API license] (https://code.google.com/apis/console/)

Recommended Software for development
-----------------
+ [HeidiSQL] (http://www.heidisql.com)
+ [PhpStorm] (http://www.jetbrains.com/phpstorm)

Archive file
-----------------
VESHTER transition files are a complete set of all asset and source files. Those files are compressed in one or more archive or [.rar] (http://www.rarlab.com) files in increments of 100 megabytes. For example a 300 megabytes of compressed data would be in three files. If there are two or more archive files, all of them have to downloaded and extracted.

Once extracted, there will be three different folders available:
+ Raw assets - all raw/original at work or content that was original used to create the web site.
+ Database - content database at the time when the archive was created.
+ Package - script files required for the web site to function.

### Raw assets
Raw assets are not required for the web site to function; however, they can be useful if the site was being redesigned. Items such as Flash or PhotoShop files will be found there.

### Database
_Note:_ For general VESHTER software documentation, [click here] (../)

The content database tables located in this folder need to be restored on the new server where the web site will be hosted. This content database works in conjuction with the [VESHTER Baseline database] (../../src/default/sql/base). 

### Package
_Note:_ For general VESHTER software documentation, [click here] (../)
