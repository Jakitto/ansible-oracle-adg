#!/bin/bash

##
## Author: Jakit
## Date: 2019/05/08
##

su - oracle

sqlplus -s "/ as sysdba" <<EOF
alter database open;
alter database recover managed standby database disconnect from session;
exit;
EOF

exit
