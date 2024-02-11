#!/bin/bash

#/etc/init.d/mariadb restart
service mariadb start
sleep 4

mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY 'MYSQL_PASSWD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_NAME'@'%';"
mysql -e "FLUSH PRIVILEGES;"
service mariadb stop

mysqld_safe

#exec /usr/bin/mysqld --user=mysql --console
#tail -f /dev/null
