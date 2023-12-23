#!/bin/bash

/etc/init.d/mariadb restart
sleep 4

DB_NAME="ander_db"
DB_USER="curro"
DB_USER_PASSWD="1234567890"

mysql -e "CREATE DATABASE $DB_NAME;"
mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_USER_PASSWD';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$DB_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
