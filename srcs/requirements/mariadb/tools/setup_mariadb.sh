#!/bin/bash

#/etc/init.d/mariadb restart
service mariadb start
sleep 4

mysql -e "CREATE DATABASE $MYSQL_NAME;"
mysql -e "CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY 'MYSQL_PASSWD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$MYSQL_NAME'@'%';"
mysql -e "FLUSH PRIVILEGES;"
service mariadb stop

mysqld_safe

#tail -f /dev/null
