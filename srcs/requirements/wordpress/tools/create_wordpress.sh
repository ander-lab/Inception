#!/bin/bash




if [ ! -f "/var/www/html/wordpress/wp_configured" ]; then
	echo PUTAAA
	mv /wordpress /var/www/html
	cd /var/www/html/wordpress
	#mv wp-config-sample.php wp-config.php

	sed -i "s/localhost/mariadb/g" /var/www/html/wordpress/wp-config.php
	sed -i "s/database_name_here/$DB_NAME/g" /var/www/html/wordpress/wp-config.php
	sed -i "s/username_here/$DB_USER/g" 	 /var/www/html/wordpress/wp-config.php
	sed -i "s/password_here/$DB_PASSWORD/g"  /var/www/html/wordpress/wp-config.php
	wp core install --url=localhost --title="ajimenez" --admin_user=wpcli --admin_password=wpcli --admin_email=info@wp-cli.org --allow-root
	touch wp_configured
fi

mkdir -p /run/php/
php-fpm7.4 --nodaemonize
