<?php
define( 'DB_NAME', 'database_name_here' );
define( 'DB_USER', 'username_here' );
define( 'DB_PASSWORD', 'password_here' );
define( 'DB_HOST', 'localhost' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
define( 'WP_DEBUG_DISPLAY', false );

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
