-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Paź 2023, 19:40
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `gricklo_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Komentator WordPressa', 'wapuu@wordpress.example', 'https://pl.wordpress.org/', '', '2023-09-18 20:07:10', '2023-09-18 18:07:10', 'Cześć, to jest komentarz.\nAby zapoznać się z moderowaniem, edycją i usuwaniem komentarzy, należy odwiedzić ekran komentarzy w kokpicie.\nAwatary komentujących pochodzą z <a href=\"https://pl.gravatar.com/\">Gravatara</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/gricklo', 'yes'),
(2, 'home', 'http://localhost/gricklo', 'yes'),
(3, 'blogname', 'Gricklo', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'patrykplonka.op@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'Y-m-d', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:91:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'gricklo-theme/resources', 'yes'),
(41, 'stylesheet', 'gricklo-theme/resources', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '55853', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
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
(80, 'timezone_string', 'Europe/Warsaw', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1710612430', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '55853', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', '', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Ostatnie wpisy</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:232:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Najnowsze komentarze</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:145:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archiwa</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:149:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Kategorie</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:15:\"sidebar-primary\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:14:\"sidebar-footer\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:7:{i:1697220430;a:6:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697220435;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697220436;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1697221570;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1697479632;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1697566030;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(121, '_transient_wp_core_block_css_files', 'a:496:{i:0;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/editor-rtl.css\";i:1;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/editor-rtl.min.css\";i:2;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/editor.css\";i:3;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/editor.min.css\";i:4;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/style-rtl.css\";i:5;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/style-rtl.min.css\";i:6;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/style.css\";i:7;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/archives/style.min.css\";i:8;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/editor-rtl.css\";i:9;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/editor-rtl.min.css\";i:10;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/editor.css\";i:11;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/editor.min.css\";i:12;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/style-rtl.css\";i:13;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/style-rtl.min.css\";i:14;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/style.css\";i:15;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/style.min.css\";i:16;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/theme-rtl.css\";i:17;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/theme-rtl.min.css\";i:18;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/theme.css\";i:19;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/audio/theme.min.css\";i:20;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/editor-rtl.css\";i:21;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/editor-rtl.min.css\";i:22;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/editor.css\";i:23;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/editor.min.css\";i:24;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/style-rtl.css\";i:25;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/style-rtl.min.css\";i:26;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/style.css\";i:27;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/avatar/style.min.css\";i:28;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/block/editor-rtl.css\";i:29;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/block/editor-rtl.min.css\";i:30;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/block/editor.css\";i:31;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/block/editor.min.css\";i:32;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/editor-rtl.css\";i:33;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/editor-rtl.min.css\";i:34;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/editor.css\";i:35;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/editor.min.css\";i:36;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/style-rtl.css\";i:37;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/style-rtl.min.css\";i:38;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/style.css\";i:39;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/button/style.min.css\";i:40;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/editor-rtl.css\";i:41;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/editor-rtl.min.css\";i:42;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/editor.css\";i:43;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/editor.min.css\";i:44;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/style-rtl.css\";i:45;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/style-rtl.min.css\";i:46;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/style.css\";i:47;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/buttons/style.min.css\";i:48;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/calendar/style-rtl.css\";i:49;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/calendar/style-rtl.min.css\";i:50;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/calendar/style.css\";i:51;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/calendar/style.min.css\";i:52;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/editor-rtl.css\";i:53;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/editor-rtl.min.css\";i:54;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/editor.css\";i:55;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/editor.min.css\";i:56;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/style-rtl.css\";i:57;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/style-rtl.min.css\";i:58;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/style.css\";i:59;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/categories/style.min.css\";i:60;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/editor-rtl.css\";i:61;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/editor-rtl.min.css\";i:62;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/editor.css\";i:63;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/editor.min.css\";i:64;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/style-rtl.css\";i:65;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/style-rtl.min.css\";i:66;s:57:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/style.css\";i:67;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/style.min.css\";i:68;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/theme-rtl.css\";i:69;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/theme-rtl.min.css\";i:70;s:57:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/theme.css\";i:71;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/code/theme.min.css\";i:72;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/editor-rtl.css\";i:73;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/editor-rtl.min.css\";i:74;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/editor.css\";i:75;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/editor.min.css\";i:76;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/style-rtl.css\";i:77;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/style-rtl.min.css\";i:78;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/style.css\";i:79;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/columns/style.min.css\";i:80;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-content/style-rtl.css\";i:81;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-content/style-rtl.min.css\";i:82;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-content/style.css\";i:83;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-content/style.min.css\";i:84;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-template/style-rtl.css\";i:85;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-template/style-rtl.min.css\";i:86;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-template/style.css\";i:87;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comment-template/style.min.css\";i:88;s:85:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination-numbers/editor-rtl.css\";i:89;s:89:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination-numbers/editor-rtl.min.css\";i:90;s:81:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination-numbers/editor.css\";i:91;s:85:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination-numbers/editor.min.css\";i:92;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/editor-rtl.css\";i:93;s:81:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/editor-rtl.min.css\";i:94;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/editor.css\";i:95;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/editor.min.css\";i:96;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/style-rtl.css\";i:97;s:80:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/style-rtl.min.css\";i:98;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/style.css\";i:99;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-pagination/style.min.css\";i:100;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-title/editor-rtl.css\";i:101;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-title/editor-rtl.min.css\";i:102;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-title/editor.css\";i:103;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments-title/editor.min.css\";i:104;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/editor-rtl.css\";i:105;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/editor-rtl.min.css\";i:106;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/editor.css\";i:107;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/editor.min.css\";i:108;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/style-rtl.css\";i:109;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/style-rtl.min.css\";i:110;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/style.css\";i:111;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/comments/style.min.css\";i:112;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/editor-rtl.css\";i:113;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/editor-rtl.min.css\";i:114;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/editor.css\";i:115;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/editor.min.css\";i:116;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/style-rtl.css\";i:117;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/style-rtl.min.css\";i:118;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/style.css\";i:119;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/cover/style.min.css\";i:120;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/editor-rtl.css\";i:121;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/editor-rtl.min.css\";i:122;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/editor.css\";i:123;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/editor.min.css\";i:124;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/style-rtl.css\";i:125;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/style-rtl.min.css\";i:126;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/style.css\";i:127;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/details/style.min.css\";i:128;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/editor-rtl.css\";i:129;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/editor-rtl.min.css\";i:130;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/editor.css\";i:131;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/editor.min.css\";i:132;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/style-rtl.css\";i:133;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/style-rtl.min.css\";i:134;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/style.css\";i:135;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/style.min.css\";i:136;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/theme-rtl.css\";i:137;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/theme-rtl.min.css\";i:138;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/theme.css\";i:139;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/embed/theme.min.css\";i:140;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/editor-rtl.css\";i:141;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/editor-rtl.min.css\";i:142;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/editor.css\";i:143;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/editor.min.css\";i:144;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/style-rtl.css\";i:145;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/style-rtl.min.css\";i:146;s:57:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/style.css\";i:147;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/file/style.min.css\";i:148;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/footnotes/style-rtl.css\";i:149;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/footnotes/style-rtl.min.css\";i:150;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/footnotes/style.css\";i:151;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/footnotes/style.min.css\";i:152;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/freeform/editor-rtl.css\";i:153;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/freeform/editor-rtl.min.css\";i:154;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/freeform/editor.css\";i:155;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/freeform/editor.min.css\";i:156;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/editor-rtl.css\";i:157;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/editor-rtl.min.css\";i:158;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/editor.css\";i:159;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/editor.min.css\";i:160;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/style-rtl.css\";i:161;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/style-rtl.min.css\";i:162;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/style.css\";i:163;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/style.min.css\";i:164;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/theme-rtl.css\";i:165;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/theme-rtl.min.css\";i:166;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/theme.css\";i:167;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/gallery/theme.min.css\";i:168;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/editor-rtl.css\";i:169;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/editor-rtl.min.css\";i:170;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/editor.css\";i:171;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/editor.min.css\";i:172;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/style-rtl.css\";i:173;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/style-rtl.min.css\";i:174;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/style.css\";i:175;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/style.min.css\";i:176;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/theme-rtl.css\";i:177;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/theme-rtl.min.css\";i:178;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/theme.css\";i:179;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/group/theme.min.css\";i:180;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/heading/style-rtl.css\";i:181;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/heading/style-rtl.min.css\";i:182;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/heading/style.css\";i:183;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/heading/style.min.css\";i:184;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/html/editor-rtl.css\";i:185;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/html/editor-rtl.min.css\";i:186;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/html/editor.css\";i:187;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/html/editor.min.css\";i:188;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/editor-rtl.css\";i:189;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/editor-rtl.min.css\";i:190;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/editor.css\";i:191;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/editor.min.css\";i:192;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/style-rtl.css\";i:193;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/style-rtl.min.css\";i:194;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/style.css\";i:195;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/style.min.css\";i:196;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/theme-rtl.css\";i:197;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/theme-rtl.min.css\";i:198;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/theme.css\";i:199;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/image/theme.min.css\";i:200;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-comments/style-rtl.css\";i:201;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-comments/style-rtl.min.css\";i:202;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-comments/style.css\";i:203;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-comments/style.min.css\";i:204;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/editor-rtl.css\";i:205;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/editor-rtl.min.css\";i:206;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/editor.css\";i:207;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/editor.min.css\";i:208;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/style-rtl.css\";i:209;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/style-rtl.min.css\";i:210;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/style.css\";i:211;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/latest-posts/style.min.css\";i:212;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/list/style-rtl.css\";i:213;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/list/style-rtl.min.css\";i:214;s:57:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/list/style.css\";i:215;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/list/style.min.css\";i:216;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/editor-rtl.css\";i:217;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/editor-rtl.min.css\";i:218;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/editor.css\";i:219;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/editor.min.css\";i:220;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/style-rtl.css\";i:221;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/style-rtl.min.css\";i:222;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/style.css\";i:223;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/media-text/style.min.css\";i:224;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/more/editor-rtl.css\";i:225;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/more/editor-rtl.min.css\";i:226;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/more/editor.css\";i:227;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/more/editor.min.css\";i:228;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/editor-rtl.css\";i:229;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/editor-rtl.min.css\";i:230;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/editor.css\";i:231;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/editor.min.css\";i:232;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/style-rtl.css\";i:233;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/style-rtl.min.css\";i:234;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/style.css\";i:235;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-link/style.min.css\";i:236;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-submenu/editor-rtl.css\";i:237;s:80:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-submenu/editor-rtl.min.css\";i:238;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-submenu/editor.css\";i:239;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation-submenu/editor.min.css\";i:240;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/editor-rtl.css\";i:241;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/editor-rtl.min.css\";i:242;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/editor.css\";i:243;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/editor.min.css\";i:244;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/style-rtl.css\";i:245;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/style-rtl.min.css\";i:246;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/style.css\";i:247;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/navigation/style.min.css\";i:248;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/nextpage/editor-rtl.css\";i:249;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/nextpage/editor-rtl.min.css\";i:250;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/nextpage/editor.css\";i:251;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/nextpage/editor.min.css\";i:252;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/editor-rtl.css\";i:253;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/editor-rtl.min.css\";i:254;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/editor.css\";i:255;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/editor.min.css\";i:256;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/style-rtl.css\";i:257;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/style-rtl.min.css\";i:258;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/style.css\";i:259;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/page-list/style.min.css\";i:260;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/editor-rtl.css\";i:261;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/editor-rtl.min.css\";i:262;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/editor.css\";i:263;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/editor.min.css\";i:264;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/style-rtl.css\";i:265;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/style-rtl.min.css\";i:266;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/style.css\";i:267;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/paragraph/style.min.css\";i:268;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-author/style-rtl.css\";i:269;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-author/style-rtl.min.css\";i:270;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-author/style.css\";i:271;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-author/style.min.css\";i:272;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/editor-rtl.css\";i:273;s:80:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/editor-rtl.min.css\";i:274;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/editor.css\";i:275;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/editor.min.css\";i:276;s:75:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/style-rtl.css\";i:277;s:79:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/style-rtl.min.css\";i:278;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/style.css\";i:279;s:75:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-comments-form/style.min.css\";i:280;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-date/style-rtl.css\";i:281;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-date/style-rtl.min.css\";i:282;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-date/style.css\";i:283;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-date/style.min.css\";i:284;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/editor-rtl.css\";i:285;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/editor-rtl.min.css\";i:286;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/editor.css\";i:287;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/editor.min.css\";i:288;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/style-rtl.css\";i:289;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/style-rtl.min.css\";i:290;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/style.css\";i:291;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-excerpt/style.min.css\";i:292;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/editor-rtl.css\";i:293;s:81:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/editor-rtl.min.css\";i:294;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/editor.css\";i:295;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/editor.min.css\";i:296;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/style-rtl.css\";i:297;s:80:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/style-rtl.min.css\";i:298;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/style.css\";i:299;s:76:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-featured-image/style.min.css\";i:300;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-navigation-link/style-rtl.css\";i:301;s:81:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-navigation-link/style-rtl.min.css\";i:302;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-navigation-link/style.css\";i:303;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-navigation-link/style.min.css\";i:304;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/editor-rtl.css\";i:305;s:75:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/editor-rtl.min.css\";i:306;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/editor.css\";i:307;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/editor.min.css\";i:308;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/style-rtl.css\";i:309;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/style-rtl.min.css\";i:310;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/style.css\";i:311;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-template/style.min.css\";i:312;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-terms/style-rtl.css\";i:313;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-terms/style-rtl.min.css\";i:314;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-terms/style.css\";i:315;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-terms/style.min.css\";i:316;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-title/style-rtl.css\";i:317;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-title/style-rtl.min.css\";i:318;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-title/style.css\";i:319;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/post-title/style.min.css\";i:320;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/preformatted/style-rtl.css\";i:321;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/preformatted/style-rtl.min.css\";i:322;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/preformatted/style.css\";i:323;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/preformatted/style.min.css\";i:324;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/editor-rtl.css\";i:325;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/editor-rtl.min.css\";i:326;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/editor.css\";i:327;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/editor.min.css\";i:328;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/style-rtl.css\";i:329;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/style-rtl.min.css\";i:330;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/style.css\";i:331;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/style.min.css\";i:332;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/theme-rtl.css\";i:333;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/theme-rtl.min.css\";i:334;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/theme.css\";i:335;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/pullquote/theme.min.css\";i:336;s:82:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination-numbers/editor-rtl.css\";i:337;s:86:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination-numbers/editor-rtl.min.css\";i:338;s:78:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination-numbers/editor.css\";i:339;s:82:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination-numbers/editor.min.css\";i:340;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/editor-rtl.css\";i:341;s:78:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/editor-rtl.min.css\";i:342;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/editor.css\";i:343;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/editor.min.css\";i:344;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/style-rtl.css\";i:345;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/style-rtl.min.css\";i:346;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/style.css\";i:347;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-pagination/style.min.css\";i:348;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-title/style-rtl.css\";i:349;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-title/style-rtl.min.css\";i:350;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-title/style.css\";i:351;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query-title/style.min.css\";i:352;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query/editor-rtl.css\";i:353;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query/editor-rtl.min.css\";i:354;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query/editor.css\";i:355;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/query/editor.min.css\";i:356;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/style-rtl.css\";i:357;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/style-rtl.min.css\";i:358;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/style.css\";i:359;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/style.min.css\";i:360;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/theme-rtl.css\";i:361;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/theme-rtl.min.css\";i:362;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/theme.css\";i:363;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/quote/theme.min.css\";i:364;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/read-more/style-rtl.css\";i:365;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/read-more/style-rtl.min.css\";i:366;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/read-more/style.css\";i:367;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/read-more/style.min.css\";i:368;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/editor-rtl.css\";i:369;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/editor-rtl.min.css\";i:370;s:57:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/editor.css\";i:371;s:61:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/editor.min.css\";i:372;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/style-rtl.css\";i:373;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/style-rtl.min.css\";i:374;s:56:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/style.css\";i:375;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/rss/style.min.css\";i:376;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/editor-rtl.css\";i:377;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/editor-rtl.min.css\";i:378;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/editor.css\";i:379;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/editor.min.css\";i:380;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/style-rtl.css\";i:381;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/style-rtl.min.css\";i:382;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/style.css\";i:383;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/style.min.css\";i:384;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/theme-rtl.css\";i:385;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/theme-rtl.min.css\";i:386;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/theme.css\";i:387;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/search/theme.min.css\";i:388;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/editor-rtl.css\";i:389;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/editor-rtl.min.css\";i:390;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/editor.css\";i:391;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/editor.min.css\";i:392;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/style-rtl.css\";i:393;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/style-rtl.min.css\";i:394;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/style.css\";i:395;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/style.min.css\";i:396;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/theme-rtl.css\";i:397;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/theme-rtl.min.css\";i:398;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/theme.css\";i:399;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/separator/theme.min.css\";i:400;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/shortcode/editor-rtl.css\";i:401;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/shortcode/editor-rtl.min.css\";i:402;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/shortcode/editor.css\";i:403;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/shortcode/editor.min.css\";i:404;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/editor-rtl.css\";i:405;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/editor-rtl.min.css\";i:406;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/editor.css\";i:407;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/editor.min.css\";i:408;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/style-rtl.css\";i:409;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/style-rtl.min.css\";i:410;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/style.css\";i:411;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-logo/style.min.css\";i:412;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-tagline/editor-rtl.css\";i:413;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-tagline/editor-rtl.min.css\";i:414;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-tagline/editor.css\";i:415;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-tagline/editor.min.css\";i:416;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/editor-rtl.css\";i:417;s:72:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/editor-rtl.min.css\";i:418;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/editor.css\";i:419;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/editor.min.css\";i:420;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/style-rtl.css\";i:421;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/style-rtl.min.css\";i:422;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/style.css\";i:423;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/site-title/style.min.css\";i:424;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-link/editor-rtl.css\";i:425;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-link/editor-rtl.min.css\";i:426;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-link/editor.css\";i:427;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-link/editor.min.css\";i:428;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/editor-rtl.css\";i:429;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/editor-rtl.min.css\";i:430;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/editor.css\";i:431;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/editor.min.css\";i:432;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/style-rtl.css\";i:433;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/style-rtl.min.css\";i:434;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/style.css\";i:435;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/social-links/style.min.css\";i:436;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/editor-rtl.css\";i:437;s:68:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/editor-rtl.min.css\";i:438;s:60:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/editor.css\";i:439;s:64:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/editor.min.css\";i:440;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/style-rtl.css\";i:441;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/style-rtl.min.css\";i:442;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/style.css\";i:443;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/spacer/style.min.css\";i:444;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/editor-rtl.css\";i:445;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/editor-rtl.min.css\";i:446;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/editor.css\";i:447;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/editor.min.css\";i:448;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/style-rtl.css\";i:449;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/style-rtl.min.css\";i:450;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/style.css\";i:451;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/style.min.css\";i:452;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/theme-rtl.css\";i:453;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/theme-rtl.min.css\";i:454;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/theme.css\";i:455;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/table/theme.min.css\";i:456;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/tag-cloud/style-rtl.css\";i:457;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/tag-cloud/style-rtl.min.css\";i:458;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/tag-cloud/style.css\";i:459;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/tag-cloud/style.min.css\";i:460;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/editor-rtl.css\";i:461;s:75:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/editor-rtl.min.css\";i:462;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/editor.css\";i:463;s:71:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/editor.min.css\";i:464;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/theme-rtl.css\";i:465;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/theme-rtl.min.css\";i:466;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/theme.css\";i:467;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/template-part/theme.min.css\";i:468;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/term-description/style-rtl.css\";i:469;s:77:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/term-description/style-rtl.min.css\";i:470;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/term-description/style.css\";i:471;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/term-description/style.min.css\";i:472;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/editor-rtl.css\";i:473;s:74:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/editor-rtl.min.css\";i:474;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/editor.css\";i:475;s:70:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/editor.min.css\";i:476;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/style-rtl.css\";i:477;s:73:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/style-rtl.min.css\";i:478;s:65:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/style.css\";i:479;s:69:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/text-columns/style.min.css\";i:480;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/verse/style-rtl.css\";i:481;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/verse/style-rtl.min.css\";i:482;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/verse/style.css\";i:483;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/verse/style.min.css\";i:484;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/editor-rtl.css\";i:485;s:67:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/editor-rtl.min.css\";i:486;s:59:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/editor.css\";i:487;s:63:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/editor.min.css\";i:488;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/style-rtl.css\";i:489;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/style-rtl.min.css\";i:490;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/style.css\";i:491;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/style.min.css\";i:492;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/theme-rtl.css\";i:493;s:66:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/theme-rtl.min.css\";i:494;s:58:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/theme.css\";i:495;s:62:\"C:/xampp/htdocs/gricklo/wp-includes/blocks/video/theme.min.css\";}', 'yes'),
(123, 'recovery_keys', 'a:0:{}', 'yes'),
(124, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1695060557;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(146, 'can_compress_scripts', '1', 'yes'),
(160, 'finished_updating_comment_type', '1', 'yes'),
(161, 'recently_activated', 'a:0:{}', 'yes'),
(163, 'current_theme', 'Sage Starter Theme', 'yes'),
(164, 'theme_mods_gricklo-theme/resources', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:18:\"primary_navigation\";i:2;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(173, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}', 'yes'),
(178, 'new_admin_email', 'patrykplonka.op@gmail.com', 'yes'),
(230, '_transient_health-check-site-status-result', '{\"good\":18,\"recommended\":5,\"critical\":0}', 'yes'),
(416, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(433, 'acf_version', '6.0.7', 'yes'),
(662, '_transient_timeout_acf_plugin_updates', '1697268406', 'no'),
(663, '_transient_acf_plugin_updates', 'a:5:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";}}s:9:\"no_update\";a:0:{}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";}}', 'no'),
(668, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697217973;s:7:\"checked\";a:1:{s:23:\"gricklo-theme/resources\";s:6:\"9.0.10\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(670, '_site_transient_timeout_php_check_744549330ad044a5e94138c3c20d7f77', '1697700410', 'no'),
(671, '_site_transient_php_check_744549330ad044a5e94138c3c20d7f77', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(672, '_site_transient_timeout_browser_22210ca73bf1af2ec2eace74a96ee356', '1697700412', 'no'),
(673, '_site_transient_browser_22210ca73bf1af2ec2eace74a96ee356', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"117.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(694, '_site_transient_timeout_theme_roots', '1697219772', 'no'),
(695, '_site_transient_theme_roots', 'a:1:{s:23:\"gricklo-theme/resources\";s:7:\"/themes\";}', 'no'),
(698, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.3.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.3.2\";s:7:\"version\";s:5:\"6.3.2\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1697217978;s:15:\"version_checked\";s:5:\"6.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(699, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1697217978;s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":11:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:7:\"6.2.1.1\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"6.3\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}s:8:\"requires\";s:3:\"5.8\";s:12:\"requires_php\";s:3:\"7.0\";s:12:\"release_date\";s:8:\"20230908\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(700, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"patrykplonka.op@gmail.com\";s:7:\"version\";s:5:\"6.3.2\";s:9:\"timestamp\";i:1697217978;}', 'no');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1695061550'),
(5, 3, '_wp_desired_post_slug', 'polityka-prywatnosci'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1695061550'),
(8, 2, '_wp_desired_post_slug', 'przykladowa-strona'),
(9, 8, '_edit_lock', '1695720342:1'),
(10, 8, '_wp_page_template', 'views/home.blade.php'),
(20, 11, '_menu_item_type', 'post_type'),
(21, 11, '_menu_item_menu_item_parent', '0'),
(22, 11, '_menu_item_object_id', '8'),
(23, 11, '_menu_item_object', 'page'),
(24, 11, '_menu_item_target', ''),
(25, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 11, '_menu_item_xfn', ''),
(27, 11, '_menu_item_url', ''),
(31, 15, '_edit_lock', '1695751148:1'),
(32, 17, '_menu_item_type', 'post_type'),
(33, 17, '_menu_item_menu_item_parent', '0'),
(34, 17, '_menu_item_object_id', '15'),
(35, 17, '_menu_item_object', 'page'),
(36, 17, '_menu_item_target', ''),
(37, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 17, '_menu_item_xfn', ''),
(39, 17, '_menu_item_url', ''),
(40, 15, '_wp_page_template', 'views/listing.blade.php'),
(41, 18, '_edit_lock', '1697095482:1'),
(42, 19, '_menu_item_type', 'post_type'),
(43, 19, '_menu_item_menu_item_parent', '0'),
(44, 19, '_menu_item_object_id', '18'),
(45, 19, '_menu_item_object', 'page'),
(46, 19, '_menu_item_target', ''),
(47, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 19, '_menu_item_xfn', ''),
(49, 19, '_menu_item_url', ''),
(50, 18, '_wp_page_template', 'views/about.blade.php'),
(51, 21, '_edit_lock', '1695924098:1'),
(52, 22, '_menu_item_type', 'post_type'),
(53, 22, '_menu_item_menu_item_parent', '0'),
(54, 22, '_menu_item_object_id', '21'),
(55, 22, '_menu_item_object', 'page'),
(56, 22, '_menu_item_target', ''),
(57, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(58, 22, '_menu_item_xfn', ''),
(59, 22, '_menu_item_url', ''),
(60, 21, '_wp_page_template', 'views/blog.blade.php'),
(61, 24, '_edit_lock', '1695720476:1'),
(62, 25, '_menu_item_type', 'post_type'),
(63, 25, '_menu_item_menu_item_parent', '0'),
(64, 25, '_menu_item_object_id', '24'),
(65, 25, '_menu_item_object', 'page'),
(66, 25, '_menu_item_target', ''),
(67, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 25, '_menu_item_xfn', ''),
(69, 25, '_menu_item_url', ''),
(70, 24, '_wp_page_template', 'views/contact.blade.php'),
(71, 11, '_wp_old_date', '2023-09-18'),
(72, 17, '_wp_old_date', '2023-09-26'),
(73, 19, '_wp_old_date', '2023-09-26'),
(74, 22, '_wp_old_date', '2023-09-26'),
(75, 25, '_wp_old_date', '2023-09-26'),
(76, 1, '_wp_trash_meta_status', 'publish'),
(77, 1, '_wp_trash_meta_time', '1695922811'),
(78, 1, '_wp_desired_post_slug', 'witaj-swiecie'),
(79, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(80, 29, '_edit_lock', '1696281141:1'),
(89, 35, '_edit_last', '1'),
(90, 35, '_edit_lock', '1695968920:1'),
(91, 37, '_wp_attached_file', '2023/09/single_blog_1.jpg'),
(92, 37, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2023/09/single_blog_1.jpg\";s:8:\"filesize\";i:67394;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"single_blog_1-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10802;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"single_blog_1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6444;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 38, '_wp_attached_file', '2023/09/single_blog_2.jpg'),
(94, 38, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2023/09/single_blog_2.jpg\";s:8:\"filesize\";i:61206;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"single_blog_2-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:9831;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"single_blog_2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6350;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 39, '_wp_attached_file', '2023/09/single_blog_3.jpg'),
(96, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2023/09/single_blog_3.jpg\";s:8:\"filesize\";i:75287;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"single_blog_3-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11185;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"single_blog_3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6559;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 40, '_wp_attached_file', '2023/09/single_blog_4.jpg'),
(98, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2023/09/single_blog_4.jpg\";s:8:\"filesize\";i:55630;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"single_blog_4-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10003;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"single_blog_4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6385;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 41, '_wp_attached_file', '2023/09/single_blog_5.jpg'),
(100, 41, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:750;s:6:\"height\";i:375;s:4:\"file\";s:25:\"2023/09/single_blog_5.jpg\";s:8:\"filesize\";i:93666;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:25:\"single_blog_5-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14977;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:25:\"single_blog_5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:8815;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 29, '_edit_last', '1'),
(106, 29, 'post_img', '37'),
(107, 29, '_post_img', 'field_6515bfd67c5f7'),
(108, 42, 'post_img', '37'),
(109, 42, '_post_img', 'field_6515bfd67c5f7'),
(112, 44, 'post_img', '37'),
(113, 44, '_post_img', 'field_6515bfd67c5f7'),
(116, 46, 'post_img', '37'),
(117, 46, '_post_img', 'field_6515bfd67c5f7'),
(120, 47, 'post_img', '39'),
(121, 47, '_post_img', 'field_6515bfd67c5f7'),
(124, 48, 'post_img', '37'),
(125, 48, '_post_img', 'field_6515bfd67c5f7'),
(127, 50, '_edit_lock', '1696280991:1'),
(130, 50, '_edit_last', '1'),
(133, 50, 'post_img', '38'),
(134, 50, '_post_img', 'field_6515bfd67c5f7'),
(135, 52, 'post_img', '38'),
(136, 52, '_post_img', 'field_6515bfd67c5f7'),
(137, 53, '_edit_lock', '1696281120:1'),
(140, 53, '_edit_last', '1'),
(142, 53, 'post_img', '39'),
(143, 53, '_post_img', 'field_6515bfd67c5f7'),
(144, 55, 'post_img', '39'),
(145, 55, '_post_img', 'field_6515bfd67c5f7'),
(146, 56, '_edit_lock', '1696281096:1'),
(149, 56, '_edit_last', '1'),
(152, 56, 'post_img', '40'),
(153, 56, '_post_img', 'field_6515bfd67c5f7'),
(154, 58, 'post_img', '40'),
(155, 58, '_post_img', 'field_6515bfd67c5f7'),
(156, 59, '_edit_lock', '1696281110:1'),
(159, 59, '_edit_last', '1'),
(161, 59, 'post_img', '41'),
(162, 59, '_post_img', 'field_6515bfd67c5f7'),
(163, 61, 'post_img', '41'),
(164, 61, '_post_img', 'field_6515bfd67c5f7'),
(167, 29, '_wp_old_date', '2023-09-28'),
(174, 50, '_wp_old_date', '2023-09-28'),
(179, 62, 'post_img', '38'),
(180, 62, '_post_img', 'field_6515bfd67c5f7'),
(183, 53, '_wp_old_date', '2023-09-28'),
(187, 56, '_wp_old_date', '2023-09-28'),
(191, 59, '_wp_old_date', '2023-09-28'),
(197, 29, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(198, 29, '_post_title', 'field_65166bb7d33bf'),
(199, 29, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(200, 29, '_post_text', 'field_65166bd08cee1'),
(201, 65, 'post_img', '37'),
(202, 65, '_post_img', 'field_6515bfd67c5f7'),
(203, 65, 'post_title', ''),
(204, 65, '_post_title', 'field_65166bb7d33bf'),
(205, 65, 'post_text', '<div class=\"card-text\"> MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower </div>\r\n\r\n<div class=\"card-text\"> MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually </div>\r\n\r\n<div class=\"card-text\"> MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower </div>\r\n\r\n\r\n\r\n'),
(206, 65, '_post_text', 'field_65166bd08cee1'),
(209, 29, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(210, 29, '_blog_quote', 'field_65166c8b067a4'),
(211, 67, 'post_img', '37'),
(212, 67, '_post_img', 'field_6515bfd67c5f7'),
(213, 67, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(214, 67, '_post_title', 'field_65166bb7d33bf'),
(215, 67, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(216, 67, '_post_text', 'field_65166bd08cee1'),
(217, 67, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(218, 67, '_blog_quote', 'field_65166c8b067a4'),
(221, 68, 'post_img', '37'),
(222, 68, '_post_img', 'field_6515bfd67c5f7'),
(223, 68, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(224, 68, '_post_title', 'field_65166bb7d33bf'),
(225, 68, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(226, 68, '_post_text', 'field_65166bd08cee1'),
(227, 68, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(228, 68, '_blog_quote', 'field_65166c8b067a4'),
(231, 69, 'post_img', '37'),
(232, 69, '_post_img', 'field_6515bfd67c5f7'),
(233, 69, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(234, 69, '_post_title', 'field_65166bb7d33bf'),
(235, 69, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n  <div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people\r\n     do not understand why you should have to spend money on boot camp when you can get\r\n     the MCSE study materials yourself at a fraction of the camp price. However, who has\r\n     the willpower to actually sit through a self-imposed MCSE training.\r\n  </div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(236, 69, '_post_text', 'field_65166bd08cee1'),
(237, 69, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(238, 69, '_blog_quote', 'field_65166c8b067a4'),
(241, 70, 'post_img', '37'),
(242, 70, '_post_img', 'field_6515bfd67c5f7'),
(243, 70, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(244, 70, '_post_title', 'field_65166bb7d33bf'),
(245, 70, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n  <div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. </div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(246, 70, '_post_text', 'field_65166bd08cee1'),
(247, 70, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(248, 70, '_blog_quote', 'field_65166c8b067a4'),
(251, 71, 'post_img', '37'),
(252, 71, '_post_img', 'field_6515bfd67c5f7'),
(253, 71, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(254, 71, '_post_title', 'field_65166bb7d33bf'),
(255, 71, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n  <div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed \r\nMCSE training. </div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(256, 71, '_post_text', 'field_65166bd08cee1'),
(257, 71, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(258, 71, '_blog_quote', 'field_65166c8b067a4'),
(261, 72, 'post_img', '37'),
(262, 72, '_post_img', 'field_6515bfd67c5f7'),
(263, 72, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(264, 72, '_post_title', 'field_65166bb7d33bf'),
(265, 72, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n                                <div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people\r\n                                    do not understand why you should have to spend money on boot camp when you can get\r\n                                    the MCSE study materials yourself at a fraction of the camp price. However, who has\r\n                                    the willpower to actually sit through a self-imposed MCSE training.\r\n                                </div>\r\n                            </div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(266, 72, '_post_text', 'field_65166bd08cee1'),
(267, 72, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(268, 72, '_blog_quote', 'field_65166c8b067a4'),
(271, 73, 'post_img', '37'),
(272, 73, '_post_img', 'field_6515bfd67c5f7'),
(273, 73, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(274, 73, '_post_title', 'field_65166bb7d33bf'),
(275, 73, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people\r\ndo not understand why you should have to spend money on boot camp when you can get\r\nthe MCSE study materials yourself at a fraction of the camp price. However, who has\r\nthe willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n                            </div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(276, 73, '_post_text', 'field_65166bd08cee1'),
(277, 73, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(278, 73, '_blog_quote', 'field_65166c8b067a4'),
(281, 74, 'post_img', '37'),
(282, 74, '_post_img', 'field_6515bfd67c5f7'),
(283, 74, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(284, 74, '_post_title', 'field_65166bb7d33bf'),
(285, 74, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(286, 74, '_post_text', 'field_65166bd08cee1'),
(287, 74, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(288, 74, '_blog_quote', 'field_65166c8b067a4'),
(291, 75, 'post_img', '37'),
(292, 75, '_post_img', 'field_6515bfd67c5f7'),
(293, 75, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(294, 75, '_post_title', 'field_65166bb7d33bf'),
(295, 75, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed \r\nMCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(296, 75, '_post_text', 'field_65166bd08cee1'),
(297, 75, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(298, 75, '_blog_quote', 'field_65166c8b067a4'),
(301, 76, 'post_img', '37'),
(302, 76, '_post_img', 'field_6515bfd67c5f7'),
(303, 76, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(304, 76, '_post_title', 'field_65166bb7d33bf'),
(305, 76, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(306, 76, '_post_text', 'field_65166bd08cee1'),
(307, 76, 'blog_quote', 'MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.'),
(308, 76, '_blog_quote', 'field_65166c8b067a4'),
(382, 56, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(383, 56, '_post_text', 'field_65166bd08cee1'),
(384, 56, 'blog_quote', ''),
(385, 56, '_blog_quote', 'field_65166c8b067a4'),
(386, 80, 'post_img', '38'),
(387, 80, '_post_img', 'field_6515bfd67c5f7'),
(388, 80, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(389, 80, '_post_title', 'field_65166bb7d33bf'),
(390, 80, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(391, 80, '_post_text', 'field_65166bd08cee1'),
(392, 80, 'blog_quote', ''),
(393, 80, '_blog_quote', 'field_65166c8b067a4'),
(408, 82, 'post_img', '41'),
(409, 82, '_post_img', 'field_6515bfd67c5f7'),
(410, 82, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(411, 82, '_post_title', 'field_65166bb7d33bf'),
(412, 82, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(413, 82, '_post_text', 'field_65166bd08cee1'),
(414, 82, 'blog_quote', ''),
(415, 82, '_blog_quote', 'field_65166c8b067a4'),
(418, 83, 'post_img', '41'),
(419, 83, '_post_img', 'field_6515bfd67c5f7'),
(420, 83, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(421, 83, '_post_title', 'field_65166bb7d33bf'),
(422, 83, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(423, 83, '_post_text', 'field_65166bd08cee1'),
(424, 83, 'blog_quote', ''),
(425, 83, '_blog_quote', 'field_65166c8b067a4'),
(429, 56, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(430, 56, '_post_title', 'field_65166bb7d33bf'),
(431, 77, 'post_img', '40'),
(432, 77, '_post_img', 'field_6515bfd67c5f7'),
(433, 77, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(434, 77, '_post_text', 'field_65166bd08cee1'),
(435, 77, 'blog_quote', ''),
(436, 77, '_blog_quote', 'field_65166c8b067a4'),
(437, 77, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(438, 77, '_post_title', 'field_65166bb7d33bf'),
(442, 59, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(443, 59, '_post_title', 'field_65166bb7d33bf'),
(444, 59, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(445, 59, '_post_text', 'field_65166bd08cee1'),
(446, 59, 'blog_quote', ''),
(447, 59, '_blog_quote', 'field_65166c8b067a4'),
(448, 78, 'post_img', '41'),
(449, 78, '_post_img', 'field_6515bfd67c5f7'),
(450, 78, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(451, 78, '_post_title', 'field_65166bb7d33bf'),
(452, 78, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(453, 78, '_post_text', 'field_65166bd08cee1'),
(454, 78, 'blog_quote', ''),
(455, 78, '_blog_quote', 'field_65166c8b067a4'),
(460, 53, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(461, 53, '_post_title', 'field_65166bb7d33bf');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(462, 53, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(463, 53, '_post_text', 'field_65166bd08cee1'),
(464, 53, 'blog_quote', ''),
(465, 53, '_blog_quote', 'field_65166c8b067a4'),
(466, 79, 'post_img', '39'),
(467, 79, '_post_img', 'field_6515bfd67c5f7'),
(468, 79, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(469, 79, '_post_title', 'field_65166bb7d33bf'),
(470, 79, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(471, 79, '_post_text', 'field_65166bd08cee1'),
(472, 79, 'blog_quote', ''),
(473, 79, '_blog_quote', 'field_65166c8b067a4'),
(477, 50, 'post_title', 'Second divided from form fish beast made every of seas all gathered us saying he our'),
(478, 50, '_post_title', 'field_65166bb7d33bf'),
(479, 50, 'post_text', '<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training. who has the willpower to actually</div>\r\n\r\n<div class=\"card-quote\">\r\n<div class=\"quote\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower to actually sit through a self-imposed MCSE training.\r\n</div>\r\n</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>\r\n\r\n<div class=\"card-text\">MCSE boot camps have its supporters and its detractors. Some people do not understand why you should have to spend money on boot camp when you can get the MCSE study materials yourself at a fraction of the camp price. However, who has the willpower</div>'),
(480, 50, '_post_text', 'field_65166bd08cee1'),
(481, 50, 'blog_quote', ''),
(482, 50, '_blog_quote', 'field_65166c8b067a4'),
(485, 29, '_pingme', '1'),
(486, 29, '_encloseme', '1');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-09-18 20:07:10', '2023-09-18 18:07:10', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'trash', 'open', 'open', '', 'witaj-swiecie__trashed', '', '', '2023-09-28 19:40:11', '2023-09-28 17:40:11', '', 0, 'http://localhost/gricklo/?p=1', 0, 'post', '', 1),
(2, 1, '2023-09-18 20:07:10', '2023-09-18 18:07:10', '<!-- wp:paragraph -->\n<p>Przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taką treść:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://localhost/gricklo/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'trash', 'closed', 'open', '', 'przykladowa-strona__trashed', '', '', '2023-09-18 20:25:50', '2023-09-18 18:25:50', '', 0, 'http://localhost/gricklo/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-09-18 20:07:10', '2023-09-18 18:07:10', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://localhost/gricklo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentarze</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Anonimizowany ciąg znaków utworzony z twojego adresu e-mail (zwany też hashem) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jest używany. Polityka prywatności usługi Gravatar jest dostępna pod adresem: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ciasteczka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli skomentujesz coś w witrynie, będzie można wybrać opcję zapisu nazwy, adresu e-mail i witryny internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Osadzone treści z innych witryn</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie wysłamy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph -->', 'Polityka prywatności', '', 'trash', 'closed', 'open', '', 'polityka-prywatnosci__trashed', '', '', '2023-09-18 20:25:50', '2023-09-18 18:25:50', '', 0, 'http://localhost/gricklo/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-09-18 20:07:10', '2023-09-18 18:07:10', '<!-- wp:page-list /-->', 'Nawigacja', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-09-18 20:07:10', '2023-09-18 18:07:10', '', 0, 'https://localhost/gricklo/2023/09/18/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2023-09-18 20:25:50', '2023-09-18 18:25:50', '<!-- wp:heading --><h2>Kim jesteśmy</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Adres naszej strony internetowej to: http://localhost/gricklo.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Komentarze</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Kiedy odwiedzający witrynę zostawia komentarz, zbieramy dane widoczne w formularzu komentowania, jak i adres IP odwiedzającego oraz podpis jego przeglądarki jako pomoc przy wykrywaniu spamu.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Anonimizowany ciąg znaków utworzony z twojego adresu e-mail (zwany też hashem) może zostać przesłany do usługi Gravatar w celu sprawdzenia czy jest używany. Polityka prywatności usługi Gravatar jest dostępna pod adresem: https://automattic.com/privacy/. Po zatwierdzeniu komentarza twój obrazek profilowy jest widoczny publicznie w kontekście twojego komentarza.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli jesteś zarejestrowanym użytkownikiem i wgrywasz na witrynę obrazki, powinieneś unikać przesyłania obrazków z tagami EXIF lokalizacji. Odwiedzający stronę mogą pobrać i odczytać pełne dane lokalizacyjne z obrazków w witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Ciasteczka</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli skomentujesz coś w witrynie, będzie można wybrać opcję zapisu nazwy, adresu e-mail i witryny internetowej w ciasteczkach, dzięki którym podczas pisania kolejnych komentarzy powyższe informacje będą już dogodnie uzupełnione. Ciasteczka wygasają po roku.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli odwiedzisz stronę logowania, utworzymy tymczasowe ciasteczko na potrzeby sprawdzenia czy twoja przeglądarka akceptuje ciasteczka. Nie zawiera ono żadnych danych osobistych i zostanie usunięte, kiedy przeglądarka zostanie zamknięta.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Podczas logowania tworzymy dodatkowo kilka ciasteczek potrzebnych do zapisu twoich informacji logowania oraz wybranych opcji ekranu. Ciasteczka logowania wygasają po dwóch dniach, a opcji ekranu po roku. Jeśli zaznaczysz opcję &bdquo;Pamiętaj mnie&rdquo;, logowanie wygaśnie po dwóch tygodniach. Jeśli wylogujesz się ze swojego konta, ciasteczka logowania zostaną usunięte.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Jeśli zmodyfikujesz albo opublikujesz artykuł, w twojej przeglądarce zostanie zapisane dodatkowe ciasteczko. To ciasteczko nie zawiera żadnych danych osobistych, wskazując po prostu na identyfikator przed chwilą edytowanego artykułu. Wygasa ono po 1 dniu.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Osadzone treści z innych witryn</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Artykuły na tej witrynie mogą zawierać osadzone treści (np. filmy, obrazki, artykuły itp.). Osadzone treści z innych witryn zachowują się analogicznie do tego, jakby użytkownik odwiedził bezpośrednio konkretną witrynę.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Witryny mogą zbierać informacje o tobie, używać ciasteczek, dołączać dodatkowe, zewnętrzne systemy śledzenia i monitorować twoje interakcje z osadzonym materiałem, włączając w to śledzenie twoich interakcji z osadzonym materiałem jeśli posiadasz konto i jesteś zalogowany w tamtej witrynie.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Z kim dzielimy się danymi</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zażądasz zresetowania hasła, twój adres IP zostanie dołączony do wysyłanej wiadomości.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jak długo przechowujemy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli zostawisz komentarz, jego treść i metadane będą przechowywane przez czas nieokreślony. Dzięki temu jesteśmy w stanie rozpoznawać i zatwierdzać kolejne komentarze automatycznie, bez wysyłania ich do każdorazowej moderacji.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Dla użytkowników którzy zarejestrowali się na naszej stronie internetowej (jeśli tacy są), przechowujemy również informacje osobiste wprowadzone w profilu. Każdy użytkownik może dokonać wglądu, korekty albo skasować swoje informacje osobiste w dowolnej chwili (nie licząc nazwy użytkownika, której nie można zmienić). Administratorzy strony również mogą przeglądać i modyfikować te informacje.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Jakie masz prawa do swoich danych</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Jeśli masz konto użytkownika albo dodałeś komentarze w tej witrynie, możesz zażądać dostarczenia pliku z wyeksportowanym kompletem twoich danych osobistych będących w naszym posiadaniu, w tym całość tych dostarczonych przez ciebie. Możesz również zażądać usunięcia przez nas całości twoich danych osobistych w naszym posiadaniu. Nie dotyczy to żadnych danych które jesteśmy zobligowani zachować ze względów administracyjnych, prawnych albo bezpieczeństwa.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Gdzie wysłamy twoje dane</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Sugerowany tekst: </strong>Komentarze gości mogą być sprawdzane za pomocą automatycznej usługi wykrywania spamu.</p><!-- /wp:paragraph -->', 'Polityka prywatności', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2023-09-18 20:25:50', '2023-09-18 18:25:50', '', 3, 'http://localhost/gricklo/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-09-18 20:25:50', '2023-09-18 18:25:50', '<!-- wp:paragraph -->\n<p>Przykładowa strona. Strony są inne niż wpisy na blogu, ponieważ nie tylko znajdują się zawsze w jednym miejscu, ale także pojawiają się w menu witryny (w większości motywów). Większość użytkowników zaczyna od strony z informacjami o sobie, która zapozna ich przed odwiedzającymi witrynę. Taka strona może zawierać na przykład taką treść:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Cześć! Za dnia jestem kurierem rowerowym, nocą próbuję swoich sił w aktorstwie, a to jest moja witryna. Mieszkam w Krakowie, mam wspaniałego psa który wabi się Reks i lubię piña coladę (oraz spacery, gdy pada deszcz).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...albo coś takiego:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Firma XYZ Doohickey została założona w 1971 roku i od tamtej pory dostarcza społeczeństwu dobrej jakości gadżety. Znajdująca się w Gotham City XYZ zatrudnia ponad 2000 osób i robi niesamowite rzeczy dla społeczności Gotham.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Jako nowy użytkownik WordPressa, powinieneś przejść do <a href=\"http://localhost/gricklo/wp-admin/\">swojego kokpitu</a> aby usunąć tę stronę i stworzyć nowe z własną treścią. Dobrej zabawy!</p>\n<!-- /wp:paragraph -->', 'Przykładowa strona', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-09-18 20:25:50', '2023-09-18 18:25:50', '', 2, 'http://localhost/gricklo/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-09-18 20:26:03', '2023-09-18 18:26:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2023-09-18 20:26:03', '2023-09-18 18:26:03', '', 0, 'http://localhost/gricklo/?page_id=8', 0, 'page', '', 0),
(9, 1, '2023-09-18 20:26:03', '2023-09-18 18:26:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2023-09-18 20:26:03', '2023-09-18 18:26:03', '', 8, 'http://localhost/gricklo/?p=9', 0, 'revision', '', 0),
(11, 1, '2023-09-28 19:10:27', '2023-09-18 18:26:27', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2023-09-28 19:10:27', '2023-09-28 17:10:27', '', 0, 'http://localhost/gricklo/?p=11', 1, 'nav_menu_item', '', 0),
(15, 1, '2023-09-26 11:29:32', '2023-09-26 09:29:32', '', 'Listings', '', 'publish', 'closed', 'closed', '', 'listing', '', '', '2023-09-26 20:01:32', '2023-09-26 18:01:32', '', 0, 'http://localhost/gricklo/?page_id=15', 0, 'page', '', 0),
(16, 1, '2023-09-26 11:28:13', '2023-09-26 09:28:13', '', 'Listing', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-09-26 11:28:13', '2023-09-26 09:28:13', '', 15, 'http://localhost/gricklo/?p=16', 0, 'revision', '', 0),
(17, 1, '2023-09-28 19:10:27', '2023-09-26 09:29:32', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2023-09-28 19:10:27', '2023-09-28 17:10:27', '', 0, 'http://localhost/gricklo/17/', 2, 'nav_menu_item', '', 0),
(18, 1, '2023-09-26 11:29:42', '2023-09-26 09:29:42', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2023-09-26 11:29:42', '2023-09-26 09:29:42', '', 0, 'http://localhost/gricklo/?page_id=18', 0, 'page', '', 0),
(19, 1, '2023-09-28 19:10:27', '2023-09-26 09:29:42', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2023-09-28 19:10:27', '2023-09-28 17:10:27', '', 0, 'http://localhost/gricklo/19/', 3, 'nav_menu_item', '', 0),
(20, 1, '2023-09-26 11:29:42', '2023-09-26 09:29:42', '', 'About', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2023-09-26 11:29:42', '2023-09-26 09:29:42', '', 18, 'http://localhost/gricklo/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-09-26 11:29:53', '2023-09-26 09:29:53', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-09-26 11:29:53', '2023-09-26 09:29:53', '', 0, 'http://localhost/gricklo/?page_id=21', 0, 'page', '', 0),
(22, 1, '2023-09-28 19:10:27', '2023-09-26 09:29:53', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2023-09-28 19:10:27', '2023-09-28 17:10:27', '', 0, 'http://localhost/gricklo/22/', 4, 'nav_menu_item', '', 0),
(23, 1, '2023-09-26 11:29:53', '2023-09-26 09:29:53', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-09-26 11:29:53', '2023-09-26 09:29:53', '', 21, 'http://localhost/gricklo/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-09-26 11:30:05', '2023-09-26 09:30:05', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2023-09-26 11:30:05', '2023-09-26 09:30:05', '', 0, 'http://localhost/gricklo/?page_id=24', 0, 'page', '', 0),
(25, 1, '2023-09-28 19:10:27', '2023-09-26 09:30:05', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2023-09-28 19:10:27', '2023-09-28 17:10:27', '', 0, 'http://localhost/gricklo/25/', 5, 'nav_menu_item', '', 0),
(26, 1, '2023-09-26 11:30:05', '2023-09-26 09:30:05', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-09-26 11:30:05', '2023-09-26 09:30:05', '', 24, 'http://localhost/gricklo/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-09-26 11:49:17', '2023-09-26 09:49:17', '', 'Listings', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2023-09-26 11:49:17', '2023-09-26 09:49:17', '', 15, 'http://localhost/gricklo/?p=27', 0, 'revision', '', 0),
(28, 1, '2023-09-28 19:40:11', '2023-09-28 17:40:11', '<!-- wp:paragraph -->\n<p>Witamy w WordPressie. To jest twój pierwszy wpis. Edytuj go lub usuń, a następnie zacznij pisać!</p>\n<!-- /wp:paragraph -->', 'Witaj, świecie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-09-28 19:40:11', '2023-09-28 17:40:11', '', 1, 'http://localhost/gricklo/?p=28', 0, 'revision', '', 0),
(29, 1, '2023-01-15 19:46:00', '2023-01-15 18:46:00', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'pierwszy-post', '', '', '2023-10-02 23:12:21', '2023-10-02 21:12:21', '', 0, 'http://localhost/gricklo/?p=29', 0, 'post', '', 0),
(30, 1, '2023-09-28 19:40:15', '2023-09-28 17:40:15', '', 'pierwszy post', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 19:40:15', '2023-09-28 17:40:15', '', 29, 'http://localhost/gricklo/?p=30', 0, 'revision', '', 0),
(31, 1, '2023-09-28 19:46:22', '2023-09-28 17:46:22', '<!-- wp:paragraph -->\n<p>asdasdasd</p>\n<!-- /wp:paragraph -->', 'pierwszy post', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 19:46:22', '2023-09-28 17:46:22', '', 29, 'http://localhost/gricklo/?p=31', 0, 'revision', '', 0),
(32, 1, '2023-09-28 19:56:21', '2023-09-28 17:56:21', '<!-- wp:paragraph -->\n<p>asdasdasdqsasdasd</p>\n<!-- /wp:paragraph -->', 'pierwszy post', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 19:56:21', '2023-09-28 17:56:21', '', 29, 'http://localhost/gricklo/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-09-28 20:02:22', '2023-09-28 18:02:22', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:02:22', '2023-09-28 18:02:22', '', 29, 'http://localhost/gricklo/?p=33', 0, 'revision', '', 0),
(35, 1, '2023-09-28 20:03:37', '2023-09-28 18:03:37', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Blog Post', 'blog-post', 'publish', 'closed', 'closed', '', 'group_6515bfd60a952', '', '', '2023-09-29 08:20:27', '2023-09-29 06:20:27', '', 0, 'http://localhost/gricklo/?post_type=acf-field-group&#038;p=35', 0, 'acf-field-group', '', 0),
(36, 1, '2023-09-28 20:03:37', '2023-09-28 18:03:37', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Post Img', 'post_img', 'publish', 'closed', 'closed', '', 'field_6515bfd67c5f7', '', '', '2023-09-28 20:03:37', '2023-09-28 18:03:37', '', 35, 'http://localhost/gricklo/?post_type=acf-field&p=36', 0, 'acf-field', '', 0),
(37, 1, '2023-09-28 20:05:30', '2023-09-28 18:05:30', '', 'single_blog_1', '', 'inherit', 'open', 'closed', '', 'single_blog_1', '', '', '2023-09-28 20:05:30', '2023-09-28 18:05:30', '', 29, 'http://localhost/gricklo/wp-content/uploads/2023/09/single_blog_1.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2023-09-28 20:05:30', '2023-09-28 18:05:30', '', 'single_blog_2', '', 'inherit', 'open', 'closed', '', 'single_blog_2', '', '', '2023-09-28 20:05:30', '2023-09-28 18:05:30', '', 29, 'http://localhost/gricklo/wp-content/uploads/2023/09/single_blog_2.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2023-09-28 20:05:31', '2023-09-28 18:05:31', '', 'single_blog_3', '', 'inherit', 'open', 'closed', '', 'single_blog_3', '', '', '2023-09-28 20:05:31', '2023-09-28 18:05:31', '', 29, 'http://localhost/gricklo/wp-content/uploads/2023/09/single_blog_3.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2023-09-28 20:05:31', '2023-09-28 18:05:31', '', 'single_blog_4', '', 'inherit', 'open', 'closed', '', 'single_blog_4', '', '', '2023-09-28 20:05:31', '2023-09-28 18:05:31', '', 29, 'http://localhost/gricklo/wp-content/uploads/2023/09/single_blog_4.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2023-09-28 20:05:31', '2023-09-28 18:05:31', '', 'single_blog_5', '', 'inherit', 'open', 'closed', '', 'single_blog_5', '', '', '2023-09-28 20:05:31', '2023-09-28 18:05:31', '', 29, 'http://localhost/gricklo/wp-content/uploads/2023/09/single_blog_5.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2023-09-28 20:05:35', '2023-09-28 18:05:35', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:05:35', '2023-09-28 18:05:35', '', 29, 'http://localhost/gricklo/?p=42', 0, 'revision', '', 0),
(43, 1, '2023-09-28 20:06:42', '2023-09-28 18:06:42', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office asdasdasd', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:06:42', '2023-09-28 18:06:42', '', 29, 'http://localhost/gricklo/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-09-28 20:06:43', '2023-09-28 18:06:43', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office asdasdasd', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:06:43', '2023-09-28 18:06:43', '', 29, 'http://localhost/gricklo/?p=44', 0, 'revision', '', 0),
(45, 1, '2023-09-28 20:07:21', '2023-09-28 18:07:21', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:07:21', '2023-09-28 18:07:21', '', 29, 'http://localhost/gricklo/?p=45', 0, 'revision', '', 0),
(46, 1, '2023-09-28 20:07:22', '2023-09-28 18:07:22', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:07:22', '2023-09-28 18:07:22', '', 29, 'http://localhost/gricklo/?p=46', 0, 'revision', '', 0),
(47, 1, '2023-09-28 20:09:38', '2023-09-28 18:09:38', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:09:38', '2023-09-28 18:09:38', '', 29, 'http://localhost/gricklo/?p=47', 0, 'revision', '', 0),
(48, 1, '2023-09-28 20:09:51', '2023-09-28 18:09:51', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-28 20:09:51', '2023-09-28 18:09:51', '', 29, 'http://localhost/gricklo/?p=48', 0, 'revision', '', 0),
(50, 1, '2023-02-02 20:12:00', '2023-02-02 19:12:00', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office', '', '', '2023-10-02 23:12:13', '2023-10-02 21:12:13', '', 0, 'http://localhost/gricklo/?p=50', 0, 'post', '', 0),
(51, 1, '2023-09-28 20:12:14', '2023-09-28 18:12:14', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-09-28 20:12:14', '2023-09-28 18:12:14', '', 50, 'http://localhost/gricklo/?p=51', 0, 'revision', '', 0),
(52, 1, '2023-09-28 20:12:15', '2023-09-28 18:12:15', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-09-28 20:12:15', '2023-09-28 18:12:15', '', 50, 'http://localhost/gricklo/?p=52', 0, 'revision', '', 0),
(53, 1, '2023-03-08 20:12:00', '2023-03-08 19:12:00', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-2', '', '', '2023-10-02 23:12:00', '2023-10-02 21:12:00', '', 0, 'http://localhost/gricklo/?p=53', 0, 'post', '', 0),
(54, 1, '2023-09-28 20:12:34', '2023-09-28 18:12:34', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-09-28 20:12:34', '2023-09-28 18:12:34', '', 53, 'http://localhost/gricklo/?p=54', 0, 'revision', '', 0),
(55, 1, '2023-09-28 20:12:35', '2023-09-28 18:12:35', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-09-28 20:12:35', '2023-09-28 18:12:35', '', 53, 'http://localhost/gricklo/?p=55', 0, 'revision', '', 0),
(56, 1, '2023-03-25 20:12:00', '2023-03-25 19:12:00', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-3', '', '', '2023-10-02 23:11:36', '2023-10-02 21:11:36', '', 0, 'http://localhost/gricklo/?p=56', 0, 'post', '', 0),
(57, 1, '2023-09-28 20:12:51', '2023-09-28 18:12:51', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-09-28 20:12:51', '2023-09-28 18:12:51', '', 56, 'http://localhost/gricklo/?p=57', 0, 'revision', '', 0),
(58, 1, '2023-09-28 20:12:53', '2023-09-28 18:12:53', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-09-28 20:12:53', '2023-09-28 18:12:53', '', 56, 'http://localhost/gricklo/?p=58', 0, 'revision', '', 0),
(59, 1, '2023-05-10 20:13:00', '2023-05-10 18:13:00', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'publish', 'open', 'open', '', 'google-inks-pact-for-new-35-storey-office-4', '', '', '2023-10-02 23:11:49', '2023-10-02 21:11:49', '', 0, 'http://localhost/gricklo/?p=59', 0, 'post', '', 0),
(60, 1, '2023-09-28 20:13:04', '2023-09-28 18:13:04', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-09-28 20:13:04', '2023-09-28 18:13:04', '', 59, 'http://localhost/gricklo/?p=60', 0, 'revision', '', 0),
(61, 1, '2023-09-28 20:13:05', '2023-09-28 18:13:05', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-09-28 20:13:05', '2023-09-28 18:13:05', '', 59, 'http://localhost/gricklo/?p=61', 0, 'revision', '', 0),
(62, 1, '2023-09-28 21:12:37', '2023-09-28 19:12:37', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-09-28 21:12:37', '2023-09-28 19:12:37', '', 50, 'http://localhost/gricklo/?p=62', 0, 'revision', '', 0),
(63, 1, '2023-09-29 08:16:46', '2023-09-29 06:16:46', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Post Title', 'post_title', 'publish', 'closed', 'closed', '', 'field_65166bb7d33bf', '', '', '2023-09-29 08:16:46', '2023-09-29 06:16:46', '', 35, 'http://localhost/gricklo/?post_type=acf-field&p=63', 1, 'acf-field', '', 0),
(64, 1, '2023-09-29 08:16:56', '2023-09-29 06:16:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Post Text', 'post_text', 'publish', 'closed', 'closed', '', 'field_65166bd08cee1', '', '', '2023-09-29 08:17:53', '2023-09-29 06:17:53', '', 35, 'http://localhost/gricklo/?post_type=acf-field&#038;p=64', 2, 'acf-field', '', 0),
(65, 1, '2023-09-29 08:19:43', '2023-09-29 06:19:43', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:19:43', '2023-09-29 06:19:43', '', 29, 'http://localhost/gricklo/?p=65', 0, 'revision', '', 0),
(66, 1, '2023-09-29 08:20:15', '2023-09-29 06:20:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Blog Quote', 'blog_quote', 'publish', 'closed', 'closed', '', 'field_65166c8b067a4', '', '', '2023-09-29 08:20:27', '2023-09-29 06:20:27', '', 35, 'http://localhost/gricklo/?post_type=acf-field&#038;p=66', 3, 'acf-field', '', 0),
(67, 1, '2023-09-29 08:21:15', '2023-09-29 06:21:15', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:21:15', '2023-09-29 06:21:15', '', 29, 'http://localhost/gricklo/?p=67', 0, 'revision', '', 0),
(68, 1, '2023-09-29 08:35:27', '2023-09-29 06:35:27', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:35:27', '2023-09-29 06:35:27', '', 29, 'http://localhost/gricklo/?p=68', 0, 'revision', '', 0),
(69, 1, '2023-09-29 08:39:53', '2023-09-29 06:39:53', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:39:53', '2023-09-29 06:39:53', '', 29, 'http://localhost/gricklo/?p=69', 0, 'revision', '', 0),
(70, 1, '2023-09-29 08:41:12', '2023-09-29 06:41:12', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:41:12', '2023-09-29 06:41:12', '', 29, 'http://localhost/gricklo/?p=70', 0, 'revision', '', 0),
(71, 1, '2023-09-29 08:41:26', '2023-09-29 06:41:26', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:41:26', '2023-09-29 06:41:26', '', 29, 'http://localhost/gricklo/?p=71', 0, 'revision', '', 0),
(72, 1, '2023-09-29 08:41:56', '2023-09-29 06:41:56', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:41:56', '2023-09-29 06:41:56', '', 29, 'http://localhost/gricklo/?p=72', 0, 'revision', '', 0),
(73, 1, '2023-09-29 08:42:15', '2023-09-29 06:42:15', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:42:15', '2023-09-29 06:42:15', '', 29, 'http://localhost/gricklo/?p=73', 0, 'revision', '', 0),
(74, 1, '2023-09-29 08:42:30', '2023-09-29 06:42:30', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:42:30', '2023-09-29 06:42:30', '', 29, 'http://localhost/gricklo/?p=74', 0, 'revision', '', 0),
(75, 1, '2023-09-29 08:42:44', '2023-09-29 06:42:44', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:42:44', '2023-09-29 06:42:44', '', 29, 'http://localhost/gricklo/?p=75', 0, 'revision', '', 0),
(76, 1, '2023-09-29 08:42:52', '2023-09-29 06:42:52', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2023-09-29 08:42:52', '2023-09-29 06:42:52', '', 29, 'http://localhost/gricklo/?p=76', 0, 'revision', '', 0),
(77, 1, '2023-10-02 23:11:36', '2023-10-02 21:11:36', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2023-10-02 23:11:36', '2023-10-02 21:11:36', '', 56, 'http://localhost/gricklo/?p=77', 0, 'revision', '', 0),
(78, 1, '2023-10-02 23:11:49', '2023-10-02 21:11:49', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2023-10-02 23:11:49', '2023-10-02 21:11:49', '', 59, 'http://localhost/gricklo/?p=78', 0, 'revision', '', 0),
(79, 1, '2023-10-02 23:12:00', '2023-10-02 21:12:00', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p><a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2023-10-02 23:12:00', '2023-10-02 21:12:00', '', 53, 'http://localhost/gricklo/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-10-02 23:12:13', '2023-10-02 21:12:13', '<!-- wp:paragraph -->\n<p>That dominion stars lights dominion divide years for fourth have don\'t stars is that he earth it first without heaven in place seed it second morning saying.<a href=\"https://preview.colorlib.com/theme/gricklo/blog.html#\"></a></p>\n<!-- /wp:paragraph -->', 'Google inks pact for new 35-storey office', '', 'inherit', 'closed', 'closed', '', '50-revision-v1', '', '', '2023-10-02 23:12:13', '2023-10-02 21:12:13', '', 50, 'http://localhost/gricklo/?p=80', 0, 'revision', '', 0),
(82, 1, '2023-10-12 09:26:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-10-12 09:26:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/gricklo/?p=82', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Bez kategorii', 'bez-kategorii', 0),
(2, 'Gricklo Nav Menu', 'gricklo-nav-menu', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(11, 2, 0),
(17, 2, 0),
(19, 2, 0),
(22, 2, 0),
(25, 2, 0),
(29, 1, 0),
(50, 1, 0),
(53, 1, 0),
(56, 1, 0),
(59, 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 5),
(2, 2, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"9e94e35d84bc42ff1f3e1d0c852981372e4d0b696bdd24dee83cf6995ee752fe\";a:4:{s:10:\"expiration\";i:1697490670;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/117.0.0.0 Safari/537.36\";s:5:\"login\";i:1696281070;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '82'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:1:{i:0;s:11:\"post-status\";}}s:9:\"_modified\";s:24:\"2023-09-28T18:30:21.055Z\";}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse&editor=html'),
(24, 1, 'wp_user-settings-time', '1695968379'),
(25, 1, 'closedpostboxes_post', 'a:0:{}'),
(26, 1, 'metaboxhidden_post', 'a:0:{}');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Zrzut danych tabeli `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BEL2i9LzS9b04Hzljgr7pn4BKNA1VK0', 'admin', 'patrykplonka.op@gmail.com', 'http://localhost/gricklo', '2023-09-18 18:07:10', '', 0, 'admin');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indeksy dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indeksy dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indeksy dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indeksy dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indeksy dla tabeli `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indeksy dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indeksy dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indeksy dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=701;

--
-- AUTO_INCREMENT dla tabeli `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=487;

--
-- AUTO_INCREMENT dla tabeli `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT dla tabeli `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT dla tabeli `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT dla tabeli `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
