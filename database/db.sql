-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Час створення: Квт 13 2021 р., 16:29
-- Версія сервера: 5.7.32
-- Версія PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- База даних: `demo`
--

-- --------------------------------------------------------

--
-- Структура таблиці `dm_commentmeta`
--

CREATE TABLE `dm_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_commentmeta`
--

INSERT INTO `dm_commentmeta` (`meta_id`, `comment_id`, `meta_key`, `meta_value`) VALUES
(1, 6, '_wp_trash_meta_status', '0'),
(2, 6, '_wp_trash_meta_time', '1617728389');

-- --------------------------------------------------------

--
-- Структура таблиці `dm_comments`
--

CREATE TABLE `dm_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_comments`
--

INSERT INTO `dm_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(6, 0, 'Проверка', 'milo@mail.ru', 'http://example.com', '::1', '2021-04-06 19:56:04', '2021-04-06 16:56:04', 'Текст нового комментария', 0, 'trash', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(27, 96, 'admin', 'zmyy.oleg@gmail.com', '', '::1', '2021-04-08 21:11:11', '2021-04-08 18:11:11', 'asd', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 1),
(28, 96, 'admin', 'zmyy.oleg@gmail.com', '', '::1', '2021-04-08 21:11:27', '2021-04-08 18:11:27', '132231123213', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 1),
(29, 96, 'admin', 'zmyy.oleg@gmail.com', '', '::1', '2021-04-08 21:12:18', '2021-04-08 18:12:18', 'test', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 1),
(30, 96, 'admin', 'zmyy.oleg@gmail.com', '', '::1', '2021-04-08 21:12:45', '2021-04-08 18:12:45', 'ads', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 0),
(31, 95, 'admin', 'zmyy.oleg@gmail.com', '', '::1', '2021-04-09 13:28:58', '2021-04-09 10:28:58', 'test', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 1),
(32, 95, 'admin', 'zmyy.oleg@gmail.com', '', '::1', '2021-04-09 13:29:43', '2021-04-09 10:29:43', 'sfdsdsfd', 0, '1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'comment', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `dm_links`
--

CREATE TABLE `dm_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `dm_options`
--

CREATE TABLE `dm_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_options`
--

