-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 26, 2020 at 10:19 PM
-- Server version: 5.7.30-0ubuntu0.18.04.1
-- PHP Version: 7.3.19-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamewadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_latitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(11) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(11) NOT NULL,
  `nonce` text COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8mb4_unicode_ci,
  `expires_impressions` int(11) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `banners_group`, `banners_html_text`, `expires_impressions`, `expires_date`, `date_scheduled`, `date_added`, `date_status_change`, `status`, `type`, `banners_slug`, `created_at`, `updated_at`) VALUES
(1, 'Banner 1', '6', '9', '', NULL, 0, '2020-07-23 00:00:00', NULL, '2020-04-05 01:10:00', NULL, 1, 'category', '', '2019-09-23 10:53:34', NULL),
(2, 'Banner 2', '4', '11', '', NULL, 0, '2020-06-02 00:00:00', NULL, '2020-04-05 01:10:00', NULL, 1, 'category', '', '2019-09-23 10:53:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT '0',
  `banners_clicked` int(11) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

CREATE TABLE `block_ips` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '258', '257', 0, NULL, NULL, NULL, 'men-s', 1, '2019-09-19 08:08:12', '2019-10-01 10:57:00'),
(2, '260', '259', 0, NULL, NULL, NULL, 'women-s', 1, '2019-09-19 08:10:26', '2019-10-01 10:57:26'),
(3, '262', '261', 0, NULL, NULL, NULL, 'kid-s', 1, '2019-09-19 08:10:47', '2019-10-01 10:58:48'),
(4, '263', '264', 3, NULL, NULL, NULL, 'boy-s-clothing', 1, '2019-09-19 08:12:48', '2019-10-01 10:59:13'),
(5, '266', '265', 3, NULL, NULL, NULL, 'girl-s-clothing', 1, '2019-09-19 08:13:12', '2019-10-01 10:59:46'),
(6, '268', '267', 3, NULL, NULL, NULL, 'kid-s-shoes', 1, '2019-09-19 08:13:52', '2019-10-01 11:00:09'),
(7, '270', '269', 1, NULL, NULL, NULL, 'men-s-accessories', 1, '2019-09-19 08:18:22', '2019-10-01 11:00:34'),
(8, '272', '271', 1, NULL, NULL, NULL, 'men-s-jeans', 1, '2019-09-19 08:19:14', '2019-10-01 11:00:46'),
(9, '274', '273', 1, NULL, NULL, NULL, 'men-s-shirts', 1, '2019-09-19 08:20:19', '2019-10-01 11:01:17'),
(10, '276', '275', 1, NULL, NULL, NULL, 'men-s-shoes', 1, '2019-09-19 08:20:38', '2019-10-01 11:01:27'),
(11, '278', '277', 2, NULL, NULL, NULL, 'women-s-accessories', 1, '2019-09-19 08:30:13', '2019-10-01 11:01:57'),
(12, '279', '280', 2, NULL, NULL, NULL, 'women-s-bottoms', 1, '2019-09-19 08:30:45', '2019-10-01 11:02:10'),
(13, '282', '281', 2, NULL, NULL, NULL, 'women-s-tops', 1, '2019-09-19 08:31:30', '2019-10-01 11:02:39'),
(14, '284', '283', 2, NULL, NULL, NULL, 'women-s-winter-wear', 1, '2019-09-19 08:31:54', '2019-10-01 11:02:50'),
(15, '286', '285', 2, NULL, NULL, NULL, 'women-s-shoes', 1, '2019-09-19 08:32:17', '2019-10-01 11:03:12'),
(16, '426', '425', 0, NULL, NULL, NULL, 'house-hold', 1, '2019-09-25 11:29:59', '2019-10-01 11:03:24'),
(17, '6', '7', 16, NULL, NULL, NULL, 'house-hold-1', 1, '2020-03-20 11:37:49', NULL),
(18, '6', '7', 17, NULL, NULL, NULL, 'house-hold-1-1', 1, '2020-03-20 11:38:35', NULL),
(19, '6', '7', 18, NULL, NULL, NULL, 'house-hold-1-1-1', 1, '2020-03-20 11:39:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 1, 1, 'Men\'s'),
(2, 2, 1, 'Women\'s'),
(3, 3, 1, 'Kid\'s'),
(4, 4, 1, 'Boy\'s Clothing'),
(5, 5, 1, 'Girl\'s Clothing'),
(6, 6, 1, 'Kid\'s Shoes'),
(7, 7, 1, 'Men\'s Accessories'),
(8, 8, 1, 'Men\'s Jeans'),
(9, 9, 1, 'Men\'s Shirts'),
(10, 10, 1, 'Men\'s Shoes'),
(11, 11, 1, 'Women\'s Accessories'),
(12, 12, 1, 'Women\'s Bottoms'),
(13, 13, 1, 'Women\'s Tops'),
(14, 14, 1, 'Women\'s Winter Wear'),
(15, 15, 1, 'Women\'s Shoes'),
(16, 16, 1, 'House Hold'),
(17, 1, 4, 'ملك الرجال'),
(18, 2, 4, 'للنساء'),
(19, 3, 4, 'أطفال'),
(20, 4, 4, 'ملابس الصبي'),
(21, 5, 4, 'ملابس الفتاة'),
(22, 6, 4, 'أحذية الأطفال'),
(23, 7, 4, 'اكسسوارات رجالية'),
(24, 8, 4, 'جينز للرجال'),
(25, 9, 4, 'قمصان رجالية'),
(26, 10, 4, 'احذية رجالية'),
(27, 11, 4, 'اكسسوارات نسائية'),
(28, 12, 4, 'قيعان النساء'),
(29, 13, 4, 'قمم المرأة'),
(30, 14, 4, 'ملابس الشتاء للمرأة'),
(31, 15, 4, 'أحذية المرأة'),
(32, 16, 4, 'منزل عقد'),
(33, 17, 1, 'House Hold 1'),
(34, 17, 4, 'House Hold 1'),
(35, 18, 1, 'House Hold 1.1'),
(36, 18, 4, 'House Hold 1.1'),
(37, 19, 1, 'House Hold 1.1.1'),
(38, 19, 4, 'House Hold 1.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, '1', '/shop', '14', '2020-04-01 15:01:56', 1, 1, '1'),
(2, '2', '/shop', '15', '2020-04-01 15:03:34', 1, 1, '2'),
(3, 'banner1', '/shop', '444', '2019-09-08 18:43:34', 1, 1, '3'),
(4, 'banner1', '/shop', '445', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', '/shop', '446', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', '/shop', '28', '2019-09-10 08:50:55', 1, 1, '6'),
(7, 'banner2_3_4', '/shop', '29', '2019-09-10 08:54:18', 1, 1, '7'),
(8, 'banner2_3_4', '/shop', '30', '2019-09-10 08:54:28', 1, 1, '8'),
(9, 'banner2_3_4', '/shop', '31', '2019-09-10 08:54:38', 1, 1, '9'),
(10, 'banner5_6', '/shop', '32', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', '/shop', '33', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', '/shop', '34', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', '/shop', '35', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', '/shop', '36', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', '/shop', '38', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', '/shop', '37', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', '/shop', '39', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', '/shop', '40', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', '/shop', '41', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', '/shop', '42', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', '/shop', '44', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', '/shop', '43', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', '/shop', '45', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', '/shop', '46', '2019-09-10 10:26:54', 1, 1, '24'),
(25, 'banner13_14_15', '/shop', '47', '2019-09-10 11:01:09', 1, 1, '25'),
(26, 'banner13_14_15', '/shop', '48', '2019-09-10 11:01:27', 1, 1, '26'),
(27, 'banner13_14_15', '/shop', '49', '2019-09-10 11:02:12', 1, 1, '27'),
(28, 'banner13_14_15', '/shop', '536', '2019-09-10 11:02:23', 1, 1, '28'),
(29, 'banner13_14_15', '/shop', '51', '2019-09-10 11:02:36', 1, 1, '29'),
(30, 'banner16_17', '/shop', '52', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', '/shop', '53', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', '/shop', '54', '2019-09-10 11:21:00', 1, 1, '32'),
(33, 'banner18_19', '/shop', '55', '2019-09-10 11:30:35', 1, 1, '33'),
(34, 'banner18_19', '/shop', '56', '2019-09-10 11:30:49', 1, 1, '34'),
(35, 'banner18_19', '/shop', '57', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', '/shop', '58', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', '/shop', '59', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', '/shop', '60', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', '/shop', '13', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', '/shop', '12', '2019-09-11 06:17:58', 1, 1, '40'),
(41, 'style0', '/shop', '484', '2019-09-26 08:09:15', 1, 4, '1'),
(42, 'style0', '/shop', '531', '2019-09-08 18:43:25', 1, 4, '2'),
(43, 'banner1', '/shop', '444', '2019-09-08 18:43:34', 1, 4, '3'),
(44, 'banner1', '/shop', '445', '2019-09-08 18:43:42', 1, 4, '4'),
(45, 'banner1', '/shop', '446', '2019-09-08 18:44:15', 1, 4, '5'),
(46, 'banner2_3_4', '/shop', '499', '2019-09-10 08:50:55', 1, 4, '6'),
(47, 'banner2_3_4', '/shop', '500', '2019-09-10 08:54:18', 1, 4, '7'),
(48, 'banner2_3_4', '/shop', '501', '2019-09-10 08:54:28', 1, 4, '8'),
(49, 'banner2_3_4', '/shop', '502', '2019-09-10 08:54:38', 1, 4, '9'),
(50, 'banner5_6', '/shop', '503', '2019-09-10 09:31:13', 1, 4, '10'),
(51, 'banner5_6', '/shop', '504', '2019-09-10 09:31:24', 1, 4, '11'),
(52, 'banner5_6', '/shop', '505', '2019-09-10 09:31:35', 1, 4, '12'),
(53, 'banner5_6', '/shop', '506', '2019-09-10 09:32:18', 1, 4, '13'),
(54, 'banner5_6', '/shop', '507', '2019-09-10 09:32:28', 1, 4, '14'),
(55, 'banner7_8', '/shop', '509', '2019-09-10 09:52:02', 1, 4, '15'),
(56, 'banner7_8', '/shop', '508', '2019-09-10 09:52:29', 1, 4, '16'),
(57, 'banner7_8', '/shop', '510', '2019-09-10 09:47:56', 1, 4, '17'),
(58, 'banner7_8', '/shop', '511', '2019-09-10 09:48:05', 1, 4, '18'),
(59, 'banner9', '/shop', '512', '2019-09-10 10:19:03', 1, 4, '19'),
(60, 'banner9', '/shop', '513', '2019-09-10 10:19:13', 1, 4, '20'),
(61, 'banner10_11_12', '/shop', '515', '2019-09-10 10:26:12', 1, 4, '21'),
(62, 'banner10_11_12', '/shop', '514', '2019-09-10 10:26:30', 1, 4, '22'),
(63, 'banner10_11_12', '/shop', '517', '2019-09-10 10:26:41', 1, 4, '23'),
(64, 'banner10_11_12', '/shop', '516', '2019-09-10 10:26:54', 1, 4, '24'),
(65, 'banner13_14_15', '/shop', '519', '2019-09-10 11:01:09', 1, 4, '25'),
(66, 'banner13_14_15', '/shop', '518', '2019-09-10 11:01:27', 1, 4, '26'),
(67, 'banner13_14_15', '/shop', '520', '2019-09-10 11:02:12', 1, 4, '27'),
(68, 'banner13_14_15', '/shop', '521', '2019-09-10 11:02:23', 1, 4, '28'),
(69, 'banner13_14_15', '/shop', '522', '2019-09-10 11:02:36', 1, 4, '29'),
(70, 'banner16_17', '/shop', '496', '2019-09-10 11:19:45', 1, 4, '30'),
(71, 'banner16_17', '/shop', '497', '2019-09-10 11:19:58', 1, 4, '31'),
(72, 'banner16_17', '/shop', '498', '2019-09-10 11:21:00', 1, 4, '32'),
(73, 'banner18_19', '/shop', '523', '2019-09-10 11:30:35', 1, 4, '33'),
(74, 'banner18_19', '/shop', '524', '2019-09-10 11:30:49', 1, 4, '34'),
(75, 'banner18_19', '/shop', '526', '2019-09-10 11:31:04', 1, 4, '35'),
(76, 'banner18_19', '/shop', '525', '2019-09-10 11:31:20', 1, 4, '36'),
(77, 'banner18_19', '/shop', '527', '2019-09-10 11:31:54', 1, 4, '37'),
(78, 'banner18_19', '/shop', '528', '2019-09-10 11:32:06', 1, 4, '38'),
(79, 'ad_banner1', '/shop', '530', '2019-09-11 06:17:45', 1, 4, '39'),
(80, 'ad_banner2', '/shop', '529', '2019-09-11 06:17:58', 1, 4, '40'),
(81, 'ad_banner3', '/shop', '12', '2020-02-26 02:10:11', 1, 1, '41'),
(82, 'ad_banner3', '/shop', '107', '2020-02-26 04:08:08', 1, 2, '41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, NULL),
(2, 'Albania', 'AL', 'ALB', 1, NULL),
(3, 'Algeria', 'DZ', 'DZA', 1, NULL),
(4, 'American Samoa', 'AS', 'ASM', 1, NULL),
(5, 'Andorra', 'AD', 'AND', 1, NULL),
(6, 'Angola', 'AO', 'AGO', 1, NULL),
(7, 'Anguilla', 'AI', 'AIA', 1, NULL),
(8, 'Antarctica', 'AQ', 'ATA', 1, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, NULL),
(10, 'Argentina', 'AR', 'ARG', 1, NULL),
(11, 'Armenia', 'AM', 'ARM', 1, NULL),
(12, 'Aruba', 'AW', 'ABW', 1, NULL),
(13, 'Australia', 'AU', 'AUS', 1, NULL),
(14, 'Austria', 'AT', 'AUT', 5, NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, NULL),
(16, 'Bahamas', 'BS', 'BHS', 1, NULL),
(17, 'Bahrain', 'BH', 'BHR', 1, NULL),
(18, 'Bangladesh', 'BD', 'BGD', 1, NULL),
(19, 'Barbados', 'BB', 'BRB', 1, NULL),
(20, 'Belarus', 'BY', 'BLR', 1, NULL),
(21, 'Belgium', 'BE', 'BEL', 1, NULL),
(22, 'Belize', 'BZ', 'BLZ', 1, NULL),
(23, 'Benin', 'BJ', 'BEN', 1, NULL),
(24, 'Bermuda', 'BM', 'BMU', 1, NULL),
(25, 'Bhutan', 'BT', 'BTN', 1, NULL),
(26, 'Bolivia', 'BO', 'BOL', 1, NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, NULL),
(28, 'Botswana', 'BW', 'BWA', 1, NULL),
(29, 'Bouvet Island', 'BV', 'BVT', 1, NULL),
(30, 'Brazil', 'BR', 'BRA', 1, NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, NULL),
(33, 'Bulgaria', 'BG', 'BGR', 1, NULL),
(34, 'Burkina Faso', 'BF', 'BFA', 1, NULL),
(35, 'Burundi', 'BI', 'BDI', 1, NULL),
(36, 'Cambodia', 'KH', 'KHM', 1, NULL),
(37, 'Cameroon', 'CM', 'CMR', 1, NULL),
(38, 'Canada', 'CA', 'CAN', 1, NULL),
(39, 'Cape Verde', 'CV', 'CPV', 1, NULL),
(40, 'Cayman Islands', 'KY', 'CYM', 1, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 1, NULL),
(42, 'Chad', 'TD', 'TCD', 1, NULL),
(43, 'Chile', 'CL', 'CHL', 1, NULL),
(44, 'China', 'CN', 'CHN', 1, NULL),
(45, 'Christmas Island', 'CX', 'CXR', 1, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, NULL),
(47, 'Colombia', 'CO', 'COL', 1, NULL),
(48, 'Comoros', 'KM', 'COM', 1, NULL),
(49, 'Congo', 'CG', 'COG', 1, NULL),
(50, 'Cook Islands', 'CK', 'COK', 1, NULL),
(51, 'Costa Rica', 'CR', 'CRI', 1, NULL),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, NULL),
(53, 'Croatia', 'HR', 'HRV', 1, NULL),
(54, 'Cuba', 'CU', 'CUB', 1, NULL),
(55, 'Cyprus', 'CY', 'CYP', 1, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 1, NULL),
(57, 'Denmark', 'DK', 'DNK', 1, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 1, NULL),
(59, 'Dominica', 'DM', 'DMA', 1, NULL),
(60, 'Dominican Republic', 'DO', 'DOM', 1, NULL),
(61, 'East Timor', 'TP', 'TMP', 1, NULL),
(62, 'Ecuador', 'EC', 'ECU', 1, NULL),
(63, 'Egypt', 'EG', 'EGY', 1, NULL),
(64, 'El Salvador', 'SV', 'SLV', 1, NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, NULL),
(66, 'Eritrea', 'ER', 'ERI', 1, NULL),
(67, 'Estonia', 'EE', 'EST', 1, NULL),
(68, 'Ethiopia', 'ET', 'ETH', 1, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, NULL),
(70, 'Faroe Islands', 'FO', 'FRO', 1, NULL),
(71, 'Fiji', 'FJ', 'FJI', 1, NULL),
(72, 'Finland', 'FI', 'FIN', 1, NULL),
(73, 'France', 'FR', 'FRA', 1, NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, NULL),
(75, 'French Guiana', 'GF', 'GUF', 1, NULL),
(76, 'French Polynesia', 'PF', 'PYF', 1, NULL),
(77, 'French Southern Territories', 'TF', 'ATF', 1, NULL),
(78, 'Gabon', 'GA', 'GAB', 1, NULL),
(79, 'Gambia', 'GM', 'GMB', 1, NULL),
(80, 'Georgia', 'GE', 'GEO', 1, NULL),
(81, 'Germany', 'DE', 'DEU', 5, NULL),
(82, 'Ghana', 'GH', 'GHA', 1, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 1, NULL),
(84, 'Greece', 'GR', 'GRC', 1, NULL),
(85, 'Greenland', 'GL', 'GRL', 1, NULL),
(86, 'Grenada', 'GD', 'GRD', 1, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 1, NULL),
(88, 'Guam', 'GU', 'GUM', 1, NULL),
(89, 'Guatemala', 'GT', 'GTM', 1, NULL),
(90, 'Guinea', 'GN', 'GIN', 1, NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, NULL),
(92, 'Guyana', 'GY', 'GUY', 1, NULL),
(93, 'Haiti', 'HT', 'HTI', 1, NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, NULL),
(95, 'Honduras', 'HN', 'HND', 1, NULL),
(96, 'Hong Kong', 'HK', 'HKG', 1, NULL),
(97, 'Hungary', 'HU', 'HUN', 1, NULL),
(98, 'Iceland', 'IS', 'ISL', 1, NULL),
(99, 'India', 'IN', 'IND', 1, NULL),
(100, 'Indonesia', 'ID', 'IDN', 1, NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, NULL),
(102, 'Iraq', 'IQ', 'IRQ', 1, NULL),
(103, 'Ireland', 'IE', 'IRL', 1, NULL),
(104, 'Israel', 'IL', 'ISR', 1, NULL),
(105, 'Italy', 'IT', 'ITA', 1, NULL),
(106, 'Jamaica', 'JM', 'JAM', 1, NULL),
(107, 'Japan', 'JP', 'JPN', 1, NULL),
(108, 'Jordan', 'JO', 'JOR', 1, NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, NULL),
(110, 'Kenya', 'KE', 'KEN', 1, NULL),
(111, 'Kiribati', 'KI', 'KIR', 1, NULL),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, NULL),
(114, 'Kuwait', 'KW', 'KWT', 1, NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, NULL),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, NULL),
(117, 'Latvia', 'LV', 'LVA', 1, NULL),
(118, 'Lebanon', 'LB', 'LBN', 1, NULL),
(119, 'Lesotho', 'LS', 'LSO', 1, NULL),
(120, 'Liberia', 'LR', 'LBR', 1, NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, NULL),
(122, 'Liechtenstein', 'LI', 'LIE', 1, NULL),
(123, 'Lithuania', 'LT', 'LTU', 1, NULL),
(124, 'Luxembourg', 'LU', 'LUX', 1, NULL),
(125, 'Macau', 'MO', 'MAC', 1, NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, NULL),
(127, 'Madagascar', 'MG', 'MDG', 1, NULL),
(128, 'Malawi', 'MW', 'MWI', 1, NULL),
(129, 'Malaysia', 'MY', 'MYS', 1, NULL),
(130, 'Maldives', 'MV', 'MDV', 1, NULL),
(131, 'Mali', 'ML', 'MLI', 1, NULL),
(132, 'Malta', 'MT', 'MLT', 1, NULL),
(133, 'Marshall Islands', 'MH', 'MHL', 1, NULL),
(134, 'Martinique', 'MQ', 'MTQ', 1, NULL),
(135, 'Mauritania', 'MR', 'MRT', 1, NULL),
(136, 'Mauritius', 'MU', 'MUS', 1, NULL),
(137, 'Mayotte', 'YT', 'MYT', 1, NULL),
(138, 'Mexico', 'MX', 'MEX', 1, NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, NULL),
(141, 'Monaco', 'MC', 'MCO', 1, NULL),
(142, 'Mongolia', 'MN', 'MNG', 1, NULL),
(143, 'Montserrat', 'MS', 'MSR', 1, NULL),
(144, 'Morocco', 'MA', 'MAR', 1, NULL),
(145, 'Mozambique', 'MZ', 'MOZ', 1, NULL),
(146, 'Myanmar', 'MM', 'MMR', 1, NULL),
(147, 'Namibia', 'NA', 'NAM', 1, NULL),
(148, 'Nauru', 'NR', 'NRU', 1, NULL),
(149, 'Nepal', 'NP', 'NPL', 1, NULL),
(150, 'Netherlands', 'NL', 'NLD', 1, NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, NULL),
(152, 'New Caledonia', 'NC', 'NCL', 1, NULL),
(153, 'New Zealand', 'NZ', 'NZL', 1, NULL),
(154, 'Nicaragua', 'NI', 'NIC', 1, NULL),
(155, 'Niger', 'NE', 'NER', 1, NULL),
(156, 'Nigeria', 'NG', 'NGA', 1, NULL),
(157, 'Niue', 'NU', 'NIU', 1, NULL),
(158, 'Norfolk Island', 'NF', 'NFK', 1, NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, NULL),
(160, 'Norway', 'NO', 'NOR', 1, NULL),
(161, 'Oman', 'OM', 'OMN', 1, NULL),
(162, 'Pakistan', 'PK', 'PAK', 1, NULL),
(163, 'Palau', 'PW', 'PLW', 1, NULL),
(164, 'Panama', 'PA', 'PAN', 1, NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, NULL),
(166, 'Paraguay', 'PY', 'PRY', 1, NULL),
(167, 'Peru', 'PE', 'PER', 1, NULL),
(168, 'Philippines', 'PH', 'PHL', 1, NULL),
(169, 'Pitcairn', 'PN', 'PCN', 1, NULL),
(170, 'Poland', 'PL', 'POL', 1, NULL),
(171, 'Portugal', 'PT', 'PRT', 1, NULL),
(172, 'Puerto Rico', 'PR', 'PRI', 1, NULL),
(173, 'Qatar', 'QA', 'QAT', 1, NULL),
(174, 'Reunion', 'RE', 'REU', 1, NULL),
(175, 'Romania', 'RO', 'ROM', 1, NULL),
(176, 'Russian Federation', 'RU', 'RUS', 1, NULL),
(177, 'Rwanda', 'RW', 'RWA', 1, NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, NULL),
(179, 'Saint Lucia', 'LC', 'LCA', 1, NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, NULL),
(181, 'Samoa', 'WS', 'WSM', 1, NULL),
(182, 'San Marino', 'SM', 'SMR', 1, NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, NULL),
(185, 'Senegal', 'SN', 'SEN', 1, NULL),
(186, 'Seychelles', 'SC', 'SYC', 1, NULL),
(187, 'Sierra Leone', 'SL', 'SLE', 1, NULL),
(188, 'Singapore', 'SG', 'SGP', 4, NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, NULL),
(190, 'Slovenia', 'SI', 'SVN', 1, NULL),
(191, 'Solomon Islands', 'SB', 'SLB', 1, NULL),
(192, 'Somalia', 'SO', 'SOM', 1, NULL),
(193, 'South Africa', 'ZA', 'ZAF', 1, NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, NULL),
(195, 'Spain', 'ES', 'ESP', 3, NULL),
(196, 'Sri Lanka', 'LK', 'LKA', 1, NULL),
(197, 'St. Helena', 'SH', 'SHN', 1, NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, NULL),
(199, 'Sudan', 'SD', 'SDN', 1, NULL),
(200, 'Suriname', 'SR', 'SUR', 1, NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, NULL),
(202, 'Swaziland', 'SZ', 'SWZ', 1, NULL),
(203, 'Sweden', 'SE', 'SWE', 1, NULL),
(204, 'Switzerland', 'CH', 'CHE', 1, NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, NULL),
(206, 'Taiwan', 'TW', 'TWN', 1, NULL),
(207, 'Tajikistan', 'TJ', 'TJK', 1, NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, NULL),
(209, 'Thailand', 'TH', 'THA', 1, NULL),
(210, 'Togo', 'TG', 'TGO', 1, NULL),
(211, 'Tokelau', 'TK', 'TKL', 1, NULL),
(212, 'Tonga', 'TO', 'TON', 1, NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, NULL),
(214, 'Tunisia', 'TN', 'TUN', 1, NULL),
(215, 'Turkey', 'TR', 'TUR', 1, NULL),
(216, 'Turkmenistan', 'TM', 'TKM', 1, NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, NULL),
(218, 'Tuvalu', 'TV', 'TUV', 1, NULL),
(219, 'Uganda', 'UG', 'UGA', 1, NULL),
(220, 'Ukraine', 'UA', 'UKR', 1, NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, NULL),
(222, 'United Kingdom', 'GB', 'GBR', 1, NULL),
(223, 'United States', 'US', 'USA', 2, NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, NULL),
(225, 'Uruguay', 'UY', 'URY', 1, NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, NULL),
(227, 'Vanuatu', 'VU', 'VUT', 1, NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, NULL),
(229, 'Venezuela', 'VE', 'VEN', 1, NULL),
(230, 'Viet Nam', 'VN', 'VNM', 1, NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, NULL),
(234, 'Western Sahara', 'EH', 'ESH', 1, NULL),
(235, 'Yemen', 'YE', 'YEM', 1, NULL),
(236, 'Yugoslavia', 'YU', 'YUG', 1, NULL),
(237, 'Zaire', 'ZR', 'ZAR', 1, NULL),
(238, 'Zambia', 'ZM', 'ZMB', 1, NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupans_id`, `code`, `date_created`, `date_modified`, `description`, `discount_type`, `amount`, `expiry_date`, `usage_count`, `individual_use`, `product_ids`, `exclude_product_ids`, `usage_limit`, `usage_limit_per_user`, `limit_usage_to_x_items`, `free_shipping`, `product_categories`, `excluded_product_categories`, `exclude_sale_items`, `minimum_amount`, `maximum_amount`, `email_restrictions`, `used_by`, `created_at`, `updated_at`) VALUES
(1, 'Sample Coupon Cart Discount', NULL, NULL, NULL, 'fixed_cart', 10, '2021-08-31 00:00:00', 0, 0, '', '', NULL, NULL, 0, 0, '', '', 0, '30.00', '1000.00', '', ',11', '2019-09-18 08:27:34', '2019-09-24 12:48:00'),
(2, 'Sample Coupon Cart Percent Discount', NULL, NULL, NULL, 'percent', 10, '1970-01-01 00:00:00', 0, 0, '', '', 10, 5, 0, 0, '', '', 0, '20.00', '1000.00', '', ',10', '2019-09-18 08:28:36', '2019-09-18 08:33:03'),
(3, 'Sample Coupon Product Discount', NULL, NULL, NULL, 'fixed_product', 20, '2022-05-31 00:00:00', 0, 0, '', '', NULL, NULL, 0, 0, '', '', 0, '20.00', '1000.00', '', ',9', '2019-09-18 08:29:37', NULL),
(4, 'Sample Coupon Product Percent Discount', NULL, NULL, NULL, 'percent_product', 10, '2021-11-30 00:00:00', 0, 1, '', '', NULL, NULL, 0, 0, '', '', 0, '30.00', '1000.00', '', '', '2019-09-18 08:32:02', '2019-09-24 12:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_current` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'USD', 'USD', '$', NULL, NULL, NULL, '2', '2020-03-20 01:56:40', '2020-03-20 01:56:40', 1.00000000, 1, 1, 1),
(9, 'AED', 'AED', '', 'د.إ', NULL, NULL, '2', '2019-10-01 12:53:40', '2019-10-01 12:53:40', 3.60000000, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

CREATE TABLE `currency_record` (
  `id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `top_offer` int(11) NOT NULL DEFAULT '1',
  `login` int(11) NOT NULL DEFAULT '1',
  `transitions` int(11) NOT NULL,
  `banner_two` int(11) NOT NULL,
  `customers_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `top_offer`, `login`, `transitions`, `banner_two`, `customers_id`, `session_id`) VALUES
(1, 10, 1, 3, 6, '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":2,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":4,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":5,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":6,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":7,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":8,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":9,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":10,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":11,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":12,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', 2, 1, 1, 1, 1, 1, 1, 5, 1, '', '5d2ZmpgcBADkan2oZmcfhicKaQKQqEE5cA8NIPfC');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_id` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `device_type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ram` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `browser_info` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`flash_sale_id`, `products_id`, `flash_sale_products_price`, `flash_sale_date_added`, `flash_sale_last_modified`, `flash_start_date`, `flash_expires_date`, `flash_status`, `created_at`, `updated_at`) VALUES
(1, 5, '30.00', 0, 0, 1568133900, 1706633100, 0, '2019-09-17 11:51:32', '2019-10-01 12:15:21'),
(3, 16, '35.00', 0, 0, 1567620000, 1701367200, 0, '2019-09-17 01:07:07', '2019-10-01 11:59:13'),
(4, 20, '70.00', 0, 0, 1568139300, 1682878500, 0, '2019-09-17 01:23:37', '2019-10-01 11:56:36'),
(5, 28, '65.00', 0, 0, 1568201400, 1669807800, 0, '2019-09-18 06:45:49', '2019-10-01 11:52:07'),
(6, 28, '65.00', 0, 0, 1568201400, 1669807800, 0, '2019-09-19 10:10:52', '2019-10-01 11:52:07'),
(7, 20, '70.00', 0, 0, 1568096100, 1682835300, 0, '2019-09-19 10:49:36', '2019-10-01 11:56:36'),
(8, 16, '35.00', 0, 0, 1567576800, 1701324000, 0, '2019-09-19 11:08:20', '2019-10-01 11:59:13'),
(10, 5, '30.00', 0, 0, 1568090700, 1706589900, 0, '2019-09-19 11:42:46', '2019-10-01 12:15:21'),
(11, 5, '30.00', 0, 0, 1568090700, 1706589900, 0, '2019-09-19 11:49:57', '2019-10-01 12:15:21'),
(12, 33, '20.00', 0, 0, 1568135700, 1569777300, 1, '2019-09-19 12:23:50', NULL),
(13, 5, '30.00', 0, 0, 1568090700, 1706589900, 0, '2019-09-24 10:23:20', '2019-10-01 12:15:21'),
(14, 34, '30.00', 0, 0, 1568046600, 1569861000, 1, '2019-09-25 11:43:49', NULL),
(15, 35, '30.00', 0, 0, 1568133900, 1569861900, 0, '2019-09-25 11:46:31', '2019-09-25 11:47:48'),
(16, 35, '30.00', 0, 0, 1568090700, 1569818700, 1, '2019-09-25 11:47:48', NULL),
(17, 28, '65.00', 0, 0, 1568201400, 1669807800, 1, '2019-10-01 11:52:07', NULL),
(18, 20, '70.00', 0, 0, 1568096100, 1682835300, 1, '2019-10-01 11:56:36', NULL),
(19, 16, '35.00', 0, 0, 1567576800, 1701324000, 1, '2019-10-01 11:59:13', NULL),
(21, 5, '30.00', 0, 0, 1568090700, 1706589900, 1, '2019-10-01 12:15:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(11) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '11', 'USD');

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

CREATE TABLE `front_end_theme_content` (
  `id` int(11) NOT NULL,
  `top_offers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transitions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_two` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `top_offers`, `login`, `transitions`, `banners_two`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`) VALUES
