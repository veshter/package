# $Id: createinstallscript.sh,v 1.1 2010-04-09 00:04:51 dkolev Exp $

echo Cleaning up directory...
pwd 
rm -f overall.sql

echo Generating new combined SQL file...
cat *.sql > overall.sql

echo Done!

# Changelog:
# $Log: createinstallscript.sh,v $
# Revision 1.1  2010-04-09 00:04:51  dkolev
# Move
#
# Revision 1.1  2010-04-04 02:03:50  dkolev
# *** empty log message ***
#
# Revision 1.3  2009-04-04 10:59:01  dkolev
# *** empty log message ***
#
# Revision 1.1  2009-03-21 23:15:14  dkolev
# *** empty log message ***
#
# Revision 1.1  2009-03-21 23:10:52  dkolev
# Moving from installers project
#
# Revision 1.3  2009-01-07 21:42:36  dkolev
# Added CVS commenting
#