INSERT INTO `dm_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/owl', 'yes'),
(2, 'home', 'http://localhost:8888/owl', 'yes'),
(3, 'blogname', 'demo', 'yes'),
(4, 'blogdescription', 'Просто ще один сайт на WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'zmyy.oleg@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'M d, Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:98:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=28&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:31:\"cats-show-oop/cats-show-oop.php\";i:1;s:29:\"duplicate-pp/duplicate-pp.php\";i:2;s:47:\"show-current-template/show-current-template.php\";i:3;s:41:\"wordpress-importer/wordpress-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'kitchens-theme', 'yes'),
(41, 'stylesheet', 'kitchens-theme', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:10:\"Categories\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'Europe/Kiev', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '28', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1633110984', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'dm_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'WPLANG', 'uk', 'yes'),
(102, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-posts', 'a:2:{i:2;a:3:{s:5:\"title\";s:12:\"RECENT POSTS\";s:6:\"number\";i:5;s:9:\"show_date\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:4:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:12:\"categories-2\";i:3;s:12:\"foo_widget-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(108, 'cron', 'a:6:{i:1618304185;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1618336585;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1618336600;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618336602;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1618854985;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(109, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:1:{s:22:\"q0KboEJyiU1i0iFbn5ULtc\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BjL4rM/JD5p40D.2lA7eT6pnOGfHYT.\";s:10:\"created_at\";i:1618250038;}}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:34:\"HTTPS запит невдалий.\";}}', 'yes'),
(122, 'theme_mods_twentytwentyone', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1617559170;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(152, 'finished_updating_comment_type', '1', 'yes'),
(153, 'current_theme', 'Kitchens Theme', 'yes'),
(154, 'theme_mods_kitchens-theme', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:4:\"menu\";i:7;}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(164, 'recently_activated', 'a:2:{s:23:\"cats-show/cats-show.php\";i:1618247214;s:21:\"get-cats/get-cats.php\";i:1618069586;}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(201, 'recovery_mode_email_last_sent', '1618250038', 'yes'),
(235, '_transient_health-check-site-status-result', '{\"good\":12,\"recommended\":6,\"critical\":2}', 'yes'),
(254, 'new_admin_email', 'zmyy.oleg@gmail.com', 'yes'),
(258, 'widget_foo_widget', 'a:2:{i:2;a:1:{s:5:\"title\";s:10:\"TAG CLOUDS\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(279, 'widget_tags_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(359, 'category_children', 'a:0:{}', 'yes'),
(434, 'token', 'a:1:{s:5:\"token\";s:36:\"4c55b1b5-e451-4760-92fe-7a2a4fb5e645\";}', 'yes'),
(473, 'show_cats', 'a:6:{s:5:\"token\";s:36:\"4c55b1b5-e451-4760-92fe-7a2a4fb5e645\";s:5:\"image\";s:2:\"on\";s:11:\"description\";s:2:\"on\";s:11:\"temperament\";s:2:\"on\";s:9:\"life_span\";s:2:\"on\";s:13:\"wikipedia_url\";s:2:\"on\";}', 'yes'),
(522, '_site_transient_timeout_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', '1618855016', 'no'),
(523, '_site_transient_php_check_9dfe9c1407d8720f2aa82fbeb25ecdd3', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(530, '_site_transient_timeout_theme_roots', '1618304190', 'no'),
(531, '_site_transient_theme_roots', 'a:5:{s:14:\"kitchens-theme\";s:7:\"/themes\";s:18:\"test/wordpres-demo\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(532, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.7.zip\";s:6:\"locale\";s:2:\"uk\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:60:\"https://downloads.wordpress.org/release/uk/wordpress-5.7.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1618302396;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(533, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618302397;s:7:\"checked\";a:5:{s:14:\"kitchens-theme\";s:5:\"1.0.0\";s:18:\"test/wordpres-demo\";s:5:\"1.0.0\";s:14:\"twentynineteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.7\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.2.0.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.7.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(534, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1618302397;s:7:\"checked\";a:5:{s:23:\"cats-show/cats-show.php\";s:5:\"0.0.1\";s:31:\"cats-show-oop/cats-show-oop.php\";s:5:\"0.0.1\";s:29:\"duplicate-pp/duplicate-pp.php\";s:5:\"3.3.1\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.4.5\";s:41:\"wordpress-importer/wordpress-importer.php\";s:3:\"0.7\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:29:\"duplicate-pp/duplicate-pp.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/duplicate-pp\";s:4:\"slug\";s:12:\"duplicate-pp\";s:6:\"plugin\";s:29:\"duplicate-pp/duplicate-pp.php\";s:11:\"new_version\";s:5:\"3.3.1\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/duplicate-pp/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/duplicate-pp.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/duplicate-pp/assets/icon-256x256.png?rev=2149342\";s:2:\"1x\";s:65:\"https://ps.w.org/duplicate-pp/assets/icon-256x256.png?rev=2149342\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-pp/assets/banner-772x250.jpg?rev=2150735\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.4.5\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.4.5.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:73:\"https://ps.w.org/show-current-template/assets/icon-256x256.png?rev=976031\";s:2:\"1x\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";s:3:\"svg\";s:65:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=976031\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}}s:41:\"wordpress-importer/wordpress-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wordpress-importer\";s:4:\"slug\";s:18:\"wordpress-importer\";s:6:\"plugin\";s:41:\"wordpress-importer/wordpress-importer.php\";s:11:\"new_version\";s:3:\"0.7\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wordpress-importer/\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/plugin/wordpress-importer.0.7.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/wordpress-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/wordpress-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблиці `dm_postmeta`
--

CREATE TABLE `dm_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_postmeta`
--

INSERT INTO `dm_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(4, 6, '_wp_attached_file', '2021/04/about-us.jpg'),
(5, 6, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:550;s:4:\"file\";s:20:\"2021/04/about-us.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"about-us-300x141.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:141;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"about-us-1024x481.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:481;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"about-us-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"about-us-768x361.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:361;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(6, 7, '_wp_attached_file', '2021/04/banner-item-01.jpg'),
(7, 7, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/banner-item-01.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-item-01-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-item-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(8, 8, '_wp_attached_file', '2021/04/banner-item-02.jpg'),
(9, 8, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/banner-item-02.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-item-02-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-item-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(10, 9, '_wp_attached_file', '2021/04/banner-item-03.jpg'),
(11, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/banner-item-03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-item-03-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-item-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(12, 10, '_wp_attached_file', '2021/04/banner-item-04.jpg'),
(13, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/banner-item-04.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-item-04-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-item-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(14, 11, '_wp_attached_file', '2021/04/banner-item-05.jpg'),
(15, 11, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/banner-item-05.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-item-05-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-item-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(16, 12, '_wp_attached_file', '2021/04/banner-item-06.jpg'),
(17, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:520;s:6:\"height\";i:450;s:4:\"file\";s:26:\"2021/04/banner-item-06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"banner-item-06-300x260.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:260;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"banner-item-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(18, 13, '_wp_attached_file', '2021/04/blog-post-01.jpg'),
(19, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:340;s:4:\"file\";s:24:\"2021/04/blog-post-01.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-post-01-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-post-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-post-01-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(20, 14, '_wp_attached_file', '2021/04/blog-post-02.jpg'),
(21, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:340;s:4:\"file\";s:24:\"2021/04/blog-post-02.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-post-02-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-post-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-post-02-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(22, 15, '_wp_attached_file', '2021/04/blog-post-03.jpg'),
(23, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:770;s:6:\"height\";i:340;s:4:\"file\";s:24:\"2021/04/blog-post-03.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"blog-post-03-300x132.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:132;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"blog-post-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"blog-post-03-768x339.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:339;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(24, 16, '_wp_attached_file', '2021/04/blog-thumb-01.jpg'),
(25, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:340;s:4:\"file\";s:25:\"2021/04/blog-thumb-01.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-thumb-01-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-thumb-01-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(26, 17, '_wp_attached_file', '2021/04/blog-thumb-02.jpg'),
(27, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:340;s:4:\"file\";s:25:\"2021/04/blog-thumb-02.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-thumb-02-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-thumb-02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(28, 18, '_wp_attached_file', '2021/04/blog-thumb-03.jpg'),
(29, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:340;s:4:\"file\";s:25:\"2021/04/blog-thumb-03.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-thumb-03-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-thumb-03-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(30, 19, '_wp_attached_file', '2021/04/blog-thumb-04.jpg'),
(31, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:340;s:4:\"file\";s:25:\"2021/04/blog-thumb-04.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-thumb-04-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-thumb-04-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(32, 20, '_wp_attached_file', '2021/04/blog-thumb-05.jpg'),
(33, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:340;s:4:\"file\";s:25:\"2021/04/blog-thumb-05.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-thumb-05-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-thumb-05-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(34, 21, '_wp_attached_file', '2021/04/blog-thumb-06.jpg'),
(35, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:370;s:6:\"height\";i:340;s:4:\"file\";s:25:\"2021/04/blog-thumb-06.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"blog-thumb-06-300x276.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:276;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"blog-thumb-06-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(36, 22, '_wp_attached_file', '2021/04/comment-author-01.jpg'),
(37, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:29:\"2021/04/comment-author-01.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 23, '_wp_attached_file', '2021/04/comment-author-02.jpg'),
(39, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:29:\"2021/04/comment-author-02.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 24, '_wp_attached_file', '2021/04/comment-author-03.jpg'),
(41, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:100;s:6:\"height\";i:100;s:4:\"file\";s:29:\"2021/04/comment-author-03.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 25, '_wp_attached_file', '2021/04/cta-bg.jpg'),
(43, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:143;s:4:\"file\";s:18:\"2021/04/cta-bg.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"cta-bg-300x37.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:37;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"cta-bg-1024x125.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:125;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"cta-bg-150x143.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:143;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"cta-bg-768x94.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 26, '_wp_attached_file', '2021/04/heading-bg.jpg'),
(45, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1580;s:6:\"height\";i:300;s:4:\"file\";s:22:\"2021/04/heading-bg.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"heading-bg-300x57.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:57;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"heading-bg-1024x194.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:194;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"heading-bg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"heading-bg-768x146.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"heading-bg-1536x292.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:292;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(48, 28, '_edit_lock', '1617559554:1'),
(53, 31, '_edit_lock', '1618078456:1'),
(54, 31, '_wp_page_template', 'about.php'),
(55, 34, '_edit_lock', '1617568363:1'),
(56, 36, '_menu_item_type', 'post_type'),
(57, 36, '_menu_item_menu_item_parent', '0'),
(58, 36, '_menu_item_object_id', '28'),
(59, 36, '_menu_item_object', 'page'),
(60, 36, '_menu_item_target', ''),
(61, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 36, '_menu_item_xfn', ''),
(63, 36, '_menu_item_url', ''),
(83, 39, '_menu_item_type', 'post_type'),
(84, 39, '_menu_item_menu_item_parent', '0'),
(85, 39, '_menu_item_object_id', '2'),
(86, 39, '_menu_item_object', 'page'),
(87, 39, '_menu_item_target', ''),
(88, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(89, 39, '_menu_item_xfn', ''),
(90, 39, '_menu_item_url', ''),
(91, 39, '_menu_item_orphaned', '1617568781'),
(95, 2, '_wp_trash_meta_status', 'publish'),
(96, 2, '_wp_trash_meta_time', '1617574073'),
(97, 2, '_wp_desired_post_slug', 'sample-page'),
(228, 2, '_wp_page_template', 'default'),
(229, 2, '_wp_trash_meta_status', 'publish'),
(230, 2, '_wp_trash_meta_time', '1617574073'),
(231, 2, '_wp_desired_post_slug', 'sample-page'),
(232, 3, '_wp_page_template', 'default'),
(234, 31, '_wp_page_template', 'about.php'),
(243, 82, '_menu_item_type', 'post_type'),
(244, 82, '_menu_item_menu_item_parent', '0'),
(245, 82, '_menu_item_object_id', '34'),
(246, 82, '_menu_item_object', 'page'),
(247, 82, '_menu_item_target', ''),
(248, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 82, '_menu_item_xfn', ''),
(250, 82, '_menu_item_url', ''),
(251, 83, '_menu_item_type', 'post_type'),
(252, 83, '_menu_item_menu_item_parent', '0'),
(253, 83, '_menu_item_object_id', '31'),
(254, 83, '_menu_item_object', 'page'),
(255, 83, '_menu_item_target', ''),
(256, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(257, 83, '_menu_item_xfn', ''),
(258, 83, '_menu_item_url', ''),
(297, 86, '_edit_lock', '1617904021:1'),
(299, 86, '_thumbnail_id', '19'),
(300, 88, '_edit_lock', '1617904208:1'),
(301, 88, '_thumbnail_id', '19'),
(304, 88, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic'),
(305, 90, '_edit_lock', '1617904891:1'),
(307, 90, '_thumbnail_id', '16'),
(308, 92, '_edit_lock', '1617904964:1'),
(309, 92, '_thumbnail_id', '17'),
(312, 92, '_wp_old_slug', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres'),
(320, 36, '_wp_old_date', '2021-04-04'),
(321, 94, '_edit_lock', '1617905254:1'),
(322, 94, '_thumbnail_id', '17'),
(324, 95, '_edit_lock', '1617905269:1'),
(325, 95, '_thumbnail_id', '17'),
(327, 96, '_edit_lock', '1618082217:1'),
(328, 96, '_thumbnail_id', '19'),
(330, 97, '_edit_lock', '1617905231:1'),
(331, 97, '_thumbnail_id', '19'),
(333, 98, '_edit_lock', '1617905162:1'),
(334, 98, '_thumbnail_id', '19'),
(336, 99, '_edit_lock', '1617905192:1'),
(337, 99, '_thumbnail_id', '19'),
(339, 100, '_edit_lock', '1617905135:1'),
(340, 100, '_thumbnail_id', '19'),
(342, 101, '_edit_lock', '1617905114:1'),
(343, 101, '_thumbnail_id', '19'),
(346, 101, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic'),
(348, 100, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-2'),
(350, 98, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic'),
(352, 99, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic'),
(354, 97, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic'),
(356, 94, '_wp_old_slug', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres-2'),
(358, 95, '_wp_old_slug', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres-2'),
(360, 96, '_wp_old_slug', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-2');

-- --------------------------------------------------------

--
-- Структура таблиці `dm_posts`
--

CREATE TABLE `dm_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_posts`
--

INSERT INTO `dm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(2, 1, '2021-04-04 20:56:25', '2021-04-04 17:56:25', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://localhost:8888/owl/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2021-04-05 01:07:53', '2021-04-04 22:07:53', '', 0, 'http://localhost:8888/owl/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-04-04 20:56:25', '2021-04-04 17:56:25', '<!-- wp:heading --><h2>Хто ми</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Наша адреса сайту: http://localhost:8888/owl.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Коментарі</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коли відвідувачі залишають коментарі на сайті, ми збираємо дані, що відображаються у формі коментарів, а також IP-адреси відвідувачів та рядку агента-браузера користувача, щоб допомогти виявити спам.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Анонімний рядок, створений за вашою адресою електронної пошти (також називається хеш), може бути наданий службі Gravatar, щоб дізнатись, чи ви його використовуєте. Політика конфіденційності служби Gravatar доступна тут: https://automattic.com/privacy/. Після схвалення вашого коментаря, ваше зображення профілю буде видно для громадськості в контексті вашого коментарю.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Медіафайли</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви завантажуєте зображення на сайт, вам слід уникати завантаження зображень із вбудованими даними про місцезнаходження (EXIF GPS). Відвідувачі сайту можуть завантажувати та витягувати будь-які дані про місцезнаходження із зображень на сайті.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар на нашому сайті, ви можете ввімкнути збереження свого імені, електронної адреси та сайту в файлах cookie. Це для вашої зручності, так що вам не потрібно буде повторно заповнювати ваші дані, коли ви залишатимете наступний коментар. Ці файли cookie зберігатимуться 1 рік.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо у вас є обліковий запис на сайті і ви ввійдете в нього, ми встановимо тимчасовий cookie для визначення підтримки cookies вашим браузером, cookie не містить ніякої особистої інформації і віддаляється при закритті вашого браузера.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Коли ви ввійдете в систему, ми також встановимо декілька файлів cookie, щоб зберегти інформацію про ваш логін та налаштування екрана. Cookie-файли для входу зберігаються 2 дні, а файли cookie-файлів налаштувань екрану - 1 рік. Якщо ви виберете &quot;Запам\'ятати мене&quot;, ваш логін буде зберігатися протягом 2 тижнів. Якщо ви вийдете зі свого облікового запису, файли cookie логіну будуть видалені.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Якщо ви редагуєте або публікуєте статтю, у вашому веб-переглядачі буде збережений додатковий файл cookie. Цей файл cookie не містить особистих даних і просто вказує ідентифікатор статті, яку ви щойно редагували. Його термін дії закінчується через 1 день.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Вбудований вміст з інших веб-сайтів</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Статті на цьому сайті можуть містити вбудований вміст (наприклад: відео, зображення, статті тощо). Вбудований вміст з інших сайтів веде себе так само, як би користувач відвідав інший сайт.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ці сайти можуть збирати дані про вас, використовувати файли cookie, вбудовані додатки відстеження третіх сторін та стежити за вашою взаємодією з цим вбудованим вмістом. Зокрема відстежувати взаємодію з вбудованим вмістом, якщо у вас є обліковий запис і ви увійшли на цей сайт.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>З ким ми ділимося вашими даними</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви запросите скидання паролю, ваш IP буде вказано в email-повідомленні про скидання.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Як довго ми зберігаємо ваші дані</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо ви залишаєте коментар, він та його метадані зберігаються протягом невизначеного терміну. Таким чином, ми можемо автоматично визначати та затверджувати кожен наступний коментар замість того, щоб тримати їх у черзі на модерації.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Для користувачів, які реєструються на нашому сайті (якщо такі є), ми зберігаємо надану ними персональну інформацію у їхньому профілі користувача. Всі користувачі можуть переглядати, редагувати або видаляти свої особисті дані в будь-який час (за винятком того, що вони не можуть змінити своє ім\'я користувача). Адміністратори сайту також можуть переглядати та редагувати цю інформацію.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Які права ви маєте відносно своїх даних</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Якщо у вас є обліковий запис на цьому сайті або ви залишили коментарі, ви можете подати запит на отримання експортованого файлу особистих даних які ми зберігаємо про вас, включаючи всі дані, які ви надали нам. Ви також можете вимагати, щоб ми стерли будь-які особисті дані, які ми маємо щодо вас. Це не включає будь-які дані, які ми зобов\'язані зберігати в адміністративних, правових та цілях безпеки.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Куди ми відправляємо ваші данні</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Пропонований текст: </strong>Коментарі відвідувачів можуть бути перевірені за допомогою служби автоматичного виявлення спаму.</p><!-- /wp:paragraph -->', 'Політика конфіденційності', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-04-04 20:56:25', '2021-04-04 17:56:25', '', 0, 'http://localhost:8888/owl/?page_id=3', 0, 'page', '', 0),
(6, 1, '2021-04-04 21:02:35', '2021-04-04 18:02:35', '', 'about-us', '', 'inherit', 'open', 'closed', '', 'about-us', '', '', '2021-04-04 21:02:35', '2021-04-04 18:02:35', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/about-us.jpg', 0, 'attachment', 'image/jpeg', 0),
(7, 1, '2021-04-04 21:02:36', '2021-04-04 18:02:36', '', 'banner-item-01', '', 'inherit', 'open', 'closed', '', 'banner-item-01', '', '', '2021-04-04 21:02:36', '2021-04-04 18:02:36', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/banner-item-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(8, 1, '2021-04-04 21:02:36', '2021-04-04 18:02:36', '', 'banner-item-02', '', 'inherit', 'open', 'closed', '', 'banner-item-02', '', '', '2021-04-04 21:02:36', '2021-04-04 18:02:36', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/banner-item-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2021-04-04 21:02:37', '2021-04-04 18:02:37', '', 'banner-item-03', '', 'inherit', 'open', 'closed', '', 'banner-item-03', '', '', '2021-04-04 21:02:37', '2021-04-04 18:02:37', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/banner-item-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2021-04-04 21:02:37', '2021-04-04 18:02:37', '', 'banner-item-04', '', 'inherit', 'open', 'closed', '', 'banner-item-04', '', '', '2021-04-04 21:02:37', '2021-04-04 18:02:37', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/banner-item-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2021-04-04 21:02:38', '2021-04-04 18:02:38', '', 'banner-item-05', '', 'inherit', 'open', 'closed', '', 'banner-item-05', '', '', '2021-04-04 21:02:38', '2021-04-04 18:02:38', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/banner-item-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2021-04-04 21:02:38', '2021-04-04 18:02:38', '', 'banner-item-06', '', 'inherit', 'open', 'closed', '', 'banner-item-06', '', '', '2021-04-04 21:02:38', '2021-04-04 18:02:38', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/banner-item-06.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2021-04-04 21:02:39', '2021-04-04 18:02:39', '', 'blog-post-01', '', 'inherit', 'open', 'closed', '', 'blog-post-01', '', '', '2021-04-04 21:02:39', '2021-04-04 18:02:39', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-post-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2021-04-04 21:02:40', '2021-04-04 18:02:40', '', 'blog-post-02', '', 'inherit', 'open', 'closed', '', 'blog-post-02', '', '', '2021-04-04 21:02:40', '2021-04-04 18:02:40', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-post-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2021-04-04 21:02:40', '2021-04-04 18:02:40', '', 'blog-post-03', '', 'inherit', 'open', 'closed', '', 'blog-post-03', '', '', '2021-04-04 21:02:40', '2021-04-04 18:02:40', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-post-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2021-04-04 21:02:41', '2021-04-04 18:02:41', '', 'blog-thumb-01', '', 'inherit', 'open', 'closed', '', 'blog-thumb-01', '', '', '2021-04-04 21:02:41', '2021-04-04 18:02:41', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-thumb-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2021-04-04 21:02:42', '2021-04-04 18:02:42', '', 'blog-thumb-02', '', 'inherit', 'open', 'closed', '', 'blog-thumb-02', '', '', '2021-04-04 21:02:42', '2021-04-04 18:02:42', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-thumb-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2021-04-04 21:02:42', '2021-04-04 18:02:42', '', 'blog-thumb-03', '', 'inherit', 'open', 'closed', '', 'blog-thumb-03', '', '', '2021-04-04 21:02:42', '2021-04-04 18:02:42', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-thumb-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2021-04-04 21:02:43', '2021-04-04 18:02:43', '', 'blog-thumb-04', '', 'inherit', 'open', 'closed', '', 'blog-thumb-04', '', '', '2021-04-04 21:02:43', '2021-04-04 18:02:43', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-thumb-04.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2021-04-04 21:02:43', '2021-04-04 18:02:43', '', 'blog-thumb-05', '', 'inherit', 'open', 'closed', '', 'blog-thumb-05', '', '', '2021-04-04 21:02:43', '2021-04-04 18:02:43', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-thumb-05.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2021-04-04 21:02:44', '2021-04-04 18:02:44', '', 'blog-thumb-06', '', 'inherit', 'open', 'closed', '', 'blog-thumb-06', '', '', '2021-04-04 21:02:44', '2021-04-04 18:02:44', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/blog-thumb-06.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2021-04-04 21:02:44', '2021-04-04 18:02:44', '', 'comment-author-01', '', 'inherit', 'open', 'closed', '', 'comment-author-01', '', '', '2021-04-04 21:02:44', '2021-04-04 18:02:44', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/comment-author-01.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2021-04-04 21:02:45', '2021-04-04 18:02:45', '', 'comment-author-02', '', 'inherit', 'open', 'closed', '', 'comment-author-02', '', '', '2021-04-04 21:02:45', '2021-04-04 18:02:45', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/comment-author-02.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2021-04-04 21:02:45', '2021-04-04 18:02:45', '', 'comment-author-03', '', 'inherit', 'open', 'closed', '', 'comment-author-03', '', '', '2021-04-04 21:02:45', '2021-04-04 18:02:45', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/comment-author-03.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2021-04-04 21:02:46', '2021-04-04 18:02:46', '', 'cta-bg', '', 'inherit', 'open', 'closed', '', 'cta-bg', '', '', '2021-04-04 21:02:46', '2021-04-04 18:02:46', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/cta-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2021-04-04 21:02:46', '2021-04-04 18:02:46', '', 'heading-bg', '', 'inherit', 'open', 'closed', '', 'heading-bg', '', '', '2021-04-04 21:02:46', '2021-04-04 18:02:46', '', 0, 'http://localhost:8888/owl/wp-content/uploads/2021/04/heading-bg.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2021-04-04 21:06:23', '2021-04-04 18:06:23', '', 'Stand blog', '', 'publish', 'closed', 'closed', '', 'stand-blog', '', '', '2021-04-04 21:06:23', '2021-04-04 18:06:23', '', 0, 'http://localhost:8888/owl/?page_id=28', 0, 'page', '', 0),
(29, 1, '2021-04-04 21:06:23', '2021-04-04 18:06:23', '', 'Stand blog', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2021-04-04 21:06:23', '2021-04-04 18:06:23', '', 28, 'http://localhost:8888/owl/?p=29', 0, 'revision', '', 0),
(31, 1, '2021-04-04 23:28:06', '2021-04-04 20:28:06', '<!-- wp:image {\"id\":6,\"width\":838,\"height\":393,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost:8888/owl/wp-content/uploads/2021/04/about-us-1024x481.jpg\" alt=\"\" class=\"wp-image-6\" width=\"838\" height=\"393\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div class=\"row\">\n            <div class=\"col-lg-12\">\n                <img src=\"assets/images/about-us.jpg\" alt=\"\">\n                <p>Please tell your friends about TemplateMo website. Thank you. You can browse through different categories of templates such as <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/business\" target=\"_parent\">business</a>, <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/portfolio\" target=\"_parent\">portfolio</a>, <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/restaurant\" target=\"_parent\">restaurant</a>, etc. Pellentesque quis luctus libero. Maecenas pretium molestie erat, ac tincidunt leo gravida ac. Cras ullamcorper eu ipsum eu sollicitudin. Fusce vitae commodo turpis. Integer ullamcorper purus nec justo mollis fermentum. Nunc imperdiet erat nec lacinia laoreet. <br><br>Maecenas faucibus ullamcorper felis vitae finibus. Nullam at quam ut lacus aliquam tempor vel sed ipsum. Donec pellentesque tincidunt imperdiet. Mauris sit amet justo vulputate, cursus massa congue, vestibulum odio. Aenean elit nunc, gravida in erat sit amet, feugiat viverra leo. Phasellus interdum, diam commodo egestas rhoncus, turpis nisi consectetur nibh, in vehicula eros orci vel neque.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-6\">\n                <h4>Two-One Donec porttitor augue</h4>\n                <p>Quisque bibendum cursus viverra. Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-6\">\n                <h4>Two-Two Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-4 col-md-6\">\n                <h4>1-03 Donec porttitor augue</h4>\n                <p>Quisque bibendum cursus viverra. Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-4 col-md-6\">\n                <h4>2-03 Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-4\">\n                <h4>3-03 Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n\n        <div class=\"row\">\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>01 Four Columns</h4>\n                <p>Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>02 Four Columns</h4>\n                <p>Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>03 Four Columns</h4>\n                <p>Morbi ac interdum metus. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>04 Four Columns</h4>\n                <p>Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-12\">\n                <ul class=\"social-icons\">\n                    <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-behance\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li>\n                </ul>\n            </div>\n        </div>\n<!-- /wp:html -->', 'ABOUT US!', '', 'publish', 'closed', 'closed', '', 'more-about-us', '', '', '2021-04-05 01:07:18', '2021-04-04 22:07:18', '', 0, 'http://localhost:8888/owl/?page_id=31', 0, 'page', '', 0),
(32, 1, '2021-04-04 23:28:06', '2021-04-04 20:28:06', '', 'MORE ABOUT US!', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-04-04 23:28:06', '2021-04-04 20:28:06', '', 31, 'http://localhost:8888/owl/?p=32', 0, 'revision', '', 0),
(33, 1, '2021-04-04 23:33:14', '2021-04-04 20:33:14', '<!-- wp:html -->\n <div class=\"row\">\n            <div class=\"col-lg-12\">\n                <img src=\"assets/images/about-us.jpg\" alt=\"\">\n                <p>Please tell your friends about TemplateMo website. Thank you. You can browse through different categories of templates such as <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/business\" target=\"_parent\">business</a>, <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/portfolio\" target=\"_parent\">portfolio</a>, <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/restaurant\" target=\"_parent\">restaurant</a>, etc. Pellentesque quis luctus libero. Maecenas pretium molestie erat, ac tincidunt leo gravida ac. Cras ullamcorper eu ipsum eu sollicitudin. Fusce vitae commodo turpis. Integer ullamcorper purus nec justo mollis fermentum. Nunc imperdiet erat nec lacinia laoreet. <br><br>Maecenas faucibus ullamcorper felis vitae finibus. Nullam at quam ut lacus aliquam tempor vel sed ipsum. Donec pellentesque tincidunt imperdiet. Mauris sit amet justo vulputate, cursus massa congue, vestibulum odio. Aenean elit nunc, gravida in erat sit amet, feugiat viverra leo. Phasellus interdum, diam commodo egestas rhoncus, turpis nisi consectetur nibh, in vehicula eros orci vel neque.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-6\">\n                <h4>Two-One Donec porttitor augue</h4>\n                <p>Quisque bibendum cursus viverra. Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-6\">\n                <h4>Two-Two Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-4 col-md-6\">\n                <h4>1-03 Donec porttitor augue</h4>\n                <p>Quisque bibendum cursus viverra. Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-4 col-md-6\">\n                <h4>2-03 Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-4\">\n                <h4>3-03 Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n\n        <div class=\"row\">\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>01 Four Columns</h4>\n                <p>Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>02 Four Columns</h4>\n                <p>Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>03 Four Columns</h4>\n                <p>Morbi ac interdum metus. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>04 Four Columns</h4>\n                <p>Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-12\">\n                <ul class=\"social-icons\">\n                    <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-behance\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li>\n                </ul>\n            </div>\n        </div>\n<!-- /wp:html -->', 'MORE ABOUT US!', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-04-04 23:33:14', '2021-04-04 20:33:14', '', 31, 'http://localhost:8888/owl/?p=33', 0, 'revision', '', 0),
(34, 1, '2021-04-04 23:35:04', '2021-04-04 20:35:04', '', 'Blog entries', '', 'publish', 'closed', 'closed', '', 'blog-entries', '', '', '2021-04-04 23:35:04', '2021-04-04 20:35:04', '', 0, 'http://localhost:8888/owl/?page_id=34', 0, 'page', '', 0),
(35, 1, '2021-04-04 23:35:04', '2021-04-04 20:35:04', '', 'Blog entries', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2021-04-04 23:35:04', '2021-04-04 20:35:04', '', 34, 'http://localhost:8888/owl/?p=35', 0, 'revision', '', 0),
(36, 1, '2021-04-08 21:05:18', '2021-04-04 20:43:09', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-04-08 21:05:18', '2021-04-08 18:05:18', '', 0, 'http://localhost:8888/owl/?p=36', 1, 'nav_menu_item', '', 0),
(39, 1, '2021-04-04 23:39:41', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2021-04-04 23:39:41', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/owl/?p=39', 1, 'nav_menu_item', '', 0),
(43, 1, '2021-04-05 01:07:18', '2021-04-04 22:07:18', '<!-- wp:image {\"id\":6,\"width\":838,\"height\":393,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://localhost:8888/owl/wp-content/uploads/2021/04/about-us-1024x481.jpg\" alt=\"\" class=\"wp-image-6\" width=\"838\" height=\"393\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:html -->\n<div class=\"row\">\n            <div class=\"col-lg-12\">\n                <img src=\"assets/images/about-us.jpg\" alt=\"\">\n                <p>Please tell your friends about TemplateMo website. Thank you. You can browse through different categories of templates such as <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/business\" target=\"_parent\">business</a>, <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/portfolio\" target=\"_parent\">portfolio</a>, <a rel=\"nofollow noopener\" href=\"https://templatemo.com/tag/restaurant\" target=\"_parent\">restaurant</a>, etc. Pellentesque quis luctus libero. Maecenas pretium molestie erat, ac tincidunt leo gravida ac. Cras ullamcorper eu ipsum eu sollicitudin. Fusce vitae commodo turpis. Integer ullamcorper purus nec justo mollis fermentum. Nunc imperdiet erat nec lacinia laoreet. <br><br>Maecenas faucibus ullamcorper felis vitae finibus. Nullam at quam ut lacus aliquam tempor vel sed ipsum. Donec pellentesque tincidunt imperdiet. Mauris sit amet justo vulputate, cursus massa congue, vestibulum odio. Aenean elit nunc, gravida in erat sit amet, feugiat viverra leo. Phasellus interdum, diam commodo egestas rhoncus, turpis nisi consectetur nibh, in vehicula eros orci vel neque.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-6\">\n                <h4>Two-One Donec porttitor augue</h4>\n                <p>Quisque bibendum cursus viverra. Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-6\">\n                <h4>Two-Two Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-4 col-md-6\">\n                <h4>1-03 Donec porttitor augue</h4>\n                <p>Quisque bibendum cursus viverra. Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-4 col-md-6\">\n                <h4>2-03 Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-4\">\n                <h4>3-03 Donec porttitor augue</h4>\n                <p>Maecenas et metus nisl. Morbi ac interdum metus. Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n\n        <div class=\"row\">\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>01 Four Columns</h4>\n                <p>Mauris at ex ipsum. Aenean condimentum urna nisl, eget interdum ante euismod vel. Aliquam at metus sit amet nunc dapibus posuere.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>02 Four Columns</h4>\n                <p>Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>03 Four Columns</h4>\n                <p>Morbi ac interdum metus. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n            <div class=\"col-lg-3 col-md-6\">\n                <h4>04 Four Columns</h4>\n                <p>Aliquam erat volutpat. Donec posuere tortor vel volutpat consequat. Mauris sagittis magna vel tellus semper interdum et id sapien.</p>\n            </div>\n        </div>\n\n        <div class=\"row\">\n            <div class=\"col-lg-12\">\n                <ul class=\"social-icons\">\n                    <li><a href=\"#\"><i class=\"fa fa-facebook\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-twitter\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-behance\"></i></a></li>\n                    <li><a href=\"#\"><i class=\"fa fa-linkedin\"></i></a></li>\n                </ul>\n            </div>\n        </div>\n<!-- /wp:html -->', 'ABOUT US!', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2021-04-05 01:07:18', '2021-04-04 22:07:18', '', 31, 'http://localhost:8888/owl/?p=43', 0, 'revision', '', 0),
(44, 1, '2021-04-05 01:07:53', '2021-04-04 22:07:53', '<!-- wp:paragraph -->\n<p>Це приклад сторінки. Від записів у блозі вона відрізняється тим, що залишається на одному місці і відображається в меню сайту (у більшості тем). На сторінці &laquo;Деталі&raquo; власники сайтів зазвичай розповідають про себе потенційним відвідувачам. Наприклад, так:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Привіт! Вдень я кур\'єр, а ввечері &#8212; перспективний актор. Це мій блог. Я живу у Львові, люблю свого пса Джека і Пінаколаду. (І ще потрапляти під дощ.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... чи щось подібне до цього:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Компанія &laquo;Штучки XYZ&raquo; була заснована в 1971 році і з тих пір виготовляє якісні штучки. Компанія знаходиться в Готем-сіті, має штат з більш ніж 2000 співробітників і приносить багато користі жителям Готема.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Перейдіть <a href=\"http://localhost:8888/owl/wp-admin/\">в майстерню</a>, щоб видалити цю сторінку і створити нові. Успіхів!</p>\n<!-- /wp:paragraph -->', 'Зразок сторінки', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2021-04-05 01:07:53', '2021-04-04 22:07:53', '', 2, 'http://localhost:8888/owl/?p=44', 0, 'revision', '', 0),
(82, 1, '2021-04-08 21:05:18', '2021-04-08 17:41:55', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2021-04-08 21:05:18', '2021-04-08 18:05:18', '', 0, 'http://localhost:8888/owl/%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97/', 2, 'nav_menu_item', '', 0),
(83, 1, '2021-04-08 21:05:18', '2021-04-08 17:41:55', ' ', '', '', 'publish', 'closed', 'closed', '', '83', '', '', '2021-04-08 21:05:18', '2021-04-08 18:05:18', '', 0, 'http://localhost:8888/owl/%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97/', 3, 'nav_menu_item', '', 0),
(86, 1, '2021-04-08 20:46:16', '2021-04-08 17:46:16', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', 'Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic', '', '', '2021-04-08 20:46:16', '2021-04-08 17:46:16', '', 0, 'http://localhost:8888/owl/?p=86', 0, 'post', '', 0),
(87, 1, '2021-04-08 20:46:16', '2021-04-08 17:46:16', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', 'Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2021-04-08 20:46:16', '2021-04-08 17:46:16', '', 86, 'http://localhost:8888/owl/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-04-08 20:48:32', '2021-04-08 17:48:32', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '2 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-2', '', '', '2021-04-08 20:48:32', '2021-04-08 17:48:32', '', 0, 'http://localhost:8888/owl/?p=88', 0, 'post', '', 0),
(89, 1, '2021-04-08 20:48:32', '2021-04-08 17:48:32', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '2 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '88-revision-v1', '', '', '2021-04-08 20:48:32', '2021-04-08 17:48:32', '', 88, 'http://localhost:8888/owl/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-04-08 20:52:07', '2021-04-08 17:52:07', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', 'France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'publish', 'open', 'open', '', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres', '', '', '2021-04-08 21:03:52', '2021-04-08 18:03:52', '', 0, 'http://localhost:8888/owl/?p=90', 0, 'post', '', 0),
(91, 1, '2021-04-08 20:52:07', '2021-04-08 17:52:07', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', 'France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'inherit', 'closed', 'closed', '', '90-revision-v1', '', '', '2021-04-08 20:52:07', '2021-04-08 17:52:07', '', 90, 'http://localhost:8888/owl/?p=91', 0, 'revision', '', 0),
(92, 1, '2021-04-08 20:55:13', '2021-04-08 17:55:13', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', '1 France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'publish', 'open', 'open', '', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres-2', '', '', '2021-04-08 20:59:55', '2021-04-08 17:59:55', '', 0, 'http://localhost:8888/owl/?p=92', 0, 'post', '', 0),
(93, 1, '2021-04-08 20:55:13', '2021-04-08 17:55:13', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', '1 France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2021-04-08 20:55:13', '2021-04-08 17:55:13', '', 92, 'http://localhost:8888/owl/?p=93', 0, 'revision', '', 0);
INSERT INTO `dm_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(94, 1, '2021-04-08 21:09:56', '2021-04-08 18:09:56', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', '11 France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'publish', 'open', 'open', '', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres-2-2', '', '', '2021-04-08 21:09:56', '2021-04-08 18:09:56', '', 0, 'http://localhost:8888/owl/?p=94', 0, 'post', '', 0),
(95, 1, '2021-04-08 21:10:11', '2021-04-08 18:10:11', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', '12 France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'publish', 'open', 'open', '', 'france-and-covid-call-my-agent-star-joins-plea-to-reopen-theatres-2-3', '', '', '2021-04-08 21:10:11', '2021-04-08 18:10:11', '', 0, 'http://localhost:8888/owl/?p=95', 0, 'post', '', 2),
(96, 1, '2021-04-08 21:10:23', '2021-04-08 18:10:23', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[show_cats]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '24 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-2-3', '', '', '2021-04-10 21:28:07', '2021-04-10 18:28:07', '', 0, 'http://localhost:8888/owl/?p=96', 0, 'post', '', 4),
(97, 1, '2021-04-08 21:09:32', '2021-04-08 18:09:32', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '111 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-6', '', '', '2021-04-08 21:09:32', '2021-04-08 18:09:32', '', 0, 'http://localhost:8888/owl/?p=97', 0, 'post', '', 0),
(98, 1, '2021-04-08 21:08:22', '2021-04-08 18:08:22', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', 'Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-4', '', '', '2021-04-08 21:08:22', '2021-04-08 18:08:22', '', 0, 'http://localhost:8888/owl/?p=98', 0, 'post', '', 0),
(99, 1, '2021-04-08 21:08:55', '2021-04-08 18:08:55', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '123 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-5', '', '', '2021-04-08 21:08:55', '2021-04-08 18:08:55', '', 0, 'http://localhost:8888/owl/?p=99', 0, 'post', '', 0),
(100, 1, '2021-04-08 21:07:56', '2021-04-08 18:07:56', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '223 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-2-2', '', '', '2021-04-08 21:07:56', '2021-04-08 18:07:56', '', 0, 'http://localhost:8888/owl/?p=100', 0, 'post', '', 0),
(101, 1, '2021-04-08 21:07:35', '2021-04-08 18:07:35', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '12 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'publish', 'open', 'open', '', 'indian-premier-league-the-risks-of-hosting-the-ipl-during-a-pandemic-3', '', '', '2021-04-08 21:07:35', '2021-04-08 18:07:35', '', 0, 'http://localhost:8888/owl/?p=101', 0, 'post', '', 0),
(102, 1, '2021-04-08 21:07:35', '2021-04-08 18:07:35', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '12 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2021-04-08 21:07:35', '2021-04-08 18:07:35', '', 101, 'http://localhost:8888/owl/?p=102', 0, 'revision', '', 0),
(103, 1, '2021-04-08 21:07:56', '2021-04-08 18:07:56', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '223 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '100-revision-v1', '', '', '2021-04-08 21:07:56', '2021-04-08 18:07:56', '', 100, 'http://localhost:8888/owl/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-04-08 21:08:22', '2021-04-08 18:08:22', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', 'Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '98-revision-v1', '', '', '2021-04-08 21:08:22', '2021-04-08 18:08:22', '', 98, 'http://localhost:8888/owl/?p=104', 0, 'revision', '', 0),
(105, 1, '2021-04-08 21:08:55', '2021-04-08 18:08:55', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '123 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2021-04-08 21:08:55', '2021-04-08 18:08:55', '', 99, 'http://localhost:8888/owl/?p=105', 0, 'revision', '', 0),
(106, 1, '2021-04-08 21:09:32', '2021-04-08 18:09:32', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '111 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '97-revision-v1', '', '', '2021-04-08 21:09:32', '2021-04-08 18:09:32', '', 97, 'http://localhost:8888/owl/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-04-08 21:09:56', '2021-04-08 18:09:56', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', '11 France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'inherit', 'closed', 'closed', '', '94-revision-v1', '', '', '2021-04-08 21:09:56', '2021-04-08 18:09:56', '', 94, 'http://localhost:8888/owl/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-04-08 21:10:11', '2021-04-08 18:10:11', '<!-- wp:paragraph -->\n<p><strong>Even in France, a protest about the calculation of unemployment benefits could feel a little niche during a pandemic.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>President Macron has said that some cultural venues and café terraces may start to open from mid-May onwards. But he has also imposed a national lockdown until at least the end of April, to try to stem a new wave of infections.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"I know nothing is easy, and that all the decisions are quite complex, but unfortunately, our government made a choice and it\'s not the choice I would have made,\" says Montel. \"There\'s a way to open our theatres and cinemas. I don\'t know what\'s going to happen in the movie industry over the next few years, so that\'s why they mustn\'t break everything.\"</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading -->\n<h2>A year without culture</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>The Odeon Theatre in Paris, closed since last October, is now a place divided between its working actors and its protesting ones.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In one part of the building, socially distanced rehearsals are continuing; in another, 50 protesters have set up home</p>\n<!-- /wp:paragraph -->', '12 France and Covid: Call My Agent star joins plea to reopen theatres', '\"I\'m here to support my friends who are suffering a lot,\" he told us during a demonstration in Paris.', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2021-04-08 21:10:11', '2021-04-08 18:10:11', '', 95, 'http://localhost:8888/owl/?p=108', 0, 'revision', '', 0),
(109, 1, '2021-04-08 21:10:23', '2021-04-08 18:10:23', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '24 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2021-04-08 21:10:23', '2021-04-08 18:10:23', '', 96, 'http://localhost:8888/owl/?p=109', 0, 'revision', '', 0),
(110, 1, '2021-04-10 17:21:59', '2021-04-10 14:21:59', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[foobar]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '24 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2021-04-10 17:21:59', '2021-04-10 14:21:59', '', 96, 'http://localhost:8888/owl/?p=110', 0, 'revision', '', 0),
(111, 1, '2021-04-10 21:27:29', '2021-04-10 18:27:29', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[show cats]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '24 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2021-04-10 21:27:29', '2021-04-10 18:27:29', '', 96, 'http://localhost:8888/owl/?p=111', 0, 'revision', '', 0),
(112, 1, '2021-04-10 21:27:58', '2021-04-10 18:27:58', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[show_cats]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '24 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2021-04-10 21:27:58', '2021-04-10 18:27:58', '', 96, 'http://localhost:8888/owl/?p=112', 0, 'revision', '', 0),
(113, 1, '2021-04-10 21:28:57', '2021-04-10 18:28:57', '<!-- wp:paragraph -->\n<p><strong>The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.</strong></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>[show_cats]</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Beginning on Friday, the Indian Premier League (IPL) will have eight teams playing&nbsp;<a href=\"https://resources.platform.iplt20.com/IPL/document/2021/03/07/0da8f45b-ec57-4391-9a07-9e4dbff62ff7/VIVO-IPL-2021-MATCH-SCHEDULE.pdf\">52 games at six venues&nbsp;</a>behind closed doors across the country. The final will be played on 30 May.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>The matches will be held in Chennai, Bangalore, Delhi, Mumbai, Kolkata and Ahmedabad. Most of these cities are seeing a sharp uptick in infections and hospitalisations.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>More than 165,000 people have died with Covid-19 in India, and there have been 12.5 million confirmed infections. The country has been averaging more than 90,000 daily cases in April in a second wave largely attributed to laxity in public safety protocols.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A senior official of the Indian cricket board has said he is confident the 14th edition of the IPL will go ahead \"without any problem\".</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Rajiv Shukla, vice-president of the board, told ANI news agency that secure bio-bubbles had been created for the players and other people associated with the tournament, and that they were getting tested for the virus.</p>\n<!-- /wp:paragraph -->', '24 Indian Premier League: The risks of hosting the IPL during a pandemic', 'The richest and most glamorous tournament in world cricket is on schedule in India even as the country battles a deadly second wave of Covid-19 infections.', 'inherit', 'closed', 'closed', '', '96-autosave-v1', '', '', '2021-04-10 21:28:57', '2021-04-10 18:28:57', '', 96, 'http://localhost:8888/owl/?p=113', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `dm_termmeta`
--

CREATE TABLE `dm_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `dm_terms`
--

CREATE TABLE `dm_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_terms`
--

INSERT INTO `dm_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без категорії', '%d0%b1%d0%b5%d0%b7-%d0%ba%d0%b0%d1%82%d0%b5%d0%b3%d0%be%d1%80%d1%96%d1%97', 0),
(2, 'Lifstile', 'lifstile', 0),
(3, 'Lyfestyle', 'lyfestyle', 0),
(4, 'test', 'test', 0),
(5, 'tamplate', 'tamplate', 0),
(6, 'tag1', 'tag1', 0),
(7, 'Menu', 'menu', 0),
(8, 'test', 'test', 0),
(9, 'tag2', 'tag2', 0),
(10, 'google', 'google', 0),
(11, 'covid-19', 'covid-19', 0),
(12, 'Even in France', 'even-in-france', 0),
(13, 'healt', 'healt', 0),
(14, 'travel', 'travel', 0),
(15, 'ovie', 'ovie', 0),
(16, 'movie', 'movie', 0),
(17, 'india', 'india', 0);

-- --------------------------------------------------------

--
-- Структура таблиці `dm_term_relationships`
--

CREATE TABLE `dm_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_term_relationships`
--

INSERT INTO `dm_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(36, 7, 0),
(82, 7, 0),
(83, 7, 0),
(86, 4, 0),
(88, 3, 0),
(88, 8, 0),
(90, 3, 0),
(90, 13, 0),
(92, 3, 0),
(92, 13, 0),
(92, 14, 0),
(94, 3, 0),
(94, 13, 0),
(94, 14, 0),
(95, 3, 0),
(95, 13, 0),
(95, 14, 0),
(96, 3, 0),
(96, 8, 0),
(97, 3, 0),
(97, 17, 0),
(98, 3, 0),
(98, 10, 0),
(99, 4, 0),
(99, 14, 0),
(100, 3, 0),
(100, 8, 0),
(101, 4, 0),
(101, 14, 0),
(101, 16, 0);

-- --------------------------------------------------------

--
-- Структура таблиці `dm_term_taxonomy`
--

CREATE TABLE `dm_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_term_taxonomy`
--

INSERT INTO `dm_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 9),
(4, 4, 'category', '', 0, 3),
(5, 5, 'post_tag', '', 0, 0),
(6, 6, 'post_tag', '', 0, 0),
(7, 7, 'nav_menu', '', 0, 3),
(8, 8, 'post_tag', '', 0, 3),
(9, 9, 'post_tag', '', 0, 0),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 0),
(12, 12, 'post_tag', '', 0, 0),
(13, 13, 'post_tag', '', 0, 4),
(14, 14, 'post_tag', '', 0, 5),
(15, 15, 'post_tag', '', 0, 0),
(16, 16, 'post_tag', '', 0, 1),
(17, 17, 'post_tag', '', 0, 1);

-- --------------------------------------------------------

--
-- Структура таблиці `dm_usermeta`
--

CREATE TABLE `dm_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_usermeta`
--

INSERT INTO `dm_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
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
(12, 1, 'dm_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'dm_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"ed5a0306115728618ecabafe67565f94e5a935d9671e82221e60152817fd866d\";a:4:{s:10:\"expiration\";i:1618424405;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36\";s:5:\"login\";i:1618251605;}}'),
(17, 1, 'dm_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'dm_user-settings', 'libraryContent=browse'),
(19, 1, 'dm_user-settings-time', '1617559428'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '7');

-- --------------------------------------------------------

--
-- Структура таблиці `dm_users`
--

CREATE TABLE `dm_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп даних таблиці `dm_users`
--

INSERT INTO `dm_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BgYXxOSB0oEp0US4d75L5Y54UQHFcA0', 'admin', 'zmyy.oleg@gmail.com', 'http://localhost:8888/owl', '2021-04-04 17:56:24', '', 0, 'admin');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `dm_commentmeta`
--
ALTER TABLE `dm_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `dm_comments`
--
ALTER TABLE `dm_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Індекси таблиці `dm_links`
--
ALTER TABLE `dm_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Індекси таблиці `dm_options`
--
ALTER TABLE `dm_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Індекси таблиці `dm_postmeta`
--
ALTER TABLE `dm_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `dm_posts`
--
ALTER TABLE `dm_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Індекси таблиці `dm_termmeta`
--
ALTER TABLE `dm_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `dm_terms`
--
ALTER TABLE `dm_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Індекси таблиці `dm_term_relationships`
--
ALTER TABLE `dm_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Індекси таблиці `dm_term_taxonomy`
--
ALTER TABLE `dm_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Індекси таблиці `dm_usermeta`
--
ALTER TABLE `dm_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Індекси таблиці `dm_users`
--
ALTER TABLE `dm_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `dm_commentmeta`
--
ALTER TABLE `dm_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `dm_comments`
--
ALTER TABLE `dm_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT для таблиці `dm_links`
--
ALTER TABLE `dm_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `dm_options`
--
ALTER TABLE `dm_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT для таблиці `dm_postmeta`
--
ALTER TABLE `dm_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=367;

--
-- AUTO_INCREMENT для таблиці `dm_posts`
--
ALTER TABLE `dm_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT для таблиці `dm_termmeta`
--
ALTER TABLE `dm_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблиці `dm_terms`
--
ALTER TABLE `dm_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `dm_term_taxonomy`
--
ALTER TABLE `dm_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблиці `dm_usermeta`
--
ALTER TABLE `dm_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблиці `dm_users`
--
ALTER TABLE `dm_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