(1, '[{ \"id\": 1, \"name\": \"Top Offer\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Top Offer\" }]', '[ { \"id\":1, \"name\":\"Login Page One\" }, { \"id\":2, \"name\":\"Login Page Two\" } ]', '[ { \"id\":1, \"name\":\"Transition Zoomin\" }, { \"id\":2, \"name\":\"Transition Flashing\" }, { \"id\":3, \"name\":\"Transition Shine\" }, { \"id\":4, \"name\":\"Transition Circle\" }, { \"id\":5, \"name\":\"Transition Opacity\" } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Header One\",\r\n\"image\": \"images/prototypes/header1.jpg\",\r\n\"alt\" : \"header One\" \r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Header Two\",\r\n\"image\": \"images/prototypes/header2.jpg\",\r\n\"alt\" : \"header Two\" \r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Header Three\",\r\n\"image\": \"images/prototypes/header3.jpg\",\r\n\"alt\" : \"header Three\" \r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Header Four\",\r\n\"image\": \"images/prototypes/header4.jpg\",\r\n\"alt\" : \"header Four\" \r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Header Five\",\r\n\"image\": \"images/prototypes/header5.jpg\",\r\n\"alt\" : \"header Five\" \r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Header Six\",\r\n\"image\": \"images/prototypes/header6.jpg\",\r\n\"alt\" : \"header Six\" \r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Header Seven\",\r\n\"image\": \"images/prototypes/header7.jpg\",\r\n\"alt\" : \"header Seven\" \r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Header Eight\",\r\n\"image\": \"images/prototypes/header8.jpg\",\r\n\"alt\" : \"header Eight\" \r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Header Nine\",\r\n\"image\": \"images/prototypes/header9.jpg\",\r\n\"alt\" : \"header Nine\" \r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Header Ten\",\r\n\"image\": \"images/prototypes/header10.jpg\",\r\n\"alt\" : \"header Ten\" \r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Bootstrap Carousel Content Full Screen\",\r\n\"image\": \"images/prototypes/carousal1.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Bootstrap Carousel Content Full Width\",\r\n\"image\": \"images/prototypes/carousal2.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content Full Width\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\r\n\"image\": \"images/prototypes/carousal3.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Bootstrap Carousel Content with Navigation\",\r\n\"image\": \"images/prototypes/carousal4.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\r\n\"image\": \"images/prototypes/carousal5.jpg\",\r\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Banner One\",\r\n\"image\": \"images/prototypes/banner1.jpg\",\r\n\"alt\": \"Banner One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Banner Two\",\r\n\"image\": \"images/prototypes/banner2.jpg\",\r\n\"alt\": \"Banner Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Banner Three\",\r\n\"image\": \"images/prototypes/banner3.jpg\",\r\n\"alt\": \"Banner Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Banner Four\",\r\n\"image\": \"images/prototypes/banner4.jpg\",\r\n\"alt\": \"Banner Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Banner Five\",\r\n\"image\": \"images/prototypes/banner5.jpg\",\r\n\"alt\": \"Banner Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Banner Six\",\r\n\"image\": \"images/prototypes/banner6.jpg\",\r\n\"alt\": \"Banner Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Banner Seven\",\r\n\"image\": \"images/prototypes/banner7.jpg\",\r\n\"alt\": \"Banner Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Banner Eight\",\r\n\"image\": \"images/prototypes/banner8.jpg\",\r\n\"alt\": \"Banner Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Banner Nine\",\r\n\"image\": \"images/prototypes/banner9.jpg\",\r\n\"alt\": \"Banner Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Banner Ten\",\r\n\"image\": \"images/prototypes/banner10.jpg\",\r\n\"alt\": \"Banner Ten\"\r\n},\r\n{\r\n\"id\": 11,\r\n\"name\": \"Banner Eleven\",\r\n\"image\": \"images/prototypes/banner11.jpg\",\r\n\"alt\": \"Banner Eleven\"\r\n},\r\n{\r\n\"id\": 12,\r\n\"name\": \"Banner Twelve\",\r\n\"image\": \"images/prototypes/banner12.jpg\",\r\n\"alt\": \"Banner Twelve\"\r\n},\r\n{\r\n\"id\": 13,\r\n\"name\": \"Banner Thirteen\",\r\n\"image\": \"images/prototypes/banner13.jpg\",\r\n\"alt\": \"Banner Thirteen\"\r\n},\r\n{\r\n\"id\": 14,\r\n\"name\": \"Banner Fourteen\",\r\n\"image\": \"images/prototypes/banner14.jpg\",\r\n\"alt\": \"Banner Fourteen\"\r\n},\r\n{\r\n\"id\": 15,\r\n\"name\": \"Banner Fifteen\",\r\n\"image\": \"images/prototypes/banner15.jpg\",\r\n\"alt\": \"Banner Fifteen\"\r\n},\r\n{\r\n\"id\": 16,\r\n\"name\": \"Banner Sixteen\",\r\n\"image\": \"images/prototypes/banner16.jpg\",\r\n\"alt\": \"Banner Sixteen\"\r\n},\r\n{\r\n\"id\": 17,\r\n\"name\": \"Banner Seventeen\",\r\n\"image\": \"images/prototypes/banner17.jpg\",\r\n\"alt\": \"Banner Seventeen\"\r\n},\r\n{\r\n\"id\": 18,\r\n\"name\": \"Banner Eighteen\",\r\n\"image\": \"images/prototypes/banner18.jpg\",\r\n\"alt\": \"Banner Eighteen\"\r\n},\r\n{\r\n\"id\": 19,\r\n\"name\": \"Banner Nineteen\",\r\n\"image\": \"images/prototypes/banner19.jpg\",\r\n\"alt\": \"Banner Nineteen\"\r\n}\r\n]', '[\r\n{\r\n\"id\": 1,\r\n\"name\": \"Footer One\",\r\n\"image\": \"images/prototypes/footer1.png\",\r\n\"alt\" : \"Footer One\"\r\n},\r\n{\r\n\"id\": 2,\r\n\"name\": \"Footer Two\",\r\n\"image\": \"images/prototypes/footer2.png\",\r\n\"alt\" : \"Footer Two\"\r\n},\r\n{\r\n\"id\": 3,\r\n\"name\": \"Footer Three\",\r\n\"image\": \"images/prototypes/footer3.png\",\r\n\"alt\" : \"Footer Three\"\r\n},\r\n{\r\n\"id\": 4,\r\n\"name\": \"Footer Four\",\r\n\"image\": \"images/prototypes/footer4.png\",\r\n\"alt\" : \"Footer Four\"\r\n},\r\n{\r\n\"id\": 5,\r\n\"name\": \"Footer Five\",\r\n\"image\": \"images/prototypes/footer5.png\",\r\n\"alt\" : \"Footer Five\"\r\n},\r\n{\r\n\"id\": 6,\r\n\"name\": \"Footer Six\",\r\n\"image\": \"images/prototypes/footer6.png\",\r\n\"alt\" : \"Footer Six\"\r\n},\r\n{\r\n\"id\": 7,\r\n\"name\": \"Footer Seven\",\r\n\"image\": \"images/prototypes/footer7.png\",\r\n\"alt\" : \"Footer Seven\"\r\n},\r\n{\r\n\"id\": 8,\r\n\"name\": \"Footer Eight\",\r\n\"image\": \"images/prototypes/footer8.png\",\r\n\"alt\" : \"Footer Eight\"\r\n},\r\n{\r\n\"id\": 9,\r\n\"name\": \"Footer Nine\",\r\n\"image\": \"images/prototypes/footer9.png\",\r\n\"alt\" : \"Footer Nine\"\r\n},\r\n{\r\n\"id\": 10,\r\n\"name\": \"Footer Ten\",\r\n\"image\": \"images/prototypes/footer10.png\",\r\n\"alt\" : \"Footer Ten\"\r\n}\r\n]', '[{\"id\":1,\"name\":\"Banner Section\",\"order\":1,\"file_name\":\"banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/banner_section.jpg\",\"alt\":\"Banner Section\"},{\"id\":11,\"name\":\"Tab Products View\",\"order\":2,\"file_name\":\"tab\",\"status\":1,\"image\":\"images\\/prototypes\\/tab.jpg\",\"disabled_image\":\"images\\/prototypes\\/tab-cross.jpg\",\"alt\":\"Tab Products View\"},{\"id\":5,\"name\":\"Categories\",\"order\":3,\"file_name\":\"categories\",\"status\":1,\"image\":\"images\\/prototypes\\/categories.jpg\",\"disabled_image\":\"images\\/prototypes\\/categories-cross.jpg\",\"alt\":\"Categories\"},{\"id\":2,\"name\":\"Flash Sale Section\",\"order\":4,\"file_name\":\"flash_sale_section\",\"status\":1,\"image\":\"images\\/prototypes\\/flash_sale_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/flash_sale_section-cross.jpg\",\"alt\":\"Flash Sale Section\"},{\"id\":10,\"name\":\"Second Ad Section\",\"order\":5,\"file_name\":\"sec_ad_banner\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Second Ad Section\"},{\"id\":9,\"name\":\"Top Selling\",\"order\":6,\"file_name\":\"top\",\"status\":1,\"image\":\"images\\/prototypes\\/top.jpg\",\"disabled_image\":\"images\\/prototypes\\/top-cross.jpg\",\"alt\":\"Top Selling\"},{\"id\":4,\"name\":\"Ad Section\",\"order\":7,\"file_name\":\"ad_banner_section\",\"status\":1,\"image\":\"images\\/prototypes\\/ad_banner_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/ad_banner_section-cross.jpg\",\"alt\":\"Ad Section\"},{\"id\":3,\"name\":\"Special Products Section\",\"order\":8,\"file_name\":\"special\",\"status\":1,\"image\":\"images\\/prototypes\\/special_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/special_product-cross.jpg\",\"alt\":\"Special Products Section\"},{\"id\":8,\"name\":\"Newest Product Section\",\"order\":9,\"file_name\":\"newest_product\",\"status\":1,\"image\":\"images\\/prototypes\\/newest_product.jpg\",\"disabled_image\":\"images\\/prototypes\\/newest_product-cross.jpg\",\"alt\":\"Newest Product Section\"},{\"id\":12,\"name\":\"Banner 2 Section\",\"order\":10,\"file_name\":\"banner_two_section\",\"status\":1,\"image\":\"images\\/prototypes\\/sec_ad_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/sec_ad_section-cross.jpg\",\"alt\":\"Banner 2 Section\"},{\"id\":6,\"name\":\"Blog Section\",\"order\":11,\"file_name\":\"blog_section\",\"status\":1,\"image\":\"images\\/prototypes\\/blog_section.jpg\",\"disabled_image\":\"images\\/prototypes\\/blog_section-cross.jpg\",\"alt\":\"Blog Section\"},{\"id\":7,\"name\":\"Info Boxes\",\"order\":12,\"file_name\":\"info_boxes\",\"status\":1,\"image\":\"images\\/prototypes\\/info_boxes.jpg\",\"disabled_image\":\"images\\/prototypes\\/info_boxes-cross.jpg\",\"alt\":\"Info Boxes\"}]', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[ { \"id\":1, \"name\":\"News One\" }, { \"id\":2, \"name\":\"News Two\" } ]', '[  \r\n{  \r\n\"id\":1,\r\n\"name\":\"Product Detail Page One\"\r\n},\r\n{  \r\n\"id\":2,\r\n\"name\":\"Product Detail Page Two\"\r\n},\r\n{  \r\n\"id\":3,\r\n\"name\":\"Product Detail Page Three\"\r\n},\r\n{  \r\n\"id\":4,\r\n\"name\":\"Product Detail Page Four\"\r\n},\r\n{  \r\n\"id\":5,\r\n\"name\":\"Product Detail Page Five\"\r\n},\r\n{  \r\n\"id\":6,\r\n\"name\":\"Product Detail Page Six\"\r\n}\r\n\r\n]', '[ { \"id\":1, \"name\":\"Shop Page One\" }, { \"id\":2, \"name\":\"Shop Page Two\" }, { \"id\":3, \"name\":\"Shop Page Three\" }, { \"id\":4, \"name\":\"Shop Page Four\" }, { \"id\":5, \"name\":\"Shop Page Five\" } ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `home_banners_id` int(100) NOT NULL,
  `banner_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(100) NOT NULL DEFAULT '1',
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` int(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`home_banners_id`, `banner_name`, `language_id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(0, 'banners_1', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> SNEAKER</h2>\r\n        <h4>Couples Footwear</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 13, '2020-04-02 11:51:35', '2020-04-02 11:51:35'),
(0, 'banners_2', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> TRENDING</h2>\r\n        <h4>Fashion Wear</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"View All Range\\\">View All Range</a>\r\n        </div>  \r\n      </div>', 12, '2020-04-02 11:51:35', '2020-04-02 11:51:35'),
(0, 'banners_3', 1, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> BIG SALE</h2>\r\n        <h4>Women Clothing</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"Shop Now\\\">Shop Now</a>\r\n        </div>  \r\n      </div>', 539, '2020-04-02 11:51:35', '2020-04-02 11:51:35'),
(0, 'banners_1', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 13, '2020-04-02 11:51:35', '2020-04-02 11:51:35'),
(0, 'banners_2', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 12, '2020-04-02 11:51:35', '2020-04-02 11:51:35'),
(0, 'banners_3', 4, '<div class=\\\"parallax-banner-text\\\">\r\n        <h2> حذاء رياضة</h2>\r\n        <h4>أحذية الأزواج</h4>\r\n        <div class=\\\"hover-link\\\">\r\n          <a href=\\\"/shop\\\" class=\\\"btn btn-secondary swipe-to-top\\\" data-toggle=\\\"tooltip\\\" data-placement=\\\"bottom\\\" title=\\\"\\\" data-original-title=\\\"\\\">عرض كل المدى</a>\r\n        </div>  \r\n      </div>', 539, '2020-04-02 11:51:35', '2020-04-02 11:51:35');

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

CREATE TABLE `http_call_record` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'IbHQO10809.jpg', 1, NULL, NULL, NULL),
(3, 'XUF1110211.png', 1, NULL, NULL, NULL),
(4, '0S9Uj10711.png', 1, NULL, NULL, NULL),
(5, '49YbL10411.png', 1, NULL, NULL, NULL),
(6, 'CaFTE08806.png', 1, NULL, NULL, NULL),
(7, 'VMd4l08506.png', 1, NULL, NULL, NULL),
(8, 'VYuRY08406.png', 1, NULL, NULL, NULL),
(9, '6whCt08506.jpg', 1, NULL, NULL, NULL),
(10, 'WJUPV08506.jpg', 1, NULL, NULL, NULL),
(11, 'e7eWv08306.jpg', 1, NULL, NULL, NULL),
(12, 'Yit5K08206.jpg', 1, NULL, NULL, NULL),
(13, 'btHwa08706.jpg', 1, NULL, NULL, NULL),
(14, 'YMYem08206.jpg', 1, NULL, NULL, NULL),
(15, 'UGx6208106.jpg', 1, NULL, NULL, NULL),
(16, 'bxnJY08206.jpg', 1, NULL, NULL, NULL),
(17, 'Lzysd08606.jpg', 1, NULL, NULL, NULL),
(18, 'iOCyM08406.jpg', 1, NULL, NULL, NULL),
(19, 'nKtCS10408.jpg', 1, NULL, NULL, NULL),
(20, '1rpGI10408.jpg', 1, NULL, NULL, NULL),
(21, 'fuZZQ10908.jpg', 1, NULL, NULL, NULL),
(22, 'nFwns10208.jpg', 1, NULL, NULL, NULL),
(23, 'S7egL10508.jpg', 1, NULL, NULL, NULL),
(24, '6HK8810808.jpg', 1, NULL, NULL, NULL),
(25, 'lHhLc10508.jpg', 1, NULL, NULL, NULL),
(26, 'FAQXJ10808.jpg', 1, NULL, NULL, NULL),
(27, 'qeaXb10708.jpg', 1, NULL, NULL, NULL),
(28, 'pc7OR10108.jpg', 1, NULL, NULL, NULL),
(29, '4iGAB10408.jpg', 1, NULL, NULL, NULL),
(30, 'MImPw10908.jpg', 1, NULL, NULL, NULL),
(31, 'X2FFc10408.jpg', 1, NULL, NULL, NULL),
(32, 'RDy6w10209.jpg', 1, NULL, NULL, NULL),
(33, 'BD0pB10609.jpg', 1, NULL, NULL, NULL),
(34, 'TiZmT10609.jpg', 1, NULL, NULL, NULL),
(35, 'gvSzZ10609.jpg', 1, NULL, NULL, NULL),
(36, 'ZskKH10209.jpg', 1, NULL, NULL, NULL),
(37, 'HHMIU10209.jpg', 1, NULL, NULL, NULL),
(38, 'i6m8Y10109.jpg', 1, NULL, NULL, NULL),
(39, 'G5JbM10109.jpg', 1, NULL, NULL, NULL),
(40, 'lDYLZ10109.jpg', 1, NULL, NULL, NULL),
(41, 'a9gid10810.jpg', 1, NULL, NULL, NULL),
(42, 'FBsl810310.jpg', 1, NULL, NULL, NULL),
(43, 'TQHh910310.jpg', 1, NULL, NULL, NULL),
(44, 'KdvHm10610.jpg', 1, NULL, NULL, NULL),
(45, 'CSPTw10810.jpg', 1, NULL, NULL, NULL),
(46, 'w1bCe10710.jpg', 1, NULL, NULL, NULL),
(47, 'Jn03g10811.jpg', 1, NULL, NULL, NULL),
(48, 'UD1eE10411.jpg', 1, NULL, NULL, NULL),
(49, 'nFx9F10711.jpg', 1, NULL, NULL, NULL),
(50, 'ZKyEe10811.jpg', 1, NULL, NULL, NULL),
(51, 'YVab810211.jpg', 1, NULL, NULL, NULL),
(52, 'UJELm10511.jpg', 1, NULL, NULL, NULL),
(53, 'JrqCh10411.jpg', 1, NULL, NULL, NULL),
(54, 'gwULS10411.jpg', 1, NULL, NULL, NULL),
(55, 'PWvbj10711.jpg', 1, NULL, NULL, NULL),
(56, 'mU1fw10111.jpg', 1, NULL, NULL, NULL),
(57, 'sUXLY10711.jpg', 1, NULL, NULL, NULL),
(58, 't2tHr10911.jpg', 1, NULL, NULL, NULL),
(59, 'grG9M10611.jpg', 1, NULL, NULL, NULL),
(60, 'nCUtL10811.jpg', 1, NULL, NULL, NULL),
(61, 'Im3MP10612.jpg', 1, NULL, NULL, NULL),
(62, 'L2KRw10412.jpg', 1, NULL, NULL, NULL),
(63, 'bfwnd10612.jpg', 1, NULL, NULL, NULL),
(64, 'ZGVQ310912.png', 1, NULL, NULL, NULL),
(65, 'IVJos10612.png', 1, NULL, NULL, NULL),
(66, 'K0RzI10912.png', 1, NULL, NULL, NULL),
(67, 'GMndX10212.png', 1, NULL, NULL, NULL),
(68, '92UoU10912.png', 1, NULL, NULL, NULL),
(69, 'R913310312.png', 1, NULL, NULL, NULL),
(70, 'Sq0yK10912.png', 1, NULL, NULL, NULL),
(71, 'Ytqae10412.png', 1, NULL, NULL, NULL),
(72, 'A0KBI10412.png', 1, NULL, NULL, NULL),
(73, 'f5l5x10612.png', 1, NULL, NULL, NULL),
(74, 'T5v1s10612.png', 1, NULL, NULL, NULL),
(75, 'nyisU10112.png', 1, NULL, NULL, NULL),
(76, 'UioPp10612.png', 1, NULL, NULL, NULL),
(77, 'Xx8nL10712.png', 1, NULL, NULL, NULL),
(78, 'iKgxC10712.png', 1, NULL, NULL, NULL),
(79, 'IocF910112.png', 1, NULL, NULL, NULL),
(80, 'X3byA10112.png', 1, NULL, NULL, NULL),
(81, '1o0wF10812.png', 1, NULL, NULL, NULL),
(82, 'VODK910712.png', 1, NULL, NULL, NULL),
(257, 'A1S9C19708.png', 1, NULL, NULL, NULL),
(258, 'IhmdY19708.jpg', 1, NULL, NULL, NULL),
(259, '20nV819208.png', 1, NULL, NULL, NULL),
(260, '3DDqm19808.jpg', 1, NULL, NULL, NULL),
(261, 'Ma53619508.png', 1, NULL, NULL, NULL),
(262, '1N5lx19108.jpg', 1, NULL, NULL, NULL),
(263, 'm67vJ19608.jpg', 1, NULL, NULL, NULL),
(264, 'onxBS19208.png', 1, NULL, NULL, NULL),
(265, 'Epkb419908.png', 1, NULL, NULL, NULL),
(266, 'yq7Uj19908.jpg', 1, NULL, NULL, NULL),
(267, '4Cg3c19608.png', 1, NULL, NULL, NULL),
(268, 'cXJMf19808.jpg', 1, NULL, NULL, NULL),
(269, '0hsWz19508.png', 1, NULL, NULL, NULL),
(270, '0PIiD19808.jpg', 1, NULL, NULL, NULL),
(271, 'ldLJf19208.png', 1, NULL, NULL, NULL),
(272, 'jRHM719108.jpg', 1, NULL, NULL, NULL),
(273, 'I1gzM19408.png', 1, NULL, NULL, NULL),
(274, 'JCyV619708.jpg', 1, NULL, NULL, NULL),
(275, 'HVCxT19108.png', 1, NULL, NULL, NULL),
(276, 'PLELY19408.jpg', 1, NULL, NULL, NULL),
(277, 'BoeDL19408.png', 1, NULL, NULL, NULL),
(278, 'CLmuf19708.jpg', 1, NULL, NULL, NULL),
(279, 'ZVy6T19808.jpg', 1, NULL, NULL, NULL),
(280, 'wYb7s19908.png', 1, NULL, NULL, NULL),
(281, 'XdnOS19308.png', 1, NULL, NULL, NULL),
(282, 'jdXhv19208.jpg', 1, NULL, NULL, NULL),
(283, '4LFTq19608.png', 1, NULL, NULL, NULL),
(284, 'KbJoX19608.jpg', 1, NULL, NULL, NULL),
(285, '3YJgr19308.png', 1, NULL, NULL, NULL),
(286, 'sDlxw19408.jpg', 1, NULL, NULL, NULL),
(287, 'LXeLb19908.jpg', 1, NULL, NULL, NULL),
(288, 'uhwNl19708.jpg', 1, NULL, NULL, NULL),
(289, 'A8tpH19408.jpg', 1, NULL, NULL, NULL),
(290, 'i0ux819508.jpg', 1, NULL, NULL, NULL),
(291, 'WqoFo19208.jpg', 1, NULL, NULL, NULL),
(292, 'AHbI419308.jpg', 1, NULL, NULL, NULL),
(293, 'a455C19308.jpg', 1, NULL, NULL, NULL),
(294, 'wPXR419508.jpg', 1, NULL, NULL, NULL),
(295, 'yiOVx19908.jpg', 1, NULL, NULL, NULL),
(296, 'xoOJv19608.jpg', 1, NULL, NULL, NULL),
(297, 'MfQ4H19108.jpg', 1, NULL, NULL, NULL),
(298, 'Ldxgn19609.jpg', 1, NULL, NULL, NULL),
(299, 'EH8cD19409.jpg', 1, NULL, NULL, NULL),
(300, '9j0ay19709.jpg', 1, NULL, NULL, NULL),
(301, 'pCDlz19109.jpg', 1, NULL, NULL, NULL),
(302, '9xygZ19809.jpg', 1, NULL, NULL, NULL),
(303, 'DSMOD19709.jpg', 1, NULL, NULL, NULL),
(304, 'ORnu519309.jpg', 1, NULL, NULL, NULL),
(305, 'aOtwc19909.jpg', 1, NULL, NULL, NULL),
(306, '6YsTj19909.jpg', 1, NULL, NULL, NULL),
(307, 'mXDLS19409.jpg', 1, NULL, NULL, NULL),
(308, 'OT0oU19309.jpg', 1, NULL, NULL, NULL),
(309, 'dgrQM19109.jpg', 1, NULL, NULL, NULL),
(310, 'pwD0319609.jpg', 1, NULL, NULL, NULL),
(311, 'toR1u19909.jpg', 1, NULL, NULL, NULL),
(312, 'DkrSs19810.jpg', 1, NULL, NULL, NULL),
(313, 'g6Owy19810.jpg', 1, NULL, NULL, NULL),
(314, 'KnBr519710.jpg', 1, NULL, NULL, NULL),
(315, 'TWvJK19410.jpg', 1, NULL, NULL, NULL),
(316, '7LsVG19310.jpg', 1, NULL, NULL, NULL),
(317, 'YLMOh19210.jpg', 1, NULL, NULL, NULL),
(318, '0kXac19210.jpg', 1, NULL, NULL, NULL),
(319, 'tJqpf19810.jpg', 1, NULL, NULL, NULL),
(320, 'WCd6y19910.jpg', 1, NULL, NULL, NULL),
(321, 'O4Zbk19710.jpg', 1, NULL, NULL, NULL),
(322, 'JUSJa19210.jpg', 1, NULL, NULL, NULL),
(323, 'n4Gmy19810.jpg', 1, NULL, NULL, NULL),
(324, '8mjRf19210.jpg', 1, NULL, NULL, NULL),
(325, 'I4Pux19210.jpg', 1, NULL, NULL, NULL),
(326, '0sKGd19310.jpg', 1, NULL, NULL, NULL),
(327, 'l1xuY19110.jpg', 1, NULL, NULL, NULL),
(328, '9LpEr19110.jpg', 1, NULL, NULL, NULL),
(329, 'nsvRx19410.jpg', 1, NULL, NULL, NULL),
(330, '7n3HJ19410.jpg', 1, NULL, NULL, NULL),
(331, 'vx6QW19610.jpg', 1, NULL, NULL, NULL),
(332, 'e8tKu19210.jpg', 1, NULL, NULL, NULL),
(333, 'iDMNz19310.jpg', 1, NULL, NULL, NULL),
(334, 'doDBr19210.jpg', 1, NULL, NULL, NULL),
(335, 'b4lEc19910.jpg', 1, NULL, NULL, NULL),
(336, 'Xwlth19610.jpg', 1, NULL, NULL, NULL),
(337, 'luQnk19210.jpg', 1, NULL, NULL, NULL),
(338, '6h8UU19710.jpg', 1, NULL, NULL, NULL),
(339, 'viEGg19911.jpg', 1, NULL, NULL, NULL),
(340, '2Ggn319911.jpg', 1, NULL, NULL, NULL),
(341, 'm0yNj19911.jpg', 1, NULL, NULL, NULL),
(342, 'Dzd2519111.jpg', 1, NULL, NULL, NULL),
(343, '1ig7319811.jpg', 1, NULL, NULL, NULL),
(344, 'iTQ7j19211.jpg', 1, NULL, NULL, NULL),
(345, 'TSTeu19611.jpg', 1, NULL, NULL, NULL),
(346, '72L9l19911.jpg', 1, NULL, NULL, NULL),
(347, 'mWix319411.jpg', 1, NULL, NULL, NULL),
(348, 'hi3PN19511.jpg', 1, NULL, NULL, NULL),
(349, 'i8sDd19911.jpg', 1, NULL, NULL, NULL),
(350, 'phUDg19511.jpg', 1, NULL, NULL, NULL),
(351, '3jHHY19511.jpg', 1, NULL, NULL, NULL),
(352, '9fyvN19411.jpg', 1, NULL, NULL, NULL),
(353, 'HxGza19611.jpg', 1, NULL, NULL, NULL),
(354, 'nJ44l19411.jpg', 1, NULL, NULL, NULL),
(355, 'nQlqE19511.jpg', 1, NULL, NULL, NULL),
(356, 'swNSy19911.jpg', 1, NULL, NULL, NULL),
(357, 'sMdMm19611.jpg', 1, NULL, NULL, NULL),
(358, 'mr5Yt19211.jpg', 1, NULL, NULL, NULL),
(359, 'cbPj519211.jpg', 1, NULL, NULL, NULL),
(360, 'csgAQ19111.jpg', 1, NULL, NULL, NULL),
(361, 'rfEnb19911.jpg', 1, NULL, NULL, NULL),
(362, '52rY219211.jpg', 1, NULL, NULL, NULL),
(363, 'YvzxH19111.jpg', 1, NULL, NULL, NULL),
(364, '36jAr19511.jpg', 1, NULL, NULL, NULL),
(365, '0Ygma19611.jpg', 1, NULL, NULL, NULL),
(366, 'z3bmL19111.jpg', 1, NULL, NULL, NULL),
(367, 'yPQ6h19111.jpg', 1, NULL, NULL, NULL),
(368, 'I8Kak19711.jpg', 1, NULL, NULL, NULL),
(369, '3P1Yv19211.jpg', 1, NULL, NULL, NULL),
(370, 'FMst219511.jpg', 1, NULL, NULL, NULL),
(371, 'MwDiB19411.jpg', 1, NULL, NULL, NULL),
(372, 'T5YSn19111.jpg', 1, NULL, NULL, NULL),
(373, 'XxPsZ19411.jpg', 1, NULL, NULL, NULL),
(374, 'FCnb919311.jpg', 1, NULL, NULL, NULL),
(375, 'j7Tq119211.jpg', 1, NULL, NULL, NULL),
(376, '2WDAU19811.jpg', 1, NULL, NULL, NULL),
(377, 'JoP4W19611.jpg', 1, NULL, NULL, NULL),
(378, '3MBuE19511.jpg', 1, NULL, NULL, NULL),
(379, '3Z4tF19611.jpg', 1, NULL, NULL, NULL),
(380, 'boehz19211.jpg', 1, NULL, NULL, NULL),
(381, 'nb2iB19311.jpg', 1, NULL, NULL, NULL),
(382, 'N9rcj19811.jpg', 1, NULL, NULL, NULL),
(383, 'qbKF719611.jpg', 1, NULL, NULL, NULL),
(384, 'J2XYc19411.jpg', 1, NULL, NULL, NULL),
(385, 'OAQ7919311.jpg', 1, NULL, NULL, NULL),
(386, 'AHkbG19811.jpg', 1, NULL, NULL, NULL),
(387, 'LRiDA19411.jpg', 1, NULL, NULL, NULL),
(388, 'QWlDN19611.jpg', 1, NULL, NULL, NULL),
(389, 'VEodV19811.jpg', 1, NULL, NULL, NULL),
(390, 'mjyBU19111.jpg', 1, NULL, NULL, NULL),
(391, 'QL8Lj19911.jpg', 1, NULL, NULL, NULL),
(392, 'Ticne19811.jpg', 1, NULL, NULL, NULL),
(393, '1sjR619111.jpg', 1, NULL, NULL, NULL),
(394, 'cv1rs19611.jpg', 1, NULL, NULL, NULL),
(395, 'MVmBl19211.jpg', 1, NULL, NULL, NULL),
(396, 'TLetF19511.jpg', 1, NULL, NULL, NULL),
(397, 'XMnpu19311.jpg', 1, NULL, NULL, NULL),
(398, 'WbV9019511.jpg', 1, NULL, NULL, NULL),
(399, 'U01j519111.jpg', 1, NULL, NULL, NULL),
(400, 'AEP0C19311.jpg', 1, NULL, NULL, NULL),
(401, 'n9FE219911.jpg', 1, NULL, NULL, NULL),
(402, 'CEOYM19611.jpg', 1, NULL, NULL, NULL),
(403, 'VHCwl19811.jpg', 1, NULL, NULL, NULL),
(404, 'dMNk819711.jpg', 1, NULL, NULL, NULL),
(405, '64a7R19711.jpg', 1, NULL, NULL, NULL),
(406, 'v3tvW19111.jpg', 1, NULL, NULL, NULL),
(407, '5PC3y19811.jpg', 1, NULL, NULL, NULL),
(408, 'U3hD619711.jpg', 1, NULL, NULL, NULL),
(409, 'EbCku19411.jpg', 1, NULL, NULL, NULL),
(410, 'kWSbk19511.jpg', 1, NULL, NULL, NULL),
(411, 'LIhLe19311.jpg', 1, NULL, NULL, NULL),
(412, 'K7HHF19111.jpg', 1, NULL, NULL, NULL),
(413, '4sd9A19111.jpg', 1, NULL, NULL, NULL),
(414, 'HmhjH19711.jpg', 1, NULL, NULL, NULL),
(415, 'lCzZV19811.jpg', 1, NULL, NULL, NULL),
(416, 'MgCKq19711.jpg', 1, NULL, NULL, NULL),
(417, 'ol2sB24311.jpg', 1, NULL, NULL, NULL),
(418, 'NySmM24311.jpg', 1, NULL, NULL, NULL),
(419, '5xN6v24411.jpg', 1, NULL, NULL, NULL),
(420, 'CWYQi24511.jpg', 1, NULL, NULL, NULL),
(421, 'laefk24511.jpg', 1, NULL, NULL, NULL),
(422, '6ykQ424511.jpg', 1, NULL, NULL, NULL),
(423, 'BAG2K24312.jpg', 1, NULL, NULL, NULL),
(424, 'wG9GE24612.jpg', 1, NULL, NULL, NULL),
(425, 'iRgnE25611.png', 1, NULL, NULL, NULL),
(426, 'ifpU725811.jpg', 1, NULL, NULL, NULL),
(427, 'rzdmu25612.png', 1, NULL, NULL, NULL),
(428, 'uNZd125612.png', 1, NULL, NULL, NULL),
(430, 'blSUS27710.jpg', 1, NULL, NULL, NULL),
(431, 'vURED27710.jpg', 1, NULL, NULL, NULL),
(432, 'Ft15D27610.jpg', 1, NULL, NULL, NULL),
(433, 'ILNqR27110.jpg', 1, NULL, NULL, NULL),
(434, 'oSENw27310.jpg', 1, NULL, NULL, NULL),
(435, 'g96za27410.jpg', 1, NULL, NULL, NULL),
(436, 'yVA2Q27110.jpg', 1, NULL, NULL, NULL),
(437, 'vDsMN27610.jpg', 1, NULL, NULL, NULL),
(438, 'rL6XQ27310.jpg', 1, NULL, NULL, NULL),
(439, 'A1s7V27110.jpg', 1, NULL, NULL, NULL),
(440, 'mo6Yk27410.jpg', 1, NULL, NULL, NULL),
(441, 'cUhfM27110.jpg', 1, NULL, NULL, NULL),
(442, '8EBLr27610.jpg', 1, NULL, NULL, NULL),
(443, 'c449I27810.jpg', 1, NULL, NULL, NULL),
(444, 'reUJM27310.jpg', 1, NULL, NULL, NULL),
(445, 'ciRFe27710.jpg', 1, NULL, NULL, NULL),
(446, '2nx0h27410.jpg', 1, NULL, NULL, NULL),
(447, 'CLA2s27610.jpg', 1, NULL, NULL, NULL),
(448, 'qotAc27710.jpg', 1, NULL, NULL, NULL),
(449, 'souUX27810.jpg', 1, NULL, NULL, NULL),
(450, 'z3Qtc27512.png', 1, NULL, NULL, NULL),
(451, 'y74yW01108.jpg', 1, NULL, NULL, NULL),
(452, 'gTr9301908.jpg', 1, NULL, NULL, NULL),
(453, '4A9AD01801.jpg', 1, NULL, NULL, NULL),
(454, 'ZPmjN01301.jpg', 1, NULL, NULL, NULL),
(455, 'ypwlO01601.jpg', 1, NULL, NULL, NULL),
(456, 'YAaqM01901.jpg', 1, NULL, NULL, NULL),
(457, 'LTvGM01301.jpg', 1, NULL, NULL, NULL),
(458, '8zBL302407.png', 1, NULL, NULL, NULL),
(459, 'kzLG219201.jpg', 1, NULL, NULL, NULL),
(460, '4wDb519601.jpg', 1, NULL, NULL, NULL),
(461, 'roLuh19801.jpg', 1, NULL, NULL, NULL),
(462, '7OI5e19501.jpg', 1, NULL, NULL, NULL),
(463, 'SHVFB19501.jpg', 1, NULL, NULL, NULL),
(464, 'dn1K219901.jpg', 1, NULL, NULL, NULL),
(495, 'jzm9Z19603.jpg', 1, NULL, NULL, NULL),
(494, 'JiDWS19303.jpg', 1, NULL, NULL, NULL),
(493, 'VXmx319303.jpg', 1, NULL, NULL, NULL),
(492, '7zlLI19903.jpg', 1, NULL, NULL, NULL),
(491, 'U361f19603.jpg', 1, NULL, NULL, NULL),
(490, 'IjJ4x19202.jpg', 1, NULL, NULL, NULL),
(489, 'aqK6Q19402.jpg', 1, NULL, NULL, NULL),
(488, 'Apd1i19902.jpg', 1, NULL, NULL, NULL),
(487, 'e8Uh519302.jpg', 1, NULL, NULL, NULL),
(486, 'sQWL719202.jpg', 1, NULL, NULL, NULL),
(485, 'i0UZO19402.jpg', 1, NULL, NULL, NULL),
(484, 'gt4aI19102.jpg', 1, NULL, NULL, NULL),
(483, 'RE0II19402.jpg', 1, NULL, NULL, NULL),
(496, 'ZGQzk20811.jpg', 1, NULL, NULL, NULL),
(497, 'NpNrm20611.jpg', 1, NULL, NULL, NULL),
(498, 'XPgIC20911.jpg', 1, NULL, NULL, NULL),
(499, 'VmtxP20911.jpg', 1, NULL, NULL, NULL),
(500, 'QAdqa20111.jpg', 1, NULL, NULL, NULL),
(501, 'wQGHA20911.jpg', 1, NULL, NULL, NULL),
(502, 'R0yLD20611.jpg', 1, NULL, NULL, NULL),
(503, 'GKLNM20111.jpg', 1, NULL, NULL, NULL),
(504, 'zm4sn20811.jpg', 1, NULL, NULL, NULL),
(505, 'ug42t20411.jpg', 1, NULL, NULL, NULL),
(506, '21hNs20511.jpg', 1, NULL, NULL, NULL),
(507, 'cgm7r20911.jpg', 1, NULL, NULL, NULL),
(508, 'BdrR320111.jpg', 1, NULL, NULL, NULL),
(509, '228jM20511.jpg', 1, NULL, NULL, NULL),
(510, 'L1lXk20111.jpg', 1, NULL, NULL, NULL),
(511, 'GrSV020311.jpg', 1, NULL, NULL, NULL),
(512, 'gOyKf20211.jpg', 1, NULL, NULL, NULL),
(513, 'fj2pW20711.jpg', 1, NULL, NULL, NULL),
(514, '8pXSd20211.jpg', 1, NULL, NULL, NULL),
(515, 'dMGvd20411.jpg', 1, NULL, NULL, NULL),
(516, '6DbzH20711.jpg', 1, NULL, NULL, NULL),
(517, '2lM7y20211.jpg', 1, NULL, NULL, NULL),
(518, 'kgVrx20811.jpg', 1, NULL, NULL, NULL),
(519, 'XCslh20311.jpg', 1, NULL, NULL, NULL),
(520, '9dgQ020511.jpg', 1, NULL, NULL, NULL),
(521, 'pZ1bH20411.jpg', 1, NULL, NULL, NULL),
(522, 'xl9k720411.jpg', 1, NULL, NULL, NULL),
(523, '7cNGq20711.jpg', 1, NULL, NULL, NULL),
(524, 'qcLGW20311.jpg', 1, NULL, NULL, NULL),
(525, 'uatVd20111.jpg', 1, NULL, NULL, NULL),
(526, '2segQ20911.jpg', 1, NULL, NULL, NULL),
(527, 'dbzAF20511.jpg', 1, NULL, NULL, NULL),
(528, 'ruFRW20511.jpg', 1, NULL, NULL, NULL),
(529, '8qJMb20712.jpg', 1, NULL, NULL, NULL),
(530, '4kD3S20412.jpg', 1, NULL, NULL, NULL),
(531, 'FbFX320512.jpg', 1, NULL, NULL, NULL),
(532, 'xv5F720212.jpg', 1, NULL, NULL, NULL),
(533, 'WDeDC20512.jpg', 1, NULL, NULL, NULL),
(534, '287xt20312.jpg', 1, NULL, NULL, NULL),
(535, 'kp7IT19104.jpg', 1, NULL, NULL, NULL),
(536, 'dYoZ120612.jpg', 1, NULL, NULL, NULL),
(537, 'ianfk25812.png', 1, NULL, NULL, NULL),
(538, 'FuDHg25712.png', 1, NULL, NULL, NULL),
(539, '5t74g02911.jpg', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(1, 1, 'ACTUAL', 20, 30, 'images/media/2019/06/IbHQO10809.jpg', NULL, NULL),
(7, 6, 'ACTUAL', 273, 240, 'images/media/2019/09/CaFTE08806.png', NULL, NULL),
(8, 7, 'ACTUAL', 64, 64, 'images/media/2019/09/VMd4l08506.png', NULL, NULL),
(9, 8, 'ACTUAL', 164, 161, 'images/media/2019/09/VYuRY08406.png', NULL, NULL),
(10, 9, 'ACTUAL', 277, 370, 'images/media/2019/09/6whCt08506.jpg', NULL, NULL),
(11, 10, 'ACTUAL', 277, 370, 'images/media/2019/09/WJUPV08506.jpg', NULL, NULL),
(12, 11, 'ACTUAL', 278, 370, 'images/media/2019/09/e7eWv08306.jpg', NULL, NULL),
(13, 12, 'ACTUAL', 430, 1599, 'images/media/2019/09/Yit5K08206.jpg', NULL, NULL),
(14, 13, 'ACTUAL', 236, 1171, 'images/media/2019/09/btHwa08706.jpg', NULL, NULL),
(15, 14, 'ACTUAL', 177, 369, 'images/media/2019/09/YMYem08206.jpg', NULL, NULL),
(16, 15, 'ACTUAL', 179, 369, 'images/media/2019/09/UGx6208106.jpg', NULL, NULL),
(17, 16, 'ACTUAL', 418, 833, 'images/media/2019/09/bxnJY08206.jpg', NULL, NULL),
(18, 17, 'ACTUAL', 418, 834, 'images/media/2019/09/Lzysd08606.jpg', NULL, NULL),
(19, 18, 'ACTUAL', 418, 834, 'images/media/2019/09/iOCyM08406.jpg', NULL, NULL),
(20, 19, 'ACTUAL', 425, 1600, 'images/media/2019/09/nKtCS10408.jpg', NULL, NULL),
(21, 20, 'ACTUAL', 425, 1600, 'images/media/2019/09/1rpGI10408.jpg', NULL, NULL),
(22, 21, 'ACTUAL', 425, 1600, 'images/media/2019/09/fuZZQ10908.jpg', NULL, NULL),
(23, 22, 'ACTUAL', 421, 1170, 'images/media/2019/09/nFwns10208.jpg', NULL, NULL),
(24, 23, 'ACTUAL', 421, 1170, 'images/media/2019/09/S7egL10508.jpg', NULL, NULL),
(25, 24, 'ACTUAL', 421, 1170, 'images/media/2019/09/6HK8810808.jpg', NULL, NULL),
(26, 25, 'ACTUAL', 418, 833, 'images/media/2019/09/lHhLc10508.jpg', NULL, NULL),
(27, 26, 'ACTUAL', 418, 834, 'images/media/2019/09/FAQXJ10808.jpg', NULL, NULL),
(28, 27, 'ACTUAL', 418, 834, 'images/media/2019/09/qeaXb10708.jpg', NULL, NULL),
(29, 28, 'ACTUAL', 298, 769, 'images/media/2019/09/pc7OR10108.jpg', NULL, NULL),
(30, 29, 'ACTUAL', 548, 370, 'images/media/2019/09/4iGAB10408.jpg', NULL, NULL),
(31, 30, 'ACTUAL', 217, 366, 'images/media/2019/09/MImPw10908.jpg', NULL, NULL),
(32, 31, 'ACTUAL', 217, 366, 'images/media/2019/09/X2FFc10408.jpg', NULL, NULL),
(33, 32, 'ACTUAL', 228, 269, 'images/media/2019/09/RDy6w10209.jpg', NULL, NULL),
(34, 33, 'ACTUAL', 228, 269, 'images/media/2019/09/BD0pB10609.jpg', NULL, NULL),
(35, 34, 'ACTUAL', 228, 268, 'images/media/2019/09/TiZmT10609.jpg', NULL, NULL),
(36, 35, 'ACTUAL', 229, 269, 'images/media/2019/09/gvSzZ10609.jpg', NULL, NULL),
(37, 36, 'ACTUAL', 489, 569, 'images/media/2019/09/ZskKH10209.jpg', NULL, NULL),
(38, 37, 'ACTUAL', 211, 270, 'images/media/2019/09/HHMIU10209.jpg', NULL, NULL),
(39, 38, 'ACTUAL', 452, 571, 'images/media/2019/09/i6m8Y10109.jpg', NULL, NULL),
(40, 39, 'ACTUAL', 211, 270, 'images/media/2019/09/G5JbM10109.jpg', NULL, NULL),
(41, 40, 'ACTUAL', 211, 570, 'images/media/2019/09/lDYLZ10109.jpg', NULL, NULL),
(42, 41, 'ACTUAL', 297, 568, 'images/media/2019/09/a9gid10810.jpg', NULL, NULL),
(43, 42, 'ACTUAL', 298, 567, 'images/media/2019/09/FBsl810310.jpg', NULL, NULL),
(44, 43, 'ACTUAL', 211, 270, 'images/media/2019/09/TQHh910310.jpg', NULL, NULL),
(45, 44, 'ACTUAL', 451, 570, 'images/media/2019/09/KdvHm10610.jpg', NULL, NULL),
(46, 45, 'ACTUAL', 210, 270, 'images/media/2019/09/CSPTw10810.jpg', NULL, NULL),
(47, 46, 'ACTUAL', 451, 270, 'images/media/2019/09/w1bCe10710.jpg', NULL, NULL),
(48, 47, 'ACTUAL', 490, 370, 'images/media/2019/09/Jn03g10811.jpg', NULL, NULL),
(49, 48, 'ACTUAL', 230, 370, 'images/media/2019/09/UD1eE10411.jpg', NULL, NULL),
(50, 49, 'ACTUAL', 230, 370, 'images/media/2019/09/nFx9F10711.jpg', NULL, NULL),
(51, 50, 'ACTUAL', 230, 370, 'images/media/2019/09/ZKyEe10811.jpg', NULL, NULL),
(52, 51, 'ACTUAL', 230, 370, 'images/media/2019/09/YVab810211.jpg', NULL, NULL),
(53, 52, 'ACTUAL', 259, 770, 'images/media/2019/09/UJELm10511.jpg', NULL, NULL),
(54, 53, 'ACTUAL', 258, 770, 'images/media/2019/09/JrqCh10411.jpg', NULL, NULL),
(55, 54, 'ACTUAL', 547, 370, 'images/media/2019/09/gwULS10411.jpg', NULL, NULL),
(56, 55, 'ACTUAL', 208, 465, 'images/media/2019/09/PWvbj10711.jpg', NULL, NULL),
(57, 56, 'ACTUAL', 208, 465, 'images/media/2019/09/mU1fw10111.jpg', NULL, NULL),
(58, 57, 'ACTUAL', 210, 270, 'images/media/2019/09/sUXLY10711.jpg', NULL, NULL),
(59, 58, 'ACTUAL', 210, 270, 'images/media/2019/09/t2tHr10911.jpg', NULL, NULL),
(60, 59, 'ACTUAL', 210, 370, 'images/media/2019/09/grG9M10611.jpg', NULL, NULL),
(61, 60, 'ACTUAL', 210, 370, 'images/media/2019/09/nCUtL10811.jpg', NULL, NULL),
(62, 61, 'ACTUAL', 418, 885, 'images/media/2019/09/Im3MP10612.jpg', NULL, NULL),
(63, 62, 'ACTUAL', 418, 885, 'images/media/2019/09/L2KRw10412.jpg', NULL, NULL),
(64, 63, 'ACTUAL', 418, 885, 'images/media/2019/09/bfwnd10612.jpg', NULL, NULL),
(65, 64, 'ACTUAL', 64, 64, 'images/media/2019/09/ZGVQ310912.png', NULL, NULL),
(66, 65, 'ACTUAL', 64, 64, 'images/media/2019/09/IVJos10612.png', NULL, NULL),
(67, 66, 'ACTUAL', 64, 64, 'images/media/2019/09/K0RzI10912.png', NULL, NULL),
(68, 67, 'ACTUAL', 64, 64, 'images/media/2019/09/GMndX10212.png', NULL, NULL),
(69, 68, 'ACTUAL', 64, 64, 'images/media/2019/09/92UoU10912.png', NULL, NULL),
(70, 69, 'ACTUAL', 64, 64, 'images/media/2019/09/R913310312.png', NULL, NULL),
(71, 70, 'ACTUAL', 64, 64, 'images/media/2019/09/Sq0yK10912.png', NULL, NULL),
(72, 71, 'ACTUAL', 64, 64, 'images/media/2019/09/Ytqae10412.png', NULL, NULL),
(73, 72, 'ACTUAL', 64, 64, 'images/media/2019/09/A0KBI10412.png', NULL, NULL),
(74, 73, 'ACTUAL', 64, 64, 'images/media/2019/09/f5l5x10612.png', NULL, NULL),
(75, 74, 'ACTUAL', 273, 240, 'images/media/2019/09/T5v1s10612.png', NULL, NULL),
(76, 75, 'ACTUAL', 273, 240, 'images/media/2019/09/nyisU10112.png', NULL, NULL),
(77, 76, 'ACTUAL', 273, 240, 'images/media/2019/09/UioPp10612.png', NULL, NULL),
(78, 77, 'ACTUAL', 273, 240, 'images/media/2019/09/Xx8nL10712.png', NULL, NULL),
(79, 78, 'ACTUAL', 273, 240, 'images/media/2019/09/iKgxC10712.png', NULL, NULL),
(80, 79, 'ACTUAL', 273, 240, 'images/media/2019/09/IocF910112.png', NULL, NULL),
(81, 80, 'ACTUAL', 273, 240, 'images/media/2019/09/X3byA10112.png', NULL, NULL),
(82, 81, 'ACTUAL', 273, 240, 'images/media/2019/09/1o0wF10812.png', NULL, NULL),
(83, 82, 'ACTUAL', 273, 240, 'images/media/2019/09/VODK910712.png', NULL, NULL),
(258, 257, 'ACTUAL', 64, 64, 'images/media/2019/09/A1S9C19708.png', NULL, NULL),
(259, 258, 'ACTUAL', 284, 250, 'images/media/2019/09/IhmdY19708.jpg', NULL, NULL),
(260, 259, 'ACTUAL', 64, 64, 'images/media/2019/09/20nV819208.png', NULL, NULL),
(261, 260, 'ACTUAL', 284, 250, 'images/media/2019/09/3DDqm19808.jpg', NULL, NULL),
(262, 261, 'ACTUAL', 64, 64, 'images/media/2019/09/Ma53619508.png', NULL, NULL),
(263, 262, 'ACTUAL', 284, 250, 'images/media/2019/09/1N5lx19108.jpg', NULL, NULL),
(264, 263, 'ACTUAL', 284, 250, 'images/media/2019/09/m67vJ19608.jpg', NULL, NULL),
(265, 264, 'ACTUAL', 64, 64, 'images/media/2019/09/onxBS19208.png', NULL, NULL),
(266, 265, 'ACTUAL', 64, 64, 'images/media/2019/09/Epkb419908.png', NULL, NULL),
(267, 266, 'ACTUAL', 284, 250, 'images/media/2019/09/yq7Uj19908.jpg', NULL, NULL),
(268, 267, 'ACTUAL', 64, 64, 'images/media/2019/09/4Cg3c19608.png', NULL, NULL),
(269, 268, 'ACTUAL', 284, 250, 'images/media/2019/09/cXJMf19808.jpg', NULL, NULL),
(270, 269, 'ACTUAL', 64, 64, 'images/media/2019/09/0hsWz19508.png', NULL, NULL),
(271, 270, 'ACTUAL', 284, 250, 'images/media/2019/09/0PIiD19808.jpg', NULL, NULL),
(272, 271, 'ACTUAL', 64, 64, 'images/media/2019/09/ldLJf19208.png', NULL, NULL),
(273, 272, 'ACTUAL', 284, 250, 'images/media/2019/09/jRHM719108.jpg', NULL, NULL),
(274, 273, 'ACTUAL', 64, 64, 'images/media/2019/09/I1gzM19408.png', NULL, NULL),
(275, 274, 'ACTUAL', 284, 250, 'images/media/2019/09/JCyV619708.jpg', NULL, NULL),
(276, 275, 'ACTUAL', 64, 64, 'images/media/2019/09/HVCxT19108.png', NULL, NULL),
(277, 276, 'ACTUAL', 284, 250, 'images/media/2019/09/PLELY19408.jpg', NULL, NULL),
(278, 277, 'ACTUAL', 64, 64, 'images/media/2019/09/BoeDL19408.png', NULL, NULL),
(279, 278, 'ACTUAL', 284, 250, 'images/media/2019/09/CLmuf19708.jpg', NULL, NULL),
(280, 279, 'ACTUAL', 284, 250, 'images/media/2019/09/ZVy6T19808.jpg', NULL, NULL),
(281, 280, 'ACTUAL', 64, 64, 'images/media/2019/09/wYb7s19908.png', NULL, NULL),
(282, 281, 'ACTUAL', 64, 64, 'images/media/2019/09/XdnOS19308.png', NULL, NULL),
(283, 282, 'ACTUAL', 284, 250, 'images/media/2019/09/jdXhv19208.jpg', NULL, NULL),
(284, 283, 'ACTUAL', 64, 64, 'images/media/2019/09/4LFTq19608.png', NULL, NULL),
(285, 284, 'ACTUAL', 284, 250, 'images/media/2019/09/KbJoX19608.jpg', NULL, NULL),
(286, 285, 'ACTUAL', 64, 64, 'images/media/2019/09/3YJgr19308.png', NULL, NULL),
(287, 286, 'ACTUAL', 284, 250, 'images/media/2019/09/sDlxw19408.jpg', NULL, NULL),
(288, 287, 'ACTUAL', 1024, 1024, 'images/media/2019/09/LXeLb19908.jpg', NULL, NULL),
(289, 288, 'ACTUAL', 1024, 1024, 'images/media/2019/09/uhwNl19708.jpg', NULL, NULL),
(290, 289, 'ACTUAL', 1024, 1024, 'images/media/2019/09/A8tpH19408.jpg', NULL, NULL),
(291, 290, 'ACTUAL', 1024, 1024, 'images/media/2019/09/i0ux819508.jpg', NULL, NULL),
(292, 291, 'ACTUAL', 1024, 1024, 'images/media/2019/09/WqoFo19208.jpg', NULL, NULL),
(293, 292, 'ACTUAL', 1024, 1024, 'images/media/2019/09/AHbI419308.jpg', NULL, NULL),
(294, 293, 'ACTUAL', 1024, 1024, 'images/media/2019/09/a455C19308.jpg', NULL, NULL),
(295, 294, 'ACTUAL', 1024, 1024, 'images/media/2019/09/wPXR419508.jpg', NULL, NULL),
(296, 295, 'ACTUAL', 1024, 1024, 'images/media/2019/09/yiOVx19908.jpg', NULL, NULL),
(297, 296, 'ACTUAL', 1024, 1024, 'images/media/2019/09/xoOJv19608.jpg', NULL, NULL),
(298, 297, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MfQ4H19108.jpg', NULL, NULL),
(299, 298, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Ldxgn19609.jpg', NULL, NULL),
(300, 299, 'ACTUAL', 1024, 1024, 'images/media/2019/09/EH8cD19409.jpg', NULL, NULL),
(301, 300, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9j0ay19709.jpg', NULL, NULL),
(302, 301, 'ACTUAL', 1024, 1024, 'images/media/2019/09/pCDlz19109.jpg', NULL, NULL),
(303, 302, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9xygZ19809.jpg', NULL, NULL),
(304, 303, 'ACTUAL', 1024, 1024, 'images/media/2019/09/DSMOD19709.jpg', NULL, NULL),
(305, 304, 'ACTUAL', 1024, 1024, 'images/media/2019/09/ORnu519309.jpg', NULL, NULL),
(306, 305, 'ACTUAL', 1024, 1024, 'images/media/2019/09/aOtwc19909.jpg', NULL, NULL),
(307, 306, 'ACTUAL', 1024, 1024, 'images/media/2019/09/6YsTj19909.jpg', NULL, NULL),
(308, 307, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mXDLS19409.jpg', NULL, NULL),
(309, 308, 'ACTUAL', 1024, 1024, 'images/media/2019/09/OT0oU19309.jpg', NULL, NULL),
(310, 309, 'ACTUAL', 1024, 1024, 'images/media/2019/09/dgrQM19109.jpg', NULL, NULL),
(311, 310, 'ACTUAL', 1024, 1024, 'images/media/2019/09/pwD0319609.jpg', NULL, NULL),
(312, 311, 'ACTUAL', 1024, 1024, 'images/media/2019/09/toR1u19909.jpg', NULL, NULL),
(313, 312, 'ACTUAL', 1024, 1024, 'images/media/2019/09/DkrSs19810.jpg', NULL, NULL),
(314, 313, 'ACTUAL', 1024, 1024, 'images/media/2019/09/g6Owy19810.jpg', NULL, NULL),
(315, 314, 'ACTUAL', 1024, 1024, 'images/media/2019/09/KnBr519710.jpg', NULL, NULL),
(316, 315, 'ACTUAL', 1024, 1024, 'images/media/2019/09/TWvJK19410.jpg', NULL, NULL),
(317, 316, 'ACTUAL', 1024, 1024, 'images/media/2019/09/7LsVG19310.jpg', NULL, NULL),
(318, 317, 'ACTUAL', 1024, 1024, 'images/media/2019/09/YLMOh19210.jpg', NULL, NULL),
(319, 318, 'ACTUAL', 1024, 1024, 'images/media/2019/09/0kXac19210.jpg', NULL, NULL),
(320, 319, 'ACTUAL', 1024, 1024, 'images/media/2019/09/tJqpf19810.jpg', NULL, NULL),
(321, 320, 'ACTUAL', 1024, 1024, 'images/media/2019/09/WCd6y19910.jpg', NULL, NULL),
(322, 321, 'ACTUAL', 1024, 1024, 'images/media/2019/09/O4Zbk19710.jpg', NULL, NULL),
(323, 322, 'ACTUAL', 1024, 1024, 'images/media/2019/09/JUSJa19210.jpg', NULL, NULL),
(324, 323, 'ACTUAL', 1024, 1024, 'images/media/2019/09/n4Gmy19810.jpg', NULL, NULL),
(325, 324, 'ACTUAL', 1024, 1024, 'images/media/2019/09/8mjRf19210.jpg', NULL, NULL),
(326, 325, 'ACTUAL', 1024, 1024, 'images/media/2019/09/I4Pux19210.jpg', NULL, NULL),
(327, 326, 'ACTUAL', 1024, 1024, 'images/media/2019/09/0sKGd19310.jpg', NULL, NULL),
(328, 327, 'ACTUAL', 1024, 1024, 'images/media/2019/09/l1xuY19110.jpg', NULL, NULL),
(329, 328, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9LpEr19110.jpg', NULL, NULL),
(330, 329, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nsvRx19410.jpg', NULL, NULL),
(331, 330, 'ACTUAL', 1024, 1024, 'images/media/2019/09/7n3HJ19410.jpg', NULL, NULL),
(332, 331, 'ACTUAL', 1024, 1024, 'images/media/2019/09/vx6QW19610.jpg', NULL, NULL),
(333, 332, 'ACTUAL', 1024, 1024, 'images/media/2019/09/e8tKu19210.jpg', NULL, NULL),
(334, 333, 'ACTUAL', 1024, 1024, 'images/media/2019/09/iDMNz19310.jpg', NULL, NULL),
(335, 334, 'ACTUAL', 1024, 1024, 'images/media/2019/09/doDBr19210.jpg', NULL, NULL),
(336, 335, 'ACTUAL', 1024, 1024, 'images/media/2019/09/b4lEc19910.jpg', NULL, NULL),
(337, 336, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Xwlth19610.jpg', NULL, NULL),
(338, 337, 'ACTUAL', 1024, 1024, 'images/media/2019/09/luQnk19210.jpg', NULL, NULL),
(339, 338, 'ACTUAL', 1024, 1024, 'images/media/2019/09/6h8UU19710.jpg', NULL, NULL),
(340, 339, 'ACTUAL', 1024, 1024, 'images/media/2019/09/viEGg19911.jpg', NULL, NULL),
(341, 340, 'ACTUAL', 1024, 1024, 'images/media/2019/09/2Ggn319911.jpg', NULL, NULL),
(342, 341, 'ACTUAL', 1024, 1024, 'images/media/2019/09/m0yNj19911.jpg', NULL, NULL),
(343, 342, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Dzd2519111.jpg', NULL, NULL),
(344, 343, 'ACTUAL', 1024, 1024, 'images/media/2019/09/1ig7319811.jpg', NULL, NULL),
(345, 344, 'ACTUAL', 1024, 1024, 'images/media/2019/09/iTQ7j19211.jpg', NULL, NULL),
(346, 345, 'ACTUAL', 1024, 1024, 'images/media/2019/09/TSTeu19611.jpg', NULL, NULL),
(347, 346, 'ACTUAL', 1024, 1024, 'images/media/2019/09/72L9l19911.jpg', NULL, NULL),
(348, 347, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mWix319411.jpg', NULL, NULL),
(349, 348, 'ACTUAL', 1024, 1024, 'images/media/2019/09/hi3PN19511.jpg', NULL, NULL),
(350, 349, 'ACTUAL', 1024, 1024, 'images/media/2019/09/i8sDd19911.jpg', NULL, NULL),
(351, 350, 'ACTUAL', 1024, 1024, 'images/media/2019/09/phUDg19511.jpg', NULL, NULL),
(352, 351, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3jHHY19511.jpg', NULL, NULL),
(353, 352, 'ACTUAL', 1024, 1024, 'images/media/2019/09/9fyvN19411.jpg', NULL, NULL),
(354, 353, 'ACTUAL', 1024, 1024, 'images/media/2019/09/HxGza19611.jpg', NULL, NULL),
(355, 354, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nJ44l19411.jpg', NULL, NULL),
(356, 355, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nQlqE19511.jpg', NULL, NULL),
(357, 356, 'ACTUAL', 1024, 1024, 'images/media/2019/09/swNSy19911.jpg', NULL, NULL),
(358, 357, 'ACTUAL', 1024, 1024, 'images/media/2019/09/sMdMm19611.jpg', NULL, NULL),
(359, 358, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mr5Yt19211.jpg', NULL, NULL),
(360, 359, 'ACTUAL', 1024, 1024, 'images/media/2019/09/cbPj519211.jpg', NULL, NULL),
(361, 360, 'ACTUAL', 1024, 1024, 'images/media/2019/09/csgAQ19111.jpg', NULL, NULL),
(362, 361, 'ACTUAL', 1024, 1024, 'images/media/2019/09/rfEnb19911.jpg', NULL, NULL),
(363, 362, 'ACTUAL', 1024, 1024, 'images/media/2019/09/52rY219211.jpg', NULL, NULL),
(364, 363, 'ACTUAL', 1024, 1024, 'images/media/2019/09/YvzxH19111.jpg', NULL, NULL),
(365, 364, 'ACTUAL', 1024, 1024, 'images/media/2019/09/36jAr19511.jpg', NULL, NULL),
(366, 365, 'ACTUAL', 1024, 1024, 'images/media/2019/09/0Ygma19611.jpg', NULL, NULL),
(367, 366, 'ACTUAL', 1024, 1024, 'images/media/2019/09/z3bmL19111.jpg', NULL, NULL),
(368, 367, 'ACTUAL', 1024, 1024, 'images/media/2019/09/yPQ6h19111.jpg', NULL, NULL),
(369, 368, 'ACTUAL', 1024, 1024, 'images/media/2019/09/I8Kak19711.jpg', NULL, NULL),
(370, 369, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3P1Yv19211.jpg', NULL, NULL),
(371, 370, 'ACTUAL', 1024, 1024, 'images/media/2019/09/FMst219511.jpg', NULL, NULL),
(372, 371, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MwDiB19411.jpg', NULL, NULL),
(373, 372, 'ACTUAL', 1024, 1024, 'images/media/2019/09/T5YSn19111.jpg', NULL, NULL),
(374, 373, 'ACTUAL', 1024, 1024, 'images/media/2019/09/XxPsZ19411.jpg', NULL, NULL),
(375, 374, 'ACTUAL', 1024, 1024, 'images/media/2019/09/FCnb919311.jpg', NULL, NULL),
(376, 375, 'ACTUAL', 1024, 1024, 'images/media/2019/09/j7Tq119211.jpg', NULL, NULL),
(377, 376, 'ACTUAL', 1024, 1024, 'images/media/2019/09/2WDAU19811.jpg', NULL, NULL),
(378, 377, 'ACTUAL', 1024, 1024, 'images/media/2019/09/JoP4W19611.jpg', NULL, NULL),
(379, 378, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3MBuE19511.jpg', NULL, NULL),
(380, 379, 'ACTUAL', 1024, 1024, 'images/media/2019/09/3Z4tF19611.jpg', NULL, NULL),
(381, 380, 'ACTUAL', 1024, 1024, 'images/media/2019/09/boehz19211.jpg', NULL, NULL),
(382, 381, 'ACTUAL', 1024, 1024, 'images/media/2019/09/nb2iB19311.jpg', NULL, NULL),
(383, 382, 'ACTUAL', 1024, 1024, 'images/media/2019/09/N9rcj19811.jpg', NULL, NULL),
(384, 383, 'ACTUAL', 1024, 1024, 'images/media/2019/09/qbKF719611.jpg', NULL, NULL),
(385, 384, 'ACTUAL', 1024, 1024, 'images/media/2019/09/J2XYc19411.jpg', NULL, NULL),
(386, 385, 'ACTUAL', 1024, 1024, 'images/media/2019/09/OAQ7919311.jpg', NULL, NULL),
(387, 386, 'ACTUAL', 1024, 1024, 'images/media/2019/09/AHkbG19811.jpg', NULL, NULL),
(388, 387, 'ACTUAL', 1024, 1024, 'images/media/2019/09/LRiDA19411.jpg', NULL, NULL),
(389, 388, 'ACTUAL', 1024, 1024, 'images/media/2019/09/QWlDN19611.jpg', NULL, NULL),
(390, 389, 'ACTUAL', 1024, 1024, 'images/media/2019/09/VEodV19811.jpg', NULL, NULL),
(391, 390, 'ACTUAL', 1024, 1024, 'images/media/2019/09/mjyBU19111.jpg', NULL, NULL),
(392, 391, 'ACTUAL', 1024, 1024, 'images/media/2019/09/QL8Lj19911.jpg', NULL, NULL),
(393, 392, 'ACTUAL', 1024, 1024, 'images/media/2019/09/Ticne19811.jpg', NULL, NULL),
(394, 393, 'ACTUAL', 1024, 1024, 'images/media/2019/09/1sjR619111.jpg', NULL, NULL),
(395, 394, 'ACTUAL', 1024, 1024, 'images/media/2019/09/cv1rs19611.jpg', NULL, NULL),
(396, 395, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MVmBl19211.jpg', NULL, NULL),
(397, 396, 'ACTUAL', 1024, 1024, 'images/media/2019/09/TLetF19511.jpg', NULL, NULL),
(398, 397, 'ACTUAL', 1024, 1024, 'images/media/2019/09/XMnpu19311.jpg', NULL, NULL),
(399, 398, 'ACTUAL', 1024, 1024, 'images/media/2019/09/WbV9019511.jpg', NULL, NULL),
(400, 399, 'ACTUAL', 1024, 1024, 'images/media/2019/09/U01j519111.jpg', NULL, NULL),
(401, 400, 'ACTUAL', 1024, 1024, 'images/media/2019/09/AEP0C19311.jpg', NULL, NULL),
(402, 401, 'ACTUAL', 1024, 1024, 'images/media/2019/09/n9FE219911.jpg', NULL, NULL),
(403, 402, 'ACTUAL', 1024, 1024, 'images/media/2019/09/CEOYM19611.jpg', NULL, NULL),
(404, 403, 'ACTUAL', 1024, 1024, 'images/media/2019/09/VHCwl19811.jpg', NULL, NULL),
(405, 404, 'ACTUAL', 1024, 1024, 'images/media/2019/09/dMNk819711.jpg', NULL, NULL),
(406, 405, 'ACTUAL', 1024, 1024, 'images/media/2019/09/64a7R19711.jpg', NULL, NULL),
(407, 406, 'ACTUAL', 1024, 1024, 'images/media/2019/09/v3tvW19111.jpg', NULL, NULL),
(408, 407, 'ACTUAL', 1024, 1024, 'images/media/2019/09/5PC3y19811.jpg', NULL, NULL),
(409, 408, 'ACTUAL', 1024, 1024, 'images/media/2019/09/U3hD619711.jpg', NULL, NULL),
(410, 409, 'ACTUAL', 1024, 1024, 'images/media/2019/09/EbCku19411.jpg', NULL, NULL),
(411, 410, 'ACTUAL', 1024, 1024, 'images/media/2019/09/kWSbk19511.jpg', NULL, NULL),
(412, 411, 'ACTUAL', 1024, 1024, 'images/media/2019/09/LIhLe19311.jpg', NULL, NULL),
(413, 412, 'ACTUAL', 1024, 1024, 'images/media/2019/09/K7HHF19111.jpg', NULL, NULL),
(414, 413, 'ACTUAL', 1024, 1024, 'images/media/2019/09/4sd9A19111.jpg', NULL, NULL),
(415, 414, 'ACTUAL', 1024, 1024, 'images/media/2019/09/HmhjH19711.jpg', NULL, NULL),
(416, 415, 'ACTUAL', 1024, 1024, 'images/media/2019/09/lCzZV19811.jpg', NULL, NULL),
(417, 416, 'ACTUAL', 1024, 1024, 'images/media/2019/09/MgCKq19711.jpg', NULL, NULL),
(418, 417, 'ACTUAL', 1024, 1024, 'images/media/2019/09/ol2sB24311.jpg', NULL, NULL),
(419, 418, 'ACTUAL', 1024, 1024, 'images/media/2019/09/NySmM24311.jpg', NULL, NULL),
(420, 419, 'ACTUAL', 1024, 1024, 'images/media/2019/09/5xN6v24411.jpg', NULL, NULL),
(421, 420, 'ACTUAL', 1024, 1024, 'images/media/2019/09/CWYQi24511.jpg', NULL, NULL),
(422, 421, 'ACTUAL', 1024, 1024, 'images/media/2019/09/laefk24511.jpg', NULL, NULL),
(423, 422, 'ACTUAL', 1024, 1024, 'images/media/2019/09/6ykQ424511.jpg', NULL, NULL),
(424, 423, 'ACTUAL', 1024, 1024, 'images/media/2019/09/BAG2K24312.jpg', NULL, NULL),
(425, 424, 'ACTUAL', 1024, 1024, 'images/media/2019/09/wG9GE24612.jpg', NULL, NULL),
(426, 425, 'ACTUAL', 64, 64, 'images/media/2019/09/iRgnE25611.png', NULL, NULL),
(427, 426, 'ACTUAL', 284, 250, 'images/media/2019/09/ifpU725811.jpg', NULL, NULL),
(428, 427, 'ACTUAL', 768, 1366, 'images/media/2019/09/rzdmu25612.png', NULL, NULL),
(429, 428, 'ACTUAL', 768, 1366, 'images/media/2019/09/uNZd125612.png', NULL, NULL),
(431, 430, 'ACTUAL', 421, 1170, 'images/media/2019/09/blSUS27710.jpg', NULL, NULL),
(432, 431, 'ACTUAL', 421, 1170, 'images/media/2019/09/vURED27710.jpg', NULL, NULL),
(433, 432, 'ACTUAL', 421, 1170, 'images/media/2019/09/Ft15D27610.jpg', NULL, NULL),
(434, 433, 'ACTUAL', 421, 1600, 'images/media/2019/09/ILNqR27110.jpg', NULL, NULL),
(435, 434, 'ACTUAL', 421, 1600, 'images/media/2019/09/oSENw27310.jpg', NULL, NULL),
(436, 435, 'ACTUAL', 421, 1600, 'images/media/2019/09/g96za27410.jpg', NULL, NULL),
(437, 436, 'ACTUAL', 387, 770, 'images/media/2019/09/yVA2Q27110.jpg', NULL, NULL),
(438, 437, 'ACTUAL', 387, 770, 'images/media/2019/09/vDsMN27610.jpg', NULL, NULL),
(439, 438, 'ACTUAL', 387, 770, 'images/media/2019/09/rL6XQ27310.jpg', NULL, NULL),
(440, 439, 'ACTUAL', 418, 885, 'images/media/2019/09/A1s7V27110.jpg', NULL, NULL),
(441, 440, 'ACTUAL', 418, 885, 'images/media/2019/09/mo6Yk27410.jpg', NULL, NULL),
(442, 441, 'ACTUAL', 418, 885, 'images/media/2019/09/cUhfM27110.jpg', NULL, NULL),
(443, 442, 'ACTUAL', 179, 370, 'images/media/2019/09/8EBLr27610.jpg', NULL, NULL),
(444, 443, 'ACTUAL', 179, 370, 'images/media/2019/09/c449I27810.jpg', NULL, NULL),
(445, 444, 'ACTUAL', 277, 370, 'images/media/2019/09/reUJM27310.jpg', NULL, NULL),
(446, 445, 'ACTUAL', 277, 370, 'images/media/2019/09/ciRFe27710.jpg', NULL, NULL),
(447, 446, 'ACTUAL', 277, 370, 'images/media/2019/09/2nx0h27410.jpg', NULL, NULL),
(448, 447, 'ACTUAL', 240, 370, 'images/media/2019/09/CLA2s27610.jpg', NULL, NULL),
(449, 448, 'ACTUAL', 240, 370, 'images/media/2019/09/qotAc27710.jpg', NULL, NULL),
(450, 449, 'ACTUAL', 240, 370, 'images/media/2019/09/souUX27810.jpg', NULL, NULL),
(451, 450, 'ACTUAL', 270, 693, 'images/media/2019/09/z3Qtc27512.png', NULL, NULL),
(452, 451, 'ACTUAL', 446, 728, 'images/media/2019/10/y74yW01108.jpg', NULL, NULL),
(453, 452, 'ACTUAL', 20, 30, 'images/media/2019/10/gTr9301908.jpg', NULL, NULL),
(454, 453, 'ACTUAL', 421, 1600, 'images/media/2019/10/4A9AD01801.jpg', NULL, NULL),
(455, 454, 'ACTUAL', 421, 1600, 'images/media/2019/10/ZPmjN01301.jpg', NULL, NULL),
(456, 455, 'ACTUAL', 421, 1600, 'images/media/2019/10/ypwlO01601.jpg', NULL, NULL),
(457, 456, 'ACTUAL', 220, 370, 'images/media/2019/10/YAaqM01901.jpg', NULL, NULL),
(458, 457, 'ACTUAL', 220, 370, 'images/media/2019/10/LTvGM01301.jpg', NULL, NULL),
(459, 458, 'ACTUAL', 512, 512, 'images/media/2019/10/8zBL302407.png', NULL, NULL),
(460, 459, 'ACTUAL', 425, 1600, 'images/media/2020/02/kzLG219201.jpg', NULL, NULL),
(461, 460, 'ACTUAL', 425, 1600, 'images/media/2020/02/4wDb519601.jpg', NULL, NULL),
(462, 459, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail1582120480kzLG219201.jpg', NULL, NULL),
(463, 460, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail15821204804wDb519601.jpg', NULL, NULL),
(464, 459, 'MEDIUM', 106, 400, 'images/media/2020/02/medium1582120480kzLG219201.jpg', NULL, NULL),
(465, 460, 'MEDIUM', 106, 400, 'images/media/2020/02/medium15821204804wDb519601.jpg', NULL, NULL),
(466, 459, 'LARGE', 239, 900, 'images/media/2020/02/large1582120480kzLG219201.jpg', NULL, NULL),
(467, 460, 'LARGE', 239, 900, 'images/media/2020/02/large15821204804wDb519601.jpg', NULL, NULL),
(468, 461, 'ACTUAL', 425, 1600, 'images/media/2020/02/roLuh19801.jpg', NULL, NULL),
(469, 461, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail1582120482roLuh19801.jpg', NULL, NULL),
(470, 461, 'MEDIUM', 106, 400, 'images/media/2020/02/medium1582120482roLuh19801.jpg', NULL, NULL),
(471, 461, 'LARGE', 239, 900, 'images/media/2020/02/large1582120482roLuh19801.jpg', NULL, NULL),
(472, 462, 'ACTUAL', 421, 1170, 'images/media/2020/02/7OI5e19501.jpg', NULL, NULL),
(473, 462, 'THUMBNAIL', 54, 150, 'images/media/2020/02/thumbnail15821204927OI5e19501.jpg', NULL, NULL),
(474, 462, 'MEDIUM', 144, 400, 'images/media/2020/02/medium15821204937OI5e19501.jpg', NULL, NULL),
(475, 462, 'LARGE', 324, 900, 'images/media/2020/02/large15821204937OI5e19501.jpg', NULL, NULL),
(476, 463, 'ACTUAL', 421, 1170, 'images/media/2020/02/SHVFB19501.jpg', NULL, NULL),
(477, 463, 'THUMBNAIL', 54, 150, 'images/media/2020/02/thumbnail1582120493SHVFB19501.jpg', NULL, NULL),
(478, 463, 'MEDIUM', 144, 400, 'images/media/2020/02/medium1582120494SHVFB19501.jpg', NULL, NULL),
(479, 463, 'LARGE', 324, 900, 'images/media/2020/02/large1582120494SHVFB19501.jpg', NULL, NULL),
(480, 464, 'ACTUAL', 421, 1170, 'images/media/2020/02/dn1K219901.jpg', NULL, NULL),
(481, 464, 'THUMBNAIL', 54, 150, 'images/media/2020/02/thumbnail1582120496dn1K219901.jpg', NULL, NULL),
(482, 464, 'MEDIUM', 144, 400, 'images/media/2020/02/medium1582120496dn1K219901.jpg', NULL, NULL),
(483, 464, 'LARGE', 324, 900, 'images/media/2020/02/large1582120496dn1K219901.jpg', NULL, NULL),
(559, 494, 'ACTUAL', 418, 833, 'images/media/2020/02/JiDWS19303.jpg', NULL, NULL),
(558, 493, 'ACTUAL', 418, 834, 'images/media/2020/02/VXmx319303.jpg', NULL, NULL),
(557, 492, 'THUMBNAIL', 72, 150, 'images/media/2020/02/thumbnail15821245307zlLI19903.jpg', NULL, NULL),
(556, 491, 'THUMBNAIL', 73, 150, 'images/media/2020/02/thumbnail1582124530U361f19603.jpg', NULL, NULL),
(555, 492, 'ACTUAL', 177, 369, 'images/media/2020/02/7zlLI19903.jpg', NULL, NULL),
(554, 491, 'ACTUAL', 179, 369, 'images/media/2020/02/U361f19603.jpg', NULL, NULL),
(553, 490, 'MEDIUM', 189, 400, 'images/media/2020/02/medium1582123325IjJ4x19202.jpg', NULL, NULL),
(552, 490, 'THUMBNAIL', 71, 150, 'images/media/2020/02/thumbnail1582123325IjJ4x19202.jpg', NULL, NULL),
(551, 490, 'ACTUAL', 418, 885, 'images/media/2020/02/IjJ4x19202.jpg', NULL, NULL),
(550, 489, 'MEDIUM', 189, 400, 'images/media/2020/02/medium1582123325aqK6Q19402.jpg', NULL, NULL),
(549, 489, 'THUMBNAIL', 71, 150, 'images/media/2020/02/thumbnail1582123325aqK6Q19402.jpg', NULL, NULL),
(548, 488, 'MEDIUM', 189, 400, 'images/media/2020/02/medium1582123325Apd1i19902.jpg', NULL, NULL),
(547, 489, 'ACTUAL', 418, 885, 'images/media/2020/02/aqK6Q19402.jpg', NULL, NULL),
(544, 487, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582123057e8Uh519302.jpg', NULL, NULL),
(545, 488, 'ACTUAL', 418, 885, 'images/media/2020/02/Apd1i19902.jpg', NULL, NULL),
(546, 488, 'THUMBNAIL', 71, 150, 'images/media/2020/02/thumbnail1582123325Apd1i19902.jpg', NULL, NULL),
(543, 487, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582123057e8Uh519302.jpg', NULL, NULL),
(542, 487, 'ACTUAL', 418, 834, 'images/media/2020/02/e8Uh519302.jpg', NULL, NULL),
(541, 486, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582123056sQWL719202.jpg', NULL, NULL),
(540, 486, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582123056sQWL719202.jpg', NULL, NULL),
(537, 485, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582123056i0UZO19402.jpg', NULL, NULL),
(539, 486, 'ACTUAL', 418, 834, 'images/media/2020/02/sQWL719202.jpg', NULL, NULL),
(538, 485, 'MEDIUM', 201, 400, 'images/media/2020/02/medium1582123056i0UZO19402.jpg', NULL, NULL),
(536, 485, 'ACTUAL', 418, 833, 'images/media/2020/02/i0UZO19402.jpg', NULL, NULL),
(533, 483, 'THUMBNAIL', 73, 150, 'images/media/2020/02/thumbnail1582123055RE0II19402.jpg', NULL, NULL),
(534, 484, 'ACTUAL', 177, 369, 'images/media/2020/02/gt4aI19102.jpg', NULL, NULL),
(535, 484, 'THUMBNAIL', 72, 150, 'images/media/2020/02/thumbnail1582123055gt4aI19102.jpg', NULL, NULL),
(532, 483, 'ACTUAL', 179, 369, 'images/media/2020/02/RE0II19402.jpg', NULL, NULL),
(560, 493, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582124531VXmx319303.jpg', NULL, NULL),
(561, 494, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582124531JiDWS19303.jpg', NULL, NULL),
(562, 493, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582124531VXmx319303.jpg', NULL, NULL),
(563, 494, 'MEDIUM', 201, 400, 'images/media/2020/02/medium1582124531JiDWS19303.jpg', NULL, NULL),
(564, 495, 'ACTUAL', 418, 834, 'images/media/2020/02/jzm9Z19603.jpg', NULL, NULL),
(565, 495, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582124532jzm9Z19603.jpg', NULL, NULL),
(566, 495, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582124532jzm9Z19603.jpg', NULL, NULL),
(567, 496, 'ACTUAL', 259, 770, 'images/media/2020/02/ZGQzk20811.jpg', NULL, NULL),
(568, 497, 'ACTUAL', 258, 770, 'images/media/2020/02/NpNrm20611.jpg', NULL, NULL),
(569, 497, 'THUMBNAIL', 50, 150, 'images/media/2020/02/thumbnail1582198137NpNrm20611.jpg', NULL, NULL),
(570, 496, 'THUMBNAIL', 50, 150, 'images/media/2020/02/thumbnail1582198137ZGQzk20811.jpg', NULL, NULL),
(571, 496, 'MEDIUM', 135, 400, 'images/media/2020/02/medium1582198137ZGQzk20811.jpg', NULL, NULL),
(572, 497, 'MEDIUM', 134, 400, 'images/media/2020/02/medium1582198137NpNrm20611.jpg', NULL, NULL),
(573, 498, 'ACTUAL', 548, 370, 'images/media/2020/02/XPgIC20911.jpg', NULL, NULL),
(574, 498, 'THUMBNAIL', 150, 101, 'images/media/2020/02/thumbnail1582198138XPgIC20911.jpg', NULL, NULL),
(575, 498, 'MEDIUM', 400, 270, 'images/media/2020/02/medium1582198138XPgIC20911.jpg', NULL, NULL),
(576, 499, 'ACTUAL', 297, 770, 'images/media/2020/02/VmtxP20911.jpg', NULL, NULL),
(577, 500, 'ACTUAL', 547, 370, 'images/media/2020/02/QAdqa20111.jpg', NULL, NULL),
(578, 499, 'THUMBNAIL', 58, 150, 'images/media/2020/02/thumbnail1582198509VmtxP20911.jpg', NULL, NULL),
(579, 500, 'THUMBNAIL', 150, 101, 'images/media/2020/02/thumbnail1582198509QAdqa20111.jpg', NULL, NULL),
(580, 499, 'MEDIUM', 154, 400, 'images/media/2020/02/medium1582198509VmtxP20911.jpg', NULL, NULL),
(581, 500, 'MEDIUM', 400, 271, 'images/media/2020/02/medium1582198509QAdqa20111.jpg', NULL, NULL),
(582, 501, 'ACTUAL', 220, 370, 'images/media/2020/02/wQGHA20911.jpg', NULL, NULL),
(583, 502, 'ACTUAL', 220, 370, 'images/media/2020/02/R0yLD20611.jpg', NULL, NULL),
(584, 501, 'THUMBNAIL', 89, 150, 'images/media/2020/02/thumbnail1582198510wQGHA20911.jpg', NULL, NULL),
(585, 502, 'THUMBNAIL', 89, 150, 'images/media/2020/02/thumbnail1582198510R0yLD20611.jpg', NULL, NULL),
(586, 503, 'ACTUAL', 230, 270, 'images/media/2020/02/GKLNM20111.jpg', NULL, NULL),
(587, 503, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail1582198670GKLNM20111.jpg', NULL, NULL),
(588, 504, 'ACTUAL', 230, 270, 'images/media/2020/02/zm4sn20811.jpg', NULL, NULL),
(589, 504, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail1582198670zm4sn20811.jpg', NULL, NULL),
(590, 505, 'ACTUAL', 230, 270, 'images/media/2020/02/ug42t20411.jpg', NULL, NULL),
(591, 505, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail1582198671ug42t20411.jpg', NULL, NULL),
(592, 506, 'ACTUAL', 230, 270, 'images/media/2020/02/21hNs20511.jpg', NULL, NULL),
(593, 506, 'THUMBNAIL', 128, 150, 'images/media/2020/02/thumbnail158219867121hNs20511.jpg', NULL, NULL),
(594, 507, 'ACTUAL', 490, 569, 'images/media/2020/02/cgm7r20911.jpg', NULL, NULL),
(595, 507, 'THUMBNAIL', 129, 150, 'images/media/2020/02/thumbnail1582198672cgm7r20911.jpg', NULL, NULL),
(596, 507, 'MEDIUM', 344, 400, 'images/media/2020/02/medium1582198672cgm7r20911.jpg', NULL, NULL),
(597, 508, 'ACTUAL', 211, 270, 'images/media/2020/02/BdrR320111.jpg', NULL, NULL),
(598, 508, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail1582198790BdrR320111.jpg', NULL, NULL),
(599, 509, 'ACTUAL', 452, 570, 'images/media/2020/02/228jM20511.jpg', NULL, NULL),
(600, 510, 'ACTUAL', 211, 270, 'images/media/2020/02/L1lXk20111.jpg', NULL, NULL),
(601, 510, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail1582198791L1lXk20111.jpg', NULL, NULL),
(602, 509, 'THUMBNAIL', 119, 150, 'images/media/2020/02/thumbnail1582198791228jM20511.jpg', NULL, NULL),
(603, 509, 'MEDIUM', 317, 400, 'images/media/2020/02/medium1582198791228jM20511.jpg', NULL, NULL),
(604, 511, 'ACTUAL', 211, 570, 'images/media/2020/02/GrSV020311.jpg', NULL, NULL),
(605, 511, 'THUMBNAIL', 56, 150, 'images/media/2020/02/thumbnail1582198792GrSV020311.jpg', NULL, NULL),
(606, 511, 'MEDIUM', 148, 400, 'images/media/2020/02/medium1582198792GrSV020311.jpg', NULL, NULL),
(607, 512, 'ACTUAL', 298, 567, 'images/media/2020/02/gOyKf20211.jpg', NULL, NULL),
(608, 512, 'THUMBNAIL', 79, 150, 'images/media/2020/02/thumbnail1582198889gOyKf20211.jpg', NULL, NULL),
(609, 513, 'ACTUAL', 298, 566, 'images/media/2020/02/fj2pW20711.jpg', NULL, NULL),
(610, 512, 'MEDIUM', 210, 400, 'images/media/2020/02/medium1582198889gOyKf20211.jpg', NULL, NULL),
(611, 513, 'THUMBNAIL', 79, 150, 'images/media/2020/02/thumbnail1582198889fj2pW20711.jpg', NULL, NULL),
(612, 513, 'MEDIUM', 211, 400, 'images/media/2020/02/medium1582198889fj2pW20711.jpg', NULL, NULL),
(613, 514, 'ACTUAL', 211, 270, 'images/media/2020/02/8pXSd20211.jpg', NULL, NULL),
(614, 514, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail15821990078pXSd20211.jpg', NULL, NULL),
(615, 515, 'ACTUAL', 451, 569, 'images/media/2020/02/dMGvd20411.jpg', NULL, NULL),
(616, 515, 'THUMBNAIL', 119, 150, 'images/media/2020/02/thumbnail1582199007dMGvd20411.jpg', NULL, NULL),
(617, 515, 'MEDIUM', 317, 400, 'images/media/2020/02/medium1582199007dMGvd20411.jpg', NULL, NULL),
(618, 516, 'ACTUAL', 451, 270, 'images/media/2020/02/6DbzH20711.jpg', NULL, NULL),
(619, 516, 'THUMBNAIL', 150, 90, 'images/media/2020/02/thumbnail15821990086DbzH20711.jpg', NULL, NULL),
(620, 516, 'MEDIUM', 400, 239, 'images/media/2020/02/medium15821990086DbzH20711.jpg', NULL, NULL),
(621, 517, 'ACTUAL', 211, 270, 'images/media/2020/02/2lM7y20211.jpg', NULL, NULL),
(622, 517, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail15821990082lM7y20211.jpg', NULL, NULL),
(623, 518, 'ACTUAL', 230, 370, 'images/media/2020/02/kgVrx20811.jpg', NULL, NULL),
(624, 518, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail1582199127kgVrx20811.jpg', NULL, NULL),
(625, 519, 'ACTUAL', 488, 368, 'images/media/2020/02/XCslh20311.jpg', NULL, NULL),
(626, 519, 'THUMBNAIL', 150, 113, 'images/media/2020/02/thumbnail1582199127XCslh20311.jpg', NULL, NULL),
(627, 519, 'MEDIUM', 400, 302, 'images/media/2020/02/medium1582199127XCslh20311.jpg', NULL, NULL),
(628, 520, 'ACTUAL', 230, 370, 'images/media/2020/02/9dgQ020511.jpg', NULL, NULL),
(629, 520, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail15821991289dgQ020511.jpg', NULL, NULL),
(630, 521, 'ACTUAL', 230, 370, 'images/media/2020/02/pZ1bH20411.jpg', NULL, NULL),
(631, 521, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail1582199128pZ1bH20411.jpg', NULL, NULL),
(632, 522, 'ACTUAL', 230, 370, 'images/media/2020/02/xl9k720411.jpg', NULL, NULL),
(633, 522, 'THUMBNAIL', 93, 150, 'images/media/2020/02/thumbnail1582199129xl9k720411.jpg', NULL, NULL),
(634, 523, 'ACTUAL', 211, 470, 'images/media/2020/02/7cNGq20711.jpg', NULL, NULL),
(635, 523, 'THUMBNAIL', 67, 150, 'images/media/2020/02/thumbnail15821993277cNGq20711.jpg', NULL, NULL),
(636, 523, 'MEDIUM', 180, 400, 'images/media/2020/02/medium15821993277cNGq20711.jpg', NULL, NULL),
(637, 524, 'ACTUAL', 210, 468, 'images/media/2020/02/qcLGW20311.jpg', NULL, NULL),
(638, 524, 'THUMBNAIL', 67, 150, 'images/media/2020/02/thumbnail1582199327qcLGW20311.jpg', NULL, NULL),
(639, 524, 'MEDIUM', 179, 400, 'images/media/2020/02/medium1582199327qcLGW20311.jpg', NULL, NULL),
(640, 525, 'ACTUAL', 210, 272, 'images/media/2020/02/uatVd20111.jpg', NULL, NULL),
(641, 525, 'THUMBNAIL', 116, 150, 'images/media/2020/02/thumbnail1582199328uatVd20111.jpg', NULL, NULL),
(642, 526, 'ACTUAL', 211, 270, 'images/media/2020/02/2segQ20911.jpg', NULL, NULL),
(643, 526, 'THUMBNAIL', 117, 150, 'images/media/2020/02/thumbnail15821993282segQ20911.jpg', NULL, NULL),
(644, 527, 'ACTUAL', 211, 369, 'images/media/2020/02/dbzAF20511.jpg', NULL, NULL),
(645, 527, 'THUMBNAIL', 86, 150, 'images/media/2020/02/thumbnail1582199329dbzAF20511.jpg', NULL, NULL),
(646, 528, 'ACTUAL', 210, 369, 'images/media/2020/02/ruFRW20511.jpg', NULL, NULL),
(647, 528, 'THUMBNAIL', 85, 150, 'images/media/2020/02/thumbnail1582199330ruFRW20511.jpg', NULL, NULL),
(648, 529, 'ACTUAL', 430, 1599, 'images/media/2020/02/8qJMb20712.jpg', NULL, NULL),
(649, 529, 'THUMBNAIL', 40, 150, 'images/media/2020/02/thumbnail15822003748qJMb20712.jpg', NULL, NULL),
(650, 530, 'ACTUAL', 236, 1171, 'images/media/2020/02/4kD3S20412.jpg', NULL, NULL),
(651, 530, 'THUMBNAIL', 30, 150, 'images/media/2020/02/thumbnail15822003754kD3S20412.jpg', NULL, NULL),
(652, 530, 'MEDIUM', 81, 400, 'images/media/2020/02/medium15822003754kD3S20412.jpg', NULL, NULL),
(653, 530, 'LARGE', 181, 900, 'images/media/2020/02/large15822003754kD3S20412.jpg', NULL, NULL),
(654, 531, 'ACTUAL', 179, 369, 'images/media/2020/02/FbFX320512.jpg', NULL, NULL),
(655, 531, 'THUMBNAIL', 73, 150, 'images/media/2020/02/thumbnail1582201134FbFX320512.jpg', NULL, NULL),
(656, 532, 'ACTUAL', 418, 834, 'images/media/2020/02/xv5F720212.jpg', NULL, NULL),
(657, 533, 'ACTUAL', 418, 833, 'images/media/2020/02/WDeDC20512.jpg', NULL, NULL),
(658, 532, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582201251xv5F720212.jpg', NULL, NULL),
(659, 533, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582201251WDeDC20512.jpg', NULL, NULL),
(660, 532, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582201251xv5F720212.jpg', NULL, NULL),
(661, 533, 'MEDIUM', 201, 400, 'images/media/2020/02/medium1582201251WDeDC20512.jpg', NULL, NULL),
(662, 534, 'ACTUAL', 418, 834, 'images/media/2020/02/287xt20312.jpg', NULL, NULL),
(663, 534, 'THUMBNAIL', 75, 150, 'images/media/2020/02/thumbnail1582201252287xt20312.jpg', NULL, NULL),
(664, 534, 'MEDIUM', 200, 400, 'images/media/2020/02/medium1582201252287xt20312.jpg', NULL, NULL),
(665, 535, 'ACTUAL', 885, 1673, 'images/media/2020/03/kp7IT19104.jpg', NULL, NULL),
(666, 535, 'THUMBNAIL', 79, 150, 'images/media/2020/03/thumbnail1584636420kp7IT19104.jpg', NULL, NULL),
(667, 535, 'MEDIUM', 212, 400, 'images/media/2020/03/medium1584636420kp7IT19104.jpg', NULL, NULL),
(668, 535, 'LARGE', 476, 900, 'images/media/2020/03/large1584636420kp7IT19104.jpg', NULL, NULL),
(669, 536, 'ACTUAL', 230, 370, 'images/media/2020/03/dYoZ120612.jpg', NULL, NULL),
(670, 536, 'THUMBNAIL', 93, 150, 'images/media/2020/03/thumbnail1584706724dYoZ120612.jpg', NULL, NULL),
(671, 537, 'ACTUAL', 43, 172, 'images/media/2020/03/ianfk25812.png', NULL, NULL),
(672, 537, 'THUMBNAIL', 38, 150, 'images/media/2020/03/thumbnail1585137994ianfk25812.png', NULL, NULL),
(673, 538, 'ACTUAL', 16, 16, 'images/media/2020/03/FuDHg25712.png', NULL, NULL),
(674, 539, 'ACTUAL', 885, 1673, 'images/media/2020/04/5t74g02911.jpg', NULL, NULL),
(675, 539, 'THUMBNAIL', 79, 150, 'images/media/2020/04/thumbnail15858260845t74g02911.jpg', NULL, NULL),
(676, 539, 'MEDIUM', 212, 400, 'images/media/2020/04/medium15858260855t74g02911.jpg', NULL, NULL),
(677, 539, 'LARGE', 476, 900, 'images/media/2020/04/large15858260855t74g02911.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 's101', 1000, 1, '60.00', 'in', '2019-09-17 11:44:55', NULL),
(2, 1, 0, 's102', 1000, 6, '20.00', 'in', '2019-09-18 07:19:17', NULL),
(3, 1, 0, 's103', 1000, 13, '25.00', 'in', '2019-09-18 07:21:15', NULL),
(4, 1, 0, 's104', 1000, 13, '25.00', 'in', '2019-09-18 07:21:47', NULL),
(5, 1, 0, 's105', 1000, 13, '25.00', 'in', '2019-09-18 07:23:33', NULL),
(6, 1, 0, 's106', 1000, 19, '20.00', 'in', '2019-09-18 07:25:25', NULL),
(7, 1, 0, 's107', 1000, 29, '55.00', 'in', '2019-09-18 07:27:45', NULL),
(8, 1, 0, 'S108', 1000, 2, '45.00', 'in', '2019-09-18 07:28:54', NULL),
(9, 1, 0, 'S108', 1000, 3, '30.00', 'in', '2019-09-18 07:29:33', NULL),
(10, 1, 0, 'S109', 500, 4, '70.00', 'in', '2019-09-18 07:30:16', NULL),
(11, 1, 0, 'S109', 500, 4, '70.00', 'in', '2019-09-18 07:30:51', NULL),
(12, 1, 0, 'S110', 500, 4, '70.00', 'in', '2019-09-18 07:31:11', NULL),
(13, 1, 0, 'S111', 1000, 5, '30.00', 'in', '2019-09-18 07:31:55', NULL),
(14, 1, 0, 's112', 1000, 7, '18.00', 'in', '2019-09-18 07:32:40', NULL),
(15, 1, 0, 's113', 500, 8, '20.00', 'in', '2019-09-18 07:33:24', NULL),
(16, 1, 0, 's114', 500, 8, '20.00', 'in', '2019-09-18 07:34:05', NULL),
(17, 1, 0, 's115', 500, 8, '20.00', 'in', '2019-09-18 07:34:55', NULL),
(18, 1, 0, 's116', 1000, 9, '10.00', 'in', '2019-09-18 07:35:45', NULL),
(19, 1, 0, 's116', 1000, 10, '20.00', 'in', '2019-09-18 07:37:40', NULL),
(20, 1, 0, 's117', 500, 11, '15.00', 'in', '2019-09-18 07:38:23', NULL),
(21, 1, 0, 's117', 500, 11, '15.00', 'in', '2019-09-18 07:39:52', NULL),
(22, 1, 0, 's117', 500, 11, '15.00', 'in', '2019-09-18 07:40:41', NULL),
(23, 1, 0, 's118', 1000, 12, '15.00', 'in', '2019-09-18 07:41:33', NULL),
(24, 1, 0, 's119', 200, 14, '30.00', 'in', '2019-09-18 07:42:17', NULL),
(25, 1, 0, 's120', 500, 15, '35.00', 'in', '2019-09-18 07:42:54', NULL),
(26, 1, 0, 's121', 600, 16, '40.00', 'in', '2019-09-18 07:43:31', NULL),
(27, 1, 0, 's121', 800, 17, '15.00', 'in', '2019-09-18 07:44:29', NULL),
(28, 1, 0, 's122', 600, 18, '30.00', 'in', '2019-09-18 07:45:18', NULL),
(29, 1, 0, 's123', 900, 20, '60.00', 'in', '2019-09-18 07:46:28', NULL),
(30, 1, 0, 's124', 400, 21, '55.00', 'in', '2019-09-18 07:47:22', NULL),
(31, 1, 0, 's124', 300, 21, '55.00', 'in', '2019-09-18 07:47:38', NULL),
(32, 1, 0, 's125', 800, 22, '70.00', 'in', '2019-09-18 07:48:18', NULL),
(33, 1, 0, 's125', 400, 24, '50.00', 'in', '2019-09-18 07:49:44', NULL),
(34, 1, 0, 's128', 300, 24, '50.00', 'in', '2019-09-18 07:50:05', NULL),
(35, 1, 0, 's129', 800, 25, '60.00', 'in', '2019-09-18 07:50:52', NULL),
(36, 1, 0, 's130', 800, 26, '80.00', 'in', '2019-09-18 07:51:28', NULL),
(37, 1, 0, 's131', 900, 27, '55.00', 'in', '2019-09-18 07:52:33', NULL),
(38, 1, 0, 's131', 500, 28, '70.00', 'in', '2019-09-18 07:53:08', NULL),
(39, 1, 0, 's132', 500, 28, '70.00', 'in', '2019-09-18 07:53:26', NULL),
(40, 1, 0, 's133', 1100, 30, '105.00', 'in', '2019-09-18 07:53:52', NULL),
(41, 1, 0, 's134', 900, 31, '52.00', 'in', '2019-09-18 07:54:19', NULL),
(42, 1, 0, 's135', 1200, 32, '71.00', 'in', '2019-09-18 07:54:44', NULL),
(43, 0, 1568989337, '', 1, 32, '0.00', 'out', NULL, NULL),
(44, 0, 1568989349, '', 1, 32, '0.00', 'out', NULL, NULL),
(45, 0, 1568989974, '', 1, 32, '0.00', 'out', NULL, NULL),
(46, 0, 1569219521, '', 1, 29, '0.00', 'out', NULL, NULL),
(47, 0, 1569219840, '', 1, 29, '0.00', 'out', NULL, NULL),
(48, 0, 1569220035, '', 1, 29, '0.00', 'out', NULL, NULL),
(49, 0, 1569220106, '', 1, 29, '0.00', 'out', NULL, NULL),
(50, 0, 1569220168, '', 1, 29, '0.00', 'out', NULL, NULL),
(51, 0, 1569220495, '', 1, 29, '0.00', 'out', NULL, NULL),
(52, 0, 1569330243, '', 1, 26, '0.00', 'out', NULL, NULL),
(53, 0, 1569330243, '', 1, 27, '0.00', 'out', NULL, NULL),
(54, 0, 1569330243, '', 3, 30, '0.00', 'out', NULL, NULL),
(55, 0, 1569330243, '', 2, 31, '0.00', 'out', NULL, NULL),
(56, 0, 1569486590, '', 1, 32, '0.00', 'out', NULL, NULL),
(57, 0, 1569495585, '', 1, 19, '0.00', 'out', NULL, NULL),
(58, 0, 1569495585, '', 1, 29, '0.00', 'out', NULL, NULL),
(59, 0, 1569495911, '', 1, 1, '0.00', 'out', NULL, NULL),
(60, 0, 1569496301, '', 1, 29, '0.00', 'out', NULL, NULL),
(61, 0, 1569496712, '', 1, 29, '0.00', 'out', NULL, NULL),
(62, 0, 1569497195, '', 3, 32, '0.00', 'out', NULL, NULL),
(63, 0, 1569497197, '', 3, 32, '0.00', 'out', NULL, NULL),
(64, 0, 1569503812, '', 1, 8, '0.00', 'out', NULL, NULL),
(65, 0, 1569583044, '', 1, 26, '0.00', 'out', NULL, NULL),
(66, 0, 1569583044, '', 1, 27, '0.00', 'out', NULL, NULL),
(67, 0, 1569583044, '', 1, 30, '0.00', 'out', NULL, NULL),
(68, 0, 1569583044, '', 1, 31, '0.00', 'out', NULL, NULL),
(69, 0, 1569607915, '', 1, 14, '0.00', 'out', NULL, NULL),
(70, 0, 1569655219, '', 1, 27, '0.00', 'out', NULL, NULL),
(71, 0, 1569655219, '', 1, 29, '0.00', 'out', NULL, NULL),
(72, 0, 1569655219, '', 1, 32, '0.00', 'out', NULL, NULL),
(73, 0, 1569655219, '', 1, 6, '0.00', 'out', NULL, NULL),
(74, 0, 1569692983, '', 1, 31, '0.00', 'out', NULL, NULL),
(75, 0, 1569834237, '', 1, 18, '0.00', 'out', NULL, NULL),
(76, 0, 1569843699, '', 1, 3, '0.00', 'out', NULL, NULL),
(77, 0, 1569901100, '', 1, 18, '0.00', 'out', NULL, NULL),
(78, 0, 1569901100, '', 1, 25, '0.00', 'out', NULL, NULL),
(79, 0, 1569901100, '', 1, 26, '0.00', 'out', NULL, NULL),
(80, 0, 1569901100, '', 1, 3, '0.00', 'out', NULL, NULL),
(81, 0, 1569901100, '', 1, 6, '0.00', 'out', NULL, NULL),
(82, 0, 1569913767, '', 1, 3, '0.00', 'out', NULL, NULL),
(83, 0, 1569913767, '', 6, 30, '0.00', 'out', NULL, NULL),
(84, 0, 1569913767, '', 1, 6, '0.00', 'out', NULL, NULL),
(85, 0, 1569935181, '', 1, 13, '0.00', 'out', NULL, NULL),
(86, 0, 1570024696, '', 1, 18, '0.00', 'out', NULL, NULL),
(87, 0, 1570083856, '', 2, 4, '0.00', 'out', NULL, NULL),
(88, 0, 1570085481, '', 1, 18, '0.00', 'out', NULL, NULL),
(89, 0, 1570095995, '', 1, 18, '0.00', 'out', NULL, NULL),
(90, 0, 1570095995, '', 1, 25, '0.00', 'out', NULL, NULL),
(91, 0, 1570282489, '', 1, 29, '0.00', 'out', NULL, NULL),
(92, 0, 1570360230, '', 1, 2, '0.00', 'out', NULL, NULL),
(93, 0, 1570372049, '', 1, 1, '0.00', 'out', NULL, NULL),
(94, 0, 1570434540, '', 1, 26, '0.00', 'out', NULL, NULL),
(95, 0, 1570434540, '', 1, 27, '0.00', 'out', NULL, NULL),
(96, 0, 1570434541, '', 1, 29, '0.00', 'out', NULL, NULL),
(97, 0, 1570434541, '', 1, 30, '0.00', 'out', NULL, NULL),
(98, 0, 1570434541, '', 1, 31, '0.00', 'out', NULL, NULL),
(99, 0, 1570434541, '', 1, 32, '0.00', 'out', NULL, NULL),
(100, 0, 1570456145, '', 3, 6, '0.00', 'out', NULL, NULL),
(101, 0, 1570776834, '', 1, 2, '0.00', 'out', NULL, NULL),
(102, 0, 1570777371, '', 1, 29, '0.00', 'out', NULL, NULL),
(103, 0, 1570794856, '', 1, 4, '0.00', 'out', NULL, NULL),
(104, 0, 1570843860, '', 2, 31, '0.00', 'out', NULL, NULL),
(105, 0, 1570978655, '', 1, 30, '0.00', 'out', NULL, NULL),
(106, 0, 1570978655, '', 1, 31, '0.00', 'out', NULL, NULL),
(107, 0, 1570978655, '', 1, 32, '0.00', 'out', NULL, NULL),
(108, 0, 1571013156, '', 1, 30, '0.00', 'out', NULL, NULL),
(109, 0, 1571388785, '', 1, 30, '0.00', 'out', NULL, NULL),
(110, 0, 1571388785, '', 1, 31, '0.00', 'out', NULL, NULL),
(111, 0, 1571403810, '', 1, 1, '0.00', 'out', NULL, NULL),
(112, 0, 1571483054, '', 1, 25, '0.00', 'out', NULL, NULL),
(113, 0, 1571483054, '', 1, 27, '0.00', 'out', NULL, NULL),
(114, 0, 1571492712, '', 1, 31, '0.00', 'out', NULL, NULL),
(115, 0, 1571492712, '', 1, 32, '0.00', 'out', NULL, NULL),
(116, 0, 1571609798, '', 141, 29, '0.00', 'out', NULL, NULL),
(117, 0, 1571609798, '', 1, 30, '0.00', 'out', NULL, NULL),
(118, 0, 1571609798, '', 1, 6, '0.00', 'out', NULL, NULL),
(119, 0, 1571749086, '', 1, 30, '0.00', 'out', NULL, NULL),
(120, 0, 1571749086, '', 1, 31, '0.00', 'out', NULL, NULL),
(121, 0, 1571758880, '', 2, 1, '0.00', 'out', NULL, NULL),
(122, 0, 1571829621, '', 1, 32, '0.00', 'out', NULL, NULL),
(123, 0, 1571898183, '', 1, 32, '0.00', 'out', NULL, NULL),
(124, 0, 1571914913, '', 1, 1, '0.00', 'out', NULL, NULL),
(125, 0, 1571925502, '', 3, 1, '0.00', 'out', NULL, NULL),
(126, 0, 1572090563, '', 1, 31, '0.00', 'out', NULL, NULL),
(127, 0, 1572155904, '', 2, 1, '0.00', 'out', NULL, NULL),
(128, 0, 1572258276, '', 1, 26, '0.00', 'out', NULL, NULL),
(129, 0, 1572439226, '', 1, 32, '0.00', 'out', NULL, NULL),
(130, 0, 1572439526, '', 1, 31, '0.00', 'out', NULL, NULL),
(131, 0, 1572443429, '', 1, 29, '0.00', 'out', NULL, NULL),
(132, 0, 1572443429, '', 3, 31, '0.00', 'out', NULL, NULL),
(133, 0, 1572449034, '', 1, 30, '0.00', 'out', NULL, NULL),
(134, 0, 1572449034, '', 1, 31, '0.00', 'out', NULL, NULL),
(135, 0, 1572552652, '', 1, 1, '0.00', 'out', NULL, NULL),
(136, 0, 1572552652, '', 2, 30, '0.00', 'out', NULL, NULL),
(137, 0, 1572611252, '', 1, 21, '0.00', 'out', NULL, NULL),
(138, 0, 1572611252, '', 2, 25, '0.00', 'out', NULL, NULL),
(139, 0, 1572611252, '', 1, 27, '0.00', 'out', NULL, NULL),
(140, 0, 1572677571, '', 18, 15, '0.00', 'out', NULL, NULL),
(141, 0, 1572694686, '', 3, 1, '0.00', 'out', NULL, NULL),
(142, 0, 1572704623, '', 1, 14, '0.00', 'out', NULL, NULL),
(143, 0, 1572704623, '', 1, 15, '0.00', 'out', NULL, NULL),
(144, 0, 1572704623, '', 1, 17, '0.00', 'out', NULL, NULL),
(145, 0, 1572704623, '', 1, 32, '0.00', 'out', NULL, NULL),
(146, 0, 1572729539, '', 1, 4, '0.00', 'out', NULL, NULL),
(147, 0, 1572868871, '', 1, 30, '0.00', 'out', NULL, NULL),
(148, 0, 1573019664, '', 1, 29, '0.00', 'out', NULL, NULL),
(149, 0, 1573019664, '', 2, 30, '0.00', 'out', NULL, NULL),
(150, 0, 1573019664, '', 3, 32, '0.00', 'out', NULL, NULL),
(151, 0, 1573049636, '', 1, 31, '0.00', 'out', NULL, NULL),
(152, 0, 1573104846, '', 20, 2, '0.00', 'out', NULL, NULL),
(153, 0, 1573109729, '', 1, 31, '0.00', 'out', NULL, NULL),
(154, 0, 1573303350, '', 1, 26, '0.00', 'out', NULL, NULL),
(155, 0, 1573303350, '', 1, 30, '0.00', 'out', NULL, NULL),
(156, 0, 1573322647, '', 1, 31, '0.00', 'out', NULL, NULL),
(157, 0, 1573389364, '', 1, 19, '0.00', 'out', NULL, NULL),
(158, 0, 1573540158, '', 1, 25, '0.00', 'out', NULL, NULL),
(159, 0, 1573546969, '', 1, 7, '0.00', 'out', NULL, NULL),
(160, 0, 1573567460, '', 1, 30, '0.00', 'out', NULL, NULL),
(161, 0, 1573567460, '', 1, 16, '0.00', 'out', NULL, NULL),
(162, 0, 1573567460, '', 1, 1, '0.00', 'out', NULL, NULL),
(163, 0, 1573604913, '', 1, 31, '0.00', 'out', NULL, NULL),
(164, 0, 1573604913, '', 1, 30, '0.00', 'out', NULL, NULL),
(165, 0, 1573604913, '', 1, 18, '0.00', 'out', NULL, NULL),
(166, 0, 1573626564, '', 1, 29, '0.00', 'out', NULL, NULL),
(167, 0, 1573717478, '', 1, 31, '0.00', 'out', NULL, NULL),
(168, 0, 1573717478, '', 1, 7, '0.00', 'out', NULL, NULL),
(169, 0, 1573786155, '', 2, 32, '0.00', 'out', NULL, NULL),
(170, 0, 1573786155, '', 1, 31, '0.00', 'out', NULL, NULL),
(171, 0, 1573836405, '', 1, 31, '0.00', 'out', NULL, NULL),
(172, 0, 1573836412, '', 1, 31, '0.00', 'out', NULL, NULL),
(173, 0, 1573847140, '', 1, 7, '0.00', 'out', NULL, NULL),
(174, 0, 1573862019, '', 2, 4, '0.00', 'out', NULL, NULL),
(175, 0, 1573900015, '', 1, 31, '0.00', 'out', NULL, NULL),
(176, 0, 1573904738, '', 1, 31, '0.00', 'out', NULL, NULL),
(177, 0, 1573987089, '', 1, 16, '0.00', 'out', NULL, NULL),
(178, 0, 1573990606, '', 1, 19, '0.00', 'out', NULL, NULL),
(179, 0, 1573998674, '', 1, 7, '0.00', 'out', NULL, NULL),
(180, 0, 1574000044, '', 1, 7, '0.00', 'out', NULL, NULL),
(181, 0, 1574016045, '', 1, 2, '0.00', 'out', NULL, NULL),
(182, 0, 1574073052, '', 1, 3, '0.00', 'out', NULL, NULL),
(183, 0, 1574094449, '', 1, 32, '0.00', 'out', NULL, NULL),
(184, 0, 1574169388, '', 16, 25, '0.00', 'out', NULL, NULL),
(185, 0, 1574179456, '', 1, 16, '0.00', 'out', NULL, NULL),
(186, 0, 1574179456, '', 1, 5, '0.00', 'out', NULL, NULL),
(187, 0, 1574203349, '', 2, 2, '0.00', 'out', NULL, NULL),
(188, 0, 1574235415, '', 2, 13, '0.00', 'out', NULL, NULL),
(189, 0, 1574235415, '', 2, 13, '0.00', 'out', NULL, NULL),
(190, 0, 1574235415, '', 2, 13, '0.00', 'out', NULL, NULL),
(191, 0, 1574235415, '', 1, 10, '0.00', 'out', NULL, NULL),
(192, 0, 1574241518, '', 1, 32, '0.00', 'out', NULL, NULL),
(193, 0, 1574241518, '', 1, 16, '0.00', 'out', NULL, NULL),
(194, 0, 1574247963, '', 1, 29, '0.00', 'out', NULL, NULL),
(195, 0, 1574268584, '', 1, 16, '0.00', 'out', NULL, NULL),
(196, 0, 1574289244, '', 1, 31, '0.00', 'out', NULL, NULL),
(197, 0, 1574407295, '', 1, 6, '0.00', 'out', NULL, NULL),
(198, 0, 1574407295, '', 1, 2, '0.00', 'out', NULL, NULL),
(199, 0, 1574407295, '', 1, 1, '0.00', 'out', NULL, NULL),
(200, 0, 1574407486, '', 1, 32, '0.00', 'out', NULL, NULL),
(201, 0, 1574407608, '', 1, 31, '0.00', 'out', NULL, NULL),
(202, 0, 1574426845, '', 1, 5, '0.00', 'out', NULL, NULL),
(203, 0, 1574439821, '', 1, 16, '0.00', 'out', NULL, NULL),
(204, 0, 1574491861, '', 1, 7, '0.00', 'out', NULL, NULL),
(205, 0, 1574498456, '', 1, 16, '0.00', 'out', NULL, NULL),
(206, 0, 1574501037, '', 1, 25, '0.00', 'out', NULL, NULL),
(207, 0, 1574501037, '', 1, 31, '0.00', 'out', NULL, NULL),
(208, 0, 1574502841, '', 1, 20, '0.00', 'out', NULL, NULL),
(209, 0, 1574525009, '', 1, 14, '0.00', 'out', NULL, NULL),
(210, 0, 1574549701, '', 2, 32, '0.00', 'out', NULL, NULL),
(211, 0, 1574600758, '', 1, 26, '0.00', 'out', NULL, NULL),
(212, 0, 1574600758, '', 1, 6, '0.00', 'out', NULL, NULL),
(213, 0, 1574600758, '', 1, 6, '0.00', 'out', NULL, NULL),
(214, 0, 1574600758, '', 1, 6, '0.00', 'out', NULL, NULL),
(215, 0, 1574617644, '', 1, 20, '0.00', 'out', NULL, NULL),
(216, 0, 1574617644, '', 6, 5, '0.00', 'out', NULL, NULL),
(217, 0, 1574660060, '', 1, 4, '0.00', 'out', NULL, NULL),
(218, 0, 1574671640, '', 1, 32, '0.00', 'out', NULL, NULL),
(219, 0, 1574672118, '', 1, 32, '0.00', 'out', NULL, NULL),
(220, 0, 1574672118, '', 1, 30, '0.00', 'out', NULL, NULL),
(221, 0, 1574708863, '', 10, 7, '0.00', 'out', NULL, NULL),
(222, 0, 1574708863, '', 1, 5, '0.00', 'out', NULL, NULL),
(223, 0, 1574817007, '', 1, 26, '0.00', 'out', NULL, NULL),
(224, 0, 1574817007, '', 2, 7, '0.00', 'out', NULL, NULL),
(225, 0, 1574837720, '', 2, 13, '0.00', 'out', NULL, NULL),
(226, 0, 1574837720, '', 1, 6, '0.00', 'out', NULL, NULL),
(227, 0, 1574837720, '', 2, 8, '0.00', 'out', NULL, NULL),
(228, 0, 1575042026, '', 1, 18, '0.00', 'out', NULL, NULL),
(229, 0, 1575042026, '', 1, 16, '0.00', 'out', NULL, NULL),
(230, 0, 1575279457, '', 1, 5, '0.00', 'out', NULL, NULL),
(231, 0, 1575282889, '', 3, 32, '0.00', 'out', NULL, NULL),
(232, 0, 1575282889, '', 1, 31, '0.00', 'out', NULL, NULL),
(233, 0, 1575282889, '', 1, 25, '0.00', 'out', NULL, NULL),
(234, 0, 1575282889, '', 1, 25, '0.00', 'out', NULL, NULL),
(235, 0, 1575284561, '', 1, 27, '0.00', 'out', NULL, NULL),
(236, 0, 1575310274, '', 2, 3, '0.00', 'out', NULL, NULL),
(237, 0, 1575320895, '', 5, 32, '0.00', 'out', NULL, NULL),
(238, 0, 1575389841, '', 1, 5, '0.00', 'out', NULL, NULL),
(239, 0, 1575391920, '', 1, 26, '0.00', 'out', NULL, NULL),
(240, 0, 1575511999, '', 1, 16, '0.00', 'out', NULL, NULL),
(241, 0, 1575516964, '', 1, 7, '0.00', 'out', NULL, NULL),
(242, 0, 1575516964, '', 1, 32, '0.00', 'out', NULL, NULL),
(243, 0, 1575639208, '', 1, 7, '0.00', 'out', NULL, NULL),
(244, 0, 1575651764, '', 5, 30, '0.00', 'out', NULL, NULL),
(245, 0, 1575707053, '', 2, 16, '0.00', 'out', NULL, NULL),
(246, 0, 1575735520, '', 1, 1, '0.00', 'out', NULL, NULL),
(247, 0, 1575785138, '', 1, 26, '0.00', 'out', NULL, NULL),
(248, 0, 1575785234, '', 1, 5, '0.00', 'out', NULL, NULL),
(249, 0, 1575912081, '', 1, 32, '0.00', 'out', NULL, NULL),
(250, 0, 1575912081, '', 1, 26, '0.00', 'out', NULL, NULL),
(251, 0, 1575977074, '', 1, 16, '0.00', 'out', NULL, NULL),
(252, 0, 1576021697, '', 1, 30, '0.00', 'out', NULL, NULL),
(253, 0, 1576021697, '', 1, 29, '0.00', 'out', NULL, NULL),
(254, 0, 1576021697, '', 1, 29, '0.00', 'out', NULL, NULL),
(255, 0, 1576021697, '', 1, 29, '0.00', 'out', NULL, NULL),
(256, 0, 1576021697, '', 1, 29, '0.00', 'out', NULL, NULL),
(257, 0, 1576021697, '', 1, 29, '0.00', 'out', NULL, NULL),
(258, 0, 1576021697, '', 1, 29, '0.00', 'out', NULL, NULL),
(259, 0, 1576021697, '', 10, 15, '0.00', 'out', NULL, NULL),
(260, 0, 1576021697, '', 1, 14, '0.00', 'out', NULL, NULL),
(261, 0, 1576021697, '', 1, 7, '0.00', 'out', NULL, NULL),
(262, 0, 1576039820, '', 1, 32, '0.00', 'out', NULL, NULL),
(263, 0, 1576039820, '', 1, 31, '0.00', 'out', NULL, NULL),
(264, 0, 1576040383, '', 1, 2, '0.00', 'out', NULL, NULL),
(265, 0, 1576059584, '', 1, 16, '0.00', 'out', NULL, NULL),
(266, 0, 1576087705, '', 1, 16, '0.00', 'out', NULL, NULL),
(267, 0, 1576087705, '', 1, 6, '0.00', 'out', NULL, NULL),
(268, 0, 1576087705, '', 1, 6, '0.00', 'out', NULL, NULL),
(269, 0, 1576087705, '', 1, 6, '0.00', 'out', NULL, NULL),
(270, 0, 1576087705, '', 1, 5, '0.00', 'out', NULL, NULL),
(271, 0, 1576088572, '', 1, 7, '0.00', 'out', NULL, NULL),
(272, 0, 1576113611, '', 3, 30, '0.00', 'out', NULL, NULL),
(273, 0, 1576165616, '', 1, 15, '0.00', 'out', NULL, NULL),
(274, 0, 1576166371, '', 1, 16, '0.00', 'out', NULL, NULL),
(275, 0, 1576194737, '', 1, 1, '0.00', 'out', NULL, NULL),
(276, 0, 1576254744, '', 1, 25, '0.00', 'out', NULL, NULL),
(277, 0, 1576255034, '', 1, 32, '0.00', 'out', NULL, NULL),
(278, 0, 1576275675, '', 1, 31, '0.00', 'out', NULL, NULL),
(279, 0, 1576275675, '', 1, 30, '0.00', 'out', NULL, NULL),
(280, 0, 1576387099, '', 1, 31, '0.00', 'out', NULL, NULL),
(281, 0, 1576400925, '', 1, 9, '0.00', 'out', NULL, NULL),
(282, 0, 1576488861, '', 1, 7, '0.00', 'out', NULL, NULL),
(283, 0, 1576561367, '', 1, 7, '0.00', 'out', NULL, NULL),
(284, 0, 1576647950, '', 1, 17, '0.00', 'out', NULL, NULL),
(285, 0, 1576647950, '', 1, 6, '0.00', 'out', NULL, NULL),
(286, 0, 1576647950, '', 1, 26, '0.00', 'out', NULL, NULL),
(287, 0, 1576648495, '', 1, 20, '0.00', 'out', NULL, NULL),
(288, 0, 1576777516, '', 1, 7, '0.00', 'out', NULL, NULL),
(289, 0, 1576784131, '', 1, 19, '0.00', 'out', NULL, NULL),
(290, 0, 1576855212, '', 1, 31, '0.00', 'out', NULL, NULL),
(291, 0, 1576855212, '', 1, 1, '0.00', 'out', NULL, NULL),
(292, 0, 1576887758, '', 2, 7, '0.00', 'out', NULL, NULL),
(293, 0, 1576919571, '', 1, 32, '0.00', 'out', NULL, NULL),
(294, 0, 1576919571, '', 1, 31, '0.00', 'out', NULL, NULL),
(295, 0, 1576919571, '', 1, 1, '0.00', 'out', NULL, NULL),
(296, 0, 1576952280, '', 1, 32, '0.00', 'out', NULL, NULL),
(297, 0, 1576995820, '', 2, 5, '0.00', 'out', NULL, NULL),
(298, 0, 1577084553, '', 4, 25, '0.00', 'out', NULL, NULL),
(299, 0, 1577084553, '', 1, 20, '0.00', 'out', NULL, NULL),
(300, 0, 1577084553, '', 1, 5, '0.00', 'out', NULL, NULL),
(301, 0, 1577084553, '', 1, 3, '0.00', 'out', NULL, NULL),
(302, 0, 1577092122, '', 1, 32, '0.00', 'out', NULL, NULL),
(303, 0, 1577165955, '', 1, 30, '0.00', 'out', NULL, NULL),
(304, 0, 1577165955, '', 1, 16, '0.00', 'out', NULL, NULL),
(305, 0, 1577165955, '', 1, 5, '0.00', 'out', NULL, NULL),
(306, 0, 1577183541, '', 1, 25, '0.00', 'out', NULL, NULL),
(307, 0, 1577183541, '', 1, 7, '0.00', 'out', NULL, NULL),
(308, 0, 1577183541, '', 1, 1, '0.00', 'out', NULL, NULL),
(309, 0, 1577220849, '', 1, 6, '0.00', 'out', NULL, NULL),
(310, 0, 1577220849, '', 1, 6, '0.00', 'out', NULL, NULL),
(311, 0, 1577220849, '', 1, 6, '0.00', 'out', NULL, NULL),
(312, 0, 1577220849, '', 1, 3, '0.00', 'out', NULL, NULL),
(313, 0, 1577232355, '', 1, 26, '0.00', 'out', NULL, NULL),
(314, 0, 1577309528, '', 1, 3, '0.00', 'out', NULL, NULL),
(315, 0, 1577309528, '', 1, 2, '0.00', 'out', NULL, NULL),
(316, 0, 1577399804, '', 1, 25, '0.00', 'out', NULL, NULL),
(317, 0, 1577427000, '', 7, 16, '0.00', 'out', NULL, NULL),
(318, 0, 1577694839, '', 1, 29, '0.00', 'out', NULL, NULL),
(319, 0, 1577879428, '', 1, 25, '0.00', 'out', NULL, NULL),
(320, 0, 1577899480, '', 1, 20, '0.00', 'out', NULL, NULL),
(321, 0, 1577962270, '', 1, 16, '0.00', 'out', NULL, NULL),
(322, 0, 1577999779, '', 1, 31, '0.00', 'out', NULL, NULL),
(323, 0, 1578004183, '', 1, 16, '0.00', 'out', NULL, NULL),
(324, 0, 1578004183, '', 1, 7, '0.00', 'out', NULL, NULL),
(325, 0, 1578009172, '', 1, 15, '0.00', 'out', NULL, NULL),
(326, 0, 1578009172, '', 1, 14, '0.00', 'out', NULL, NULL),
(327, 0, 1578047158, '', 2, 30, '0.00', 'out', NULL, NULL),
(328, 0, 1578091142, '', 1, 16, '0.00', 'out', NULL, NULL),
(329, 0, 1578121379, '', 1, 7, '0.00', 'out', NULL, NULL),
(330, 0, 1578176747, '', 3, 7, '0.00', 'out', NULL, NULL),
(331, 0, 1578178745, '', 1, 32, '0.00', 'out', NULL, NULL),
(332, 0, 1578178745, '', 1, 7, '0.00', 'out', NULL, NULL),
(333, 0, 1578243843, '', 1, 16, '0.00', 'out', NULL, NULL),
(334, 0, 1578243843, '', 1, 7, '0.00', 'out', NULL, NULL),
(335, 0, 1578255122, '', 1, 16, '0.00', 'out', NULL, NULL),
(336, 0, 1578255122, '', 7, 5, '0.00', 'out', NULL, NULL),
(337, 0, 1578257579, '', 1, 7, '0.00', 'out', NULL, NULL),
(338, 0, 1578257579, '', 1, 7, '0.00', 'out', NULL, NULL),
(339, 0, 1578309700, '', 1, 7, '0.00', 'out', NULL, NULL),
(340, 0, 1578318438, '', 1, 22, '0.00', 'out', NULL, NULL),
(341, 0, 1578319486, '', 4, 16, '0.00', 'out', NULL, NULL),
(342, 0, 1578319486, '', 1, 7, '0.00', 'out', NULL, NULL),
(343, 0, 1578319486, '', 1, 5, '0.00', 'out', NULL, NULL),
(344, 0, 1578329414, '', 1, 32, '0.00', 'out', NULL, NULL),
(345, 0, 1578329414, '', 1, 31, '0.00', 'out', NULL, NULL),
(346, 0, 1578397348, '', 1, 7, '0.00', 'out', NULL, NULL),
(347, 0, 1578405053, '', 1, 32, '0.00', 'out', NULL, NULL),
(348, 0, 1578405053, '', 1, 31, '0.00', 'out', NULL, NULL),
(349, 0, 1578416195, '', 1, 27, '0.00', 'out', NULL, NULL),
(350, 0, 1578416195, '', 1, 25, '0.00', 'out', NULL, NULL),
(351, 0, 1578417377, '', 1, 7, '0.00', 'out', NULL, NULL),
(352, 0, 1578428158, '', 1, 14, '0.00', 'out', NULL, NULL),
(353, 0, 1578428158, '', 1, 9, '0.00', 'out', NULL, NULL),
(354, 0, 1578428158, '', 1, 6, '0.00', 'out', NULL, NULL),
(355, 0, 1578430683, '', 1, 25, '0.00', 'out', NULL, NULL),
(356, 0, 1578466182, '', 1, 6, '0.00', 'out', NULL, NULL),
(357, 0, 1578501008, '', 1, 29, '0.00', 'out', NULL, NULL),
(358, 0, 1578501008, '', 1, 29, '0.00', 'out', NULL, NULL),
(359, 0, 1578501008, '', 1, 29, '0.00', 'out', NULL, NULL),
(360, 0, 1578501008, '', 1, 29, '0.00', 'out', NULL, NULL),
(361, 0, 1578501008, '', 1, 29, '0.00', 'out', NULL, NULL),
(362, 0, 1578501008, '', 1, 29, '0.00', 'out', NULL, NULL),
(363, 0, 1578573765, '', 1, 31, '0.00', 'out', NULL, NULL),
(364, 0, 1578581176, '', 1, 31, '0.00', 'out', NULL, NULL),
(365, 0, 1578586952, '', 1, 30, '0.00', 'out', NULL, NULL),
(366, 0, 1578732711, '', 1, 16, '0.00', 'out', NULL, NULL),
(367, 0, 1578732711, '', 1, 20, '0.00', 'out', NULL, NULL),
(368, 0, 1578740501, '', 2, 32, '0.00', 'out', NULL, NULL),
(369, 0, 1578740501, '', 2, 31, '0.00', 'out', NULL, NULL),
(370, 0, 1578811248, '', 1, 16, '0.00', 'out', NULL, NULL),
(371, 0, 1578903185, '', 1, 31, '0.00', 'out', NULL, NULL),
(372, 0, 1578976565, '', 1, 7, '0.00', 'out', NULL, NULL),
(373, 0, 1578977199, '', 1, 32, '0.00', 'out', NULL, NULL),
(374, 0, 1578998278, '', 1, 16, '0.00', 'out', NULL, NULL),
(375, 0, 1579000138, '', 1, 32, '0.00', 'out', NULL, NULL),
(376, 0, 1579021626, '', 1, 32, '0.00', 'out', NULL, NULL),
(377, 0, 1579021626, '', 1, 30, '0.00', 'out', NULL, NULL),
(378, 0, 1579021626, '', 1, 22, '0.00', 'out', NULL, NULL),
(379, 0, 1579021882, '', 1, 32, '0.00', 'out', NULL, NULL),
(380, 0, 1579021882, '', 1, 31, '0.00', 'out', NULL, NULL),
(381, 0, 1579041002, '', 10, 19, '0.00', 'out', NULL, NULL),
(382, 0, 1579041002, '', 10, 19, '0.00', 'out', NULL, NULL),
(383, 0, 1579041002, '', 10, 19, '0.00', 'out', NULL, NULL),
(384, 0, 1579083939, '', 1, 18, '0.00', 'out', NULL, NULL),
(385, 0, 1579088472, '', 1, 7, '0.00', 'out', NULL, NULL),
(386, 0, 1579088547, '', 3, 7, '0.00', 'out', NULL, NULL),
(387, 0, 1579157329, '', 2, 7, '0.00', 'out', NULL, NULL),
(388, 0, 1579157329, '', 1, 25, '0.00', 'out', NULL, NULL),
(389, 0, 1579175240, '', 1, 32, '0.00', 'out', NULL, NULL),
(390, 0, 1579183384, '', 1, 5, '0.00', 'out', NULL, NULL),
(391, 0, 1579244206, '', 1, 6, '0.00', 'out', NULL, NULL),
(392, 0, 1579244206, '', 1, 6, '0.00', 'out', NULL, NULL),
(393, 0, 1579244206, '', 1, 6, '0.00', 'out', NULL, NULL),
(394, 0, 1579271589, '', 1, 16, '0.00', 'out', NULL, NULL),
(395, 0, 1579517538, '', 1, 16, '0.00', 'out', NULL, NULL),
(396, 0, 1579543233, '', 1, 32, '0.00', 'out', NULL, NULL),
(397, 0, 1579545268, '', 1, 31, '0.00', 'out', NULL, NULL),
(398, 0, 1579545268, '', 3, 18, '0.00', 'out', NULL, NULL),
(399, 0, 1579591719, '', 1, 7, '0.00', 'out', NULL, NULL),
(400, 0, 1579629961, '', 1, 16, '0.00', 'out', NULL, NULL),
(401, 0, 1579659638, '', 1, 7, '0.00', 'out', NULL, NULL),
(402, 0, 1579729046, '', 1, 16, '0.00', 'out', NULL, NULL),
(403, 0, 1579729046, '', 2, 6, '0.00', 'out', NULL, NULL),
(404, 0, 1579729046, '', 2, 6, '0.00', 'out', NULL, NULL),
(405, 0, 1579729046, '', 2, 6, '0.00', 'out', NULL, NULL),
(406, 0, 1579792468, '', 1, 16, '0.00', 'out', NULL, NULL),
(407, 0, 1579830819, '', 1, 7, '0.00', 'out', NULL, NULL),
(408, 0, 1579861823, '', 1, 10, '0.00', 'out', NULL, NULL),
(409, 0, 1579861823, '', 4, 7, '0.00', 'out', NULL, NULL),
(410, 0, 1579883377, '', 1, 16, '0.00', 'out', NULL, NULL),
(411, 0, 1579883377, '', 1, 7, '0.00', 'out', NULL, NULL),
(412, 0, 1579938943, '', 1, 7, '0.00', 'out', NULL, NULL),
(413, 0, 1579946198, '', 1, 32, '0.00', 'out', NULL, NULL),
(414, 0, 1579995477, '', 4, 7, '0.00', 'out', NULL, NULL),
(415, 0, 1579995477, '', 2, 5, '0.00', 'out', NULL, NULL),
(416, 0, 1580100632, '', 2, 32, '0.00', 'out', NULL, NULL),
(417, 0, 1580177380, '', 1, 32, '0.00', 'out', NULL, NULL),
(418, 0, 1580229665, '', 1, 3, '0.00', 'out', NULL, NULL),
(419, 0, 1580240743, '', 1, 16, '0.00', 'out', NULL, NULL),
(420, 0, 1580374918, '', 1, 32, '0.00', 'out', NULL, NULL),
(421, 0, 1580374918, '', 2, 30, '0.00', 'out', NULL, NULL),
(422, 0, 1580374918, '', 1, 31, '0.00', 'out', NULL, NULL),
(423, 0, 1580390835, '', 1, 32, '0.00', 'out', NULL, NULL),
(424, 0, 1580606572, '', 1, 32, '0.00', 'out', NULL, NULL),
(425, 0, 1580638360, '', 1, 30, '0.00', 'out', NULL, NULL),
(426, 0, 1580652018, '', 1, 2, '0.00', 'out', NULL, NULL),
(427, 0, 1580652072, '', 1, 2, '0.00', 'out', NULL, NULL),
(428, 0, 1580813277, '', 1, 31, '0.00', 'out', NULL, NULL),
(429, 0, 1580814352, '', 1, 2, '0.00', 'out', NULL, NULL),
(430, 0, 1580816031, '', 1, 15, '0.00', 'out', NULL, NULL),
(431, 0, 1580816234, '', 1, 15, '0.00', 'out', NULL, NULL),
(432, 0, 1580816467, '', 1, 15, '0.00', 'out', NULL, NULL),
(433, 0, 1580816924, '', 1, 14, '0.00', 'out', NULL, NULL),
(434, 0, 1580817037, '', 1, 15, '0.00', 'out', NULL, NULL),
(435, 0, 1580904917, '', 1, 7, '0.00', 'out', NULL, NULL),
(436, 0, 1580905464, '', 1, 7, '0.00', 'out', NULL, NULL),
(437, 0, 1580932218, '', 1, 32, '0.00', 'out', NULL, NULL),
(438, 0, 1580940240, '', 1, 1, '0.00', 'out', NULL, NULL),
(439, 0, 1581033287, '', 1, 3, '0.00', 'out', NULL, NULL),
(440, 0, 1581090153, '', 1, 7, '0.00', 'out', NULL, NULL),
(441, 0, 1581233766, '', 1, 32, '0.00', 'out', NULL, NULL),
(442, 0, 1581247432, '', 2, 5, '0.00', 'out', NULL, NULL),
(443, 0, 1581303940, '', 1, 20, '0.00', 'out', NULL, NULL),
(444, 0, 1581303940, '', 1, 16, '0.00', 'out', NULL, NULL),
(445, 0, 1581343292, '', 2, 16, '0.00', 'out', NULL, NULL),
(446, 0, 1581366047, '', 1, 31, '0.00', 'out', NULL, NULL),
(447, 0, 1581384500, '', 1, 32, '0.00', 'out', NULL, NULL),
(448, 0, 1581405905, '', 1, 16, '0.00', 'out', NULL, NULL),
(449, 0, 1581405905, '', 1, 5, '0.00', 'out', NULL, NULL),
(450, 0, 1581411113, '', 1, 32, '0.00', 'out', NULL, NULL),
(451, 0, 1581411113, '', 1, 31, '0.00', 'out', NULL, NULL),
(452, 0, 1581456654, '', 1, 31, '0.00', 'out', NULL, NULL),
(453, 0, 1581456654, '', 1, 31, '0.00', 'out', NULL, NULL),
(454, 0, 1581517599, '', 1, 32, '0.00', 'out', NULL, NULL),
(455, 0, 1581517599, '', 1, 31, '0.00', 'out', NULL, NULL),
(456, 0, 1581518120, '', 1, 7, '0.00', 'out', NULL, NULL),
(457, 0, 1581535688, '', 1, 29, '0.00', 'out', NULL, NULL),
(458, 0, 1581535688, '', 1, 29, '0.00', 'out', NULL, NULL),
(459, 0, 1581535688, '', 1, 29, '0.00', 'out', NULL, NULL),
(460, 0, 1581535688, '', 1, 29, '0.00', 'out', NULL, NULL),
(461, 0, 1581535688, '', 1, 29, '0.00', 'out', NULL, NULL),
(462, 0, 1581535688, '', 1, 29, '0.00', 'out', NULL, NULL),
(463, 0, 1581584598, '', 1, 4, '0.00', 'out', NULL, NULL),
(464, 0, 1581599589, '', 5, 32, '0.00', 'out', NULL, NULL),
(465, 0, 1581622915, '', 1, 32, '0.00', 'out', NULL, NULL),
(466, 0, 1581623494, '', 1, 20, '0.00', 'out', NULL, NULL),
(467, 0, 1581623494, '', 3, 3, '0.00', 'out', NULL, NULL),
(468, 0, 1581675976, '', 1, 31, '0.00', 'out', NULL, NULL),
(469, 0, 1581675976, '', 1, 29, '0.00', 'out', NULL, NULL),
(470, 0, 1581675976, '', 1, 30, '0.00', 'out', NULL, NULL),
(471, 0, 1581705662, '', 1, 14, '0.00', 'out', NULL, NULL),
(472, 0, 1581706335, '', 1, 32, '0.00', 'out', NULL, NULL),
(473, 0, 1581706335, '', 1, 31, '0.00', 'out', NULL, NULL),
(474, 0, 1582020381, '', 14, 14, '0.00', 'out', NULL, NULL),
(475, 0, 1582138664, '', 1, 16, '0.00', 'out', NULL, NULL),
(476, 0, 1582172341, '', 1, 7, '0.00', 'out', NULL, NULL),
(477, 0, 1582172341, '', 1, 31, '0.00', 'out', NULL, NULL),
(478, 0, 1582172341, '', 1, 29, '0.00', 'out', NULL, NULL),
(479, 0, 1582194150, '', 1, 31, '0.00', 'out', NULL, NULL),
(480, 0, 1582194150, '', 1, 22, '0.00', 'out', NULL, NULL),
(481, 0, 1582218124, '', 1, 32, '0.00', 'out', NULL, NULL),
(482, 0, 1583205044, '', 1, 1, '0.00', 'out', NULL, NULL),
(483, 0, 1583230903, '', 1, 7, '0.00', 'out', NULL, NULL),
(484, 0, 1583247689, '', 1, 31, '0.00', 'out', NULL, NULL),
(485, 0, 1583337785, '', 1, 32, '0.00', 'out', NULL, NULL),
(486, 0, 1583838406, '', 1, 32, '0.00', 'out', NULL, NULL),
(487, 0, 1583846512, '', 1, 32, '0.00', 'out', NULL, NULL),
(488, 0, 1583846512, '', 1, 16, '0.00', 'out', NULL, NULL),
(489, 0, 1585679909, '', 1, 4, '0.00', 'out', NULL, NULL),
(490, 0, 1585679909, '', 2, 2, '0.00', 'out', NULL, NULL),
(491, 0, 1585752105, '', 1, 12, '0.00', 'out', NULL, NULL),
(492, 0, 1585752105, '', 60, 10, '0.00', 'out', NULL, NULL),
(493, 1, 0, '123', -920, 10, '10.00', 'in', '2020-04-01 02:54:08', NULL),
(494, 1, 0, '123', 20, 10, '10.00', 'in', '2020-04-01 02:55:22', NULL),
(495, 1, 0, '123', 11, 10, '2.00', 'in', '2020-04-01 02:56:49', NULL),
(496, 1, 0, '123', 1, 10, '1.00', 'in', '2020-04-01 02:57:27', NULL),
(497, 0, 1585753507, '', 1, 31, '0.00', 'out', NULL, NULL),
(498, 0, 1585753507, '', 1, 17, '0.00', 'out', NULL, NULL),
(499, 0, 1585756782, '', 1, 32, '0.00', 'out', NULL, NULL),
(500, 0, 1585757050, '', 1, 1, '0.00', 'out', NULL, NULL),
(501, 0, 1585765669, '', 6, 1, '0.00', 'out', NULL, NULL),
(502, 0, 1585766575, '', 1, 2, '0.00', 'out', NULL, NULL),
(503, 0, 1585766863, '', 1, 1, '0.00', 'out', NULL, NULL),
(504, 0, 1585828625, '', 1, 7, '0.00', 'out', NULL, NULL),
(505, 0, 1585845627, '', 1, 7, '0.00', 'out', NULL, NULL),
(506, 0, 1585845742, '', 1, 26, '0.00', 'out', NULL, NULL),
(507, 0, 1585846050, '', 1, 22, '0.00', 'out', NULL, NULL),
(508, 0, 1585846113, '', 1, 21, '0.00', 'out', NULL, NULL),
(509, 0, 1585846158, '', 1, 30, '0.00', 'out', NULL, NULL),
(510, 0, 1585846302, '', 1, 29, '0.00', 'out', NULL, NULL),
(511, 0, 1585846407, '', 1, 7, '0.00', 'out', NULL, NULL),
(512, 0, 1585847130, '', 3, 7, '0.00', 'out', NULL, NULL),
(513, 0, 1585925827, '', 1, 32, '0.00', 'out', NULL, NULL),
(514, 0, 1585925827, '', 1, 1, '0.00', 'out', NULL, NULL),
(515, 0, 1586019655, '', 1, 14, '0.00', 'out', NULL, NULL),
(516, 0, 1586019655, '', 1, 17, '0.00', 'out', NULL, NULL),
(517, 0, 1586022609, '', 1, 32, '0.00', 'out', NULL, NULL),
(518, 0, 1586022609, '', 1, 26, '0.00', 'out', NULL, NULL),
(519, 0, 1586022609, '', 1, 19, '0.00', 'out', NULL, NULL),
(520, 0, 1586022609, '', 1, 18, '0.00', 'out', NULL, NULL),
(521, 0, 1586022609, '', 1, 17, '0.00', 'out', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory_detail`
--

INSERT INTO `inventory_detail` (`inventory_ref_id`, `products_id`, `attribute_id`) VALUES
(3, 13, 11),
(4, 13, 12),
(5, 13, 13),
(10, 4, 1),
(11, 4, 2),
(12, 4, 4),
(15, 8, 5),
(16, 8, 6),
(17, 8, 7),
(20, 11, 9),
(22, 11, 10),
(30, 21, 14),
(31, 21, 15),
(33, 24, 19),
(34, 24, 18),
(38, 28, 20),
(39, 28, 21),
(64, 8, 6),
(85, 13, 12),
(87, 4, 1),
(103, 4, 1),
(137, 21, 14),
(146, 4, 1),
(174, 4, 1),
(188, 13, 13),
(189, 13, 13),
(190, 13, 13),
(217, 4, 1),
(225, 13, 13),
(227, 8, 7),
(463, 4, 1),
(489, 4, 1),
(508, 21, 14);

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'Shop More'),
(1059, 'Me'),
(1060, 'View All'),
(1061, 'Featured'),
(1062, 'Shop Now'),
(1063, 'New Arrivals'),
(1064, 'Sort'),
(1065, 'Help & Support'),
(1066, 'Select Currency'),
(1067, 'Your Price'),
(1068, 'Billing'),
(1069, 'Ship to a different address?'),
(1070, 'Method'),
(1071, 'Summary'),
(1072, 'Discount'),
(1073, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1074, 'Alert'),
(1075, 'Your Wishlist is Empty'),
(1076, 'Press heart icon on products to add them in wishlist'),
(1077, 'Wishlist'),
(1078, 'All Items'),
(1079, 'Account Info'),
(1080, 'You Must Be Logged in to use this Feature!'),
(1081, 'Remove from Wishlist'),
(1082, 'Sign Up'),
(1083, 'Reset Password'),
(1084, 'Invalid email or password'),
(1085, 'Recent Searches'),
(1086, 'Add to Wishlist'),
(1087, 'Discover Latest Trends'),
(1088, 'Add To My Wishlist'),
(1089, 'Start Shoping'),
(1090, 'A Smart Shopping Experience'),
(1091, 'Addresses'),
(1092, 'Account'),
(1093, 'DETAILS'),
(1094, 'Dark Mode'),
(1095, 'Enter a description'),
(1096, 'Grocery Store'),
(1097, 'Post Comment'),
(1098, 'Rate and write a review'),
(1099, 'Ratings & Reviews'),
(1100, 'Write a review'),
(1101, 'Your Rating'),
(1102, 'rating'),
(1103, 'rating and review'),
(1104, 'Coupon Codes List'),
(1105, 'Custom Orders'),
(1106, 'Ecommerce'),
(1107, 'Featured Products'),
(1108, 'House Hold 1'),
(1109, 'Newest Products'),
(1110, 'On Sale Products'),
(1111, 'Braintree'),
(1112, 'Hyperpay'),
(1113, 'Instamojo'),
(1114, 'PayTm'),
(1115, 'Paypal'),
(1116, 'Razor Pay'),
(1117, 'Stripe');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(11) NOT NULL,
  `label_value` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1520, 'نسيت كلمة المرور الخاصة بي؟', 4, 1),
(1521, 'إن إنشاء حساب يعني موافقتك على شروط الخدمة وسياسة الخصوصية', 4, 2),
(1522, 'تسجيل الدخول مع', 4, 872),
(1523, 'أو', 4, 873),
(1524, 'البريد الإلكتروني', 4, 874),
(1525, 'كلمه السر', 4, 875),
(1526, 'تسجيل', 4, 876),
(1527, 'هل نسيت كلمة المرور', 4, 877),
(1528, 'إرسال', 4, 878),
(1529, 'معلومات عنا', 4, 879),
(1530, 'التصنيفات', 4, 880),
(1531, 'اتصل بنا', 4, 881),
(1532, 'اسم', 4, 882),
(1533, 'رسالتك', 4, 883),
(1534, 'يرجى الاتصال بالإنترنت', 4, 884),
(1535, 'شوهدت مؤخرا', 4, 885),
(1536, 'المنتجات المتاحة.', 4, 886),
(1537, 'أعلى بائع', 4, 887),
(1538, 'صفقة خاصة', 4, 888),
(1539, 'الأكثر إعجابا', 4, 889),
(1540, 'جميع الفئات', 4, 890),
(1541, 'صفقات', 4, 891),
(1542, 'إزالة', 4, 892),
(1543, 'مقدمة', 4, 893),
(1544, 'تخطي المقدمة', 4, 894),
(1545, 'فهمتك!', 4, 895),
(1546, 'تفاصيل الطلب', 4, 896),
(1547, 'سعر التفاصيل', 4, 897),
(1548, 'مجموع', 4, 898),
(1549, 'المجموع الفرعي', 4, 899),
(1550, 'الشحن', 4, 900),
(1551, 'تفاصيل المنتج', 4, 901),
(1552, 'جديد', 4, 902),
(1553, 'إنتهى من المخزن', 4, 903),
(1554, 'في المخزن', 4, 904),
(1555, 'أضف إلى السلة', 4, 905),
(1556, 'أضف إلى السلة', 4, 906),
(1557, 'وصف المنتج', 4, 907),
(1558, 'تفاصيل تقنية', 4, 908),
(1559, 'إيقاف', 4, 909),
(1560, 'لا توجد منتجات', 4, 910),
(1561, 'إعادة تعيين المرشحات', 4, 911),
(1562, 'بحث', 4, 912),
(1563, 'الفئات الرئيسية', 4, 913),
(1564, 'الفئات الفرعية', 4, 914),
(1565, 'طريقة الشحن', 4, 915),
(1566, 'شكرا جزيلا', 4, 916),
(1567, 'شكرا للتسوق معنا.', 4, 917),
(1568, 'طلباتي', 4, 918),
(1569, 'مواصلة التسوق', 4, 919),
(1570, NULL, 4, NULL),
(1571, 'مفضل', 4, 920),
(1572, 'قائمة رغباتك فارغة', 4, 921),
(1573, 'متابعة الإضافة', 4, 922),
(1574, 'يكتشف', 4, 923),
(1575, 'وورد بوست التفاصيل', 4, 924),
(1576, 'عد', 4, 925),
(1577, 'أفضل البائعين', 4, 926),
(1578, 'أخبار', 4, 927),
(1579, 'أدخل الكلمة المفتاحية', 4, 928),
(1580, 'الإعدادات', 4, 929),
(1581, 'متجر', 4, 930),
(1582, 'إعادة تعيين', 4, 931),
(1583, 'اختار اللغة', 4, 932),
(1584, 'إنتهى من المخزن', 4, 933),
(1585, 'الأحدث', 4, 934),
(1586, 'سياسة الاسترجاع', 4, 935),
(1587, 'سياسة خاصة', 4, 936),
(1588, 'مصطلح والخدمات', 4, 937),
(1589, 'تخطى', 4, 938),
(1590, 'أطباق الأعلى', 4, 939),
(1591, 'وصفة اليوم', 4, 940),
(1592, 'فئات الغذاء', 4, 941),
(1593, 'رمز الكوبون', 4, 942),
(1594, 'مبلغ القسيمة', 4, 943),
(1595, 'رمز الكوبون', 4, 944),
(1596, 'كوبون', 4, 945),
(1597, 'ملاحظة للمشتري', 4, 946),
(1598, 'استكشاف المزيد', 4, 947),
(1599, 'الكل', 4, 948),
(1600, 'أ - ي', 4, 949),
(1601, 'ي - أ', 4, 950),
(1602, 'السعر مرتفع منخفض', 4, 951),
(1603, 'سعر منخفض مرتفع', 4, 952),
(1604, 'المنتجات الخاصة', 4, 953),
(1605, 'فرز المنتجات', 4, 954),
(1606, 'إلغاء', 4, 955),
(1607, 'الأكثر إعجابا', 4, 956),
(1608, 'خاص', 4, 957),
(1609, 'أعلى بائع', 4, 958),
(1610, 'الأحدث', 4, 959),
(1611, 'الإعجابات', 4, 960),
(1612, 'حسابي', 4, 961),
(1613, 'التليفون المحمول', 4, 962),
(1614, 'تاريخ الولادة', 4, 963),
(1615, 'تحديث', 4, 964),
(1616, 'كلمة المرور الحالية', 4, 965),
(1617, 'كلمة سر جديدة', 4, 966),
(1618, 'تغيير كلمة المرور', 4, 967),
(1619, 'طلبات العملاء', 4, 968),
(1620, 'حالة الطلب', 4, 969),
(1621, 'معرف الطلبات', 4, 970),
(1622, 'سعر المنتج', 4, 971),
(1623, 'عدد المنتجات', 4, 972),
(1624, 'تاريخ', 4, 973),
(1625, 'عنوان العميل', 4, 974),
(1626, 'يرجى إضافة عنوان الشحن الجديد لمزيد من المعالجة لطلبك', 4, 975),
(1627, 'إضافة عنوان جديد', 4, 976),
(1628, 'انشئ حساب', 4, 977),
(1629, 'الاسم الاول', 4, 978),
(1630, 'الكنية', 4, 979),
(1631, 'هل أنت عضو بالفعل؟', 4, 980),
(1632, 'معلومات الفواتير', 4, 981),
(1633, 'عنوان', 4, 982),
(1634, 'هاتف', 4, 983),
(1635, 'نفس عنوان الشحن', 4, 984),
(1636, 'التالى', 4, 985),
(1637, 'طلب', 4, 986),
(1638, 'عنوان وصول الفواتير', 4, 987),
(1639, 'طريقة الشحن', 4, 988),
(1640, 'منتجات', 4, 989),
(1641, 'حاصل الجمع', 4, 990),
(1642, 'سعر المنتجات', 4, 991),
(1643, 'ضريبة', 4, 992),
(1644, 'تكلفة الشحن', 4, 993),
(1645, 'ترتيب ملاحظات', 4, 994),
(1646, 'دفع', 4, 995),
(1647, 'رقم البطاقة', 4, 996),
(1648, 'تاريخ الإنتهاء', 4, 997),
(1649, 'انتهاء الصلاحية', 4, 998),
(1650, 'خطأ: رقم البطاقة غير صالح!', 4, 999),
(1651, 'خطأ: تاريخ انتهاء الصلاحية غير صحيح!', 4, 1000),
(1652, 'خطأ: رقم cvc غير صالح!', 4, 1001),
(1653, 'استمر', 4, 1002),
(1654, 'سلتي', 4, 1003),
(1655, 'عربة التسوق فارغة', 4, 1004),
(1656, 'مواصلة التسوق', 4, 1005),
(1657, 'السعر', 4, 1006),
(1658, 'كمية', 4, 1007),
(1659, 'بواسطة', 4, 1008),
(1660, 'رأي', 4, 1009),
(1661, 'إزالة', 4, 1010),
(1662, 'تقدم', 4, 1011),
(1663, 'عنوان الشحن', 4, 1012),
(1664, 'بلد', 4, 1013),
(1665, 'آخر', 4, 1014),
(1666, 'منطقة', 4, 1015),
(1667, 'مدينة', 4, 1016),
(1668, 'الرمز البريدي', 4, 1017),
(1669, 'حالة', 4, 1018),
(1670, 'تحديث العنوان', 4, 1019),
(1671, 'حفظ العنوان', 4, 1020),
(1672, 'دخولتسجيل', 4, 1021),
(1673, 'يرجى تسجيل الدخول أو إنشاء حساب مجانا', 4, 1022),
(1674, 'تسجيل خروج', 4, 1023),
(1675, 'قائمة امنياتي', 4, 1024),
(1676, 'مرشحات', 4, 1025),
(1677, 'نطاق السعر', 4, 1026),
(1678, 'قريب', 4, 1027),
(1679, 'تطبيق', 4, 1028),
(1680, 'واضح', 4, 1029),
(1681, 'قائمة طعام', 4, 1030),
(1682, 'الصفحة الرئيسية', 4, 1031),
(1683, 'إن إنشاء حساب يعني أنك بخير من خلال موقعنا', 4, 1033),
(1684, 'تسجيل الدخول', 4, 1034),
(1685, 'تشغيل / إيقاف الإشعارات', 4, 1035),
(1686, 'تشغيل / إيقاف الإشعارات', 4, 1036),
(1687, 'تغيير اللغة', 4, 1037),
(1688, 'الموقع الرسمي', 4, 1038),
(1689, 'قيمنا', 4, 1039),
(1690, 'شارك', 4, 1040),
(1691, 'تعديل الملف الشخصي', 4, 1041),
(1692, 'خصم النسبة المئوية للسلة بأكملها', 4, 1042),
(1693, 'خصم إجمالي ثابت للعربة بأكملها', 4, 1043),
(1694, 'خصم إجمالي ثابت للمنتجات المحددة فقط', 4, 1044),
(1695, 'خصم النسبة المئوية للمنتجات المختارة فقط', 4, 1045),
(1696, 'شبكة متصلة إعادة تحميل البيانات', 4, 1047),
(1697, 'صنف حسب', 4, 1048),
(1698, 'بيع مفاجئ', 4, 1049),
(1699, 'حسنا', 4, 1050),
(1700, 'رقم', 4, 1051),
(1701, 'انتهاء الشهر', 4, 1052),
(1702, 'انتهاء السنة', 4, 1053),
(1703, 'طريقة الدفع او السداد', 4, 1054),
(1704, 'الحالة', 4, 1055),
(1705, 'و', 4, 1056),
(1706, 'cccc', 1, 1057),
(1707, 'cccc', 4, 1057),
(1708, 'Shop More', 1, 1058),
(1709, 'عربي', 4, 1058),
(1710, 'Discount', 1, 1072),
(1711, 'خصم', 4, 1072),
(1712, 'Error in initialization, maybe PayPal isnt supported or something else', 1, 1073),
(1713, 'خطأ في التهيئة ، ربما لا يتم دعم PayPal أو أي شيء آخر', 4, 1073),
(1714, 'Alert', 1, 1074),
(1715, 'إنذار', 4, 1074),
(1716, 'Your Wishlist is Empty', 1, 1075),
(1717, 'قائمة رغباتك فارغة', 4, 1075),
(1718, 'Press heart icon on products to add them in wishlist', 1, 1076),
(1719, 'اضغط على أيقونة القلب على المنتجات لإضافتها إلى قائمة الرغبات', 4, 1076),
(1720, 'Wishlist', 1, 1077),
(1721, 'قائمة الرغبات', 4, 1077),
(1722, 'All Items', 1, 1078),
(1723, 'كل الاشياء', 4, 1078),
(1724, 'Account Info', 1, 1079),
(1725, 'معلومات الحساب', 4, 1079),
(1726, 'You Must Be Logged in to use this Feature!', 1, 1080),
(1727, 'يجب عليك تسجيل الدخول لاستخدام هذه الميزة!', 4, 1080),
(1728, 'Remove from Wishlist', 1, 1081),
(1729, 'إزالة من قائمة الرغبات', 4, 1081),
(1730, 'Sign Up', 1, 1082),
(1731, 'سجل', 4, 1082),
(1732, 'Reset Password', 1, 1083),
(1733, 'إعادة تعيين كلمة المرور', 4, 1083),
(1734, 'Invalid email or password', 1, 1084),
(1735, 'البريد الإلكتروني أو كلمة السر خاطئة', 4, 1084),
(1736, 'Recent Searches', 1, 1085),
(1737, 'عمليات البحث الأخيرة', 4, 1085),
(1738, 'Add to Wishlist', 1, 1086),
(1739, 'أضف إلى قائمة الامنيات', 4, 1086),
(1740, 'Discover Latest Trends', 1, 1087),
(1741, 'اكتشف أحدث الاتجاهات', 4, 1087),
(1742, 'Add To My Wishlist', 1, 1088),
(1743, 'أضف إلى قائمة أمنياتي', 4, 1088),
(1744, 'Start Shoping', 1, 1089),
(1745, 'ابدأ التسوق', 4, 1089),
(1746, 'A Smart Shopping Experience', 1, 1090),
(1747, 'تجربة تسوق ذكية', 4, 1090),
(1748, 'Addresses', 1, 1091),
(1749, 'عناوين', 4, 1091),
(1750, 'Account', 1, 1092),
(1751, 'الحساب', 4, 1092),
(1752, 'DETAILS', 1, 1093),
(1753, 'تفاصيل', 4, 1093),
(1754, 'Dark Mode', 1, 1094),
(1755, 'الوضع الداكن', 4, 1094),
(1756, 'Enter a description', 1, 1095),
(1757, 'أدخل وصفًا', 4, 1095),
(1758, 'Grocery Store', 1, 1096),
(1759, 'بقالة', 4, 1096),
(1760, 'Post Comment', 1, 1097),
(1761, 'أضف تعليقا', 4, 1097),
(1762, 'Rate and write a review', 1, 1098),
(1763, 'تقييم وكتابة مراجعة', 4, 1098),
(1764, 'Ratings & Reviews', 1, 1099),
(1765, 'التقييمات والمراجعات', 4, 1099),
(1766, 'Write a review', 1, 1100),
(1767, 'أكتب مراجعة', 4, 1100),
(1768, 'Your Rating', 1, 1101),
(1769, 'تقييمك', 4, 1101),
(1770, 'rating', 1, 1102),
(1771, 'تقييم', 4, 1102),
(1772, 'rating and review', 1, 1103),
(1773, 'تصنيف ومراجعة', 4, 1103),
(1774, 'Coupon Codes List', 1, 1104),
(1775, 'قائمة رموز القسيمة', 4, 1104),
(1776, 'Custom Orders', 1, 1105),
(1777, 'أوامر مخصصة', 4, 1105),
(1778, 'Ecommerce', 1, 1106),
(1779, 'التجارة الإلكترونية', 4, 1106),
(1780, 'Featured Products', 1, 1107),
(1781, 'منتجات مميزة', 4, 1107),
(1782, 'House Hold 1', 1, 1108),
(1783, 'المنزل عقد 1', 4, 1108),
(1784, 'Newest Products', 1, 1109),
(1785, 'أحدث المنتجات', 4, 1109),
(1786, 'On Sale Products', 1, 1110),
(1787, 'المنتجات المعروضة للبيع', 4, 1110),
(1788, 'Braintree', 1, 1111),
(1789, 'برينتري', 4, 1111),
(1790, 'Hyperpay', 1, 1112),
(1791, 'Hyperpay', 4, 1112),
(1792, 'Instamojo', 1, 1113),
(1793, 'Instamojo', 4, 1113),
(1794, 'PayTm', 1, 1114),
(1795, 'PayTm', 4, 1114),
(1796, 'Paypal', 1, 1115),
(1797, 'باي بال', 4, 1115),
(1798, 'Razor Pay', 1, 1116),
(1799, 'الحلاقة الدفع', 4, 1116),
(1800, 'Stripe', 1, 1117),
(1801, 'شريط', 4, 1117),
(1802, 'Me', 1, 1059),
(1803, 'أنا', 4, 1059),
(1804, 'View All', 1, 1060),
(1805, 'عرض الكل', 4, 1060),
(1806, 'Featured', 1, 1061),
(1807, 'متميز', 4, 1061),
(1808, 'Shop Now', 1, 1062),
(1809, 'تسوق الآن', 4, 1062),
(1810, 'New Arrivals', 1, 1063),
(1811, 'الوافدون الجدد', 4, 1063),
(1812, 'Sort', 1, 1064),
(1813, 'فرز', 4, 1064),
(1814, 'Help & Support', 1, 1065),
(1815, 'ساعد لدعم', 4, 1065),
(1816, 'Select Currency', 1, 1066),
(1817, 'اختر العملة', 4, 1066),
(1818, 'Your Price', 1, 1067),
(1819, 'السعر الخاص', 4, 1067),
(1820, 'Billing', 1, 1068),
(1821, 'الفواتير', 4, 1068),
(1822, 'Ship to a different address?', 1, 1069),
(1823, 'هل تريد الشحن إلى عنوان مختلف؟', 4, 1069),
(1824, 'Method', 1, 1070),
(1825, 'طريقة', 4, 1070),
(1826, 'Summary', 1, 1071),
(1827, 'ملخص', 4, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `directory` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `is_default`, `status`) VALUES
(1, 'English', 'en', '1', NULL, 1, 'ltr', 1, 1),
(4, 'Arabic', 'ar', '452', NULL, 2, 'rtl', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(11) NOT NULL,
  `user_types_id` tinyint(1) NOT NULL DEFAULT '0',
  `dashboard_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT '0',
  `categories_view` tinyint(1) NOT NULL DEFAULT '0',
  `categories_create` tinyint(1) NOT NULL DEFAULT '0',
  `categories_update` tinyint(1) NOT NULL DEFAULT '0',
  `categories_delete` tinyint(1) NOT NULL DEFAULT '0',
  `products_view` tinyint(1) NOT NULL DEFAULT '0',
  `products_create` tinyint(1) NOT NULL DEFAULT '0',
  `products_update` tinyint(1) NOT NULL DEFAULT '0',
  `products_delete` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` tinyint(1) NOT NULL DEFAULT '0',
  `news_create` tinyint(1) NOT NULL DEFAULT '0',
  `news_update` tinyint(1) NOT NULL DEFAULT '0',
  `news_delete` tinyint(1) NOT NULL DEFAULT '0',
  `customers_view` tinyint(1) NOT NULL DEFAULT '0',
  `customers_create` tinyint(1) NOT NULL DEFAULT '0',
  `customers_update` tinyint(1) NOT NULL DEFAULT '0',
  `customers_delete` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_view` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_create` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_update` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_view` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_create` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_update` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_delete` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_view` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_send` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view` tinyint(1) NOT NULL DEFAULT '0',
  `orders_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `reports_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT '0',
  `language_view` tinyint(1) NOT NULL DEFAULT '0',
  `language_create` tinyint(1) NOT NULL DEFAULT '0',
  `language_update` tinyint(1) NOT NULL DEFAULT '0',
  `language_delete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0',
  `profile_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_view` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_create` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_delete` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT '0',
  `add_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_media` tinyint(1) NOT NULL DEFAULT '0',
  `view_media` tinyint(1) NOT NULL DEFAULT '0',
  `delete_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_management` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_view` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_update` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `reviews_view`, `reviews_update`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacturer_image` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturers_id`, `manufacturer_name`, `manufacturers_slug`, `date_added`, `last_modified`, `manufacturer_image`, `created_at`, `updated_at`) VALUES
(1, 'Manufacturer #1', 'manufacturer-1', NULL, NULL, NULL, '2020-06-25 01:09:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturers_info`
--

INSERT INTO `manufacturers_info` (`manufacturers_id`, `languages_id`, `manufacturers_url`, `url_clicked`, `date_last_click`) VALUES
(1, 1, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 5, '/', '/', 0, 1, NULL, NULL),
(2, 2, NULL, 0, 5, 'shop', '/shop', 0, 1, NULL, NULL),
(3, 4, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(18, 5, 2, 3, 2, '/page?name=about-us', 'about-us', 0, 1, NULL, NULL),
(19, 6, 4, 3, 2, '/page?name=privacy-policy', 'privacy-policy', 0, 1, NULL, NULL),
(20, 3, NULL, 0, 5, 'news', '/news', 0, 1, NULL, NULL),
(22, 7, NULL, 0, 5, 'contact', '/contact', 0, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 4, 'منزل'),
(11, 2, 1, 'SHOP'),
(12, 2, 4, 'تسوق'),
(25, 3, 1, 'INFO PAGES'),
(26, 3, 4, 'صفحات المعلومات'),
(33, 18, 1, 'About Us'),
(34, 18, 4, 'معلومات عنا'),
(35, 19, 1, 'Privacy Policy'),
(36, 19, 4, 'سياسة خاصة'),
(37, 20, 1, 'News'),
(38, 20, 4, 'أخبار'),
(41, 22, 1, 'Contact Us'),
(42, 22, 4, 'اتصل بنا');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_24_122557_create_address_book_table', 1),
(2, '2019_09_24_122557_create_alert_settings_table', 1),
(3, '2019_09_24_122557_create_api_calls_list_table', 1),
(4, '2019_09_24_122557_create_banners_history_table', 1),
(5, '2019_09_24_122557_create_banners_table', 1),
(6, '2019_09_24_122557_create_block_ips_table', 1),
(7, '2019_09_24_122557_create_categories_description_table', 1),
(8, '2019_09_24_122557_create_categories_role_table', 1),
(9, '2019_09_24_122557_create_categories_table', 1),
(10, '2019_09_24_122557_create_compare_table', 1),
(11, '2019_09_24_122557_create_constant_banners_table', 1),
(12, '2019_09_24_122557_create_countries_table', 1),
(13, '2019_09_24_122557_create_coupons_table', 1),
(14, '2019_09_24_122557_create_currencies_table', 1),
(15, '2019_09_24_122557_create_currency_record_table', 1),
(16, '2019_09_24_122557_create_current_theme_table', 1),
(17, '2019_09_24_122557_create_customers_basket_attributes_table', 1),
(18, '2019_09_24_122557_create_customers_basket_table', 1),
(19, '2019_09_24_122557_create_customers_info_table', 1),
(20, '2019_09_24_122557_create_customers_table', 1),
(21, '2019_09_24_122557_create_devices_table', 1),
(22, '2019_09_24_122557_create_flash_sale_table', 1),
(23, '2019_09_24_122557_create_flate_rate_table', 1),
(24, '2019_09_24_122557_create_front_end_theme_content_table', 1),
(25, '2019_09_24_122557_create_geo_zones_table', 1),
(26, '2019_09_24_122557_create_http_call_record_table', 1),
(27, '2019_09_24_122557_create_image_categories_table', 1),
(28, '2019_09_24_122557_create_images_table', 1),
(29, '2019_09_24_122557_create_inventory_detail_table', 1),
(30, '2019_09_24_122557_create_inventory_table', 1),
(31, '2019_09_24_122557_create_label_value_table', 1),
(32, '2019_09_24_122557_create_labels_table', 1),
(33, '2019_09_24_122557_create_languages_table', 1),
(34, '2019_09_24_122557_create_liked_products_table', 1),
(35, '2019_09_24_122557_create_manage_min_max_table', 1),
(36, '2019_09_24_122557_create_manage_role_table', 1),
(37, '2019_09_24_122557_create_manufacturers_info_table', 1),
(38, '2019_09_24_122557_create_manufacturers_table', 1),
(39, '2019_09_24_122557_create_news_categories_description_table', 1),
(40, '2019_09_24_122557_create_news_categories_table', 1),
(41, '2019_09_24_122557_create_news_description_table', 1),
(42, '2019_09_24_122557_create_news_table', 1),
(43, '2019_09_24_122557_create_news_to_news_categories_table', 1),
(44, '2019_09_24_122557_create_orders_products_attributes_table', 1),
(45, '2019_09_24_122557_create_orders_products_table', 1),
(46, '2019_09_24_122557_create_orders_status_description_table', 1),
(47, '2019_09_24_122557_create_orders_status_history_table', 1),
(48, '2019_09_24_122557_create_orders_status_table', 1),
(49, '2019_09_24_122557_create_orders_table', 1),
(50, '2019_09_24_122557_create_orders_total_table', 1),
(51, '2019_09_24_122557_create_pages_description_table', 1),
(52, '2019_09_24_122557_create_pages_table', 1),
(53, '2019_09_24_122557_create_payment_description_table', 1),
(54, '2019_09_24_122557_create_payment_methods_detail_table', 1),
(55, '2019_09_24_122557_create_payment_methods_table', 1),
(56, '2019_09_24_122557_create_permissions_table', 1),
(57, '2019_09_24_122557_create_products_attributes_table', 1),
(58, '2019_09_24_122557_create_products_description_table', 1),
(59, '2019_09_24_122557_create_products_images_table', 1),
(60, '2019_09_24_122557_create_products_options_descriptions_table', 1),
(61, '2019_09_24_122557_create_products_options_table', 1),
(62, '2019_09_24_122557_create_products_options_values_descriptions_table', 1),
(63, '2019_09_24_122557_create_products_options_values_table', 1),
(64, '2019_09_24_122557_create_products_shipping_rates_table', 1),
(65, '2019_09_24_122557_create_products_table', 1),
(66, '2019_09_24_122557_create_products_to_categories_table', 1),
(67, '2019_09_24_122557_create_reviews_description_table', 1),
(68, '2019_09_24_122557_create_reviews_table', 1),
(69, '2019_09_24_122557_create_sessions_table', 1),
(70, '2019_09_24_122557_create_settings_table', 1),
(71, '2019_09_24_122557_create_shipping_description_table', 1),
(72, '2019_09_24_122557_create_shipping_methods_table', 1),
(73, '2019_09_24_122557_create_sliders_images_table', 1),
(74, '2019_09_24_122557_create_specials_table', 1),
(75, '2019_09_24_122557_create_tax_class_table', 1),
(76, '2019_09_24_122557_create_tax_rates_table', 1),
(77, '2019_09_24_122557_create_units_descriptions_table', 1),
(78, '2019_09_24_122557_create_units_table', 1),
(79, '2019_09_24_122557_create_ups_shipping_table', 1),
(80, '2019_09_24_122557_create_user_to_address_table', 1),
(81, '2019_09_24_122557_create_user_types_table', 1),
(82, '2019_09_24_122557_create_users_table', 1),
(83, '2019_09_24_122557_create_whos_online_table', 1),
(84, '2019_09_24_122557_create_zones_table', 1),
(85, '2019_09_24_122557_create_zones_to_geo_zones_table', 1),
(86, '2019_12_11_070737_create_menus_table', 1),
(87, '2019_12_11_070821_create_menu_translation_table', 1),
(88, '2020_02_04_121358_top_offers', 1),
(89, '2020_03_25_141022_create_home_banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` text COLLATE utf8mb4_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_image`, `news_date_added`, `news_last_modified`, `news_status`, `is_feature`, `news_slug`, `created_at`, `updated_at`) VALUES
(1, '419', '2020-04-05 01:10:00', NULL, 1, 1, 'world-business-news', '2019-09-18 11:17:41', '2020-04-01 05:12:31'),
(2, '420', '2020-04-05 01:10:00', NULL, 1, 0, 'witn-news', '2019-09-18 11:23:26', '2019-10-01 12:25:20'),
(3, '421', '2020-04-05 01:10:00', NULL, 1, 0, 'stock-exchange', '2019-09-24 12:02:25', '2019-10-01 12:25:44'),
(4, '447', '2020-04-05 01:10:00', NULL, 1, 1, 'manufacturing-tools', '2019-09-24 12:03:19', '2019-10-01 12:26:07'),
(5, '449', '2020-04-05 01:10:00', NULL, 1, 1, 'fashion-week', '2019-09-24 12:31:11', '2019-10-01 12:26:45'),
(6, '448', '2020-04-05 01:10:00', NULL, 1, 1, 'world-wide-networking', '2019-09-24 12:33:17', '2019-10-01 12:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `news_categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(3, '417', '', 0, 1, NULL, '2020-04-01 05:10:03', 'tools-and-technology', 1, '2019-09-24 11:56:31', NULL),
(4, '418', '', 0, 4, NULL, '2020-04-01 05:10:27', 'business', 1, '2019-09-24 11:57:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_categories_description`
--

INSERT INTO `news_categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(3, 3, 1, 'Tools and Technology'),
(4, 4, 1, 'Business'),
(5, 3, 4, 'الأدوات والتكنولوجيا'),
(6, 4, 4, 'اعمال');

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci,
  `news_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_description`
--

INSERT INTO `news_description` (`language_id`, `news_name`, `news_id`, `news_description`, `news_url`, `news_viewed`) VALUES
(1, 'World Business', 1, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'World Information Technology', 2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', 0),
(1, 'Stock Exchange', 3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '0', 0),
(1, 'Why to choose this app for your Project?', 4, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'Fashion Week', 5, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(1, 'Tool and Technology', 6, '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&amp;rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '0', 0),
(4, 'عالم الأعمال', 1, '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', '0', 0),
(4, 'عالم تكنولوجيا المعلومات', 2, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'تداول الاسهم', 3, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'لماذا تختار هذا التطبيق لمشروعك؟', 4, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'أسبوع الموضة', 5, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0),
(4, 'الأداة والتكنولوجيا', 6, 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_to_news_categories`
--

INSERT INTO `news_to_news_categories` (`news_id`, `categories_id`, `created_at`, `updated_at`) VALUES
(1, 4, '2019-09-18 11:17:41', '2020-04-01 05:12:31'),
(2, 3, '2019-09-18 11:23:26', '2019-10-01 12:25:20'),
(3, 4, '2019-09-24 12:02:25', '2019-10-01 12:25:44'),
(4, 3, '2019-09-24 12:03:19', '2019-10-01 12:26:07'),
(5, 4, '2019-09-24 12:31:11', '2019-10-01 12:26:45'),
(6, 3, '2019-09-24 12:33:17', '2019-10-01 12:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_suburb` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 0, 0, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT '0',
  `comments` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'about-us', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2),
(9, 'ssssss', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\r\n\r\n<p>&nbsp;</p>', 1, 4),
(13, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy &nbsp; text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 1, 5),
(16, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\r\n\r\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\r\n\r\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\r\n\r\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\r\n\r\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\r\n\r\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\r\n\r\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\r\n\r\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\r\n\r\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\r\n\r\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\r\n\r\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\r\n\r\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\r\n\r\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\r\n\r\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\r\n\r\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n\r\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\r\n\r\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\r\n\r\n<p>of Lorem Ipsum.</p>', 1, 7),
(22, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\r\n\r\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\r\n\r\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\r\n\r\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\r\n\r\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\r\n\r\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\r\n\r\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\r\n\r\n<ul>\r\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\r\n<li>Etiam eleifend ex eu interdum varius.</li>\r\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\r\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\r\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\r\n</ul>\r\n\r\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 8),
(23, 'cccd', '<p>ccddcdc</p>', 1, 9),
(24, 'سياسة خاصة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 1),
(25, 'مصطلح والخدمات', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 2),
(26, 'سياسة الاسترجاع', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 3),
(27, 'معلومات عنا', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 4),
(28, 'سياسة خاصة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 5),
(29, 'معلومات عنا', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 8),
(30, 'سياسة الاسترجاع', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 7),
(31, 'مصطلح والخدمات', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', ''),
(10, 7, 'Razor Pay', 1, '', ''),
(11, 8, 'PayTm', 1, '', ''),
(12, 9, 'Direct Bank Transfer', 1, 'Make your payment directly into our bank account. Please use your Order ID as the payment reference.', ''),
(13, 10, 'Paystack', 1, '', ''),
(14, 11, 'Midtrans', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `environment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 0, 0, '2019-09-18 16:40:13', '0000-00-00 00:00:00'),
(2, 'stripe', 0, 0, '2019-09-18 16:56:17', '0000-00-00 00:00:00'),
(3, 'paypal', 0, 0, '2019-09-18 16:56:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 16:56:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 0, 0, '2019-09-18 16:57:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(9, 'banktransfer', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(10, 'paystack', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00'),
(11, 'midtrans', 0, 0, '2019-09-18 16:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

CREATE TABLE `payment_methods_detail` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', ''),
(4, 1, 'public_key', ''),
(5, 1, 'private_key', ''),
(9, 2, 'secret_key', ''),
(10, 2, 'publishable_key', ''),
(15, 3, 'id', ''),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', ''),
(22, 5, 'auth_token', ''),
(23, 5, 'client_id', ''),
(24, 5, 'client_secret', ''),
(32, 6, 'userid', ''),
(33, 6, 'password', ''),
(34, 6, 'entityid', ''),
(35, 7, 'RAZORPAY_KEY', ''),
(36, 7, 'RAZORPAY_SECRET', ''),
(37, 8, 'paytm_mid', ''),
(39, 8, 'paytm_key', 'w#'),
(40, 8, 'current_domain_name', ''),
(41, 9, 'account_name', ''),
(42, 9, 'account_number', ''),
(43, 9, 'bank_name', ''),
(44, 9, 'short_code', ''),
(45, 9, 'iban', ''),
(46, 9, 'swift', ''),
(47, 10, 'secret_key', ''),
(48, 10, 'public_key', ''),
(49, 11, 'merchant_id', ''),
(50, 11, 'server_key', ''),
(51, 11, 'client_key', '');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8mb4_unicode_ci,
  `products_video_link` text COLLATE utf8mb4_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `products_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT '0',
  `products_min_order` int(11) NOT NULL DEFAULT '1',
  `products_max_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `products_quantity`, `products_model`, `products_image`, `products_video_link`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`, `currency`) VALUES
(1, 0, 'fresh', '412', NULL, '85.00', '2020-04-05 01:10:00', NULL, NULL, '0.500', NULL, 1, 1, 0, NULL, 0, 1, 0, 1, 'casual-tracksuit-children-boy', 0, 1, 0, '2019-09-17 11:06:27', '2019-10-01 12:17:25', ''),
(2, 0, 'fresh', '408', NULL, '60.00', '2020-04-05 01:10:00', NULL, NULL, '0.370', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'fashion-plaid-boy-clothing-set', 0, 1, 0, '2019-09-17 11:20:43', '2019-10-01 12:16:55', ''),
(3, 0, 'fresh', '405', NULL, '55.00', '2020-04-05 01:10:00', NULL, NULL, '0.800', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'cosplay-minnie-mouse-dress', 0, 1, 0, '2019-09-17 11:28:04', '2019-10-01 12:16:24', ''),
(4, 0, NULL, '400', NULL, '90.00', '2020-04-05 01:10:00', NULL, NULL, '1.00', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'princess-flower-girl-dress', 1, 1, 0, '2019-09-17 11:31:56', '2019-10-01 12:15:47', ''),
(5, 0, 'fresh', '395', NULL, '45.00', '2020-04-05 01:10:00', NULL, NULL, '0.200', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'casual-breathable-outdoor-kids-sneakers', 0, 1, 0, '2019-09-17 11:51:32', '2019-10-01 12:15:21', ''),
(6, 0, 'fresh', '390', NULL, '30.00', '2020-04-05 01:10:00', NULL, NULL, '0.150', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'alloy-military-quartz-watch-man', 0, 1, 0, '2019-09-17 12:01:11', '2019-10-01 12:14:48', ''),
(7, -3, 'fresh', '385', NULL, '25.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 3, 0, 0, 1, 'men-s-cotton-classic-baseball-cap', 0, 1, 0, '2019-09-17 12:18:31', '2020-04-02 11:12:24', ''),
(8, 0, 'fresh', '383', NULL, '32.00', '2020-04-05 01:10:00', NULL, NULL, '0.225', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'carrot-fitt-jeans', 1, 1, 0, '2019-09-17 12:24:49', '2019-10-01 12:10:52', ''),
(9, 0, 'fresh', '378', NULL, '15.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'casual-cotton-jeans-for-men', 0, 1, 0, '2019-09-17 12:30:05', '2019-10-01 12:09:48', ''),
(10, 0, 'fresh', '375', NULL, '28.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'super-skinny-fitt-jeans', 0, 1, 0, '2019-09-17 12:39:51', '2019-10-01 12:07:51', ''),
(11, 0, 'fresh', '372', NULL, '21.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'dotted-casual-shirt-for-men', 1, 1, 0, '2019-09-17 12:45:49', '2019-10-01 12:05:34', ''),
(12, 0, NULL, '367', NULL, '18.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'juventus-henley-neck-tshirt', 0, 1, 0, '2019-09-17 12:50:49', '2019-10-01 12:04:50', ''),
(13, 0, NULL, '364', NULL, '34.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'men-polo-casual-shirt', 1, 1, 0, '2019-09-17 12:55:20', '2019-10-01 12:02:22', ''),
(14, 0, 'fresh', '359', NULL, '39.99', '2020-04-05 01:10:00', NULL, NULL, '0.450', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'brock-knitted-mesh-casual-oxford-sneakers', 0, 1, 0, '2019-09-17 01:00:29', '2019-10-01 12:01:22', ''),
(15, 0, NULL, '355', NULL, '48.00', '2020-04-05 01:10:00', NULL, NULL, '0.350', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'light-man-lace-up-shoes', 0, 1, 0, '2019-09-17 01:03:15', '2019-10-01 12:00:03', ''),
(16, -1, NULL, '350', NULL, '52.00', '2020-04-05 01:10:00', NULL, NULL, '0.500', NULL, 1, 1, 0, NULL, 1, 0, 0, 0, 'mesh-breathable-men-s-sneakers', 0, 1, 0, '2019-09-17 01:07:07', '2019-10-01 11:59:13', ''),
(17, 0, NULL, '344', NULL, '19.00', '2020-04-05 01:10:00', NULL, NULL, '0.125', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'fashion-foldable-beach-sun-hat', 0, 1, 0, '2019-09-17 01:13:05', '2019-10-01 11:58:31', ''),
(18, 0, NULL, '339', NULL, '36.99', '2020-04-05 01:10:00', NULL, NULL, '0.200', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'women-magnet-buckle-quartz-watch', 0, 1, 0, '2019-09-17 01:15:40', '2019-10-01 11:58:01', ''),
(19, 0, NULL, '337', NULL, '23.00', '2020-04-05 01:10:00', NULL, NULL, '0.100', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'cotton-skirt-for-women', 0, 1, 0, '2019-09-17 01:20:25', '2019-10-01 11:57:29', ''),
(20, 0, NULL, '333', NULL, '90.00', '2019-09-18 07:10:39', NULL, NULL, '0.300', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'cotton-skirt-with-buttons', 0, 1, 0, '2019-09-17 01:23:37', '2019-10-01 11:56:36', ''),
(21, 0, NULL, '330', NULL, '77.00', '2019-09-18 07:10:39', NULL, NULL, '0.600', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'mid-waist-culottes-pent', 1, 1, 0, '2019-09-17 01:56:06', '2019-10-01 11:55:45', ''),
(22, 0, NULL, '324', NULL, '96.00', '2019-09-18 07:10:39', NULL, NULL, '0.600', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'crystal-high-heels', 0, 1, 0, '2019-09-17 02:01:42', '2019-09-24 10:19:34', ''),
(24, 0, NULL, '319', NULL, '87.00', '2019-09-18 07:10:39', NULL, NULL, '0.550', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'party-dinner-shoes-woman', 1, 1, 0, '2019-09-17 02:11:17', '2019-10-01 11:55:03', ''),
(25, 0, NULL, '313', NULL, '73.00', '2019-09-18 07:10:39', NULL, NULL, '0.525', NULL, 1, 1, 0, NULL, 0, 0, 0, 1, 'women-pumps-ankle-strap', 0, 1, 0, '2019-09-17 02:15:09', '2019-10-01 11:54:23', ''),
(26, 0, 'fresh', '310', NULL, '105.00', '2019-09-18 07:10:39', NULL, NULL, '0.525', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'button-up-shoulder-top', 0, 1, 0, '2019-09-18 06:35:14', '2020-03-04 02:29:19', ''),
(27, 0, NULL, '307', NULL, '75.00', '2019-09-18 07:10:39', NULL, NULL, '0.400', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'double-tank-shirt-for-women', 0, 1, 0, '2019-09-18 06:40:38', '2019-10-01 11:53:00', ''),
(28, 0, NULL, '301', NULL, '92.00', '2019-09-18 07:10:39', NULL, NULL, '0.400', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'printed-rose-petal-shirt', 1, 1, 0, '2019-09-18 06:45:49', '2019-10-01 11:52:07', ''),
(29, 0, NULL, '300', NULL, '79.00', '2019-09-18 07:10:39', NULL, NULL, '0.400', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'strip-knitwear-for-women', 0, 1, 0, '2019-09-18 06:50:40', '2019-10-01 11:51:36', ''),
(30, 0, NULL, '297', NULL, '130.00', '2019-09-18 07:10:39', NULL, NULL, '0.750', NULL, 1, 1, 0, NULL, 0, 0, 0, 0, 'denim-jacket-reverse', 0, 1, 0, '2019-09-18 07:00:31', '2019-10-01 11:51:05', ''),
(31, 0, NULL, '292', NULL, '67.00', '2019-09-18 07:10:39', NULL, NULL, '0.800', NULL, 1, 1, 0, NULL, 0, 1, 0, 0, 'quilted-gilet-hoodie', 0, 1, 0, '2019-09-18 07:05:41', '2019-10-01 11:50:24', ''),
(32, 0, NULL, '288', NULL, '81.00', '2019-09-18 07:10:39', NULL, NULL, '0.900', NULL, 1, 1, 0, NULL, 2, 2, 0, 0, 'straight-long-coat', 0, 1, 0, '2019-09-18 07:10:39', '2020-04-02 06:08:37', '');

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_attributes`
--

INSERT INTO `products_attributes` (`products_attributes_id`, `products_id`, `options_id`, `options_values_id`, `options_values_price`, `price_prefix`, `is_default`) VALUES
(1, 4, 1, 1, '0.00', '+', 1),
(2, 4, 1, 2, '0.00', '+', 1),
(3, 4, 1, 3, '0.00', '+', 1),
(4, 4, 1, 4, '0.00', '+', 1),
(5, 8, 3, 9, '0.00', '+', 1),
(6, 8, 3, 10, '0.00', '+', 1),
(7, 8, 3, 11, '0.00', '+', 1),
(8, 8, 3, 12, '0.00', '+', 1),
(9, 11, 2, 5, '0.00', '+', 1),
(10, 11, 2, 7, '0.00', '+', 1),
(11, 13, 2, 5, '0.00', '+', 1),
(12, 13, 2, 6, '0.00', '+', 1),
(13, 13, 2, 8, '0.00', '+', 1),
(14, 21, 1, 1, '0.00', '+', 1),
(15, 21, 1, 4, '0.00', '+', 1),
(19, 24, 1, 4, '0.00', '+', 1),
(18, 24, 1, 1, '0.00', '+', 1),
(20, 28, 2, 5, '0.00', '+', 1),
(21, 28, 2, 6, '0.00', '+', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes_download`
--

CREATE TABLE `products_attributes_download` (
  `products_attributes_id` int(11) NOT NULL,
  `products_attributes_filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_attributes_maxdays` int(11) DEFAULT '0',
  `products_attributes_maxcount` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8mb4_unicode_ci,
  `products_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT '0',
  `products_left_banner` text COLLATE utf8mb4_unicode_ci,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8mb4_unicode_ci,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 1, 'Casual Tracksuit Children Boy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(2, 2, 1, 'Fashion Plaid Boy Clothing Set', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(3, 3, 1, 'Cosplay Minnie Mouse Dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(4, 4, 1, 'Princess Flower Girl Dress', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(5, 5, 1, 'Casual Breathable Outdoor Kids Sneakers', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(6, 6, 1, 'Alloy Military Quartz watch man', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(7, 7, 1, 'Men\'s Cotton Classic Baseball Cap', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(8, 8, 1, 'Carrot Fitt Jeans', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(9, 9, 1, 'Casual Cotton Jeans for Men', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '161', 0, 0, '161', 0, 0),
(10, 10, 1, 'Super Skinny fitt Jeans', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '163', 0, 0, '163', 0, 0),
(11, 11, 1, 'Dotted Casual Shirt for men', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(12, 12, 1, 'Juventus Henley Neck Tshirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(13, 13, 1, 'Men Polo Casual Shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(14, 14, 1, 'Brock Knitted Mesh Casual Oxford Sneakers', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(15, 15, 1, 'Light Man Lace-up Shoes', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '182', 0, 0, '182', 0, 0),
(16, 16, 1, 'Mesh Breathable Men\'s Sneakers', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(17, 17, 1, 'Fashion Foldable Beach Sun Hat', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(18, 18, 1, 'Women Magnet Buckle Quartz Watch', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '197', 0, 0, '197', 0, 0),
(19, 19, 1, 'Cotton Skirt For Women', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(20, 20, 1, 'Cotton skirt with Buttons', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(21, 21, 1, 'Mid waist culottes  Pent', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '210', 0, 0, '210', 0, 0),
(22, 22, 1, 'Crystal High Heels', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(24, 24, 1, 'Party Dinner Shoes Woman', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '218', 0, 0, '218', 0, 0),
(25, 25, 1, 'Women Pumps Ankle Strap', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '222', 0, 0, '222', 0, 0),
(26, 26, 1, 'Button up  Shoulder Top', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(27, 27, 1, 'Double Tank Shirt for Women', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, '235', 0, 0, '235', 0, 0),
(28, 28, 1, 'Printed Rose Petal Shirt', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(29, 29, 1, 'Strip Knitwear for women', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(30, 30, 1, 'Denim jacket reverse', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(31, 31, 1, 'Quilted gilet hoodie', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(32, 32, 1, 'Straight long coat', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(36, 32, 4, 'معطف طويل مستقيم', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(37, 31, 4, 'هودي مبطن جيليه', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(38, 30, 4, 'سترة الدنيم عكس', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(39, 29, 4, 'تريكو الشريط للمرأة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(40, 28, 4, 'قميص بطبعات الورود', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(41, 27, 4, 'قميص دبابات مزدوج للمرأة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(42, 26, 4, 'زر أعلى الكتف الأعلى', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(43, 25, 4, 'المرأة مضخات رباط الكاحل', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(44, 24, 4, 'حفل عشاء حذاء امرأة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(45, 21, 4, 'منتصف الخصر كولوتيس بنت', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(46, 20, 4, 'تنورة من القطن مع أزرار', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0);
INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(47, 19, 4, 'تنورة قطنية للنساء', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(48, 18, 4, 'النساء المغناطيس مشبك الكوارتز ووتش', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(49, 17, 4, 'أزياء طوي شاطئ أحد هات', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(50, 16, 4, 'شبكة تنفس أحذية رياضية للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(51, 15, 4, 'ضوء رجل الدانتيل متابعة الأحذية', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(52, 14, 4, 'بروك محبوك شبكة عارضة أكسفورد أحذية رياضية', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(53, 13, 4, 'قميص بولو للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(54, 12, 4, 'تي شيرت يوفنتوس هينلي', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(55, 11, 4, 'قميص عارضة منقط للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(56, 10, 4, 'بنطال جينز سكيني', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(57, 9, 4, 'جينز قطني كاجوال للرجال', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(58, 8, 4, 'جينز بقصة ضيقة', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(59, 7, 4, 'قبعة بيسبول كلاسيكية للرجال قطن', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(60, 6, 4, 'سبيكة العسكرية الكوارتز مشاهدة الرجل', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(61, 5, 4, 'عارضة أحذية أطفال في الهواء الطلق تنفس', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(62, 4, 4, 'الأميرة زهرة فتاة اللباس', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(63, 3, 4, 'ميني ماوس اللباس تأثيري', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(64, 2, 4, 'الأزياء منقوشة مجموعة ملابس الصبي', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(65, 1, 4, 'عارضة رياضية الأطفال بوي', 'ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء.\r\n\r\nأم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم.\r\n\r\nثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء.\r\n\r\nعرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل.\r\n\r\nمكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا.\r\n\r\nكان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل.\r\n\r\nحتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد.\r\n\r\nعدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات.\r\n\r\nكلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية.\r\n\r\nعن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.', NULL, 0, NULL, 0, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `htmlcontent` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, '413', NULL, 2),
(7, 2, '408', NULL, 1),
(8, 2, '409', NULL, 2),
(9, 2, '410', NULL, 3),
(10, 2, '411', NULL, 4),
(11, 3, '405', NULL, 1),
(12, 3, '406', NULL, 2),
(13, 3, '407', NULL, 3),
(14, 4, '400', NULL, 1),
(15, 4, '401', NULL, 2),
(16, 4, '402', NULL, 3),
(17, 4, '403', NULL, 4),
(18, 4, '404', NULL, 5),
(19, 5, '395', NULL, 1),
(20, 5, '396', NULL, 2),
(21, 5, '398', NULL, 3),
(2, 1, '412', NULL, 1),
(3, 1, '414', NULL, 3),
(4, 1, '415', NULL, 4),
(6, 1, '416', NULL, 5),
(22, 5, '397', NULL, 4),
(23, 5, '399', NULL, 5),
(24, 6, '390', NULL, 1),
(25, 6, '393', NULL, 2),
(26, 6, '394', NULL, 3),
(27, 6, '392', NULL, 4),
(28, 6, '391', NULL, 5),
(29, 7, '385', NULL, 1),
(30, 7, '386', NULL, 2),
(31, 7, '387', NULL, 3),
(32, 7, '388', NULL, 4),
(33, 7, '389', NULL, 5),
(34, 8, '383', NULL, 1),
(35, 8, '384', NULL, 2),
(36, 8, '381', NULL, 3),
(37, 8, '382', NULL, 4),
(38, 9, '378', NULL, 1),
(39, 9, '379', NULL, 2),
(40, 9, '380', NULL, 3),
(41, 10, '375', NULL, 1),
(42, 10, '376', NULL, 2),
(43, 10, '377', NULL, 3),
(44, 11, '372', NULL, 1),
(45, 11, '374', NULL, 2),
(46, 11, '373', NULL, 3),
(47, 11, '371', NULL, 4),
(48, 12, '367', NULL, 1),
(49, 12, '370', NULL, 2),
(50, 12, '368', NULL, 3),
(51, 12, '369', NULL, 4),
(52, 13, '364', NULL, 1),
(53, 13, '365', NULL, 2),
(54, 13, '366', NULL, 3),
(55, 14, '359', NULL, 1),
(56, 14, '361', NULL, 2),
(57, 14, '363', NULL, 3),
(58, 14, '360', NULL, 4),
(59, 14, '362', NULL, 5),
(60, 15, '355', NULL, 1),
(61, 15, '356', NULL, 2),
(62, 15, '358', NULL, 3),
(63, 15, '357', NULL, 4),
(64, 16, '350', NULL, 1),
(65, 16, '349', NULL, 2),
(66, 16, '352', NULL, 3),
(67, 16, '353', NULL, 4),
(68, 16, '354', NULL, 5),
(69, 16, '351', NULL, 6),
(70, 17, '344', NULL, 1),
(71, 17, '347', NULL, 2),
(72, 17, '348', NULL, 3),
(73, 17, '345', NULL, 4),
(74, 17, '346', NULL, 5),
(75, 18, '339', NULL, 1),
(76, 18, '341', NULL, 2),
(77, 18, '340', NULL, 3),
(78, 18, '342', NULL, 4),
(79, 18, '343', NULL, 5),
(80, 19, '337', NULL, 1),
(81, 19, '338', NULL, 2),
(82, 19, '336', NULL, 3),
(83, 20, '333', NULL, 1),
(84, 20, '334', NULL, 2),
(85, 20, '335', NULL, 3),
(86, 21, '330', NULL, 1),
(87, 21, '328', NULL, 2),
(88, 21, '329', NULL, 3),
(89, 21, '331', NULL, 4),
(90, 21, '332', NULL, 5),
(91, 22, '324', NULL, 1),
(92, 22, '325', NULL, 2),
(93, 22, '326', NULL, 3),
(94, 22, '327', NULL, 4),
(95, 23, '218', NULL, 1),
(96, 23, '219', NULL, 2),
(97, 23, '220', NULL, 3),
(98, 23, '217', NULL, 4),
(99, 23, '221', NULL, 5),
(100, 24, '319', NULL, 1),
(101, 24, '320', NULL, 2),
(102, 24, '321', NULL, 3),
(103, 24, '322', NULL, 4),
(104, 24, '323', NULL, 5),
(105, 25, '313', NULL, 1),
(106, 25, '314', NULL, 2),
(107, 25, '316', NULL, 3),
(108, 25, '312', NULL, 4),
(109, 25, '317', NULL, 5),
(110, 25, '318', NULL, 6),
(111, 25, '315', NULL, 7),
(112, 26, '310', NULL, 1),
(113, 26, '309', NULL, 2),
(114, 26, '308', NULL, 3),
(115, 26, '311', NULL, 4),
(116, 27, '307', NULL, 1),
(117, 27, '306', NULL, 2),
(118, 27, '305', NULL, 3),
(119, 28, '301', NULL, 1),
(120, 28, '303', NULL, 2),
(121, 28, '304', NULL, 3),
(122, 28, '302', NULL, 4),
(123, 29, '300', NULL, 1),
(124, 29, '298', NULL, 2),
(125, 29, '298', NULL, 3),
(144, 30, '297', NULL, 1),
(145, 30, '295', NULL, 2),
(140, 31, '292', NULL, 1),
(141, 31, '291', NULL, 2),
(137, 32, '288', NULL, 1),
(138, 32, '287', NULL, 2),
(139, 32, '289', NULL, 3),
(142, 31, '290', NULL, 3),
(143, 31, '293', NULL, 4),
(146, 30, '294', NULL, 3),
(147, 30, '296', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `products_notifications`
--

CREATE TABLE `products_notifications` (
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'Color'),
(2, 'Size'),
(3, 'Waist');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Color', 1),
(2, 1, 'Size', 2),
(3, 1, 'Waist', 3),
(5, 4, 'اللون', 1),
(6, 4, 'بحجم', 2),
(7, 4, 'وسط', 3);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(1, 1, 'Red'),
(2, 1, 'Pink'),
(3, 1, 'Sky Blue'),
(4, 1, 'Purple'),
(5, 2, 'Small'),
(6, 2, 'Medium'),
(7, 2, 'Large'),
(8, 2, 'XL'),
(9, 3, '28W'),
(10, 3, '30W'),
(11, 3, '32W'),
(12, 3, '34W'),
(13, 3, '36W'),
(14, 3, '38W');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'Red', 1),
(2, 1, 'Pink', 2),
(3, 1, 'Sky Blue', 3),
(4, 1, 'Purple', 4),
(5, 1, 'Small', 5),
(6, 1, 'Medium', 6),
(7, 1, 'Large', 7),
(8, 1, 'XL', 8),
(9, 1, '28W', 9),
(10, 1, '30W', 10),
(11, 1, '32W', 11),
(12, 1, '34W', 12),
(13, 1, '36W', 13),
(14, 1, '38W', 14),
(15, 4, 'أحمر', 1),
(16, 4, 'زهري', 2),
(17, 4, 'السماء الزرقاء', 3),
(18, 4, 'أرجواني', 4),
(19, 4, 'صغير', 5),
(20, 4, 'متوسط', 6),
(21, 4, 'كبير', 7),
(22, 4, 'كبير جدا', 8),
(23, 4, '28W', 9),
(24, 4, '30W', 10),
(25, 4, '32W', 11),
(26, 4, '34W', 12),
(27, 4, '36W', 13),
(28, 4, '38W', 14);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL,
  `weight_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(243, 1, 4),
(242, 1, 3),
(241, 2, 4),
(240, 2, 3),
(239, 3, 5),
(238, 3, 3),
(237, 4, 5),
(236, 4, 3),
(235, 5, 6),
(234, 5, 3),
(233, 6, 7),
(232, 6, 1),
(249, 7, 7),
(248, 7, 1),
(229, 8, 8),
(228, 8, 1),
(227, 9, 8),
(226, 9, 1),
(225, 10, 8),
(224, 10, 1),
(223, 11, 9),
(222, 11, 1),
(221, 12, 9),
(220, 12, 1),
(219, 13, 9),
(218, 13, 1),
(217, 14, 10),
(216, 14, 1),
(215, 15, 10),
(214, 15, 1),
(213, 16, 10),
(212, 16, 1),
(211, 17, 11),
(210, 17, 2),
(209, 18, 11),
(208, 18, 2),
(207, 19, 12),
(206, 19, 2),
(205, 20, 12),
(204, 20, 2),
(203, 21, 12),
(202, 21, 2),
(156, 22, 15),
(201, 24, 15),
(199, 25, 15),
(198, 25, 2),
(245, 26, 13),
(244, 26, 2),
(195, 27, 13),
(194, 27, 2),
(193, 28, 13),
(192, 28, 2),
(191, 29, 13),
(190, 29, 2),
(189, 30, 14),
(188, 30, 2),
(187, 31, 14),
(186, 31, 2),
(251, 32, 14),
(250, 32, 2),
(200, 24, 2),
(155, 22, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`reviews_id`, `products_id`, `customers_id`, `customers_name`, `reviews_rating`, `reviews_status`, `reviews_read`, `created_at`, `updated_at`) VALUES
(17, 4, 14, 'Rehan', 5, 1, 1, '2020-04-05 01:10:00', NULL),
(18, 4, 14, 'Rehan', 5, 1, 1, '2020-04-05 01:10:00', NULL),
(19, 24, 608, 'mubasher', 5, 0, 0, '2020-02-17 14:52:00', NULL),
(20, 5, 454, 'Angelo', 5, 0, 0, '2020-02-24 03:12:45', NULL),
(21, 14, 658, 'benito', 3, 0, 0, '2020-03-08 22:16:17', NULL),
(22, 12, 666, 'Mubasher', 3, 1, 1, '2020-04-01 14:28:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews_description`
--

INSERT INTO `reviews_description` (`id`, `review_id`, `language_id`, `reviews_text`) VALUES
(20, 17, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s'),
(21, 18, 1, 'fdssdgsg sfsd fds gs g dsgds gsdgsdg s gds gsd gsdgs dgs sgds sgd sg dsg dsg sgs gdssdg sdgsdgsgdsgsgs gs sd gsgdsgsg sdgsd gsdsd gsgd sdg sdgsdgs gds gdsgsd gs gsgsdgsdgdsg sdgsd sddsgsgsd sdg dsgds gsgsgs gs dgs dg gd gsdgsd gsdgsg sdggsdgsdgsd gsdg gsdgdsg sdgsdgds dsgsdg dsgdsgsdgds d sgdgds gds gdgdsg dssdg ds gsdgdsgds gs gsdgsgdd  sdgdgds gdsgds gsd gdsgdsgdsgdsg sdg s'),
(22, 19, 1, 'nice'),
(23, 20, 1, 'dwddsadsadsadsa'),
(24, 21, 1, 'oxsdcfvgbhjnk'),
(25, 22, 1, 'Nice');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-27 00:00:00', '2019-11-01 06:58:53'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-27 00:00:00', '2019-11-01 06:58:53'),
(3, 'facebook_login', '0', '2018-04-27 00:00:00', '2019-11-01 06:58:53'),
(4, 'contact_us_email', '', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(5, 'address', 'address', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(6, 'city', 'City', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(7, 'state', 'State', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(8, 'zip', 'Zip', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(9, 'country', 'Country', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(10, 'latitude', 'Latitude', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(11, 'longitude', 'Longitude', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(12, 'phone_no', '+92 312 1234567', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(13, 'fcm_android', '', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(14, 'fcm_ios', NULL, '2018-04-27 00:00:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-27 00:00:00', NULL),
(16, 'website_logo', 'images/admin_logo/logo-laravel-blue-v1.png', '2018-04-27 00:00:00', '2019-10-11 11:57:29'),
(17, 'fcm_android_sender_id', NULL, '2018-04-27 00:00:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(19, 'app_name', '', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(20, 'currency_symbol', '$', '2018-04-27 00:00:00', '2018-11-19 07:26:01'),
(21, 'new_product_duration', '20', '2018-04-27 00:00:00', '2019-10-21 07:36:53'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-27 00:00:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(25, 'footer_button', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(26, 'cart_button', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(27, 'featured_category', NULL, '2018-04-27 00:00:00', NULL),
(28, 'notification_duration', 'year', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(29, 'home_style', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(30, 'wish_list_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(31, 'edit_profile_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(32, 'shipping_address_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(33, 'my_orders_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(34, 'contact_us_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(35, 'about_us_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(36, 'news_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(37, 'intro_page', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(38, 'setting_page', '1', '2018-04-27 00:00:00', NULL),
(39, 'share_app', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(40, 'rate_app', '1', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(41, 'site_url', 'URL', '2018-04-27 00:00:00', '2018-11-19 07:26:01'),
(42, 'admob', '0', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(43, 'admob_id', 'ID', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(46, 'category_style', '4', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(47, 'package_name', 'package name', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(48, 'google_analytic_id', 'test', '2018-04-27 00:00:00', '2019-05-15 10:58:30'),
(49, 'themes', 'themeone', '2018-04-27 00:00:00', NULL),
(50, 'company_name', '#', '2018-04-27 00:00:00', '2019-10-07 09:52:24'),
(51, 'facebook_url', '#', '2018-04-27 00:00:00', '2019-10-11 11:57:29'),
(52, 'google_url', '#', '2018-04-27 00:00:00', '2019-10-11 11:57:29'),
(53, 'twitter_url', '#', '2018-04-27 00:00:00', '2019-10-11 11:57:29'),
(54, 'linked_in', '#', '2018-04-27 00:00:00', '2019-10-11 11:57:29'),
(55, 'default_notification', 'onesignal', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(57, 'onesignal_sender_id', '', '2018-04-27 00:00:00', '2019-02-05 11:42:15'),
(58, 'ios_admob', '0', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-27 00:00:00', '2019-05-15 10:58:05'),
(62, 'google_login', '0', NULL, '2019-11-01 06:58:36'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '0', NULL, '2018-05-04 03:24:44'),
(68, 'is_web_purchased', '1', NULL, '2018-05-04 03:24:44'),
(69, 'consumer_key', 'dadb7a7c1557917902724bbbf5', NULL, '2019-05-15 10:58:22'),
(70, 'consumer_secret', '3ba77f821557917902b1d57373', NULL, '2019-05-15 10:58:22'),
(71, 'order_email', 'orders@gmail.com', NULL, '2019-10-21 07:36:53'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-19 07:21:57'),
(74, 'seo_metatag', '', NULL, '2018-11-19 07:21:57'),
(75, 'seo_keyword', '', NULL, '2018-11-19 07:21:57'),
(76, 'seo_description', '', NULL, '2018-11-19 07:21:57'),
(77, 'before_head_tag', '', NULL, '2018-11-19 07:22:15'),
(78, 'end_body_tag', 'name', NULL, '2019-10-11 11:57:29'),
(79, 'sitename_logo', 'name', NULL, '2019-10-11 11:57:29'),
(80, 'website_name', '<strong>E</strong>COMMERCE', NULL, '2018-11-19 07:22:25'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 07:22:25'),
(82, 'web_color_style', 'app', NULL, '2018-11-19 07:22:25'),
(83, 'free_shipping_limit', '400', NULL, '2019-10-21 07:36:53'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 10:12:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '', NULL, NULL),
(87, 'favicon', 'images/admin_logo/logo-laravel-blue-v1.png', NULL, NULL),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'local', NULL, '2019-10-21 07:36:53'),
(95, 'maintenance_text', 'Website is under maintenance', NULL, '2019-10-21 07:36:53'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '20', NULL, '2019-10-21 07:36:53'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'http://localhost', NULL, '2019-10-21 07:36:53'),
(104, 'google_map_api', '', NULL, '2019-10-21 07:36:53'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '4.0.17', NULL, NULL),
(107, 'app_version', '4.0.16', NULL, NULL),
(108, 'web_version', '4.0.17', NULL, NULL),
(109, 'pos_version', '0', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2019-10-11 11:57:29'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2019-10-11 11:57:29'),
(114, 'contents', NULL, NULL, NULL),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', NULL, '2019-11-01 06:58:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', NULL, '2019-11-01 06:58:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', NULL, '2019-11-01 06:58:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', NULL, '2019-11-01 06:58:36'),
(119, 'newsletter', '0', NULL, '2019-11-01 06:58:36'),
(120, 'allow_cookies', '0', NULL, '2019-11-01 06:58:36'),
(121, 'card_style', '1', NULL, '2019-11-01 06:58:36'),
(122, 'banner_style', '1', NULL, '2019-11-01 06:58:36'),
(123, 'mail_chimp_api', '', NULL, '2019-11-01 06:58:36'),
(124, 'mail_chimp_list_id', '', NULL, '2019-11-01 06:58:36'),
(125, 'newsletter_image', 'images/media/2019/10/newsletter.jpg', NULL, '2019-11-01 06:58:36'),
(126, 'instauserid', '', NULL, '2019-11-01 06:58:36');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_labels` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{\"nextDayAir\":\"Next Day Air\",\"secondDayAir\":\"2nd Day Air\",\"ground\":\"Ground\",\"threeDaySelect\":\"3 Day Select\",\"nextDayAirSaver\":\"Next Day AirSaver\",\"nextDayAirEarlyAM\":\"Next Day Air Early A.M.\",\"secondndDayAirAM\":\"2nd Day Air A.M.\"}'),
(13, 'Shipping Price', 1, 'shipping_by_weight', ''),
(14, 'سعر الشحن', 4, 'shipping_by_weight', ''),
(15, 'معدل', 4, 'flate_rate', ''),
(16, 'شاحنة محلية', 4, 'local_pickup', ''),
(17, 'الشحن مجانا', 4, 'free_shipping', ''),
(18, 'يو بي إس الشحن', 4, 'ups_shipping', '{\"nextDayAir\":\"\\u0627\\u0644\\u0647\\u0648\\u0627\\u0621 \\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a\",\"secondDayAir\":\"2nd \\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062c\\u0648\\u064a\\u0629\",\"ground\":\"\\u0623\\u0631\\u0636\",\"threeDaySelect\":\"\\u0627\\u062e\\u062a\\u0631 3 \\u0623\\u064a\\u0627\\u0645\",\"nextDayAirSaver\":\"\\u0641\\u064a \\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a \\u0644\\u062a\\u0648\\u0641\\u064a\\u0631 \\u0627\\u0644\\u0647\\u0648\\u0627\\u0621\",\"nextDayAirEarlyAM\":\"\\u0641\\u064a \\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062a\\u0627\\u0644\\u064a \\u0644\\u0644\\u0637\\u064a\\u0631\\u0627\\u0646 \\u0641\\u064a \\u0648\\u0642\\u062a \\u0645\\u0628\\u0643\\u0631 \\u0635\\u0628\\u0627\\u062d\\u0627\",\"secondndDayAirAM\":\"\\u0627\\u0644\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a \\u0644\\u0644\\u0637\\u064a\\u0631\\u0627\\u0646\"}');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 1, 'shipping_by_weight');

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'For Full Page Slider', 'boy-s-clothing', 5, '441', '', '', '2022-07-08 00:00:00', '2020-04-01 14:30:30', 1, 'category', '2020-04-01 14:30:30', 1),
(2, 'For Full Page Slider', 'women-s-winter-wear', 5, '440', '', '', '2022-04-01 00:00:00', '2020-04-01 14:32:00', 1, 'category', '2020-04-01 14:32:00', 1),
(3, 'For Full Page Slider', 'men-polo-casual-shirt', 5, '439', '', '', '2022-09-18 00:00:00', '2020-04-01 14:32:47', 1, 'product', '2020-04-01 14:32:47', 1),
(4, 'For full screen slider', 'fashion-plaid-boy-clothing-set', 1, '433', '', '', '2022-07-15 00:00:00', '2020-04-01 14:38:20', 1, 'product', '2020-04-01 14:38:20', 1),
(5, 'For full screen slider', '', 1, '434', '', '', '2022-08-14 00:00:00', '2020-04-01 14:38:55', 1, 'topseller', '2020-04-01 14:38:55', 1),
(6, 'For full screen slider', 'women-magnet-buckle-quartz-watch', 1, '435', '', '', '2030-01-30 00:00:00', '2020-04-01 14:39:42', 1, 'product', '2020-04-01 14:39:42', 1),
(7, 'Banner with navigation', 'casual-tracksuit-children-boy', 2, '430', '', '', '2022-11-19 00:00:00', '2020-04-01 14:57:15', 1, 'product', '2020-04-01 14:57:15', 1),
(8, 'Banner with navigation', 'casual-breathable-outdoor-kids-sneakers', 2, '431', '', '', '2021-07-14 00:00:00', '2020-04-01 14:58:21', 1, 'product', '2020-04-01 14:58:21', 1),
(9, 'dad', 'casual-tracksuit-children-boy', 2, '432', '', '', '2020-06-24 00:00:00', '2019-09-27 10:21:44', 1, 'product', '2019-09-27 10:21:44', 1),
(10, 'Banner Right With Thumb', 'men-polo-casual-shirt', 3, '436', '', '', '2022-10-20 00:00:00', '2020-04-01 14:44:42', 1, 'product', '2020-04-01 14:44:42', 1),
(11, 'Banner Right With Thumb', 'men-s-cotton-classic-baseball-cap', 3, '437', '', '', '2022-07-15 00:00:00', '2020-04-01 14:45:38', 1, 'product', '2020-04-01 14:45:38', 1),
(12, 'Banner Right With Thumb', 'carrot-fitt-jeans', 3, '438', '', '', '2022-07-15 00:00:00', '2020-04-01 14:46:15', 1, 'product', '2020-04-01 14:46:15', 1),
(13, 'Banner Left With Thumb', 'men-s-cotton-classic-baseball-cap', 4, '439', '', '', '2021-06-15 00:00:00', '2020-04-01 14:47:32', 1, 'product', '2020-04-01 14:47:32', 1),
(14, 'Banner Left With Thumb', 'casual-tracksuit-children-boy', 4, '440', '', '', '2022-10-25 00:00:00', '2020-04-01 14:54:45', 1, 'product', '2020-04-01 14:54:45', 1),
(15, 'Banner Left With Thumb', 'casual-tracksuit-children-boy', 4, '441', '', '', '2022-07-07 00:00:00', '2020-04-01 14:55:40', 1, 'product', '2020-04-01 14:55:40', 1),
(17, 'ewgrege', '', 1, '454', '', '', '2020-10-30 00:00:00', '2019-10-01 13:44:55', 1, 'product', NULL, 4),
(18, 'frgergege', '', 1, '455', '', '', '2021-02-28 00:00:00', '2019-10-01 13:47:26', 1, 'product', NULL, 4),
(19, 'Full screen slider', 'casual-tracksuit-children-boy', 1, '453', '', '', '2021-04-30 00:00:00', '2019-10-01 13:49:35', 1, 'product', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `specials`
--

INSERT INTO `specials` (`specials_id`, `products_id`, `specials_new_products_price`, `specials_date_added`, `specials_last_modified`, `expires_date`, `date_status_change`, `status`) VALUES
(1, 6, '20.00', 1568721671, 2019, 1711756800, 2019, 0),
(2, 13, '22.00', 1568724920, 2019, 1643587200, 2019, 0),
(3, 19, '18.00', 1568726425, 2019, 1680220800, 2019, 0),
(4, 29, '49.00', 1568789440, 2019, 1568160000, 2019, 0),
(5, 29, '49.00', 1568789664, 2019, 1635033600, 2019, 0),
(6, 29, '49.00', 1568887686, 2019, 1635033600, 2019, 0),
(7, 29, '49.00', 1568887806, 2019, 1635033600, 2019, 0),
(8, 29, '49.00', 1568887957, 2019, 1635033600, 2019, 0),
(9, 19, '18.00', 1568890259, 2019, 1680220800, 2019, 0),
(10, 13, '22.00', 1568891954, 2019, 1643587200, 2019, 0),
(11, 6, '20.00', 1568893114, 2019, 1711756800, 2019, 0),
(12, 29, '49.00', 1569930696, 0, 1635033600, 0, 1),
(13, 19, '18.00', 1569931049, 0, 1680220800, 0, 1),
(14, 13, '22.00', 1569931342, 0, 1643587200, 0, 1),
(15, 6, '20.00', 1569932088, 0, 1711756800, 0, 1),
(16, 26, '80.00', 1583332159, 0, 1672444800, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_class`
--

INSERT INTO `tax_class` (`tax_class_id`, `tax_class_title`, `tax_class_description`, `last_modified`, `date_added`, `created_at`, `updated_at`) VALUES
(2, 'test', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley ', NULL, '2020-04-05 01:10:00', '2019-09-18 11:33:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_offers`
--

CREATE TABLE `top_offers` (
  `top_offers_id` int(11) NOT NULL,
  `top_offers_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_offers`
--

INSERT INTO `top_offers` (`top_offers_id`, `top_offers_text`, `created_at`, `updated_at`, `language_id`) VALUES
(1, 'Get<strong> UPTO 40% OFF </strong>on your 1st order\r\n <div class=\\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n <a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nSHOP NOW\r\n</a>\r\n</div>', '2020-04-02 11:56:52', '2020-04-02 12:10:12', 1),
(2, '<p>Get<strong> UPTO 40% OFF </strong>on your 1st order <strong> <a href=\\\"#\\\"> More details </a> </strong></p>', '2020-04-02 11:56:52', '2020-02-03 20:26:53', 2),
(3, 'احصل على <strong> خصم يصل إلى 40٪ </ strong> على طلبك الأول\r\n <div class = \\\"pro-link-dropdown js-toppanel-link-dropdown\\\">\r\n <a href=\\\"/shop\\\" class=\\\"pro-dropdown-toggle\\\">\r\nتسوق الآن\r\n</a>\r\n</div>', '2020-04-02 11:56:52', '2020-04-02 12:10:12', 4);

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2019-01-01 08:04:18', '2019-01-01 08:04:18'),
(2, 1, NULL, NULL, '2019-01-01 08:04:18', '2019-01-01 08:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

CREATE TABLE `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL,
  `units_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'kg', 1, 3, NULL, NULL),
(2, 'Gram', 1, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(11) NOT NULL,
  `pickup_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT '0',
  `country_code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verified` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'master', 'Master', 'User', NULL, 0, NULL, NULL, 'gamewadi@mohamedelsayed.net', '$2y$10$Uz6sG2BlCIYxy9UdMNJoZuck6d6MYQ14AwsMNSZQouTgyUghu03vy', NULL, '1', 0, NULL, NULL, NULL, NULL, '2020-06-24 23:40:53', '2020-06-24 23:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

CREATE TABLE `user_to_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_types_id` int(11) NOT NULL,
  `user_types_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Customers', 1534777027, NULL, 1),
(3, 'Vendors', 1538390209, NULL, 1),
(4, 'Delivery Guy', 1542965906, NULL, 1),
(5, 'Test 1', 1542965906, NULL, 1),
(6, 'Test 2', 1542965906, NULL, 1),
(7, 'Test 3', 1542965906, NULL, 1),
(8, 'Test 4', 1542965906, NULL, 1),
(9, 'Test 5', 1542965906, NULL, 1),
(10, 'Test 6', 1542965906, NULL, 1),
(11, 'Admin', 1542965906, NULL, 1),
(12, 'Manager', 1542965906, NULL, 1),
(13, 'Data Entry', 1542965906, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`user_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `block_ips`
--
ALTER TABLE `block_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `currency_record`
--
ALTER TABLE `currency_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `http_call_record`
--
ALTER TABLE `http_call_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_attributes_download`
--
ALTER TABLE `products_attributes_download`
  ADD PRIMARY KEY (`products_attributes_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_notifications`
--
ALTER TABLE `products_notifications`
  ADD PRIMARY KEY (`products_id`,`customers_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_to_categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `top_offers`
--
ALTER TABLE `top_offers`
  ADD PRIMARY KEY (`top_offers_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  ADD PRIMARY KEY (`units_description_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_to_address`
--
ALTER TABLE `user_to_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_types_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `block_ips`
--
ALTER TABLE `block_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=242;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `currency_record`
--
ALTER TABLE `currency_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52892;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `http_call_record`
--
ALTER TABLE `http_call_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;
--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=678;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1118;
--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1828;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;
--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  MODIFY `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `top_offers`
--
ALTER TABLE `top_offers`
  MODIFY `top_offers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  MODIFY `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_to_address`
--
ALTER TABLE `user_to_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;
--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
