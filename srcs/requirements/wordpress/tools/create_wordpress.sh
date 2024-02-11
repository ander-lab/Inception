#!/bin/bash

mv /wordpress /var/www/html

sed -i "s/database_name_here/$DB_NAME/g" /var/www/html/wordpress/wp-config.php
sed -i "s/username_here/$DB_USER/g" 	 /var/www/html/wordpress/wp-config.php
sed -i "s/password_here/$DB_PASSWORD/g"  /var/www/html/wordpress/wp-config.php

mkdir -p /run/php/
php-fpm7.4 --nodaemonize
