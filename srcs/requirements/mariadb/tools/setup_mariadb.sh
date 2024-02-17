#!/bin/bash
service mariadb start
sleep 5
if ! mysql -e "SELECT user FROM mysql.user WHERE user='$DB_USER'" | grep "$DB_USER"; then
    mysql -e "CREATE USER '$DB_USER'@'%' IDENTIFIED BY '$DB_PASSWD';"
fi
if ! mysql -e "USE $DB_NAME"; then
    mysql -e "CREATE DATABASE $DB_NAME;"
fi
mysql -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';"
mysql -e "FLUSH PRIVILEGES;"
service mariadb stop
mysqld_safe
