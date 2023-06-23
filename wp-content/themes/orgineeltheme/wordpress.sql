-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2023 at 09:19 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Een WordPress commentator', 'wapuu@wordpress.example', 'https://nl.wordpress.org/', '', '2023-05-25 13:08:49', '2023-05-25 12:08:49', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'Themebuilder', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'frederikvanmiert@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '1', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'orgineeltheme', 'yes'),
(41, 'stylesheet', 'orgineeltheme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '18', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1700568528', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'nl_NL_formal', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:165:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Meest recente berichten</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:228:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recente reacties</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archief</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:152:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorieën</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1687507729;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1687521884;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1687522129;a:6:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687522425;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1687524087;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verificatie mislukt.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Not Found\";}}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686828719;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(137, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:72:\"https://downloads.wordpress.org/release/nl_NL_formal/wordpress-6.2.2.zip\";s:6:\"locale\";s:12:\"nl_NL_formal\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:72:\"https://downloads.wordpress.org/release/nl_NL_formal/wordpress-6.2.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1687504276;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(170, '_transient_health-check-site-status-result', '{\"good\":\"18\",\"recommended\":\"4\",\"critical\":\"1\"}', 'yes'),
(187, 'current_theme', 'Blank Theme V2', 'yes'),
(188, 'theme_mods_orgineeltheme', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686828733;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(189, 'theme_switched', '', 'yes'),
(191, 'theme_mods_twentytwentyone', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1686828740;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(193, 'new_admin_email', 'frederikvanmiert@gmail.com', 'yes'),
(205, 'recently_activated', 'a:0:{}', 'yes'),
(208, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687504279;s:7:\"checked\";a:4:{s:13:\"orgineeltheme\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(211, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(226, '_site_transient_timeout_browser_4edabc1a1cab3520545d4bc774f26cd6', '1687860584', 'no'),
(227, '_site_transient_browser_4edabc1a1cab3520545d4bc774f26cd6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(313, '_site_transient_timeout_theme_roots', '1687506078', 'no'),
(314, '_site_transient_theme_roots', 'a:4:{s:13:\"orgineeltheme\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(315, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1687504279;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.1\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1687341229:1'),
(4, 7, '_edit_lock', '1687255706:1'),
(5, 1, '_edit_lock', '1687355660:1'),
(8, 12, '_edit_lock', '1687356672:1'),
(13, 18, '_edit_lock', '1687355315:1'),
(20, 25, '_edit_lock', '1687355326:1'),
(25, 28, '_edit_lock', '1687355709:1'),
(26, 28, '_customize_restore_dismissed', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-05-25 13:08:49', '2023-05-25 12:08:49', '<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Tips voor het opstarten van een succesvolle blog', 'Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog.', 'publish', 'open', 'open', '', 'hallo-wereld', '', '', '2023-06-21 14:34:50', '2023-06-21 13:34:50', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-05-25 13:08:49', '2023-05-25 12:08:49', '<!-- wp:paragraph -->\n<p>Welkom bij MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welkom op de officiële website van MijnBedrijf. Wij zijn een toonaangevend bedrijf dat gespecialiseerd is in het leveren van hoogwaardige producten en uitstekende diensten aan onze gewaardeerde klanten. Met een schat aan ervaring en een team van deskundige professionals streven we ernaar om aan de uiteenlopende behoeften van onze klanten te voldoen. Of u nu op zoek bent naar kwalitatieve goederen of op maat gemaakte oplossingen, wij staan voor u klaar om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf geloven we sterk in klanttevredenheid. We begrijpen dat elke klant unieke vereisten en doelen heeft, en daarom werken we nauw met u samen om op maat gemaakte oplossingen te bieden die aansluiten bij uw specifieke behoeften. Ons assortiment omvat een breed scala aan producten en diensten, variërend van hoogwaardige goederen tot gepersonaliseerde servicepakketten. Of het nu gaat om consultancy, productlevering, installatie of ondersteuning na verkoop, u kunt rekenen op onze expertise en toewijding om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'publish', 'closed', 'open', '', 'home', '', '', '2023-06-21 10:50:32', '2023-06-21 09:50:32', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-05-25 13:08:49', '2023-05-25 12:08:49', '<!-- wp:heading --><h2>Wie zijn we</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Ons site-adres is: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Reacties</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als bezoekers reacties achterlaten op de site, verzamelen we de data getoond in het reactieformulier en ook het IP-adres van de bezoeker en de browser gebruikersagent string om spam opsporing te helpen.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Een geanonimiseerde string, gemaakt op basis van uw e-mailadres (dit wordt ook een hash genoemd) kan worden gestuurd naar de Gravatar service indien u dit gebruikt. De privacybeleidspagina kunt u hier vinden: https://automattic.com/privacy/. Nadat uw reactie is goedgekeurd, is uw profielfoto publiekelijk zichtbaar in de context van uw reactie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als u een geregistreerde gebruiker bent en afbeeldingen naar de site upload, moet u voorkomen dat uw afbeeldingen upload met daarin EXIF GPS locatie gegevens. Bezoekers van de site kunnen de afbeeldingen van de site downloaden en de locatiegegevens inzien.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer u een reactie achterlaat op onze site, kunt u aangeven of we uw naam, uw e-mailadres en site in een cookie opgeslagen mogen worden. Dit doen we voor uw gemak zodat u deze gegevens niet opnieuw hoeft in te vullen voor een nieuwe reactie. Deze cookies zijn een jaar lang geldig.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Indien u onze inlogpagina bezoekt, slaan we een tijdelijke cookie op om te controleren of uw browser cookies accepteert. Deze cookie bevat geen persoonlijke gegevens en wordt verwijderd zodra u uw browser sluit.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Zodra u inlogt, zullen we enkele cookies bewaren in verband met uw login informatie en schermweergave opties. Login cookies zijn 2 dagen geldig en cookies voor schermweergave opties 1 jaar. Als u &quot;Herinner mij&quot; selecteert, wordt uw login 2 weken bewaart. Zodra u uitlogt van uw account, worden login cookies verwijderd.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Wanneer u een bericht wijzigt of publiceert wordt een aanvullende cookie door uw browser opgeslagen. Deze cookie bevat geen persoonlijke data en heeft enkel het post ID van het artikel wat u hebt bewerkt in zich. Deze cookie is na een dag verlopen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ingesloten inhoud van andere sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Berichten op deze site kunnen ingesloten (embedded) inhoud tonen. Bijvoorbeeld video\'s, afbeeldingen, berichten). Ingesloten inhoud van andere sites gedraagd zich exact hetzelfde als alsof de bezoeker deze andere heeft website bezocht.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Deze sites kunnen gegevens over u verzamelen, cookies gebruiken, tracking van derde partijen insluiten en uw interactie met deze ingesloten inhoud monitoren, inclusief de interactie met ingesloten inhoud als u een account hebt en ingelogd bent op die site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Met wie we uw data delen</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als u een wachtwoord reset aanvraagt, wordt uw IP-adres opgenomen in de reset e-mail.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Hoe lang we uw data bewaren</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Wanneer u een reactie achterlaat dan wordt die reactie en de metadata van die reactie voor altijd bewaard. Op deze manier kunnen we vervolgreacties automatisch herkennen en goedkeuren in plaats van dat we ze moeten modereren.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Voor gebruikers die geregistreerd op onze site (indien van toepassing), bewaren we ook persoonlijke informatie in hun gebruikersprofiel. Alle gebruikers kunnen hun persoonlijke informatie bekijken, wijzigen of verwijderen op ieder moment (de gebruikersnaam kan niet gewijzigd worden). Site beheerders kunnen deze informatie ook bekijken en wijzigen.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Welke rechten u hebt over uw data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Als u een account hebt op deze site of u heeft reacties achter gelaten, kunt u verzoeken om een exportbestand van uw persoonlijke data die we van u hebben, inclusief alle data die u ons opgegeven hebt. U kunt ook verzoeken dat we enige persoonlijke data die we van u hebben verwijderen. Dit bevat geen data die we verplicht moeten bewaren in verband met administratieve, wettelijke of beveiligings doeleinden.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Voorgestelde tekst: </strong>Reacties van bezoekers kunnen door een geautomatiseerde spam detectie service geleid worden.</p><!-- /wp:paragraph -->', 'Privacybeleid', '', 'draft', 'closed', 'open', '', 'privacybeleid', '', '', '2023-05-25 13:08:49', '2023-05-25 12:08:49', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-05-25 13:43:21', '2023-05-25 12:43:21', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentythree', '', '', '2023-05-25 13:43:21', '2023-05-25 12:43:21', '', 0, 'http://localhost/wordpress/2023/05/25/wp-global-styles-twentytwentythree/', 0, 'wp_global_styles', '', 0),
(6, 1, '2023-06-15 12:59:51', '2023-06-15 11:59:51', '<!-- wp:paragraph -->\n<p>Dit is een voorbeeldpagina. Het is anders dan een blog bericht omdat het op één plek blijft en tevoorschijn komt in uw site navigatie (in de meeste thema\'s). De meeste mensen starten met een Over pagina dat hen voorstelt aan potentiële site bezoekers. Het zou iets als dit kunnen zeggen:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>Hoi daar! Ik ben een fietskoerier in het dagelijks leven en een beginnende acteur in de avonduren. Ik leef in Los Angeles, heb een leuke hond genaamd Jack en ik hou van piña coladas. (En overvallen worden door de regen.)</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...of zoiets als dit:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>AMOGGGUUSUUUSSSSS</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><!-- wp:paragraph -->\n<p>De XYZ Doohickey Company is opgericht in 1971 en heeft sindsdien kwalitatieve doohickeys aan het publiek geleverd. Gevestigd in Gotham City, XYZ heeft meer dan 2000 mensen in dienst en doen allemaal fantastische dingen voor de community in Gotham.</p>\n<!-- /wp:paragraph --></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Als nieuwe WordPress gebruiker kunt u naar <a href=\"http://localhost/wordpress/wp-admin/\">uw dashboard</a> gaan om deze pagina te verwijderen en nieuwe pagina\'s toe te voegen voor uw inhoud. Veel plezier!</p>\n<!-- /wp:paragraph -->', 'Voorbeeld pagina', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-15 12:59:51', '2023-06-15 11:59:51', '', 2, 'http://localhost/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-06-15 13:05:48', '2023-06-15 12:05:48', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons', '', 'publish', 'closed', 'closed', '', 'over-ons', '', '', '2023-06-20 11:10:43', '2023-06-20 10:10:43', '', 0, 'http://localhost/wordpress/?page_id=7', 0, 'page', '', 0),
(8, 1, '2023-06-15 13:05:48', '2023-06-15 12:05:48', '<!-- wp:paragraph -->\n<p>Pagina: Over ons pagina</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-15 13:05:48', '2023-06-15 12:05:48', '', 7, 'http://localhost/wordpress/?p=8', 0, 'revision', '', 0),
(10, 1, '2023-06-15 13:37:23', '2023-06-15 12:37:23', '<!-- wp:paragraph -->\n<p>Welkom bij MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welkom op de officiële website van MijnBedrijf. Wij zijn een toonaangevend bedrijf dat gespecialiseerd is in het leveren van hoogwaardige producten en uitstekende diensten aan onze gewaardeerde klanten. Met een schat aan ervaring en een team van deskundige professionals streven we ernaar om aan de uiteenlopende behoeften van onze klanten te voldoen. Of u nu op zoek bent naar kwalitatieve goederen of op maat gemaakte oplossingen, wij staan voor u klaar om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf geloven we sterk in klanttevredenheid. We begrijpen dat elke klant unieke vereisten en doelen heeft, en daarom werken we nauw met u samen om op maat gemaakte oplossingen te bieden die aansluiten bij uw specifieke behoeften. Ons assortiment omvat een breed scala aan producten en diensten, variërend van hoogwaardige goederen tot gepersonaliseerde servicepakketten. Of het nu gaat om consultancy, productlevering, installatie of ondersteuning na verkoop, u kunt rekenen op onze expertise en toewijding om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-15 13:37:23', '2023-06-15 12:37:23', '', 2, 'http://localhost/wordpress/?p=10', 0, 'revision', '', 0),
(11, 1, '2023-06-15 13:38:15', '2023-06-15 12:38:15', '<!-- wp:paragraph -->\n<p>Post 1<br>Titel: Tips voor het opstarten van een succesvolle blog</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Post 1', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-15 13:38:15', '2023-06-15 12:38:15', '', 1, 'http://localhost/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2023-06-15 13:38:47', '2023-06-15 12:38:47', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', 'Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. ', 'publish', 'open', 'open', '', 'de-voordelen-van-regelmatige-lichaamsbeweging', '', '', '2023-06-21 15:13:30', '2023-06-21 14:13:30', '', 0, 'http://localhost/wordpress/?p=12', 0, 'post', '', 0),
(13, 1, '2023-06-15 13:38:47', '2023-06-15 12:38:47', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-15 13:38:47', '2023-06-15 12:38:47', '', 12, 'http://localhost/wordpress/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-06-15 13:39:05', '2023-06-15 12:39:05', '<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Tips voor het opstarten van een succesvolle blog', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-15 13:39:05', '2023-06-15 12:39:05', '', 1, 'http://localhost/wordpress/?p=14', 0, 'revision', '', 0),
(15, 1, '2023-06-20 11:10:43', '2023-06-20 10:10:43', '<!-- wp:paragraph {\"fontSize\":\"medium\"} -->\n<p class=\"has-medium-font-size\">Over MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf hebben we een passie voor het leveren van uitstekende producten en diensten aan onze klanten. Sinds onze oprichting in 2005 hebben we ons toegewijd aan het voldoen aan de behoeften en verwachtingen van onze klanten. Ons ervaren team van professionals beschikt over diepgaande expertise in verschillende sectoren en werkt samen om hoogwaardige oplossingen te bieden. We geloven in het opbouwen van langdurige relaties met onze klanten, gebaseerd op vertrouwen, integriteit en wederzijds succes.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf streven we naar innovatie en continue verbetering. We volgen de laatste ontwikkelingen in onze branche en passen geavanceerde technologieën en best practices toe om onze producten en diensten voortdurend te verbeteren. We begrijpen dat elke klant unieke uitdagingen heeft, en daarom bieden we op maat gemaakte oplossingen die aansluiten bij hun specifieke behoeften. Onze focus ligt op het leveren van kwaliteit, betrouwbaarheid en waarde aan elke klant die we bedienen. We streven ernaar om niet alleen aan de verwachtingen te voldoen, maar deze te overtreffen.</p>\n<!-- /wp:paragraph -->', 'Over ons', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2023-06-20 11:10:43', '2023-06-20 10:10:43', '', 7, 'http://localhost/wordpress/?p=15', 0, 'revision', '', 0),
(16, 1, '2023-06-21 10:50:25', '2023-06-21 09:50:25', '<!-- wp:paragraph -->\n<p>Welkom bij MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welkom op de officiële website van MijnBedrijf. Wij zijn een toonaangevend bedrijf dat gespecialiseerd is in het leveren van hoogwaardige producten en uitstekende diensten aan onze gewaardeerde klanten. Met een schat aan ervaring en een team van deskundige professionals streven we ernaar om aan de uiteenlopende behoeften van onze klanten te voldoen. Of u nu op zoek bent naar kwalitatieve goederen of op maat gemaakte oplossingen, wij staan voor u klaar om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf geloven we sterk in klanttevredenheid. We begrijpen dat elke klant unieke vereisten en doelen heeft, en daarom werken we nauw met u samen om op maat gemaakte oplossingen te bieden die aansluiten bij uw specifieke behoeften. Ons assortiment omvat een breed scala aan producten en diensten, variërend van hoogwaardige goederen tot gepersonaliseerde servicepakketten. Of het nu gaat om consultancy, productlevering, installatie of ondersteuning na verkoop, u kunt rekenen op onze expertise en toewijding om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-21 10:50:25', '2023-06-21 09:50:25', '', 2, 'http://localhost/wordpress/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-06-21 10:50:32', '2023-06-21 09:50:32', '<!-- wp:paragraph -->\n<p>Welkom bij MijnBedrijf</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Welkom op de officiële website van MijnBedrijf. Wij zijn een toonaangevend bedrijf dat gespecialiseerd is in het leveren van hoogwaardige producten en uitstekende diensten aan onze gewaardeerde klanten. Met een schat aan ervaring en een team van deskundige professionals streven we ernaar om aan de uiteenlopende behoeften van onze klanten te voldoen. Of u nu op zoek bent naar kwalitatieve goederen of op maat gemaakte oplossingen, wij staan voor u klaar om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Bij MijnBedrijf geloven we sterk in klanttevredenheid. We begrijpen dat elke klant unieke vereisten en doelen heeft, en daarom werken we nauw met u samen om op maat gemaakte oplossingen te bieden die aansluiten bij uw specifieke behoeften. Ons assortiment omvat een breed scala aan producten en diensten, variërend van hoogwaardige goederen tot gepersonaliseerde servicepakketten. Of het nu gaat om consultancy, productlevering, installatie of ondersteuning na verkoop, u kunt rekenen op onze expertise en toewijding om aan uw verwachtingen te voldoen.</p>\n<!-- /wp:paragraph -->', 'Homepage', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-06-21 10:50:32', '2023-06-21 09:50:32', '', 2, 'http://localhost/wordpress/?p=17', 0, 'revision', '', 0),
(18, 1, '2023-06-21 10:54:43', '2023-06-21 09:54:43', '', 'Posts', '', 'publish', 'closed', 'closed', '', 'posts', '', '', '2023-06-21 14:50:26', '2023-06-21 13:50:26', '', 0, 'http://localhost/wordpress/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-06-21 10:54:43', '2023-06-21 09:54:43', '', 'Posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-06-21 10:54:43', '2023-06-21 09:54:43', '', 18, 'http://localhost/wordpress/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-06-21 13:16:13', '2023-06-21 12:16:13', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', 'Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het houdt ons fit en energiek en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging positieve effecten op ons humeur en mentaal welzijn.', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-21 13:16:13', '2023-06-21 12:16:13', '', 12, 'http://localhost/wordpress/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-06-21 14:34:28', '2023-06-21 13:34:28', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', 'Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. ', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-21 14:34:28', '2023-06-21 13:34:28', '', 12, 'http://localhost/wordpress/?p=21', 0, 'revision', '', 0),
(22, 1, '2023-06-21 14:34:50', '2023-06-21 13:34:50', '<!-- wp:paragraph -->\n<p>Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog. Ten eerste is het belangrijk om uw doelgroep te begrijpen en te bepalen waarover u wilt schrijven. Kies een niche waarin u gepassioneerd bent en waarin u waardevolle kennis kunt delen. Dit zal u helpen om een gericht publiek aan te trekken en autoriteit op te bouwen in uw vakgebied.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Daarnaast is het essentieel om consistente en kwalitatieve inhoud te leveren. Maak een contentstrategie en plan regelmatige berichten om uw lezers betrokken te houden. Zorg ervoor dat uw inhoud goed geschreven, informatief en boeiend is. Voeg visuele elementen toe, zoals afbeeldingen en video\'s, om de aantrekkelijkheid te vergroten. Vergeet ook niet om te communiceren met uw lezers via reacties en sociale media. Het opbouwen van een betrokken gemeenschap zal uw blog helpen groeien en uw bereik vergroten.</p>\n<!-- /wp:paragraph -->', 'Tips voor het opstarten van een succesvolle blog', 'Het opstarten van een blog kan een spannende onderneming zijn, maar het kan ook overweldigend lijken. Hier zijn enkele tips om u op weg te helpen naar het opbouwen van een succesvolle blog.', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-06-21 14:34:50', '2023-06-21 13:34:50', '', 1, 'http://localhost/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2023-06-21 14:49:55', '2023-06-21 13:49:55', '<!-- wp:post-excerpt /-->', 'Posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-06-21 14:49:55', '2023-06-21 13:49:55', '', 18, 'http://localhost/wordpress/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-06-21 14:50:26', '2023-06-21 13:50:26', '', 'Posts', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-06-21 14:50:26', '2023-06-21 13:50:26', '', 18, 'http://localhost/wordpress/?p=24', 0, 'revision', '', 0),
(25, 1, '2023-06-21 14:51:07', '0000-00-00 00:00:00', '', 'Automatische concepten', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-06-21 14:51:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=25', 0, 'post', '', 0),
(26, 1, '2023-06-21 14:51:32', '2023-06-21 13:51:32', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:read-more /-->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:read-more /-->', 'De voordelen van regelmatige lichaamsbeweging', 'Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. ', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-21 14:51:32', '2023-06-21 13:51:32', '', 12, 'http://localhost/wordpress/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-06-21 14:51:51', '2023-06-21 13:51:51', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:read-more /-->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', 'Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. ', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-21 14:51:51', '2023-06-21 13:51:51', '', 12, 'http://localhost/wordpress/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-06-21 14:55:09', '0000-00-00 00:00:00', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-06-21 13:55:09\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9b37172d-c952-46a1-ae9b-068d409e288c', '', '', '2023-06-21 14:55:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2023-06-21 15:13:30', '2023-06-21 14:13:30', '<!-- wp:paragraph -->\n<p>Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. Het helpt ons om fit en energiek te blijven, bevordert een gezond gewicht en versterkt onze spieren en botten. Bovendien heeft lichaamsbeweging aantoonbaar positieve effecten op ons humeur en mentaal welzijn. Het vermindert stress, verbetert de slaapkwaliteit en kan zelfs helpen bij het verminderen van symptomen van depressie en angst.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Naast de fysieke en mentale voordelen kan regelmatige lichaamsbeweging ook de algehele levenskwaliteit verbeteren. Het vergroot ons uithoudingsvermogen en versterkt ons immuunsysteem, waardoor we minder vatbaar zijn voor ziektes en aandoeningen. Bovendien kan het de cognitieve functie verbeteren, het geheugen en de concentratie stimuleren. Het is belangrijk om een lichaamsbewegingsroutine te vinden die bij u past, of het nu gaat om wandelen, hardlopen, fietsen, zwemmen of andere activiteiten die u leuk vindt. Het belangrijkste is om consistent te zijn en geleidelijk aan uw fitnessniveau op te bouwen.</p>\n<!-- /wp:paragraph -->', 'De voordelen van regelmatige lichaamsbeweging', 'Regelmatige lichaamsbeweging heeft talloze voordelen voor zowel onze fysieke als mentale gezondheid. ', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2023-06-21 15:13:30', '2023-06-21 14:13:30', '', 12, 'http://localhost/wordpress/?p=29', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Geen categorie', 'geen-categorie', 0),
(2, 'twentytwentythree', 'twentytwentythree', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(12, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ARP1956'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"4156c9b0eb7c31b09771906ccf5f3cc18f79c54579c2540a5bddfa5a3667385b\";a:4:{s:10:\"expiration\";i:1687000911;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43\";s:5:\"login\";i:1686828111;}s:64:\"bc8a2a9fce78a2272647340901a31b9d0d50f8f13ace05b86bc31976905bbb1a\";a:4:{s:10:\"expiration\";i:1688038197;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:129:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.43\";s:5:\"login\";i:1686828597;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '9'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-site\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2023-06-21T13:51:17.950Z\";s:14:\"core/edit-post\";a:4:{s:26:\"isComplementaryAreaVisible\";b:0;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:12:\"post-excerpt\";i:2;s:16:\"discussion-panel\";i:3;s:15:\"page-attributes\";}s:10:\"editorMode\";s:6:\"visual\";}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ARP1956', '$P$BO3Qs7dkpddWoEP8uNv0XtkYkzxg911', 'arp1956', 'frederikvanmiert@gmail.com', 'http://localhost/wordpress', '2023-05-25 12:08:48', '1686828089:$P$BuxZuUmNP1JsNk3Lg0H82Dnfj3m.RP0', 0, 'ARP1956');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
