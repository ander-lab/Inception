#!/bin/bash


if [ ! -f "/var/www/html/wordpress/wp-config.php" ]; then
	wp core download --allow-root
	wp config create --allow-root \
		--path="/var/www/html/wordpress" --allow-root\
		--dbname=$DB_NAME \
		--dbuser=$DB_USER \
		--dbpass=$DB_PASSWORD \
		--dbhost=127.0.0.1 \
		--locale=es_ES


	wp core install     --path="/var/www/html/wordpress" --allow-root \
						--title="INCEPTION" \
						--url=$DOMAIN_NAME \
						--title="INCEPTION" \
						--admin_user=$WP_ADMIN_USER \
						--admin_password=$WP_ADMIN_PASSWORD \
						--admin_email=$WP_ADMIN_EMAIL
	# wp option home value
	# wp option 
	wp user create      --path="/var/www/html/wordpress" --allow-root \
						$WP_USER $WP_EMAIL \
						--user_pass=$WP_USER_PASS \
						--role=author

fi


mkdir -p /run/php/
php-fpm7.4 --nodaemonize
