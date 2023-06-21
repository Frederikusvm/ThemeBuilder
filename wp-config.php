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
define( 'DB_NAME', 'wordpress' );

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
define( 'AUTH_KEY',         'ZQciqVNeUO4ezi9;*b})!&mBVv SSgjO7+: j1,UyT#GKAOO}US:fk5>~-qzQ/dN' );
define( 'SECURE_AUTH_KEY',  'vQIU0,sWYww@l5queY=Cj;mT,#Q68f T~uM .8r,<R,zz].taum3aO|ovu;M7DvM' );
define( 'LOGGED_IN_KEY',    '7>._eQ/:QShg3mkJ+E[{e0=NNbK/i`&RzBTD4wXRfyuF]Z$`STw/[~{FZO%,gaQt' );
define( 'NONCE_KEY',        '40o~}/(Icxx~v>z>zSNZS>C5p[uTfD&$<9n<HGvL??;9bo.qC=c8q1})mo2023l?' );
define( 'AUTH_SALT',        ',47}Ia4&8j{KY_(hB)@jns;G]!(C2F![SodY *l):Ad.I7h)Q ;<0EM_62gRmHus' );
define( 'SECURE_AUTH_SALT', '*nxn0MFj2x/jF_=QyiOA`Al%K=  Fxgd4y_Em*pc2N!5|SbA|cO0bq rI7WkYN>*' );
define( 'LOGGED_IN_SALT',   '1Wpe|(xxdaVnPs76&4c_/o dDHBHXojy%u6n?mH#{?tM<neD!Z37OowNEGQ_Qzdf' );
define( 'NONCE_SALT',       ';~}v{#e$CXMN}TLydl*zYnJ;tJUI}Us?>+p1st=Mgd<pyfz%tCaTnbKo/kg}x{Qu' );

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
