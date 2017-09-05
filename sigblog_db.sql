-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Sep 05, 2017 at 06:53 AM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sigblog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `sig_commentmeta`
--

CREATE TABLE `sig_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sig_comments`
--

CREATE TABLE `sig_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_comments`
--

INSERT INTO `sig_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-08-01 07:21:04', '2017-08-01 07:21:04', 'Hi, this is a comment.\\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sig_links`
--

CREATE TABLE `sig_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sig_options`
--

CREATE TABLE `sig_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=327 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_options`
--

INSERT INTO `sig_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/sigblog', 'yes'),
(2, 'home', 'http://localhost:8888/sigblog', 'yes'),
(3, 'blogname', 'sigourneylouise', 'yes'),
(4, 'blogdescription', 'I am cool hear me roar', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'nathansmithdeveloper@gmail.com', 'yes'),
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
(18, 'default_category', '2', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:87:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:43:"blog/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:38:"blog/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:19:"blog/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:31:"blog/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:13:"blog/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=8&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '/blog', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'sigblog/resources', 'yes'),
(41, 'stylesheet', 'sigblog/resources', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '0', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '8', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'sig_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'WPLANG', 'en_NZ', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:4:{s:19:"wp_inactive_widgets";a:0:{}s:15:"sidebar-primary";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"sidebar-footer";a:0:{}s:13:"array_version";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'cron', 'a:4:{i:1504596065;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1504596087;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1504596287;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(109, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1501575598;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(140, '_transient_timeout_plugin_slugs', '1504324747', 'no'),
(141, '_transient_plugin_slugs', 'a:4:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:9:"hello.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'no'),
(142, 'recently_activated', 'a:0:{}', 'yes'),
(144, 'widget_akismet_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(153, 'acf_version', '4.4.11', 'yes'),
(160, 'category_children', 'a:0:{}', 'yes'),
(163, '_transient_twentyseventeen_categories', '2', 'yes'),
(166, 'current_theme', 'sigblog', 'yes'),
(167, 'theme_mods_sigblog/resources', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:18:"primary_navigation";i:7;}}', 'yes'),
(168, 'theme_switched', '', 'yes'),
(178, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(184, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:30:"nathansmithdeveloper@gmail.com";s:7:"version";s:5:"4.8.1";s:9:"timestamp";i:1501741949;}', 'no'),
(200, '_site_transient_timeout_browser_b4a9344a45adb3e8041eb375c670f510', '1504485884', 'no'),
(201, '_site_transient_browser_b4a9344a45adb3e8041eb375c670f510', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"59.0.3071.115";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(218, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(249, '_site_transient_timeout_browser_319c48b802c433287a96f2de41019f8d', '1504672687', 'no'),
(250, '_site_transient_browser_319c48b802c433287a96f2de41019f8d', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"60.0.3112.113";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(268, '_site_transient_timeout_community-events-4501c091b0366d76ea3218b6cfdd8097', '1504193728', 'no'),
(269, '_site_transient_community-events-4501c091b0366d76ea3218b6cfdd8097', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:2:"::";}s:6:"events";a:0:{}}', 'no'),
(293, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1504244189', 'no'),
(294, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:"stdClass":100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";i:4370;}s:4:"post";a:3:{s:4:"name";s:4:"post";s:4:"slug";s:4:"post";s:5:"count";i:2497;}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";i:2368;}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";i:2276;}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";i:1828;}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";i:1603;}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";i:1586;}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";i:1439;}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";i:1356;}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";i:1351;}s:8:"facebook";a:3:{s:4:"name";s:8:"facebook";s:4:"slug";s:8:"facebook";s:5:"count";i:1339;}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";i:1273;}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";i:1270;}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";i:1128;}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";i:1054;}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";i:1046;}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";i:996;}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";i:942;}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";i:815;}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";i:813;}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";i:807;}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";i:772;}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";i:770;}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";i:670;}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";i:668;}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";i:663;}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";i:654;}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";i:643;}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";i:643;}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";i:637;}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";i:622;}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";i:607;}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";i:594;}s:4:"ajax";a:3:{s:4:"name";s:4:"ajax";s:4:"slug";s:4:"ajax";s:5:"count";i:593;}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";i:589;}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";i:582;}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";i:574;}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";i:574;}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";i:559;}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";i:553;}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";i:540;}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";i:535;}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";i:522;}s:3:"css";a:3:{s:4:"name";s:3:"css";s:4:"slug";s:3:"css";s:5:"count";i:517;}s:5:"share";a:3:{s:4:"name";s:5:"share";s:4:"slug";s:5:"share";s:5:"count";i:504;}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";i:500;}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";i:494;}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";i:487;}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";i:474;}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";i:472;}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";i:470;}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";i:470;}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";i:446;}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";i:441;}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";i:440;}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";i:438;}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";i:438;}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";i:431;}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";i:418;}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";i:418;}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";i:409;}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";i:405;}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";i:404;}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";i:403;}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";i:401;}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";i:396;}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";i:383;}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";i:383;}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";i:379;}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";i:369;}s:4:"news";a:3:{s:4:"name";s:4:"news";s:4:"slug";s:4:"news";s:5:"count";i:353;}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";i:344;}s:7:"payment";a:3:{s:4:"name";s:7:"payment";s:4:"slug";s:7:"payment";s:5:"count";i:334;}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";i:332;}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";i:332;}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";i:331;}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";i:331;}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";i:327;}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";i:324;}s:5:"popup";a:3:{s:4:"name";s:5:"popup";s:4:"slug";s:5:"popup";s:5:"count";i:324;}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";i:321;}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";i:320;}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";i:320;}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";i:307;}s:4:"chat";a:3:{s:4:"name";s:4:"chat";s:4:"slug";s:4:"chat";s:5:"count";i:300;}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";i:300;}s:8:"redirect";a:3:{s:4:"name";s:8:"redirect";s:4:"slug";s:8:"redirect";s:5:"count";i:297;}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";i:291;}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";i:290;}s:15:"payment-gateway";a:3:{s:4:"name";s:15:"payment gateway";s:4:"slug";s:15:"payment-gateway";s:5:"count";i:289;}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";i:284;}s:5:"forms";a:3:{s:4:"name";s:5:"forms";s:4:"slug";s:5:"forms";s:5:"count";i:283;}s:6:"author";a:3:{s:4:"name";s:6:"author";s:4:"slug";s:6:"author";s:5:"count";i:282;}s:7:"adsense";a:3:{s:4:"name";s:7:"adsense";s:4:"slug";s:7:"adsense";s:5:"count";i:282;}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";i:280;}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";i:277;}s:7:"captcha";a:3:{s:4:"name";s:7:"captcha";s:4:"slug";s:7:"captcha";s:5:"count";i:270;}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";i:270;}s:7:"tinymce";a:3:{s:4:"name";s:7:"tinyMCE";s:4:"slug";s:7:"tinymce";s:5:"count";i:270;}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";i:268;}}', 'no'),
(297, '_site_transient_timeout_available_translations', '1504244298', 'no');
INSERT INTO `sig_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(298, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-28 12:25:41";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-29 08:49:40";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.5/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-30 18:40:55";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.1/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-09 09:24:45";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-08 21:01:45";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 14:28:04";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-27 19:10:04";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-26 06:22:33";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-23 12:13:52";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-23 09:23:18";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-26 06:24:08";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.8.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 10:51:51";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-25 10:03:08";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-25 19:47:01";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-25 17:31:04";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-02 03:57:05";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-26 10:38:53";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-30 16:09:17";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-13 17:00:30";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-01 04:48:11";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-31 15:12:02";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-27 12:42:17";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-28 12:06:36";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-09 15:50:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 11:00:29";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 09:14:18";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-26 13:33:05";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 12:37:07";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-26 12:45:35";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-31 06:54:10";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-18 00:52:02";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 10:29:26";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-22 17:25:42";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 12:45:08";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-13 13:55:54";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-04 08:42:00";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-03 23:23:50";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-06-12 09:20:11";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-22 15:33:00";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.1/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 10:48:16";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 11:02:15";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:3:"4.8";s:7:"updated";s:19:"2017-07-05 19:40:47";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:59:"https://downloads.wordpress.org/translation/core/4.8/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.18/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-02 21:02:39";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-31 08:47:10";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-27 16:44:39";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-17 08:10:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-30 07:58:32";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.8.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-01 07:32:10";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-28 16:21:03";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.18";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.18/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-26 21:35:20";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-14 14:20:07";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 10:26:15";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-29 20:32:20";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-09 13:26:18";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 14:03:23";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-04-24 08:35:30";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.5/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 12:07:44";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-03 22:53:12";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-31 11:38:12";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-10 15:50:30";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-07-28 14:27:29";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.5";s:7:"updated";s:19:"2017-05-13 09:55:38";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.5/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-19 01:07:53";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-03 15:43:25";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-04 07:53:05";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.8.1";s:7:"updated";s:19:"2017-08-14 16:47:28";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(302, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/en_NZ/wordpress-4.8.1.zip";s:6:"locale";s:5:"en_NZ";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/en_NZ/wordpress-4.8.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.8.1";s:7:"version";s:5:"4.8.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1504559255;s:15:"version_checked";s:5:"4.8.1";s:12:"translations";a:0:{}}', 'no'),
(304, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1504585023;s:7:"checked";a:4:{s:17:"sigblog/resources";s:12:"9.0.0-beta.3";s:13:"twentyfifteen";s:3:"1.8";s:15:"twentyseventeen";s:3:"1.3";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(314, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1504559261;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":8:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.3.4";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.3.4.zip";s:6:"tested";s:5:"4.8.1";s:13:"compatibility";O:8:"stdClass":0:{}}}s:12:"translations";a:0:{}s:9:"no_update";a:3:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":6:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"2.2.6";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";}}}', 'no'),
(315, '_site_transient_timeout_theme_roots', '1504586821', 'no'),
(316, '_site_transient_theme_roots', 'a:4:{s:17:"sigblog/resources";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(317, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1504628228', 'no'),
(318, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:"location";a:1:{s:2:"ip";s:9:"127.0.0.0";}s:6:"events";a:0:{}}', 'no'),
(319, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1504628229', 'no'),
(320, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1504628229', 'no'),
(321, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1504585029', 'no'),
(322, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1504628231', 'no'),
(323, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1504628231', 'no'),
(324, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1504585031', 'no'),
(325, '_transient_timeout_dash_v2_b4f9b57f26a94c90aaf68ebc0a62e7a8', '1504628231', 'no'),
(326, '_transient_dash_v2_b4f9b57f26a94c90aaf68ebc0a62e7a8', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/09/the-month-in-wordpress-august-2017/''>The Month in WordPress: August 2017</a></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/09/the-month-in-wordpress-august-2017/''>Dev Blog: The Month in WordPress: August 2017</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wordcamp-grand-rapids-2017-sells-out-organizers-on-board-for-2018-event''>WPTavern: WordCamp Grand Rapids 2017 Sells Out, Organizers On Board for 2018 Event</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/gutenberg-1-0-0-introduces-drag-and-drop-for-adding-image-blocks''>WPTavern: Gutenberg 1.0.0 Introduces Drag and Drop for Adding Image Blocks</a></li></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `sig_postmeta`
--

CREATE TABLE `sig_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_postmeta`
--

INSERT INTO `sig_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 6, '_edit_last', '1'),
(3, 6, '_edit_lock', '1504235599:1'),
(5, 8, '_edit_last', '1'),
(6, 8, '_wp_page_template', 'views/home.blade.php'),
(7, 8, '_edit_lock', '1504156464:1'),
(8, 10, '_edit_last', '1'),
(9, 10, '_wp_page_template', 'views/blog.blade.php'),
(10, 10, '_edit_lock', '1504234001:1'),
(11, 12, '_edit_last', '1'),
(12, 12, '_wp_page_template', 'views/about.blade.php'),
(13, 12, '_edit_lock', '1504236586:1'),
(14, 15, '_menu_item_type', 'post_type'),
(15, 15, '_menu_item_menu_item_parent', '0'),
(16, 15, '_menu_item_object_id', '8'),
(17, 15, '_menu_item_object', 'page'),
(18, 15, '_menu_item_target', ''),
(19, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(20, 15, '_menu_item_xfn', ''),
(21, 15, '_menu_item_url', ''),
(23, 16, '_menu_item_type', 'post_type'),
(24, 16, '_menu_item_menu_item_parent', '0'),
(25, 16, '_menu_item_object_id', '12'),
(26, 16, '_menu_item_object', 'page'),
(27, 16, '_menu_item_target', ''),
(28, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 16, '_menu_item_xfn', ''),
(30, 16, '_menu_item_url', ''),
(32, 17, '_menu_item_type', 'post_type'),
(33, 17, '_menu_item_menu_item_parent', '0'),
(34, 17, '_menu_item_object_id', '10'),
(35, 17, '_menu_item_object', 'page'),
(36, 17, '_menu_item_target', ''),
(37, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(38, 17, '_menu_item_xfn', ''),
(39, 17, '_menu_item_url', ''),
(41, 18, '_menu_item_type', 'post_type'),
(42, 18, '_menu_item_menu_item_parent', '0'),
(43, 18, '_menu_item_object_id', '8'),
(44, 18, '_menu_item_object', 'page'),
(45, 18, '_menu_item_target', ''),
(46, 18, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 18, '_menu_item_xfn', ''),
(48, 18, '_menu_item_url', ''),
(49, 18, '_menu_item_orphaned', '1503881330'),
(50, 19, '_menu_item_type', 'post_type'),
(51, 19, '_menu_item_menu_item_parent', '0'),
(52, 19, '_menu_item_object_id', '2'),
(53, 19, '_menu_item_object', 'page'),
(54, 19, '_menu_item_target', ''),
(55, 19, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(56, 19, '_menu_item_xfn', ''),
(57, 19, '_menu_item_url', ''),
(58, 19, '_menu_item_orphaned', '1503881331'),
(68, 21, '_menu_item_type', 'custom'),
(69, 21, '_menu_item_menu_item_parent', '17'),
(70, 21, '_menu_item_object_id', '21'),
(71, 21, '_menu_item_object', 'custom'),
(72, 21, '_menu_item_target', ''),
(73, 21, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 21, '_menu_item_xfn', ''),
(75, 21, '_menu_item_url', 'http://localhost:3000/sigblog/blog/life'),
(77, 22, '_edit_last', '1'),
(78, 22, 'field_59a3c7c5fe2a0', 'a:11:{s:3:"key";s:19:"field_59a3c7c5fe2a0";s:5:"label";s:5:"Image";s:4:"name";s:11:"about-image";s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:11:"save_format";s:6:"object";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(80, 22, 'position', 'normal'),
(81, 22, 'layout', 'no_box'),
(82, 22, 'hide_on_screen', ''),
(83, 22, '_edit_lock', '1504236566:1'),
(84, 23, '_menu_item_type', 'custom'),
(85, 23, '_menu_item_menu_item_parent', '17'),
(86, 23, '_menu_item_object_id', '23'),
(87, 23, '_menu_item_object', 'custom'),
(88, 23, '_menu_item_target', ''),
(89, 23, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 23, '_menu_item_xfn', ''),
(91, 23, '_menu_item_url', 'http://localhost:3000/sigblog/blog/baby-sprout'),
(93, 24, '_menu_item_type', 'custom'),
(94, 24, '_menu_item_menu_item_parent', '17'),
(95, 24, '_menu_item_object_id', '24'),
(96, 24, '_menu_item_object', 'custom'),
(97, 24, '_menu_item_target', ''),
(98, 24, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 24, '_menu_item_xfn', ''),
(100, 24, '_menu_item_url', 'http://localhost:3000/sigblog/blog/parenthood'),
(102, 25, '_menu_item_type', 'custom'),
(103, 25, '_menu_item_menu_item_parent', '17'),
(104, 25, '_menu_item_object_id', '25'),
(105, 25, '_menu_item_object', 'custom'),
(106, 25, '_menu_item_target', ''),
(107, 25, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 25, '_menu_item_xfn', ''),
(109, 25, '_menu_item_url', 'http://localhost:3000/sigblog/blog/wedding'),
(111, 26, '_edit_last', '1'),
(112, 26, '_edit_lock', '1504234559:1'),
(114, 28, '_edit_last', '1'),
(116, 28, '_edit_lock', '1504234576:1'),
(117, 30, '_edit_last', '1'),
(118, 30, '_edit_lock', '1504234593:1'),
(120, 32, '_edit_last', '1'),
(121, 32, '_edit_lock', '1504234691:1'),
(125, 35, '_wp_attached_file', '2017/08/IMG_20170807_181433.jpg'),
(126, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3480;s:6:"height";i:4640;s:4:"file";s:31:"2017/08/IMG_20170807_181433.jpg";s:5:"sizes";a:5:{s:9:"thumbnail";a:4:{s:4:"file";s:31:"IMG_20170807_181433-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"IMG_20170807_181433-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:32:"IMG_20170807_181433-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"IMG_20170807_181433-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"about-cropped-image";a:4:{s:4:"file";s:31:"IMG_20170807_181433-300x400.jpg";s:5:"width";i:300;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"2";s:6:"credit";s:0:"";s:6:"camera";s:13:"ONEPLUS A3010";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1502129674";s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"4.26";s:3:"iso";s:4:"5000";s:13:"shutter_speed";s:15:"0.0588235294118";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(128, 36, 'about-image', '35'),
(129, 36, '_about-image', 'field_59a3c7c5fe2a0'),
(130, 12, 'about-image', '35'),
(131, 12, '_about-image', 'field_59a3c7c5fe2a0'),
(132, 37, 'about-image', '35'),
(133, 37, '_about-image', 'field_59a3c7c5fe2a0'),
(134, 22, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:21:"views/about.blade.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `sig_posts`
--

CREATE TABLE `sig_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_posts`
--

INSERT INTO `sig_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-08-01 07:21:04', '2017-08-01 07:21:04', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-08-01 07:21:04', '2017-08-01 07:21:04', '', 0, 'http://localhost:8888/sigblog/?p=1', 0, 'post', '', 1),
(2, 1, '2017-08-01 07:21:04', '2017-08-01 07:21:04', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\\n\\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\\n\\n...or something like this:\\n\\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\\n\\nAs a new WordPress user, you should go to <a href="http://localhost:8888/sigblog/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-08-01 07:21:04', '2017-08-01 07:21:04', '', 0, 'http://localhost:8888/sigblog/?page_id=2', 0, 'page', '', 0),
(6, 1, '2017-08-01 07:27:41', '2017-08-01 07:27:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id porta ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent sagittis tellus et mi viverra faucibus et eget dui. Praesent hendrerit, lectus a mattis hendrerit, ligula nibh blandit arcu, quis tempus nibh purus iaculis libero. Sed sed imperdiet urna, sed sollicitudin nunc. Praesent sed massa ut purus sodales pellentesque. Donec ornare massa sit amet malesuada egestas. Mauris consequat vestibulum tincidunt. Etiam luctus, odio a malesuada interdum, urna nisi sagittis augue, id ornare tellus lectus quis elit. Phasellus sollicitudin eros et dolor fringilla dignissim. Nulla blandit purus ultricies, aliquam quam eu, iaculis turpis. Cras sit amet nunc non enim fringilla bibendum elementum dictum erat. Praesent consectetur ex eu ante viverra, id facilisis nisi molestie.\r\n\r\nDonec vel tempus quam. Morbi rhoncus, lorem sed accumsan egestas, metus libero fermentum sem, quis convallis orci ante quis ex. Integer quis imperdiet tortor. Duis nec magna non urna iaculis tempor. In nibh arcu, viverra ac massa sit amet, maximus imperdiet massa. Cras eu dolor mollis arcu aliquet varius mollis id mauris. Ut ut malesuada velit, et posuere sapien. Aenean accumsan commodo consectetur. Pellentesque ac massa scelerisque, tristique risus ut, vestibulum nulla. Nam nec orci nulla. Duis faucibus velit sapien, a tempus purus sollicitudin vel. Fusce id tortor sollicitudin, gravida ex quis, tincidunt mi. Ut ullamcorper rhoncus lacus ac hendrerit.\r\n\r\nPellentesque felis turpis, iaculis eu mollis id, sollicitudin porttitor dolor. Mauris urna mauris, hendrerit ac euismod sit amet, lacinia ac justo. Nunc gravida, lorem ac congue porttitor, mi risus mattis mi, nec elementum nunc quam a est. Nam aliquam ipsum nec sapien aliquam lacinia. Pellentesque ullamcorper orci fermentum leo tristique rhoncus. Donec suscipit sem eu sollicitudin pulvinar. Quisque blandit nulla sit amet vulputate consectetur.', 'Post about life', '', 'publish', 'open', 'open', '', 'post-about-life', '', '', '2017-09-01 03:01:08', '2017-09-01 03:01:08', '', 0, 'http://localhost:8888/sigblog/?p=6', 0, 'post', '', 0),
(7, 1, '2017-08-01 07:27:41', '2017-08-01 07:27:41', 'hey lol', 'Post about life', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-08-01 07:27:41', '2017-08-01 07:27:41', '', 6, 'http://localhost:8888/sigblog/2017/08/01/6-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2017-08-03 07:39:51', '2017-08-03 07:39:51', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-08-31 05:00:34', '2017-08-31 05:00:34', '', 0, 'http://localhost:8888/sigblog/?page_id=8', 0, 'page', '', 0),
(9, 1, '2017-08-03 07:39:51', '2017-08-03 07:39:51', '', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2017-08-03 07:39:51', '2017-08-03 07:39:51', '', 8, 'http://localhost:8888/sigblog/2017/08/03/8-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2017-08-03 07:40:32', '2017-08-03 07:40:32', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2017-09-01 02:43:54', '2017-09-01 02:43:54', '', 0, 'http://localhost:8888/sigblog/?page_id=10', 0, 'page', '', 0),
(11, 1, '2017-08-03 07:40:32', '2017-08-03 07:40:32', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2017-08-03 07:40:32', '2017-08-03 07:40:32', '', 10, 'http://localhost:8888/sigblog/2017/08/03/10-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2017-08-03 07:40:40', '2017-08-03 07:40:40', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere ac ex ut dapibus. Curabitur at nisi in ante vehicula suscipit a sit amet sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed dapibus lacinia pretium. Suspendisse vel fringilla ligula. Morbi posuere, magna congue tincidunt molestie, risus ante vulputate dui, non ultrices libero nisl sit amet lacus. Quisque efficitur porta dictum. Sed posuere augue in ante ultrices aliquam. Maecenas a sem sit amet lorem euismod aliquet. Maecenas sollicitudin luctus felis vel elementum. Sed efficitur ante massa, eget scelerisque dui bibendum a. Aenean imperdiet sapien a velit convallis, eget rhoncus lorem pulvinar. Vestibulum consequat nulla at risus fermentum pellentesque.\r\n\r\nCras felis leo, molestie et lorem sit amet, scelerisque fringilla arcu. Phasellus consectetur enim nec mattis condimentum. Aenean a finibus magna. Morbi dui lectus, iaculis id consequat nec, fermentum cursus purus. Morbi dictum tortor nec mi mollis bibendum quis at quam. Sed consequat sit amet velit at commodo. Praesent at consectetur sem. Suspendisse aliquam consectetur felis, dapibus laoreet nibh consectetur nec. Pellentesque ac lectus a eros mattis facilisis. Curabitur mattis dictum nisl. Etiam at euismod dui. Sed ac libero nisl.\r\n\r\nSuspendisse potenti. Mauris nec tortor et justo congue malesuada sed at quam. Quisque vulputate mauris ac mi commodo porta. Duis at purus nisl. Donec a urna elit. Integer mollis felis a bibendum malesuada. Morbi fringilla suscipit urna et ullamcorper. Ut bibendum nisi in viverra porta. Proin placerat porta posuere. Pellentesque nec ullamcorper quam. Nullam non mattis leo. Nullam ut vestibulum elit, vitae cursus justo.', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2017-09-01 03:29:44', '2017-09-01 03:29:44', '', 0, 'http://localhost:8888/sigblog/?page_id=12', 0, 'page', '', 0),
(13, 1, '2017-08-03 07:40:40', '2017-08-03 07:40:40', '', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-08-03 07:40:40', '2017-08-03 07:40:40', '', 12, 'http://localhost:8888/sigblog/2017/08/03/12-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2017-08-28 00:49:56', '2017-08-28 00:49:56', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=15', 1, 'nav_menu_item', '', 0),
(16, 1, '2017-08-28 00:49:57', '2017-08-28 00:49:57', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=16', 7, 'nav_menu_item', '', 0),
(17, 1, '2017-08-28 00:49:56', '2017-08-28 00:49:56', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=17', 2, 'nav_menu_item', '', 0),
(18, 1, '2017-08-28 00:48:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-08-28 00:48:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/sigblog/?p=18', 1, 'nav_menu_item', '', 0),
(19, 1, '2017-08-28 00:48:50', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-08-28 00:48:50', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/sigblog/?p=19', 1, 'nav_menu_item', '', 0),
(21, 1, '2017-08-28 07:18:45', '2017-08-28 07:18:45', '', 'Life', '', 'publish', 'closed', 'closed', '', 'travel', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=21', 3, 'nav_menu_item', '', 0),
(22, 1, '2017-08-28 07:36:07', '2017-08-28 07:36:07', '', 'Image', '', 'publish', 'closed', 'closed', '', 'acf_image', '', '', '2017-09-01 03:29:26', '2017-09-01 03:29:26', '', 0, 'http://localhost:8888/sigblog/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2017-08-31 04:56:27', '2017-08-31 04:56:27', '', 'Baby Sprout', '', 'publish', 'closed', 'closed', '', 'baby-sprout', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=23', 4, 'nav_menu_item', '', 0),
(24, 1, '2017-08-31 04:56:27', '2017-08-31 04:56:27', '', 'Parenthood', '', 'publish', 'closed', 'closed', '', 'parenthood', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2017-08-31 04:56:27', '2017-08-31 04:56:27', '', 'Wedding', '', 'publish', 'closed', 'closed', '', 'wedding', '', '', '2017-09-05 04:17:15', '2017-09-05 04:17:15', '', 0, 'http://localhost:8888/sigblog/?p=25', 6, 'nav_menu_item', '', 0),
(26, 1, '2017-09-01 02:58:17', '2017-09-01 02:58:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Another one', '', 'publish', 'open', 'open', '', 'another-one', '', '', '2017-09-01 02:58:17', '2017-09-01 02:58:17', '', 0, 'http://localhost:8888/sigblog/?p=26', 0, 'post', '', 0),
(27, 1, '2017-09-01 02:58:17', '2017-09-01 02:58:17', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Another one', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2017-09-01 02:58:17', '2017-09-01 02:58:17', '', 26, 'http://localhost:8888/sigblog/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2017-09-01 02:58:34', '2017-09-01 02:58:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Life post', '', 'publish', 'open', 'open', '', 'life-post', '', '', '2017-09-01 02:58:34', '2017-09-01 02:58:34', '', 0, 'http://localhost:8888/sigblog/?p=28', 0, 'post', '', 0),
(29, 1, '2017-09-01 02:58:34', '2017-09-01 02:58:34', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Life post', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2017-09-01 02:58:34', '2017-09-01 02:58:34', '', 28, 'http://localhost:8888/sigblog/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2017-09-01 02:58:50', '2017-09-01 02:58:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Wedding lols', '', 'publish', 'open', 'open', '', 'wedding-lols', '', '', '2017-09-01 02:58:50', '2017-09-01 02:58:50', '', 0, 'http://localhost:8888/sigblog/?p=30', 0, 'post', '', 0),
(31, 1, '2017-09-01 02:58:50', '2017-09-01 02:58:50', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Wedding lols', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2017-09-01 02:58:50', '2017-09-01 02:58:50', '', 30, 'http://localhost:8888/sigblog/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2017-09-01 02:59:08', '2017-09-01 02:59:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Baby is here', '', 'publish', 'open', 'open', '', 'baby-is-here', '', '', '2017-09-01 02:59:08', '2017-09-01 02:59:08', '', 0, 'http://localhost:8888/sigblog/?p=32', 0, 'post', '', 0),
(33, 1, '2017-09-01 02:59:08', '2017-09-01 02:59:08', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi facilisis vestibulum dapibus. Fusce sit amet lectus nisi. Morbi feugiat eu nibh rhoncus imperdiet. Donec tincidunt turpis metus. In sagittis dui id quam pretium, quis hendrerit ante vehicula. Phasellus volutpat at lacus ac luctus. Donec pulvinar fringilla augue eu cursus. Cras ac vulputate sem.\r\n\r\nNunc scelerisque pellentesque metus. Praesent convallis erat vitae libero eleifend, sit amet imperdiet tellus scelerisque. Sed mattis convallis est nec tempor. Sed dignissim vel nunc at ornare. In ex dui, vehicula quis tincidunt ut, ornare ac magna. Aenean hendrerit sem risus, sed mattis sapien suscipit quis. Curabitur accumsan bibendum nunc, at dictum nibh lacinia quis. Donec condimentum, arcu ut vestibulum auctor, nunc diam accumsan libero, eget dignissim augue lectus vitae sapien. Praesent iaculis libero at placerat pellentesque.\r\n\r\nPhasellus nec felis a diam elementum tincidunt et in turpis. Cras ipsum tortor, finibus ut lacus quis, sollicitudin scelerisque dui. Ut convallis ante ut magna finibus lacinia. Morbi viverra facilisis arcu, sit amet dictum dui sodales a. Duis posuere metus et metus auctor venenatis. Suspendisse vel sapien elit. Curabitur non dolor dui. Nam non lorem ultrices, eleifend elit at, volutpat mi. In ut magna ex. Morbi eget arcu in tortor egestas dapibus. Donec vitae erat ornare, interdum dui congue, tristique risus. Nullam bibendum lectus non ullamcorper semper.', 'Baby is here', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2017-09-01 02:59:08', '2017-09-01 02:59:08', '', 32, 'http://localhost:8888/sigblog/32-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2017-09-01 03:00:46', '2017-09-01 03:00:46', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras id porta ante. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Praesent sagittis tellus et mi viverra faucibus et eget dui. Praesent hendrerit, lectus a mattis hendrerit, ligula nibh blandit arcu, quis tempus nibh purus iaculis libero. Sed sed imperdiet urna, sed sollicitudin nunc. Praesent sed massa ut purus sodales pellentesque. Donec ornare massa sit amet malesuada egestas. Mauris consequat vestibulum tincidunt. Etiam luctus, odio a malesuada interdum, urna nisi sagittis augue, id ornare tellus lectus quis elit. Phasellus sollicitudin eros et dolor fringilla dignissim. Nulla blandit purus ultricies, aliquam quam eu, iaculis turpis. Cras sit amet nunc non enim fringilla bibendum elementum dictum erat. Praesent consectetur ex eu ante viverra, id facilisis nisi molestie.\r\n\r\nDonec vel tempus quam. Morbi rhoncus, lorem sed accumsan egestas, metus libero fermentum sem, quis convallis orci ante quis ex. Integer quis imperdiet tortor. Duis nec magna non urna iaculis tempor. In nibh arcu, viverra ac massa sit amet, maximus imperdiet massa. Cras eu dolor mollis arcu aliquet varius mollis id mauris. Ut ut malesuada velit, et posuere sapien. Aenean accumsan commodo consectetur. Pellentesque ac massa scelerisque, tristique risus ut, vestibulum nulla. Nam nec orci nulla. Duis faucibus velit sapien, a tempus purus sollicitudin vel. Fusce id tortor sollicitudin, gravida ex quis, tincidunt mi. Ut ullamcorper rhoncus lacus ac hendrerit.\r\n\r\nPellentesque felis turpis, iaculis eu mollis id, sollicitudin porttitor dolor. Mauris urna mauris, hendrerit ac euismod sit amet, lacinia ac justo. Nunc gravida, lorem ac congue porttitor, mi risus mattis mi, nec elementum nunc quam a est. Nam aliquam ipsum nec sapien aliquam lacinia. Pellentesque ullamcorper orci fermentum leo tristique rhoncus. Donec suscipit sem eu sollicitudin pulvinar. Quisque blandit nulla sit amet vulputate consectetur.', 'Post about life', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2017-09-01 03:00:46', '2017-09-01 03:00:46', '', 6, 'http://localhost:8888/sigblog/6-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2017-09-01 03:17:30', '2017-09-01 03:17:30', '', 'IMG_20170807_181433', '', 'inherit', 'open', 'closed', '', 'img_20170807_181433', '', '', '2017-09-01 03:17:30', '2017-09-01 03:17:30', '', 12, 'http://localhost:8888/sigblog/wp-content/uploads/2017/08/IMG_20170807_181433.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2017-09-01 03:27:00', '2017-09-01 03:27:00', '', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-01 03:27:00', '2017-09-01 03:27:00', '', 12, 'http://localhost:8888/sigblog/12-revision-v1/', 0, 'revision', '', 0),
(37, 1, '2017-09-01 03:27:21', '2017-09-01 03:27:21', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis posuere ac ex ut dapibus. Curabitur at nisi in ante vehicula suscipit a sit amet sem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed dapibus lacinia pretium. Suspendisse vel fringilla ligula. Morbi posuere, magna congue tincidunt molestie, risus ante vulputate dui, non ultrices libero nisl sit amet lacus. Quisque efficitur porta dictum. Sed posuere augue in ante ultrices aliquam. Maecenas a sem sit amet lorem euismod aliquet. Maecenas sollicitudin luctus felis vel elementum. Sed efficitur ante massa, eget scelerisque dui bibendum a. Aenean imperdiet sapien a velit convallis, eget rhoncus lorem pulvinar. Vestibulum consequat nulla at risus fermentum pellentesque.\r\n\r\nCras felis leo, molestie et lorem sit amet, scelerisque fringilla arcu. Phasellus consectetur enim nec mattis condimentum. Aenean a finibus magna. Morbi dui lectus, iaculis id consequat nec, fermentum cursus purus. Morbi dictum tortor nec mi mollis bibendum quis at quam. Sed consequat sit amet velit at commodo. Praesent at consectetur sem. Suspendisse aliquam consectetur felis, dapibus laoreet nibh consectetur nec. Pellentesque ac lectus a eros mattis facilisis. Curabitur mattis dictum nisl. Etiam at euismod dui. Sed ac libero nisl.\r\n\r\nSuspendisse potenti. Mauris nec tortor et justo congue malesuada sed at quam. Quisque vulputate mauris ac mi commodo porta. Duis at purus nisl. Donec a urna elit. Integer mollis felis a bibendum malesuada. Morbi fringilla suscipit urna et ullamcorper. Ut bibendum nisi in viverra porta. Proin placerat porta posuere. Pellentesque nec ullamcorper quam. Nullam non mattis leo. Nullam ut vestibulum elit, vitae cursus justo.', 'About', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2017-09-01 03:27:21', '2017-09-01 03:27:21', '', 12, 'http://localhost:8888/sigblog/12-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2017-09-05 04:17:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-09-05 04:17:04', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/sigblog/?p=38', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sig_termmeta`
--

CREATE TABLE `sig_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sig_terms`
--

CREATE TABLE `sig_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_terms`
--

INSERT INTO `sig_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Life', 'life', 0),
(3, 'Wedding', 'wedding', 0),
(4, 'Travel', 'travel', 0),
(5, 'Parenthood', 'parenthood', 0),
(6, 'Baby Sprout', 'baby-sprout', 0),
(7, 'Menu 1', 'menu-1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sig_term_relationships`
--

CREATE TABLE `sig_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_term_relationships`
--

INSERT INTO `sig_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(15, 7, 0),
(16, 7, 0),
(17, 7, 0),
(21, 7, 0),
(23, 7, 0),
(24, 7, 0),
(25, 7, 0),
(26, 6, 0),
(28, 2, 0),
(30, 3, 0),
(32, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sig_term_taxonomy`
--

CREATE TABLE `sig_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_term_taxonomy`
--

INSERT INTO `sig_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 1),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 1),
(6, 6, 'category', '', 0, 1),
(7, 7, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `sig_usermeta`
--

CREATE TABLE `sig_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_usermeta`
--

INSERT INTO `sig_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'nathan'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'sig_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'sig_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 1, 'session_tokens', 'a:1:{s:64:"bf6df553dd1fd9c99049ae80911273f1feea4608f00b2581806079c70a50b9df";a:4:{s:10:"expiration";i:1505277486;s:2:"ip";s:3:"::1";s:2:"ua";s:121:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/60.0.3112.113 Safari/537.36";s:5:"login";i:1504067886;}}'),
(16, 1, 'sig_dashboard_quick_press_last_post_id', '38'),
(17, 1, 'community-events-location', 'a:1:{s:2:"ip";s:9:"127.0.0.0";}'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'sig_user-settings', 'post_dfw=off&editor=tinymce&libraryContent=browse'),
(21, 1, 'sig_user-settings-time', '1504235860'),
(22, 1, 'nav_menu_recently_edited', '7'),
(23, 1, 'default_password_nag', '');

-- --------------------------------------------------------

--
-- Table structure for table `sig_users`
--

CREATE TABLE `sig_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sig_users`
--

INSERT INTO `sig_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'nathan', '$P$BGa2u6repD/OzPgGjHINq7qTZiJPx40', 'nathan', 'nathansmithdeveloper@gmail.com', '', '2017-08-01 07:21:04', '', 0, 'nathan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sig_commentmeta`
--
ALTER TABLE `sig_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sig_comments`
--
ALTER TABLE `sig_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `sig_links`
--
ALTER TABLE `sig_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `sig_options`
--
ALTER TABLE `sig_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `sig_postmeta`
--
ALTER TABLE `sig_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sig_posts`
--
ALTER TABLE `sig_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `sig_termmeta`
--
ALTER TABLE `sig_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sig_terms`
--
ALTER TABLE `sig_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `sig_term_relationships`
--
ALTER TABLE `sig_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `sig_term_taxonomy`
--
ALTER TABLE `sig_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `sig_usermeta`
--
ALTER TABLE `sig_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `sig_users`
--
ALTER TABLE `sig_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sig_commentmeta`
--
ALTER TABLE `sig_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sig_comments`
--
ALTER TABLE `sig_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `sig_links`
--
ALTER TABLE `sig_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sig_options`
--
ALTER TABLE `sig_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=327;
--
-- AUTO_INCREMENT for table `sig_postmeta`
--
ALTER TABLE `sig_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `sig_posts`
--
ALTER TABLE `sig_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `sig_termmeta`
--
ALTER TABLE `sig_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `sig_terms`
--
ALTER TABLE `sig_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sig_term_taxonomy`
--
ALTER TABLE `sig_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `sig_usermeta`
--
ALTER TABLE `sig_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `sig_users`
--
ALTER TABLE `sig_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
