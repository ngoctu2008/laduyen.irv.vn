-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 31, 2021 at 02:26 PM
-- Server version: 10.3.30-MariaDB-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `anvhinfo_laduyen`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `main_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'siteinfo',
  `admin_theme` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `susp_reason` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pre_last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pre_last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `pre_last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `main_module`, `admin_theme`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `pre_check_num`, `pre_last_login`, `pre_last_ip`, `pre_last_agent`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 'siteinfo', '', 0, 0, 0, '', '', 0, '', '', 'a0e49e6c025ea7f4b3c316cb8279a8fa', 1635688762, '115.76.51.13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/95.0.4638.54 Safari/537.36 Edg/95.0.1020.40');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_api_credential`
--

CREATE TABLE `nv4_authors_api_credential` (
  `admin_id` int(11) UNSIGNED NOT NULL,
  `credential_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_ident` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_secret` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `credential_ips` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `api_roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0,
  `last_access` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu key API của quản trị';

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_api_role`
--

CREATE TABLE `nv4_authors_api_role` (
  `role_id` smallint(4) NOT NULL,
  `role_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `edittime` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu quyền truy cập API';

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `begintime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `endtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT 0,
  `act_1` tinyint(4) NOT NULL DEFAULT 0,
  `act_2` tinyint(4) NOT NULL DEFAULT 1,
  `act_3` tinyint(4) NOT NULL DEFAULT 1,
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '565a04ed1e49d260be7334ac2972d07d'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, '1812e3ef6d6aad2d147103ed9b681cb0'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, '6ddbec71fff99b38ff0e3f04e44f86d3'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '3a3dbaa7762464bac61dcbaa56c3b1a5'),
(5, 'webtools', 'mod_webtools', 5, 1, 1, 0, '5583f9b2d34c60d760b3da2e4681254f'),
(6, 'seotools', 'mod_seotools', 6, 1, 1, 0, '2828a7ae4175740c7dfc031a620a6a63'),
(7, 'language', 'mod_language', 7, 1, 1, 0, '78d0ab4be9a506e357e0d0fc1ecb4ea5'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, '7e3add21828a77f2a81f4519a465e69c'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '9f380b5070315f9f7fa266c81be6cf99'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '4139fcb63d76118d41953e0d1b8467c4'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '5cc87ad17c91fdd250594d6abebfd900'),
(12, 'zalo', 'mod_zalo', 12, 1, 1, 1, 'c1f4b79cc320c9803e7f770f6111e823');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_oauth`
--

CREATE TABLE `nv4_authors_oauth` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) UNSIGNED NOT NULL COMMENT 'ID của quản trị',
  `oauth_server` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Eg: facebook, google...',
  `oauth_uid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'ID duy nhất ứng với server',
  `oauth_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Email',
  `oauth_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Bảng lưu xác thực 2 bước từ oauth của admin';

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `id` int(11) UNSIGNED NOT NULL,
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(46) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_image` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uploadgroup` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`, `require_image`, `uploadtype`, `uploadgroup`, `exp_time`) VALUES
(1, '', 'Mid-page ad block', '', 'sequential', 1575, 270, 1, 1, 'images', '', 0),
(2, '', 'Left-column ad block', '', 'sequential', 212, 800, 1, 1, 'images', '', 0),
(3, '', 'Right-column ad block', '', 'random', 250, 500, 1, 1, 'images', '', 0),
(4, '', 'Banner', '', 'sequential', 750, 250, 1, 1, '', '', 0),
(5, '', 'Hải sản', '', 'random_one', 250, 250, 1, 1, '', '', 0),
(6, '', 'Nông sản', '', 'random_one', 250, 250, 1, 1, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `height` int(4) UNSIGNED NOT NULL DEFAULT 0,
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `bannerhtml` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `bannerhtml`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(1, 'Mid-page advertisement', 1, 1, 'banner.png', 'png', 'image/png', 1110, 270, '', 'about.png', 'http://webnhanh.vn', '_blank', '', 1635516608, 1635516600, 0, 0, 1, 1),
(2, 'Left-column advertisement', 2, 1, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', '', 1635516608, 1635516608, 0, 0, 1, 2),
(3, '1', 4, 1, 'banner_coltab3_1.png', 'png', 'image/png', 555, 160, '', '', '', '_blank', '', 1635686130, 1635686130, 0, 0, 1, 1),
(4, '2', 4, 1, 'banner_coltab3_2.png', 'png', 'image/png', 555, 160, '', '', '', '_blank', '', 1635686147, 1635686147, 0, 0, 1, 2),
(5, 'hải sản', 5, 1, 'banner_coll_1.jpg', 'png', 'image/png', 387, 218, '', '', '', '_blank', '', 1635686400, 1635686400, 0, 0, 1, 0),
(6, 'Nông sản', 6, 1, 'banner_coll_2.jpg', 'png', 'image/png', 387, 218, '', '', '', '_blank', '', 1635686413, 1635686413, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'site_phone', ''),
('sys', 'site', 'mailer_mode', 'mail'),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'verify_peer_ssl', '1'),
('sys', 'site', 'verify_peer_name_ssl', '1'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'sender_name', ''),
('sys', 'site', 'sender_email', ''),
('sys', 'site', 'reply_name', ''),
('sys', 'site', 'reply_email', ''),
('sys', 'site', 'force_sender', '0'),
('sys', 'site', 'force_reply', '0'),
('sys', 'site', 'notify_email_error', '0'),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'googleAnalytics4ID', ''),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'zaloOfficialAccountID', ''),
('sys', 'site', 'zaloAppID', ''),
('sys', 'site', 'zaloAppSecretKey', ''),
('sys', 'site', 'zaloOAAccessToken', ''),
('sys', 'site', 'zaloOARefreshToken', ''),
('sys', 'site', 'zaloOAAccessTokenTime', '0'),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'site', 'nv_unickmin', '4'),
('sys', 'site', 'nv_unickmax', '20'),
('sys', 'site', 'nv_upassmin', '8'),
('sys', 'site', 'nv_upassmax', '32'),
('sys', 'site', 'dir_forum', ''),
('sys', 'site', 'nv_unick_type', '4'),
('sys', 'site', 'nv_upass_type', '3'),
('sys', 'site', 'allowmailchange', '1'),
('sys', 'site', 'allowuserpublic', '1'),
('sys', 'site', 'allowquestion', '0'),
('sys', 'site', 'allowloginchange', '0'),
('sys', 'site', 'allowuserlogin', '1'),
('sys', 'site', 'allowuserloginmulti', '0'),
('sys', 'site', 'allowuserreg', '2'),
('sys', 'site', 'is_user_forum', '0'),
('sys', 'site', 'openid_servers', ''),
('sys', 'site', 'openid_processing', 'connect,create,auto'),
('sys', 'site', 'user_check_pass_time', '1800'),
('sys', 'site', 'auto_login_after_reg', '1'),
('sys', 'site', 'whoviewuser', '2'),
('sys', 'site', 'ssl_https', '0'),
('sys', 'site', 'facebook_client_id', ''),
('sys', 'site', 'facebook_client_secret', ''),
('sys', 'site', 'google_client_id', ''),
('sys', 'site', 'google_client_secret', ''),
('sys', 'site', 'referer_blocker', '1'),
('sys', 'site', 'private_site', '0'),
('sys', 'site', 'max_user_admin', '0'),
('sys', 'site', 'max_user_number', '0'),
('sys', 'site', 'captcha_area', 'r,m,p'),
('sys', 'site', 'captcha_type', 'captcha'),
('sys', 'site', 'dkim_included', 'sendmail,mail'),
('sys', 'site', 'smime_included', 'sendmail,mail'),
('sys', 'site', 'nv_csp', 'script-src &#039;self&#039; *.google.com *.google-analytics.com *.googletagmanager.com *.gstatic.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me *.zaloapp.com *.tawk.to &#039;unsafe-inline&#039; &#039;unsafe-hashes&#039; &#039;unsafe-eval&#039;;object-src &#039;self&#039;;style-src &#039;self&#039; *.google.com *.googleapis.com *.tawk.to &#039;unsafe-inline&#039;;img-src &#039;self&#039; data: *.twitter.com *.google.com *.googleapis.com *.gstatic.com *.facebook.com tawk.link *.tawk.to static.nukeviet.vn;media-src &#039;self&#039; *.tawk.to;frame-src &#039;self&#039; *.google.com *.youtube.com *.facebook.com *.facebook.net *.twitter.com *.zalo.me;font-src &#039;self&#039; *.googleapis.com *.gstatic.com *.tawk.to;connect-src &#039;self&#039; *.zalo.me *.tawk.to wss://*.tawk.to;form-action &#039;self&#039; *.google.com;base-uri &#039;self&#039;;'),
('sys', 'site', 'nv_csp_act', '1'),
('sys', 'site', 'nv_rp', 'no-referrer-when-downgrade, strict-origin-when-cross-origin'),
('sys', 'site', 'nv_rp_act', '1'),
('sys', 'site', 'ogp_image', ''),
('sys', 'define', 'nv_gfx_num', '6'),
('sys', 'global', 'closed_site', '0'),
('sys', 'global', 'site_reopening_time', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'htm,html,htmls,js,php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', 'application/ecmascript,application/javascript,application/x-javascript,text/ecmascript,text/html,text/javascript,application/x-httpd-php,application/x-httpd-php-source,application/php,application/x-php,text/php,text/x-php'),
('sys', 'global', 'nv_max_size', '134217728'),
('sys', 'global', 'nv_overflow_size', '0'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'upload_chunk_size', '0'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_enable', '1'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'home'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'timestamp', '1635688767'),
('sys', 'global', 'version', '4.5.00'),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'cookie_SameSite', 'Lax'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'is_login_blocker', '1'),
('sys', 'global', 'login_number_tracking', '5'),
('sys', 'global', 'login_time_tracking', '5'),
('sys', 'global', 'login_time_ban', '30'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'nv_static_url', ''),
('sys', 'global', 'cdn_url', ''),
('sys', 'global', 'two_step_verification', '0'),
('sys', 'global', 'admin_2step_opt', 'code'),
('sys', 'global', 'admin_2step_default', 'code'),
('sys', 'global', 'recaptcha_sitekey', ''),
('sys', 'global', 'recaptcha_secretkey', ''),
('sys', 'global', 'recaptcha_type', 'image'),
('sys', 'global', 'recaptcha_ver', '2'),
('sys', 'global', 'users_special', '0'),
('sys', 'global', 'crosssite_restrict', '1'),
('sys', 'global', 'crosssite_valid_domains', ''),
('sys', 'global', 'crosssite_valid_ips', ''),
('sys', 'global', 'crossadmin_restrict', '1'),
('sys', 'global', 'crossadmin_valid_domains', ''),
('sys', 'global', 'crossadmin_valid_ips', ''),
('sys', 'global', 'domains_whitelist', '[\"youtube.com\",\"www.youtube.com\",\"google.com\",\"www.google.com\",\"drive.google.com\",\"docs.google.com\"]'),
('sys', 'global', 'domains_restrict', '1'),
('sys', 'global', 'remote_api_access', '0'),
('sys', 'global', 'remote_api_log', '1'),
('sys', 'global', 'allow_null_origin', '0'),
('sys', 'global', 'ip_allow_null_origin', ''),
('sys', 'global', 'cookie_notice_popup', '0'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_mobile_mode_img', '480'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '1'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'nv_debug', '1'),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Lá Duyên'),
('vi', 'global', 'site_logo', 'uploads/laduyen.png'),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', 'uploads/laduyen.png'),
('vi', 'global', 'site_description', 'Chia sẻ thành công, kết nối đam mê'),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r,m'),
('vi', 'global', 'site_theme', 'web24'),
('vi', 'global', 'preview_theme', ''),
('vi', 'global', 'user_allowed_theme', ''),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'home'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1635689863'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha_area_comm', '1'),
('vi', 'about', 'perpagecomm', '5'),
('vi', 'about', 'timeoutcomm', '360'),
('vi', 'about', 'allowattachcomm', '0'),
('vi', 'about', 'alloweditorcomm', '0'),
('vi', 'news', 'indexfile', 'viewcat_page_new'),
('vi', 'news', 'mobile_indexfile', 'viewcat_page_new'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '100'),
('vi', 'news', 'homeheight', '150'),
('vi', 'news', 'blockwidth', '70'),
('vi', 'news', 'blockheight', '75'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '1'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating', '1'),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', 'facebook,twitter'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '0'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'keywords_tag', '1'),
('vi', 'news', 'copy_news', '0'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'htmlhometext', '0'),
('vi', 'news', 'order_articles', '0'),
('vi', 'news', 'identify_cat_change', '0'),
('vi', 'news', 'elas_use', '0'),
('vi', 'news', 'elas_host', ''),
('vi', 'news', 'elas_port', '9200'),
('vi', 'news', 'elas_index', ''),
('vi', 'news', 'instant_articles_active', '0'),
('vi', 'news', 'instant_articles_template', 'default'),
('vi', 'news', 'instant_articles_httpauth', '0'),
('vi', 'news', 'instant_articles_username', ''),
('vi', 'news', 'instant_articles_password', ''),
('vi', 'news', 'instant_articles_livetime', '60'),
('vi', 'news', 'instant_articles_gettime', '120'),
('vi', 'news', 'instant_articles_auto', '1'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '0'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha_area_comm', '1'),
('vi', 'news', 'perpagecomm', '5'),
('vi', 'news', 'timeoutcomm', '360'),
('vi', 'news', 'allowattachcomm', '0'),
('vi', 'news', 'alloweditorcomm', '0'),
('vi', 'news', 'frontend_edit_alias', '0'),
('vi', 'news', 'frontend_edit_layout', '1'),
('vi', 'news', 'captcha_type', 'captcha'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('vi', 'contact', 'sendcopymode', '0'),
('vi', 'contact', 'captcha_type', 'captcha'),
('vi', 'voting', 'difftimeout', '3600'),
('vi', 'voting', 'captcha_type', 'captcha'),
('sys', 'banners', 'captcha_type', 'captcha'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '0'),
('vi', 'page', 'emailcomm', '0'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha_area_comm', '1'),
('vi', 'page', 'perpagecomm', '5'),
('vi', 'page', 'timeoutcomm', '360'),
('vi', 'page', 'allowattachcomm', '0'),
('vi', 'page', 'alloweditorcomm', '0'),
('vi', 'comment', 'captcha_type', 'captcha'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha_area_comm', '1'),
('vi', 'siteterms', 'perpagecomm', '5'),
('vi', 'siteterms', 'timeoutcomm', '360'),
('vi', 'siteterms', 'allowattachcomm', '0'),
('vi', 'siteterms', 'alloweditorcomm', '0'),
('vi', 'freecontent', 'next_execute', '0'),
('sys', 'site', 'statistics_timezone', 'Asia/Ho_Chi_Minh'),
('sys', 'site', 'site_email', 'webmaster@laduyen.anvh.info'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'webmaster@laduyen.anvh.info'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'laduyen.anvh.info'),
('sys', 'global', 'cookie_prefix', 'nv4'),
('sys', 'global', 'session_prefix', 'nv4s_z4d2dd'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'SQKsZ3stv0vzCX-gY9Q7YA,,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'review_check', '1'),
('vi', 'shops', 'review_active', '1'),
('vi', 'shops', 'money_to_point', '0'),
('vi', 'shops', 'image_size', '250x250'),
('vi', 'shops', 'home_data', 'cat'),
('vi', 'shops', 'home_view', 'viewgrid'),
('vi', 'shops', 'per_page', '6'),
('vi', 'shops', 'per_row', '3'),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'weight_unit', 'g'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'format_order_id', 'S%06s'),
('vi', 'shops', 'format_code_id', 'S%06s'),
('vi', 'shops', 'facebookappid', ''),
('vi', 'shops', 'active_guest_order', '1'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'active_order', '0'),
('vi', 'shops', 'active_order_popup', '1'),
('vi', 'shops', 'active_order_non_detail', '1'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'order_day', '0'),
('vi', 'shops', 'order_nexttime', '0'),
('vi', 'shops', 'active_payment', '0'),
('vi', 'shops', 'groups_price', '3'),
('vi', 'shops', 'active_tooltip', '0'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'show_product_code', '1'),
('vi', 'shops', 'show_compare', '0'),
('vi', 'shops', 'show_displays', '0'),
('vi', 'shops', 'use_shipping', '0'),
('vi', 'shops', 'use_coupons', '0'),
('vi', 'shops', 'active_wishlist', '0'),
('vi', 'shops', 'active_gift', '1'),
('vi', 'shops', 'active_warehouse', '0'),
('vi', 'shops', 'tags_alias', '0'),
('vi', 'shops', 'auto_tags', '1'),
('vi', 'shops', 'tags_remind', '0'),
('vi', 'shops', 'point_active', '0'),
('vi', 'shops', 'point_conversion', '0'),
('vi', 'shops', 'point_new_order', '0'),
('vi', 'shops', 'review_captcha', '1'),
('vi', 'shops', 'group_price', ''),
('vi', 'shops', 'groups_notify', '3'),
('vi', 'shops', 'template_active', '0'),
('vi', 'shops', 'download_active', '0'),
('vi', 'shops', 'download_groups', '6'),
('vi', 'shops', 'saleprice_active', '0'),
('vi', 'shops', 'sortdefault', '0'),
('vi', 'shops', 'alias_lower', '1'),
('vi', 'shops', 'auto_postcomm', '1'),
('vi', 'shops', 'allowed_comm', '-1'),
('vi', 'shops', 'view_comm', '6'),
('vi', 'shops', 'setcomm', '4'),
('vi', 'shops', 'activecomm', '1'),
('vi', 'shops', 'emailcomm', '0'),
('vi', 'shops', 'adminscomm', ''),
('vi', 'shops', 'sortcomm', '0'),
('vi', 'shops', 'captcha', '1'),
('vi', 'shops', 'allowattachcomm', '0'),
('vi', 'shops', 'alloweditorcomm', '0'),
('vi', 'shops', 'captcha_area_comm', '0'),
('vi', 'shop', 'image_size', '250x250'),
('vi', 'shop', 'home_data', 'cat'),
('vi', 'shop', 'home_view', 'viewgrid'),
('vi', 'shop', 'per_page', '3'),
('vi', 'shop', 'per_row', '3'),
('vi', 'shop', 'money_unit', 'VND'),
('vi', 'shop', 'weight_unit', 'g'),
('vi', 'shop', 'post_auto_member', '0'),
('vi', 'shop', 'auto_check_order', '1'),
('vi', 'shop', 'format_order_id', 'S%06s'),
('vi', 'shop', 'format_code_id', 'S%06s'),
('vi', 'shop', 'facebookappid', ''),
('vi', 'shop', 'active_guest_order', '1'),
('vi', 'shop', 'active_showhomtext', '1'),
('vi', 'shop', 'active_order', '0'),
('vi', 'shop', 'active_order_popup', '1'),
('vi', 'shop', 'active_order_non_detail', '1'),
('vi', 'shop', 'active_price', '1'),
('vi', 'shop', 'active_order_number', '0'),
('vi', 'shop', 'order_day', '0'),
('vi', 'shop', 'order_nexttime', '0'),
('vi', 'shop', 'active_payment', '0'),
('vi', 'shop', 'groups_price', '3'),
('vi', 'shop', 'active_tooltip', '0'),
('vi', 'shop', 'timecheckstatus', '0'),
('vi', 'shop', 'show_product_code', '1'),
('vi', 'shop', 'show_compare', '0'),
('vi', 'shop', 'show_displays', '0'),
('vi', 'shop', 'use_shipping', '0'),
('vi', 'shop', 'use_coupons', '0'),
('vi', 'shop', 'active_wishlist', '0'),
('vi', 'shop', 'active_gift', '1'),
('vi', 'shop', 'active_warehouse', '0'),
('vi', 'shop', 'tags_alias', '0'),
('vi', 'shop', 'auto_tags', '1'),
('vi', 'shop', 'tags_remind', '0'),
('vi', 'shop', 'point_active', '0'),
('vi', 'shop', 'point_conversion', '0'),
('vi', 'shop', 'point_new_order', '0'),
('vi', 'shop', 'money_to_point', '0'),
('vi', 'shop', 'review_active', '1'),
('vi', 'shop', 'review_check', '1'),
('vi', 'shop', 'review_captcha', '1'),
('vi', 'shop', 'group_price', ''),
('vi', 'shop', 'groups_notify', '3'),
('vi', 'shop', 'template_active', '0'),
('vi', 'shop', 'download_active', '0'),
('vi', 'shop', 'download_groups', '6'),
('vi', 'shop', 'saleprice_active', '0'),
('vi', 'shop', 'sortdefault', '0'),
('vi', 'shop', 'alias_lower', '1'),
('vi', 'shop', 'auto_postcomm', '1'),
('vi', 'shop', 'allowed_comm', '-1'),
('vi', 'shop', 'view_comm', '6'),
('vi', 'shop', 'setcomm', '4'),
('vi', 'shop', 'activecomm', '1'),
('vi', 'shop', 'emailcomm', '0'),
('vi', 'shop', 'adminscomm', ''),
('vi', 'shop', 'sortcomm', '0'),
('vi', 'shop', 'captcha', '1'),
('vi', 'shop', 'allowattachcomm', '0'),
('vi', 'shop', 'alloweditorcomm', '0'),
('vi', 'shop', 'captcha_area_comm', '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT 0,
  `secure` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cookies`
--

INSERT INTO `nv4_cookies` (`name`, `value`, `domain`, `path`, `expires`, `secure`) VALUES
('nv4c_b1Sp_ctr', 'MmEwMl80NzgwXzNfNV9fZC5MVA==', '.api.nukeviet.vn', '/', 1667054589, 0),
('nv4c_b1Sp_u_lang', 'YpTSHDtzEZZlnKC1-4-mDQ,,', '.api.nukeviet.vn', '/', 1666622589, 0),
('nv4c_b1Sp_statistic_vi', 'gw8DYhI_gJth2mb16IIzqw,,', '.api.nukeviet.vn', '/', 1635520389, 0),
('nv4c_b1Sp_nvvithemever', 'y6z0B4S1YKW4aqQyD0bnVQ,,', '.api.nukeviet.vn', '/', 1666622589, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT 0,
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1635688756, 0),
('total', 'hits', 1635688756, 169, 169),
('year', '2021', 1635688756, 169, 169),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('year', '2025', 0, 0, 0),
('year', '2026', 0, 0, 0),
('year', '2027', 0, 0, 0),
('year', '2028', 0, 0, 0),
('year', '2029', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 0, 0, 0),
('month', 'Jul', 0, 0, 0),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 1635688756, 169, 169),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 0, 0, 0),
('day', '02', 0, 0, 0),
('day', '03', 0, 0, 0),
('day', '04', 0, 0, 0),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 0, 0, 0),
('day', '29', 1635525499, 34, 34),
('day', '30', 1635612686, 43, 43),
('day', '31', 1635688756, 92, 92),
('dayofweek', 'Sunday', 1635688756, 92, 92),
('dayofweek', 'Monday', 0, 0, 0),
('dayofweek', 'Tuesday', 0, 0, 0),
('dayofweek', 'Wednesday', 0, 0, 0),
('dayofweek', 'Thursday', 0, 0, 0),
('dayofweek', 'Friday', 1635525499, 34, 34),
('dayofweek', 'Saturday', 1635612686, 43, 43),
('hour', '00', 1635615986, 5, 5),
('hour', '01', 1635532874, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 1635635409, 1, 1),
('hour', '07', 1635640929, 2, 2),
('hour', '08', 1635642493, 6, 6),
('hour', '09', 1635648612, 15, 15),
('hour', '10', 1635651951, 1, 1),
('hour', '11', 1635655158, 3, 3),
('hour', '12', 1635659222, 25, 25),
('hour', '13', 1635663485, 2, 2),
('hour', '14', 1635666587, 2, 2),
('hour', '15', 1635668291, 2, 2),
('hour', '16', 1635673513, 8, 8),
('hour', '17', 1635676794, 3, 3),
('hour', '18', 1635678645, 1, 1),
('hour', '19', 1635684684, 11, 11),
('hour', '20', 1635688756, 5, 5),
('hour', '21', 1635605875, 0, 0),
('hour', '22', 1635608798, 0, 0),
('hour', '23', 1635612686, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 1635673429, 1, 1),
('browser', 'edge', 1635688756, 61, 61),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 1635579790, 3, 3),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 1635528748, 4, 4),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 1635688265, 21, 21),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1635686698, 33, 33),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 1635683007, 1, 1),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 1635684584, 39, 39),
('os', 'unknown', 1635684584, 39, 39),
('os', 'win', 1635648361, 4, 4),
('os', 'win10', 1635688756, 88, 88),
('os', 'win8', 0, 0, 0),
('os', 'win7', 1635686698, 5, 5),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 1635579790, 3, 3),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 1635688265, 21, 21),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 1635635409, 1, 1),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 1635663763, 8, 8),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 1635663763, 1, 1),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 1635579790, 2, 2),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 1635521280, 1, 1),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 1635615986, 6, 6),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 1635648361, 8, 8),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 1635684584, 29, 29),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 1635688756, 120, 120),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1635647238, 2, 2),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inter_val_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Lặp lại sau thời điểm bắt đầu thực tế, 1:lặp lại sau thời điểm bắt đầu trong CSDL',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `inter_val_type`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1635516608, 5, 0, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1635689563, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1635516608, 1440, 0, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1635603179, 1, 'Tự động lưu CSDL'),
(3, 1635516608, 60, 0, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1635686066, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1635516608, 30, 0, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1635688266, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1635516608, 1440, 0, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1635603179, 1, 'Xóa các file error_log quá hạn'),
(6, 1635516608, 360, 0, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1635516608, 60, 0, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1635686066, 1, 'Xóa các referer quá hạn'),
(8, 1635516608, 60, 0, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1635686066, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1635516608, 1440, 0, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1635603179, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_ips`
--

CREATE TABLE `nv4_ips` (
  `id` mediumint(8) NOT NULL,
  `type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'lang_module'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:58.187.168.165', '', 0, 1635516689),
(2, 'vi', 'upload', 'Upload file', 'uploads/laduyen.png', '', 1, 1635516725),
(3, 'vi', 'themes', 'Thiết lập giao diện theme: \"web24\"', '', '', 1, 1635516824),
(4, 'vi', 'themes', 'Kích hoạt theme: \"web24\"', '', '', 1, 1635516828),
(5, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:58.187.168.165', '', 0, 1635517541),
(6, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:58.187.168.165', '', 0, 1635517547),
(7, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:58.187.168.165', '', 0, 1635517555),
(8, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:58.187.168.165', '', 0, 1635517557),
(9, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:58.187.168.165', '', 0, 1635517558),
(10, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635517573),
(11, 'vi', 'themes', 'Kích hoạt theme: \"default\"', '', '', 1, 1635517584),
(12, 'vi', 'themes', 'Kích hoạt theme: \"web24\"', '', '', 1, 1635517589),
(13, 'vi', 'themes', 'Thiết lập giao diện theme: \"softs\"', '', '', 1, 1635517958),
(14, 'vi', 'themes', 'Kích hoạt theme: \"softs\"', '', '', 1, 1635517959),
(15, 'vi', 'themes', 'Kích hoạt theme: \"web24\"', '', '', 1, 1635518260),
(16, 'vi', 'modules', 'Thiết lập module mới home', '', '', 1, 1635518522),
(17, 'vi', 'modules', 'Sửa module &ldquo;home&rdquo;', '', '', 1, 1635518532),
(18, 'vi', 'modules', 'Thứ tự module: home', '16 -> 1', '', 1, 1635518536),
(19, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635518605),
(20, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635518626),
(21, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635518641),
(22, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1635518736),
(23, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1635518752),
(24, 'vi', 'modules', 'Thứ tự module: shops', '17 -> 3', '', 1, 1635518756),
(25, 'vi', 'modules', 'Cài lại module \"shops\"', '', '', 1, 1635519182),
(26, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635519224),
(27, 'vi', 'modules', 'Thêm module ảo bql_cho_2', '', '', 1, 1635519667),
(28, 'vi', 'modules', 'Thêm module ảo shop', '', '', 1, 1635519686),
(29, 'vi', 'modules', 'Thiết lập module mới shop', '', '', 1, 1635519691),
(30, 'vi', 'modules', 'Sửa module &ldquo;shop&rdquo;', '', '', 1, 1635519698),
(31, 'vi', 'modules', 'Thứ tự module: shop', '18 -> 4', '', 1, 1635519705),
(32, 'vi', 'menu', 'Edit menu', 'Menu id: 1', '', 1, 1635519724),
(33, 'vi', 'menu', 'Delete menu item', 'Item ID 87', '', 1, 1635519743),
(34, 'vi', 'menu', 'Delete menu item', 'Item ID 88', '', 1, 1635519743),
(35, 'vi', 'menu', 'Delete menu item', 'Item ID 89', '', 1, 1635519743),
(36, 'vi', 'menu', 'Delete menu item', 'Item ID 90', '', 1, 1635519743),
(37, 'vi', 'menu', 'Delete menu item', 'Item ID 91', '', 1, 1635519743),
(38, 'vi', 'menu', 'Delete menu item', 'Item ID 92', '', 1, 1635519743),
(39, 'vi', 'menu', 'Delete menu item', 'Item ID 93', '', 1, 1635519743),
(40, 'vi', 'menu', 'Delete menu item', 'Item ID 98', '', 1, 1635519743),
(41, 'vi', 'menu', 'Delete menu item', 'Item ID 99', '', 1, 1635519743),
(42, 'vi', 'menu', 'Delete menu item', 'Item ID 100', '', 1, 1635519743),
(43, 'vi', 'menu', 'Delete menu item', 'Item ID 101', '', 1, 1635519743),
(44, 'vi', 'menu', 'Delete menu item', 'Item ID 102', '', 1, 1635519743),
(45, 'vi', 'menu', 'Delete menu item', 'Item ID 109', '', 1, 1635519743),
(46, 'vi', 'menu', 'Delete menu item', 'Item ID 110', '', 1, 1635519743),
(47, 'vi', 'menu', 'Del row menu', 'Row menu id: 86,97,103,104,105,106,107,108,111', '', 1, 1635519743),
(48, 'vi', 'menu', 'Del row menu', 'Row menu id: 112', '', 1, 1635519746),
(49, 'vi', 'menu', 'Edit row menu', 'Row menu id: 33', '', 1, 1635519752),
(50, 'vi', 'menu', 'Edit row menu', 'Row menu id: 54', '', 1, 1635519757),
(51, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635519780),
(52, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635519792),
(53, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635519880),
(54, 'vi', 'themes', 'Thêm block', 'Name : global post', '', 1, 1635520000),
(55, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', '', 1, 1635520015),
(56, 'vi', 'upload', 'Upload file', 'uploads/about/about_1.png', '', 1, 1635520149),
(57, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1635520198),
(58, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1635520219),
(59, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/laduyen.png', '', 1, 1635520495),
(60, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1635520500),
(61, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1635520505),
(62, 'vi', 'shops', 'log_edit_catalog', 'id 4', '', 1, 1635520509),
(63, 'vi', 'shops', 'log_edit_catalog', 'id 5', '', 1, 1635520516),
(64, 'vi', 'menu', 'Del row menu', 'Row menu id: 27,28,29,30,31,32', '', 1, 1635520537),
(65, 'vi', 'menu', 'Del row menu', 'Row menu id: 95,96', '', 1, 1635520543),
(66, 'vi', 'menu', 'Del row menu', 'Row menu id: 83,84,85', '', 1, 1635520553),
(67, 'vi', 'upload', 'Upload file', 'uploads/banner.png', '', 1, 1635520600),
(68, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1635520613),
(69, 'vi', 'freecontent', 'Add Block', 'Cam kết', '', 1, 1635520665),
(70, 'vi', 'freecontent', 'Add Content', 'Hỗ trợ miễn phí', '', 1, 1635520711),
(71, 'vi', 'themes', 'Thêm block', 'Name : global free content', '', 1, 1635520732),
(72, 'vi', 'themes', 'Sửa block', 'Name : global free content', '', 1, 1635520759),
(73, 'vi', 'themes', 'Sửa block', 'Name : global free content', '', 1, 1635521006),
(74, 'vi', 'themes', 'Sửa block', 'Name : global free content', '', 1, 1635521056),
(75, 'vi', 'themes', 'Sửa block', 'Name : global free content', '', 1, 1635521081),
(76, 'vi', 'themes', 'Sửa block', 'Name : global free content', '', 1, 1635521091),
(77, 'vi', 'freecontent', 'Add Content', 'Miễn phí vận chuyển', '', 1, 1635521135),
(78, 'vi', 'freecontent', 'Edit Content', 'ID: 7', '', 1, 1635521144),
(79, 'vi', 'freecontent', 'Add Content', 'Đảm bảo hoàn tiền', '', 1, 1635521165),
(80, 'vi', 'freecontent', 'Edit Content', 'ID: 8', '', 1, 1635521187),
(81, 'vi', 'themes', 'Thêm block', 'Name : global block tophits', '', 1, 1635521262),
(82, 'vi', 'themes', 'Sửa block', 'Name : global block tophits', '', 1, 1635521276),
(83, 'vi', 'themes', 'Sửa block', 'Name : global block tophits', '', 1, 1635521320),
(84, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1635521412),
(85, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1635521426),
(86, 'vi', 'shops', 'log_edit_catalog', 'id 4', '', 1, 1635521438),
(87, 'vi', 'shops', 'log_del_catalog', 'id 18', '', 1, 1635521448),
(88, 'vi', 'shops', 'log_del_catalog', 'id 19', '', 1, 1635521449),
(89, 'vi', 'shops', 'log_del_catalog', 'id 20', '', 1, 1635521449),
(90, 'vi', 'shops', 'log_del_catalog', 'id 21', '', 1, 1635521450),
(91, 'vi', 'shops', 'log_del_catalog', 'id 22', '', 1, 1635521451),
(92, 'vi', 'shops', 'log_del_catalog', 'id 5', '', 1, 1635521456),
(93, 'vi', 'shops', 'log_edit_catalog', 'id 6', '', 1, 1635521472),
(94, 'vi', 'shops', 'log_edit_catalog', 'id 7', '', 1, 1635521482),
(95, 'vi', 'shops', 'log_edit_catalog', 'id 8', '', 1, 1635521492),
(96, 'vi', 'shops', 'log_edit_catalog', 'id 9', '', 1, 1635521504),
(97, 'vi', 'shops', 'log_edit_catalog', 'id 13', '', 1, 1635521710),
(98, 'vi', 'shops', 'log_edit_catalog', 'id 14', '', 1, 1635521720),
(99, 'vi', 'shops', 'log_del_catalog', 'id 16', '', 1, 1635521729),
(100, 'vi', 'shops', 'log_edit_catalog', 'id 10', '', 1, 1635521764),
(101, 'vi', 'shops', 'log_edit_catalog', 'id 11', '', 1, 1635521809),
(102, 'vi', 'shops', 'log_edit_catalog', 'id 12', '', 1, 1635521819),
(103, 'vi', 'shops', 'log_add_catalog', 'id 23', '', 1, 1635521824),
(104, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/banner-img-c1.png', '', 1, 1635521891),
(105, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/banner-img-c2.png', '', 1, 1635521891),
(106, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/beautiful-bouquet-flowers.jpg', '', 1, 1635521891),
(107, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1635521895),
(108, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1635521901),
(109, 'vi', 'shops', 'log_edit_catalog', 'id 4', '', 1, 1635521907),
(110, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635521971),
(111, 'vi', 'upload', 'Xóa file', 'uploads/shops/2021_10/banner-img-c1.png', '', 1, 1635521997),
(112, 'vi', 'upload', 'Xóa file', 'uploads/shops/2021_10/banner-img-c2.png', '', 1, 1635521997),
(113, 'vi', 'upload', 'Xóa file', 'uploads/shops/2021_10/beautiful-bouquet-flowers.jpg', '', 1, 1635521997),
(114, 'vi', 'upload', 'Xóa file', 'uploads/shops/2021_10/laduyen.png', '', 1, 1635521997),
(115, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/img-c1.png', '', 1, 1635522026),
(116, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/img-c2.png', '', 1, 1635522027),
(117, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/img-c3.jpg', '', 1, 1635522027),
(118, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/logo.png', '', 1, 1635522028),
(119, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1635522032),
(120, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1635522038),
(121, 'vi', 'shops', 'log_edit_catalog', 'id 4', '', 1, 1635522044),
(122, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1635523636),
(123, 'vi', 'about', 'Edit', 'ID: 2', '', 1, 1635523644),
(124, 'vi', 'about', 'Edit', 'ID: 3', '', 1, 1635523650),
(125, 'vi', 'about', 'Delete', 'ID: 2', '', 1, 1635523743),
(126, 'vi', 'about', 'Delete', 'ID: 3', '', 1, 1635523745),
(127, 'vi', 'about', 'Delete', 'ID: 4', '', 1, 1635523747),
(128, 'vi', 'about', 'Delete', 'ID: 5', '', 1, 1635523750),
(129, 'vi', 'about', 'Delete', 'ID: 6', '', 1, 1635523756),
(130, 'vi', 'about', 'Delete', 'ID: 7', '', 1, 1635523772),
(131, 'vi', 'about', 'Delete', 'ID: 8', '', 1, 1635523774),
(132, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1635523849),
(133, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs menu2', '', 1, 1635523995),
(134, 'vi', 'themes', 'Sửa block', 'Name : Danh mục sản phẩm', '', 1, 1635524004),
(135, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635524027),
(136, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635524044),
(137, 'vi', 'upload', 'Upload file', 'uploads/shop/2021_10/caphearcaudat.laduyen.500g-copy.jpg', '', 1, 1635524126),
(138, 'vi', 'upload', 'Đổi tên file', 'uploads/shop/2021_10/caphearcaudat.laduyen.500g-copy.jpg -> uploads/shop/2021_10/caphearcaudat.laduyen.500g.jpg', '', 1, 1635524135),
(139, 'vi', 'shop', 'Edit A Product', 'ID: 11', '', 1, 1635524146),
(140, 'vi', 'shop', 'Edit A Product', 'ID: 10', '', 1, 1635524158),
(141, 'vi', 'shop', 'Edit A Product', 'ID: 9', '', 1, 1635524168),
(142, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635524198),
(143, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635524545),
(144, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635524695),
(145, 'vi', 'menu', 'Delete menu item', 'Item ID 35', '', 1, 1635524721),
(146, 'vi', 'menu', 'Delete menu item', 'Item ID 36', '', 1, 1635524721),
(147, 'vi', 'menu', 'Delete menu item', 'Item ID 37', '', 1, 1635524721),
(148, 'vi', 'menu', 'Delete menu item', 'Item ID 38', '', 1, 1635524721),
(149, 'vi', 'menu', 'Delete menu item', 'Item ID 40', '', 1, 1635524721),
(150, 'vi', 'menu', 'Delete menu item', 'Item ID 41', '', 1, 1635524721),
(151, 'vi', 'menu', 'Delete menu item', 'Item ID 42', '', 1, 1635524721),
(152, 'vi', 'menu', 'Delete menu item', 'Item ID 43', '', 1, 1635524721),
(153, 'vi', 'menu', 'Delete menu item', 'Item ID 45', '', 1, 1635524721),
(154, 'vi', 'menu', 'Delete menu item', 'Item ID 46', '', 1, 1635524721),
(155, 'vi', 'menu', 'Delete menu item', 'Item ID 47', '', 1, 1635524721),
(156, 'vi', 'menu', 'Delete menu item', 'Item ID 49', '', 1, 1635524721),
(157, 'vi', 'menu', 'Delete menu item', 'Item ID 50', '', 1, 1635524721),
(158, 'vi', 'menu', 'Delete menu item', 'Item ID 51', '', 1, 1635524721),
(159, 'vi', 'menu', 'Delete menu item', 'Item ID 52', '', 1, 1635524721),
(160, 'vi', 'menu', 'Delete menu item', 'Item ID 53', '', 1, 1635524721),
(161, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635524826),
(162, 'vi', 'about', 'Edit', 'ID: 1', '', 1, 1635524915),
(163, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635525191),
(164, 'vi', 'shops', 'Edit A Product', 'ID: 4', '', 1, 1635525205),
(165, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1635525221),
(166, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635525294),
(167, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635525299),
(168, 'vi', 'modules', 'Thứ tự module: about', '18 -> 4', '', 1, 1635525527),
(169, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635525539),
(170, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs menu2', '', 1, 1635525561),
(171, 'vi', 'themes', 'Sửa block', 'Name : danh mục sản phẩm', '', 1, 1635525604),
(172, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635525710),
(173, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635525717),
(174, 'vi', 'shop', 'log_del_product', 'id 8', '', 1, 1635525926),
(175, 'vi', 'shop', 'log_del_product', 'id 7', '', 1, 1635525944),
(176, 'vi', 'shop', 'log_del_product', 'id 6', '', 1, 1635525945),
(177, 'vi', 'shop', 'log_del_product', 'id 5', '', 1, 1635525947),
(178, 'vi', 'shop', 'log_del_product', 'id 4', '', 1, 1635525948),
(179, 'vi', 'shop', 'log_del_product', 'id 4', '', 1, 1635525950),
(180, 'vi', 'shop', 'log_del_product', 'id 3', '', 1, 1635525952),
(181, 'vi', 'shop', 'log_del_product', 'id 2', '', 1, 1635525956),
(182, 'vi', 'shop', 'log_del_product', 'id 1', '', 1, 1635525958),
(183, 'vi', 'shops', 'log_del_product', 'id 7', '', 1, 1635525968),
(184, 'vi', 'shops', 'log_del_product', 'id 6', '', 1, 1635525972),
(185, 'vi', 'shops', 'log_del_product', 'id 5', '', 1, 1635525973),
(186, 'vi', 'shops', 'log_del_product', 'id 4', '', 1, 1635525975),
(187, 'vi', 'shops', 'log_del_product', 'id 3', '', 1, 1635525977),
(188, 'vi', 'shops', 'log_del_product', 'id 2', '', 1, 1635525978),
(189, 'vi', 'shops', 'log_del_product', 'id 1', '', 1, 1635525979),
(190, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/caphearcaudat.laduyen.500g-copy.jpg', '', 1, 1635526037),
(191, 'vi', 'upload', 'Đổi tên file', 'uploads/shops/2021_10/caphearcaudat.laduyen.500g-copy.jpg -> uploads/shops/2021_10/caphearcaudat.laduyen.500g.jpg', '', 1, 1635526050),
(192, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1635526071),
(193, 'vi', 'shops', 'log_del_product', 'id 9', '', 1, 1635526078),
(194, 'vi', 'shops', 'log_del_product', 'id 8', '', 1, 1635526080),
(195, 'vi', 'shops', 'Add A Product', 'ID: 12', '', 1, 1635526086),
(196, 'vi', 'shops', 'Add A Product', 'ID: 13', '', 1, 1635526090),
(197, 'vi', 'menu', 'Add menu', 'Menu id: 2', '', 1, 1635526160),
(198, 'vi', 'menu', 'Delete menu item', 'Item ID 127', '', 1, 1635526172),
(199, 'vi', 'menu', 'Delete menu item', 'Item ID 128', '', 1, 1635526172),
(200, 'vi', 'menu', 'Delete menu item', 'Item ID 129', '', 1, 1635526172),
(201, 'vi', 'menu', 'Delete menu item', 'Item ID 130', '', 1, 1635526172),
(202, 'vi', 'menu', 'Delete menu item', 'Item ID 135', '', 1, 1635526172),
(203, 'vi', 'menu', 'Delete menu item', 'Item ID 136', '', 1, 1635526172),
(204, 'vi', 'menu', 'Delete menu item', 'Item ID 137', '', 1, 1635526172),
(205, 'vi', 'menu', 'Delete menu item', 'Item ID 138', '', 1, 1635526172),
(206, 'vi', 'menu', 'Del row menu', 'Row menu id: 126,134', '', 1, 1635526172),
(207, 'vi', 'menu', 'Edit row menu', 'Row menu id: 131', '', 1, 1635526189),
(208, 'vi', 'menu', 'Delete menu item', 'Item ID 132', '', 1, 1635526193),
(209, 'vi', 'menu', 'Delete menu item', 'Item ID 133', '', 1, 1635526193),
(210, 'vi', 'menu', 'Del row menu', 'Row menu id: 131 of Menu id: 2', '', 1, 1635526193),
(211, 'vi', 'menu', 'Add row menu', 'Row menu id: 139 of Menu id: 2', '', 1, 1635526203),
(212, 'vi', 'themes', 'Sửa block', 'Name : Mật ong', '', 1, 1635526229),
(213, 'vi', 'menu', 'Edit row menu', 'Row menu id: 139', '', 1, 1635526290),
(214, 'vi', 'menu', 'Add row menu', 'Row menu id: 140 of Menu id: 2', '', 1, 1635526304),
(215, 'vi', 'menu', 'Add menu', 'Menu id: 3', '', 1, 1635526325),
(216, 'vi', 'menu', 'Add row menu', 'Row menu id: 141 of Menu id: 3', '', 1, 1635526333),
(217, 'vi', 'menu', 'Add row menu', 'Row menu id: 142 of Menu id: 3', '', 1, 1635526339),
(218, 'vi', 'menu', 'Add row menu', 'Row menu id: 143 of Menu id: 3', '', 1, 1635526344),
(219, 'vi', 'menu', 'Add row menu', 'Row menu id: 144 of Menu id: 3', '', 1, 1635526349),
(220, 'vi', 'themes', 'Sửa block', 'Name : Nông sản Organic', '', 1, 1635526359),
(221, 'vi', 'menu', 'Add menu', 'Menu id: 4', '', 1, 1635526371),
(222, 'vi', 'menu', 'Add row menu', 'Row menu id: 145 of Menu id: 4', '', 1, 1635526378),
(223, 'vi', 'menu', 'Add row menu', 'Row menu id: 146 of Menu id: 4', '', 1, 1635526387),
(224, 'vi', 'menu', 'Add row menu', 'Row menu id: 147 of Menu id: 4', '', 1, 1635526392),
(225, 'vi', 'themes', 'Sửa block', 'Name : Thông tin hỗ trợ', '', 1, 1635526397),
(226, 'vi', 'shops', 'Add A Product', 'ID: 14', '', 1, 1635526421),
(227, 'vi', 'shops', 'Add A Product', 'ID: 15', '', 1, 1635526425),
(228, 'vi', 'shops', 'Add A Product', 'ID: 16', '', 1, 1635526429),
(229, 'vi', 'shops', 'Add A Product', 'ID: 17', '', 1, 1635526433),
(230, 'vi', 'themes', 'Thêm block', 'Name : global page one', '', 1, 1635526618),
(231, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', '', 1, 1635526826),
(232, 'vi', 'themes', 'Sửa block', 'Name : Giới thiệu', '', 1, 1635527615),
(233, 'vi', 'news', 'Xóa bài viêt', 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;, Tuyển dụng lập trình viên PHP phát triển NukeViet, Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT, NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016, Học việc tại công ty VINADES, Chương trình thực tập sinh tại công ty VINADES, Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet, Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet, Công ty VINADES tuyển dụng nhân viên kinh doanh, NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước, Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011, Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', '', 1, 1635527949),
(234, 'vi', 'upload', 'Upload file', 'uploads/news/img-c1.png', '', 1, 1635527970),
(235, 'vi', 'news', 'Sửa bài viết', 'NukeViet 4.3 có gì mới?', '', 1, 1635527973),
(236, 'vi', 'upload', 'Upload file', 'uploads/news/img-c2.png', '', 1, 1635527981),
(237, 'vi', 'news', 'Sửa bài viết', 'NukeViet 4.2 có gì mới?', '', 1, 1635527985),
(238, 'vi', 'freecontent', 'Edit Content', 'ID: 6', '', 1, 1635528301),
(239, 'vi', 'freecontent', 'Edit Content', 'ID: 7', '', 1, 1635528311),
(240, 'vi', 'freecontent', 'Edit Content', 'ID: 8', '', 1, 1635528319),
(241, 'vi', 'freecontent', 'Edit Content', 'ID: 8', '', 1, 1635528357),
(242, 'vi', 'freecontent', 'Edit Content', 'ID: 7', '', 1, 1635528372),
(243, 'vi', 'freecontent', 'Edit Content', 'ID: 6', '', 1, 1635528384),
(244, 'vi', 'freecontent', 'Edit Content', 'ID: 6', '', 1, 1635528461),
(245, 'vi', 'freecontent', 'Edit Content', 'ID: 7', '', 1, 1635528470),
(246, 'vi', 'menu', 'Delete menu item', 'Item ID 114', '', 1, 1635528518),
(247, 'vi', 'menu', 'Delete menu item', 'Item ID 115', '', 1, 1635528518),
(248, 'vi', 'menu', 'Delete menu item', 'Item ID 116', '', 1, 1635528518),
(249, 'vi', 'menu', 'Delete menu item', 'Item ID 117', '', 1, 1635528518),
(250, 'vi', 'menu', 'Delete menu item', 'Item ID 119', '', 1, 1635528518),
(251, 'vi', 'menu', 'Delete menu item', 'Item ID 120', '', 1, 1635528518),
(252, 'vi', 'menu', 'Delete menu item', 'Item ID 122', '', 1, 1635528518),
(253, 'vi', 'menu', 'Delete menu item', 'Item ID 123', '', 1, 1635528518),
(254, 'vi', 'menu', 'Delete menu item', 'Item ID 124', '', 1, 1635528518),
(255, 'vi', 'menu', 'Delete menu item', 'Item ID 125', '', 1, 1635528518),
(256, 'vi', 'menu', 'Edit row menu', 'Row menu id: 33', '', 1, 1635528527),
(257, 'vi', 'menu', 'Edit row menu', 'Row menu id: 54', '', 1, 1635528536),
(258, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs', '', 1, 1635529027),
(259, 'vi', 'freecontent', 'Del Content', 'ID:3', '', 1, 1635530905),
(260, 'vi', 'themes', 'Thêm block', 'Name : global free content', '', 1, 1635531050),
(261, 'vi', 'upload', 'Upload file', 'uploads/freecontent/img-c3.jpg', '', 1, 1635531109),
(262, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635531111),
(263, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635531118),
(264, 'vi', 'freecontent', 'Del Content', 'ID:4', '', 1, 1635531125),
(265, 'vi', 'freecontent', 'Del Content', 'ID:5', '', 1, 1635531128),
(266, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635531174),
(267, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635531182),
(268, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635531428),
(269, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635531445),
(270, 'vi', 'upload', 'Upload file', 'uploads/freecontent/cho-1.png', '', 1, 1635531947),
(271, 'vi', 'upload', 'Upload file', 'uploads/freecontent/cho-2.png', '', 1, 1635531948),
(272, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635531951),
(273, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635531959),
(274, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/cho-2.png', '', 1, 1635532075),
(275, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/cho-1.png', '', 1, 1635532075),
(276, 'vi', 'upload', 'Upload file', 'uploads/freecontent/cho-1.png', '', 1, 1635532081),
(277, 'vi', 'upload', 'Upload file', 'uploads/freecontent/cho-2.png', '', 1, 1635532081),
(278, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635532085),
(279, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635532093),
(280, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/cho-1.png', '', 1, 1635532185),
(281, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/cho-2.png', '', 1, 1635532185),
(282, 'vi', 'upload', 'Upload file', 'uploads/freecontent/artboard-4.png', '', 1, 1635532191),
(283, 'vi', 'upload', 'Upload file', 'uploads/freecontent/artboard-5.png', '', 1, 1635532192),
(284, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635532195),
(285, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635532203),
(286, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/artboard-5.png', '', 1, 1635532377),
(287, 'vi', 'upload', 'Xóa file', 'uploads/freecontent/artboard-4.png', '', 1, 1635532377),
(288, 'vi', 'upload', 'Upload file', 'uploads/freecontent/artboard-7.png', '', 1, 1635532382),
(289, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635532385),
(290, 'vi', 'upload', 'Upload file', 'uploads/freecontent/artboard-8.png', '', 1, 1635532396),
(291, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635532399),
(292, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:171.224.241.136', '', 0, 1635559278),
(293, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:171.224.241.136', '', 0, 1635559283),
(294, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:171.224.241.136', '', 0, 1635559291),
(295, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:171.224.241.136', '', 0, 1635559300),
(296, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597532),
(297, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597537),
(298, 'vi', 'login', '[admin] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597540),
(299, 'vi', 'login', '[anvh.cco] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597543),
(300, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597548),
(301, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597553),
(302, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635597755),
(303, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635600594),
(304, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635600597),
(305, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635600603),
(306, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635600624),
(307, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635600679),
(308, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635600696),
(309, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635602795),
(310, 'vi', 'login', '[anvh.ceo] Đăng nhập Thất bại', ' Client IP:115.76.51.13', '', 0, 1635602796),
(311, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635602803),
(312, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635602810),
(313, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635602988),
(314, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635603032),
(315, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635605359),
(316, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635607824),
(317, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635607892),
(318, 'vi', 'upload', 'Upload file', 'uploads/freecontent/logo.png', '', 1, 1635607984),
(319, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635607987),
(320, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635607995),
(321, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1635608361),
(322, 'vi', 'banners', 'log_edit_banner', 'bannerid 1', '', 1, 1635608419),
(323, 'vi', 'banners', 'log_edit_plan', 'planid 1', '', 1, 1635608462),
(324, 'vi', 'banners', 'log_edit_plan', 'planid 1', '', 1, 1635608489),
(325, 'vi', 'themes', 'Thêm block', 'Name : global block news cat', '', 1, 1635608567),
(326, 'vi', 'themes', 'Sửa block', 'Name : global block news cat', '', 1, 1635608586),
(327, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1635608600),
(328, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1635608609),
(329, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635611024),
(330, 'vi', 'themes', 'Thêm block', 'Name : Tin mới nhất', '', 1, 1635611039),
(331, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1635611052),
(332, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635612019),
(333, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635612101),
(334, 'vi', 'themes', 'Thêm block', 'Name : global block news cat', '', 1, 1635612313),
(335, 'vi', 'themes', 'Thêm block', 'Name : global block news cat', '', 1, 1635612341),
(336, 'vi', 'themes', 'Sửa block', 'Name : global block news cat', '', 1, 1635612365),
(337, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1635612380),
(338, 'vi', 'themes', 'Sửa block', 'Name : Tin tiêu điểm', '', 1, 1635612390),
(339, 'vi', 'themes', 'Sửa block', 'Name : Bản tin 24h', '', 1, 1635612685),
(340, 'vi', 'themes', 'Sửa block', 'Name : thông báo cửa hàng', '', 1, 1635612720),
(341, 'vi', 'themes', 'Sửa block', 'Name : thông báo cửa hàng', '', 1, 1635612720),
(342, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635612793),
(343, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635612807),
(344, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635612872),
(345, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635612980),
(346, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635613039),
(347, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635613068),
(348, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635613142),
(349, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635613226),
(350, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635613242),
(351, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1635613333),
(352, 'vi', 'modules', 'Sửa module &ldquo;shop&rdquo;', '', '', 1, 1635613343),
(353, 'vi', 'menu', 'Edit row menu', 'Row menu id: 33', '', 1, 1635613360),
(354, 'vi', 'menu', 'Edit row menu', 'Row menu id: 54', '', 1, 1635613370),
(355, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635613477),
(356, 'vi', 'freecontent', 'Edit Content', 'ID: 1', '', 1, 1635613483),
(357, 'vi', 'freecontent', 'Edit Content', 'ID: 2', '', 1, 1635613498),
(358, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635613617),
(359, 'vi', 'themes', 'Thêm block', 'Name : CHỢ HẢI SẢN', '', 1, 1635613704),
(360, 'vi', 'themes', 'Sửa block', 'Name : CHỢ HẢI SẢN', '', 1, 1635613811),
(361, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635613828),
(362, 'vi', 'upload', 'Upload file', 'uploads/shop/2021_10/sp10.jpg', '', 1, 1635614114),
(363, 'vi', 'upload', 'Upload file', 'uploads/shop/2021_10/sp12.jpg', '', 1, 1635614115),
(364, 'vi', 'upload', 'Upload file', 'uploads/shop/2021_10/sp26.jpg', '', 1, 1635614115),
(365, 'vi', 'upload', 'Upload file', 'uploads/shop/2021_10/sp28.jpg', '', 1, 1635614115),
(366, 'vi', 'shop', 'log_edit_catalog', 'id 2', '', 1, 1635614120),
(367, 'vi', 'shop', 'log_edit_catalog', 'id 2', '', 1, 1635614156),
(368, 'vi', 'shop', 'log_edit_catalog', 'id 3', '', 1, 1635614172),
(369, 'vi', 'shop', 'log_edit_catalog', 'id 4', '', 1, 1635614200),
(370, 'vi', 'shop', 'log_del_catalog', 'id 18', '', 1, 1635614211),
(371, 'vi', 'shop', 'log_del_catalog', 'id 19', '', 1, 1635614211),
(372, 'vi', 'shop', 'log_del_catalog', 'id 20', '', 1, 1635614212),
(373, 'vi', 'shop', 'log_del_catalog', 'id 21', '', 1, 1635614212),
(374, 'vi', 'shop', 'log_del_catalog', 'id 22', '', 1, 1635614214),
(375, 'vi', 'shop', 'log_del_catalog', 'id 5', '', 1, 1635614222),
(376, 'vi', 'shop', 'log_edit_catalog', 'id 6', '', 1, 1635614240),
(377, 'vi', 'shop', 'log_edit_catalog', 'id 7', '', 1, 1635614255),
(378, 'vi', 'shop', 'log_edit_catalog', 'id 8', '', 1, 1635614269),
(379, 'vi', 'shop', 'log_del_catalog', 'id 9', '', 1, 1635614271),
(380, 'vi', 'shop', 'log_edit_catalog', 'id 13', '', 1, 1635614287),
(381, 'vi', 'shop', 'log_edit_catalog', 'id 14', '', 1, 1635614298),
(382, 'vi', 'shop', 'log_del_catalog', 'id 16', '', 1, 1635614309),
(383, 'vi', 'shop', 'log_edit_catalog', 'id 10', '', 1, 1635614328),
(384, 'vi', 'shop', 'log_edit_catalog', 'id 11', '', 1, 1635614369),
(385, 'vi', 'shop', 'log_del_catalog', 'id 12', '', 1, 1635614373),
(386, 'vi', 'shop', 'log_edit_catalog', 'id 3', '', 1, 1635614388),
(387, 'vi', 'shop', 'log_edit_catalog', 'id 4', '', 1, 1635614398),
(388, 'vi', 'shop', 'log_edit_catalog', 'id 4', '', 1, 1635614400),
(389, 'vi', 'shop', 'log_del_product', 'id 10', '', 1, 1635614438),
(390, 'vi', 'shop', 'Edit A Product', 'ID: 9', '', 1, 1635614462),
(391, 'vi', 'upload', 'Upload file', 'uploads/shops/2021_10/sp7.jpg', '', 1, 1635614527),
(392, 'vi', 'shops', 'Edit A Product', 'ID: 17', '', 1, 1635614549),
(393, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1635614573),
(394, 'vi', 'shops', 'Edit A Product', 'ID: 13', '', 1, 1635614589),
(395, 'vi', 'shops', 'Edit A Product', 'ID: 12', '', 1, 1635614603),
(396, 'vi', 'shops', 'log_del_product', 'id 10', '', 1, 1635614607),
(397, 'vi', 'shops', 'log_del_product', 'id 15', '', 1, 1635614610),
(398, 'vi', 'shops', 'log_del_product', 'id 14', '', 1, 1635614612),
(399, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635614727),
(400, 'vi', 'login', '[anvh.ceo] Thoát khỏi tài khoản Quản trị', ' Client IP:115.76.51.13', '', 1, 1635614742),
(401, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635640690),
(402, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1635640785),
(403, 'vi', 'themes', 'Thêm block', 'Name : global block relates product', '', 1, 1635641119),
(404, 'vi', 'themes', 'Sửa block', 'Name : global block relates product', '', 1, 1635641247),
(405, 'vi', 'themes', 'Sửa block', 'Name : Các sản phẩm nổi bật', '', 1, 1635641269),
(406, 'vi', 'themes', 'Sửa block', 'Name : global free content', '', 1, 1635641310),
(407, 'vi', 'themes', 'Thêm block', 'Name : global page list', '', 1, 1635641330),
(408, 'vi', 'themes', 'Sửa block', 'Name : global page list', '', 1, 1635641342),
(409, 'vi', 'upload', 'Upload file', 'uploads/page/about.png', '', 1, 1635641457),
(410, 'vi', 'page', 'Add', ' ', '', 1, 1635641464),
(411, 'vi', 'themes', 'Sửa block', 'Name : global page list', '', 1, 1635641485),
(412, 'vi', 'themes', 'Sửa block', 'Name : global page list', '', 1, 1635641494),
(413, 'vi', 'themes', 'Sửa block', 'Name : Hướng dẫn mua hàng', '', 1, 1635641549),
(414, 'vi', 'themes', 'Sửa block', 'Name : Hướng dẫn mua hàng', '', 1, 1635641563),
(415, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635641829),
(416, 'vi', 'themes', 'Thêm block', 'Name : global block group product', '', 1, 1635641974),
(417, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm tiêu biểu', '', 1, 1635641987),
(418, 'vi', 'themes', 'Thêm block', 'Name : Hướng dẫn chuyên nghiệp', '', 1, 1635642014),
(419, 'vi', 'shop', 'Add A Product', 'ID: 12', '', 1, 1635642032),
(420, 'vi', 'shop', 'Add A Product', 'ID: 13', '', 1, 1635642036),
(421, 'vi', 'shop', 'Add A Product', 'ID: 14', '', 1, 1635642053),
(422, 'vi', 'shop', 'Add A Product', 'ID: 15', '', 1, 1635642070),
(423, 'vi', 'menu', 'Delete menu item', 'Item ID 56', '', 1, 1635642239),
(424, 'vi', 'menu', 'Delete menu item', 'Item ID 57', '', 1, 1635642239),
(425, 'vi', 'menu', 'Delete menu item', 'Item ID 58', '', 1, 1635642239),
(426, 'vi', 'menu', 'Delete menu item', 'Item ID 59', '', 1, 1635642239),
(427, 'vi', 'menu', 'Delete menu item', 'Item ID 61', '', 1, 1635642239),
(428, 'vi', 'menu', 'Delete menu item', 'Item ID 62', '', 1, 1635642239),
(429, 'vi', 'menu', 'Delete menu item', 'Item ID 63', '', 1, 1635642239),
(430, 'vi', 'menu', 'Delete menu item', 'Item ID 64', '', 1, 1635642239),
(431, 'vi', 'menu', 'Delete menu item', 'Item ID 66', '', 1, 1635642239),
(432, 'vi', 'menu', 'Delete menu item', 'Item ID 67', '', 1, 1635642239),
(433, 'vi', 'menu', 'Delete menu item', 'Item ID 68', '', 1, 1635642239),
(434, 'vi', 'menu', 'Delete menu item', 'Item ID 70', '', 1, 1635642239),
(435, 'vi', 'menu', 'Delete menu item', 'Item ID 71', '', 1, 1635642239),
(436, 'vi', 'menu', 'Delete menu item', 'Item ID 72', '', 1, 1635642239),
(437, 'vi', 'menu', 'Delete menu item', 'Item ID 73', '', 1, 1635642239),
(438, 'vi', 'menu', 'Delete menu item', 'Item ID 74', '', 1, 1635642239),
(439, 'vi', 'shop', 'Edit A Product', 'ID: 15', '', 1, 1635642312),
(440, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635642343),
(441, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm nổi bật', '', 1, 1635642371),
(442, 'vi', 'shop', 'Add A Product', 'ID: 16', '', 1, 1635642399),
(443, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635642491),
(444, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635642612),
(445, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635642650),
(446, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635642658),
(447, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs', '', 1, 1635642676),
(448, 'vi', 'themes', 'Sửa block', 'Name : Hải sản tươi', '', 1, 1635642689),
(449, 'vi', 'themes', 'Thêm block', 'Name : HẢI SẢN TƯƠI', '', 1, 1635642747),
(450, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1635643596),
(451, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1635643609),
(452, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1635643617),
(453, 'vi', 'themes', 'Thêm block', 'Name : global page one', '', 1, 1635643637),
(454, 'vi', 'themes', 'Sửa block', 'Name : Hướng dẫn chuyên nghiệp', '', 1, 1635643650),
(455, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635643803),
(456, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635646471),
(457, 'vi', 'themes', 'Thêm block', 'Name : global block group product', '', 1, 1635646491),
(458, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm nổi bật', '', 1, 1635646514),
(459, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635646712),
(460, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635646750),
(461, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635646796),
(462, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm nổi bật', '', 1, 1635646934),
(463, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm nổi bật', '', 1, 1635646986),
(464, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1635647003),
(465, 'vi', 'shop', 'Edit A Product', 'ID: 16', '', 1, 1635647034),
(466, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm bán chạy', '', 1, 1635647042),
(467, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm hot', '', 1, 1635647055),
(468, 'vi', 'shop', 'Edit A Product', 'ID: 14', '', 1, 1635647065),
(469, 'vi', 'shop', 'Edit A Product', 'ID: 12', '', 1, 1635647070),
(470, 'vi', 'shop', 'Edit A Product', 'ID: 12', '', 1, 1635647076),
(471, 'vi', 'shop', 'Edit A Product', 'ID: 9', '', 1, 1635647082),
(472, 'vi', 'shop', 'Add A Product', 'ID: 17', '', 1, 1635647088),
(473, 'vi', 'shop', 'Add A Product', 'ID: 18', '', 1, 1635647100),
(474, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635647341),
(475, 'vi', 'themes', 'Sửa block', 'Name : DANH MỤC SẢN PHẨM', '', 1, 1635648188),
(476, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635648277),
(477, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635648347),
(478, 'vi', 'themes', 'Sửa block', 'Name : DANH MỤC SẢN PHẨM', '', 1, 1635648379),
(479, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635648448),
(480, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635648486),
(481, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635648497),
(482, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635648556),
(483, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635648736),
(484, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635648806),
(485, 'vi', 'login', '[anvh.ceo] Thoát khỏi tài khoản Quản trị', ' Client IP:115.76.51.13', '', 0, 1635650622),
(486, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635654190),
(487, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs img', '', 1, 1635654413),
(488, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635654465),
(489, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635654540),
(490, 'vi', 'themes', 'Thêm block', 'Name : DANH MỤC SẢN PHẨM', '', 1, 1635654563),
(491, 'vi', 'themes', 'Thêm block', 'Name : CHỢ HẢI SẢN', '', 1, 1635654611),
(492, 'vi', 'themes', 'Thêm block', 'Name : CHỢ HẢI SẢN', '', 1, 1635654659),
(493, 'vi', 'themes', 'Thêm block', 'Name : CHỢ HẢI SẢN', '', 1, 1635654740),
(494, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs', '', 1, 1635654799),
(495, 'vi', 'themes', 'Thêm block', 'Name : CHỢ HẢI SẢN', '', 1, 1635654950),
(496, 'vi', 'themes', 'Thêm block', 'Name : global block catalogs menu2', '', 1, 1635654979),
(497, 'vi', 'themes', 'Sửa block', 'Name : DANH MỤC SẢN PHẨM', '', 1, 1635654988),
(498, 'vi', 'themes', 'Thêm block', 'Name : QUẢNG CÁO', '', 1, 1635655019),
(499, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM', '', 1, 1635655027),
(500, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM', '', 1, 1635655045),
(501, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635655095),
(502, 'vi', 'themes', 'Sửa block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635655131),
(503, 'vi', 'themes', 'Sửa block', 'Name : Sản phẩm nổi bật', '', 1, 1635655146),
(504, 'vi', 'themes', 'Thêm block', 'Name : SẢN PHẨM', '', 1, 1635655172),
(505, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1635655199),
(506, 'vi', 'themes', 'Thêm block', 'Name : Hướng dẫn mua hàng', '', 1, 1635655222),
(507, 'vi', 'themes', 'Thêm block', 'Name : CHỢ NÔNG SẢN', '', 1, 1635655242),
(508, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635655376),
(509, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635655380),
(510, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635655445),
(511, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635655457),
(512, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635655469),
(513, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1635658211),
(514, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM', '', 1, 1635658621),
(515, 'vi', 'themes', 'Sửa block', 'Name : global banners', '', 1, 1635658631),
(516, 'vi', 'themes', 'Sửa block', 'Name : QUẢNG CÁO', '', 1, 1635658643),
(517, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635658749),
(518, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635658773),
(519, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635658787),
(520, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635658802),
(521, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635658807),
(522, 'vi', 'themes', 'Sửa block', 'Name : SẢN PHẨM', '', 1, 1635659032),
(523, 'vi', 'themes', 'Sửa block', 'Name : QUẢNG CÁO', '', 1, 1635659040),
(524, 'vi', 'shops', 'Edit A Product', 'ID: 16', '', 1, 1635659220),
(525, 'vi', 'themes', 'Sửa block', 'Name : Hướng dẫn mua hàng', '', 1, 1635659241),
(526, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635659825),
(527, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635659882),
(528, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635668312),
(529, 'vi', 'themes', 'Thiết lập layout theme: \"web24\"', '', '', 1, 1635668768),
(530, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635676648),
(531, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635682370),
(532, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635682378),
(533, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635682620),
(534, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635682655),
(535, 'vi', 'shop', 'Edit A Product', 'ID: 9', '', 1, 1635682711),
(536, 'vi', 'shop', 'Edit A Product', 'ID: 13', '', 1, 1635682719),
(537, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635683266),
(538, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635683340),
(539, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1635683362),
(540, 'vi', 'shop', 'Edit A Product', 'ID: 15', '', 1, 1635683390),
(541, 'vi', 'themes', 'Sửa block', 'Name : Thông tin liên hệ', '', 1, 1635684361),
(542, 'vi', 'shops', 'Add A Product', 'ID: 18', '', 1, 1635684461),
(543, 'vi', 'shops', 'Edit A Product', 'ID: 12', '', 1, 1635685006),
(544, 'vi', 'shop', 'Edit A Product', 'ID: 14', '', 1, 1635685027),
(545, 'vi', 'shop', 'Edit A Product', 'ID: 12', '', 1, 1635685044),
(546, 'vi', 'shop', 'Add A Product', 'ID: 19', '', 1, 1635685609),
(547, 'vi', 'shop', 'Cấu hình module', 'Setting', '', 1, 1635685637),
(548, 'vi', 'shop', 'Add A Product', 'ID: 20', '', 1, 1635685648),
(549, 'vi', 'banners', 'log_add_plan', 'planid 4', '', 1, 1635686105),
(550, 'vi', 'banners', 'log_add_banner', 'bannerid 3', '', 1, 1635686130),
(551, 'vi', 'banners', 'log_add_banner', 'bannerid 4', '', 1, 1635686147),
(552, 'vi', 'themes', 'Thêm block', 'Name : global banners', '', 1, 1635686174),
(553, 'vi', 'banners', 'log_add_plan', 'planid 5', '', 1, 1635686357),
(554, 'vi', 'banners', 'log_edit_plan', 'planid 5', '', 1, 1635686372),
(555, 'vi', 'banners', 'log_add_plan', 'planid 6', '', 1, 1635686384),
(556, 'vi', 'banners', 'log_add_banner', 'bannerid 5', '', 1, 1635686400),
(557, 'vi', 'banners', 'log_add_banner', 'bannerid 6', '', 1, 1635686413),
(558, 'vi', 'themes', 'Sửa block', 'Name : QUẢNG CÁO', '', 1, 1635686423),
(559, 'vi', 'themes', 'Sửa block', 'Name : QUẢNG CÁO', '', 1, 1635686435),
(560, 'vi', 'themes', 'Sửa block', 'Name : QUẢNG CÁO', '', 1, 1635686457),
(561, 'vi', 'login', '[anvh.ceo] Đăng nhập', ' Client IP:115.76.51.13', '', 0, 1635688762),
(562, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1635688767),
(563, 'vi', 'database', 'Xuất dữ liệu mẫu', 'Name: 31102021', '', 1, 1635688778);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `admin_view_allowed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Cấp quản trị được xem: 0,1,2',
  `logic_mode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: Cấp trên xem được cấp dưới, 1: chỉ cấp hoặc người được chỉ định',
  `send_to` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Danh sách id người nhận, phân cách bởi dấu phảy',
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1),
(2, 'cdn_js_css_image.php', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('37c9007dc15f705c18538b2f4d66a515', 1, 'anvh.ceo', 1635689571);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT 0,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT 0,
  `is_virtual` tinyint(1) NOT NULL DEFAULT 0,
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT 0,
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'home', 0, 1, 'home', 'home', '4.2.01 1501938000', 1635518520, 'Nuke.vn <contact@Nuke.vn>', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(312, 'module', 'freecontent', 0, 1, 'freecontent', 'freecontent', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(327, 'module', 'two-step-verification', 1, 0, 'two-step-verification', 'two_step_verification', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.5.00 1626512400', 1635516608, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'shops', 0, 1, 'shops', 'shops', '4.3.00 1492476600', 1635518732, 'VINADES <contact@vinades.vn>', ''),
(0, 'module', 'bql-cho-2', 0, 0, 'shops', 'bql_cho_2', '', 1635519667, '', ''),
(0, 'module', 'shop', 0, 0, 'shops', 'shop', '', 1635519686, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT 0,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`, `weight`) VALUES
('vi', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block`
--

CREATE TABLE `nv4_shops_block` (
  `bid` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block`
--

INSERT INTO `nv4_shops_block` (`bid`, `id`, `weight`) VALUES
(1, 12, 0),
(1, 17, 0),
(1, 16, 0),
(1, 18, 0),
(1, 13, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block_cat`
--

CREATE TABLE `nv4_shops_block_cat` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `adddefault` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block_cat`
--

INSERT INTO `nv4_shops_block_cat` (`bid`, `adddefault`, `image`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_bodytext`, `vi_keywords`, `vi_tag_title`, `vi_tag_description`) VALUES
(1, 0, '', 1, 1433298294, 1433298294, 'Sản phẩm bán chạy', 'San-pham-ban-chay', '', '', '', '', ''),
(2, 0, '', 2, 1433298325, 1433298325, 'Sản phẩm hot', 'San-pham-hot', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier`
--

CREATE TABLE `nv4_shops_carrier` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config`
--

CREATE TABLE `nv4_shops_carrier_config` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_items`
--

CREATE TABLE `nv4_shops_carrier_config_items` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `cid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_location`
--

CREATE TABLE `nv4_shops_carrier_config_location` (
  `cid` tinyint(3) UNSIGNED NOT NULL,
  `iid` smallint(4) UNSIGNED NOT NULL,
  `lid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_weight`
--

CREATE TABLE `nv4_shops_carrier_config_weight` (
  `iid` smallint(4) UNSIGNED NOT NULL,
  `weight` double UNSIGNED NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_catalogs`
--

CREATE TABLE `nv4_shops_catalogs` (
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT 0,
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(4) NOT NULL DEFAULT 3,
  `typeprice` tinyint(4) NOT NULL DEFAULT 2,
  `form` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT 0,
  `cat_number_point` tinyint(4) NOT NULL DEFAULT 0,
  `cat_number_product` tinyint(4) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_catalogs`
--

INSERT INTO `nv4_shops_catalogs` (`catid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `typeprice`, `form`, `group_price`, `viewdescriptionhtml`, `admins`, `add_time`, `edit_time`, `groups_view`, `cat_allow_point`, `cat_number_point`, `cat_number_product`, `vi_title`, `vi_title_custom`, `vi_alias`, `vi_description`, `vi_descriptionhtml`, `vi_keywords`, `vi_tag_description`) VALUES
(2, 0, '2021_10/img-c1.png', 1, 1, 0, 'viewgrid', 4, '6,7,8,9', 1, 3, 7, 1, '', '', 0, '', 1432362728, 1635522032, '6', 0, 0, 0, 'Nông sản organic', 'Nông sản organic', 'nong-san-organic', '', '', 'Nông sản organic', ''),
(3, 0, '2021_10/img-c2.png', 2, 6, 0, 'viewgrid', 2, '13,14', 1, 3, 7, 1, '', '', 0, '', 1432362789, 1635522038, '6', 0, 0, 0, 'Mật Ong', 'Mật Ong', 'mat-ong', '', '', 'Mật Ong', ''),
(4, 0, '2021_10/img-c3.jpg', 3, 9, 0, 'viewgrid', 4, '10,11,12,23', 1, 3, 7, 1, '', '', 0, '', 1432362835, 1635522044, '6', 0, 0, 0, 'Hoa Tươi', 'Hoa Tươi', 'hoa-tuoi', '', '', 'Hoa Tươi', ''),
(6, 2, '', 1, 2, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364675, 1635521472, '6', 0, 0, 0, 'Trà hoa', 'Trà hoa', 'tra-hoa', '', '', 'Trà hoa', ''),
(7, 2, '', 2, 3, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364695, 1635521482, '6', 0, 0, 0, 'Cafe', 'Cafe', 'cafe', '', '', 'Cafe', ''),
(8, 2, '', 3, 4, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364752, 1635521492, '6', 0, 0, 0, 'Tiêu', 'Tiêu', 'tieu', '', '', 'Tiêu', ''),
(9, 2, '', 4, 5, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364786, 1635521504, '6', 0, 0, 0, 'Măng', 'Măng', 'mang', '', '', 'Măng', ''),
(10, 4, '', 1, 10, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364825, 1635521764, '6', 0, 0, 0, 'Hoa Chúc Mừng', 'Hoa Chúc Mừng', 'hoa-chuc-mung', '', '', 'Hoa Chúc Mừng', ''),
(11, 4, '', 2, 11, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364880, 1635521809, '6', 0, 0, 0, 'Hoa Cưới', 'Hoa Cưới', 'hoa-cuoi', '', '', '', ''),
(12, 4, '', 3, 12, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364936, 1635521819, '6', 0, 0, 0, 'Hoa Sinh Nhật', 'Hoa Sinh Nhật', 'hoa-sinh-nhat', '', '', 'Hoa Sinh Nhật', ''),
(13, 3, '', 1, 7, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364976, 1635521710, '6', 0, 0, 0, 'Mật ong Organic', 'Mật ong Organic', 'mat-ong-organic', '', '', 'Mật ong Organic', ''),
(14, 3, '', 2, 8, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365033, 1635521720, '6', 0, 0, 0, 'Mật ong rừng', 'Mật ong rừng', 'mat-ong-rung', '', '', 'Mật ong rừng', ''),
(23, 4, '', 4, 13, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1635521824, 1635521824, '6', 0, 0, 0, 'Hoa Tang Lễ', '', 'Hoa-Tang-Le', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons`
--

CREATE TABLE `nv4_shops_coupons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` double NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL DEFAULT 0,
  `date_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date_end` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT 0,
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_history`
--

CREATE TABLE `nv4_shops_coupons_history` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_product`
--

CREATE TABLE `nv4_shops_coupons_product` (
  `cid` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_discounts`
--

CREATE TABLE `nv4_shops_discounts` (
  `did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `begin_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `end_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field`
--

CREATE TABLE `nv4_shops_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field_value_vi`
--

CREATE TABLE `nv4_shops_field_value_vi` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rows_id` int(11) UNSIGNED NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files`
--

CREATE TABLE `nv4_shops_files` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) UNSIGNED DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files_rows`
--

CREATE TABLE `nv4_shops_files_rows` (
  `id_rows` int(11) UNSIGNED NOT NULL,
  `id_files` mediumint(8) UNSIGNED NOT NULL,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group`
--

CREATE TABLE `nv4_shops_group` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewgrid',
  `numsubgroup` int(11) NOT NULL DEFAULT 0,
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `indetail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numpro` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `in_order` tinyint(2) NOT NULL DEFAULT 0,
  `is_require` tinyint(1) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group`
--

INSERT INTO `nv4_shops_group` (`groupid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `indetail`, `add_time`, `edit_time`, `numpro`, `in_order`, `is_require`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1, 0, 'viewlist', 6, '6,7,8,9,10,11', 1, 0, 1432623061, 1432623061, 0, 1, 0, 'Thương hiệu', 'Thuong-hieu', '', ''),
(2, 0, '', 2, 8, 0, 'viewlist', 12, '12,13,15,16,17,18,19,20,21,22,23,24', 1, 0, 1432623083, 1432623083, 0, 1, 0, 'Màu sắc', 'Mau-sac', '', ''),
(3, 0, '', 3, 21, 0, 'viewlist', 15, '25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 1, 0, 1432623101, 1432623101, 0, 1, 0, 'Kích thước', 'Kich-thuoc', '', ''),
(4, 0, '', 4, 37, 0, 'viewlist', 8, '40,41,42,43,44,45,46,47', 1, 0, 1432623118, 1432623118, 0, 1, 0, 'Chất liệu', 'Chat-lieu', '', ''),
(5, 0, '', 5, 46, 0, 'viewlist', 10, '48,49,50,51,52,53,54,55,56,57', 1, 0, 1432623133, 1432623133, 0, 1, 0, 'Xuất xứ', 'Xuat-xu', '', ''),
(6, 1, '', 1, 2, 1, 'viewlist', 0, '', 1, 0, 1432626862, 1432626862, 0, 1, 0, 'Việt Tiến', 'Viet-Tien', '', ''),
(7, 1, '', 2, 3, 1, 'viewlist', 0, '', 1, 0, 1432626882, 1432626882, 5, 1, 0, 'ZARA', 'ZARA', '', ''),
(8, 1, '', 3, 4, 1, 'viewlist', 0, '', 1, 0, 1432626899, 1432626899, 0, 1, 0, 'MATTANA', 'MATTANA', '', ''),
(9, 1, '', 4, 5, 1, 'viewlist', 0, '', 1, 0, 1432627013, 1432627013, 0, 1, 0, 'KELVIN', 'KELVIN', '', ''),
(10, 1, '', 5, 6, 1, 'viewlist', 0, '', 1, 0, 1432627027, 1432627027, 0, 1, 0, 'THÁI TUẤN', 'THAI-TUAN', '', ''),
(11, 1, '', 6, 7, 1, 'viewlist', 0, '', 1, 0, 1432627053, 1432627053, 0, 1, 0, 'VICTORIA SECRECT', 'VICTORIA-SECRECT', '', ''),
(12, 2, '', 1, 9, 1, 'viewlist', 0, '', 1, 0, 1432627064, 1432627064, 0, 1, 0, 'ĐỎ', 'DO', '', ''),
(13, 2, '', 2, 10, 1, 'viewlist', 0, '', 1, 0, 1432627070, 1432627070, 0, 1, 0, 'VÀNG', 'VANG', '', ''),
(16, 2, '', 4, 12, 1, 'viewlist', 0, '', 1, 0, 1432627102, 1432627102, 5, 1, 0, 'HỒNG PHẤN', 'HONG-PHAN', '', ''),
(15, 2, '', 3, 11, 1, 'viewlist', 0, '', 1, 0, 1432627095, 1432627095, 0, 1, 0, 'XANH NGỌC', 'XANH-NGOC', '', ''),
(17, 2, '', 5, 13, 1, 'viewlist', 0, '', 1, 0, 1432627107, 1432627107, 0, 1, 0, 'XANH RÊU', 'XANH-REU', '', ''),
(18, 2, '', 6, 14, 1, 'viewlist', 0, '', 1, 0, 1432627112, 1432627112, 0, 1, 0, 'TÍM', 'TIM', '', ''),
(19, 2, '', 7, 15, 1, 'viewlist', 0, '', 1, 0, 1432627123, 1432627123, 0, 1, 0, 'XÁM', 'XAM', '', ''),
(20, 2, '', 8, 16, 1, 'viewlist', 0, '', 1, 0, 1432627135, 1432627135, 0, 1, 0, 'XANH NƯỚC BIỂN', 'XANH-NUOC-BIEN', '', ''),
(21, 2, '', 9, 17, 1, 'viewlist', 0, '', 1, 0, 1432627148, 1432627148, 0, 1, 0, 'CAM', 'CAM', '', ''),
(22, 2, '', 10, 18, 1, 'viewlist', 0, '', 1, 0, 1432627153, 1432627153, 0, 1, 0, 'BẠC', 'BAC', '', ''),
(23, 2, '', 11, 19, 1, 'viewlist', 0, '', 1, 0, 1432627160, 1432627160, 0, 1, 0, 'MÀU DA', 'MAU-DA', '', ''),
(24, 2, '', 12, 20, 1, 'viewlist', 0, '', 1, 0, 1432627182, 1432627182, 0, 1, 0, 'ĐEN', 'DEN', '', ''),
(25, 3, '', 1, 22, 1, 'viewlist', 0, '', 1, 0, 1432627201, 1432627201, 0, 1, 0, 'F', 'F', '', ''),
(26, 3, '', 2, 23, 1, 'viewlist', 0, '', 1, 0, 1432627210, 1432627210, 0, 1, 0, 'L', 'L', '', ''),
(27, 3, '', 3, 24, 1, 'viewlist', 0, '', 1, 0, 1432627215, 1432627215, 0, 1, 0, 'M', 'M', '', ''),
(28, 3, '', 4, 25, 1, 'viewlist', 0, '', 1, 0, 1432627219, 1432627219, 0, 1, 0, 'S', 'S', '', ''),
(29, 3, '', 5, 26, 1, 'viewlist', 0, '', 1, 0, 1432627223, 1432627223, 0, 1, 0, 'XL', 'XL', '', ''),
(30, 3, '', 6, 27, 1, 'viewlist', 0, '', 1, 0, 1432627241, 1432627241, 0, 1, 0, 'XXL', 'XXL', '', ''),
(31, 3, '', 7, 28, 1, 'viewlist', 0, '', 1, 0, 1432627250, 1432627250, 0, 1, 0, 'XXXL', 'XXXL', '', ''),
(32, 3, '', 8, 29, 1, 'viewlist', 0, '', 1, 0, 1432627259, 1432627259, 5, 1, 0, '35', '35', '', ''),
(33, 3, '', 9, 30, 1, 'viewlist', 0, '', 1, 0, 1432627264, 1432627264, 5, 1, 0, '36', '36', '', ''),
(34, 3, '', 10, 31, 1, 'viewlist', 0, '', 1, 0, 1432627269, 1432627269, 5, 1, 0, '37', '37', '', ''),
(35, 3, '', 11, 32, 1, 'viewlist', 0, '', 1, 0, 1432627274, 1432627274, 5, 1, 0, '38', '38', '', ''),
(36, 3, '', 12, 33, 1, 'viewlist', 0, '', 1, 0, 1432627279, 1432627279, 0, 1, 0, '39', '39', '', ''),
(37, 3, '', 13, 34, 1, 'viewlist', 0, '', 1, 0, 1432627284, 1432627284, 0, 1, 0, '40', '40', '', ''),
(38, 3, '', 14, 35, 1, 'viewlist', 0, '', 1, 0, 1432627291, 1432627291, 0, 1, 0, '41', '41', '', ''),
(39, 3, '', 15, 36, 1, 'viewlist', 0, '', 1, 0, 1432627296, 1432627296, 0, 1, 0, '42', '42', '', ''),
(40, 4, '', 1, 38, 1, 'viewlist', 0, '', 1, 0, 1432627339, 1432627339, 0, 1, 0, 'COTTON', 'COTTON', '', ''),
(41, 4, '', 2, 39, 1, 'viewlist', 0, '', 1, 0, 1432627346, 1432627346, 0, 1, 0, 'DẠ', 'DA', '', ''),
(42, 4, '', 3, 40, 1, 'viewlist', 0, '', 1, 0, 1432627364, 1432627364, 0, 1, 0, 'JEANS', 'JEANS', '', ''),
(43, 4, '', 4, 41, 1, 'viewlist', 0, '', 1, 0, 1432627369, 1432627369, 0, 1, 0, 'BÒ', 'BO', '', ''),
(44, 4, '', 5, 42, 1, 'viewlist', 0, '', 1, 0, 1432627378, 1432627378, 0, 1, 0, 'LANH', 'LANH', '', ''),
(45, 4, '', 6, 43, 1, 'viewlist', 0, '', 1, 0, 1432627385, 1432627385, 0, 1, 0, 'TƠ TẰM', 'TO-TAM', '', ''),
(46, 4, '', 7, 44, 1, 'viewlist', 0, '', 1, 0, 1432627399, 1432627399, 0, 1, 0, 'THUN', 'THUN', '', ''),
(47, 4, '', 8, 45, 1, 'viewlist', 0, '', 1, 0, 1432627407, 1432627407, 0, 1, 0, 'LỤA', 'LUA', '', ''),
(48, 5, '', 1, 47, 1, 'viewlist', 0, '', 1, 0, 1432627418, 1432627418, 0, 1, 0, 'VIỆT NAM', 'VIET-NAM', '', ''),
(49, 5, '', 2, 48, 1, 'viewlist', 0, '', 1, 0, 1432627425, 1432627425, 0, 1, 0, 'HÀN QUỐC', 'HAN-QUOC', '', ''),
(50, 5, '', 3, 49, 1, 'viewlist', 0, '', 1, 0, 1432627519, 1432627519, 0, 1, 0, 'ĐỨC', 'DUC', '', ''),
(51, 5, '', 4, 50, 1, 'viewlist', 0, '', 1, 0, 1432627528, 1432627528, 5, 1, 0, 'NHẬT BẢN', 'NHAT-BAN', '', ''),
(52, 5, '', 5, 51, 1, 'viewlist', 0, '', 1, 0, 1432627541, 1432627541, 0, 1, 0, 'THÁI LAN', 'THAI-LAN', '', ''),
(53, 5, '', 6, 52, 1, 'viewlist', 0, '', 1, 0, 1432627553, 1432627553, 0, 1, 0, 'HONGKONG', 'HONGKONG', '', ''),
(54, 5, '', 7, 53, 1, 'viewlist', 0, '', 1, 0, 1432627565, 1432627565, 0, 1, 0, 'TRUNG QUỐC', 'TRUNG-QUOC', '', ''),
(55, 5, '', 8, 54, 1, 'viewlist', 0, '', 1, 0, 1432627573, 1432627573, 0, 1, 0, 'PHÁP', 'PHAP', '', ''),
(56, 5, '', 9, 55, 1, 'viewlist', 0, '', 1, 0, 1432627579, 1432627579, 0, 1, 0, 'ANH', 'ANH', '', ''),
(57, 5, '', 10, 56, 1, 'viewlist', 0, '', 1, 0, 1432627617, 1432627617, 0, 1, 0, 'AUSTRALIA', 'AUSTRALIA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_cateid`
--

CREATE TABLE `nv4_shops_group_cateid` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `cateid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group_cateid`
--

INSERT INTO `nv4_shops_group_cateid` (`groupid`, `cateid`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_items`
--

CREATE TABLE `nv4_shops_group_items` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group_items`
--

INSERT INTO `nv4_shops_group_items` (`pro_id`, `group_id`) VALUES
(12, 7),
(12, 16),
(12, 32),
(12, 33),
(12, 34),
(12, 35),
(12, 51),
(13, 7),
(13, 16),
(13, 32),
(13, 33),
(13, 34),
(13, 35),
(13, 51),
(16, 7),
(16, 16),
(16, 32),
(16, 33),
(16, 34),
(16, 35),
(16, 51),
(17, 7),
(17, 16),
(17, 32),
(17, 33),
(17, 34),
(17, 35),
(17, 51),
(18, 7),
(18, 16),
(18, 32),
(18, 33),
(18, 34),
(18, 35),
(18, 51);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_quantity`
--

CREATE TABLE `nv4_shops_group_quantity` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_location`
--

CREATE TABLE `nv4_shops_location` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `numsub` int(11) NOT NULL DEFAULT 0,
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_money_vi`
--

CREATE TABLE `nv4_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exchange` double NOT NULL DEFAULT 0,
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_money_vi`
--

INSERT INTO `nv4_shops_money_vi` (`id`, `code`, `currency`, `symbol`, `exchange`, `round`, `number_format`) VALUES
(840, 'USD', 'US Dollar', '$', 21000, '0.01', ',||.'),
(704, 'VND', 'Vietnam Dong', 'đ', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders`
--

CREATE TABLE `nv4_shops_orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `who_is` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double UNSIGNED NOT NULL DEFAULT 0,
  `order_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT 0,
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT 0,
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id`
--

CREATE TABLE `nv4_shops_orders_id` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `listgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `discount_id` smallint(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id_group`
--

CREATE TABLE `nv4_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_shipping`
--

CREATE TABLE `nv4_shops_orders_shipping` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) UNSIGNED NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) UNSIGNED NOT NULL,
  `ship_carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `weight` double NOT NULL DEFAULT 0,
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` double NOT NULL DEFAULT 0,
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point`
--

CREATE TABLE `nv4_shops_point` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `point_total` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_history`
--

CREATE TABLE `nv4_shops_point_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_queue`
--

CREATE TABLE `nv4_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_review`
--

CREATE TABLE `nv4_shops_review` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_rows`
--

CREATE TABLE `nv4_shops_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT 0,
  `product_price` double NOT NULL DEFAULT 0,
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleprice` double NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` double NOT NULL DEFAULT 0,
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT 0,
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `copyright` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gift_from` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gift_to` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitslm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `num_sell` mediumint(8) NOT NULL DEFAULT 0,
  `showprice` tinyint(2) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_rows`
--

INSERT INTO `nv4_shops_rows` (`id`, `listcatid`, `user_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `price_config`, `saleprice`, `money_unit`, `product_unit`, `product_weight`, `weight_unit`, `discount_id`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `gift_from`, `gift_to`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `num_sell`, `showprice`, `vi_title`, `vi_alias`, `vi_hometext`, `vi_bodytext`, `vi_gift_content`, `vi_address`, `vi_tag_title`, `vi_tag_description`) VALUES
(12, 10, 1, 1432606522, 1635685006, 1, 1635526080, 0, 2, 'S000012', 10, 100000, '', 0, 'VND', 2, 350, 'g', 0, '2021_10/sp7.jpg', 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', '2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 6, 0, 0, 0, 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', 'ca-phe-rang-moc-arabica-cau-dat-500g-11', '<ul>	<li>	<p>CÀ PHÊ ARABICA - CẦU ĐẤT</p>	<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.</p>	</li></ul>', 'CÀ PHÊ ARABICA - CẦU ĐẤT<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.<br /><br />Arabica Cầu Đất có vị chua thanh xen lẫn với vị đắng nhẹ, nước pha màu nước nâu nhạt, trong trẻo của hổ phách. Mùi hương của Arabica rất thanh tao, quý phái, Arabica có mùi của si-rô, mùi của hoa trái, hòa quyện với mùi của mật ong, và cà mùi bánh mì nướng, mùi của cánh đồng rơm buổi trưa hè… Arabica chinh phục những con người sành điệu ẩm thực nhất trên thế giới. Cà phê Arabica là nguyên liệu chính của các hãng cà phê, các thương hiệu cà phê nổi tiếng nhất trên thế giới.<br /><br />THÀNH PHẦN<br /><br />- 100% Arabica Cầu Đất<br /><br />THÔNG TIN SẢN PHẨM<br /><br />•&nbsp;&nbsp; &nbsp;Xuất xứ: Bảo Lộc - Lâm Đồng<br />•&nbsp;&nbsp; &nbsp;Sản phẩm được sản xuất và đóng goí bởi thương hiệu Lá Duyên &amp; La Tacita<br />#Lá_Duyên #Laduyen #Laduyen_nông_sản_vườn_nhà #capheblend #Latacitacoffee #LaTacita</p>', '', '', '', ''),
(18, 12, 1, 1432606522, 1635659220, 1, 1635684461, 0, 2, 'S000018', 10, 100000, '', 0, 'VND', 2, 350, 'g', 0, '2021_10/sp7.jpg', 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', '2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 8, 0, 0, 0, 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', 'ca-phe-rang-moc-arabica-cau-dat-500g', '<ul>	<li>	<p>CÀ PHÊ ARABICA - CẦU ĐẤT</p>	<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.</p>	</li></ul>', 'CÀ PHÊ ARABICA - CẦU ĐẤT<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.<br /><br />Arabica Cầu Đất có vị chua thanh xen lẫn với vị đắng nhẹ, nước pha màu nước nâu nhạt, trong trẻo của hổ phách. Mùi hương của Arabica rất thanh tao, quý phái, Arabica có mùi của si-rô, mùi của hoa trái, hòa quyện với mùi của mật ong, và cà mùi bánh mì nướng, mùi của cánh đồng rơm buổi trưa hè… Arabica chinh phục những con người sành điệu ẩm thực nhất trên thế giới. Cà phê Arabica là nguyên liệu chính của các hãng cà phê, các thương hiệu cà phê nổi tiếng nhất trên thế giới.<br /><br />THÀNH PHẦN<br /><br />- 100% Arabica Cầu Đất<br /><br />THÔNG TIN SẢN PHẨM<br /><br />•&nbsp;&nbsp; &nbsp;Xuất xứ: Bảo Lộc - Lâm Đồng<br />•&nbsp;&nbsp; &nbsp;Sản phẩm được sản xuất và đóng goí bởi thương hiệu Lá Duyên &amp; La Tacita<br />#Lá_Duyên #Laduyen #Laduyen_nông_sản_vườn_nhà #capheblend #Latacitacoffee #LaTacita</p>', 'Tặng cho khách lần đầu mua hàng online tại web BachhoaXANH.com\r\nMã giảm 20% tối đa 100.000đ\r\n5 lần FREEship\r\nÁp dụng tại Tp.HCM và 1 số khu vực, 1 SĐT nhận 1 lần (Xem chi tiết)', '', '', ''),
(13, 13, 1, 1432606522, 1635614589, 1, 1635526080, 0, 2, 'S000013', 10, 100000, '', 0, 'VND', 2, 350, 'g', 0, '2021_10/sp7.jpg', 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', '2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', 'ca-phe-rang-moc-arabica-cau-dat-500g-13', '<ul>	<li>	<p>CÀ PHÊ ARABICA - CẦU ĐẤT</p>	<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.</p>	</li></ul>', 'CÀ PHÊ ARABICA - CẦU ĐẤT<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.<br /><br />Arabica Cầu Đất có vị chua thanh xen lẫn với vị đắng nhẹ, nước pha màu nước nâu nhạt, trong trẻo của hổ phách. Mùi hương của Arabica rất thanh tao, quý phái, Arabica có mùi của si-rô, mùi của hoa trái, hòa quyện với mùi của mật ong, và cà mùi bánh mì nướng, mùi của cánh đồng rơm buổi trưa hè… Arabica chinh phục những con người sành điệu ẩm thực nhất trên thế giới. Cà phê Arabica là nguyên liệu chính của các hãng cà phê, các thương hiệu cà phê nổi tiếng nhất trên thế giới.<br /><br />THÀNH PHẦN<br /><br />- 100% Arabica Cầu Đất<br /><br />THÔNG TIN SẢN PHẨM<br /><br />•&nbsp;&nbsp; &nbsp;Xuất xứ: Bảo Lộc - Lâm Đồng<br />•&nbsp;&nbsp; &nbsp;Sản phẩm được sản xuất và đóng goí bởi thương hiệu Lá Duyên &amp; La Tacita<br />#Lá_Duyên #Laduyen #Laduyen_nông_sản_vườn_nhà #capheblend #Latacitacoffee #LaTacita</p>', '', '', '', ''),
(16, 13, 1, 1432606522, 1635659220, 1, 1635526380, 0, 2, 'S000016', 10, 100000, '', 0, 'VND', 2, 350, 'g', 0, '2021_10/sp7.jpg', 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', '2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 9, 0, 0, 0, 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', 'ca-phe-rang-moc-arabica-cau-dat-500g-16', '<ul>	<li>	<p>CÀ PHÊ ARABICA - CẦU ĐẤT</p>	<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.</p>	</li></ul>', 'CÀ PHÊ ARABICA - CẦU ĐẤT<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.<br /><br />Arabica Cầu Đất có vị chua thanh xen lẫn với vị đắng nhẹ, nước pha màu nước nâu nhạt, trong trẻo của hổ phách. Mùi hương của Arabica rất thanh tao, quý phái, Arabica có mùi của si-rô, mùi của hoa trái, hòa quyện với mùi của mật ong, và cà mùi bánh mì nướng, mùi của cánh đồng rơm buổi trưa hè… Arabica chinh phục những con người sành điệu ẩm thực nhất trên thế giới. Cà phê Arabica là nguyên liệu chính của các hãng cà phê, các thương hiệu cà phê nổi tiếng nhất trên thế giới.<br /><br />THÀNH PHẦN<br /><br />- 100% Arabica Cầu Đất<br /><br />THÔNG TIN SẢN PHẨM<br /><br />•&nbsp;&nbsp; &nbsp;Xuất xứ: Bảo Lộc - Lâm Đồng<br />•&nbsp;&nbsp; &nbsp;Sản phẩm được sản xuất và đóng goí bởi thương hiệu Lá Duyên &amp; La Tacita<br />#Lá_Duyên #Laduyen #Laduyen_nông_sản_vườn_nhà #capheblend #Latacitacoffee #LaTacita</p>', 'Tặng cho khách lần đầu mua hàng online tại web BachhoaXANH.com\r\nMã giảm 20% tối đa 100.000đ\r\n5 lần FREEship\r\nÁp dụng tại Tp.HCM và 1 số khu vực, 1 SĐT nhận 1 lần (Xem chi tiết)', '', '', ''),
(17, 13, 1, 1432606522, 1635614549, 1, 1635526380, 0, 2, 'S000017', 10, 100000, '', 0, 'VND', 2, 350, 'g', 0, '2021_10/sp7.jpg', 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', '2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg|2021_10/sp7.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 27, 0, 0, 0, 1, 'Cà Phê Rang Mộc Arabica Cầu Đất - 500g', 'ca-phe-rang-moc-arabica-cau-dat-500g-17', '<ul>	<li>	<p>CÀ PHÊ ARABICA - CẦU ĐẤT</p>	<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.</p>	</li></ul>', 'CÀ PHÊ ARABICA - CẦU ĐẤT<p>Arabica được người Pháp mang đến trồng ở Việt Nam vào những năm 30 của thế kỷ trước. Tỉnh Lâm đồng với các địa phương như Di Linh, Bảo Lộc, Đơn Dương, vùng ngoại ô Đà Lạt, đặc biệt là vùng Cầu Đất, được coi là thiên đường cà phê Arabica của Việt Nam với những “chỉ số vàng”, cao 1.500 m, khí hậu ôn đới mát quanh năm, nhiệt độ cực đại trong năm không vượt quá 330C, nhiệt độ cực tiểu 50C . Đây là vùng sản xuất cà phê Arabica chất lượng cao nhất cả nước. Địa hình càng cao, khí hâu càng lạnh hơn, càng cho ra những hạt cà phê Arabica chất lượng tuyệt hảo.<br /><br />Arabica Cầu Đất có vị chua thanh xen lẫn với vị đắng nhẹ, nước pha màu nước nâu nhạt, trong trẻo của hổ phách. Mùi hương của Arabica rất thanh tao, quý phái, Arabica có mùi của si-rô, mùi của hoa trái, hòa quyện với mùi của mật ong, và cà mùi bánh mì nướng, mùi của cánh đồng rơm buổi trưa hè… Arabica chinh phục những con người sành điệu ẩm thực nhất trên thế giới. Cà phê Arabica là nguyên liệu chính của các hãng cà phê, các thương hiệu cà phê nổi tiếng nhất trên thế giới.<br /><br />THÀNH PHẦN<br /><br />- 100% Arabica Cầu Đất<br /><br />THÔNG TIN SẢN PHẨM<br /><br />•&nbsp;&nbsp; &nbsp;Xuất xứ: Bảo Lộc - Lâm Đồng<br />•&nbsp;&nbsp; &nbsp;Sản phẩm được sản xuất và đóng goí bởi thương hiệu Lá Duyên &amp; La Tacita<br />#Lá_Duyên #Laduyen #Laduyen_nông_sản_vườn_nhà #capheblend #Latacitacoffee #LaTacita</p>', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops`
--

CREATE TABLE `nv4_shops_shops` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops_carrier`
--

CREATE TABLE `nv4_shops_shops_carrier` (
  `shops_id` tinyint(3) UNSIGNED NOT NULL,
  `carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `config_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tabs`
--

CREATE TABLE `nv4_shops_tabs` (
  `id` int(3) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tabs`
--

INSERT INTO `nv4_shops_tabs` (`id`, `icon`, `content`, `weight`, `active`, `vi_title`) VALUES
(1, '', 'content_detail', 1, 1, 'Chi tiết sản phẩm'),
(2, '', 'content_comments', 2, 1, 'Bình luận'),
(3, '', 'content_rate', 3, 1, 'Đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_id_vi`
--

CREATE TABLE `nv4_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_id_vi`
--

INSERT INTO `nv4_shops_tags_id_vi` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'thời trang'),
(1, 2, 'sang trọng'),
(1, 3, 'phù hợp'),
(1, 4, 'đi chơi'),
(6, 5, 'áo sơ mi'),
(10, 6, 'mũi nhọn'),
(11, 7, 'búp bê'),
(12, 6, 'mũi nhọn'),
(13, 6, 'mũi nhọn'),
(14, 6, 'mũi nhọn'),
(15, 6, 'mũi nhọn'),
(16, 6, 'mũi nhọn'),
(17, 6, 'mũi nhọn'),
(18, 6, 'mũi nhọn');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_vi`
--

CREATE TABLE `nv4_shops_tags_vi` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_vi`
--

INSERT INTO `nv4_shops_tags_vi` (`tid`, `numpro`, `alias`, `image`, `description`, `bodytext`, `keywords`) VALUES
(1, 1, 'thời-trang', '', '', '', 'thời trang'),
(2, 1, 'sang-trọng', '', '', '', 'sang trọng'),
(3, 1, 'phù-hợp', '', '', '', 'phù hợp'),
(4, 1, 'đi-chơi', '', '', '', 'đi chơi'),
(5, 1, 'áo-sơ-mi', '', '', '', 'áo sơ mi'),
(6, 8, 'mũi-nhọn', '', '', '', 'mũi nhọn'),
(7, 1, 'búp-bê', '', '', '', 'búp bê');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_template`
--

CREATE TABLE `nv4_shops_template` (
  `id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_transaction`
--

CREATE TABLE `nv4_shops_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT 0,
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT 0,
  `payment_amount` double NOT NULL DEFAULT 0,
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_units`
--

CREATE TABLE `nv4_shops_units` (
  `id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_units`
--

INSERT INTO `nv4_shops_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'cái', ''),
(2, 'đôi', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse`
--

CREATE TABLE `nv4_shops_warehouse` (
  `wid` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse`
--

INSERT INTO `nv4_shops_warehouse` (`wid`, `title`, `note`, `user_id`, `addtime`) VALUES
(1, 'Nhập kho ngày 23/05/2015', '', 1, 1432364016),
(2, 'Nhập kho ngày 23/05/2015', '', 1, 1432365552),
(3, 'Nhập kho ngày 23/05/2015', '', 1, 1432366753),
(4, 'Nhập kho ngày 23/05/2015', '', 1, 1432367106),
(5, 'Nhập kho ngày 23/05/2015', '', 1, 1432367387),
(6, 'Nhập kho ngày 23/05/2015', '', 1, 1432367857),
(7, 'Nhập kho ngày 23/05/2015', '', 1, 1432369139),
(8, 'Nhập kho ngày 26/05/2015', '', 1, 1432608794),
(9, 'Nhập kho ngày 26/05/2015', '', 1, 1432608805),
(10, 'Nhập kho ngày 26/05/2015', '', 1, 1432608819),
(11, 'Nhập kho ngày 26/05/2015', '', 1, 1432608835);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs`
--

CREATE TABLE `nv4_shops_warehouse_logs` (
  `logid` int(11) UNSIGNED NOT NULL,
  `wid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse_logs`
--

INSERT INTO `nv4_shops_warehouse_logs` (`logid`, `wid`, `pro_id`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, 1, 20, 150000, 'VND'),
(2, 2, 2, 50, 250000, 'VND'),
(3, 3, 3, 15, 70000, 'VND'),
(4, 4, 4, 20, 120000, 'VND'),
(5, 5, 5, 30, 120000, 'VND'),
(6, 6, 6, 15, 180000, 'VND'),
(7, 7, 7, 50, 50000, 'VND'),
(8, 8, 11, 20, 80000, 'VND'),
(9, 9, 10, 10, 90000, 'VND'),
(10, 10, 9, 10, 95000, 'VND'),
(11, 11, 8, 15, 50000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs_group`
--

CREATE TABLE `nv4_shops_warehouse_logs_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `logid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse_logs_group`
--

INSERT INTO `nv4_shops_warehouse_logs_group` (`id`, `logid`, `listgroup`, `quantity`, `price`, `money_unit`) VALUES
(8, 8, '7,24,35', 20, 80000, 'VND'),
(9, 9, '7,16,33,51', 10, 90000, 'VND'),
(10, 10, '7,24,35,53', 10, 95000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_weight_vi`
--

CREATE TABLE `nv4_shops_weight_vi` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` double NOT NULL DEFAULT 0,
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_weight_vi`
--

INSERT INTO `nv4_shops_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_wishlist`
--

CREATE TABLE `nv4_shops_wishlist` (
  `wid` smallint(6) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_block`
--

CREATE TABLE `nv4_shop_block` (
  `bid` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_block`
--

INSERT INTO `nv4_shop_block` (`bid`, `id`, `weight`) VALUES
(1, 13, 0),
(1, 18, 0),
(1, 17, 0),
(1, 20, 0),
(1, 16, 0),
(1, 15, 0),
(1, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_block_cat`
--

CREATE TABLE `nv4_shop_block_cat` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `adddefault` tinyint(1) NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_block_cat`
--

INSERT INTO `nv4_shop_block_cat` (`bid`, `adddefault`, `image`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_bodytext`, `vi_keywords`, `vi_tag_title`, `vi_tag_description`) VALUES
(1, 0, '', 1, 1433298294, 1433298294, 'Sản phẩm bán chạy', 'San-pham-ban-chay', '', '', '', '', ''),
(2, 0, '', 2, 1433298325, 1433298325, 'Sản phẩm hot', 'San-pham-hot', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_carrier`
--

CREATE TABLE `nv4_shop_carrier` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_carrier_config`
--

CREATE TABLE `nv4_shop_carrier_config` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_carrier_config_items`
--

CREATE TABLE `nv4_shop_carrier_config_items` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `cid` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_carrier_config_location`
--

CREATE TABLE `nv4_shop_carrier_config_location` (
  `cid` tinyint(3) UNSIGNED NOT NULL,
  `iid` smallint(4) UNSIGNED NOT NULL,
  `lid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_carrier_config_weight`
--

CREATE TABLE `nv4_shop_carrier_config_weight` (
  `iid` smallint(4) UNSIGNED NOT NULL,
  `weight` double UNSIGNED NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_catalogs`
--

CREATE TABLE `nv4_shop_catalogs` (
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT 0,
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(4) NOT NULL DEFAULT 3,
  `typeprice` tinyint(4) NOT NULL DEFAULT 2,
  `form` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT 0,
  `cat_number_point` tinyint(4) NOT NULL DEFAULT 0,
  `cat_number_product` tinyint(4) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_catalogs`
--

INSERT INTO `nv4_shop_catalogs` (`catid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `typeprice`, `form`, `group_price`, `viewdescriptionhtml`, `admins`, `add_time`, `edit_time`, `groups_view`, `cat_allow_point`, `cat_number_point`, `cat_number_product`, `vi_title`, `vi_title_custom`, `vi_alias`, `vi_description`, `vi_descriptionhtml`, `vi_keywords`, `vi_tag_description`) VALUES
(2, 0, '2021_10/sp12.jpg', 1, 1, 0, 'viewgrid', 3, '6,7,8', 1, 3, 7, 1, '', '', 0, '', 1432362728, 1635614156, '6', 0, 0, 0, 'Thịt tươi', 'Thịt tươi', 'thit-tuoi', '', '', 'Thịt tươi', ''),
(3, 0, '2021_10/sp26.jpg', 2, 5, 0, 'viewgrid', 2, '13,14', 1, 3, 7, 1, '', '', 0, '', 1432362789, 1635614388, '6', 0, 0, 0, 'Hải sản tươi', 'Hải sản tươi', 'hai-san-tuoi', '', '', 'Hải sản tươi', ''),
(4, 0, '2021_10/sp10.jpg', 3, 8, 0, 'viewgrid', 2, '10,11', 1, 3, 7, 1, '', '', 0, '', 1432362835, 1635614400, '6', 0, 0, 0, 'Thực phẩm khô', 'Thực phẩm khô', 'thuc-pham-kho', '', '', '', ''),
(6, 2, '', 1, 2, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364675, 1635614240, '6', 0, 0, 0, 'Thịt gà', 'Thịt gà', 'thit-ga', '', '', 'Thịt gà', ''),
(7, 2, '', 2, 3, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364695, 1635614255, '6', 0, 0, 0, 'Thịt heo', '', 'thit-heo', '', '', '', ''),
(8, 2, '', 3, 4, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364752, 1635614269, '6', 0, 0, 0, 'Thịt bò', '', 'thit-bo', '', '', '', ''),
(10, 4, '', 1, 9, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364825, 1635614328, '6', 0, 0, 0, 'cá', '', 'ca', '', '', '', ''),
(11, 4, '', 2, 10, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364880, 1635614369, '6', 0, 0, 0, 'bò khô', '', 'bo-kho', '', '', '', ''),
(13, 3, '', 1, 6, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432364976, 1635614287, '6', 0, 0, 0, 'Tôm', '', 'tom', '', '', '', ''),
(14, 3, '', 2, 7, 1, 'viewgrid', 0, '', 1, 4, 7, 1, '', '', 0, '', 1432365033, 1635614298, '6', 0, 0, 0, 'Mực', 'Mực', 'muc', '', '', 'Mực', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_coupons`
--

CREATE TABLE `nv4_shop_coupons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` double NOT NULL DEFAULT 0,
  `total_amount` double NOT NULL DEFAULT 0,
  `date_start` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `date_end` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT 0,
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_coupons_history`
--

CREATE TABLE `nv4_shop_coupons_history` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_coupons_product`
--

CREATE TABLE `nv4_shop_coupons_product` (
  `cid` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_discounts`
--

CREATE TABLE `nv4_shop_discounts` (
  `did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `begin_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `end_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_discounts`
--

INSERT INTO `nv4_shop_discounts` (`did`, `title`, `weight`, `add_time`, `edit_time`, `begin_time`, `end_time`, `config`, `detail`) VALUES
(1, 'VIP', 0, 1635647026, 1635647026, 1635613200, 0, 'a:1:{i:0;a:4:{s:13:\"discount_from\";i:1;s:11:\"discount_to\";i:100;s:15:\"discount_number\";d:30;s:13:\"discount_unit\";s:1:\"p\";}}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_field`
--

CREATE TABLE `nv4_shop_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_field_value_vi`
--

CREATE TABLE `nv4_shop_field_value_vi` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rows_id` int(11) UNSIGNED NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_files`
--

CREATE TABLE `nv4_shop_files` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) UNSIGNED DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_files_rows`
--

CREATE TABLE `nv4_shop_files_rows` (
  `id_rows` int(11) UNSIGNED NOT NULL,
  `id_files` mediumint(8) UNSIGNED NOT NULL,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_group`
--

CREATE TABLE `nv4_shop_group` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewgrid',
  `numsubgroup` int(11) NOT NULL DEFAULT 0,
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `indetail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numpro` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `in_order` tinyint(2) NOT NULL DEFAULT 0,
  `is_require` tinyint(1) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_group`
--

INSERT INTO `nv4_shop_group` (`groupid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `indetail`, `add_time`, `edit_time`, `numpro`, `in_order`, `is_require`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1, 0, 'viewlist', 6, '6,7,8,9,10,11', 1, 0, 1432623061, 1432623061, 0, 1, 0, 'Thương hiệu', 'Thuong-hieu', '', ''),
(2, 0, '', 2, 8, 0, 'viewlist', 12, '12,13,15,16,17,18,19,20,21,22,23,24', 1, 0, 1432623083, 1432623083, 0, 1, 0, 'Màu sắc', 'Mau-sac', '', ''),
(3, 0, '', 3, 21, 0, 'viewlist', 15, '25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 1, 0, 1432623101, 1432623101, 0, 1, 0, 'Kích thước', 'Kich-thuoc', '', ''),
(4, 0, '', 4, 37, 0, 'viewlist', 8, '40,41,42,43,44,45,46,47', 1, 0, 1432623118, 1432623118, 0, 1, 0, 'Chất liệu', 'Chat-lieu', '', ''),
(5, 0, '', 5, 46, 0, 'viewlist', 10, '48,49,50,51,52,53,54,55,56,57', 1, 0, 1432623133, 1432623133, 0, 1, 0, 'Xuất xứ', 'Xuat-xu', '', ''),
(6, 1, '', 1, 2, 1, 'viewlist', 0, '', 1, 0, 1432626862, 1432626862, 0, 1, 0, 'Việt Tiến', 'Viet-Tien', '', ''),
(7, 1, '', 2, 3, 1, 'viewlist', 0, '', 1, 0, 1432626882, 1432626882, 2, 1, 0, 'ZARA', 'ZARA', '', ''),
(8, 1, '', 3, 4, 1, 'viewlist', 0, '', 1, 0, 1432626899, 1432626899, 0, 1, 0, 'MATTANA', 'MATTANA', '', ''),
(9, 1, '', 4, 5, 1, 'viewlist', 0, '', 1, 0, 1432627013, 1432627013, 0, 1, 0, 'KELVIN', 'KELVIN', '', ''),
(10, 1, '', 5, 6, 1, 'viewlist', 0, '', 1, 0, 1432627027, 1432627027, 0, 1, 0, 'THÁI TUẤN', 'THAI-TUAN', '', ''),
(11, 1, '', 6, 7, 1, 'viewlist', 0, '', 1, 0, 1432627053, 1432627053, 0, 1, 0, 'VICTORIA SECRECT', 'VICTORIA-SECRECT', '', ''),
(12, 2, '', 1, 9, 1, 'viewlist', 0, '', 1, 0, 1432627064, 1432627064, 0, 1, 0, 'ĐỎ', 'DO', '', ''),
(13, 2, '', 2, 10, 1, 'viewlist', 0, '', 1, 0, 1432627070, 1432627070, 0, 1, 0, 'VÀNG', 'VANG', '', ''),
(16, 2, '', 4, 12, 1, 'viewlist', 0, '', 1, 0, 1432627102, 1432627102, 0, 1, 0, 'HỒNG PHẤN', 'HONG-PHAN', '', ''),
(15, 2, '', 3, 11, 1, 'viewlist', 0, '', 1, 0, 1432627095, 1432627095, 0, 1, 0, 'XANH NGỌC', 'XANH-NGOC', '', ''),
(17, 2, '', 5, 13, 1, 'viewlist', 0, '', 1, 0, 1432627107, 1432627107, 0, 1, 0, 'XANH RÊU', 'XANH-REU', '', ''),
(18, 2, '', 6, 14, 1, 'viewlist', 0, '', 1, 0, 1432627112, 1432627112, 0, 1, 0, 'TÍM', 'TIM', '', ''),
(19, 2, '', 7, 15, 1, 'viewlist', 0, '', 1, 0, 1432627123, 1432627123, 0, 1, 0, 'XÁM', 'XAM', '', ''),
(20, 2, '', 8, 16, 1, 'viewlist', 0, '', 1, 0, 1432627135, 1432627135, 0, 1, 0, 'XANH NƯỚC BIỂN', 'XANH-NUOC-BIEN', '', ''),
(21, 2, '', 9, 17, 1, 'viewlist', 0, '', 1, 0, 1432627148, 1432627148, 0, 1, 0, 'CAM', 'CAM', '', ''),
(22, 2, '', 10, 18, 1, 'viewlist', 0, '', 1, 0, 1432627153, 1432627153, 0, 1, 0, 'BẠC', 'BAC', '', ''),
(23, 2, '', 11, 19, 1, 'viewlist', 0, '', 1, 0, 1432627160, 1432627160, 0, 1, 0, 'MÀU DA', 'MAU-DA', '', ''),
(24, 2, '', 12, 20, 1, 'viewlist', 0, '', 1, 0, 1432627182, 1432627182, 2, 1, 0, 'ĐEN', 'DEN', '', ''),
(25, 3, '', 1, 22, 1, 'viewlist', 0, '', 1, 0, 1432627201, 1432627201, 0, 1, 0, 'F', 'F', '', ''),
(26, 3, '', 2, 23, 1, 'viewlist', 0, '', 1, 0, 1432627210, 1432627210, 0, 1, 0, 'L', 'L', '', ''),
(27, 3, '', 3, 24, 1, 'viewlist', 0, '', 1, 0, 1432627215, 1432627215, 0, 1, 0, 'M', 'M', '', ''),
(28, 3, '', 4, 25, 1, 'viewlist', 0, '', 1, 0, 1432627219, 1432627219, 0, 1, 0, 'S', 'S', '', ''),
(29, 3, '', 5, 26, 1, 'viewlist', 0, '', 1, 0, 1432627223, 1432627223, 0, 1, 0, 'XL', 'XL', '', ''),
(30, 3, '', 6, 27, 1, 'viewlist', 0, '', 1, 0, 1432627241, 1432627241, 0, 1, 0, 'XXL', 'XXL', '', ''),
(31, 3, '', 7, 28, 1, 'viewlist', 0, '', 1, 0, 1432627250, 1432627250, 0, 1, 0, 'XXXL', 'XXXL', '', ''),
(32, 3, '', 8, 29, 1, 'viewlist', 0, '', 1, 0, 1432627259, 1432627259, 2, 1, 0, '35', '35', '', ''),
(33, 3, '', 9, 30, 1, 'viewlist', 0, '', 1, 0, 1432627264, 1432627264, 2, 1, 0, '36', '36', '', ''),
(34, 3, '', 10, 31, 1, 'viewlist', 0, '', 1, 0, 1432627269, 1432627269, 2, 1, 0, '37', '37', '', ''),
(35, 3, '', 11, 32, 1, 'viewlist', 0, '', 1, 0, 1432627274, 1432627274, 2, 1, 0, '38', '38', '', ''),
(36, 3, '', 12, 33, 1, 'viewlist', 0, '', 1, 0, 1432627279, 1432627279, 0, 1, 0, '39', '39', '', ''),
(37, 3, '', 13, 34, 1, 'viewlist', 0, '', 1, 0, 1432627284, 1432627284, 0, 1, 0, '40', '40', '', ''),
(38, 3, '', 14, 35, 1, 'viewlist', 0, '', 1, 0, 1432627291, 1432627291, 0, 1, 0, '41', '41', '', ''),
(39, 3, '', 15, 36, 1, 'viewlist', 0, '', 1, 0, 1432627296, 1432627296, 0, 1, 0, '42', '42', '', ''),
(40, 4, '', 1, 38, 1, 'viewlist', 0, '', 1, 0, 1432627339, 1432627339, 0, 1, 0, 'COTTON', 'COTTON', '', ''),
(41, 4, '', 2, 39, 1, 'viewlist', 0, '', 1, 0, 1432627346, 1432627346, 0, 1, 0, 'DẠ', 'DA', '', ''),
(42, 4, '', 3, 40, 1, 'viewlist', 0, '', 1, 0, 1432627364, 1432627364, 0, 1, 0, 'JEANS', 'JEANS', '', ''),
(43, 4, '', 4, 41, 1, 'viewlist', 0, '', 1, 0, 1432627369, 1432627369, 0, 1, 0, 'BÒ', 'BO', '', ''),
(44, 4, '', 5, 42, 1, 'viewlist', 0, '', 1, 0, 1432627378, 1432627378, 0, 1, 0, 'LANH', 'LANH', '', ''),
(45, 4, '', 6, 43, 1, 'viewlist', 0, '', 1, 0, 1432627385, 1432627385, 0, 1, 0, 'TƠ TẰM', 'TO-TAM', '', ''),
(46, 4, '', 7, 44, 1, 'viewlist', 0, '', 1, 0, 1432627399, 1432627399, 0, 1, 0, 'THUN', 'THUN', '', ''),
(47, 4, '', 8, 45, 1, 'viewlist', 0, '', 1, 0, 1432627407, 1432627407, 0, 1, 0, 'LỤA', 'LUA', '', ''),
(48, 5, '', 1, 47, 1, 'viewlist', 0, '', 1, 0, 1432627418, 1432627418, 0, 1, 0, 'VIỆT NAM', 'VIET-NAM', '', ''),
(49, 5, '', 2, 48, 1, 'viewlist', 0, '', 1, 0, 1432627425, 1432627425, 0, 1, 0, 'HÀN QUỐC', 'HAN-QUOC', '', ''),
(50, 5, '', 3, 49, 1, 'viewlist', 0, '', 1, 0, 1432627519, 1432627519, 0, 1, 0, 'ĐỨC', 'DUC', '', ''),
(51, 5, '', 4, 50, 1, 'viewlist', 0, '', 1, 0, 1432627528, 1432627528, 0, 1, 0, 'NHẬT BẢN', 'NHAT-BAN', '', ''),
(52, 5, '', 5, 51, 1, 'viewlist', 0, '', 1, 0, 1432627541, 1432627541, 0, 1, 0, 'THÁI LAN', 'THAI-LAN', '', ''),
(53, 5, '', 6, 52, 1, 'viewlist', 0, '', 1, 0, 1432627553, 1432627553, 2, 1, 0, 'HONGKONG', 'HONGKONG', '', ''),
(54, 5, '', 7, 53, 1, 'viewlist', 0, '', 1, 0, 1432627565, 1432627565, 0, 1, 0, 'TRUNG QUỐC', 'TRUNG-QUOC', '', ''),
(55, 5, '', 8, 54, 1, 'viewlist', 0, '', 1, 0, 1432627573, 1432627573, 0, 1, 0, 'PHÁP', 'PHAP', '', ''),
(56, 5, '', 9, 55, 1, 'viewlist', 0, '', 1, 0, 1432627579, 1432627579, 0, 1, 0, 'ANH', 'ANH', '', ''),
(57, 5, '', 10, 56, 1, 'viewlist', 0, '', 1, 0, 1432627617, 1432627617, 0, 1, 0, 'AUSTRALIA', 'AUSTRALIA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_group_cateid`
--

CREATE TABLE `nv4_shop_group_cateid` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `cateid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_group_cateid`
--

INSERT INTO `nv4_shop_group_cateid` (`groupid`, `cateid`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_group_items`
--

CREATE TABLE `nv4_shop_group_items` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_group_items`
--

INSERT INTO `nv4_shop_group_items` (`pro_id`, `group_id`) VALUES
(9, 7),
(9, 24),
(9, 32),
(9, 33),
(9, 34),
(9, 35),
(9, 53),
(12, 7),
(12, 24),
(12, 32),
(12, 33),
(12, 34),
(12, 35),
(12, 53);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_group_quantity`
--

CREATE TABLE `nv4_shop_group_quantity` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_group_quantity`
--

INSERT INTO `nv4_shop_group_quantity` (`pro_id`, `listgroup`, `quantity`) VALUES
(9, '7,24,35,53', 10);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_location`
--

CREATE TABLE `nv4_shop_location` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT 0,
  `sort` mediumint(8) NOT NULL DEFAULT 0,
  `lev` smallint(4) NOT NULL DEFAULT 0,
  `numsub` int(11) NOT NULL DEFAULT 0,
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_money_vi`
--

CREATE TABLE `nv4_shop_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `exchange` double NOT NULL DEFAULT 0,
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_money_vi`
--

INSERT INTO `nv4_shop_money_vi` (`id`, `code`, `currency`, `symbol`, `exchange`, `round`, `number_format`) VALUES
(840, 'USD', 'US Dollar', '$', 21000, '0.01', ',||.'),
(704, 'VND', 'Vietnam Dong', 'đ', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_orders`
--

CREATE TABLE `nv4_shop_orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `who_is` int(2) UNSIGNED NOT NULL DEFAULT 0,
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double UNSIGNED NOT NULL DEFAULT 0,
  `order_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT 0,
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT 0,
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_orders_id`
--

CREATE TABLE `nv4_shop_orders_id` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `listgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `discount_id` smallint(6) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_orders_id_group`
--

CREATE TABLE `nv4_shop_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_orders_shipping`
--

CREATE TABLE `nv4_shop_orders_shipping` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `order_id` int(11) UNSIGNED NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) UNSIGNED NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) UNSIGNED NOT NULL,
  `ship_carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `weight` double NOT NULL DEFAULT 0,
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` double NOT NULL DEFAULT 0,
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_point`
--

CREATE TABLE `nv4_shop_point` (
  `userid` int(11) NOT NULL DEFAULT 0,
  `point_total` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_point_history`
--

CREATE TABLE `nv4_shop_point_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT 0,
  `time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_point_queue`
--

CREATE TABLE `nv4_shop_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_review`
--

CREATE TABLE `nv4_shop_review` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_rows`
--

CREATE TABLE `nv4_shop_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT 0,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT 0,
  `product_price` double NOT NULL DEFAULT 0,
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `saleprice` double NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` double NOT NULL DEFAULT 0,
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT 0,
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `copyright` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `gift_from` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `gift_to` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitslm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `num_sell` mediumint(8) NOT NULL DEFAULT 0,
  `showprice` tinyint(2) NOT NULL DEFAULT 0,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_tag_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_tag_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_rows`
--

INSERT INTO `nv4_shop_rows` (`id`, `listcatid`, `user_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `price_config`, `saleprice`, `money_unit`, `product_unit`, `product_weight`, `weight_unit`, `discount_id`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `gift_from`, `gift_to`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `num_sell`, `showprice`, `vi_title`, `vi_alias`, `vi_hometext`, `vi_bodytext`, `vi_gift_content`, `vi_address`, `vi_tag_title`, `vi_tag_description`) VALUES
(17, 13, 1, 1432606317, 1635647034, 1, 1635647088, 0, 2, 'S000017', 10, 100000, '', 0, 'VND', 1, 500, 'g', 1, '2021_10/sp10.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 12, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-17', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(18, 13, 1, 1432606317, 1635647034, 1, 1635647100, 0, 2, 'S000018', 10, 100000, '', 0, 'VND', 1, 500, 'g', 1, '2021_10/sp10.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-18', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(19, 6, 1, 1432606317, 1635647034, 1, 1635685609, 0, 2, 'S000019', 10, 100000, '', 0, 'VND', 1, 500, 'g', 1, '2021_10/sp10.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-19', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(20, 8, 1, 1432606317, 1635647034, 1, 1635685648, 0, 2, 'S000020', 10, 100000, '', 0, 'VND', 1, 500, 'g', 1, '2021_10/sp10.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 3, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-20', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(9, 10, 1, 1432606317, 1635682711, 1, 1432606317, 0, 2, 'S000009', 10, 100000, '', 0, 'VND', 1, 500, 'g', 0, '2021_10/sp28.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 7, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(13, 6, 1, 1432606317, 1635682719, 1, 1635642000, 0, 2, 'S000013', 10, 100000, '', 0, 'VND', 1, 500, 'g', 0, '2021_10/sp28.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 3, 0, 0, 0, 1, 'Thịt lợn', 'Thit-lon-13', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(14, 11, 1, 1432606317, 1635685027, 1, 1635642000, 0, 2, 'S000014', 10, 100000, '', 0, 'VND', 1, 500, 'g', 0, '2021_10/sp28.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-14', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(15, 7, 1, 1432606317, 1635683390, 1, 1635642060, 0, 2, 'S000015', 10, 100000, '', 0, 'VND', 1, 500, 'g', 0, '2021_10/sp10.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 4, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-15', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(16, 13, 1, 1432606317, 1635647034, 1, 1635642360, 0, 2, 'S000016', 10, 100000, '', 0, 'VND', 1, 500, 'g', 1, '2021_10/sp10.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg|2021_10/sp10.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 3, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-16', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', ''),
(12, 10, 1, 1432606317, 1635685044, 1, 1635642000, 0, 2, 'S000012', 10, 100000, '', 0, 'VND', 1, 500, 'g', 0, '2021_10/sp28.jpg', 1, 'Giày da nữ gót vuông', '2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg|2021_10/sp28.jpg', 0, 0, 0, 0, 1, '4', 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'Thịt lợn', 'thit-lon-10', 'Giày da nữ gót vuông', 'Sản phẩm thời trang<br />&nbsp;<div style=\"text-align:center\"><img alt=\"giay bup be ngoi sao nhap khau\" height=\"416\" src=\"/uploads/shop/2021_10/sp28.jpg\" width=\"480\" /></div>', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_shops`
--

CREATE TABLE `nv4_shop_shops` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_shops_carrier`
--

CREATE TABLE `nv4_shop_shops_carrier` (
  `shops_id` tinyint(3) UNSIGNED NOT NULL,
  `carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `config_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_tabs`
--

CREATE TABLE `nv4_shop_tabs` (
  `id` int(3) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_tabs`
--

INSERT INTO `nv4_shop_tabs` (`id`, `icon`, `content`, `weight`, `active`, `vi_title`) VALUES
(1, '', 'content_detail', 1, 1, 'Chi tiết sản phẩm'),
(2, '', 'content_comments', 2, 1, 'Bình luận'),
(3, '', 'content_rate', 3, 1, 'Đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_tags_id_vi`
--

CREATE TABLE `nv4_shop_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_tags_id_vi`
--

INSERT INTO `nv4_shop_tags_id_vi` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'thời trang'),
(1, 2, 'sang trọng'),
(1, 3, 'phù hợp'),
(1, 4, 'đi chơi'),
(6, 5, 'áo sơ mi'),
(10, 6, 'mũi nhọn'),
(11, 7, 'búp bê');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_tags_vi`
--

CREATE TABLE `nv4_shop_tags_vi` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT 0,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_tags_vi`
--

INSERT INTO `nv4_shop_tags_vi` (`tid`, `numpro`, `alias`, `image`, `description`, `bodytext`, `keywords`) VALUES
(1, 1, 'thời-trang', '', '', '', 'thời trang'),
(2, 1, 'sang-trọng', '', '', '', 'sang trọng'),
(3, 1, 'phù-hợp', '', '', '', 'phù hợp'),
(4, 1, 'đi-chơi', '', '', '', 'đi chơi'),
(5, 1, 'áo-sơ-mi', '', '', '', 'áo sơ mi'),
(6, 1, 'mũi-nhọn', '', '', '', 'mũi nhọn'),
(7, 1, 'búp-bê', '', '', '', 'búp bê');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_template`
--

CREATE TABLE `nv4_shop_template` (
  `id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 1,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_transaction`
--

CREATE TABLE `nv4_shop_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT 0,
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT 0,
  `userid` int(11) NOT NULL DEFAULT 0,
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT 0,
  `payment_amount` double NOT NULL DEFAULT 0,
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_units`
--

CREATE TABLE `nv4_shop_units` (
  `id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_units`
--

INSERT INTO `nv4_shop_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'cái', ''),
(2, 'đôi', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_warehouse`
--

CREATE TABLE `nv4_shop_warehouse` (
  `wid` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_warehouse`
--

INSERT INTO `nv4_shop_warehouse` (`wid`, `title`, `note`, `user_id`, `addtime`) VALUES
(1, 'Nhập kho ngày 23/05/2015', '', 1, 1432364016),
(2, 'Nhập kho ngày 23/05/2015', '', 1, 1432365552),
(3, 'Nhập kho ngày 23/05/2015', '', 1, 1432366753),
(4, 'Nhập kho ngày 23/05/2015', '', 1, 1432367106),
(5, 'Nhập kho ngày 23/05/2015', '', 1, 1432367387),
(6, 'Nhập kho ngày 23/05/2015', '', 1, 1432367857),
(7, 'Nhập kho ngày 23/05/2015', '', 1, 1432369139),
(8, 'Nhập kho ngày 26/05/2015', '', 1, 1432608794),
(9, 'Nhập kho ngày 26/05/2015', '', 1, 1432608805),
(10, 'Nhập kho ngày 26/05/2015', '', 1, 1432608819),
(11, 'Nhập kho ngày 26/05/2015', '', 1, 1432608835);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_warehouse_logs`
--

CREATE TABLE `nv4_shop_warehouse_logs` (
  `logid` int(11) UNSIGNED NOT NULL,
  `wid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_warehouse_logs`
--

INSERT INTO `nv4_shop_warehouse_logs` (`logid`, `wid`, `pro_id`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, 1, 20, 150000, 'VND'),
(2, 2, 2, 50, 250000, 'VND'),
(3, 3, 3, 15, 70000, 'VND'),
(4, 4, 4, 20, 120000, 'VND'),
(5, 5, 5, 30, 120000, 'VND'),
(6, 6, 6, 15, 180000, 'VND'),
(7, 7, 7, 50, 50000, 'VND'),
(8, 8, 11, 20, 80000, 'VND'),
(9, 9, 10, 10, 90000, 'VND'),
(10, 10, 9, 10, 95000, 'VND'),
(11, 11, 8, 15, 50000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_warehouse_logs_group`
--

CREATE TABLE `nv4_shop_warehouse_logs_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `logid` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_warehouse_logs_group`
--

INSERT INTO `nv4_shop_warehouse_logs_group` (`id`, `logid`, `listgroup`, `quantity`, `price`, `money_unit`) VALUES
(8, 8, '7,24,35', 20, 80000, 'VND'),
(9, 9, '7,16,33,51', 10, 90000, 'VND'),
(10, 10, '7,24,35,53', 10, 95000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_weight_vi`
--

CREATE TABLE `nv4_shop_weight_vi` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` double NOT NULL DEFAULT 0,
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shop_weight_vi`
--

INSERT INTO `nv4_shop_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shop_wishlist`
--

CREATE TABLE `nv4_shop_wishlist` (
  `wid` smallint(6) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `listid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT 0,
  `thumb_type` tinyint(4) NOT NULL DEFAULT 0,
  `thumb_width` smallint(6) NOT NULL DEFAULT 0,
  `thumb_height` smallint(6) NOT NULL DEFAULT 0,
  `thumb_quality` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 500, 500, 90),
(1, 'uploads', 1635516714, 0, 0, 0, 0),
(2, 'uploads/contact', 0, 0, 0, 0, 0),
(3, 'uploads/news', 1635527953, 0, 0, 0, 0),
(4, 'uploads/news/source', 0, 0, 0, 0, 0),
(5, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(6, 'uploads/news/topics', 0, 0, 0, 0, 0),
(7, 'uploads/page', 1635641442, 0, 0, 0, 0),
(8, 'uploads/users', 0, 0, 0, 0, 0),
(9, 'uploads/users/groups', 0, 0, 0, 0, 0),
(10, 'uploads/siteterms', 0, 0, 0, 0, 0),
(11, 'uploads/banners', 0, 0, 0, 0, 0),
(12, 'uploads/banners/files', 0, 0, 0, 0, 0),
(13, 'uploads/menu', 0, 0, 0, 0, 0),
(14, 'uploads/freecontent', 1635520686, 0, 0, 0, 0),
(15, 'uploads/about', 1635520108, 0, 0, 0, 0),
(16, 'uploads/comment', 0, 0, 0, 0, 0),
(17, 'uploads/home', 0, 0, 0, 0, 0),
(18, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0),
(19, 'uploads/shops/2021_10', 1635520488, 0, 0, 0, 0),
(20, 'uploads/shops/files', 0, 0, 0, 0, 0),
(21, 'uploads/shop', 1635524116, 0, 0, 0, 0),
(22, 'uploads/shop/temp_pic', 0, 0, 0, 0, 0),
(23, 'uploads/shop/2021_10', 1635524119, 0, 0, 0, 0),
(24, 'uploads/shop/files', 0, 0, 0, 0, 0),
(25, 'uploads/shops', 0, 0, 0, 0, 0),
(26, 'uploads/shops/2015_05', 1635525199, 0, 0, 0, 0),
(27, 'uploads/news/2021_10', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT 0,
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT 0,
  `srcheight` int(11) NOT NULL DEFAULT 0,
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `mtime` int(11) NOT NULL DEFAULT 0,
  `did` int(11) NOT NULL DEFAULT 0,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('laduyen.png', 'png', 'image', 3082, 'assets/laduyen.png', 80, 74, '108|100', 1, 1635516725, 1, 'laduyen.png', 'laduyen'),
('nukevietvn.png', 'png', 'image', 81035, 'assets/about/nukevietvn.png', 80, 38, '1500|700', 1, 1635502628, 15, 'nukevietvn.png', 'nukevietvn'),
('nukevietcms.png', 'png', 'image', 85684, 'assets/about/nukevietcms.png', 80, 38, '1500|700', 1, 1635502628, 15, 'nukevietcms.png', 'nukevietcms'),
('nukevietvn...png', 'png', 'image', 11586, 'assets/about/nukevietvn_180x84.png', 80, 38, '180|84', 1, 1635502628, 15, 'nukevietvn_180x84.png', 'nukevietvn 180x84'),
('nukevietcm...png', 'png', 'image', 13125, 'assets/about/nukevietcms_laco_180x57.png', 80, 26, '180|57', 1, 1635502628, 15, 'nukevietcms_laco_180x57.png', 'nukevietcms laco 180x57'),
('logo-nukev...png', 'png', 'image', 13223, 'assets/about/logo-nukeviet3-flag-180x75.png', 80, 34, '180|75', 1, 1635502628, 15, 'logo-nukeviet3-flag-180x75.png', 'logo nukeviet3 flag 180x75'),
('w.png', 'png', 'image', 12156, 'assets/about/w.png', 80, 40, '288|143', 1, 1635502628, 15, 'w.png', 'w'),
('nukevietcm...png', 'png', 'image', 11974, 'assets/about/nukevietcms-180x84.png', 80, 38, '180|84', 1, 1635502628, 15, 'nukevietcms-180x84.png', 'nukevietcms 180x84'),
('nukevietcm...png', 'png', 'image', 13319, 'assets/about/nukevietcms_mu_noel_180x84.png', 80, 38, '180|84', 1, 1635502628, 15, 'nukevietcms_mu_noel_180x84.png', 'nukevietcms mu noel 180x84'),
('about_1.png', 'png', 'image', 365830, 'assets/about/about_1.png', 80, 46, '586|337', 1, 1635520183, 15, 'about_1.png', 'about'),
('img-c1.png', 'png', 'image', 133388, 'assets/shops/2021_10/img-c1.png', 80, 51, '328|209', 1, 1635522026, 19, 'img-c1.png', 'img c1'),
('banner.png', 'png', 'image', 556253, 'assets/banner.png', 80, 20, '1110|270', 1, 1635520600, 1, 'banner.png', 'banner'),
('shop.jpg', 'jpg', 'image', 26352, 'assets/freecontent/shop.jpg', 80, 44, '130|71', 1, 1635502628, 14, 'shop.jpg', 'shop'),
('portal.jpg', 'jpg', 'image', 25973, 'assets/freecontent/portal.jpg', 80, 44, '130|71', 1, 1635502628, 14, 'portal.jpg', 'portal'),
('edugate.jpg', 'jpg', 'image', 28008, 'assets/freecontent/edugate.jpg', 80, 44, '130|71', 1, 1635502628, 14, 'edugate.jpg', 'edugate'),
('toa-soan-d...jpg', 'jpg', 'image', 28737, 'assets/freecontent/toa-soan-dien-tu.jpg', 80, 44, '130|71', 1, 1635502628, 14, 'toa-soan-dien-tu.jpg', 'toa soan dien tu'),
('cms.jpg', 'jpg', 'image', 29026, 'assets/freecontent/cms.jpg', 80, 44, '130|71', 1, 1635502628, 14, 'cms.jpg', 'cms'),
('caphearcau...jpg', 'jpg', 'image', 76178, 'assets/shop/2021_10/caphearcaudat.laduyen.500g.jpg', 80, 80, '500|500', 1, 1635524126, 23, 'caphearcaudat.laduyen.500g.jpg', 'caphearcaudat laduyen 500g'),
('logo.png', 'png', 'image', 3082, 'assets/shops/2021_10/logo.png', 80, 74, '108|100', 1, 1635522028, 19, 'logo.png', 'logo'),
('img-c2.png', 'png', 'image', 95180, 'assets/shops/2021_10/img-c2.png', 80, 50, '393|246', 1, 1635522027, 19, 'img-c2.png', 'img c2'),
('img-c3.jpg', 'jpg', 'image', 35666, 'assets/shops/2021_10/img-c3.jpg', 56, 80, '352|500', 1, 1635522027, 19, 'img-c3.jpg', 'img c3'),
('giay-bup-b...jpg', 'jpg', 'image', 131547, 'assets/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg', 80, 80, '800|800', 1, 1635518730, 26, 'giay-bup-be-ngoi-sao-nhap-khau.jpg', 'giay bup be ngoi sao nhap khau'),
('caphearcau...jpg', 'jpg', 'image', 76178, 'assets/shops/2021_10/caphearcaudat.laduyen.500g.jpg', 80, 80, '500|500', 1, 1635526037, 19, 'caphearcaudat.laduyen.500g.jpg', 'caphearcaudat laduyen 500g'),
('hoptac 6.jpg', 'jpg', 'image', 12871, 'uploads/news/hoptac 6.jpg', 80, 66, '382|314', 1, 1635502628, 3, 'hoptac 6.jpg', 'hoptac 6'),
('thuc-tap-sinh.jpg', 'jpg', 'image', 71135, 'assets/news/thuc-tap-sinh.jpg', 80, 63, '460|360', 1, 1635502628, 3, 'thuc-tap-sinh.jpg', 'thuc tap sinh'),
('chuc-mung-...jpg', 'jpg', 'image', 130708, 'assets/news/chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 80, 62, '461|360', 1, 1635502628, 3, 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'chuc mung nukeviet thong tu 20 bo tttt'),
('nukeviet-n...jpg', 'jpg', 'image', 18611, 'assets/news/nukeviet-nhantaidatviet2011.jpg', 80, 54, '400|268', 1, 1635502628, 3, 'nukeviet-nhantaidatviet2011.jpg', 'nukeviet nhantaidatviet2011'),
('tuyendung-...jpg', 'jpg', 'image', 83783, 'assets/news/tuyendung-kythuat.jpg', 80, 80, '300|300', 1, 1635502628, 3, 'tuyendung-kythuat.jpg', 'tuyendung kythuat'),
('nangly.jpg', 'jpg', 'image', 34802, 'assets/news/nangly.jpg', 80, 53, '500|332', 1, 1635502628, 3, 'nangly.jpg', 'nangly'),
('hoc-viec-t...jpg', 'jpg', 'image', 167193, 'assets/news/hoc-viec-tai-cong-ty-vinades.jpg', 80, 63, '460|360', 1, 1635502628, 3, 'hoc-viec-tai-cong-ty-vinades.jpg', 'hoc viec tai cong ty vinades'),
('hoptac.jpg', 'jpg', 'image', 12871, 'assets/news/hoptac.jpg', 80, 66, '382|314', 1, 1635502628, 3, 'hoptac.jpg', 'hoptac'),
('tap-huan-p...jpg', 'jpg', 'image', 132379, 'assets/news/tap-huan-pgd-ha-dong-2015.jpg', 80, 52, '460|295', 1, 1635502628, 3, 'tap-huan-pgd-ha-dong-2015.jpg', 'tap huan pgd ha dong 2015'),
('nukeviet-cms.jpg', 'jpg', 'image', 83489, 'assets/news/nukeviet-cms.jpg', 80, 55, '500|345', 1, 1635502628, 3, 'nukeviet-cms.jpg', 'nukeviet cms'),
('tuyen-dung...png', 'png', 'image', 118910, 'assets/news/tuyen-dung-nvkd.png', 80, 56, '400|279', 1, 1635502628, 3, 'tuyen-dung-nvkd.png', 'tuyen dung nvkd'),
('img-c1.png', 'png', 'image', 133388, 'assets/news/img-c1.png', 80, 51, '328|209', 1, 1635527970, 3, 'img-c1.png', 'img c1'),
('img-c2.png', 'png', 'image', 95180, 'assets/news/img-c2.png', 80, 50, '393|246', 1, 1635527981, 3, 'img-c2.png', 'img c2'),
('img-c3.jpg', 'jpg', 'image', 35666, 'assets/freecontent/img-c3.jpg', 56, 80, '352|500', 1, 1635531109, 14, 'img-c3.jpg', 'img c3'),
('artboard-7.png', 'png', 'image', 13968, 'assets/freecontent/artboard-7.png', 51, 80, '321|501', 1, 1635532382, 14, 'artboard-7.png', 'Artboard 7'),
('artboard-8.png', 'png', 'image', 12406, 'assets/freecontent/artboard-8.png', 51, 80, '321|501', 1, 1635532396, 14, 'artboard-8.png', 'Artboard 8'),
('logo.png', 'png', 'image', 3082, 'assets/freecontent/logo.png', 80, 74, '108|100', 1, 1635607984, 14, 'logo.png', 'logo'),
('sp10.jpg', 'jpg', 'image', 34848, 'assets/shop/2021_10/sp10.jpg', 80, 80, '480|480', 1, 1635614114, 23, 'sp10.jpg', 'sp10'),
('sp12.jpg', 'jpg', 'image', 30405, 'assets/shop/2021_10/sp12.jpg', 80, 80, '480|480', 1, 1635614115, 23, 'sp12.jpg', 'sp12'),
('sp26.jpg', 'jpg', 'image', 15315, 'assets/shop/2021_10/sp26.jpg', 80, 69, '480|416', 1, 1635614115, 23, 'sp26.jpg', 'sp26'),
('sp28.jpg', 'jpg', 'image', 24885, 'assets/shop/2021_10/sp28.jpg', 80, 69, '480|416', 1, 1635614115, 23, 'sp28.jpg', 'sp28'),
('sp7.jpg', 'jpg', 'image', 15947, 'assets/shops/2021_10/sp7.jpg', 80, 80, '480|480', 1, 1635614527, 19, 'sp7.jpg', 'sp7'),
('about.png', 'png', 'image', 365830, 'assets/page/about.png', 80, 46, '586|337', 1, 1635641457, 7, 'about.png', 'about');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `active2step` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `secretkey` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_update` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời điểm cập nhật thông tin lần cuối',
  `idsite` int(11) NOT NULL DEFAULT 0,
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `email_verification_time` int(11) NOT NULL DEFAULT -1 COMMENT '-3: Tài khoản sys, -2: Admin kích hoạt, -1 không cần kích hoạt, 0: Chưa xác minh, > 0 thời gian xác minh',
  `active_obj` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SYSTEM' COMMENT 'SYSTEM, EMAIL, OAUTH:xxxx, quản trị kích hoạt thì lưu userid'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `active2step`, `secretkey`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `last_update`, `idsite`, `safemode`, `safekey`, `email_verification_time`, `active_obj`) VALUES
(1, 1, 'anvh.ceo', 'df17a6844e4ac2c4e6adf7a9497a6717', 'b6b038ba8fecbd1fa43658a80c0ca21c079127fa', 'anvh.ceo@gmail.com', 'anvh.ceo', '', '', '', 0, '', 1635516685, 'An Ho', 'anvh', '', 0, 1, '1,4', 1, 0, '', '', 1635516685, '', '', '', 0, 0, 0, '', -3, 'SYSTEM');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_backupcodes`
--

CREATE TABLE `nv4_users_backupcodes` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_used` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `time_used` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `time_creat` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:8:{s:15:\"access_viewlist\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_addus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:\"access_waiting\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:17:\"access_editcensor\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_editus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:\"access_delus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_passus\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:\"access_groups\";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1635516608),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1635516608),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1635516608),
('avatar_width', '80', 1635516608),
('avatar_height', '80', 1635516608),
('active_group_newusers', '0', 1635516608),
('active_editinfo_censor', '0', 1635516608),
('active_user_logs', '1', 1635516608),
('min_old_user', '16', 1635516608),
('register_active_time', '86400', 1635516608),
('auto_assign_oauthuser', '0', 1635516608),
('admin_email', '0', 1635516608),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_edit`
--

CREATE TABLE `nv4_users_edit` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `lastedit` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `info_basic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `info_custom` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','unicodename','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT 0,
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `show_profile` tinyint(4) NOT NULL DEFAULT 1,
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_system` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_field`
--

INSERT INTO `nv4_users_field` (`fid`, `field`, `weight`, `field_type`, `field_choices`, `sql_choices`, `match_type`, `match_regex`, `func_callback`, `min_length`, `max_length`, `required`, `show_register`, `user_editable`, `show_profile`, `class`, `language`, `default_value`, `is_system`) VALUES
(1, 'first_name', 1, 'textbox', '', '', 'none', '', '', 0, 100, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:4:\"Tên\";i:1;s:0:\"\";}}', '', 1),
(2, 'last_name', 2, 'textbox', '', '', 'none', '', '', 0, 100, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:20:\"Họ và tên đệm\";i:1;s:0:\"\";}}', '', 1),
(3, 'gender', 3, 'select', 'a:3:{s:1:\"N\";s:0:\"\";s:1:\"M\";s:0:\"\";s:1:\"F\";s:0:\"\";}', '', 'none', '', '', 0, 1, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:12:\"Giới tính\";i:1;s:0:\"\";}}', '2', 1),
(4, 'birthday', 4, 'date', 'a:1:{s:12:\"current_date\";i:0;}', '', 'none', '', '', 0, 0, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Ngày tháng năm sinh\";i:1;s:0:\"\";}}', '0', 1),
(5, 'sig', 5, 'textarea', '', '', 'none', '', '', 0, 1000, 0, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:9:\"Chữ ký\";i:1;s:0:\"\";}}', '', 1),
(6, 'question', 6, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Câu hỏi bảo mật\";i:1;s:0:\"\";}}', '', 1),
(7, 'answer', 7, 'textbox', '', '', 'none', '', '', 3, 255, 1, 1, 1, 1, 'input', 'a:1:{s:2:\"vi\";a:2:{i:0;s:22:\"Trả lời câu hỏi\";i:1;s:0:\"\";}}', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `alias` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `require_2step_admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `require_2step_site` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT 0,
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `alias`, `email`, `group_type`, `group_color`, `group_avatar`, `require_2step_admin`, `require_2step_site`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super-Admin', '', 0, '', '', 0, 0, 0, 1635516608, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(2, 'General-Admin', '', 0, '', '', 0, 0, 0, 1635516608, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(3, 'Module-Admin', '', 0, '', '', 0, 0, 0, 1635516608, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(4, 'Users', '', 0, '', '', 0, 0, 0, 1635516608, 0, 4, 1, 0, 1, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(7, 'New-Users', '', 0, '', '', 0, 0, 0, 1635516608, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(5, 'Guest', '', 0, '', '', 0, 0, 0, 1635516608, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(6, 'All', '', 0, '', '', 0, 0, 0, 1635516608, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(10, 'NukeViet-Fans', '', 2, '', '', 0, 0, 1, 1635516608, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(11, 'NukeViet-Admins', '', 2, '', '', 0, 0, 0, 1635516608, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}'),
(12, 'NukeViet-Programmers', '', 1, '', '', 0, 0, 0, 1635516608, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:\"access_groups_add\";i:1;s:17:\"access_groups_del\";i:1;s:12:\"access_addus\";i:0;s:14:\"access_waiting\";i:0;s:13:\"access_editus\";i:0;s:12:\"access_delus\";i:0;s:13:\"access_passus\";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_detail`
--

CREATE TABLE `nv4_users_groups_detail` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_detail`
--

INSERT INTO `nv4_users_groups_detail` (`group_id`, `lang`, `title`, `description`, `content`) VALUES
(1, 'vi', 'Super Admin', '', ''),
(2, 'vi', 'General Admin', '', ''),
(3, 'vi', 'Module Admin', '', ''),
(4, 'vi', 'Users', '', ''),
(7, 'vi', 'New Users', '', ''),
(5, 'vi', 'Guest', '', ''),
(6, 'vi', 'All', '', ''),
(10, 'vi', 'Người hâm mộ', 'Nhóm những người hâm mộ hệ thống NukeViet', ''),
(11, 'vi', 'Người quản lý', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', ''),
(12, 'vi', 'Lập trình viên', 'Nhóm Lập trình viên hệ thống NukeViet', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_requested` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian yêu cầu tham gia',
  `time_approved` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Thời gian duyệt yêu cầu tham gia'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`, `time_requested`, `time_approved`) VALUES
(1, 1, 1, 1, '0', 1635516685, 1635516685);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `openid` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `id` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `openid_info` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `idsite` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', 'about_1.png', 'about', 0, 'Lá Duyên là một mô hình &quot;FROM FARM TO TABLE&quot; - Từ nông trại đến bàn ăn theo một quy trình lựa chọn và chế biến kỹ lưỡng. Chúng tôi cam kết 100% sản phẩm Lá Duyên đều có nguồn ngốc sạch từ thiên nhiên', '<h2><span style=\"font-size:20px;\"><strong>Giới thiệu khái quát</strong></span></h2>\r\n\r\n<p>Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href=\"/about/Gioi-thieu-ve-NukeViet-CMS.html\"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>\r\n\r\n<ul>\r\n	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li>\r\n	<li><a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li>\r\n	<li><a href=\"http://toasoandientu.vn\" target=\"_blank\">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li>\r\n</ul>\r\nTheo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:\r\n\r\n<ul>\r\n	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li>\r\n	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href=\"https://github.com/nukeviet/module-shops\" target=\"_blank\">module Shop</a> lên NukeViet CMS.</li>\r\n</ul>\r\n&nbsp;\r\n\r\n<h2><span style=\"font-size:20px;\"><strong>Video giới thiệu</strong></span></h2>\r\n<span style=\"font-size:14px;\">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br />\r\n(Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>\r\n\r\n<div style=\"text-align: center;\">\r\n<div style=\"text-align: center;\">\r\n<div class=\"youtube-embed-wrapper\" style=\"position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;\"><iframe allowfullscreen=\"\" height=\"480\" src=\"//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1\" style=\"position: absolute;top: 0;left: 0;width: 100%;height: 100%;\" width=\"640\"></iframe></div>\r\n<br />\r\n<span style=\"font-size:12px;\"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div>\r\n</div>\r\n\r\n<h2><br />\r\n<span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Lịch sử phát triển</span></strong></span></h2>\r\nNukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br />\r\n<br />\r\nKể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này.\r\n<h2><br />\r\n<span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\"Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn\">Diễn đàn NukeViet.vn</span></strong></span></h2>\r\n\r\n<p>Diễn đàn NukeViet hoạt động trên website: <a href=\"http://nukeviet.vn\">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>\r\n\r\n<p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>\r\n\r\n<h2><br />\r\n<span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng\"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>\r\n\r\n<h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\"Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch\">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>\r\n\r\n<ul>\r\n	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li>\r\n	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li>\r\n</ul>\r\n<span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99\">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>\r\n\r\n<p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>\r\n\r\n<ul>\r\n	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li>\r\n	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li>\r\n	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li>\r\n</ul>\r\n\r\n<h3><span style=\"font-size:14px;\"><em><strong><span class=\"mw-headline\" id=\".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7\">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>\r\n\r\n<p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>\r\n\r\n<h2><br />\r\n<span style=\"font-size:20px;\"><span class=\"mw-headline\" id=\"T.C3.ADnh_n.C4.83ng\"><strong>Tính năng</strong></span></span></h2>\r\n\r\n<h3><span style=\"font-size:14px;\"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>\r\n\r\n<ul>\r\n	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li>\r\n	<li>Giới thiệu (<i>About</i>),</li>\r\n	<li>Quản lý quảng cáo thương mại (banners),</li>\r\n	<li>Quản lý người dùng (<i>users</i>),</li>\r\n	<li>Liên hệ qua site (<i>Contact</i>),</li>\r\n	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li>\r\n	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li>\r\n	<li>Thư viện file (<i>Download</i>),</li>\r\n	<li>Thư viện Web (<i>Weblinks</i>),</li>\r\n	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li>\r\n	<li>Thống kê truy cập (<i>statistics</i>),</li>\r\n	<li>Tìm kiếm trong site (<i>Search</i>),</li>\r\n	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li>\r\n</ul>\r\n\r\n<h3><span style=\"font-size:14px;\"><strong>Tính năng hệ thống:</strong></span></h3>\r\n\r\n<ul>\r\n	<li>Cài đặt, nâng cấp và đóng gói tự động.</li>\r\n	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li>\r\n	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li>\r\n	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li>\r\n	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li>\r\n	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li>\r\n	<li>Quản lý và sao lưu cơ sở dữ liệu.</li>\r\n	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li>\r\n	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li>\r\n	<li>...</li>\r\n</ul>\r\n\r\n<h2><span style=\"font-size:20px;\"><strong><span class=\"mw-headline\" id=\".E1.BB.A8ng_d.E1.BB.A5ng\">Ứng dụng</span></strong></span></h2>\r\n\r\n<p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br />\r\n<br />\r\nNukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>\r\n\r\n<ul>\r\n	<li>Các cổng thông tin điện tử</li>\r\n	<li>Các tập đoàn kinh tế</li>\r\n	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li>\r\n	<li>Báo điện tử, tạp chí điện tử</li>\r\n	<li>Website của các doanh nghiệp vừa và nhỏ</li>\r\n	<li>Website của các cơ quan, tổ chức chính phủ</li>\r\n	<li>Website giáo dục, trường học</li>\r\n	<li>Website của gia đình, cá nhân, nhóm sở thích...</li>\r\n</ul>\r\n\r\n<p><br />\r\nNgoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', 'giới thiệu', 1, '4', '', 1, 1, 1635516608, 1635524915, 1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '1'),
('related_articles', '5'),
('copy_page', '1'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT 0,
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT 0,
  `weight` int(11) NOT NULL DEFAULT 0,
  `config` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(2, 'default', 'banners', 'global.banners.php', 'Quảng cáo giữa trang', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:\"idplanbanner\";i:2;}'),
(6, 'default', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 4, ''),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:\"idplanbanner\";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(11, 'default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, ''),
(13, 'default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 1, ''),
(14, 'default', 'statistics', 'global.counter_button.php', 'Online button', '', 'no_title', '[QR_CODE]', 0, '1', 1, '6', 1, 2, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(18, 'default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, ''),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(20, 'default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'simple', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:8:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";}}'),
(21, 'default', 'freecontent', 'global.free_content.php', 'Sản phẩm', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:3:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, ''),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:0:\"\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:12:\"VINADES.,JSC\";s:10:\"design_url\";s:18:\"http://vinades.vn/\";s:13:\"siteterms_url\";s:39:\"/index.php?language=vi&amp;nv=siteterms\";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:\"module_in_menu\";a:9:{i:0;s:5:\"about\";i:1;s:4:\"news\";i:2;s:5:\"users\";i:3;s:7:\"contact\";i:4;s:6:\"voting\";i:5;s:7:\"banners\";i:6;s:4:\"seek\";i:7;s:5:\"feeds\";i:8;s:9:\"siteterms\";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:13:{s:12:\"company_name\";s:58:\"Công ty cổ phần phát triển nguồn mở Việt Nam\";s:15:\"company_address\";s:72:\"Phòng 1706 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội\";s:16:\"company_sortname\";s:12:\"VINADES.,JSC\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_showmap\";i:1;s:14:\"company_mapurl\";s:326:\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2634.116366996857!2d105.79399620326203!3d20.9844946314258!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ac93055e2f2f%3A0x91f4b423089193dd!2zQ8O0bmcgdHkgQ-G7lSBwaOG6p24gUGjDoXQgdHJp4buDbiBOZ3Xhu5NuIG3hu58gVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1558315703646!5m2!1svi!2s\";s:13:\"company_phone\";s:58:\"+84-24-85872007[+842485872007]|+84-904762534[+84904762534]\";s:11:\"company_fax\";s:15:\"+84-24-35500914\";s:13:\"company_email\";s:18:\"contact@vinades.vn\";s:15:\"company_website\";s:17:\"http://vinades.vn\";}'),
(31, 'web24', 'page', 'global.html.php', 'global html', '', 'no_title', '[BANNER1]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:\"htmlcontent\";s:151:\"<div><a href=\"https://laduyen.vn/vi/khuyen-mai.html\" target=\"_blank\"><img alt=\"banner\" height=\"270\" src=\"/uploads/banner.png\" width=\"1110\" /></a></div>\";}'),
(32, 'web24', 'menu', 'global.treeview.php', 'Thông tin hỗ trợ', '', 'simple', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:4;s:12:\"title_length\";i:0;}'),
(33, 'web24', 'theme', 'global.block_language.php', 'global block language', '', 'no_title', '[CONTACT_HEAD_MAIL]', 0, '1', 1, '6', 0, 1, ''),
(34, 'web24', 'page', 'global.html.php', 'global html', '', 'no_title', '[CONTACT_HEAD_PHONE]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:\"htmlcontent\";s:78:\"Head office: 96/7 Nguyễn Sỹ Sách, Phường 15, Quận Tân Bình, Tp.HCM\";}'),
(35, 'web24', 'theme', 'global.copyright.php', 'global copyright', '', 'no_title', '[COPYRIGHT]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"copyright_by\";s:8:\"LaTacita\";s:13:\"copyright_url\";s:0:\"\";s:9:\"design_by\";s:0:\"\";s:10:\"design_url\";s:0:\"\";s:13:\"siteterms_url\";s:0:\"\";}'),
(36, 'web24', 'theme', 'global.hotline.php', 'global html', '', 'no_title', '[HOTLINE]', 0, '1', 1, '6', 1, 1, 'a:1:{s:5:\"phone\";s:10:\"0934190741\";}'),
(37, 'web24', 'page', 'global.html.php', 'global html', '', 'no_title', '[INFO_CONTACT_EMAIL]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:\"htmlcontent\";s:24:\"tinho.latacita@gmail.com\";}'),
(38, 'web24', 'page', 'global.html.php', 'global html', '', 'no_title', '[INFO_CONTACT_PHONE]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:\"htmlcontent\";s:10:\"0934190741\";}'),
(39, 'web24', 'theme', 'global.company_info.php', 'Thông tin liên hệ', '', 'no_title', '[INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:\"company_name\";s:10:\"LÁ DUYÊN\";s:16:\"company_sortname\";s:0:\"\";s:15:\"company_regcode\";s:0:\"\";s:16:\"company_regplace\";s:0:\"\";s:21:\"company_licensenumber\";s:0:\"\";s:22:\"company_responsibility\";s:0:\"\";s:15:\"company_address\";s:76:\"96/7 Nguyễn Sỹ Sách, Phường 15, Quận Tân Bình, Tp.Hồ Chí Minh\";s:15:\"company_showmap\";i:1;s:20:\"company_mapcenterlat\";d:10.85297960579;s:20:\"company_mapcenterlng\";d:106.79022634973;s:14:\"company_maplat\";d:10.852534640031;s:14:\"company_maplng\";d:106.7901020057;s:15:\"company_mapzoom\";i:19;s:13:\"company_phone\";s:10:\"0934190741\";s:11:\"company_fax\";s:0:\"\";s:13:\"company_email\";s:26:\"ngadinh.latacita@gmail.com\";s:15:\"company_website\";s:19:\"https://laduyen.vn/\";}'),
(40, 'web24', 'users', 'global.login.php', 'global login', '', 'no_title', '[LOGIN]', 0, '1', 1, '6', 1, 1, 'a:2:{s:12:\"display_mode\";i:1;s:14:\"popup_register\";i:1;}'),
(41, 'web24', 'menu', 'global.treeview.php', 'Nông sản Organic', '', 'simple', '[MENU_CHUYENMUC]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:3;s:12:\"title_length\";i:0;}'),
(42, 'web24', 'menu', 'global.treeview.php', 'Mật ong', '', 'simple', '[MENU_DICHVU]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:2;s:12:\"title_length\";i:0;}'),
(43, 'web24', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(44, 'web24', 'theme', 'global.social.php', 'global social', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:9:{s:8:\"facebook\";s:48:\"https://www.facebook.com/Laduyen.nongsanvuonnha/\";s:4:\"mess\";s:0:\"\";s:4:\"inst\";s:0:\"\";s:11:\"google_plus\";s:0:\"\";s:7:\"youtube\";s:44:\"https://www.youtube.com/user/thietkeweb24.vn\";s:7:\"twitter\";s:0:\"\";s:5:\"skype\";s:0:\"\";s:9:\"pinterest\";s:0:\"\";s:8:\"linkedin\";s:0:\"\";}'),
(45, 'web24', 'page', 'global.html.php', 'global html', '', 'no_title', '[THANHTOAN]', 0, '1', 1, '6', 0, 1, 'a:1:{s:11:\"htmlcontent\";s:33:\"Block Thông Tin Chuyển Khoản\";}'),
(46, 'softs', 'users', 'global.login.php', 'global login', '', 'no_title', '[DANG_NHAP]', 0, '1', 1, '6', 1, 1, 'a:2:{s:12:\"display_mode\";i:0;s:14:\"popup_register\";i:1;}'),
(47, 'softs', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:\"catid\";i:0;s:12:\"title_length\";i:0;}'),
(48, 'softs', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(49, 'softs', 'statistics', 'global.counter.php', 'Thống kê', '', 'primary', '[LEFT]', 0, '1', 1, '6', 1, 3, ''),
(50, 'softs', 'menu', 'global.metismenu.php', 'global metismenu', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:\"menuid\";i:1;s:12:\"title_length\";i:0;}'),
(51, 'softs', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(52, 'softs', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 1, 'a:6:{s:10:\"number_day\";i:3650;s:6:\"numrow\";i:10;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:7:\"nocatid\";a:2:{i:0;i:10;i:1;i:11;}}'),
(53, 'softs', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:\"facebook\";s:32:\"http://www.facebook.com/nukeviet\";s:11:\"google_plus\";s:32:\"https://www.google.com/+nukeviet\";s:7:\"youtube\";s:37:\"https://www.youtube.com/user/nukeviet\";s:7:\"twitter\";s:28:\"https://twitter.com/nukeviet\";}'),
(54, 'softs', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:\"numrow\";i:6;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:3:\"150\";s:12:\"length_title\";i:0;s:15:\"length_hometext\";i:0;s:17:\"length_othertitle\";i:60;s:5:\"width\";i:500;s:6:\"height\";i:0;s:7:\"nocatid\";a:0:{}}'),
(55, 'web24', 'shops', 'global.block_catalogs_img.php', 'global block catalogs img', '', 'no_title', '[CAT_SHOP2]', 0, '1', 1, '6', 0, 1, 'a:1:{s:7:\"cut_num\";i:24;}'),
(58, 'web24', 'freecontent', 'global.free_content_camket.php', 'global free content', '', 'no_title', '[BANNER2]', 0, '1', 1, '6', 0, 1, 'a:2:{s:7:\"blockid\";i:2;s:7:\"numrows\";i:3;}'),
(62, 'web24', 'about', 'global.page_one.php', 'Giới thiệu', '', 'no_title', '[ABOUT]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:\"title_length\";i:60;s:11:\"image_width\";i:350;s:12:\"image_height\";i:262;s:18:\"description_length\";i:200;s:2:\"id\";i:1;}'),
(64, 'web24', 'freecontent', 'global.free_content.php', 'global free content', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:2:{s:7:\"blockid\";i:1;s:7:\"numrows\";i:2;}'),
(65, 'web24', 'banners', 'global.banners.php', 'global banners', '', 'no_title', '[BANNER1]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:1;}'),
(67, 'web24', 'news', 'global.block_groups.php', 'Tin tiêu điểm', '/news/groups/Tin-tieu-diem/', '', '[NEW]', 0, '1', 1, '6', 1, 1, 'a:6:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(68, 'web24', 'news', 'global.block_news_cat.php', 'Bản tin 24h', '', 'border', '[PRODUCT2]', 0, '1', 1, '6', 1, 1, 'a:6:{s:5:\"catid\";a:7:{i:0;s:1:\"1\";i:1;s:1:\"5\";i:2;s:1:\"7\";i:3;s:1:\"6\";i:4;s:1:\"2\";i:5;s:1:\"3\";i:6;s:1:\"4\";}s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(69, 'web24', 'news', 'global.block_groups.php', 'thông báo cửa hàng', '/news/groups/Tin-tieu-diem/', 'border', '[HOTDEAL]', 0, '1', 1, '6', 1, 1, 'a:6:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:12:\"title_length\";i:0;s:11:\"showtooltip\";i:1;s:16:\"tooltip_position\";s:6:\"bottom\";s:14:\"tooltip_length\";s:1:\"0\";}'),
(72, 'web24', 'shops', 'global.block_group_product.php', 'Sản phẩm nổi bật', '', '', '[BANNER1]', 0, '1', 1, '6', 0, 2, 'a:3:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:7:\"cut_num\";i:24;}'),
(75, 'web24', 'page', 'global.page_one.php', 'Hướng dẫn mua hàng', '', '', '[BANNER2]', 0, '1', 1, '6', 0, 2, 'a:5:{s:12:\"title_length\";i:60;s:11:\"image_width\";i:350;s:12:\"image_height\";i:262;s:18:\"description_length\";i:200;s:2:\"id\";i:1;}'),
(77, 'web24', 'page', 'global.page_one.php', 'Hướng dẫn chuyên nghiệp', '', '', '[BANNER2]', 0, '1', 1, '6', 0, 3, 'a:5:{s:12:\"title_length\";i:60;s:11:\"image_width\";i:350;s:12:\"image_height\";i:262;s:18:\"description_length\";i:200;s:2:\"id\";i:1;}'),
(81, 'web24', 'page', 'global.page_one.php', 'Hướng dẫn chuyên nghiệp', '', '', '[FOOTER]', 0, '1', 1, '6', 0, 1, 'a:5:{s:12:\"title_length\";i:60;s:11:\"image_width\";i:350;s:12:\"image_height\";i:262;s:18:\"description_length\";i:200;s:2:\"id\";i:1;}'),
(83, 'web24', 'shop', 'global.block_group_product.php', 'Sản phẩm hot', '', '', '[BANNER1]', 0, '1', 1, '6', 0, 3, 'a:3:{s:7:\"blockid\";i:1;s:6:\"numrow\";i:5;s:7:\"cut_num\";i:24;}'),
(86, 'web24', 'shops', 'global.block_catalogs_img.php', 'CHỢ NÔNG SẢN', '', '', '[CAT_SHOP2]', 0, '1', 1, '6', 0, 2, 'a:1:{s:7:\"cut_num\";i:24;}'),
(92, 'web24', 'shop', 'global.block_catalogs_img.php', 'CHỢ HẢI SẢN', '', '', '[TOP]', 0, '1', 1, '6', 0, 3, 'a:1:{s:7:\"cut_num\";i:24;}'),
(93, 'web24', 'shop', 'global.block_catalogs_menu2.php', 'SẢN PHẨM', '', '', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:1:{s:7:\"cut_num\";i:24;}'),
(94, 'web24', 'banners', 'global.banners.php', 'QUẢNG CÁO', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, 'a:1:{s:12:\"idplanbanner\";i:5;}'),
(95, 'web24', 'shops', 'global.block_catalogs_menu2.php', 'SẢN PHẨM', '', '', '[LEFT]', 0, '1', 1, '6', 0, 3, 'a:1:{s:7:\"cut_num\";i:24;}'),
(96, 'web24', 'banners', 'global.banners.php', 'QUẢNG CÁO', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 4, 'a:1:{s:12:\"idplanbanner\";i:6;}'),
(97, 'web24', 'page', 'global.page_one.php', 'Hướng dẫn mua hàng', '', '', '[FOOTER]', 0, '1', 1, '6', 0, 2, 'a:5:{s:12:\"title_length\";i:60;s:11:\"image_width\";i:350;s:12:\"image_height\";i:262;s:18:\"description_length\";i:200;s:2:\"id\";i:1;}'),
(98, 'web24', 'shops', 'global.block_catalogs_img.php', 'CHỢ NÔNG SẢN', '', '', '[TOP]', 0, '1', 1, '6', 0, 4, 'a:1:{s:7:\"cut_num\";i:24;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT 0,
  `func_id` mediumint(8) NOT NULL DEFAULT 0,
  `weight` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(1, 4, 1),
(2, 4, 2),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 28, 1),
(4, 29, 1),
(4, 30, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(4, 37, 1),
(4, 38, 1),
(4, 39, 1),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 13, 1),
(5, 14, 1),
(5, 15, 1),
(5, 16, 1),
(5, 17, 1),
(5, 18, 1),
(5, 19, 1),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 2),
(5, 29, 2),
(5, 30, 2),
(5, 31, 1),
(5, 32, 1),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 37, 2),
(5, 38, 2),
(5, 39, 2),
(5, 40, 1),
(5, 41, 1),
(5, 42, 1),
(5, 43, 1),
(5, 44, 1),
(5, 45, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 50, 1),
(5, 51, 1),
(5, 52, 1),
(5, 53, 1),
(5, 54, 1),
(5, 55, 1),
(5, 56, 1),
(5, 57, 1),
(5, 58, 1),
(5, 59, 1),
(5, 60, 1),
(5, 61, 1),
(5, 62, 1),
(5, 63, 1),
(5, 64, 1),
(5, 65, 1),
(6, 1, 2),
(6, 2, 2),
(6, 3, 2),
(6, 4, 3),
(6, 5, 3),
(6, 6, 3),
(6, 7, 3),
(6, 8, 3),
(6, 9, 3),
(6, 10, 3),
(6, 11, 3),
(6, 12, 3),
(6, 13, 2),
(6, 14, 2),
(6, 15, 2),
(6, 16, 2),
(6, 17, 2),
(6, 18, 2),
(6, 19, 2),
(6, 20, 3),
(6, 21, 3),
(6, 22, 3),
(6, 23, 3),
(6, 24, 3),
(6, 25, 3),
(6, 26, 3),
(6, 27, 3),
(6, 28, 3),
(6, 29, 3),
(6, 30, 3),
(6, 31, 2),
(6, 32, 2),
(6, 33, 3),
(6, 34, 3),
(6, 35, 3),
(6, 36, 3),
(6, 37, 3),
(6, 38, 3),
(6, 39, 3),
(6, 40, 2),
(6, 41, 2),
(6, 42, 2),
(6, 43, 2),
(6, 44, 2),
(6, 45, 2),
(6, 46, 2),
(6, 47, 2),
(6, 48, 2),
(6, 49, 2),
(6, 50, 2),
(6, 51, 2),
(6, 52, 2),
(6, 53, 2),
(6, 54, 2),
(6, 55, 2),
(6, 56, 2),
(6, 57, 2),
(6, 58, 2),
(6, 59, 2),
(6, 60, 2),
(6, 61, 2),
(6, 62, 2),
(6, 63, 2),
(6, 64, 2),
(6, 65, 2),
(7, 1, 1),
(7, 2, 1),
(7, 3, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 13, 1),
(7, 14, 1),
(7, 15, 1),
(7, 16, 1),
(7, 17, 1),
(7, 18, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 29, 1),
(7, 30, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 37, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 41, 1),
(7, 42, 1),
(7, 43, 1),
(7, 44, 1),
(7, 45, 1),
(7, 46, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 50, 1),
(7, 51, 1),
(7, 52, 1),
(7, 53, 1),
(7, 54, 1),
(7, 55, 1),
(7, 56, 1),
(7, 57, 1),
(7, 58, 1),
(7, 59, 1),
(7, 60, 1),
(7, 61, 1),
(7, 62, 1),
(7, 63, 1),
(7, 64, 1),
(7, 65, 1),
(8, 1, 2),
(8, 2, 2),
(8, 3, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 13, 2),
(8, 14, 2),
(8, 15, 2),
(8, 16, 2),
(8, 17, 2),
(8, 18, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 29, 2),
(8, 30, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 37, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 41, 2),
(8, 42, 2),
(8, 43, 2),
(8, 44, 2),
(8, 45, 2),
(8, 46, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 50, 2),
(8, 51, 2),
(8, 52, 2),
(8, 53, 2),
(8, 54, 2),
(8, 55, 2),
(8, 56, 2),
(8, 57, 2),
(8, 58, 2),
(8, 59, 2),
(8, 60, 2),
(8, 61, 2),
(8, 62, 2),
(8, 63, 2),
(8, 64, 2),
(8, 65, 2),
(9, 1, 3),
(9, 2, 3),
(9, 3, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 13, 3),
(9, 14, 3),
(9, 15, 3),
(9, 16, 3),
(9, 17, 3),
(9, 18, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 29, 3),
(9, 30, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 37, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 41, 3),
(9, 42, 3),
(9, 43, 3),
(9, 44, 3),
(9, 45, 3),
(9, 46, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 50, 3),
(9, 51, 3),
(9, 52, 3),
(9, 53, 3),
(9, 54, 3),
(9, 55, 3),
(9, 56, 3),
(9, 57, 3),
(9, 58, 3),
(9, 59, 3),
(9, 60, 3),
(9, 61, 3),
(9, 62, 3),
(9, 63, 3),
(9, 64, 3),
(9, 65, 3),
(10, 1, 4),
(10, 2, 4),
(10, 3, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 13, 4),
(10, 14, 4),
(10, 15, 4),
(10, 16, 4),
(10, 17, 4),
(10, 18, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 29, 4),
(10, 30, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 37, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 41, 4),
(10, 42, 4),
(10, 43, 4),
(10, 44, 4),
(10, 45, 4),
(10, 46, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 50, 4),
(10, 51, 4),
(10, 52, 4),
(10, 53, 4),
(10, 54, 4),
(10, 55, 4),
(10, 56, 4),
(10, 57, 4),
(10, 58, 4),
(10, 59, 4),
(10, 60, 4),
(10, 61, 4),
(10, 62, 4),
(10, 63, 4),
(10, 64, 4),
(10, 65, 4),
(11, 1, 1),
(11, 2, 1),
(11, 3, 1),
(11, 4, 1),
(11, 5, 1),
(11, 6, 1),
(11, 7, 1),
(11, 8, 1),
(11, 9, 1),
(11, 10, 1),
(11, 11, 1),
(11, 12, 1),
(11, 13, 1),
(11, 14, 1),
(11, 15, 1),
(11, 16, 1),
(11, 17, 1),
(11, 18, 1),
(11, 19, 1),
(11, 20, 1),
(11, 21, 1),
(11, 22, 1),
(11, 23, 1),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(11, 27, 1),
(11, 28, 1),
(11, 29, 1),
(11, 30, 1),
(11, 31, 1),
(11, 32, 1),
(11, 33, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 44, 1),
(11, 45, 1),
(11, 46, 1),
(11, 47, 1),
(11, 48, 1),
(11, 49, 1),
(11, 50, 1),
(11, 51, 1),
(11, 52, 1),
(11, 53, 1),
(11, 54, 1),
(11, 55, 1),
(11, 56, 1),
(11, 57, 1),
(11, 58, 1),
(11, 59, 1),
(11, 60, 1),
(11, 61, 1),
(11, 62, 1),
(11, 63, 1),
(11, 64, 1),
(11, 65, 1),
(12, 1, 2),
(12, 2, 2),
(12, 3, 2),
(12, 4, 2),
(12, 5, 2),
(12, 6, 2),
(12, 7, 2),
(12, 8, 2),
(12, 9, 2),
(12, 10, 2),
(12, 11, 2),
(12, 12, 2),
(12, 13, 2),
(12, 14, 2),
(12, 15, 2),
(12, 16, 2),
(12, 17, 2),
(12, 18, 2),
(12, 19, 2),
(12, 20, 2),
(12, 21, 2),
(12, 22, 2),
(12, 23, 2),
(12, 24, 2),
(12, 25, 2),
(12, 26, 2),
(12, 27, 2),
(12, 28, 2),
(12, 29, 2),
(12, 30, 2),
(12, 31, 2),
(12, 32, 2),
(12, 33, 2),
(12, 34, 2),
(12, 35, 2),
(12, 36, 2),
(12, 37, 2),
(12, 38, 2),
(12, 39, 2),
(12, 40, 2),
(12, 41, 2),
(12, 42, 2),
(12, 43, 2),
(12, 44, 2),
(12, 45, 2),
(12, 46, 2),
(12, 47, 2),
(12, 48, 2),
(12, 49, 2),
(12, 50, 2),
(12, 51, 2),
(12, 52, 2),
(12, 53, 2),
(12, 54, 2),
(12, 55, 2),
(12, 56, 2),
(12, 57, 2),
(12, 58, 2),
(12, 59, 2),
(12, 60, 2),
(12, 61, 2),
(12, 62, 2),
(12, 63, 2),
(12, 64, 2),
(12, 65, 2),
(13, 1, 1),
(13, 2, 1),
(13, 3, 1),
(13, 4, 1),
(13, 5, 1),
(13, 6, 1),
(13, 7, 1),
(13, 8, 1),
(13, 9, 1),
(13, 10, 1),
(13, 11, 1),
(13, 12, 1),
(13, 13, 1),
(13, 14, 1),
(13, 15, 1),
(13, 16, 1),
(13, 17, 1),
(13, 18, 1),
(13, 19, 1),
(13, 20, 1),
(13, 21, 1),
(13, 22, 1),
(13, 23, 1),
(13, 24, 1),
(13, 25, 1),
(13, 26, 1),
(13, 27, 1),
(13, 28, 1),
(13, 29, 1),
(13, 30, 1),
(13, 31, 1),
(13, 32, 1),
(13, 33, 1),
(13, 34, 1),
(13, 35, 1),
(13, 36, 1),
(13, 37, 1),
(13, 38, 1),
(13, 39, 1),
(13, 40, 1),
(13, 41, 1),
(13, 42, 1),
(13, 43, 1),
(13, 44, 1),
(13, 45, 1),
(13, 46, 1),
(13, 47, 1),
(13, 48, 1),
(13, 49, 1),
(13, 50, 1),
(13, 51, 1),
(13, 52, 1),
(13, 53, 1),
(13, 54, 1),
(13, 55, 1),
(13, 56, 1),
(13, 57, 1),
(13, 58, 1),
(13, 59, 1),
(13, 60, 1),
(13, 61, 1),
(13, 62, 1),
(13, 63, 1),
(13, 64, 1),
(13, 65, 1),
(14, 1, 2),
(14, 2, 2),
(14, 3, 2),
(14, 4, 2),
(14, 5, 2),
(14, 6, 2),
(14, 7, 2),
(14, 8, 2),
(14, 9, 2),
(14, 10, 2),
(14, 11, 2),
(14, 12, 2),
(14, 13, 2),
(14, 14, 2),
(14, 15, 2),
(14, 16, 2),
(14, 17, 2),
(14, 18, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 2),
(14, 22, 2),
(14, 23, 2),
(14, 24, 2),
(14, 25, 2),
(14, 26, 2),
(14, 27, 2),
(14, 28, 2),
(14, 29, 2),
(14, 30, 2),
(14, 31, 2),
(14, 32, 2),
(14, 33, 2),
(14, 34, 2),
(14, 35, 2),
(14, 36, 2),
(14, 37, 2),
(14, 38, 2),
(14, 39, 2),
(14, 40, 2),
(14, 41, 2),
(14, 42, 2),
(14, 43, 2),
(14, 44, 2),
(14, 45, 2),
(14, 46, 2),
(14, 47, 2),
(14, 48, 2),
(14, 49, 2),
(14, 50, 2),
(14, 51, 2),
(14, 52, 2),
(14, 53, 2),
(14, 54, 2),
(14, 55, 2),
(14, 56, 2),
(14, 57, 2),
(14, 58, 2),
(14, 59, 2),
(14, 60, 2),
(14, 61, 2),
(14, 62, 2),
(14, 63, 2),
(14, 64, 2),
(14, 65, 2),
(15, 1, 1),
(15, 2, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 16, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 41, 1),
(15, 42, 1),
(15, 43, 1),
(15, 44, 1),
(15, 45, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 50, 1),
(15, 51, 1),
(15, 52, 1),
(15, 53, 1),
(15, 54, 1),
(15, 55, 1),
(15, 56, 1),
(15, 57, 1),
(15, 58, 1),
(15, 59, 1),
(15, 60, 1),
(15, 61, 1),
(15, 62, 1),
(15, 63, 1),
(15, 64, 1),
(15, 65, 1),
(16, 1, 1),
(16, 2, 1),
(16, 3, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 13, 1),
(16, 14, 1),
(16, 15, 1),
(16, 16, 1),
(16, 17, 1),
(16, 18, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 29, 1),
(16, 30, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 41, 1),
(16, 42, 1),
(16, 43, 1),
(16, 44, 1),
(16, 45, 1),
(16, 46, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 50, 1),
(16, 51, 1),
(16, 52, 1),
(16, 53, 1),
(16, 54, 1),
(16, 55, 1),
(16, 56, 1),
(16, 57, 1),
(16, 58, 1),
(16, 59, 1),
(16, 60, 1),
(16, 61, 1),
(16, 62, 1),
(16, 63, 1),
(16, 64, 1),
(16, 65, 1),
(17, 1, 1),
(17, 2, 1),
(17, 3, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 13, 1),
(17, 14, 1),
(17, 15, 1),
(17, 16, 1),
(17, 17, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 29, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 41, 1),
(17, 42, 1),
(17, 43, 1),
(17, 44, 1),
(17, 45, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 50, 1),
(17, 51, 1),
(17, 52, 1),
(17, 53, 1),
(17, 54, 1),
(17, 55, 1),
(17, 56, 1),
(17, 57, 1),
(17, 58, 1),
(17, 59, 1),
(17, 60, 1),
(17, 61, 1),
(17, 62, 1),
(17, 63, 1),
(17, 64, 1),
(17, 65, 1),
(18, 1, 1),
(18, 2, 1),
(18, 3, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 16, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 29, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 41, 1),
(18, 42, 1),
(18, 43, 1),
(18, 44, 1),
(18, 45, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 50, 1),
(18, 51, 1),
(18, 52, 1),
(18, 53, 1),
(18, 54, 1),
(18, 55, 1),
(18, 56, 1),
(18, 57, 1),
(18, 58, 1),
(18, 59, 1),
(18, 60, 1),
(18, 61, 1),
(18, 62, 1),
(18, 63, 1),
(18, 64, 1),
(18, 65, 1),
(19, 1, 1),
(19, 2, 1),
(19, 3, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 13, 1),
(19, 14, 1),
(19, 15, 1),
(19, 16, 1),
(19, 17, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 29, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 41, 1),
(19, 42, 1),
(19, 43, 1),
(19, 44, 1),
(19, 45, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 50, 1),
(19, 51, 1),
(19, 52, 1),
(19, 53, 1),
(19, 54, 1),
(19, 55, 1),
(19, 56, 1),
(19, 57, 1),
(19, 58, 1),
(19, 59, 1),
(19, 60, 1),
(19, 61, 1),
(19, 62, 1),
(19, 63, 1),
(19, 64, 1),
(19, 65, 1),
(20, 1, 1),
(20, 2, 1),
(20, 3, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 13, 1),
(20, 14, 1),
(20, 15, 1),
(20, 16, 1),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 29, 1),
(20, 30, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 37, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 41, 1),
(20, 42, 1),
(20, 43, 1),
(20, 44, 1),
(20, 45, 1),
(20, 46, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 50, 1),
(20, 51, 1),
(20, 52, 1),
(20, 53, 1),
(20, 54, 1),
(20, 55, 1),
(20, 56, 1),
(20, 57, 1),
(20, 58, 1),
(20, 59, 1),
(20, 60, 1),
(20, 61, 1),
(20, 62, 1),
(20, 63, 1),
(20, 64, 1),
(20, 65, 1),
(21, 1, 1),
(21, 2, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 10, 1),
(21, 11, 1),
(21, 12, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 26, 1),
(21, 27, 1),
(21, 28, 1),
(21, 29, 1),
(21, 30, 1),
(21, 31, 1),
(21, 32, 1),
(21, 33, 1),
(21, 34, 1),
(21, 35, 1),
(21, 36, 1),
(21, 37, 1),
(21, 38, 1),
(21, 39, 1),
(21, 40, 1),
(21, 41, 1),
(21, 42, 1),
(21, 43, 1),
(21, 44, 1),
(21, 45, 1),
(21, 46, 1),
(21, 47, 1),
(21, 48, 1),
(21, 49, 1),
(21, 50, 1),
(21, 51, 1),
(21, 52, 1),
(21, 53, 1),
(21, 54, 1),
(21, 55, 1),
(21, 56, 1),
(21, 57, 1),
(21, 58, 1),
(21, 59, 1),
(21, 60, 1),
(21, 61, 1),
(21, 62, 1),
(21, 63, 1),
(21, 64, 1),
(21, 65, 1),
(22, 1, 1),
(22, 2, 1),
(22, 3, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 29, 1),
(22, 30, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 37, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 41, 1),
(22, 42, 1),
(22, 43, 1),
(22, 44, 1),
(22, 45, 1),
(22, 46, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 50, 1),
(22, 51, 1),
(22, 52, 1),
(22, 53, 1),
(22, 54, 1),
(22, 55, 1),
(22, 56, 1),
(22, 57, 1),
(22, 58, 1),
(22, 59, 1),
(22, 60, 1),
(22, 61, 1),
(22, 62, 1),
(22, 63, 1),
(22, 64, 1),
(22, 65, 1),
(23, 1, 2),
(23, 2, 2),
(23, 3, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 13, 2),
(23, 14, 2),
(23, 15, 2),
(23, 16, 2),
(23, 17, 2),
(23, 18, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 29, 2),
(23, 30, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 37, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 41, 2),
(23, 42, 2),
(23, 43, 2),
(23, 44, 2),
(23, 45, 2),
(23, 46, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 50, 2),
(23, 51, 2),
(23, 52, 2),
(23, 53, 2),
(23, 54, 2),
(23, 55, 2),
(23, 56, 2),
(23, 57, 2),
(23, 58, 2),
(23, 59, 2),
(23, 60, 2),
(23, 61, 2),
(23, 62, 2),
(23, 63, 2),
(23, 64, 2),
(23, 65, 2),
(24, 1, 1),
(24, 2, 1),
(24, 3, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 13, 1),
(24, 14, 1),
(24, 15, 1),
(24, 16, 1),
(24, 17, 1),
(24, 18, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 29, 1),
(24, 30, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 41, 1),
(24, 42, 1),
(24, 43, 1),
(24, 44, 1),
(24, 45, 1),
(24, 46, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 50, 1),
(24, 51, 1),
(24, 52, 1),
(24, 53, 1),
(24, 54, 1),
(24, 55, 1),
(24, 56, 1),
(24, 57, 1),
(24, 58, 1),
(24, 59, 1),
(24, 60, 1),
(24, 61, 1),
(24, 62, 1),
(24, 63, 1),
(24, 64, 1),
(24, 65, 1),
(25, 1, 2),
(25, 2, 2),
(25, 3, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 13, 2),
(25, 14, 2),
(25, 15, 2),
(25, 16, 2),
(25, 17, 2),
(25, 18, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 29, 2),
(25, 30, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 37, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 41, 2),
(25, 42, 2),
(25, 43, 2),
(25, 44, 2),
(25, 45, 2),
(25, 46, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 50, 2),
(25, 51, 2),
(25, 52, 2),
(25, 53, 2),
(25, 54, 2),
(25, 55, 2),
(25, 56, 2),
(25, 57, 2),
(25, 58, 2),
(25, 59, 2),
(25, 60, 2),
(25, 61, 2),
(25, 62, 2),
(25, 63, 2),
(25, 64, 2),
(25, 65, 2),
(26, 1, 3),
(26, 2, 3),
(26, 3, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 13, 3),
(26, 14, 3),
(26, 15, 3),
(26, 16, 3),
(26, 17, 3),
(26, 18, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 29, 3),
(26, 30, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 37, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 41, 3),
(26, 42, 3),
(26, 43, 3),
(26, 44, 3),
(26, 45, 3),
(26, 46, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 50, 3),
(26, 51, 3),
(26, 52, 3),
(26, 53, 3),
(26, 54, 3),
(26, 55, 3),
(26, 56, 3),
(26, 57, 3),
(26, 58, 3),
(26, 59, 3),
(26, 60, 3),
(26, 61, 3),
(26, 62, 3),
(26, 63, 3),
(26, 64, 3),
(26, 65, 3),
(27, 1, 4),
(27, 2, 4),
(27, 3, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 13, 4),
(27, 14, 4),
(27, 15, 4),
(27, 16, 4),
(27, 17, 4),
(27, 18, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 29, 4),
(27, 30, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 37, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 41, 4),
(27, 42, 4),
(27, 43, 4),
(27, 44, 4),
(27, 45, 4),
(27, 46, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 50, 4),
(27, 51, 4),
(27, 52, 4),
(27, 53, 4),
(27, 54, 4),
(27, 55, 4),
(27, 56, 4),
(27, 57, 4),
(27, 58, 4),
(27, 59, 4),
(27, 60, 4),
(27, 61, 4),
(27, 62, 4),
(27, 63, 4),
(27, 64, 4),
(27, 65, 4),
(28, 1, 1),
(28, 2, 1),
(28, 3, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 13, 1),
(28, 14, 1),
(28, 15, 1),
(28, 16, 1),
(28, 17, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 29, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 41, 1),
(28, 42, 1),
(28, 43, 1),
(28, 44, 1),
(28, 45, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 50, 1),
(28, 51, 1),
(28, 52, 1),
(28, 53, 1),
(28, 54, 1),
(28, 55, 1),
(28, 56, 1),
(28, 57, 1),
(28, 58, 1),
(28, 59, 1),
(28, 60, 1),
(28, 61, 1),
(28, 62, 1),
(28, 63, 1),
(28, 64, 1),
(28, 65, 1),
(29, 1, 1),
(29, 2, 1),
(29, 3, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 13, 1),
(29, 14, 1),
(29, 15, 1),
(29, 16, 1),
(29, 17, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 29, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 41, 1),
(29, 42, 1),
(29, 43, 1),
(29, 44, 1),
(29, 45, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 50, 1),
(29, 51, 1),
(29, 52, 1),
(29, 53, 1),
(29, 54, 1),
(29, 55, 1),
(29, 56, 1),
(29, 57, 1),
(29, 58, 1),
(29, 59, 1),
(29, 60, 1),
(29, 61, 1),
(29, 62, 1),
(29, 63, 1),
(29, 64, 1),
(29, 65, 1),
(30, 1, 1),
(30, 2, 1),
(30, 3, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 13, 1),
(30, 14, 1),
(30, 15, 1),
(30, 16, 1),
(30, 17, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 29, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 41, 1),
(30, 42, 1),
(30, 43, 1),
(30, 44, 1),
(30, 45, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 50, 1),
(30, 51, 1),
(30, 52, 1),
(30, 53, 1),
(30, 54, 1),
(30, 55, 1),
(30, 56, 1),
(30, 57, 1),
(30, 58, 1),
(30, 59, 1),
(30, 60, 1),
(30, 61, 1),
(30, 62, 1),
(30, 63, 1),
(30, 64, 1),
(30, 65, 1),
(32, 1, 1),
(32, 41, 1),
(32, 42, 1),
(32, 43, 1),
(32, 44, 1),
(32, 55, 1),
(32, 56, 1),
(32, 57, 1),
(32, 58, 1),
(32, 59, 1),
(32, 32, 1),
(32, 51, 1),
(32, 4, 1),
(32, 5, 1),
(32, 6, 1),
(32, 7, 1),
(32, 8, 1),
(32, 9, 1),
(32, 10, 1),
(32, 11, 1),
(32, 12, 1),
(32, 13, 1),
(32, 52, 1),
(32, 50, 1),
(32, 60, 1),
(32, 61, 1),
(32, 33, 1),
(32, 34, 1),
(32, 35, 1),
(32, 36, 1),
(32, 37, 1),
(32, 38, 1),
(32, 39, 1),
(32, 63, 1),
(32, 64, 1),
(32, 65, 1),
(32, 20, 1),
(32, 21, 1),
(32, 22, 1),
(32, 23, 1),
(32, 24, 1),
(32, 25, 1),
(32, 26, 1),
(32, 27, 1),
(32, 28, 1),
(32, 29, 1),
(32, 30, 1),
(32, 40, 1),
(34, 1, 1),
(34, 41, 1),
(34, 42, 1),
(34, 43, 1),
(34, 44, 1),
(34, 55, 1),
(34, 56, 1),
(34, 57, 1),
(34, 58, 1),
(34, 59, 1),
(34, 32, 1),
(34, 51, 1),
(34, 4, 1),
(34, 5, 1),
(34, 6, 1),
(34, 7, 1),
(34, 8, 1),
(34, 9, 1),
(34, 10, 1),
(34, 11, 1),
(34, 12, 1),
(34, 13, 1),
(34, 52, 1),
(34, 50, 1),
(34, 60, 1),
(34, 61, 1),
(34, 33, 1),
(34, 34, 1),
(34, 35, 1),
(34, 36, 1),
(34, 37, 1),
(34, 38, 1),
(34, 39, 1),
(34, 63, 1),
(34, 64, 1),
(34, 65, 1),
(34, 20, 1),
(34, 21, 1),
(34, 22, 1),
(34, 23, 1),
(34, 24, 1),
(34, 25, 1),
(34, 26, 1),
(34, 27, 1),
(34, 28, 1),
(34, 29, 1),
(34, 30, 1),
(34, 40, 1),
(35, 1, 1),
(35, 41, 1),
(35, 42, 1),
(35, 43, 1),
(35, 44, 1),
(35, 55, 1),
(35, 56, 1),
(35, 57, 1),
(35, 58, 1),
(35, 59, 1),
(35, 32, 1),
(35, 51, 1),
(35, 4, 1),
(35, 5, 1),
(35, 6, 1),
(35, 7, 1),
(35, 8, 1),
(35, 9, 1),
(35, 10, 1),
(35, 11, 1),
(35, 12, 1),
(35, 13, 1),
(35, 52, 1),
(35, 50, 1),
(35, 60, 1),
(35, 61, 1),
(35, 33, 1),
(35, 34, 1),
(35, 35, 1),
(35, 36, 1),
(35, 37, 1),
(35, 38, 1),
(35, 39, 1),
(35, 63, 1),
(35, 64, 1),
(35, 65, 1),
(35, 20, 1),
(35, 21, 1),
(35, 22, 1),
(35, 23, 1),
(35, 24, 1),
(35, 25, 1),
(35, 26, 1),
(35, 27, 1),
(35, 28, 1),
(35, 29, 1),
(35, 30, 1),
(35, 40, 1),
(36, 1, 1),
(36, 41, 1),
(36, 42, 1),
(36, 43, 1),
(36, 44, 1),
(36, 55, 1),
(36, 56, 1),
(36, 57, 1),
(36, 58, 1),
(36, 59, 1),
(36, 32, 1),
(36, 51, 1),
(36, 4, 1),
(36, 5, 1),
(36, 6, 1),
(36, 7, 1),
(36, 8, 1),
(36, 9, 1),
(36, 10, 1),
(36, 11, 1),
(36, 12, 1),
(36, 13, 1),
(36, 52, 1),
(36, 50, 1),
(36, 60, 1),
(36, 61, 1),
(36, 33, 1),
(36, 34, 1),
(36, 35, 1),
(36, 36, 1),
(36, 37, 1),
(36, 38, 1),
(36, 39, 1),
(36, 63, 1),
(36, 64, 1),
(36, 65, 1),
(36, 20, 1),
(36, 21, 1),
(36, 22, 1),
(36, 23, 1),
(36, 24, 1),
(36, 25, 1),
(36, 26, 1),
(36, 27, 1),
(36, 28, 1),
(36, 29, 1),
(36, 30, 1),
(36, 40, 1),
(37, 32, 1),
(38, 32, 1),
(39, 1, 1),
(39, 41, 1),
(39, 42, 1),
(39, 43, 1),
(39, 44, 1),
(39, 55, 1),
(39, 56, 1),
(39, 57, 1),
(39, 58, 1),
(39, 59, 1),
(39, 32, 1),
(39, 51, 1),
(39, 4, 1),
(39, 5, 1),
(39, 6, 1),
(39, 7, 1),
(39, 8, 1),
(39, 9, 1),
(39, 10, 1),
(39, 11, 1),
(39, 12, 1),
(39, 13, 1),
(39, 52, 1),
(39, 50, 1),
(39, 60, 1),
(39, 61, 1),
(39, 33, 1),
(39, 34, 1),
(39, 35, 1),
(39, 36, 1),
(39, 37, 1),
(39, 38, 1),
(39, 39, 1),
(39, 63, 1),
(39, 64, 1),
(39, 65, 1),
(39, 20, 1),
(39, 21, 1),
(39, 22, 1),
(39, 23, 1),
(39, 24, 1),
(39, 25, 1),
(39, 26, 1),
(39, 27, 1),
(39, 28, 1),
(39, 29, 1),
(39, 30, 1),
(39, 40, 1),
(40, 1, 1),
(40, 41, 1),
(40, 42, 1),
(40, 43, 1),
(40, 44, 1),
(40, 55, 1),
(40, 56, 1),
(40, 57, 1),
(40, 58, 1),
(40, 59, 1),
(40, 32, 1),
(40, 51, 1),
(40, 4, 1),
(40, 5, 1),
(40, 6, 1),
(40, 7, 1),
(40, 8, 1),
(40, 9, 1),
(40, 10, 1),
(40, 11, 1),
(40, 12, 1),
(40, 13, 1),
(40, 52, 1),
(40, 50, 1),
(40, 60, 1),
(40, 61, 1),
(40, 33, 1),
(40, 34, 1),
(40, 35, 1),
(40, 36, 1),
(40, 37, 1),
(40, 38, 1),
(40, 39, 1),
(40, 63, 1),
(40, 64, 1),
(40, 65, 1),
(40, 20, 1),
(40, 21, 1),
(40, 22, 1),
(40, 23, 1),
(40, 24, 1),
(40, 25, 1),
(40, 26, 1),
(40, 27, 1),
(40, 28, 1),
(40, 29, 1),
(40, 30, 1),
(40, 40, 1),
(41, 1, 1),
(41, 41, 1),
(41, 42, 1),
(41, 43, 1),
(41, 44, 1),
(41, 55, 1),
(41, 56, 1),
(41, 57, 1),
(41, 58, 1),
(41, 59, 1),
(41, 32, 1),
(41, 51, 1),
(41, 4, 1),
(41, 5, 1),
(41, 6, 1),
(41, 7, 1),
(41, 8, 1),
(41, 9, 1),
(41, 10, 1),
(41, 11, 1),
(41, 12, 1),
(41, 13, 1),
(41, 52, 1),
(41, 50, 1),
(41, 60, 1),
(41, 61, 1),
(41, 33, 1),
(41, 34, 1),
(41, 35, 1),
(41, 36, 1),
(41, 37, 1),
(41, 38, 1),
(41, 39, 1),
(41, 63, 1),
(41, 64, 1),
(41, 65, 1),
(41, 20, 1),
(41, 21, 1),
(41, 22, 1),
(41, 23, 1),
(41, 24, 1),
(41, 25, 1),
(41, 26, 1),
(41, 27, 1),
(41, 28, 1),
(41, 29, 1),
(41, 30, 1),
(41, 40, 1),
(42, 1, 1),
(42, 41, 1),
(42, 42, 1),
(42, 43, 1),
(42, 44, 1),
(42, 55, 1),
(42, 56, 1),
(42, 57, 1),
(42, 58, 1),
(42, 59, 1),
(42, 32, 1),
(42, 51, 1),
(42, 4, 1),
(42, 5, 1),
(42, 6, 1),
(42, 7, 1),
(42, 8, 1),
(42, 9, 1),
(42, 10, 1),
(42, 11, 1),
(42, 12, 1),
(42, 13, 1),
(42, 52, 1),
(42, 50, 1),
(42, 60, 1),
(42, 61, 1),
(42, 33, 1),
(42, 34, 1),
(42, 35, 1),
(42, 36, 1),
(42, 37, 1),
(42, 38, 1),
(42, 39, 1),
(42, 63, 1),
(42, 64, 1),
(42, 65, 1),
(42, 20, 1),
(42, 21, 1),
(42, 22, 1),
(42, 23, 1),
(42, 24, 1),
(42, 25, 1),
(42, 26, 1),
(42, 27, 1),
(42, 28, 1),
(42, 29, 1),
(42, 30, 1),
(42, 40, 1),
(43, 1, 1),
(43, 41, 1),
(43, 42, 1),
(43, 43, 1),
(43, 44, 1),
(43, 55, 1),
(43, 56, 1),
(43, 57, 1),
(43, 58, 1),
(43, 59, 1),
(43, 32, 1),
(43, 51, 1),
(43, 4, 1),
(43, 5, 1),
(43, 6, 1),
(43, 7, 1),
(43, 8, 1),
(43, 9, 1),
(43, 10, 1),
(43, 11, 1),
(43, 12, 1),
(43, 13, 1),
(43, 52, 1),
(43, 50, 1),
(43, 60, 1),
(43, 61, 1),
(43, 33, 1),
(43, 34, 1),
(43, 35, 1),
(43, 36, 1),
(43, 37, 1),
(43, 38, 1),
(43, 39, 1),
(43, 63, 1),
(43, 64, 1),
(43, 65, 1),
(43, 20, 1),
(43, 21, 1),
(43, 22, 1),
(43, 23, 1),
(43, 24, 1),
(43, 25, 1),
(43, 26, 1),
(43, 27, 1),
(43, 28, 1),
(43, 29, 1),
(43, 30, 1),
(43, 40, 1),
(44, 1, 1),
(44, 41, 1),
(44, 42, 1),
(44, 43, 1),
(44, 44, 1),
(44, 55, 1),
(44, 56, 1),
(44, 57, 1),
(44, 58, 1),
(44, 59, 1),
(44, 32, 1),
(44, 51, 1),
(44, 4, 1),
(44, 5, 1),
(44, 6, 1),
(44, 7, 1),
(44, 8, 1),
(44, 9, 1),
(44, 10, 1),
(44, 11, 1),
(44, 12, 1),
(44, 13, 1),
(44, 52, 1),
(44, 50, 1),
(44, 60, 1),
(44, 61, 1),
(44, 33, 1),
(44, 34, 1),
(44, 35, 1),
(44, 36, 1),
(44, 37, 1),
(44, 38, 1),
(44, 39, 1),
(44, 63, 1),
(44, 64, 1),
(44, 65, 1),
(44, 20, 1),
(44, 21, 1),
(44, 22, 1),
(44, 23, 1),
(44, 24, 1),
(44, 25, 1),
(44, 26, 1),
(44, 27, 1),
(44, 28, 1),
(44, 29, 1),
(44, 30, 1),
(44, 40, 1),
(46, 1, 1),
(46, 41, 1),
(46, 42, 1),
(46, 43, 1),
(46, 44, 1),
(46, 55, 1),
(46, 56, 1),
(46, 57, 1),
(46, 58, 1),
(46, 59, 1),
(46, 32, 1),
(46, 51, 1),
(46, 4, 1),
(46, 5, 1),
(46, 6, 1),
(46, 7, 1),
(46, 8, 1),
(46, 9, 1),
(46, 10, 1),
(46, 11, 1),
(46, 12, 1),
(46, 13, 1),
(46, 52, 1),
(46, 50, 1),
(46, 60, 1),
(46, 61, 1),
(46, 33, 1),
(46, 34, 1),
(46, 35, 1),
(46, 36, 1),
(46, 37, 1),
(46, 38, 1),
(46, 39, 1),
(46, 63, 1),
(46, 64, 1),
(46, 65, 1),
(46, 20, 1),
(46, 21, 1),
(46, 22, 1),
(46, 23, 1),
(46, 24, 1),
(46, 25, 1),
(46, 26, 1),
(46, 27, 1),
(46, 28, 1),
(46, 29, 1),
(46, 30, 1),
(46, 40, 1),
(47, 4, 1),
(47, 5, 1),
(47, 6, 1),
(47, 7, 1),
(47, 8, 1),
(47, 9, 1),
(47, 10, 1),
(47, 11, 1),
(47, 12, 1),
(48, 20, 1),
(48, 21, 1),
(48, 22, 1),
(48, 23, 1),
(48, 24, 1),
(48, 25, 1),
(48, 26, 1),
(48, 27, 1),
(48, 28, 1),
(48, 29, 1),
(48, 30, 1),
(48, 33, 1),
(48, 34, 1),
(48, 35, 1),
(48, 36, 1),
(48, 37, 1),
(48, 38, 1),
(48, 39, 1),
(49, 1, 1),
(49, 41, 1),
(49, 42, 1),
(49, 43, 1),
(49, 44, 1),
(49, 55, 1),
(49, 56, 1),
(49, 57, 1),
(49, 58, 1),
(49, 59, 1),
(49, 32, 1),
(49, 51, 1),
(49, 4, 2),
(49, 5, 2),
(49, 6, 2),
(49, 7, 2),
(49, 8, 2),
(49, 9, 2),
(49, 10, 2),
(49, 11, 2),
(49, 12, 2),
(49, 13, 1),
(49, 52, 1),
(49, 50, 1),
(49, 60, 1),
(49, 61, 1),
(49, 33, 2),
(49, 34, 2),
(49, 35, 2),
(49, 36, 2),
(49, 37, 2),
(49, 38, 2),
(49, 39, 2),
(49, 63, 1),
(49, 64, 1),
(49, 65, 1),
(49, 20, 2),
(49, 21, 2),
(49, 22, 2),
(49, 23, 2),
(49, 24, 2),
(49, 25, 2),
(49, 26, 2),
(49, 27, 2),
(49, 28, 2),
(49, 29, 2),
(49, 30, 2),
(49, 40, 1),
(50, 1, 1),
(50, 41, 1),
(50, 42, 1),
(50, 43, 1),
(50, 44, 1),
(50, 55, 1),
(50, 56, 1),
(50, 57, 1),
(50, 58, 1),
(50, 59, 1),
(50, 32, 1),
(50, 51, 1),
(50, 4, 1),
(50, 5, 1),
(50, 6, 1),
(50, 7, 1),
(50, 8, 1),
(50, 9, 1),
(50, 10, 1),
(50, 11, 1),
(50, 12, 1),
(50, 13, 1),
(50, 52, 1),
(50, 50, 1),
(50, 60, 1),
(50, 61, 1),
(50, 33, 1),
(50, 34, 1),
(50, 35, 1),
(50, 36, 1),
(50, 37, 1),
(50, 38, 1),
(50, 39, 1),
(50, 63, 1),
(50, 64, 1),
(50, 65, 1),
(50, 20, 1),
(50, 21, 1),
(50, 22, 1),
(50, 23, 1),
(50, 24, 1),
(50, 25, 1),
(50, 26, 1),
(50, 27, 1),
(50, 28, 1),
(50, 29, 1),
(50, 30, 1),
(50, 40, 1),
(51, 1, 1),
(51, 41, 1),
(51, 42, 1),
(51, 43, 1),
(51, 44, 1),
(51, 55, 1),
(51, 56, 1),
(51, 57, 1),
(51, 58, 1),
(51, 59, 1),
(51, 32, 1),
(51, 51, 1),
(51, 4, 1),
(51, 5, 1),
(51, 6, 1),
(51, 7, 1),
(51, 8, 1),
(51, 9, 1),
(51, 10, 1),
(51, 11, 1),
(51, 12, 1),
(51, 13, 1),
(51, 52, 1),
(51, 50, 1),
(51, 60, 1),
(51, 61, 1),
(51, 33, 1),
(51, 34, 1),
(51, 35, 1),
(51, 36, 1),
(51, 37, 1),
(51, 38, 1),
(51, 39, 1),
(51, 63, 1),
(51, 64, 1),
(51, 65, 1),
(51, 20, 1),
(51, 21, 1),
(51, 22, 1),
(51, 23, 1),
(51, 24, 1),
(51, 25, 1),
(51, 26, 1),
(51, 27, 1),
(51, 28, 1),
(51, 29, 1),
(51, 30, 1),
(51, 40, 1),
(52, 1, 1),
(52, 41, 1),
(52, 42, 1),
(52, 43, 1),
(52, 44, 1),
(52, 55, 1),
(52, 56, 1),
(52, 57, 1),
(52, 58, 1),
(52, 59, 1),
(52, 32, 1),
(52, 51, 1),
(52, 4, 1),
(52, 5, 1),
(52, 6, 1),
(52, 7, 1),
(52, 8, 1),
(52, 9, 1),
(52, 10, 1),
(52, 11, 1),
(52, 12, 1),
(52, 13, 1),
(52, 52, 1),
(52, 50, 1),
(52, 60, 1),
(52, 61, 1),
(52, 33, 1),
(52, 34, 1),
(52, 35, 1),
(52, 36, 1),
(52, 37, 1),
(52, 38, 1),
(52, 39, 1),
(52, 63, 1),
(52, 64, 1),
(52, 65, 1),
(52, 20, 1),
(52, 21, 1),
(52, 22, 1),
(52, 23, 1),
(52, 24, 1),
(52, 25, 1),
(52, 26, 1),
(52, 27, 1),
(52, 28, 1),
(52, 29, 1),
(52, 30, 1),
(52, 40, 1),
(53, 1, 1),
(53, 41, 1),
(53, 42, 1),
(53, 43, 1),
(53, 44, 1),
(53, 55, 1),
(53, 56, 1),
(53, 57, 1),
(53, 58, 1),
(53, 59, 1),
(53, 32, 1),
(53, 51, 1),
(53, 4, 1),
(53, 5, 1),
(53, 6, 1),
(53, 7, 1),
(53, 8, 1),
(53, 9, 1),
(53, 10, 1),
(53, 11, 1),
(53, 12, 1),
(53, 13, 1),
(53, 52, 1),
(53, 50, 1),
(53, 60, 1),
(53, 61, 1),
(53, 33, 1),
(53, 34, 1),
(53, 35, 1),
(53, 36, 1),
(53, 37, 1),
(53, 38, 1),
(53, 39, 1),
(53, 63, 1),
(53, 64, 1),
(53, 65, 1),
(53, 20, 1),
(53, 21, 1),
(53, 22, 1),
(53, 23, 1),
(53, 24, 1),
(53, 25, 1),
(53, 26, 1),
(53, 27, 1),
(53, 28, 1),
(53, 29, 1),
(53, 30, 1),
(53, 40, 1),
(54, 4, 1),
(16, 66, 1),
(18, 66, 1),
(21, 66, 1),
(11, 66, 1),
(12, 66, 2),
(5, 66, 1),
(6, 66, 2),
(20, 66, 1),
(17, 66, 1),
(15, 66, 1),
(13, 66, 1),
(14, 66, 2),
(7, 66, 1),
(8, 66, 2),
(9, 66, 3),
(10, 66, 4),
(19, 66, 1),
(30, 66, 1),
(28, 66, 1),
(29, 66, 1),
(22, 66, 1),
(23, 66, 2),
(24, 66, 1),
(25, 66, 2),
(26, 66, 3),
(27, 66, 4),
(46, 66, 1),
(49, 66, 1),
(50, 66, 1),
(51, 66, 1),
(52, 66, 1),
(53, 66, 1),
(32, 66, 1),
(34, 66, 1),
(35, 66, 1),
(36, 66, 1),
(39, 66, 1),
(40, 66, 1),
(41, 66, 1),
(42, 66, 1),
(43, 66, 1),
(44, 66, 1),
(16, 78, 1),
(16, 94, 1),
(16, 73, 1),
(16, 87, 1),
(16, 69, 1),
(16, 79, 1),
(16, 80, 1),
(16, 76, 1),
(16, 75, 1),
(16, 88, 1),
(16, 71, 1),
(16, 95, 1),
(16, 93, 1),
(16, 81, 1),
(16, 91, 1),
(16, 74, 1),
(16, 68, 1),
(16, 67, 1),
(18, 78, 1),
(18, 94, 1),
(18, 73, 1),
(18, 87, 1),
(18, 69, 1),
(18, 79, 1),
(18, 80, 1),
(18, 76, 1),
(18, 75, 1),
(18, 88, 1),
(18, 71, 1),
(18, 95, 1),
(18, 93, 1),
(18, 81, 1),
(18, 91, 1),
(18, 74, 1),
(18, 68, 1),
(18, 67, 1),
(21, 78, 1),
(21, 94, 1),
(21, 73, 1),
(21, 87, 1),
(21, 69, 1),
(21, 79, 1),
(21, 80, 1),
(21, 76, 1),
(21, 75, 1),
(21, 88, 1),
(21, 71, 1),
(21, 95, 1),
(21, 93, 1),
(21, 81, 1),
(21, 91, 1),
(21, 74, 1),
(21, 68, 1),
(21, 67, 1),
(11, 78, 1),
(11, 94, 1),
(11, 73, 1),
(11, 87, 1),
(11, 69, 1),
(11, 79, 1),
(11, 80, 1),
(11, 76, 1),
(11, 75, 1),
(11, 88, 1),
(11, 71, 1),
(11, 95, 1),
(11, 93, 1),
(11, 81, 1),
(11, 91, 1),
(11, 74, 1),
(11, 68, 1),
(11, 67, 1),
(12, 78, 2),
(12, 94, 2),
(12, 73, 2),
(12, 87, 2),
(12, 69, 2),
(12, 79, 2),
(12, 80, 2),
(12, 76, 2),
(12, 75, 2),
(12, 88, 2),
(12, 71, 2),
(12, 95, 2),
(12, 93, 2),
(12, 81, 2),
(12, 91, 2),
(12, 74, 2),
(12, 68, 2),
(12, 67, 2),
(5, 78, 1),
(5, 94, 1),
(5, 73, 1),
(5, 87, 1),
(5, 69, 1),
(5, 79, 1),
(5, 80, 1),
(5, 76, 1),
(5, 75, 1),
(5, 88, 1),
(5, 71, 1),
(5, 95, 1),
(5, 93, 1),
(5, 81, 1),
(5, 91, 1),
(5, 74, 1),
(5, 68, 1),
(5, 67, 1),
(6, 78, 2),
(6, 94, 2),
(6, 73, 2),
(6, 87, 2),
(6, 69, 2),
(6, 79, 2),
(6, 80, 2),
(6, 76, 2),
(6, 75, 2),
(6, 88, 2),
(6, 71, 2),
(6, 95, 2),
(6, 93, 2),
(6, 81, 2),
(6, 91, 2),
(6, 74, 2),
(6, 68, 2),
(6, 67, 2),
(20, 78, 1),
(20, 94, 1),
(20, 73, 1),
(20, 87, 1),
(20, 69, 1),
(20, 79, 1),
(20, 80, 1),
(20, 76, 1),
(20, 75, 1),
(20, 88, 1),
(20, 71, 1),
(20, 95, 1),
(20, 93, 1),
(20, 81, 1),
(20, 91, 1),
(20, 74, 1),
(20, 68, 1),
(20, 67, 1),
(17, 78, 1),
(17, 94, 1),
(17, 73, 1),
(17, 87, 1),
(17, 69, 1),
(17, 79, 1),
(17, 80, 1),
(17, 76, 1),
(17, 75, 1),
(17, 88, 1),
(17, 71, 1),
(17, 95, 1),
(17, 93, 1),
(17, 81, 1),
(17, 91, 1),
(17, 74, 1),
(17, 68, 1),
(17, 67, 1),
(15, 78, 1),
(15, 94, 1),
(15, 73, 1),
(15, 87, 1),
(15, 69, 1),
(15, 79, 1),
(15, 80, 1),
(15, 76, 1),
(15, 75, 1),
(15, 88, 1),
(15, 71, 1),
(15, 95, 1),
(15, 93, 1),
(15, 81, 1),
(15, 91, 1),
(15, 74, 1),
(15, 68, 1),
(15, 67, 1),
(13, 78, 1),
(13, 94, 1),
(13, 73, 1),
(13, 87, 1),
(13, 69, 1),
(13, 79, 1),
(13, 80, 1),
(13, 76, 1),
(13, 75, 1),
(13, 88, 1),
(13, 71, 1),
(13, 95, 1),
(13, 93, 1),
(13, 81, 1),
(13, 91, 1),
(13, 74, 1),
(13, 68, 1),
(13, 67, 1),
(14, 78, 2),
(14, 94, 2),
(14, 73, 2),
(14, 87, 2),
(14, 69, 2),
(14, 79, 2),
(14, 80, 2),
(14, 76, 2),
(14, 75, 2),
(14, 88, 2),
(14, 71, 2),
(14, 95, 2),
(14, 93, 2),
(14, 81, 2),
(14, 91, 2),
(14, 74, 2),
(14, 68, 2),
(14, 67, 2),
(7, 78, 1),
(7, 94, 1),
(7, 73, 1),
(7, 87, 1),
(7, 69, 1),
(7, 79, 1),
(7, 80, 1),
(7, 76, 1),
(7, 75, 1),
(7, 88, 1),
(7, 71, 1),
(7, 95, 1),
(7, 93, 1),
(7, 81, 1),
(7, 91, 1),
(7, 74, 1),
(7, 68, 1),
(7, 67, 1),
(8, 78, 2),
(8, 94, 2),
(8, 73, 2),
(8, 87, 2),
(8, 69, 2),
(8, 79, 2),
(8, 80, 2),
(8, 76, 2),
(8, 75, 2),
(8, 88, 2),
(8, 71, 2),
(8, 95, 2),
(8, 93, 2),
(8, 81, 2),
(8, 91, 2),
(8, 74, 2),
(8, 68, 2),
(8, 67, 2),
(9, 78, 3),
(9, 94, 3),
(9, 73, 3),
(9, 87, 3),
(9, 69, 3),
(9, 79, 3),
(9, 80, 3),
(9, 76, 3),
(9, 75, 3),
(9, 88, 3),
(9, 71, 3),
(9, 95, 3),
(9, 93, 3),
(9, 81, 3),
(9, 91, 3),
(9, 74, 3),
(9, 68, 3),
(9, 67, 3),
(10, 78, 4),
(10, 94, 4),
(10, 73, 4),
(10, 87, 4),
(10, 69, 4),
(10, 79, 4),
(10, 80, 4),
(10, 76, 4),
(10, 75, 4),
(10, 88, 4),
(10, 71, 4),
(10, 95, 4),
(10, 93, 4),
(10, 81, 4),
(10, 91, 4),
(10, 74, 4),
(10, 68, 4),
(10, 67, 4),
(19, 78, 1),
(19, 94, 1),
(19, 73, 1),
(19, 87, 1),
(19, 69, 1),
(19, 79, 1),
(19, 80, 1),
(19, 76, 1),
(19, 75, 1),
(19, 88, 1),
(19, 71, 1),
(19, 95, 1),
(19, 93, 1),
(19, 81, 1),
(19, 91, 1),
(19, 74, 1),
(19, 68, 1),
(19, 67, 1),
(30, 78, 1),
(30, 94, 1),
(30, 73, 1),
(30, 87, 1),
(30, 69, 1),
(30, 79, 1),
(30, 80, 1),
(30, 76, 1),
(30, 75, 1),
(30, 88, 1),
(30, 71, 1),
(30, 95, 1),
(30, 93, 1),
(30, 81, 1),
(30, 91, 1),
(30, 74, 1),
(30, 68, 1),
(30, 67, 1),
(28, 78, 1),
(28, 94, 1),
(28, 73, 1),
(28, 87, 1),
(28, 69, 1),
(28, 79, 1),
(28, 80, 1),
(28, 76, 1),
(28, 75, 1),
(28, 88, 1),
(28, 71, 1),
(28, 95, 1),
(28, 93, 1),
(28, 81, 1),
(28, 91, 1),
(28, 74, 1),
(28, 68, 1),
(28, 67, 1),
(29, 78, 1),
(29, 94, 1),
(29, 73, 1),
(29, 87, 1),
(29, 69, 1),
(29, 79, 1),
(29, 80, 1),
(29, 76, 1),
(29, 75, 1),
(29, 88, 1),
(29, 71, 1),
(29, 95, 1),
(29, 93, 1),
(29, 81, 1),
(29, 91, 1),
(29, 74, 1),
(29, 68, 1),
(29, 67, 1),
(22, 78, 1),
(22, 94, 1),
(22, 73, 1),
(22, 87, 1),
(22, 69, 1),
(22, 79, 1),
(22, 80, 1),
(22, 76, 1),
(22, 75, 1),
(22, 88, 1),
(22, 71, 1),
(22, 95, 1),
(22, 93, 1),
(22, 81, 1),
(22, 91, 1),
(22, 74, 1),
(22, 68, 1),
(22, 67, 1),
(23, 78, 2),
(23, 94, 2),
(23, 73, 2),
(23, 87, 2),
(23, 69, 2),
(23, 79, 2),
(23, 80, 2),
(23, 76, 2),
(23, 75, 2),
(23, 88, 2),
(23, 71, 2),
(23, 95, 2),
(23, 93, 2),
(23, 81, 2),
(23, 91, 2),
(23, 74, 2),
(23, 68, 2),
(23, 67, 2),
(24, 78, 1),
(24, 94, 1),
(24, 73, 1),
(24, 87, 1),
(24, 69, 1),
(24, 79, 1),
(24, 80, 1),
(24, 76, 1),
(24, 75, 1),
(24, 88, 1),
(24, 71, 1),
(24, 95, 1),
(24, 93, 1),
(24, 81, 1),
(24, 91, 1),
(24, 74, 1),
(24, 68, 1),
(24, 67, 1),
(25, 78, 2),
(25, 94, 2),
(25, 73, 2),
(25, 87, 2),
(25, 69, 2),
(25, 79, 2),
(25, 80, 2),
(25, 76, 2),
(25, 75, 2),
(25, 88, 2),
(25, 71, 2),
(25, 95, 2),
(25, 93, 2),
(25, 81, 2),
(25, 91, 2),
(25, 74, 2),
(25, 68, 2),
(25, 67, 2),
(26, 78, 3),
(26, 94, 3),
(26, 73, 3),
(26, 87, 3),
(26, 69, 3),
(26, 79, 3),
(26, 80, 3),
(26, 76, 3),
(26, 75, 3),
(26, 88, 3),
(26, 71, 3),
(26, 95, 3),
(26, 93, 3),
(26, 81, 3),
(26, 91, 3),
(26, 74, 3),
(26, 68, 3),
(26, 67, 3),
(27, 78, 4),
(27, 94, 4),
(27, 73, 4),
(27, 87, 4),
(27, 69, 4),
(27, 79, 4),
(27, 80, 4),
(27, 76, 4),
(27, 75, 4),
(27, 88, 4),
(27, 71, 4),
(27, 95, 4),
(27, 93, 4),
(27, 81, 4),
(27, 91, 4),
(27, 74, 4),
(27, 68, 4),
(27, 67, 4),
(46, 78, 1),
(46, 94, 1),
(46, 73, 1),
(46, 87, 1),
(46, 69, 1),
(46, 79, 1),
(46, 80, 1),
(46, 76, 1),
(46, 75, 1),
(46, 88, 1),
(46, 71, 1),
(46, 95, 1),
(46, 93, 1),
(46, 81, 1),
(46, 91, 1),
(46, 74, 1),
(46, 68, 1),
(46, 67, 1),
(49, 78, 1),
(49, 94, 1),
(49, 73, 1),
(49, 87, 1),
(49, 69, 1),
(49, 79, 1),
(49, 80, 1),
(49, 76, 1),
(49, 75, 1),
(49, 88, 1),
(49, 71, 1),
(49, 95, 1),
(49, 93, 1),
(49, 81, 1),
(49, 91, 1),
(49, 74, 1),
(49, 68, 1),
(49, 67, 1),
(50, 78, 1),
(50, 94, 1),
(50, 73, 1),
(50, 87, 1),
(50, 69, 1),
(50, 79, 1),
(50, 80, 1),
(50, 76, 1),
(50, 75, 1),
(50, 88, 1),
(50, 71, 1),
(50, 95, 1),
(50, 93, 1),
(50, 81, 1),
(50, 91, 1),
(50, 74, 1),
(50, 68, 1),
(50, 67, 1),
(51, 78, 1),
(51, 94, 1),
(51, 73, 1),
(51, 87, 1),
(51, 69, 1),
(51, 79, 1),
(51, 80, 1),
(51, 76, 1),
(51, 75, 1),
(51, 88, 1),
(51, 71, 1),
(51, 95, 1),
(51, 93, 1),
(51, 81, 1),
(51, 91, 1),
(51, 74, 1),
(51, 68, 1),
(51, 67, 1),
(52, 78, 1),
(52, 94, 1),
(52, 73, 1),
(52, 87, 1),
(52, 69, 1),
(52, 79, 1),
(52, 80, 1),
(52, 76, 1),
(52, 75, 1),
(52, 88, 1),
(52, 71, 1),
(52, 95, 1),
(52, 93, 1),
(52, 81, 1),
(52, 91, 1),
(52, 74, 1),
(52, 68, 1),
(52, 67, 1),
(53, 78, 1),
(53, 94, 1),
(53, 73, 1),
(53, 87, 1),
(53, 69, 1),
(53, 79, 1),
(53, 80, 1),
(53, 76, 1),
(53, 75, 1),
(53, 88, 1),
(53, 71, 1),
(53, 95, 1),
(53, 93, 1),
(53, 81, 1),
(53, 91, 1),
(53, 74, 1),
(53, 68, 1),
(53, 67, 1),
(32, 78, 1),
(32, 94, 1),
(32, 73, 1),
(32, 87, 1),
(32, 69, 1),
(32, 79, 1),
(32, 80, 1),
(32, 76, 1),
(32, 75, 1),
(32, 88, 1),
(32, 71, 1),
(32, 95, 1),
(32, 93, 1),
(32, 81, 1),
(32, 91, 1),
(32, 74, 1),
(32, 68, 1),
(32, 67, 1),
(34, 78, 1),
(34, 94, 1),
(34, 73, 1),
(34, 87, 1),
(34, 69, 1),
(34, 79, 1),
(34, 80, 1),
(34, 76, 1),
(34, 75, 1),
(34, 88, 1),
(34, 71, 1),
(34, 95, 1),
(34, 93, 1),
(34, 81, 1),
(34, 91, 1),
(34, 74, 1),
(34, 68, 1),
(34, 67, 1),
(35, 78, 1),
(35, 94, 1),
(35, 73, 1),
(35, 87, 1),
(35, 69, 1),
(35, 79, 1),
(35, 80, 1),
(35, 76, 1),
(35, 75, 1),
(35, 88, 1),
(35, 71, 1),
(35, 95, 1),
(35, 93, 1),
(35, 81, 1),
(35, 91, 1),
(35, 74, 1),
(35, 68, 1),
(35, 67, 1),
(36, 78, 1),
(36, 94, 1),
(36, 73, 1),
(36, 87, 1),
(36, 69, 1),
(36, 79, 1),
(36, 80, 1),
(36, 76, 1),
(36, 75, 1),
(36, 88, 1),
(36, 71, 1),
(36, 95, 1),
(36, 93, 1),
(36, 81, 1),
(36, 91, 1),
(36, 74, 1),
(36, 68, 1),
(36, 67, 1),
(39, 78, 1),
(39, 94, 1),
(39, 73, 1),
(39, 87, 1),
(39, 69, 1),
(39, 79, 1),
(39, 80, 1),
(39, 76, 1),
(39, 75, 1),
(39, 88, 1),
(39, 71, 1),
(39, 95, 1),
(39, 93, 1),
(39, 81, 1),
(39, 91, 1),
(39, 74, 1),
(39, 68, 1),
(39, 67, 1),
(40, 78, 1),
(40, 94, 1),
(40, 73, 1),
(40, 87, 1),
(40, 69, 1),
(40, 79, 1),
(40, 80, 1),
(40, 76, 1),
(40, 75, 1),
(40, 88, 1),
(40, 71, 1),
(40, 95, 1),
(40, 93, 1),
(40, 81, 1),
(40, 91, 1),
(40, 74, 1),
(40, 68, 1),
(40, 67, 1),
(41, 78, 1),
(41, 94, 1),
(41, 73, 1),
(41, 87, 1),
(41, 69, 1),
(41, 79, 1),
(41, 80, 1),
(41, 76, 1),
(41, 75, 1),
(41, 88, 1),
(41, 71, 1),
(41, 95, 1),
(41, 93, 1),
(41, 81, 1),
(41, 91, 1),
(41, 74, 1),
(41, 68, 1),
(41, 67, 1),
(42, 78, 1),
(42, 94, 1),
(42, 73, 1),
(42, 87, 1),
(42, 69, 1),
(42, 79, 1),
(42, 80, 1),
(42, 76, 1),
(42, 75, 1),
(42, 88, 1),
(42, 71, 1),
(42, 95, 1),
(42, 93, 1),
(42, 81, 1),
(42, 91, 1),
(42, 74, 1),
(42, 68, 1),
(42, 67, 1),
(43, 78, 1),
(43, 94, 1),
(43, 73, 1),
(43, 87, 1),
(43, 69, 1),
(43, 79, 1),
(43, 80, 1),
(43, 76, 1),
(43, 75, 1),
(43, 88, 1),
(43, 71, 1),
(43, 95, 1),
(43, 93, 1),
(43, 81, 1),
(43, 91, 1),
(43, 74, 1),
(43, 68, 1),
(43, 67, 1),
(44, 78, 1),
(44, 94, 1),
(44, 73, 1),
(44, 87, 1),
(44, 69, 1),
(44, 79, 1),
(44, 80, 1),
(44, 76, 1),
(44, 75, 1),
(44, 88, 1),
(44, 71, 1),
(44, 95, 1),
(44, 93, 1),
(44, 81, 1),
(44, 91, 1),
(44, 74, 1),
(44, 68, 1),
(44, 67, 1),
(16, 108, 1),
(16, 124, 1),
(16, 103, 1),
(16, 117, 1),
(16, 99, 1),
(16, 109, 1),
(16, 110, 1),
(16, 106, 1),
(16, 105, 1),
(16, 118, 1),
(16, 101, 1),
(16, 125, 1),
(16, 123, 1),
(16, 111, 1),
(16, 121, 1),
(16, 104, 1),
(16, 98, 1),
(16, 97, 1),
(18, 108, 1),
(18, 124, 1),
(18, 103, 1),
(18, 117, 1),
(18, 99, 1),
(18, 109, 1),
(18, 110, 1),
(18, 106, 1),
(18, 105, 1),
(18, 118, 1),
(18, 101, 1),
(18, 125, 1),
(18, 123, 1),
(18, 111, 1),
(18, 121, 1),
(18, 104, 1),
(18, 98, 1),
(18, 97, 1),
(21, 108, 1),
(21, 124, 1),
(21, 103, 1),
(21, 117, 1),
(21, 99, 1),
(21, 109, 1),
(21, 110, 1),
(21, 106, 1),
(21, 105, 1),
(21, 118, 1),
(21, 101, 1),
(21, 125, 1),
(21, 123, 1),
(21, 111, 1),
(21, 121, 1),
(21, 104, 1),
(21, 98, 1),
(21, 97, 1),
(11, 108, 1),
(11, 124, 1),
(11, 103, 1),
(11, 117, 1),
(11, 99, 1),
(11, 109, 1),
(11, 110, 1),
(11, 106, 1),
(11, 105, 1),
(11, 118, 1),
(11, 101, 1),
(11, 125, 1),
(11, 123, 1),
(11, 111, 1),
(11, 121, 1),
(11, 104, 1),
(11, 98, 1),
(11, 97, 1),
(12, 108, 2),
(12, 124, 2),
(12, 103, 2),
(12, 117, 2),
(12, 99, 2),
(12, 109, 2),
(12, 110, 2),
(12, 106, 2),
(12, 105, 2),
(12, 118, 2),
(12, 101, 2),
(12, 125, 2),
(12, 123, 2),
(12, 111, 2),
(12, 121, 2),
(12, 104, 2),
(12, 98, 2),
(12, 97, 2),
(5, 108, 1),
(5, 124, 1),
(5, 103, 1),
(5, 117, 1),
(5, 99, 1),
(5, 109, 1),
(5, 110, 1),
(5, 106, 1),
(5, 105, 1),
(5, 118, 1),
(5, 101, 1),
(5, 125, 1),
(5, 123, 1),
(5, 111, 1),
(5, 121, 1),
(5, 104, 1),
(5, 98, 1),
(5, 97, 1),
(6, 108, 2),
(6, 124, 2),
(6, 103, 2),
(6, 117, 2),
(6, 99, 2),
(6, 109, 2),
(6, 110, 2),
(6, 106, 2),
(6, 105, 2),
(6, 118, 2),
(6, 101, 2),
(6, 125, 2),
(6, 123, 2),
(6, 111, 2),
(6, 121, 2),
(6, 104, 2),
(6, 98, 2),
(6, 97, 2),
(20, 108, 1),
(20, 124, 1),
(20, 103, 1),
(20, 117, 1),
(20, 99, 1),
(20, 109, 1),
(20, 110, 1),
(20, 106, 1),
(20, 105, 1),
(20, 118, 1),
(20, 101, 1),
(20, 125, 1),
(20, 123, 1),
(20, 111, 1),
(20, 121, 1),
(20, 104, 1),
(20, 98, 1),
(20, 97, 1),
(17, 108, 1),
(17, 124, 1),
(17, 103, 1),
(17, 117, 1),
(17, 99, 1),
(17, 109, 1),
(17, 110, 1),
(17, 106, 1),
(17, 105, 1),
(17, 118, 1),
(17, 101, 1),
(17, 125, 1),
(17, 123, 1),
(17, 111, 1),
(17, 121, 1),
(17, 104, 1),
(17, 98, 1),
(17, 97, 1),
(15, 108, 1),
(15, 124, 1),
(15, 103, 1),
(15, 117, 1),
(15, 99, 1),
(15, 109, 1),
(15, 110, 1),
(15, 106, 1),
(15, 105, 1),
(15, 118, 1),
(15, 101, 1),
(15, 125, 1),
(15, 123, 1),
(15, 111, 1),
(15, 121, 1),
(15, 104, 1),
(15, 98, 1),
(15, 97, 1),
(13, 108, 1),
(13, 124, 1),
(13, 103, 1),
(13, 117, 1),
(13, 99, 1),
(13, 109, 1),
(13, 110, 1),
(13, 106, 1),
(13, 105, 1),
(13, 118, 1),
(13, 101, 1),
(13, 125, 1),
(13, 123, 1),
(13, 111, 1),
(13, 121, 1),
(13, 104, 1),
(13, 98, 1),
(13, 97, 1),
(14, 108, 2),
(14, 124, 2),
(14, 103, 2),
(14, 117, 2),
(14, 99, 2),
(14, 109, 2),
(14, 110, 2),
(14, 106, 2),
(14, 105, 2),
(14, 118, 2),
(14, 101, 2),
(14, 125, 2),
(14, 123, 2),
(14, 111, 2),
(14, 121, 2),
(14, 104, 2),
(14, 98, 2),
(14, 97, 2),
(7, 108, 1),
(7, 124, 1),
(7, 103, 1),
(7, 117, 1),
(7, 99, 1),
(7, 109, 1),
(7, 110, 1),
(7, 106, 1),
(7, 105, 1),
(7, 118, 1),
(7, 101, 1),
(7, 125, 1),
(7, 123, 1),
(7, 111, 1),
(7, 121, 1),
(7, 104, 1),
(7, 98, 1),
(7, 97, 1),
(8, 108, 2),
(8, 124, 2),
(8, 103, 2),
(8, 117, 2),
(8, 99, 2),
(8, 109, 2),
(8, 110, 2),
(8, 106, 2),
(8, 105, 2),
(8, 118, 2),
(8, 101, 2),
(8, 125, 2),
(8, 123, 2),
(8, 111, 2),
(8, 121, 2),
(8, 104, 2),
(8, 98, 2),
(8, 97, 2),
(9, 108, 3),
(9, 124, 3),
(9, 103, 3),
(9, 117, 3),
(9, 99, 3),
(9, 109, 3),
(9, 110, 3),
(9, 106, 3),
(9, 105, 3),
(9, 118, 3),
(9, 101, 3),
(9, 125, 3),
(9, 123, 3),
(9, 111, 3),
(9, 121, 3),
(9, 104, 3),
(9, 98, 3),
(9, 97, 3),
(10, 108, 4),
(10, 124, 4),
(10, 103, 4),
(10, 117, 4),
(10, 99, 4),
(10, 109, 4),
(10, 110, 4),
(10, 106, 4),
(10, 105, 4),
(10, 118, 4),
(10, 101, 4),
(10, 125, 4),
(10, 123, 4),
(10, 111, 4),
(10, 121, 4),
(10, 104, 4),
(10, 98, 4),
(10, 97, 4),
(19, 108, 1),
(19, 124, 1),
(19, 103, 1),
(19, 117, 1),
(19, 99, 1),
(19, 109, 1),
(19, 110, 1),
(19, 106, 1),
(19, 105, 1),
(19, 118, 1),
(19, 101, 1),
(19, 125, 1),
(19, 123, 1),
(19, 111, 1),
(19, 121, 1),
(19, 104, 1),
(19, 98, 1),
(19, 97, 1),
(30, 108, 1),
(30, 124, 1),
(30, 103, 1),
(30, 117, 1),
(30, 99, 1),
(30, 109, 1),
(30, 110, 1),
(30, 106, 1),
(30, 105, 1),
(30, 118, 1),
(30, 101, 1),
(30, 125, 1),
(30, 123, 1),
(30, 111, 1),
(30, 121, 1),
(30, 104, 1),
(30, 98, 1),
(30, 97, 1),
(28, 108, 1),
(28, 124, 1),
(28, 103, 1),
(28, 117, 1),
(28, 99, 1),
(28, 109, 1),
(28, 110, 1),
(28, 106, 1),
(28, 105, 1),
(28, 118, 1),
(28, 101, 1),
(28, 125, 1),
(28, 123, 1),
(28, 111, 1),
(28, 121, 1),
(28, 104, 1),
(28, 98, 1),
(28, 97, 1),
(29, 108, 1),
(29, 124, 1),
(29, 103, 1),
(29, 117, 1),
(29, 99, 1),
(29, 109, 1),
(29, 110, 1),
(29, 106, 1),
(29, 105, 1),
(29, 118, 1),
(29, 101, 1),
(29, 125, 1),
(29, 123, 1),
(29, 111, 1),
(29, 121, 1),
(29, 104, 1),
(29, 98, 1),
(29, 97, 1),
(22, 108, 1),
(22, 124, 1),
(22, 103, 1),
(22, 117, 1),
(22, 99, 1),
(22, 109, 1),
(22, 110, 1),
(22, 106, 1),
(22, 105, 1),
(22, 118, 1),
(22, 101, 1),
(22, 125, 1),
(22, 123, 1),
(22, 111, 1),
(22, 121, 1),
(22, 104, 1),
(22, 98, 1),
(22, 97, 1),
(23, 108, 2),
(23, 124, 2),
(23, 103, 2),
(23, 117, 2),
(23, 99, 2),
(23, 109, 2),
(23, 110, 2),
(23, 106, 2),
(23, 105, 2),
(23, 118, 2),
(23, 101, 2),
(23, 125, 2),
(23, 123, 2),
(23, 111, 2),
(23, 121, 2),
(23, 104, 2),
(23, 98, 2),
(23, 97, 2),
(24, 108, 1),
(24, 124, 1),
(24, 103, 1),
(24, 117, 1),
(24, 99, 1),
(24, 109, 1),
(24, 110, 1),
(24, 106, 1),
(24, 105, 1),
(24, 118, 1),
(24, 101, 1),
(24, 125, 1),
(24, 123, 1),
(24, 111, 1),
(24, 121, 1),
(24, 104, 1),
(24, 98, 1),
(24, 97, 1),
(25, 108, 2),
(25, 124, 2),
(25, 103, 2),
(25, 117, 2),
(25, 99, 2),
(25, 109, 2),
(25, 110, 2),
(25, 106, 2),
(25, 105, 2),
(25, 118, 2),
(25, 101, 2),
(25, 125, 2),
(25, 123, 2),
(25, 111, 2),
(25, 121, 2),
(25, 104, 2),
(25, 98, 2),
(25, 97, 2),
(26, 108, 3),
(26, 124, 3),
(26, 103, 3),
(26, 117, 3),
(26, 99, 3),
(26, 109, 3),
(26, 110, 3),
(26, 106, 3),
(26, 105, 3),
(26, 118, 3),
(26, 101, 3),
(26, 125, 3),
(26, 123, 3),
(26, 111, 3),
(26, 121, 3),
(26, 104, 3),
(26, 98, 3),
(26, 97, 3),
(27, 108, 4),
(27, 124, 4),
(27, 103, 4),
(27, 117, 4),
(27, 99, 4),
(27, 109, 4),
(27, 110, 4),
(27, 106, 4),
(27, 105, 4),
(27, 118, 4),
(27, 101, 4),
(27, 125, 4),
(27, 123, 4),
(27, 111, 4),
(27, 121, 4),
(27, 104, 4),
(27, 98, 4),
(27, 97, 4),
(46, 108, 1),
(46, 124, 1),
(46, 103, 1),
(46, 117, 1),
(46, 99, 1),
(46, 109, 1),
(46, 110, 1),
(46, 106, 1),
(46, 105, 1),
(46, 118, 1),
(46, 101, 1),
(46, 125, 1),
(46, 123, 1),
(46, 111, 1),
(46, 121, 1),
(46, 104, 1),
(46, 98, 1),
(46, 97, 1),
(49, 108, 1),
(49, 124, 1),
(49, 103, 1),
(49, 117, 1),
(49, 99, 1),
(49, 109, 1),
(49, 110, 1),
(49, 106, 1),
(49, 105, 1),
(49, 118, 1),
(49, 101, 1),
(49, 125, 1),
(49, 123, 1),
(49, 111, 1),
(49, 121, 1),
(49, 104, 1),
(49, 98, 1),
(49, 97, 1),
(50, 108, 1),
(50, 124, 1),
(50, 103, 1),
(50, 117, 1),
(50, 99, 1),
(50, 109, 1),
(50, 110, 1),
(50, 106, 1),
(50, 105, 1),
(50, 118, 1),
(50, 101, 1),
(50, 125, 1),
(50, 123, 1),
(50, 111, 1),
(50, 121, 1),
(50, 104, 1),
(50, 98, 1),
(50, 97, 1),
(51, 108, 1),
(51, 124, 1),
(51, 103, 1),
(51, 117, 1),
(51, 99, 1),
(51, 109, 1),
(51, 110, 1),
(51, 106, 1),
(51, 105, 1),
(51, 118, 1),
(51, 101, 1),
(51, 125, 1),
(51, 123, 1),
(51, 111, 1),
(51, 121, 1),
(51, 104, 1),
(51, 98, 1),
(51, 97, 1),
(52, 108, 1),
(52, 124, 1),
(52, 103, 1),
(52, 117, 1),
(52, 99, 1),
(52, 109, 1),
(52, 110, 1),
(52, 106, 1),
(52, 105, 1),
(52, 118, 1),
(52, 101, 1),
(52, 125, 1),
(52, 123, 1),
(52, 111, 1),
(52, 121, 1),
(52, 104, 1),
(52, 98, 1),
(52, 97, 1),
(53, 108, 1),
(53, 124, 1),
(53, 103, 1),
(53, 117, 1),
(53, 99, 1),
(53, 109, 1),
(53, 110, 1),
(53, 106, 1),
(53, 105, 1),
(53, 118, 1),
(53, 101, 1),
(53, 125, 1),
(53, 123, 1),
(53, 111, 1),
(53, 121, 1),
(53, 104, 1),
(53, 98, 1),
(53, 97, 1),
(32, 108, 1),
(32, 124, 1),
(32, 103, 1),
(32, 117, 1),
(32, 99, 1),
(32, 109, 1),
(32, 110, 1),
(32, 106, 1),
(32, 105, 1),
(32, 118, 1),
(32, 101, 1),
(32, 125, 1),
(32, 123, 1),
(32, 111, 1),
(32, 121, 1),
(32, 104, 1),
(32, 98, 1),
(32, 97, 1),
(34, 108, 1),
(34, 124, 1),
(34, 103, 1),
(34, 117, 1),
(34, 99, 1),
(34, 109, 1),
(34, 110, 1),
(34, 106, 1),
(34, 105, 1),
(34, 118, 1),
(34, 101, 1),
(34, 125, 1),
(34, 123, 1),
(34, 111, 1),
(34, 121, 1),
(34, 104, 1),
(34, 98, 1),
(34, 97, 1),
(35, 108, 1),
(35, 124, 1),
(35, 103, 1),
(35, 117, 1),
(35, 99, 1),
(35, 109, 1),
(35, 110, 1),
(35, 106, 1),
(35, 105, 1),
(35, 118, 1),
(35, 101, 1),
(35, 125, 1),
(35, 123, 1),
(35, 111, 1),
(35, 121, 1),
(35, 104, 1),
(35, 98, 1),
(35, 97, 1),
(36, 108, 1),
(36, 124, 1),
(36, 103, 1),
(36, 117, 1),
(36, 99, 1),
(36, 109, 1),
(36, 110, 1),
(36, 106, 1),
(36, 105, 1),
(36, 118, 1),
(36, 101, 1),
(36, 125, 1),
(36, 123, 1),
(36, 111, 1),
(36, 121, 1),
(36, 104, 1),
(36, 98, 1),
(36, 97, 1),
(39, 108, 1),
(39, 124, 1),
(39, 103, 1),
(39, 117, 1),
(39, 99, 1),
(39, 109, 1),
(39, 110, 1),
(39, 106, 1),
(39, 105, 1),
(39, 118, 1),
(39, 101, 1),
(39, 125, 1),
(39, 123, 1),
(39, 111, 1),
(39, 121, 1),
(39, 104, 1),
(39, 98, 1),
(39, 97, 1),
(40, 108, 1),
(40, 124, 1),
(40, 103, 1),
(40, 117, 1),
(40, 99, 1),
(40, 109, 1),
(40, 110, 1),
(40, 106, 1),
(40, 105, 1),
(40, 118, 1),
(40, 101, 1),
(40, 125, 1),
(40, 123, 1),
(40, 111, 1),
(40, 121, 1),
(40, 104, 1),
(40, 98, 1),
(40, 97, 1),
(41, 108, 1),
(41, 124, 1),
(41, 103, 1),
(41, 117, 1),
(41, 99, 1),
(41, 109, 1),
(41, 110, 1),
(41, 106, 1),
(41, 105, 1),
(41, 118, 1),
(41, 101, 1),
(41, 125, 1),
(41, 123, 1),
(41, 111, 1),
(41, 121, 1),
(41, 104, 1),
(41, 98, 1),
(41, 97, 1),
(42, 108, 1),
(42, 124, 1),
(42, 103, 1),
(42, 117, 1),
(42, 99, 1),
(42, 109, 1),
(42, 110, 1),
(42, 106, 1),
(42, 105, 1),
(42, 118, 1),
(42, 101, 1),
(42, 125, 1),
(42, 123, 1),
(42, 111, 1),
(42, 121, 1),
(42, 104, 1),
(42, 98, 1),
(42, 97, 1),
(43, 108, 1),
(43, 124, 1),
(43, 103, 1),
(43, 117, 1),
(43, 99, 1),
(43, 109, 1),
(43, 110, 1),
(43, 106, 1),
(43, 105, 1),
(43, 118, 1),
(43, 101, 1),
(43, 125, 1),
(43, 123, 1),
(43, 111, 1),
(43, 121, 1),
(43, 104, 1),
(43, 98, 1),
(43, 97, 1),
(44, 108, 1),
(44, 124, 1),
(44, 103, 1),
(44, 117, 1),
(44, 99, 1),
(44, 109, 1),
(44, 110, 1),
(44, 106, 1),
(44, 105, 1),
(44, 118, 1),
(44, 101, 1),
(44, 125, 1),
(44, 123, 1),
(44, 111, 1),
(44, 121, 1),
(44, 104, 1),
(44, 98, 1),
(44, 97, 1),
(55, 66, 1),
(58, 66, 1),
(75, 78, 1),
(77, 108, 1),
(62, 66, 1),
(62, 78, 1),
(62, 94, 1),
(62, 73, 1),
(62, 87, 1),
(62, 69, 1),
(62, 79, 1),
(62, 80, 1),
(62, 76, 1),
(62, 75, 1),
(62, 88, 1),
(62, 71, 1),
(62, 95, 1),
(62, 93, 1),
(62, 81, 1),
(62, 91, 1),
(62, 74, 1),
(62, 68, 1),
(62, 67, 1),
(62, 108, 1),
(62, 124, 1),
(62, 103, 1),
(62, 117, 1),
(62, 99, 1),
(62, 109, 1),
(62, 110, 1),
(62, 106, 1),
(62, 105, 1),
(62, 118, 1),
(62, 101, 1),
(62, 125, 1),
(62, 123, 1),
(62, 111, 1),
(62, 121, 1),
(62, 104, 1),
(62, 98, 1),
(62, 97, 1),
(62, 1, 1),
(62, 4, 1),
(62, 5, 1),
(62, 6, 1),
(62, 7, 1),
(62, 8, 1),
(62, 9, 1),
(62, 10, 1),
(62, 11, 1),
(62, 12, 1),
(62, 13, 1),
(62, 20, 1),
(62, 21, 1),
(62, 22, 1),
(62, 23, 1),
(62, 24, 1),
(62, 25, 1),
(62, 26, 1),
(62, 27, 1),
(62, 28, 1),
(62, 29, 1),
(62, 30, 1),
(62, 32, 1),
(62, 33, 1),
(62, 34, 1),
(62, 35, 1),
(62, 36, 1),
(62, 37, 1),
(62, 38, 1),
(62, 39, 1),
(62, 40, 1),
(62, 41, 1),
(62, 42, 1),
(62, 43, 1),
(62, 44, 1),
(62, 50, 1),
(62, 51, 1),
(62, 52, 1),
(62, 55, 1),
(62, 56, 1),
(62, 57, 1),
(62, 58, 1),
(62, 59, 1),
(62, 60, 1),
(62, 61, 1),
(62, 63, 1),
(62, 64, 1),
(62, 65, 1),
(64, 66, 1),
(65, 66, 1),
(67, 66, 1),
(67, 78, 1),
(67, 94, 1),
(67, 73, 1),
(67, 87, 1),
(67, 69, 1),
(67, 79, 1),
(67, 80, 1),
(67, 76, 1),
(67, 75, 1),
(67, 88, 1),
(67, 71, 1),
(67, 95, 1),
(67, 93, 1),
(67, 81, 1),
(67, 91, 1),
(67, 74, 1),
(67, 68, 1),
(67, 67, 1),
(67, 108, 1),
(67, 124, 1),
(67, 103, 1),
(67, 117, 1),
(67, 99, 1),
(67, 109, 1),
(67, 110, 1),
(67, 106, 1),
(67, 105, 1),
(67, 118, 1),
(67, 101, 1),
(67, 125, 1),
(67, 123, 1),
(67, 111, 1),
(67, 121, 1),
(67, 104, 1),
(67, 98, 1),
(67, 97, 1),
(67, 1, 1),
(67, 4, 1),
(67, 5, 1),
(67, 6, 1),
(67, 7, 1),
(67, 8, 1),
(67, 9, 1),
(67, 10, 1),
(67, 11, 1),
(67, 12, 1),
(67, 13, 1),
(67, 20, 1),
(67, 21, 1),
(67, 22, 1),
(67, 23, 1),
(67, 24, 1),
(67, 25, 1),
(67, 26, 1),
(67, 27, 1),
(67, 28, 1),
(67, 29, 1),
(67, 30, 1),
(67, 32, 1),
(67, 33, 1),
(67, 34, 1),
(67, 35, 1),
(67, 36, 1),
(67, 37, 1),
(67, 38, 1),
(67, 39, 1),
(67, 40, 1),
(67, 41, 1),
(67, 42, 1),
(67, 43, 1),
(67, 44, 1),
(67, 50, 1),
(67, 51, 1),
(67, 52, 1),
(67, 55, 1),
(67, 56, 1),
(67, 57, 1),
(67, 58, 1),
(67, 59, 1),
(67, 60, 1),
(67, 61, 1),
(67, 63, 1),
(67, 64, 1),
(67, 65, 1),
(68, 66, 1),
(68, 78, 1),
(68, 94, 1),
(68, 73, 1),
(68, 87, 1),
(68, 69, 1),
(68, 79, 1),
(68, 80, 1),
(68, 76, 1),
(68, 75, 1),
(68, 88, 1),
(68, 71, 1),
(68, 95, 1),
(68, 93, 1),
(68, 81, 1),
(68, 91, 1),
(68, 74, 1),
(68, 68, 1),
(68, 67, 1),
(68, 108, 1),
(68, 124, 1),
(68, 103, 1),
(68, 117, 1),
(68, 99, 1),
(68, 109, 1),
(68, 110, 1),
(68, 106, 1),
(68, 105, 1),
(68, 118, 1),
(68, 101, 1),
(68, 125, 1),
(68, 123, 1),
(68, 111, 1),
(68, 121, 1),
(68, 104, 1),
(68, 98, 1),
(68, 97, 1),
(68, 1, 1),
(68, 4, 1),
(68, 5, 1),
(68, 6, 1),
(68, 7, 1),
(68, 8, 1),
(68, 9, 1),
(68, 10, 1),
(68, 11, 1),
(68, 12, 1),
(68, 13, 1),
(68, 20, 1),
(68, 21, 1),
(68, 22, 1),
(68, 23, 1),
(68, 24, 1),
(68, 25, 1),
(68, 26, 1),
(68, 27, 1),
(68, 28, 1),
(68, 29, 1),
(68, 30, 1),
(68, 32, 1),
(68, 33, 1),
(68, 34, 1),
(68, 35, 1),
(68, 36, 1),
(68, 37, 1),
(68, 38, 1),
(68, 39, 1),
(68, 40, 1),
(68, 41, 1),
(68, 42, 1),
(68, 43, 1),
(68, 44, 1),
(68, 50, 1),
(68, 51, 1),
(68, 52, 1),
(68, 55, 1),
(68, 56, 1),
(68, 57, 1),
(68, 58, 1),
(68, 59, 1),
(68, 60, 1),
(68, 61, 1),
(68, 63, 1),
(68, 64, 1),
(68, 65, 1),
(69, 66, 1),
(69, 78, 1),
(69, 94, 1),
(69, 73, 1),
(69, 87, 1),
(69, 69, 1),
(69, 79, 1),
(69, 80, 1),
(69, 76, 1),
(69, 75, 1),
(69, 88, 1),
(69, 71, 1),
(69, 95, 1),
(69, 93, 1),
(69, 81, 1),
(69, 91, 1),
(69, 74, 1),
(69, 68, 1),
(69, 67, 1),
(69, 108, 1),
(69, 124, 1),
(69, 103, 1),
(69, 117, 1),
(69, 99, 1),
(69, 109, 1),
(69, 110, 1),
(69, 106, 1),
(69, 105, 1),
(69, 118, 1),
(69, 101, 1),
(69, 125, 1),
(69, 123, 1),
(69, 111, 1),
(69, 121, 1),
(69, 104, 1),
(69, 98, 1),
(69, 97, 1),
(69, 1, 1),
(69, 4, 1),
(69, 5, 1),
(69, 6, 1),
(69, 7, 1),
(69, 8, 1),
(69, 9, 1),
(69, 10, 1),
(69, 11, 1),
(69, 12, 1),
(69, 13, 1),
(69, 20, 1),
(69, 21, 1),
(69, 22, 1),
(69, 23, 1),
(69, 24, 1),
(69, 25, 1),
(69, 26, 1),
(69, 27, 1),
(69, 28, 1),
(69, 29, 1),
(69, 30, 1),
(69, 32, 1),
(69, 33, 1),
(69, 34, 1),
(69, 35, 1),
(69, 36, 1),
(69, 37, 1),
(69, 38, 1),
(69, 39, 1),
(69, 40, 1),
(69, 41, 1),
(69, 42, 1),
(69, 43, 1),
(69, 44, 1),
(69, 50, 1),
(69, 51, 1),
(69, 52, 1),
(69, 55, 1),
(69, 56, 1),
(69, 57, 1),
(69, 58, 1),
(69, 59, 1),
(69, 60, 1),
(69, 61, 1),
(69, 63, 1),
(69, 64, 1),
(69, 65, 1),
(72, 78, 1),
(81, 108, 1),
(83, 108, 1),
(86, 78, 1),
(92, 108, 1),
(93, 108, 1),
(93, 124, 1),
(93, 103, 1),
(93, 117, 1),
(93, 99, 1),
(93, 109, 1),
(93, 110, 1),
(93, 106, 1),
(93, 105, 1),
(93, 118, 1),
(93, 101, 1),
(93, 125, 1),
(93, 123, 1),
(93, 111, 1),
(93, 121, 1),
(93, 104, 1),
(93, 98, 1),
(93, 97, 1),
(94, 108, 2),
(94, 124, 2),
(94, 103, 2),
(94, 117, 2),
(94, 99, 2),
(94, 109, 2),
(94, 110, 2),
(94, 106, 2),
(94, 105, 2),
(94, 118, 2),
(94, 101, 2),
(94, 125, 2),
(94, 123, 2),
(94, 111, 2),
(94, 121, 2),
(94, 104, 2),
(94, 98, 2),
(94, 97, 2),
(95, 78, 1),
(95, 94, 1),
(95, 73, 1),
(95, 87, 1),
(95, 69, 1),
(95, 79, 1),
(95, 80, 1),
(95, 76, 1),
(95, 75, 1),
(95, 88, 1),
(95, 71, 1),
(95, 95, 1),
(95, 93, 1),
(95, 81, 1),
(95, 91, 1),
(95, 74, 1),
(95, 68, 1),
(95, 67, 1),
(96, 78, 2),
(96, 94, 2),
(96, 73, 2),
(96, 87, 2),
(96, 69, 2),
(96, 79, 2),
(96, 80, 2),
(96, 76, 2),
(96, 75, 2),
(96, 88, 2),
(96, 71, 2),
(96, 95, 2),
(96, 93, 2),
(96, 81, 2),
(96, 91, 2),
(96, 74, 2),
(96, 68, 2),
(96, 67, 2),
(97, 78, 1),
(98, 78, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT 0,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `likes` mediumint(9) NOT NULL DEFAULT 0,
  `dislikes` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{\"viber\":\"myViber\",\"skype\":\"mySkype\",\"yahoo\":\"myYahoo\"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{\"viber\":\"myViber2\",\"skype\":\"mySkype2\",\"yahoo\":\"myYahoo2\"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `reply_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(39) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `is_processed` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `processed_by` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `processed_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_supporter`
--

CREATE TABLE `nv4_vi_contact_supporter` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `departmentid` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `weight` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC'),
(2, 'Cam kết', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT 0,
  `end_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'CHỢ HẢI SẢN', '<em>Chợ Hải Sản</em>&nbsp;Online chuyên cung cấp hải sản tươi sống các loại cho nhà hàng, quán nhậu, nướng BBQ: nhum biển, bào ngư, tôm mực, cá các loại,...', 'https://laduyen.anvh.info/shop/', '_blank', 'logo.png', 1635613483, 0, 1),
(2, 1, 'CHỢ NÔNG SẢN', '<em>Chợ</em>&nbsp;sỉ nông sản - Kết nối giao thương&#93; Chuyên cung cấp&nbsp;<em>rau củ</em>&nbsp;quả Đà Lạt giá sỉ trên toàn quốc - Cam kết nông sản giá sỉ tốt nhất thị trường cho: siêu thị,&nbsp;...', 'https://laduyen.anvh.info/shops/', '_blank', 'logo.png', 1635613498, 0, 1),
(6, 2, 'Hỗ trợ miễn phí', 'Nếu có bất cứ vấn đề gì cần hỗ trợ, tư vấn về sản phẩm, vui lòng liên lạc với chúng thôi qua số hotline <strong>0934 190 741</strong><br />\nThời gian từ 7:00am - 7pm, từ thứ 2 - thứ 7<br />\nHoặc qua email <strong><em>latacita.coffeepottery@gmail.com</em></strong>', 'icofont-support', '', 'shop.jpg', 1635528461, 0, 1),
(7, 2, 'Miễn phí vận chuyển', '&nbsp;<br />\nMiễn phí vận chuyển trong vòng bán kính 3km.<br />\nKhoảng cách trên 3km trong nội thành chúng tôi hỗ trợ 50% phí vận chuyển, tối đa là 10k.<br />\nVới các đơn hàng ở Tỉnh chúng tôi hỗ trợ 50% phí vận chuyển, tối đa là 15k.', 'icofont-delivery-time', '', 'portal.jpg', 1635528470, 0, 1),
(8, 2, 'Đảm bảo hoàn tiền', 'Với tinh thần đặt quyền lợi của khách hàng là ưu tiên số 1, bảo đảm khách hàng có những trải nghiệm thực phẩm tốt nhất đối với các mặt hàng đã đặt mua tại Lá Duyên. Nếu bạn gặp vấn đề với hàng hoá, xin vui lòng tham khảo hướng dẫn đổi trả hàng và hoàn tiền.', 'icofont-refresh', '', 'portal.jpg', 1635528357, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu'),
(2, 'Mật ong'),
(3, 'Nông sản organic'),
(4, 'Hỗ trợ khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `lev` int(11) NOT NULL DEFAULT 0,
  `subitem` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT 0,
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `image`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(148, 33, 1, 'Nông sản organic', '/index.php?language=vi&nv=shops&amp;op=nong-san-organic', '', '', '', 1, 6, 1, '149,150,151,152', '6', 'shops', 'nong-san-organic', 1, '', 1, 1),
(149, 148, 1, 'Trà hoa', '/index.php?language=vi&nv=shops&amp;op=tra-hoa', '', '', '', 1, 7, 2, '', '6', 'shops', 'tra-hoa', 1, '', 1, 1),
(150, 148, 1, 'Cafe', '/index.php?language=vi&nv=shops&amp;op=cafe', '', '', '', 2, 8, 2, '', '6', 'shops', 'cafe', 1, '', 1, 1),
(151, 148, 1, 'Tiêu', '/index.php?language=vi&nv=shops&amp;op=tieu', '', '', '', 3, 9, 2, '', '6', 'shops', 'tieu', 1, '', 1, 1),
(152, 148, 1, 'Măng', '/index.php?language=vi&nv=shops&amp;op=mang', '', '', '', 4, 10, 2, '', '6', 'shops', 'mang', 1, '', 1, 1),
(153, 33, 1, 'Mật Ong', '/index.php?language=vi&nv=shops&amp;op=mat-ong', '', '', '', 2, 11, 1, '154,155', '6', 'shops', 'mat-ong', 1, '', 1, 1),
(142, 0, 3, 'Cafe', '/index.php?language=vi&nv=shops&op=cafe', '', '', '', 2, 2, 0, '', '6', 'shops', '', 1, '', 0, 1),
(141, 0, 3, 'Trà hoa', '/index.php?language=vi&nv=shops&op=tra-hoa', '', '', '', 1, 1, 0, '', '6', 'shops', '', 1, '', 0, 1),
(33, 0, 1, 'CHỢ NÔNG SẢN', '/index.php?language=vi&nv=shops', '', '', '', 3, 5, 0, '148,153,156', '6', 'shops', '', 1, '', 1, 1),
(26, 24, 1, 'Giới thiệu về NukeViet CMS', '/index.php?language=vi&nv=about&amp;op=gioi-thieu-ve-nukeviet-cms.html', '', '', '', 2, 4, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet-cms.html', 1, '', 1, 1),
(25, 24, 1, 'Giới thiệu về NukeViet', '/index.php?language=vi&nv=about&amp;op=gioi-thieu-ve-nukeviet.html', '', '', '', 1, 3, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet.html', 1, '', 1, 1),
(24, 0, 1, 'Giới thiệu', '/index.php?language=vi&nv=about', '', '', '', 2, 2, 0, '25,26', '6', 'about', '', 1, '', 1, 1),
(23, 0, 1, 'Trang chủ', '/index.php?language=vi&nv=home', '', '', '', 1, 1, 0, '', '6', 'home', '', 1, '', 1, 1),
(154, 153, 1, 'Mật ong Organic', '/index.php?language=vi&nv=shops&amp;op=mat-ong-organic', '', '', '', 1, 12, 2, '', '6', 'shops', 'mat-ong-organic', 1, '', 1, 1),
(155, 153, 1, 'Mật ong rừng', '/index.php?language=vi&nv=shops&amp;op=mat-ong-rung', '', '', '', 2, 13, 2, '', '6', 'shops', 'mat-ong-rung', 1, '', 1, 1),
(156, 33, 1, 'Hoa Tươi', '/index.php?language=vi&nv=shops&amp;op=hoa-tuoi', '', '', '', 3, 14, 1, '157,158,159,160', '6', 'shops', 'hoa-tuoi', 1, '', 1, 1),
(157, 156, 1, 'Hoa Chúc Mừng', '/index.php?language=vi&nv=shops&amp;op=hoa-chuc-mung', '', '', '', 1, 15, 2, '', '6', 'shops', 'hoa-chuc-mung', 1, '', 1, 1),
(158, 156, 1, 'Hoa Cưới', '/index.php?language=vi&nv=shops&amp;op=hoa-cuoi', '', '', '', 2, 16, 2, '', '6', 'shops', 'hoa-cuoi', 1, '', 1, 1),
(159, 156, 1, 'Hoa Sinh Nhật', '/index.php?language=vi&nv=shops&amp;op=hoa-sinh-nhat', '', '', '', 3, 17, 2, '', '6', 'shops', 'hoa-sinh-nhat', 1, '', 1, 1),
(160, 156, 1, 'Hoa Tang Lễ', '/index.php?language=vi&nv=shops&amp;op=Hoa-Tang-Le', '', '', '', 4, 18, 2, '', '6', 'shops', 'Hoa-Tang-Le', 1, '', 1, 1),
(54, 0, 1, 'CHỢ HẢI SẢN', '/index.php?language=vi&nv=shop', '', '', '', 4, 19, 0, '161,165,168', '6', 'shop', '', 1, '', 1, 1),
(170, 168, 1, 'bò khô', '/index.php?language=vi&nv=shop&amp;op=bo-kho', '', '', '', 2, 10, 2, '', '6', 'shop', 'bo-kho', 1, '', 1, 1),
(169, 168, 1, 'cá', '/index.php?language=vi&nv=shop&amp;op=ca', '', '', '', 1, 9, 2, '', '6', 'shop', 'ca', 1, '', 1, 1),
(168, 54, 1, 'Thực phẩm khô', '/index.php?language=vi&nv=shop&amp;op=thuc-pham-kho', '', '', '', 3, 8, 1, '169,170', '6', 'shop', 'thuc-pham-kho', 1, '', 1, 1),
(167, 165, 1, 'Mực', '/index.php?language=vi&nv=shop&amp;op=muc', '', '', '', 2, 7, 2, '', '6', 'shop', 'muc', 1, '', 1, 1),
(166, 165, 1, 'Tôm', '/index.php?language=vi&nv=shop&amp;op=tom', '', '', '', 1, 6, 2, '', '6', 'shop', 'tom', 1, '', 1, 1),
(165, 54, 1, 'Hải sản tươi', '/index.php?language=vi&nv=shop&amp;op=hai-san-tuoi', '', '', '', 2, 5, 1, '166,167', '6', 'shop', 'hai-san-tuoi', 1, '', 1, 1),
(164, 161, 1, 'Thịt bò', '/index.php?language=vi&nv=shop&amp;op=thit-bo', '', '', '', 3, 4, 2, '', '6', 'shop', 'thit-bo', 1, '', 1, 1),
(163, 161, 1, 'Thịt heo', '/index.php?language=vi&nv=shop&amp;op=thit-heo', '', '', '', 2, 3, 2, '', '6', 'shop', 'thit-heo', 1, '', 1, 1),
(161, 54, 1, 'Thịt tươi', '/index.php?language=vi&nv=shop&amp;op=thit-tuoi', '', '', '', 1, 1, 1, '162,163,164', '6', 'shop', 'thit-tuoi', 1, '', 1, 1),
(162, 161, 1, 'Thịt gà', '/index.php?language=vi&nv=shop&amp;op=thit-ga', '', '', '', 1, 2, 2, '', '6', 'shop', 'thit-ga', 1, '', 1, 1),
(75, 0, 1, 'Tin Tức', '/index.php?language=vi&nv=news', '', '', '', 5, 40, 0, '76,80,81,82', '6', 'news', '', 1, '', 1, 1),
(76, 75, 1, 'Tin tức', '/index.php?language=vi&nv=news&amp;op=Tin-tuc', '', '', '', 1, 41, 1, '77,78,79', '6', 'news', 'Tin-tuc', 1, '', 1, 1),
(77, 76, 1, 'Thông cáo báo chí', '/index.php?language=vi&nv=news&amp;op=thong-cao-bao-chi', '', '', '', 1, 42, 2, '', '6', 'news', 'thong-cao-bao-chi', 1, '', 1, 1),
(78, 76, 1, 'Bản tin nội bộ', '/index.php?language=vi&nv=news&amp;op=Ban-tin-noi-bo', '', '', '', 2, 43, 2, '', '6', 'news', 'Ban-tin-noi-bo', 1, '', 1, 1),
(79, 76, 1, 'Tin công nghệ', '/index.php?language=vi&nv=news&amp;op=Tin-cong-nghe', '', '', '', 3, 44, 2, '', '6', 'news', 'Tin-cong-nghe', 1, '', 1, 1),
(80, 75, 1, 'Sản phẩm', '/index.php?language=vi&nv=news&amp;op=San-pham', '', '', '', 2, 45, 1, '', '6', 'news', 'San-pham', 1, '', 1, 1),
(81, 75, 1, 'Đối tác', '/index.php?language=vi&nv=news&amp;op=Doi-tac', '', '', '', 3, 46, 1, '', '6', 'news', 'Doi-tac', 1, '', 1, 1),
(82, 75, 1, 'Tuyển dụng', '/index.php?language=vi&nv=news&amp;op=Tuyen-dung', '', '', '', 4, 47, 1, '', '6', 'news', 'Tuyen-dung', 1, '', 1, 1),
(139, 0, 2, 'Mật ong Organic', '/index.php?language=vi&nv=shops&op=mat-ong-organic', '', '', '', 1, 1, 0, '', '6', 'shops', '', 1, '', 0, 1),
(140, 0, 2, 'Mật ong rừng', '/index.php?language=vi&nv=shops&op=mat-ong-rung', '', '', '', 2, 2, 0, '', '6', 'shops', '', 1, '', 0, 1),
(94, 0, 1, 'Liên hệ', '/index.php?language=vi&nv=contact', '', '', '', 6, 48, 0, '', '6', 'contact', '', 1, '', 1, 1),
(143, 0, 3, 'Tiêu', '/index.php?language=vi&nv=shops&op=tieu', '', '', '', 3, 3, 0, '', '6', 'shops', '', 1, '', 0, 1),
(144, 0, 3, 'Măng', '/index.php?language=vi&nv=shops&op=mang', '', '', '', 4, 4, 0, '', '6', 'shops', '', 1, '', 0, 1),
(145, 0, 4, 'Quỵ định đổi trả', '', '', '', '', 1, 1, 0, '', '6', '0', '', 1, '', 0, 1),
(146, 0, 4, 'Hỗ trợ, tư vấn sản phẩm', '', '', '', '', 2, 2, 0, '', '6', '0', '', 1, '', 0, 1),
(147, 0, 4, 'Chính sách vận chuyển và giao hàng', '', '', '', '', 3, 3, 0, '', '6', '0', '', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `func_site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `in_module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT 0,
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT 1,
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `func_site_title`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', '', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', '', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', '', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', '', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', '', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', '', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', '', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', '', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', '', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', '', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', '', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', '', 'news', 1, 0, 9, ''),
(13, 'author', 'author', 'Author', '', 'news', 1, 0, 10, ''),
(14, 'sitemap', 'sitemap', 'Sitemap', '', 'news', 0, 0, 0, ''),
(15, 'print', 'print', 'Print', '', 'news', 0, 0, 0, ''),
(16, 'rating', 'rating', 'Rating', '', 'news', 0, 0, 0, ''),
(17, 'savefile', 'savefile', 'Savefile', '', 'news', 0, 0, 0, ''),
(18, 'sendmail', 'sendmail', 'Sendmail', '', 'news', 0, 0, 0, ''),
(19, 'instant-rss', 'instant-rss', 'Instant Articles RSS', '', 'news', 0, 0, 0, ''),
(20, 'main', 'main', 'Main', '', 'users', 1, 0, 1, ''),
(21, 'login', 'login', 'Đăng nhập', '', 'users', 1, 1, 2, ''),
(22, 'register', 'register', 'Đăng ký', '', 'users', 1, 1, 3, ''),
(23, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', '', 'users', 1, 1, 4, ''),
(24, 'active', 'active', 'Kích hoạt tài khoản', '', 'users', 1, 0, 5, ''),
(25, 'lostactivelink', 'lostactivelink', 'Lostactivelink', '', 'users', 1, 0, 6, ''),
(26, 'editinfo', 'editinfo', 'Thiết lập tài khoản', '', 'users', 1, 1, 7, ''),
(27, 'memberlist', 'memberlist', 'Danh sách thành viên', '', 'users', 1, 1, 8, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', '', 'users', 1, 1, 9, ''),
(29, 'avatar', 'avatar', 'Avatar', '', 'users', 1, 0, 10, ''),
(30, 'logout', 'logout', 'Thoát', '', 'users', 1, 1, 11, ''),
(31, 'oauth', 'oauth', 'Oauth', '', 'users', 0, 0, 0, ''),
(32, 'main', 'main', 'Main', '', 'contact', 1, 0, 1, ''),
(33, 'main', 'main', 'Main', '', 'statistics', 1, 0, 1, ''),
(34, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', '', 'statistics', 1, 1, 2, ''),
(35, 'allcountries', 'allcountries', 'Theo quốc gia', '', 'statistics', 1, 1, 3, ''),
(36, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', '', 'statistics', 1, 1, 4, ''),
(37, 'allos', 'allos', 'Theo hệ điều hành', '', 'statistics', 1, 1, 5, ''),
(38, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', '', 'statistics', 1, 1, 6, ''),
(39, 'referer', 'referer', 'Đường dẫn đến site theo tháng', '', 'statistics', 1, 0, 7, ''),
(40, 'main', 'main', 'Main', '', 'voting', 1, 0, 1, ''),
(41, 'main', 'main', 'Main', '', 'banners', 1, 0, 1, ''),
(42, 'addads', 'addads', 'Addads', '', 'banners', 1, 0, 2, ''),
(43, 'clientinfo', 'clientinfo', 'Clientinfo', '', 'banners', 1, 0, 3, ''),
(44, 'stats', 'stats', 'Stats', '', 'banners', 1, 0, 4, ''),
(45, 'cledit', 'cledit', 'Cledit', '', 'banners', 0, 0, 0, ''),
(46, 'click', 'click', 'Click', '', 'banners', 0, 0, 0, ''),
(47, 'clinfo', 'clinfo', 'Clinfo', '', 'banners', 0, 0, 0, ''),
(48, 'logininfo', 'logininfo', 'Logininfo', '', 'banners', 0, 0, 0, ''),
(49, 'viewmap', 'viewmap', 'Viewmap', '', 'banners', 0, 0, 0, ''),
(50, 'main', 'main', 'Main', '', 'seek', 1, 0, 1, ''),
(51, 'main', 'main', 'Main', '', 'feeds', 1, 0, 1, ''),
(52, 'main', 'main', 'Main', '', 'page', 1, 0, 1, ''),
(53, 'sitemap', 'sitemap', 'Sitemap', '', 'page', 0, 0, 0, ''),
(54, 'rss', 'rss', 'Rss', '', 'page', 0, 0, 0, ''),
(55, 'main', 'main', 'Main', '', 'comment', 1, 0, 1, ''),
(56, 'post', 'post', 'Post', '', 'comment', 1, 0, 2, ''),
(57, 'like', 'like', 'Like', '', 'comment', 1, 0, 3, ''),
(58, 'delete', 'delete', 'Delete', '', 'comment', 1, 0, 4, ''),
(59, 'down', 'down', 'Down', '', 'comment', 1, 0, 5, ''),
(60, 'main', 'main', 'Main', '', 'siteterms', 1, 0, 1, ''),
(61, 'rss', 'rss', 'Rss', '', 'siteterms', 1, 0, 2, ''),
(62, 'sitemap', 'sitemap', 'Sitemap', '', 'siteterms', 0, 0, 0, ''),
(63, 'main', 'main', 'Main', '', 'two-step-verification', 1, 0, 1, ''),
(64, 'confirm', 'confirm', 'Confirm', '', 'two-step-verification', 1, 0, 2, ''),
(65, 'setup', 'setup', 'Setup', '', 'two-step-verification', 1, 0, 3, ''),
(66, 'main', 'main', 'Main', '', 'home', 1, 0, 1, ''),
(67, 'ajax', 'ajax', 'Ajax', '', 'shops', 1, 0, 18, ''),
(68, 'blockcat', 'blockcat', 'Blockcat', '', 'shops', 1, 0, 17, ''),
(69, 'cart', 'cart', 'Cart', '', 'shops', 1, 0, 5, ''),
(70, 'checkorder', 'checkorder', 'Checkorder', '', 'shops', 0, 0, 0, ''),
(71, 'compare', 'compare', 'Compare', '', 'shops', 1, 0, 11, ''),
(72, 'delhis', 'delhis', 'Delhis', '', 'shops', 0, 0, 0, ''),
(73, 'detail', 'detail', 'Detail', '', 'shops', 1, 0, 3, ''),
(74, 'download', 'download', 'Download', '', 'shops', 1, 0, 16, ''),
(75, 'group', 'group', 'Group', '', 'shops', 1, 0, 9, ''),
(76, 'history', 'history', 'History', '', 'shops', 1, 0, 8, ''),
(77, 'loadcart', 'loadcart', 'Loadcart', '', 'shops', 0, 0, 0, ''),
(78, 'main', 'main', 'Main', '', 'shops', 1, 0, 1, ''),
(79, 'order', 'order', 'Order', '', 'shops', 1, 0, 6, ''),
(80, 'payment', 'payment', 'Payment', '', 'shops', 1, 0, 7, ''),
(81, 'point', 'point', 'Point', '', 'shops', 1, 0, 14, ''),
(82, 'print', 'print', 'Print', '', 'shops', 0, 0, 0, ''),
(83, 'print_pro', 'print_pro', 'Print_pro', '', 'shops', 0, 0, 0, ''),
(84, 'remove', 'remove', 'Remove', '', 'shops', 0, 0, 0, ''),
(85, 'review', 'review', 'Review', '', 'shops', 0, 0, 0, ''),
(86, 'rss', 'rss', 'Rss', '', 'shops', 0, 0, 0, ''),
(87, 'search', 'search', 'Search', '', 'shops', 1, 0, 4, ''),
(88, 'search_result', 'search_result', 'Search_result', '', 'shops', 1, 0, 10, ''),
(89, 'sendmail', 'sendmail', 'Sendmail', '', 'shops', 0, 0, 0, ''),
(90, 'setcart', 'setcart', 'Setcart', '', 'shops', 0, 0, 0, ''),
(91, 'shippingajax', 'shippingajax', 'Shippingajax', '', 'shops', 1, 0, 15, ''),
(92, 'sitemap', 'sitemap', 'Sitemap', '', 'shops', 0, 0, 0, ''),
(93, 'tag', 'tag', 'Tag', '', 'shops', 1, 0, 13, ''),
(94, 'viewcat', 'viewcat', 'Viewcat', '', 'shops', 1, 0, 2, ''),
(95, 'wishlist', 'wishlist', 'Wishlist', '', 'shops', 1, 0, 12, ''),
(96, 'wishlist_update', 'wishlist_update', 'Wishlist_update', '', 'shops', 0, 0, 0, ''),
(97, 'ajax', 'ajax', 'Ajax', '', 'shop', 1, 0, 18, ''),
(98, 'blockcat', 'blockcat', 'Blockcat', '', 'shop', 1, 0, 17, ''),
(99, 'cart', 'cart', 'Cart', '', 'shop', 1, 0, 5, ''),
(100, 'checkorder', 'checkorder', 'Checkorder', '', 'shop', 0, 0, 0, ''),
(101, 'compare', 'compare', 'Compare', '', 'shop', 1, 0, 11, ''),
(102, 'delhis', 'delhis', 'Delhis', '', 'shop', 0, 0, 0, ''),
(103, 'detail', 'detail', 'Detail', '', 'shop', 1, 0, 3, ''),
(104, 'download', 'download', 'Download', '', 'shop', 1, 0, 16, ''),
(105, 'group', 'group', 'Group', '', 'shop', 1, 0, 9, ''),
(106, 'history', 'history', 'History', '', 'shop', 1, 0, 8, ''),
(107, 'loadcart', 'loadcart', 'Loadcart', '', 'shop', 0, 0, 0, ''),
(108, 'main', 'main', 'Main', '', 'shop', 1, 0, 1, ''),
(109, 'order', 'order', 'Order', '', 'shop', 1, 0, 6, ''),
(110, 'payment', 'payment', 'Payment', '', 'shop', 1, 0, 7, ''),
(111, 'point', 'point', 'Point', '', 'shop', 1, 0, 14, ''),
(112, 'print', 'print', 'Print', '', 'shop', 0, 0, 0, ''),
(113, 'print_pro', 'print_pro', 'Print_pro', '', 'shop', 0, 0, 0, ''),
(114, 'remove', 'remove', 'Remove', '', 'shop', 0, 0, 0, ''),
(115, 'review', 'review', 'Review', '', 'shop', 0, 0, 0, ''),
(116, 'rss', 'rss', 'Rss', '', 'shop', 0, 0, 0, ''),
(117, 'search', 'search', 'Search', '', 'shop', 1, 0, 4, ''),
(118, 'search_result', 'search_result', 'Search_result', '', 'shop', 1, 0, 10, ''),
(119, 'sendmail', 'sendmail', 'Sendmail', '', 'shop', 0, 0, 0, ''),
(120, 'setcart', 'setcart', 'Setcart', '', 'shop', 0, 0, 0, ''),
(121, 'shippingajax', 'shippingajax', 'Shippingajax', '', 'shop', 1, 0, 15, ''),
(122, 'sitemap', 'sitemap', 'Sitemap', '', 'shop', 0, 0, 0, ''),
(123, 'tag', 'tag', 'Tag', '', 'shop', 1, 0, 13, ''),
(124, 'viewcat', 'viewcat', 'Viewcat', '', 'shop', 1, 0, 2, ''),
(125, 'wishlist', 'wishlist', 'Wishlist', '', 'shop', 1, 0, 12, ''),
(126, 'wishlist_update', 'wishlist_update', 'Wishlist_update', '', 'shop', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(0, 'main', 'softs'),
(0, 'main', 'web24'),
(1, 'home', 'web24'),
(1, 'left-main-right', 'default'),
(1, 'main', 'mobile_default'),
(1, 'main', 'softs'),
(4, 'home', 'web24'),
(4, 'left-main-right', 'default'),
(4, 'main', 'mobile_default'),
(4, 'main', 'softs'),
(5, 'home', 'web24'),
(5, 'left-main-right', 'default'),
(5, 'main', 'mobile_default'),
(5, 'main', 'softs'),
(6, 'home', 'web24'),
(6, 'left-main-right', 'default'),
(6, 'main', 'mobile_default'),
(6, 'main', 'softs'),
(7, 'home', 'web24'),
(7, 'left-main-right', 'default'),
(7, 'main', 'mobile_default'),
(7, 'main', 'softs'),
(8, 'home', 'web24'),
(8, 'left-main-right', 'default'),
(8, 'main', 'mobile_default'),
(8, 'main', 'softs'),
(9, 'home', 'web24'),
(9, 'left-main-right', 'default'),
(9, 'main', 'mobile_default'),
(9, 'main', 'softs'),
(10, 'home', 'web24'),
(10, 'left-main-right', 'default'),
(10, 'main', 'softs'),
(11, 'home', 'web24'),
(11, 'left-main-right', 'default'),
(11, 'main', 'mobile_default'),
(11, 'main', 'softs'),
(12, 'home', 'web24'),
(12, 'left-main-right', 'default'),
(12, 'main', 'mobile_default'),
(12, 'main', 'softs'),
(13, 'home', 'web24'),
(13, 'left-main-right', 'default'),
(13, 'main', 'mobile_default'),
(13, 'main', 'softs'),
(20, 'home', 'web24'),
(20, 'left-main', 'default'),
(20, 'main', 'mobile_default'),
(20, 'main', 'softs'),
(21, 'home', 'web24'),
(21, 'left-main', 'default'),
(21, 'main', 'mobile_default'),
(21, 'main-login', 'softs'),
(22, 'home', 'web24'),
(22, 'left-main', 'default'),
(22, 'main', 'mobile_default'),
(22, 'main', 'softs'),
(23, 'home', 'web24'),
(23, 'left-main', 'default'),
(23, 'main', 'mobile_default'),
(23, 'main', 'softs'),
(24, 'home', 'web24'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(24, 'main', 'softs'),
(25, 'home', 'web24'),
(25, 'left-main', 'default'),
(25, 'main', 'mobile_default'),
(25, 'main', 'softs'),
(26, 'home', 'web24'),
(26, 'left-main', 'default'),
(26, 'main', 'mobile_default'),
(26, 'main', 'softs'),
(27, 'home', 'web24'),
(27, 'left-main', 'default'),
(27, 'main', 'mobile_default'),
(27, 'main', 'softs'),
(28, 'home', 'web24'),
(28, 'left-main', 'default'),
(28, 'left-main', 'softs'),
(28, 'main', 'mobile_default'),
(29, 'home', 'web24'),
(29, 'left-main', 'default'),
(29, 'main', 'softs'),
(30, 'home', 'web24'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(30, 'main', 'softs'),
(32, 'home', 'web24'),
(32, 'left-main', 'default'),
(32, 'left-main', 'softs'),
(32, 'main', 'mobile_default'),
(33, 'home', 'web24'),
(33, 'left-main', 'default'),
(33, 'left-main', 'softs'),
(33, 'main', 'mobile_default'),
(34, 'home', 'web24'),
(34, 'left-main', 'default'),
(34, 'left-main', 'softs'),
(34, 'main', 'mobile_default'),
(35, 'home', 'web24'),
(35, 'left-main', 'default'),
(35, 'left-main', 'softs'),
(35, 'main', 'mobile_default'),
(36, 'home', 'web24'),
(36, 'left-main', 'default'),
(36, 'left-main', 'softs'),
(36, 'main', 'mobile_default'),
(37, 'home', 'web24'),
(37, 'left-main', 'default'),
(37, 'left-main', 'softs'),
(37, 'main', 'mobile_default'),
(38, 'home', 'web24'),
(38, 'left-main', 'default'),
(38, 'left-main', 'softs'),
(38, 'main', 'mobile_default'),
(39, 'home', 'web24'),
(39, 'left-main', 'default'),
(39, 'left-main', 'softs'),
(39, 'main', 'mobile_default'),
(40, 'home', 'web24'),
(40, 'left-main', 'default'),
(40, 'main', 'mobile_default'),
(40, 'main', 'softs'),
(41, 'home', 'web24'),
(41, 'left-main-right', 'default'),
(41, 'main', 'mobile_default'),
(41, 'main', 'softs'),
(42, 'home', 'web24'),
(42, 'left-main-right', 'default'),
(42, 'main', 'mobile_default'),
(42, 'main', 'softs'),
(43, 'home', 'web24'),
(43, 'left-main-right', 'default'),
(43, 'main', 'mobile_default'),
(43, 'main', 'softs'),
(44, 'home', 'web24'),
(44, 'left-main-right', 'default'),
(44, 'main', 'mobile_default'),
(44, 'main', 'softs'),
(50, 'home', 'web24'),
(50, 'left-main-right', 'default'),
(50, 'main', 'mobile_default'),
(50, 'main', 'softs'),
(51, 'home', 'web24'),
(51, 'left-main-right', 'default'),
(51, 'main', 'mobile_default'),
(51, 'main', 'softs'),
(52, 'home', 'web24'),
(52, 'left-main', 'default'),
(52, 'left-main', 'softs'),
(52, 'main', 'mobile_default'),
(55, 'home', 'web24'),
(55, 'left-main-right', 'default'),
(55, 'main', 'mobile_default'),
(55, 'main', 'softs'),
(56, 'home', 'web24'),
(56, 'left-main-right', 'default'),
(56, 'main', 'mobile_default'),
(56, 'main', 'softs'),
(57, 'home', 'web24'),
(57, 'left-main-right', 'default'),
(57, 'main', 'mobile_default'),
(57, 'main', 'softs'),
(58, 'home', 'web24'),
(58, 'left-main-right', 'default'),
(58, 'main', 'mobile_default'),
(58, 'main', 'softs'),
(59, 'home', 'web24'),
(59, 'main', 'softs'),
(60, 'home', 'web24'),
(60, 'left-main-right', 'default'),
(60, 'main', 'mobile_default'),
(60, 'main', 'softs'),
(61, 'home', 'web24'),
(61, 'left-main-right', 'default'),
(61, 'main', 'mobile_default'),
(61, 'main', 'softs'),
(63, 'home', 'web24'),
(63, 'left-main-right', 'default'),
(63, 'main', 'mobile_default'),
(63, 'main', 'softs'),
(64, 'home', 'web24'),
(64, 'left-main-right', 'default'),
(64, 'main', 'mobile_default'),
(64, 'main', 'softs'),
(65, 'home', 'web24'),
(65, 'left-main-right', 'default'),
(65, 'main', 'mobile_default'),
(65, 'main', 'softs'),
(66, 'home', 'web24'),
(66, 'left-main-right', 'default'),
(66, 'main', 'mobile_default'),
(66, 'main', 'softs'),
(67, 'home', 'web24'),
(67, 'left-main-right', 'default'),
(67, 'main', 'mobile_default'),
(67, 'main', 'softs'),
(68, 'home', 'web24'),
(68, 'left-main-right', 'default'),
(68, 'main', 'mobile_default'),
(68, 'main', 'softs'),
(69, 'home', 'web24'),
(69, 'left-main-right', 'default'),
(69, 'main', 'mobile_default'),
(69, 'main', 'softs'),
(70, 'main', 'web24'),
(71, 'home', 'web24'),
(71, 'left-main-right', 'default'),
(71, 'main', 'mobile_default'),
(71, 'main', 'softs'),
(72, 'main', 'web24'),
(73, 'left-main-right', 'default'),
(73, 'main', 'mobile_default'),
(73, 'main', 'softs'),
(73, 'main', 'web24'),
(74, 'home', 'web24'),
(74, 'left-main-right', 'default'),
(74, 'main', 'mobile_default'),
(74, 'main', 'softs'),
(75, 'home', 'web24'),
(75, 'left-main-right', 'default'),
(75, 'main', 'mobile_default'),
(75, 'main', 'softs'),
(76, 'home', 'web24'),
(76, 'left-main-right', 'default'),
(76, 'main', 'mobile_default'),
(76, 'main', 'softs'),
(77, 'main', 'web24'),
(78, 'home-shop-1', 'web24'),
(78, 'left-main-right', 'default'),
(78, 'main', 'mobile_default'),
(78, 'main', 'softs'),
(79, 'home', 'web24'),
(79, 'left-main-right', 'default'),
(79, 'main', 'mobile_default'),
(79, 'main', 'softs'),
(80, 'home', 'web24'),
(80, 'left-main-right', 'default'),
(80, 'main', 'mobile_default'),
(80, 'main', 'softs'),
(81, 'home', 'web24'),
(81, 'left-main-right', 'default'),
(81, 'main', 'mobile_default'),
(81, 'main', 'softs'),
(82, 'main', 'web24'),
(83, 'main', 'web24'),
(84, 'main', 'web24'),
(85, 'main', 'web24'),
(86, 'main', 'web24'),
(87, 'home', 'web24'),
(87, 'left-main-right', 'default'),
(87, 'main', 'mobile_default'),
(87, 'main', 'softs'),
(88, 'home', 'web24'),
(88, 'left-main-right', 'default'),
(88, 'main', 'mobile_default'),
(88, 'main', 'softs'),
(89, 'main', 'web24'),
(90, 'main', 'web24'),
(91, 'home', 'web24'),
(91, 'left-main-right', 'default'),
(91, 'main', 'mobile_default'),
(91, 'main', 'softs'),
(92, 'main', 'web24'),
(93, 'home', 'web24'),
(93, 'left-main-right', 'default'),
(93, 'main', 'mobile_default'),
(93, 'main', 'softs'),
(94, 'default-shop-2', 'web24'),
(94, 'left-main-right', 'default'),
(94, 'main', 'mobile_default'),
(94, 'main', 'softs'),
(95, 'home', 'web24'),
(95, 'left-main-right', 'default'),
(95, 'main', 'mobile_default'),
(95, 'main', 'softs'),
(96, 'main', 'web24'),
(97, 'home', 'web24'),
(97, 'left-main-right', 'default'),
(97, 'main', 'mobile_default'),
(97, 'main', 'softs'),
(98, 'home', 'web24'),
(98, 'left-main-right', 'default'),
(98, 'main', 'mobile_default'),
(98, 'main', 'softs'),
(99, 'home', 'web24'),
(99, 'left-main-right', 'default'),
(99, 'main', 'mobile_default'),
(99, 'main', 'softs'),
(100, 'main', 'web24'),
(101, 'home', 'web24'),
(101, 'left-main-right', 'default'),
(101, 'main', 'mobile_default'),
(101, 'main', 'softs'),
(102, 'main', 'web24'),
(103, 'left-main-right', 'default'),
(103, 'main', 'mobile_default'),
(103, 'main', 'softs'),
(103, 'main', 'web24'),
(104, 'home', 'web24'),
(104, 'left-main-right', 'default'),
(104, 'main', 'mobile_default'),
(104, 'main', 'softs'),
(105, 'home', 'web24'),
(105, 'left-main-right', 'default'),
(105, 'main', 'mobile_default'),
(105, 'main', 'softs'),
(106, 'home', 'web24'),
(106, 'left-main-right', 'default'),
(106, 'main', 'mobile_default'),
(106, 'main', 'softs'),
(107, 'main', 'web24'),
(108, 'home-shop-2', 'web24'),
(108, 'left-main-right', 'default'),
(108, 'main', 'mobile_default'),
(108, 'main', 'softs'),
(109, 'home', 'web24'),
(109, 'left-main-right', 'default'),
(109, 'main', 'mobile_default'),
(109, 'main', 'softs'),
(110, 'home', 'web24'),
(110, 'left-main-right', 'default'),
(110, 'main', 'mobile_default'),
(110, 'main', 'softs'),
(111, 'home', 'web24'),
(111, 'left-main-right', 'default'),
(111, 'main', 'mobile_default'),
(111, 'main', 'softs'),
(112, 'main', 'web24'),
(113, 'main', 'web24'),
(114, 'main', 'web24'),
(115, 'main', 'web24'),
(116, 'main', 'web24'),
(117, 'home', 'web24'),
(117, 'left-main-right', 'default'),
(117, 'main', 'mobile_default'),
(117, 'main', 'softs'),
(118, 'home', 'web24'),
(118, 'left-main-right', 'default'),
(118, 'main', 'mobile_default'),
(118, 'main', 'softs'),
(119, 'main', 'web24'),
(120, 'main', 'web24'),
(121, 'home', 'web24'),
(121, 'left-main-right', 'default'),
(121, 'main', 'mobile_default'),
(121, 'main', 'softs'),
(122, 'main', 'web24'),
(123, 'home', 'web24'),
(123, 'left-main-right', 'default'),
(123, 'main', 'mobile_default'),
(123, 'main', 'softs'),
(124, 'default-shop-2', 'web24'),
(124, 'left-main-right', 'default'),
(124, 'main', 'mobile_default'),
(124, 'main', 'softs'),
(125, 'home', 'web24'),
(125, 'left-main-right', 'default'),
(125, 'main', 'mobile_default'),
(125, 'main', 'softs'),
(126, 'main', 'web24');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_theme` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT 1,
  `sitemap` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `module_theme`, `custom_title`, `site_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `sitemap`) VALUES
('about', 'page', 'about', 'about', 'page', 'Giới thiệu', '', '', 1635516608, 1, 1, '', '', '', '', '6', 4, 1, '', 1, 1),
('news', 'news', 'news', 'news', 'news', 'Tin Tức', '', '', 1635516608, 1, 1, '', '', '', '', '6', 5, 1, '', 1, 1),
('users', 'users', 'users', 'users', 'users', 'Thành viên', '', 'Tài khoản', 1635516608, 1, 1, '', '', '', '', '6', 6, 1, '', 0, 1),
('contact', 'contact', 'contact', 'contact', 'contact', 'Liên hệ', '', '', 1635516608, 1, 1, '', '', '', '', '6', 7, 1, '', 0, 1),
('statistics', 'statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', '', 1635516608, 1, 1, '', '', '', 'online, statistics', '6', 8, 1, '', 0, 1),
('voting', 'voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', '', 1635516608, 1, 1, '', '', '', '', '6', 9, 1, '', 1, 1),
('banners', 'banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', '', 1635516608, 1, 1, '', '', '', '', '6', 10, 1, '', 0, 1),
('seek', 'seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', '', 1635516608, 1, 0, '', '', '', '', '6', 11, 1, '', 0, 1),
('menu', 'menu', 'menu', 'menu', 'menu', 'Menu Site', '', '', 1635516608, 0, 1, '', '', '', '', '6', 12, 1, '', 0, 1),
('feeds', 'feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', '', '', 1635516608, 1, 1, '', '', '', '', '6', 13, 1, '', 0, 1),
('page', 'page', 'page', 'page', 'page', 'Page', '', '', 1635516608, 1, 1, '', '', '', '', '6', 14, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'comment', 'Bình luận', '', 'Quản lý bình luận', 1635516608, 0, 1, '', '', '', '', '6', 15, 1, '', 0, 1),
('siteterms', 'page', 'siteterms', 'siteterms', 'page', 'Điều khoản sử dụng', '', '', 1635516608, 1, 1, '', '', '', '', '6', 16, 1, '', 1, 1),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', '', 1635516608, 0, 1, '', '', '', '', '6', 17, 1, '', 0, 1),
('two-step-verification', 'two-step-verification', 'two_step_verification', 'two_step_verification', 'two-step-verification', 'Xác thực hai bước', '', '', 1635516608, 1, 0, '', '', '', '', '6', 18, 1, '', 0, 1),
('home', 'home', 'home', 'home', 'home', 'Trang chủ', '', '', 1635518522, 1, 0, '', '', '', '', '6', 1, 1, '', 0, 0),
('shops', 'shops', 'shops', 'shops', 'shops', 'Chợ Nông Sản', '', '', 1635518736, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 1),
('shop', 'shops', 'shop', 'shop', 'shops', 'Chợ Hải Sản', '', '', 1635519691, 1, 1, '', '', '', '', '6', 3, 1, '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(13, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 0, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 5, 0, 0, 0, 0, '', 0),
(14, 2, '2', 0, 1, 'VINADES', 5, 1501837620, 1635527985, 1, 1, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'img-c2.png', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(15, 2, '2', 0, 1, 'VINADES', 5, 1510215907, 1635527973, 1, 2, 1510215900, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'img-c1.png', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_3`
--

CREATE TABLE `nv4_vi_news_3` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_4`
--

CREATE TABLE `nv4_vi_news_4` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_5`
--

CREATE TABLE `nv4_vi_news_5` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_6`
--

CREATE TABLE `nv4_vi_news_6` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_7`
--

CREATE TABLE `nv4_vi_news_7` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `catid` smallint(5) NOT NULL DEFAULT 0,
  `admin` tinyint(4) NOT NULL DEFAULT 0,
  `add_content` tinyint(4) NOT NULL DEFAULT 0,
  `pub_content` tinyint(4) NOT NULL DEFAULT 0,
  `edit_content` tinyint(4) NOT NULL DEFAULT 0,
  `del_content` tinyint(4) NOT NULL DEFAULT 0,
  `app_content` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_author`
--

CREATE TABLE `nv4_vi_news_author` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `uid` int(11) UNSIGNED NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pseudonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `numnews` mediumint(8) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_author`
--

INSERT INTO `nv4_vi_news_author` (`id`, `uid`, `alias`, `pseudonym`, `image`, `description`, `add_time`, `edit_time`, `active`, `numnews`) VALUES
(1, 1, 'anvh-ceo', 'anvh.ceo', '', '', 1635611087, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_authorlist`
--

CREATE TABLE `nv4_vi_news_authorlist` (
  `id` int(11) NOT NULL,
  `aid` mediumint(8) NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pseudonym` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 14, 2),
(1, 13, 1),
(1, 15, 3),
(2, 15, 3),
(2, 14, 2),
(2, 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT 0,
  `numbers` smallint(5) NOT NULL DEFAULT 10,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT 0,
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `sort` smallint(5) NOT NULL DEFAULT 0,
  `lev` smallint(5) NOT NULL DEFAULT 0,
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT 0,
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT 3,
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT 2,
  `featured` int(11) NOT NULL DEFAULT 0,
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` smallint(4) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`, `status`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '5,6,7', 4, 2, 0, '', '', '', 1274986690, 1274986690, '6', 1),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274986705, 1274986705, '6', 1),
(3, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987460, 1274987460, '6', 1),
(4, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987538, 1274987538, '6', 1),
(5, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987105, 1274987244, '6', 1),
(6, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987212, 1274987212, '6', 1),
(7, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 4, 2, 0, '', '', '', 1274987902, 1274987902, '6', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

INSERT INTO `nv4_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `titlesite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `files` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT 1,
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_send` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_print` tinyint(1) NOT NULL DEFAULT 0,
  `allowed_save` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `titlesite`, `description`, `bodyhtml`, `keywords`, `sourcetext`, `files`, `imgposition`, `layout_func`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`) VALUES
(13, '', '', '<p dir=\"ltr\">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style=\"line-height: 1.6;\"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style=\"line-height: 1.6;\">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href=\"http://www.php-fig.org/psr/\">http://www.php-fig.org/psr/</a></p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FTP, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir=\"ltr\">			<p dir=\"ltr\">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\">Cho phép đổi đường dẫn module</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir=\"ltr\">			<p dir=\"ltr\">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style=\"line-height: 1.6;\">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir=\"ltr\" style=\"margin-left: 40px;\"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style=\"line-height: 1.6;\">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir=\"ltr\"><strong>Các thay đổi của module:</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Module menu:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Module about:</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm RSS</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir=\"ltr\">	<p dir=\"ltr\"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Bổ sung các trạng thái bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir=\"ltr\">		<p dir=\"ltr\">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir=\"ltr\"><strong>Quản lý Bình luận</strong></p><ul>	<li dir=\"ltr\">	<p dir=\"ltr\">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir=\"ltr\">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', '', NULL, 2, '', 0, 1, 1, 1),
(14, '', '', '<strong>Hệ thống:</strong><br />\r\n- Sửa code theo khuyến nghị của codacy: https://www.codacy.com/app/nukeviet/nukeviet/dashboard<br />\r\n- Cải thiện an ninh hệ thống theo đánh giá của các phần mềm bảo mật OWASP ZAP 2.6<br />\r\n- Cải tiến chức năng Rewrite<br />\r\n- Thêm tính năng bật tắt sitemap cho các module<br />\r\n- Thêm link hướng dẫn sử dụng website dẫn tới từng chức năng tại https://wiki.nukeviet.vn/<br />\r\n- Cập nhật trình soạn thảo&nbsp; CKEditor 4.7.1 để hỗ trợ việc copy nội dung từ Word, Excel, Hỗ trợ việc kéo thả ảnh, file từ máy tính vào trình soạn thảo tốt hơn: http://ckeditor.com/blog/CKEditor-4.7-released<br />\r\n- Tích hợp thêm <a href=\"\\\">Redis để cache</a> cho hệ thống<br />\r\n<br />\r\n<strong>Module Tài khoản:</strong><br />\r\n- Tùy biến các trường hệ thống của module users giúp quản trị có thể cho ẩn/hiện khi đăng ký và đổi tên các trường này.<br />\r\n- Thêm chức năng&nbsp; xác thực hai bước cho từng nhóm thành viên, Cấu hình yêu cầu xác thực hai bước cho từng nhóm thành viên.<br />\r\n- Tích hợp reCAPTCHA<br />\r\n<br />\r\n<strong>Module Tin tức:</strong><br />\r\n- Thêm cấu hình có bật tính năng copy bài viết, để dùng module này đăng cái bài viết có cạc trình bày tương tự nhau.<br />\r\n- Cải thiện tính năng cho bài viết Facebook Instant Articles<br />\r\n- Cảnh báo tránh cùng&nbsp; một lúc nhiều người sửa bài viết.<br />\r\n<br />\r\n<strong>Module banners</strong><br />\r\n- Bỏ phần quản lý khách hàng tại quảng cáo, chuyển sang dùng tài khoản chung của site<br />\r\n- Phần cấu hình khối quảng cáo được viết lại để cấu hình nhóm&nbsp; thành viên được đăng quảng cáo ngoài site, sau đó quản trị duyệt lại quảng cáo để hiển thị ngoài site.<br />\r\n- Thêm cấu hình về thời gian chung áp dụng cho quảng cáo theo khối.<br />\r\n- Sửa lại link quản cáo để tránh các click ảo.<br />\r\n- Sửa hiển thị quản lý quảng cáo để tiện quản lý hơn.<br />\r\n<br />\r\nVà nhiều cập nhật sửa lỗi khác, xem chi tiết tại: https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-2-co-gi-moi-505.html', '', 2, '', 0, 1, 1, 1),
(15, '', '', '<strong>Hệ thống:</strong><br />\r\n- Thay đổi phần quản lý block để dễ dùng hơn khi module có quá nhiều chức năng.<br />\r\n- Thêm các tham số cấu hình&nbsp; SSL cho&nbsp; SMTP<br />\r\n- Module Upload: Thêm cấu hình có thể chia nhỏ các file khi upload để có thể upload<br />\r\n- Plugin:Thêm vị trí chạy sau khi thực hiện module, cải tiến mỗi Plugin sẽ chạy được ở các vị trí nhất định theo người lập trình quy định.<br />\r\n- Tích hợp thêm thư viện PDF.js<br />\r\n- Thêm tính năng xuất dữ liệu mẫu để khi tiết hành cài đặt có thể dựng luôn site hoàn chỉnh tường tự như cài đặt NukeViet eGovernment<br />\r\n<br />\r\n<strong>Module comment: </strong><br />\r\n- Cho phép cấu hình có sử dụng trình soạn thảo ở phần bình luận hay không.<br />\r\n- Cho phép cấu hình có sử dụng file đính kèm ở phần bình luận hay không.<br />\r\n- Module news: Allow deactive category, allow search for locked posts, Allows attaching files to posts<br />\r\n- Config module display on admin index for authors<br />\r\n&nbsp;<br />\r\n<strong>Module Tài khoản:</strong><br />\r\n- Module users: Allowed to delete and change status multiple account, fix block login, update Openid icon, fix sort groups, fix delete group<br />\r\n- Người điều hành chung của site có thể cấu hình 1 số thông số. (Lúc trước chỉ quản trị tối cao mới cấu hình được)<br />\r\n- Với mỗi tài khoản quản trị, có thể chọn module mặc định sau khi đăng nhập quản trị.<br />\r\n<br />\r\n<strong>Module Tin tức:</strong><br />\r\n-&nbsp; Thay đổi chức năng quản lý chủ đề có thể: Hiển thị trên trang chủ, không hiển thị trên trang chủ hoặc Khóa chủ đề.<br />\r\n-&nbsp; Cho phép đính kèm file vào các bài viết (Không cần thông qua trình soạn thảo)<br />\r\n- Thêm tính năng sắp xếp các bài viết.<br />\r\n- Cho phép cấu hình layout khi xem chi tiết bài viết (Tưong tự module page đã có trước)<br />\r\n<br />\r\n<strong>Module page</strong><br />\r\n-&nbsp; Thêm cấu hình alias lower khi thêm bài viết mới.<br />\r\n<br />\r\nVà nhiều cập nhật sửa lỗi khác, xem chi tiết tại: <a href=\"https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt\">https://github.com/nukeviet/nukeviet/blob/develop/CHANGELOG.txt</a>', '', 'https://nukeviet.vn/vi/news/Tin-tuc/nukeviet-4-3-co-gi-moi-540.html', '', 2, '', 0, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT 0,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT 0,
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT 0,
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `external_link` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `total_rating` int(11) NOT NULL DEFAULT 0,
  `click_rating` int(11) NOT NULL DEFAULT 0,
  `instant_active` tinyint(1) NOT NULL DEFAULT 0,
  `instant_template` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `instant_creatauto` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `weight`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `external_link`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`, `instant_active`, `instant_template`, `instant_creatauto`) VALUES
(13, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 0, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 0, 5, 0, 0, 0, 0, '', 0),
(14, 2, '2', 0, 1, 'VINADES', 5, 1501837620, 1635527985, 1, 1, 1501837620, 0, 2, 'NukeViet 4.2 có gì mới?', 'nukeviet-4-2-co-gi-moi', 'NukeViet 4.2 là phiên bản nâng cấp của phiên bản NukeViet 4.0 tập trung vào việc fix các vấn đề bất cập còn tồn tại của NukeViet 4.0, Thêm các tính năng mới để tăng cường bảo mật của hệ thống cũng như tối ưu trải nghiệm của người dùng.', 'img-c2.png', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0),
(15, 2, '2', 0, 1, 'VINADES', 5, 1510215907, 1635527973, 1, 2, 1510215900, 0, 2, 'NukeViet 4.3 có gì mới?', 'nukeviet-4-3-co-gi-moi', 'NukeViet 4.3 là phiên bản nâng cấp của phiên bản NukeViet 4.2 tập trung vào việc fix các vấn đề bất cập còn tồn tại, tối ưu trải nghiệm của người dùng.', 'img-c1.png', '', 1, 1, '4', 1, 1, 2, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676),
(5, 'nukeviet.vn', 'https://nukeviet.vn', '', 5, 1635527973, 1635527973);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT 0,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `title`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, '', 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, '', 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, '', 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, '', 'việt-nam', '', '', 'việt nam'),
(5, 0, '', 'hoạt-động', '', '', 'hoạt động'),
(6, 0, '', 'tin-tức', '', '', 'tin tức'),
(7, 0, '', 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, '', 'điện-tử', '', '', 'điện tử'),
(9, 2, '', 'nukeviet', '', '', 'nukeviet'),
(10, 2, '', 'vinades', '', '', 'vinades'),
(11, 0, '', 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 0, '', 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 1, '', 'php', '', '', 'php'),
(14, 1, '', 'mysql', '', '', 'mysql'),
(15, 0, '', 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 1, '', 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 1, '', 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, '', 'mail', '', '', 'mail'),
(19, 1, '', 'fpt', '', '', 'fpt'),
(20, 1, '', 'smtp', '', '', 'smtp'),
(21, 1, '', 'bootstrap', '', '', 'bootstrap'),
(22, 1, '', 'block', '', '', 'block'),
(23, 1, '', 'modules', '', '', 'modules'),
(24, 0, '', 'banner', '', '', 'banner'),
(25, 0, '', 'liên-kết', '', '', 'liên kết'),
(26, 1, '', 'hosting', '', '', 'hosting'),
(27, 0, '', 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 0, '', 'hợp-tác', '', '', 'hợp tác'),
(29, 1, '', 'tốc-độ', '', '', 'tốc độ'),
(30, 1, '', 'website', '', '', 'website'),
(31, 1, '', 'bảo-mật', '', '', 'bảo mật'),
(32, 0, '', 'giáo-dục', '', '', 'giáo dục'),
(33, 0, '', 'edu-gate', '', '', 'edu gate'),
(34, 0, '', 'lập-trình', '', '', 'lập trình'),
(35, 0, '', 'logo', '', '', 'logo'),
(36, 0, '', 'code', '', '', 'code'),
(37, 0, '', 'thực-tập', '', '', 'thực tập'),
(38, 0, '', 'kinh-doanh', '', '', 'kinh doanh'),
(39, 0, '', 'nhân-viên', '', '', 'nhân viên'),
(40, 0, '', 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 0, '', 'module', '', '', 'module'),
(42, 0, '', 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(13, 17, 'nukeviet4'),
(13, 9, 'nukeviet'),
(13, 10, 'vinades'),
(13, 13, 'php'),
(13, 14, 'mysql'),
(13, 18, 'mail'),
(13, 19, 'fpt'),
(13, 20, 'smtp'),
(13, 21, 'bootstrap'),
(13, 22, 'block'),
(13, 23, 'modules'),
(13, 16, 'mã nguồn mở');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tmp`
--

CREATE TABLE `nv4_vi_news_tmp` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `time_edit` int(11) NOT NULL,
  `time_late` int(11) NOT NULL,
  `ip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tmp`
--

INSERT INTO `nv4_vi_news_tmp` (`id`, `admin_id`, `time_edit`, `time_late`, `ip`) VALUES
(15, 1, 1635611065, 1635612011, '115.76.51.13');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page`
--

INSERT INTO `nv4_vi_page` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Giới thiệu', 'gioi-thieu', 'about.png', '', 0, 'Lá Duyên là một mô hình &quot;FROM FARM TO TABLE&quot; - Từ nông trại đến bàn ăn theo một quy trình lựa chọn và chế biến kỹ lưỡng. Chúng tôi cam kết 100% sản phẩm Lá Duyên đều có nguồn ngốc sạch từ thiên nhiên ', 'Cà phê là một trong những nét ẩm thực tinh tuý của Việt Nam. Nếu bạn là người mê cà phê phin, đừng bỏ lỡ &quot;Cà phê rang củi&quot; do chính tay mẹ nhà La Tacita làm. Nếu mê cà phê pha máy, nhớ tìm cà phê rang mộc Blend của La Tacita từ nhà Lá Duyên nhé', '', 1, '4', '', 1, 1, 1635641464, 1635641464, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `month01` int(11) NOT NULL DEFAULT 0,
  `month02` int(11) NOT NULL DEFAULT 0,
  `month03` int(11) NOT NULL DEFAULT 0,
  `month04` int(11) NOT NULL DEFAULT 0,
  `month05` int(11) NOT NULL DEFAULT 0,
  `month06` int(11) NOT NULL DEFAULT 0,
  `month07` int(11) NOT NULL DEFAULT 0,
  `month08` int(11) NOT NULL DEFAULT 0,
  `month09` int(11) NOT NULL DEFAULT 0,
  `month10` int(11) NOT NULL DEFAULT 0,
  `month11` int(11) NOT NULL DEFAULT 0,
  `month12` int(11) NOT NULL DEFAULT 0,
  `last_update` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_referer_stats`
--

INSERT INTO `nv4_vi_referer_stats` (`host`, `total`, `month01`, `month02`, `month03`, `month04`, `month05`, `month06`, `month07`, `month08`, `month09`, `month10`, `month11`, `month12`, `last_update`) VALUES
('', 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1635521280);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT 0,
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `socialbutton` tinyint(4) NOT NULL DEFAULT 0,
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `add_time` int(11) NOT NULL DEFAULT 0,
  `edit_time` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `hot_post` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`, `hitstotal`, `hot_post`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Thu thập thông tin</a><br /> <a href=\"#2\">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href=\"#3\">Điều 3: Sử dụng thông tin </a><br /> <a href=\"#4\">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href=\"#5\">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href=\"#6\">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2><a id=\"1\" name=\"1\"></a>Điều 1: Thu thập thông tin</h2>  <h3>1.1. Thu thập tự động:</h3>  <div>Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3>1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div>Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3>1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p>Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p>Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3>1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p>Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"2\" name=\"2\"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div>Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử lý thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href=\"/users/lostpass/\">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>  <h2><a id=\"3\" name=\"3\"></a>Điều 3: Sử dụng thông tin</h2>  <p>Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div>- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div>- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div>- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div>- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div>- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div>- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div>- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"4\" name=\"4\"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div>Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p>Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p>Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <p style=\"text-align: right;\">Chính sách bảo mật mặc định này được xây dựng cho <a href=\"http://nukeviet.vn\" target=\"_blank\">NukeViet CMS</a>, được tham khảo từ website <a href=\"http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/\">webnhanh.vn</a></p>', '', 0, '4', '', 1, 1, 1635516608, 1635516608, 1, 0, 0),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div>Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href=\"/contact/\">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href=\"/siteterms/terms-and-conditions.html\">Điều khoản và điều kiện</a> sử dụng cũng như <a href=\"/siteterms/privacy.html\">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id=\"index\" name=\"index\"></a>Danh mục</strong><br /> <a href=\"#1\">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href=\"#2\">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href=\"#3\">Điều 3: Sử dụng thương hiệu</a><br /> <a href=\"#4\">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href=\"#5\">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href=\"#6\">Điều 6: Từ chối bảo đảm</a><br /> <a href=\"#7\">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href=\"#8\">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2><a id=\"1\" name=\"1\"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p>- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href=\"http://www.gnu.org/licenses/old-licenses/gpl-2.0.html\" target=\"_blank\">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href=\"http://www.nukeviet.vn\" target=\"_blank\">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href=\"http://edu.nukeviet.vn\" target=\"_blank\">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href=\"http://nukeviet.vn\" target=\"_blank\">http://nukeviet.vn</a>.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"2\" name=\"2\"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p>- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"3\" name=\"3\"></a>Sử dụng thương hiệu</h2>  <p>- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"4\" name=\"4\"></a>Các hành vi bị nghiêm cấm</h2>  <p>Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"5\" name=\"5\"></a>Các đường liên kết đến các website khác</h2>  <p>- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"6\" name=\"6\"></a>Từ chối bảo đảm</h2>  <p>NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"7\" name=\"7\"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p>- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p>  <h2><a id=\"8\" name=\"8\"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div>Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style=\"text-align: right;\"><a href=\"#index\">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 2, 1, 1635516608, 1635516608, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5'),
('copy_page', '0'),
('alias_lower', '1'),
('socialbutton', 'facebook,twitter');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT 1,
  `active_captcha` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `vote_one` tinyint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0 cho phép vote nhiều lần 1 cho phép vote 1 lần'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `active_captcha`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`, `vote_one`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 0, 1, '6', 1635516608, 0, 1, 0),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 0, 1, '6', 1635516608, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_voted`
--

CREATE TABLE `nv4_vi_voting_voted` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `voted` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_api_credential`
--
ALTER TABLE `nv4_authors_api_credential`
  ADD UNIQUE KEY `credential_ident` (`credential_ident`),
  ADD UNIQUE KEY `credential_secret` (`credential_secret`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `nv4_authors_api_role`
--
ALTER TABLE `nv4_authors_api_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`,`oauth_server`,`oauth_uid`),
  ADD KEY `oauth_email` (`oauth_email`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`,`type`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`,`langtype`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_to` (`send_to`),
  ADD KEY `admin_view_allowed` (`admin_view_allowed`),
  ADD KEY `logic_mode` (`logic_mode`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_shops_block`
--
ALTER TABLE `nv4_shops_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_location`
--
ALTER TABLE `nv4_shops_carrier_config_location`
  ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Indexes for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_product`
--
ALTER TABLE `nv4_shops_coupons_product`
  ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Indexes for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
  ADD PRIMARY KEY (`did`),
  ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Indexes for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_files_rows`
--
ALTER TABLE `nv4_shops_files_rows`
  ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Indexes for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_group_cateid`
--
ALTER TABLE `nv4_shops_group_cateid`
  ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Indexes for table `nv4_shops_group_items`
--
ALTER TABLE `nv4_shops_group_items`
  ADD PRIMARY KEY (`pro_id`,`group_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_shops_group_quantity`
--
ALTER TABLE `nv4_shops_group_quantity`
  ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Indexes for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_money_vi`
--
ALTER TABLE `nv4_shops_money_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_time` (`order_time`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Indexes for table `nv4_shops_orders_id_group`
--
ALTER TABLE `nv4_shops_orders_id_group`
  ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Indexes for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_time` (`add_time`);

--
-- Indexes for table `nv4_shops_point`
--
ALTER TABLE `nv4_shops_point`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `listcatid` (`listcatid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_shops_carrier`
--
ALTER TABLE `nv4_shops_shops_carrier`
  ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Indexes for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_tags_id_vi`
--
ALTER TABLE `nv4_shops_tags_id_vi`
  ADD UNIQUE KEY `sid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `wid` (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logid` (`logid`);

--
-- Indexes for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shop_block`
--
ALTER TABLE `nv4_shop_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_shop_block_cat`
--
ALTER TABLE `nv4_shop_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv4_shop_carrier`
--
ALTER TABLE `nv4_shop_carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_carrier_config`
--
ALTER TABLE `nv4_shop_carrier_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_carrier_config_items`
--
ALTER TABLE `nv4_shop_carrier_config_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_carrier_config_location`
--
ALTER TABLE `nv4_shop_carrier_config_location`
  ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Indexes for table `nv4_shop_catalogs`
--
ALTER TABLE `nv4_shop_catalogs`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shop_coupons`
--
ALTER TABLE `nv4_shop_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_coupons_history`
--
ALTER TABLE `nv4_shop_coupons_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_coupons_product`
--
ALTER TABLE `nv4_shop_coupons_product`
  ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Indexes for table `nv4_shop_discounts`
--
ALTER TABLE `nv4_shop_discounts`
  ADD PRIMARY KEY (`did`),
  ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Indexes for table `nv4_shop_field`
--
ALTER TABLE `nv4_shop_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_shop_field_value_vi`
--
ALTER TABLE `nv4_shop_field_value_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_shop_files`
--
ALTER TABLE `nv4_shop_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_files_rows`
--
ALTER TABLE `nv4_shop_files_rows`
  ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Indexes for table `nv4_shop_group`
--
ALTER TABLE `nv4_shop_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shop_group_cateid`
--
ALTER TABLE `nv4_shop_group_cateid`
  ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Indexes for table `nv4_shop_group_items`
--
ALTER TABLE `nv4_shop_group_items`
  ADD PRIMARY KEY (`pro_id`,`group_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_shop_group_quantity`
--
ALTER TABLE `nv4_shop_group_quantity`
  ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Indexes for table `nv4_shop_location`
--
ALTER TABLE `nv4_shop_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shop_money_vi`
--
ALTER TABLE `nv4_shop_money_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shop_orders`
--
ALTER TABLE `nv4_shop_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_time` (`order_time`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv4_shop_orders_id`
--
ALTER TABLE `nv4_shop_orders_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Indexes for table `nv4_shop_orders_id_group`
--
ALTER TABLE `nv4_shop_orders_id_group`
  ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Indexes for table `nv4_shop_orders_shipping`
--
ALTER TABLE `nv4_shop_orders_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_time` (`add_time`);

--
-- Indexes for table `nv4_shop_point`
--
ALTER TABLE `nv4_shop_point`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_shop_point_history`
--
ALTER TABLE `nv4_shop_point_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_review`
--
ALTER TABLE `nv4_shop_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `nv4_shop_rows`
--
ALTER TABLE `nv4_shop_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `listcatid` (`listcatid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv4_shop_shops`
--
ALTER TABLE `nv4_shop_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_shops_carrier`
--
ALTER TABLE `nv4_shop_shops_carrier`
  ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Indexes for table `nv4_shop_tabs`
--
ALTER TABLE `nv4_shop_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_tags_id_vi`
--
ALTER TABLE `nv4_shop_tags_id_vi`
  ADD UNIQUE KEY `sid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_shop_tags_vi`
--
ALTER TABLE `nv4_shop_tags_vi`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shop_template`
--
ALTER TABLE `nv4_shop_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shop_transaction`
--
ALTER TABLE `nv4_shop_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv4_shop_units`
--
ALTER TABLE `nv4_shop_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shop_warehouse`
--
ALTER TABLE `nv4_shop_warehouse`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shop_warehouse_logs`
--
ALTER TABLE `nv4_shop_warehouse_logs`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `wid` (`wid`);

--
-- Indexes for table `nv4_shop_warehouse_logs_group`
--
ALTER TABLE `nv4_shop_warehouse_logs_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logid` (`logid`);

--
-- Indexes for table `nv4_shop_weight_vi`
--
ALTER TABLE `nv4_shop_weight_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shop_wishlist`
--
ALTER TABLE `nv4_shop_wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  ADD UNIQUE KEY `userid` (`userid`,`code`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_edit`
--
ALTER TABLE `nv4_users_edit`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `kalias` (`alias`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_detail`
--
ALTER TABLE `nv4_users_groups_detail`
  ADD UNIQUE KEY `group_id_lang` (`lang`,`group_id`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD UNIQUE KEY `opid` (`openid`,`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_3`
--
ALTER TABLE `nv4_vi_news_3`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_4`
--
ALTER TABLE `nv4_vi_news_4`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_5`
--
ALTER TABLE `nv4_vi_news_5`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_6`
--
ALTER TABLE `nv4_vi_news_6`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_7`
--
ALTER TABLE `nv4_vi_news_7`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_author`
--
ALTER TABLE `nv4_vi_news_author`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uid` (`uid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_authorlist`
--
ALTER TABLE `nv4_vi_news_authorlist`
  ADD UNIQUE KEY `id_aid` (`id`,`aid`),
  ADD KEY `aid` (`aid`),
  ADD KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `edittime` (`edittime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`),
  ADD KEY `instant_active` (`instant_active`),
  ADD KEY `instant_creatauto` (`instant_creatauto`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_tmp`
--
ALTER TABLE `nv4_vi_news_tmp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- Indexes for table `nv4_vi_voting_voted`
--
ALTER TABLE `nv4_vi_voting_voted`
  ADD UNIQUE KEY `vid` (`vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_api_role`
--
ALTER TABLE `nv4_authors_api_role`
  MODIFY `role_id` smallint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_authors_oauth`
--
ALTER TABLE `nv4_authors_oauth`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_ips`
--
ALTER TABLE `nv4_ips`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=564;

--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
  MODIFY `catid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
  MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
  MODIFY `groupid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
  MODIFY `wid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
  MODIFY `logid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_block_cat`
--
ALTER TABLE `nv4_shop_block_cat`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shop_carrier`
--
ALTER TABLE `nv4_shop_carrier`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_carrier_config`
--
ALTER TABLE `nv4_shop_carrier_config`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_carrier_config_items`
--
ALTER TABLE `nv4_shop_carrier_config_items`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_catalogs`
--
ALTER TABLE `nv4_shop_catalogs`
  MODIFY `catid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `nv4_shop_coupons`
--
ALTER TABLE `nv4_shop_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_coupons_history`
--
ALTER TABLE `nv4_shop_coupons_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_discounts`
--
ALTER TABLE `nv4_shop_discounts`
  MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_shop_field`
--
ALTER TABLE `nv4_shop_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_field_value_vi`
--
ALTER TABLE `nv4_shop_field_value_vi`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_files`
--
ALTER TABLE `nv4_shop_files`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_group`
--
ALTER TABLE `nv4_shop_group`
  MODIFY `groupid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `nv4_shop_location`
--
ALTER TABLE `nv4_shop_location`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_orders`
--
ALTER TABLE `nv4_shop_orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_orders_id`
--
ALTER TABLE `nv4_shop_orders_id`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_orders_shipping`
--
ALTER TABLE `nv4_shop_orders_shipping`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_point_history`
--
ALTER TABLE `nv4_shop_point_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_review`
--
ALTER TABLE `nv4_shop_review`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_rows`
--
ALTER TABLE `nv4_shop_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nv4_shop_shops`
--
ALTER TABLE `nv4_shop_shops`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_tabs`
--
ALTER TABLE `nv4_shop_tabs`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_shop_tags_vi`
--
ALTER TABLE `nv4_shop_tags_vi`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_shop_template`
--
ALTER TABLE `nv4_shop_template`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_transaction`
--
ALTER TABLE `nv4_shop_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_shop_units`
--
ALTER TABLE `nv4_shop_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shop_warehouse`
--
ALTER TABLE `nv4_shop_warehouse`
  MODIFY `wid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_shop_warehouse_logs`
--
ALTER TABLE `nv4_shop_warehouse_logs`
  MODIFY `logid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nv4_shop_warehouse_logs_group`
--
ALTER TABLE `nv4_shop_warehouse_logs_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nv4_shop_weight_vi`
--
ALTER TABLE `nv4_shop_weight_vi`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_shop_wishlist`
--
ALTER TABLE `nv4_shop_wishlist`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_users_backupcodes`
--
ALTER TABLE `nv4_users_backupcodes`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_contact_supporter`
--
ALTER TABLE `nv4_vi_contact_supporter`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nv4_vi_news_3`
--
ALTER TABLE `nv4_vi_news_3`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `nv4_vi_news_4`
--
ALTER TABLE `nv4_vi_news_4`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `nv4_vi_news_5`
--
ALTER TABLE `nv4_vi_news_5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_news_6`
--
ALTER TABLE `nv4_vi_news_6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `nv4_vi_news_7`
--
ALTER TABLE `nv4_vi_news_7`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_news_author`
--
ALTER TABLE `nv4_vi_news_author`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
