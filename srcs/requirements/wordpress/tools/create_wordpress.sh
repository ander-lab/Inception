#!/bin/bash


#while ! mariadb -h$MYSQL_HOST -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_NAME --silent; do
#	echo "[INFO] waiting for database..."
#	sleep 1;
#done
function config_wp_php {
  cat <<EOF > wp-config.php
  <?php
  define( 'DB_NAME', '$MYSQL_NAME' );
  define( 'DB_USER', '$MYSQL_USER' );
  define( 'DB_PASSWORD', '$MYSQL_PASSWORD' );
  define( 'DB_HOST', 'localhost' );
  define( 'DB_CHARSET', 'utf8' );
  define( 'DB_COLLATE', '' );
  define('AUTH_KEY',         'Wp+QMX^nx0 RpAh$~V8d}Eo,y[Eu__co2]gd>-TE@*g^vdo!oK#.vTz$iQ){YIPm');
  define('SECURE_AUTH_KEY',  'Bo@PisyKHj(745KS^.w~sH0W85|F|FNMIOMWv~~cTUp0}1=(hR7xx8l)4@5>4G5E');
  define('LOGGED_IN_KEY',    '[c&w@$w|1//[D_iZ0 ,^<h* L%xb|3{fVL8[s`NJm&i#HSrXAuPL|aCLFPMNck[V');
  define('NONCE_KEY',        'tm;.(;@&jGl}JY)2UCl_|Y|ytKV V|-r=^u^:v{:*~g})rvsJe(vdoe._g`U3^o,');
  define('AUTH_SALT',        'z5?S+TY[PNiJcE`7)Dj(Y(3]cdx:<]b7{R);ieyF-|yf;PwO89FUhh)xxyZylu]k');
  define('SECURE_AUTH_SALT', ')*KX&O3?%br|O[|hnlGN/<q|B)C^^kiK$mpM0LC3k8c;oy{+=DIj|Vfdl*9t0wwf');
  define('LOGGED_IN_SALT',   '&SLX_J{CLP%lQmu~H</(l0%K!Ei[PR1;2C>L++1,E-z/:H*f/)5@Fn72NHX<wrPU');
  define('NONCE_SALT',       'z,MP$X)<kj+e4wyQ*0R3}:>/h 5c*mr3-~[(+M(6(7||H_zq{sSgn_zWfyJsz`4[');
  $table_prefix = 'wp_';
  define( 'WP_DEBUG', false );
  if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
  }
  require_once ABSPATH . 'wp-settings.php';
EOF
}


cat wp-config.php
if [ -f ./wp-config.php ]
then 
	echo "Wordpress already installed"
else
	echo "-----------------------------\n\n\n"
	pwd
	ls
	echo "-----------------------------\n\n\n"
	config_wp_php


	


	#wp core download --allow-root

#	wp config create --allow-root \
#		--path="/var/www/html/wordpress" --allow-root\
#		--dbname=$MYSQL_NAME \
#		--dbuser=$MYSQL_USER \
#		--dbpass=$MYSQL_PASSWORD \
#		--dbhost=127.0.0.1 \
#		--locale=es_ES
#
#
#	wp core install     --path="/var/www/html/wordpress" --allow-root \
#						--title="INCEPTION" \
#						--url=$DOMAIN_NAME \
#						--title="INCEPTION" \
#						--admin_user=$WP_ADMIN_USER \
#						--admin_password=$WP_ADMIN_PASSWORD \
#						--admin_email=$WP_ADMIN_EMAIL
#	# wp option home value
#	# wp option 
#	wp user create      --path="/var/www/html/wordpress" --allow-root \
#						$WP_USER $WP_EMAIL \
#						--user_pass=$WP_USER_PASS \
#						--role=author
#
fi

mkdir -p /run/php/
php-fpm7.4 --nodaemonize
