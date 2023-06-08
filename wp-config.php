<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'themebuilder' );

/** Database username */
define( 'DB_USER', 'bit_academy' );

/** Database password */
define( 'DB_PASSWORD', 'bit_academy' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'TE3jql.|~n.oOd`i8P^?HS}:5sR+ya;JwbnJQW%Oj.T~95i2:wZyvFJFht-pj<l{' );
define( 'SECURE_AUTH_KEY',  '*1h+l>|k=,cZl?2.q0jJ>i<]8@KjYkb5R1QVit/_PMpKPe5:9UV*+i1<F<PSuyqh' );
define( 'LOGGED_IN_KEY',    'G^O}jV`Nx&X)j6?*@~<b,tL-A|W]kKH+rwqy_9R= -P4ihf#JQY8B7rs.m_Jno_4' );
define( 'NONCE_KEY',        'eK0Z+l!e)(fF[:u].,QpbWD^R0QUk!LW>}T0293!-ZwQdfk{q@wCcX,XRgQb{i>3' );
define( 'AUTH_SALT',        '2hr&0~ 0iqEt}t%7(b1:|Z)+w8806DFU EWGtjq_Qp~q`Fe6P{{<oL5frLdN&}kS' );
define( 'SECURE_AUTH_SALT', 'Bh`L9,Y]wL1wrmzZZ(^UbK)u.-t!(j|j|!=xwG~E~k7?+NHwS(H;%$$F/4o5HKM;' );
define( 'LOGGED_IN_SALT',   '$w5g#C}G9v[8$XGTeL`x1eo-4@3#P7v?tmQH}r66rT<mo5i{J5P/o4dxxB^45h4V' );
define( 'NONCE_SALT',       '4AuH9o3Y4y*N[kO*}vE0#[Z3!debba%SSnn5;qI-O0lH*pwM6rg?ZI~~}*/WbZm+' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
