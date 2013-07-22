REM $Id: createinstallscript.bat,v 1.1 2010-04-09 00:04:51 dkolev Exp $

@echo off

echo Cleaning up directory...
pwd 
del overall.sql

echo Generating new combined SQL file...
type *.sql > overall.sql.txt

rename overall.sql.txt overall.sql

echo Done!

pause

REM Changelog:
REM $Log: createinstallscript.bat,v $
REM Revision 1.1  2010-04-09 00:04:51  dkolev
REM Move
REM
REM Revision 1.1  2010-04-04 02:03:50  dkolev
REM *** empty log message ***
REM
REM Revision 1.2  2009-11-24 03:59:48  dkolev
REM Fixed a bug cause by type in windows
REM
REM Revision 1.1  2009-11-24 03:07:42  dkolev
REM Initial import
REM
