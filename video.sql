-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 08, 2015 at 04:29 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `video`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `company` varchar(40) CHARACTER SET utf8 NOT NULL,
  `address_1` varchar(128) CHARACTER SET utf8 NOT NULL,
  `address_2` varchar(128) CHARACTER SET utf8 NOT NULL,
  `city` varchar(128) CHARACTER SET utf8 NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate`
--

CREATE TABLE IF NOT EXISTS `affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `fax` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `salt` varchar(9) CHARACTER SET utf8 NOT NULL,
  `company` varchar(40) CHARACTER SET utf8 NOT NULL,
  `website` varchar(255) CHARACTER SET utf8 NOT NULL,
  `address_1` varchar(128) CHARACTER SET utf8 NOT NULL,
  `address_2` varchar(128) CHARACTER SET utf8 NOT NULL,
  `city` varchar(128) CHARACTER SET utf8 NOT NULL,
  `postcode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) CHARACTER SET utf8 NOT NULL,
  `payment` varchar(6) CHARACTER SET utf8 NOT NULL,
  `cheque` varchar(100) CHARACTER SET utf8 NOT NULL,
  `paypal` varchar(64) CHARACTER SET utf8 NOT NULL,
  `bank_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `bank_branch_number` varchar(64) CHARACTER SET utf8 NOT NULL,
  `bank_swift_code` varchar(64) CHARACTER SET utf8 NOT NULL,
  `bank_account_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `bank_account_number` varchar(64) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_activity`
--

CREATE TABLE IF NOT EXISTS `affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) CHARACTER SET utf8 NOT NULL,
  `data` text CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_login`
--

CREATE TABLE IF NOT EXISTS `affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `affiliate_transaction`
--

CREATE TABLE IF NOT EXISTS `affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE IF NOT EXISTS `api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(64) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(64) CHARACTER SET utf8 NOT NULL,
  `password` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`api_id`, `username`, `firstname`, `lastname`, `password`, `status`, `date_added`, `date_modified`) VALUES
(1, 'XufyVeeeLO8lfsRnYJRgcPSvvOKT5zQnBPYrpN5957sdaKElOF1W7ZaMrYkGBsth', '', '', 'DnpdWzuXDhzNseOcc3yE0c5gAaYwfejUb2THaT6nhATzXrvLCkJoGXxsqUjVWHx9OAUo2pfvZWKUawpwAI0HuLDwuGHvknYhXAsCr4bwpjZq0t7QVj5bu0qtKvCEMBW642eT4AvoRpB5nimlD3YoIYqi8SVPKSsOymndd9cZRnACxPozJENu4yDPKrBTgaaYFPJea1gCodXCVzD5lIarCHyys8EOPbgbtuCYuk7iYMG4QR04bEAhiR6QoIeCWVAV', 1, '2015-02-03 16:48:46', '2015-02-03 16:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=85 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2015-03-08 09:51:56'),
(75, '', 17, 0, 1, 20, 1, '2015-03-08 10:15:10', '2015-03-08 10:15:10'),
(73, '', 17, 0, 1, 18, 1, '2015-03-08 10:13:09', '2015-03-08 10:13:09'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2015-03-08 09:54:12'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2015-03-08 09:53:35'),
(74, '', 17, 0, 1, 19, 1, '2015-03-08 10:14:20', '2015-03-08 10:14:20'),
(76, '', 17, 0, 1, 21, 1, '2015-03-08 10:16:01', '2015-03-08 10:16:01'),
(33, '', 0, 1, 1, 1, 1, '2009-02-03 14:17:55', '2015-03-08 09:52:11'),
(60, '', 0, 0, 1, 6, 1, '2015-03-08 09:54:57', '2015-03-08 09:54:57'),
(61, '', 0, 0, 1, 7, 1, '2015-03-08 09:55:54', '2015-03-08 09:55:54'),
(71, '', 57, 0, 1, 16, 1, '2015-03-08 10:06:23', '2015-03-08 10:06:23'),
(70, '', 57, 0, 1, 0, 1, '2015-03-08 10:05:27', '2015-03-08 10:05:27'),
(69, '', 57, 0, 1, 15, 1, '2015-03-08 10:04:14', '2015-03-08 10:04:14'),
(68, '', 57, 0, 1, 14, 1, '2015-03-08 10:02:52', '2015-03-08 10:02:52'),
(72, '', 57, 0, 1, 17, 1, '2015-03-08 10:07:29', '2015-03-08 10:07:29'),
(67, '', 33, 0, 1, 13, 1, '2015-03-08 10:01:27', '2015-03-08 10:01:27'),
(66, '', 33, 0, 1, 12, 1, '2015-03-08 10:00:36', '2015-03-08 10:00:36'),
(65, '', 33, 0, 1, 11, 1, '2015-03-08 09:59:57', '2015-03-08 09:59:57'),
(64, '', 33, 0, 1, 10, 1, '2015-03-08 09:58:51', '2015-03-08 09:58:51'),
(63, '', 33, 0, 1, 9, 1, '2015-03-08 09:58:00', '2015-03-08 09:58:00'),
(62, '', 33, 0, 1, 8, 1, '2015-03-08 09:57:20', '2015-03-08 09:57:20'),
(57, '', 0, 1, 1, 2, 1, '2011-04-26 08:53:16', '2015-03-08 09:52:52'),
(77, '', 17, 0, 1, 22, 1, '2015-03-08 10:17:24', '2015-03-08 10:17:24'),
(78, '', 24, 0, 1, 23, 1, '2015-03-08 10:19:02', '2015-03-08 10:19:02'),
(79, '', 24, 0, 1, 0, 1, '2015-03-08 10:19:50', '2015-03-08 10:19:50'),
(80, '', 24, 0, 1, 24, 1, '2015-03-08 10:20:55', '2015-03-08 10:20:55'),
(81, '', 24, 0, 1, 25, 1, '2015-03-08 10:21:51', '2015-03-08 10:21:51'),
(82, '', 60, 0, 1, 26, 1, '2015-03-08 10:22:56', '2015-03-08 10:22:56'),
(83, '', 60, 0, 1, 27, 1, '2015-03-08 10:23:58', '2015-03-08 10:23:58'),
(84, '', 60, 0, 1, 28, 1, '2015-03-08 10:24:55', '2015-03-08 10:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `category_description`
--

CREATE TABLE IF NOT EXISTS `category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_description`
--

INSERT INTO `category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(17, 1, 'Thể thao', '&lt;p&gt;Video thể thao&lt;br&gt;&lt;/p&gt;', 'Video thể thao', '', ''),
(25, 1, 'Game', '&lt;p&gt;Game video&lt;br&gt;&lt;/p&gt;', 'Game video', '', ''),
(24, 1, 'Tin Tức', '&lt;p&gt;Video tin tức&lt;/p&gt;', 'Video tin tức', '', ''),
(60, 1, 'Hài hước', '&lt;p&gt;Video hài hước&lt;/p&gt;', 'Video hài hước', '', ''),
(61, 1, 'Cộng đồng', '&lt;p&gt;Video cộng đồng&lt;/p&gt;', 'Video cộng đồng', '', ''),
(70, 1, 'Khoa học - Viễn Tưởng', '&lt;p&gt;Video hoạt hình&amp;nbsp;Khoa học - Viễn Tưởng&lt;/p&gt;', 'Video hoạt hình Khoa học - Viễn Tưởng', 'Video hoạt hình Khoa học - Viễn Tưởng', 'Video hoạt hình Khoa học - Viễn Tưởng'),
(33, 1, 'TV Show', '&lt;p&gt;Show truyền hình, truyền hình thực tế&lt;/p&gt;', 'Show truyền hình, truyền hình thực tế', '', ''),
(62, 1, 'Show Việt Nam', '&lt;p&gt;Show Việt Nam&lt;br&gt;&lt;/p&gt;', 'Show Việt Nam', '', ''),
(63, 1, 'Show Hàn Quốc', '&lt;p&gt;Show Hàn Quốc&lt;br&gt;&lt;/p&gt;', 'Show Hàn Quốc', '', ''),
(64, 1, 'Show Âu - Mỹ', '&lt;p&gt;Show Âu - Mỹ&lt;br&gt;&lt;/p&gt;', 'Show Âu - Mỹ', '', ''),
(65, 1, 'Show Hoa Ngữ', '&lt;p&gt;Show Hoa Ngữ&lt;br&gt;&lt;/p&gt;', 'Show Hoa Ngữ', 'Show Hoa Ngữ', 'Show Hoa Ngữ'),
(66, 1, 'Show Thực Tế', '&lt;p&gt;Show Thực Tế&lt;br&gt;&lt;/p&gt;', 'Show Thực Tế', 'Show Thực Tế', 'Show Thực Tế'),
(67, 1, 'Show Hài Hước', '&lt;p&gt;Show Hài Hước&lt;br&gt;&lt;/p&gt;', 'Show Hài Hước', 'Show Hài Hước', 'Show Hài Hước'),
(68, 1, 'Hành Động - Phiêu Lưu', '&lt;p&gt;Hành Động - Phiêu Lưu video&lt;br&gt;&lt;/p&gt;', 'Hành Động - Phiêu Lưu', 'Hành Động - Phiêu Lưu', 'Hành Động - Phiêu Lưu'),
(69, 1, 'Tâm Lý - Lãng Mạn', '&lt;p&gt;Video hoạt hình Tâm Lý - Lãng Mạn&amp;nbsp;&lt;br&gt;&lt;/p&gt;', 'Video hoạt hình Tâm Lý - Lãng Mạn ', 'Video hoạt hình Tâm Lý - Lãng Mạn ', 'Video hoạt hình Tâm Lý - Lãng Mạn '),
(57, 1, 'Hoạt hình', '&lt;p&gt;Hoạt hình&lt;/p&gt;', 'Hoạt hình', '', ''),
(71, 1, 'Kinh Dị - Siêu Nhiên', '&lt;p&gt;Video hoạt hình&amp;nbsp;Kinh Dị - Siêu Nhiên&lt;/p&gt;', 'Video hoạt hình Kinh Dị - Siêu Nhiên', 'Video hoạt hình Kinh Dị - Siêu Nhiên', 'Video hoạt hình Kinh Dị - Siêu Nhiên'),
(72, 1, 'Hài Hước', '&lt;p&gt;Video hoạt hình Hài Hước&lt;/p&gt;', 'Video hoạt hình Hài Hước', 'Video hoạt hình Hài Hước', 'Video hoạt hình Hài Hước'),
(73, 1, 'Bóng Đá Việt Nam', '&lt;p&gt;Video&amp;nbsp;Bóng Đá Việt Nam&lt;/p&gt;', 'Video Bóng Đá Việt Nam', 'Video Bóng Đá Việt Nam', 'Video Bóng Đá Việt Nam'),
(74, 1, 'Ngoại Hạng Anh', '&lt;p&gt;Video thể thao&amp;nbsp;Ngoại Hạng Anh&lt;/p&gt;', 'Video thể thao Ngoại Hạng Anh', 'Video thể thao Ngoại Hạng Anh', 'Video thể thao Ngoại Hạng Anh'),
(75, 1, 'Bóng Đá Thế Giới', '&lt;p&gt;Video thể thao Bóng Đá Thế Giới&lt;br&gt;&lt;/p&gt;', 'Video thể thao Bóng Đá Thế Giới', 'Video thể thao Bóng Đá Thế Giới', 'Video thể thao Bóng Đá Thế Giới'),
(76, 1, 'La Liga', '&lt;p&gt;Video thể thao La Liga&lt;/p&gt;', 'Video thể thao La Liga', 'Video thể thao La Liga', 'Video thể thao La Liga'),
(77, 1, 'Các Môn Thể Thao Khác', '&lt;p&gt;Video&amp;nbsp;Các Môn Thể Thao Khác&lt;/p&gt;', 'Video Các Môn Thể Thao Khác', 'Video Các Môn Thể Thao Khác', 'Video Các Môn Thể Thao Khác'),
(78, 1, 'Tin Thế Giới', '&lt;p&gt;Video Tin Tức Thế Giới&lt;br&gt;&lt;/p&gt;', 'Video Tin Tức Thế Giới', 'Video Tin Tức Thế Giới', 'Video Tin Tức Thế Giới'),
(79, 1, 'Kinh Tế', '&lt;p&gt;Video tin tức Kinh Tế&lt;/p&gt;', 'Video tin tức Kinh Tế', 'Video tin tức Kinh Tế', 'Video tin tức Kinh Tế'),
(80, 1, 'Đời Sống Xã Hội', '&lt;p&gt;Video&amp;nbsp;Đời Sống Xã Hội&lt;/p&gt;', 'Video Đời Sống Xã Hội', 'Video Đời Sống Xã Hội', 'Video Đời Sống Xã Hội'),
(81, 1, 'Báo Chí', '&lt;p&gt;Video Báo Chí&lt;/p&gt;', 'Video Báo Chí', 'Video Báo Chí', 'Video Báo Chí'),
(82, 1, 'Tiểu Phẩm Hài', '&lt;p&gt;Video Tiểu Phẩm Hài&lt;/p&gt;', 'Video Tiểu Phẩm Hài', 'Video Tiểu Phẩm Hài', 'Video Tiểu Phẩm Hài'),
(83, 1, 'Sân Khẩu - LiveShow Hài', '&lt;p&gt;Video&amp;nbsp;Sân Khẩu - LiveShow Hài&lt;/p&gt;', 'Video Sân Khẩu - LiveShow Hài', 'Video Sân Khẩu - LiveShow Hài', 'Video Sân Khẩu - LiveShow Hài'),
(84, 1, 'Giải Trí - Vui Nhộn', '&lt;p&gt;Video&amp;nbsp;Giải Trí - Vui Nhộn&lt;/p&gt;', 'Video Giải Trí - Vui Nhộn', 'Video Giải Trí - Vui Nhộn', 'Video Giải Trí - Vui Nhộn');

-- --------------------------------------------------------

--
-- Table structure for table `category_filter`
--

CREATE TABLE IF NOT EXISTS `category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_path`
--

CREATE TABLE IF NOT EXISTS `category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_path`
--

INSERT INTO `category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(84, 84, 1),
(84, 60, 0),
(83, 83, 1),
(24, 24, 0),
(83, 60, 0),
(82, 82, 1),
(82, 60, 0),
(81, 81, 1),
(81, 24, 0),
(17, 17, 0),
(33, 33, 0),
(80, 80, 1),
(80, 24, 0),
(79, 79, 1),
(79, 24, 0),
(78, 78, 1),
(78, 24, 0),
(77, 77, 1),
(77, 17, 0),
(76, 76, 1),
(76, 17, 0),
(75, 75, 1),
(75, 17, 0),
(74, 74, 1),
(74, 17, 0),
(73, 73, 1),
(73, 17, 0),
(72, 72, 1),
(72, 57, 0),
(71, 71, 1),
(71, 57, 0),
(70, 70, 1),
(70, 57, 0),
(69, 69, 1),
(69, 57, 0),
(68, 68, 1),
(68, 57, 0),
(67, 67, 1),
(67, 33, 0),
(66, 66, 1),
(66, 33, 0),
(65, 65, 1),
(65, 33, 0),
(64, 64, 1),
(64, 33, 0),
(63, 63, 1),
(63, 33, 0),
(62, 62, 1),
(62, 33, 0),
(61, 61, 0),
(60, 60, 0),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category_to_layout`
--

CREATE TABLE IF NOT EXISTS `category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_to_store`
--

CREATE TABLE IF NOT EXISTS `category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category_to_store`
--

INSERT INTO `category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(37, 0),
(38, 0),
(39, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0),
(50, 0),
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  `iso_code_2` varchar(2) CHARACTER SET utf8 NOT NULL,
  `iso_code_3` varchar(3) CHARACTER SET utf8 NOT NULL,
  `address_format` text CHARACTER SET utf8 NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=258 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `fax` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `salt` varchar(9) CHARACTER SET utf8 NOT NULL,
  `cart` text CHARACTER SET utf8,
  `wishlist` text CHARACTER SET utf8,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_activity`
--

CREATE TABLE IF NOT EXISTS `customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) CHARACTER SET utf8 NOT NULL,
  `data` text CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ban_ip`
--

CREATE TABLE IF NOT EXISTS `customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_group`
--

CREATE TABLE IF NOT EXISTS `customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `customer_group`
--

INSERT INTO `customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customer_group_description`
--

CREATE TABLE IF NOT EXISTS `customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer_group_description`
--

INSERT INTO `customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Default', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `customer_history`
--

CREATE TABLE IF NOT EXISTS `customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_ip`
--

CREATE TABLE IF NOT EXISTS `customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_login`
--

CREATE TABLE IF NOT EXISTS `customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_online`
--

CREATE TABLE IF NOT EXISTS `customer_online` (
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text CHARACTER SET utf8 NOT NULL,
  `referer` text CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_reward`
--

CREATE TABLE IF NOT EXISTS `customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8 NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `customer_transaction`
--

CREATE TABLE IF NOT EXISTS `customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field`
--

CREATE TABLE IF NOT EXISTS `custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  `location` varchar(7) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_customer_group`
--

CREATE TABLE IF NOT EXISTS `custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_description`
--

CREATE TABLE IF NOT EXISTS `custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_value`
--

CREATE TABLE IF NOT EXISTS `custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_value_description`
--

CREATE TABLE IF NOT EXISTS `custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) CHARACTER SET utf8 NOT NULL,
  `trigger` text CHARACTER SET utf8 NOT NULL,
  `action` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `information`
--

CREATE TABLE IF NOT EXISTS `information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `information`
--

INSERT INTO `information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `information_description`
--

CREATE TABLE IF NOT EXISTS `information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `information_description`
--

INSERT INTO `information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', '', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', '', '', ''),
(3, 1, 'Privacy Policy', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', '', '', ''),
(6, 1, 'Delivery Information', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `information_to_layout`
--

CREATE TABLE IF NOT EXISTS `information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `information_to_store`
--

CREATE TABLE IF NOT EXISTS `information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `information_to_store`
--

INSERT INTO `information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE IF NOT EXISTS `language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `code` varchar(5) CHARACTER SET utf8 NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(64) CHARACTER SET utf8 NOT NULL,
  `directory` varchar(32) CHARACTER SET utf8 NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(5, 'HTC', 'catalog/demo/htc_logo.jpg', 0),
(6, 'Palm', 'catalog/demo/palm_logo.jpg', 0),
(7, 'Hewlett-Packard', 'catalog/demo/hp_logo.jpg', 0),
(8, 'Apple', 'catalog/demo/apple_logo.jpg', 0),
(9, 'Canon', 'catalog/demo/canon_logo.jpg', 0),
(10, 'Sony', 'catalog/demo/sony_logo.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer_to_store`
--

CREATE TABLE IF NOT EXISTS `manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturer_to_store`
--

INSERT INTO `manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `marketing`
--

CREATE TABLE IF NOT EXISTS `marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `modification`
--

CREATE TABLE IF NOT EXISTS `modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `code` varchar(64) CHARACTER SET utf8 NOT NULL,
  `author` varchar(64) CHARACTER SET utf8 NOT NULL,
  `version` varchar(32) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `xml` text CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE IF NOT EXISTS `module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `code` varchar(32) CHARACTER SET utf8 NOT NULL,
  `setting` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', 'a:5:{s:4:"name";s:17:"Banner - Category";s:9:"banner_id";s:1:"6";s:5:"width";s:3:"300";s:6:"height";s:3:"300";s:6:"status";s:1:"1";}'),
(29, 'Home Page', 'carousel', 'a:5:{s:4:"name";s:20:"Carousel - Home Page";s:9:"banner_id";s:1:"8";s:5:"width";s:3:"130";s:6:"height";s:3:"100";s:6:"status";s:1:"1";}'),
(28, 'Home Page', 'featured', 'a:6:{s:4:"name";s:20:"Featured - Home Page";s:7:"product";a:4:{i:0;s:2:"43";i:1;s:2:"40";i:2;s:2:"42";i:3;s:2:"30";}s:5:"limit";s:1:"4";s:5:"width";s:3:"200";s:6:"height";s:3:"200";s:6:"status";s:1:"1";}'),
(27, 'Home Page', 'slideshow', 'a:5:{s:4:"name";s:21:"Slideshow - Home Page";s:9:"banner_id";s:1:"7";s:5:"width";s:4:"1140";s:6:"height";s:3:"380";s:6:"status";s:1:"1";}');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) CHARACTER SET utf8 NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `store_url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `fax` varchar(32) CHARACTER SET utf8 NOT NULL,
  `custom_field` text CHARACTER SET utf8 NOT NULL,
  `payment_firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `payment_lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `payment_company` varchar(40) CHARACTER SET utf8 NOT NULL,
  `payment_address_1` varchar(128) CHARACTER SET utf8 NOT NULL,
  `payment_address_2` varchar(128) CHARACTER SET utf8 NOT NULL,
  `payment_city` varchar(128) CHARACTER SET utf8 NOT NULL,
  `payment_postcode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `payment_country` varchar(128) CHARACTER SET utf8 NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) CHARACTER SET utf8 NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text CHARACTER SET utf8 NOT NULL,
  `payment_custom_field` text CHARACTER SET utf8 NOT NULL,
  `payment_method` varchar(128) CHARACTER SET utf8 NOT NULL,
  `payment_code` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `shipping_lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `shipping_company` varchar(40) CHARACTER SET utf8 NOT NULL,
  `shipping_address_1` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_address_2` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_city` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_postcode` varchar(10) CHARACTER SET utf8 NOT NULL,
  `shipping_country` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text CHARACTER SET utf8 NOT NULL,
  `shipping_custom_field` text CHARACTER SET utf8 NOT NULL,
  `shipping_method` varchar(128) CHARACTER SET utf8 NOT NULL,
  `shipping_code` varchar(128) CHARACTER SET utf8 NOT NULL,
  `comment` text CHARACTER SET utf8 NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) CHARACTER SET utf8 NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) CHARACTER SET utf8 NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `forwarded_ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `user_agent` varchar(255) CHARACTER SET utf8 NOT NULL,
  `accept_language` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(512) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewCount` int(5) NOT NULL DEFAULT '0',
  `likeCount` int(5) NOT NULL DEFAULT '0',
  `favoriteCount` int(5) NOT NULL DEFAULT '0',
  `duration` varchar(48) COLLATE utf8_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=56 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `title`, `link`, `image`, `manufacturer_id`, `date_available`, `sort_order`, `status`, `viewCount`, `likeCount`, `favoriteCount`, `duration`, `date_added`, `date_modified`, `user_id`, `customer_id`) VALUES
(55, 'Interview with a One Year Old - Julianna from ItsJudysLife', 'https://www.youtube.com/watch?v=U6TBDGa5f_I', 'data/U6TBDGa5f_I.jpg', 0, '2015-03-06', 1, 1, 628431, 41946, 0, 'PT3M21S', '2015-03-06 15:05:49', '0000-00-00 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_description`
--

CREATE TABLE IF NOT EXISTS `product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL,
  `tag` text CHARACTER SET utf8 NOT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `meta_keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_description`
--

INSERT INTO `product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(55, 1, 'Test download image', '&lt;p&gt;fadfa fgadgfadg&lt;/p&gt;', '', 'gqetfadvzcv', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_option_value`
--

CREATE TABLE IF NOT EXISTS `product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) CHARACTER SET utf8 NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) CHARACTER SET utf8 NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- Dumping data for table `product_option_value`
--

INSERT INTO `product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 217, 42, 5, 41, 100, 0, 1.0000, '+', 0, '+', 1.00000000, '+'),
(6, 218, 42, 1, 31, 146, 1, 20.0000, '+', 2, '-', 20.00000000, '+'),
(7, 218, 42, 1, 43, 300, 1, 30.0000, '+', 3, '+', 30.00000000, '+'),
(5, 218, 42, 1, 32, 96, 1, 10.0000, '+', 1, '+', 10.00000000, '+'),
(4, 217, 42, 5, 39, 92, 1, 4.0000, '+', 0, '+', 4.00000000, '+'),
(2, 217, 42, 5, 42, 200, 1, 2.0000, '+', 0, '+', 2.00000000, '+'),
(3, 217, 42, 5, 40, 300, 0, 3.0000, '+', 0, '+', 3.00000000, '+'),
(8, 223, 42, 2, 23, 48, 1, 10.0000, '+', 0, '+', 10.00000000, '+'),
(10, 223, 42, 2, 44, 2696, 1, 30.0000, '+', 0, '+', 30.00000000, '+'),
(9, 223, 42, 2, 24, 194, 1, 20.0000, '+', 0, '+', 20.00000000, '+'),
(11, 223, 42, 2, 45, 3998, 1, 40.0000, '+', 0, '+', 40.00000000, '+'),
(12, 224, 35, 11, 46, 0, 1, 5.0000, '+', 0, '+', 0.00000000, '+'),
(13, 224, 35, 11, 47, 10, 1, 10.0000, '+', 0, '+', 0.00000000, '+'),
(14, 224, 35, 11, 48, 15, 1, 15.0000, '+', 0, '+', 0.00000000, '+'),
(16, 226, 30, 5, 40, 5, 1, 0.0000, '+', 0, '+', 0.00000000, '+'),
(15, 226, 30, 5, 39, 2, 1, 0.0000, '+', 0, '+', 0.00000000, '+');

-- --------------------------------------------------------

--
-- Table structure for table `product_to_category`
--

CREATE TABLE IF NOT EXISTS `product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_to_category`
--

INSERT INTO `product_to_category` (`product_id`, `category_id`) VALUES
(0, 25),
(52, 33),
(55, 33);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_store`
--

CREATE TABLE IF NOT EXISTS `product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_to_store`
--

INSERT INTO `product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0),
(46, 0),
(47, 0),
(48, 0),
(49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_to_videogroup`
--

CREATE TABLE IF NOT EXISTS `product_to_videogroup` (
  `product_id` int(11) NOT NULL,
  `videogroup_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`videogroup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE IF NOT EXISTS `return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `telephone` varchar(32) CHARACTER SET utf8 NOT NULL,
  `product` varchar(255) CHARACTER SET utf8 NOT NULL,
  `model` varchar(64) CHARACTER SET utf8 NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) CHARACTER SET utf8 NOT NULL,
  `text` text CHARACTER SET utf8 NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) CHARACTER SET utf8 NOT NULL,
  `key` varchar(64) CHARACTER SET utf8 NOT NULL,
  `value` text CHARACTER SET utf8 NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=284 ;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(267, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(266, 0, 'config', 'config_shared', '0', 0),
(265, 0, 'config', 'config_secure', '0', 0),
(264, 0, 'config', 'config_fraud_status_id', '7', 0),
(263, 0, 'config', 'config_fraud_score', '', 0),
(262, 0, 'config', 'config_fraud_key', '', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(261, 0, 'config', 'config_fraud_detection', '0', 0),
(260, 0, 'config', 'config_mail_alert', '', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(259, 0, 'config', 'config_mail', 'a:7:{s:8:"protocol";s:4:"mail";s:9:"parameter";s:0:"";s:13:"smtp_hostname";s:0:"";s:13:"smtp_username";s:0:"";s:13:"smtp_password";s:0:"";s:9:"smtp_port";s:0:"";s:12:"smtp_timeout";s:0:"";}', 1),
(258, 0, 'config', 'config_ftp_status', '0', 0),
(257, 0, 'config', 'config_ftp_root', '', 0),
(256, 0, 'config', 'config_ftp_password', '', 0),
(255, 0, 'config', 'config_ftp_username', '', 0),
(254, 0, 'config', 'config_ftp_port', '21', 0),
(253, 0, 'config', 'config_ftp_hostname', '', 0),
(252, 0, 'config', 'config_image_location_height', '50', 0),
(251, 0, 'config', 'config_image_location_width', '268', 0),
(250, 0, 'config', 'config_image_cart_height', '47', 0),
(249, 0, 'config', 'config_image_cart_width', '47', 0),
(248, 0, 'config', 'config_image_wishlist_height', '47', 0),
(181, 0, 'config', 'config_meta_title', 'Your Store', 0),
(182, 0, 'config', 'config_meta_description', 'My Store', 0),
(183, 0, 'config', 'config_meta_keyword', '', 0),
(184, 0, 'config', 'config_template', 'default', 0),
(185, 0, 'config', 'config_layout_id', '4', 0),
(186, 0, 'config', 'config_country_id', '222', 0),
(187, 0, 'config', 'config_zone_id', '3563', 0),
(188, 0, 'config', 'config_language', 'en', 0),
(189, 0, 'config', 'config_admin_language', 'en', 0),
(190, 0, 'config', 'config_currency', 'USD', 0),
(191, 0, 'config', 'config_currency_auto', '1', 0),
(192, 0, 'config', 'config_length_class_id', '1', 0),
(193, 0, 'config', 'config_weight_class_id', '1', 0),
(194, 0, 'config', 'config_product_count', '1', 0),
(195, 0, 'config', 'config_product_limit', '15', 0),
(196, 0, 'config', 'config_product_description_length', '100', 0),
(197, 0, 'config', 'config_limit_admin', '20', 0),
(198, 0, 'config', 'config_review_status', '1', 0),
(199, 0, 'config', 'config_review_guest', '1', 0),
(200, 0, 'config', 'config_review_mail', '0', 0),
(201, 0, 'config', 'config_voucher_min', '1', 0),
(202, 0, 'config', 'config_voucher_max', '1000', 0),
(203, 0, 'config', 'config_tax', '1', 0),
(204, 0, 'config', 'config_tax_default', 'shipping', 0),
(205, 0, 'config', 'config_tax_customer', 'shipping', 0),
(206, 0, 'config', 'config_customer_online', '0', 0),
(207, 0, 'config', 'config_customer_group_id', '1', 0),
(208, 0, 'config', 'config_customer_group_display', 'a:1:{i:0;s:1:"1";}', 1),
(209, 0, 'config', 'config_customer_price', '0', 0),
(210, 0, 'config', 'config_account_id', '3', 0),
(211, 0, 'config', 'config_account_mail', '0', 0),
(212, 0, 'config', 'config_invoice_prefix', 'INV-2013-00', 0),
(283, 0, 'config', 'config_api_id', '1', 0),
(214, 0, 'config', 'config_cart_weight', '1', 0),
(215, 0, 'config', 'config_checkout_guest', '1', 0),
(216, 0, 'config', 'config_checkout_id', '5', 0),
(217, 0, 'config', 'config_order_status_id', '1', 0),
(218, 0, 'config', 'config_processing_status', 'a:1:{i:0;s:1:"2";}', 1),
(219, 0, 'config', 'config_complete_status', 'a:1:{i:0;s:1:"5";}', 1),
(220, 0, 'config', 'config_order_mail', '0', 0),
(221, 0, 'config', 'config_stock_display', '0', 0),
(222, 0, 'config', 'config_stock_warning', '0', 0),
(223, 0, 'config', 'config_stock_checkout', '0', 0),
(224, 0, 'config', 'config_affiliate_approval', '0', 0),
(225, 0, 'config', 'config_affiliate_auto', '0', 0),
(226, 0, 'config', 'config_affiliate_commission', '5', 0),
(227, 0, 'config', 'config_affiliate_id', '4', 0),
(228, 0, 'config', 'config_affiliate_mail', '0', 0),
(229, 0, 'config', 'config_return_id', '0', 0),
(230, 0, 'config', 'config_return_status_id', '2', 0),
(231, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(232, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(233, 0, 'config', 'config_image_category_width', '80', 0),
(234, 0, 'config', 'config_image_category_height', '80', 0),
(235, 0, 'config', 'config_image_thumb_width', '228', 0),
(236, 0, 'config', 'config_image_thumb_height', '228', 0),
(237, 0, 'config', 'config_image_popup_width', '500', 0),
(238, 0, 'config', 'config_image_popup_height', '500', 0),
(239, 0, 'config', 'config_image_product_width', '228', 0),
(240, 0, 'config', 'config_image_product_height', '228', 0),
(241, 0, 'config', 'config_image_additional_width', '74', 0),
(242, 0, 'config', 'config_image_additional_height', '74', 0),
(243, 0, 'config', 'config_image_related_width', '80', 0),
(244, 0, 'config', 'config_image_related_height', '80', 0),
(245, 0, 'config', 'config_image_compare_width', '90', 0),
(246, 0, 'config', 'config_image_compare_height', '90', 0),
(247, 0, 'config', 'config_image_wishlist_width', '47', 0),
(180, 0, 'config', 'config_comment', '', 0),
(179, 0, 'config', 'config_open', '', 0),
(178, 0, 'config', 'config_image', '', 0),
(177, 0, 'config', 'config_fax', '', 0),
(176, 0, 'config', 'config_telephone', '123456789', 0),
(280, 0, 'config', 'config_email', 'ducchinhbk@gmail.com', 0),
(174, 0, 'config', 'config_geocode', '', 0),
(172, 0, 'config', 'config_owner', 'Your Name', 0),
(173, 0, 'config', 'config_address', 'Address 1', 0),
(171, 0, 'config', 'config_name', 'Your Store', 0),
(268, 0, 'config', 'config_seo_url', '0', 0),
(269, 0, 'config', 'config_file_max_size', '300000', 0),
(270, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(271, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(272, 0, 'config', 'config_maintenance', '0', 0),
(273, 0, 'config', 'config_password', '1', 0),
(282, 0, 'config', 'config_encryption', '0c2dd5eda2b4a88481101efc85161bb5', 0),
(275, 0, 'config', 'config_compression', '0', 0),
(276, 0, 'config', 'config_error_display', '1', 0),
(277, 0, 'config', 'config_error_log', '1', 0),
(278, 0, 'config', 'config_error_filename', 'error.log', 0),
(279, 0, 'config', 'config_google_analytics', '', 0),
(281, 0, 'config', 'config_url', 'http://localhost/video/', 0);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE IF NOT EXISTS `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ssl` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `filename` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `url_alias`
--

CREATE TABLE IF NOT EXISTS `url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) CHARACTER SET utf8 NOT NULL,
  `keyword` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=953 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(903, 'videogroup_id=12', 'Vua đầu bếp 2014 group 9'),
(878, 'category_id=69', 'Video hoạt hình Tâm Lý - Lãng Mạn '),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(865, 'category_id=33', 'Show truyền hình, truyền hình thực tế'),
(866, 'category_id=57', 'Hoạt hình'),
(864, 'category_id=25', 'Game video'),
(879, 'category_id=70', 'Video hoạt hình Khoa học - Viễn Tưởng'),
(869, 'category_id=60', 'Video hài hước'),
(867, 'category_id=17', 'Video thể thao'),
(868, 'category_id=24', 'Video tin tức'),
(875, 'category_id=66', 'Show Thực Tế'),
(874, 'category_id=65', 'Show Hoa Ngữ'),
(873, 'category_id=64', 'Show Âu - Mỹ'),
(872, 'category_id=63', 'Show Hàn Quốc'),
(870, 'category_id=61', 'Video cộng đồng'),
(871, 'category_id=62', 'Show Việt Nam'),
(877, 'category_id=68', 'Hành Động - Phiêu Lưu'),
(876, 'category_id=67', 'Show Hài Hước'),
(904, 'videogroup_id=13', 'Vua đầu bếp 2014 group 10'),
(901, 'videogroup_id=10', 'Vua đầu bếp 2014 group 7'),
(899, 'videogroup_id=8', 'Vua đầu bếp 2014 group 5'),
(898, 'videogroup_id=7', 'Vua đầu bếp 2014 group 3'),
(897, 'videogroup_id=6', ''),
(895, 'videogroup_id=4', 'Vua đầu bếp 2014'),
(896, 'videogroup_id=5', 'Vua đầu bếp 2014 group1'),
(902, 'videogroup_id=11', 'Vua đầu bếp 2014 group 8'),
(828, 'manufacturer_id=9', 'canon'),
(829, 'manufacturer_id=5', 'htc'),
(830, 'manufacturer_id=7', 'hewlett-packard'),
(831, 'manufacturer_id=6', 'palm'),
(832, 'manufacturer_id=10', 'sony'),
(841, 'information_id=6', 'delivery'),
(842, 'information_id=3', 'privacy'),
(843, 'information_id=5', 'terms'),
(852, 'videogroup_id=0', ''),
(853, 'videogroup_id=0', 'đâfadf'),
(854, 'videogroup_id=0', ''),
(855, 'product_id=0', 'fadfadf fsgfsg'),
(856, 'product_id=0', 'fadfad adfadf'),
(858, 'product_id=52', 'fadfadf'),
(900, 'videogroup_id=9', 'Vua đầu bếp 2014 group 6'),
(861, 'product_id=55', 'gfgfagafg'),
(880, 'category_id=71', 'Video hoạt hình Kinh Dị - Siêu Nhiên'),
(881, 'category_id=72', 'Video hoạt hình Hài Hước'),
(882, 'category_id=73', 'Video Bóng Đá Việt Nam'),
(883, 'category_id=74', 'Video thể thao Ngoại Hạng Anh'),
(884, 'category_id=75', 'Video thể thao Bóng Đá Thế Giới'),
(885, 'category_id=76', 'Video thể thao La Liga'),
(886, 'category_id=77', 'Video Các Môn Thể Thao Khác'),
(887, 'category_id=78', 'Video Tin Tức Thế Giới'),
(888, 'category_id=79', 'Video tin tức Kinh Tế'),
(889, 'category_id=80', 'Video Đời Sống Xã Hội'),
(890, 'category_id=81', 'Video Báo Chí'),
(891, 'category_id=82', 'Video Tiểu Phẩm Hài'),
(892, 'category_id=83', 'Video Sân Khẩu - LiveShow Hài'),
(893, 'category_id=84', 'Video Giải Trí - Vui Nhộn'),
(905, 'videogroup_id=14', 'Hoạt hình test group 1'),
(906, 'videogroup_id=15', 'Hoạt hình test group 2'),
(907, 'videogroup_id=16', 'Hoạt hình test group 3'),
(908, 'videogroup_id=17', 'Hoạt hình test group 4'),
(909, 'videogroup_id=18', 'Hoạt hình test group 5'),
(910, 'videogroup_id=19', 'Hoạt hình test group 6'),
(911, 'videogroup_id=20', 'Hoạt hình test group 7'),
(912, 'videogroup_id=21', 'Hoạt hình test group 8'),
(913, 'videogroup_id=22', 'Hoạt hình test group 9'),
(914, 'videogroup_id=23', 'Hoạt hình test group 10'),
(915, 'videogroup_id=24', 'Game test goup 1'),
(916, 'videogroup_id=25', 'Game test goup 2'),
(917, 'videogroup_id=26', 'Game test goup 3'),
(918, 'videogroup_id=27', 'Game test goup 4'),
(919, 'videogroup_id=28', 'Game test goup 5'),
(920, 'videogroup_id=29', 'Game test goup 6'),
(921, 'videogroup_id=30', 'Game test goup 7'),
(922, 'videogroup_id=31', 'Game test goup 8'),
(923, 'videogroup_id=32', 'Game test goup 9'),
(924, 'videogroup_id=33', 'Game test goup 10'),
(925, 'videogroup_id=34', 'Thể thao test group 1'),
(926, 'videogroup_id=35', 'Thể thao test group 2'),
(927, 'videogroup_id=36', 'Thể thao test group 3'),
(928, 'videogroup_id=37', 'Thể thao test group 4'),
(929, 'videogroup_id=38', 'Thể thao test group 5'),
(930, 'videogroup_id=39', 'Thể thao test group 6'),
(931, 'videogroup_id=40', 'Thể thao test group 7'),
(932, 'videogroup_id=41', 'Thể thao test group 8'),
(933, 'videogroup_id=42', 'Thể thao test group 9'),
(934, 'videogroup_id=43', 'Tin tức test group 1'),
(935, 'videogroup_id=44', 'Tin tức test group 2'),
(936, 'videogroup_id=45', 'Tin tức test group 3'),
(937, 'videogroup_id=46', 'Tin tức test group 4'),
(938, 'videogroup_id=47', 'Tin tức test group 5'),
(939, 'videogroup_id=48', 'Tin tức test group 6'),
(940, 'videogroup_id=49', 'Tin tức test group 7'),
(941, 'videogroup_id=50', 'Tin tức test group 8'),
(942, 'videogroup_id=51', 'Tin tức test group 9'),
(943, 'videogroup_id=52', 'Tin tức test group 10'),
(944, 'videogroup_id=53', 'Hài hước test group 1'),
(945, 'videogroup_id=54', 'Hài hước test group 2'),
(946, 'videogroup_id=55', 'Hài hước test group 3'),
(947, 'videogroup_id=56', 'Hài hước test group 4'),
(948, 'videogroup_id=57', 'Hài hước test group 5'),
(949, 'videogroup_id=58', 'Hài hước test group 6'),
(950, 'videogroup_id=59', 'Hài hước test group 7'),
(951, 'videogroup_id=60', 'Hài hước test group 8'),
(952, 'videogroup_id=61', 'Hài hước test group 9');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 NOT NULL,
  `password` varchar(40) CHARACTER SET utf8 NOT NULL,
  `salt` varchar(9) CHARACTER SET utf8 NOT NULL,
  `firstname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(32) CHARACTER SET utf8 NOT NULL,
  `email` varchar(96) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `code` varchar(40) CHARACTER SET utf8 NOT NULL,
  `ip` varchar(40) CHARACTER SET utf8 NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', '2b49988266f90523ceff3bebec2cbb2f5f76c5dc', '4f467c08d', 'John', 'Doe', 'ducchinhbk@gmail.com', '', '', '::1', 1, '2015-02-03 16:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE IF NOT EXISTS `user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `permission` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', 'a:2:{s:6:"access";a:80:{i:0;s:16:"catalog/category";i:1;s:19:"catalog/information";i:2;s:15:"catalog/product";i:3;s:14:"catalog/review";i:4;s:18:"catalog/videogroup";i:5;s:18:"common/column_left";i:6;s:18:"common/filemanager";i:7;s:11:"common/menu";i:8;s:14:"common/profile";i:9;s:12:"common/stats";i:10;s:18:"dashboard/activity";i:11;s:15:"dashboard/chart";i:12;s:18:"dashboard/customer";i:13;s:13:"dashboard/map";i:14;s:16:"dashboard/online";i:15;s:15:"dashboard/order";i:16;s:16:"dashboard/recent";i:17;s:14:"dashboard/sale";i:18;s:16:"feed/google_base";i:19;s:19:"feed/google_sitemap";i:20;s:15:"feed/openbaypro";i:21;s:20:"localisation/country";i:22;s:21:"localisation/language";i:23;s:14:"module/account";i:24;s:16:"module/affiliate";i:25;s:20:"module/amazon_button";i:26;s:13:"module/banner";i:27;s:17:"module/bestseller";i:28;s:15:"module/carousel";i:29;s:15:"module/category";i:30;s:15:"module/featured";i:31;s:13:"module/filter";i:32;s:22:"module/google_hangouts";i:33;s:11:"module/html";i:34;s:18:"module/information";i:35;s:13:"module/latest";i:36;s:16:"module/pp_button";i:37;s:15:"module/pp_login";i:38;s:16:"module/slideshow";i:39;s:14:"module/special";i:40;s:12:"module/store";i:41;s:16:"report/affiliate";i:42;s:25:"report/affiliate_activity";i:43;s:22:"report/affiliate_login";i:44;s:24:"report/customer_activity";i:45;s:22:"report/customer_credit";i:46;s:21:"report/customer_login";i:47;s:22:"report/customer_online";i:48;s:21:"report/customer_order";i:49;s:22:"report/customer_reward";i:50;s:16:"report/marketing";i:51;s:24:"report/product_purchased";i:52;s:21:"report/product_viewed";i:53;s:18:"report/sale_coupon";i:54;s:17:"report/sale_order";i:55;s:18:"report/sale_return";i:56;s:20:"report/sale_shipping";i:57;s:15:"report/sale_tax";i:58;s:13:"sale/customer";i:59;s:20:"sale/customer_ban_ip";i:60;s:19:"sale/customer_group";i:61;s:15:"setting/setting";i:62;s:13:"setting/store";i:63;s:11:"tool/backup";i:64;s:14:"tool/error_log";i:65;s:11:"tool/upload";i:66;s:12:"total/coupon";i:67;s:12:"total/credit";i:68;s:14:"total/handling";i:69;s:16:"total/klarna_fee";i:70;s:19:"total/low_order_fee";i:71;s:12:"total/reward";i:72;s:14:"total/shipping";i:73;s:15:"total/sub_total";i:74;s:9:"total/tax";i:75;s:11:"total/total";i:76;s:13:"total/voucher";i:77;s:8:"user/api";i:78;s:9:"user/user";i:79;s:20:"user/user_permission";}s:6:"modify";a:80:{i:0;s:16:"catalog/category";i:1;s:19:"catalog/information";i:2;s:15:"catalog/product";i:3;s:14:"catalog/review";i:4;s:18:"catalog/videogroup";i:5;s:18:"common/column_left";i:6;s:18:"common/filemanager";i:7;s:11:"common/menu";i:8;s:14:"common/profile";i:9;s:12:"common/stats";i:10;s:18:"dashboard/activity";i:11;s:15:"dashboard/chart";i:12;s:18:"dashboard/customer";i:13;s:13:"dashboard/map";i:14;s:16:"dashboard/online";i:15;s:15:"dashboard/order";i:16;s:16:"dashboard/recent";i:17;s:14:"dashboard/sale";i:18;s:16:"feed/google_base";i:19;s:19:"feed/google_sitemap";i:20;s:15:"feed/openbaypro";i:21;s:20:"localisation/country";i:22;s:21:"localisation/language";i:23;s:14:"module/account";i:24;s:16:"module/affiliate";i:25;s:20:"module/amazon_button";i:26;s:13:"module/banner";i:27;s:17:"module/bestseller";i:28;s:15:"module/carousel";i:29;s:15:"module/category";i:30;s:15:"module/featured";i:31;s:13:"module/filter";i:32;s:22:"module/google_hangouts";i:33;s:11:"module/html";i:34;s:18:"module/information";i:35;s:13:"module/latest";i:36;s:16:"module/pp_button";i:37;s:15:"module/pp_login";i:38;s:16:"module/slideshow";i:39;s:14:"module/special";i:40;s:12:"module/store";i:41;s:16:"report/affiliate";i:42;s:25:"report/affiliate_activity";i:43;s:22:"report/affiliate_login";i:44;s:24:"report/customer_activity";i:45;s:22:"report/customer_credit";i:46;s:21:"report/customer_login";i:47;s:22:"report/customer_online";i:48;s:21:"report/customer_order";i:49;s:22:"report/customer_reward";i:50;s:16:"report/marketing";i:51;s:24:"report/product_purchased";i:52;s:21:"report/product_viewed";i:53;s:18:"report/sale_coupon";i:54;s:17:"report/sale_order";i:55;s:18:"report/sale_return";i:56;s:20:"report/sale_shipping";i:57;s:15:"report/sale_tax";i:58;s:13:"sale/customer";i:59;s:20:"sale/customer_ban_ip";i:60;s:19:"sale/customer_group";i:61;s:15:"setting/setting";i:62;s:13:"setting/store";i:63;s:11:"tool/backup";i:64;s:14:"tool/error_log";i:65;s:11:"tool/upload";i:66;s:12:"total/coupon";i:67;s:12:"total/credit";i:68;s:14:"total/handling";i:69;s:16:"total/klarna_fee";i:70;s:19:"total/low_order_fee";i:71;s:12:"total/reward";i:72;s:14:"total/shipping";i:73;s:15:"total/sub_total";i:74;s:9:"total/tax";i:75;s:11:"total/total";i:76;s:13:"total/voucher";i:77;s:8:"user/api";i:78;s:9:"user/user";i:79;s:20:"user/user_permission";}}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Table structure for table `videogroup`
--

CREATE TABLE IF NOT EXISTS `videogroup` (
  `videogroup_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`videogroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `videogroup`
--

INSERT INTO `videogroup` (`videogroup_id`, `image`, `category_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `category_name`) VALUES
(1, '', 35, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(2, '', 28, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', ''),
(4, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:50:12', '2015-03-08 20:50:12', '0'),
(5, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:52:34', '2015-03-08 20:52:34', '0'),
(6, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:53:10', '2015-03-08 20:53:10', '0'),
(7, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:55:02', '2015-03-08 20:55:02', '0'),
(8, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:55:42', '2015-03-08 20:55:42', '0'),
(9, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:56:15', '2015-03-08 20:56:15', '0'),
(10, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:57:11', '2015-03-08 20:57:11', '0'),
(11, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:58:15', '2015-03-08 20:58:15', '0'),
(12, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:58:46', '2015-03-08 20:58:46', '0'),
(13, 'catalog/2.PNG', 33, 0, 1, 0, 1, '2015-03-08 20:59:19', '2015-03-08 20:59:19', '0'),
(14, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:04:08', '2015-03-08 21:04:08', '0'),
(15, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:14:52', '2015-03-08 21:14:52', '0'),
(16, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:15:55', '2015-03-08 21:15:55', '0'),
(17, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:16:29', '2015-03-08 21:16:29', '0'),
(18, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:17:31', '2015-03-08 21:17:31', '0'),
(19, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:18:04', '2015-03-08 21:18:04', '0'),
(20, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:18:39', '2015-03-08 21:18:39', '0'),
(21, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:19:08', '2015-03-08 21:19:08', '0'),
(22, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:19:40', '2015-03-08 21:19:40', '0'),
(23, 'catalog/images (23).jpg', 57, 0, 1, 0, 1, '2015-03-08 21:20:10', '2015-03-08 21:20:10', '0'),
(24, 'catalog/game-01.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:24:58', '2015-03-08 21:24:58', '0'),
(25, 'catalog/game2.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:25:35', '2015-03-08 21:25:35', '0'),
(26, 'catalog/game3.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:26:17', '2015-03-08 21:26:17', '0'),
(27, 'catalog/game4.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:26:54', '2015-03-08 21:26:54', '0'),
(28, 'catalog/game-01.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:27:21', '2015-03-08 21:27:21', '0'),
(29, 'catalog/game2.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:27:48', '2015-03-08 21:27:48', '0'),
(30, 'catalog/game4.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:28:25', '2015-03-08 21:28:25', '0'),
(31, 'catalog/game4.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:29:04', '2015-03-08 21:29:04', '0'),
(32, 'catalog/game-01.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:29:31', '2015-03-08 21:29:31', '0'),
(33, 'catalog/game3.jpg', 25, 0, 1, 0, 1, '2015-03-08 21:30:02', '2015-03-08 21:30:02', '0'),
(34, 'catalog/sport1.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:33:04', '2015-03-08 21:33:04', '0'),
(35, 'catalog/sport2.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:35:52', '2015-03-08 21:35:52', '0'),
(36, 'catalog/sport3.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:36:31', '2015-03-08 21:36:31', '0'),
(37, 'catalog/sport4.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:37:25', '2015-03-08 21:37:25', '0'),
(38, 'catalog/sport5.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:38:27', '2015-03-08 21:38:27', '0'),
(39, 'catalog/sport6.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:39:07', '2015-03-08 21:39:07', '0'),
(40, 'catalog/sport7.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:39:46', '2015-03-08 21:39:46', '0'),
(41, 'catalog/sport8.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:40:25', '2015-03-08 21:40:25', '0'),
(42, 'catalog/sport9.jpg', 17, 0, 1, 0, 1, '2015-03-08 21:41:02', '2015-03-08 21:41:02', '0'),
(43, 'catalog/news1.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:46:25', '2015-03-08 21:46:25', '0'),
(44, 'catalog/news2.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:47:07', '2015-03-08 21:47:07', '0'),
(45, 'catalog/news3.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:47:44', '2015-03-08 21:47:44', '0'),
(46, 'catalog/news4.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:48:37', '2015-03-08 21:48:37', '0'),
(47, 'catalog/news5.JPG', 24, 0, 1, 0, 1, '2015-03-08 21:49:58', '2015-03-08 21:49:58', '0'),
(48, 'catalog/news6.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:50:39', '2015-03-08 21:50:39', '0'),
(49, 'catalog/news7.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:51:21', '2015-03-08 21:51:21', '0'),
(50, 'catalog/news8.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:52:10', '2015-03-08 21:52:10', '0'),
(51, 'catalog/news9.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:52:51', '2015-03-08 21:52:51', '0'),
(52, 'catalog/news10.jpg', 24, 0, 1, 0, 1, '2015-03-08 21:53:33', '2015-03-08 21:53:33', '0'),
(53, 'catalog/funny1.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:07:07', '2015-03-08 22:07:07', '0'),
(54, 'catalog/funny2.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:07:49', '2015-03-08 22:07:49', '0'),
(55, 'catalog/funny3.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:08:37', '2015-03-08 22:08:37', '0'),
(56, 'catalog/funny4.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:09:14', '2015-03-08 22:09:14', '0'),
(57, 'catalog/funny5.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:09:56', '2015-03-08 22:09:56', '0'),
(58, 'catalog/funny6.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:10:31', '2015-03-08 22:10:31', '0'),
(59, 'catalog/funny7.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:11:20', '2015-03-08 22:11:20', '0'),
(60, 'catalog/funny8.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:11:55', '2015-03-08 22:11:55', '0'),
(61, 'catalog/funny9.jpg', 60, 0, 1, 0, 1, '2015-03-08 22:12:25', '2015-03-08 22:12:25', '0');

-- --------------------------------------------------------

--
-- Table structure for table `videogroup_description`
--

CREATE TABLE IF NOT EXISTS `videogroup_description` (
  `videogroup_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`videogroup_id`,`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `videogroup_description`
--

INSERT INTO `videogroup_description` (`videogroup_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(0, 1, 'Test video group', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'fadfadfadf', '', ''),
(4, 1, 'Vua đầu bếp 2014', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title long-title&quot; dir=&quot;ltr&quot; title=&quot;Vua đầu bếp 2014 - Tập 1 - Vòng Audition T.P HCM - Phát sóng 19/07/2014 - FULL HD&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 0.9em; letter-spacing: -0.03em; background: transparent;&quot;&gt;Vua đầu bếp 2014&lt;/span&gt;&lt;/h1&gt;', 'Vua đầu bếp 2014', 'Vua đầu bếp 2014', 'Vua đầu bếp 2014'),
(5, 1, 'Vua đầu bếp 2014 group1', '&lt;p&gt;Vua đầu bếp 2014 group1&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group1', 'Vua đầu bếp 2014 group1', 'Vua đầu bếp 2014 group1'),
(6, 1, 'Vua đầu bếp 2014 group 2', '&lt;p&gt;Vua đầu bếp 2014 group 2&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 2', 'Vua đầu bếp 2014 group 2', 'Vua đầu bếp 2014 group 2'),
(7, 1, 'Vua đầu bếp 2014 group 3', '&lt;p&gt;Vua đầu bếp 2014 group 3&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 3', 'Vua đầu bếp 2014 group 3', 'Vua đầu bếp 2014 group 3'),
(8, 1, 'Vua đầu bếp 2014 group 5', '&lt;p&gt;Vua đầu bếp 2014 group 5&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 5', 'Vua đầu bếp 2014 group 5', 'Vua đầu bếp 2014 group 5'),
(9, 1, 'Vua đầu bếp 2014 group 6', '&lt;p&gt;Vua đầu bếp 2014 group 6&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 6', 'Vua đầu bếp 2014 group 6', 'Vua đầu bếp 2014 group 6'),
(10, 1, 'Vua đầu bếp 2014 group 7', '&lt;p&gt;Vua đầu bếp 2014 group 7&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 7', 'Vua đầu bếp 2014 group 7', 'Vua đầu bếp 2014 group 7'),
(11, 1, 'Vua đầu bếp 2014 group 8', '&lt;p&gt;Vua đầu bếp 2014 group 8&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 8', 'Vua đầu bếp 2014 group 8', 'Vua đầu bếp 2014 group 8'),
(12, 1, 'Vua đầu bếp 2014 group 9', '&lt;p&gt;Vua đầu bếp 2014 group 9&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 9', 'Vua đầu bếp 2014 group 9', 'Vua đầu bếp 2014 group 9'),
(13, 1, 'Vua đầu bếp 2014 group 10', '&lt;p&gt;Vua đầu bếp 2014 group 10&lt;br&gt;&lt;/p&gt;', 'Vua đầu bếp 2014 group 10', 'Vua đầu bếp 2014 group 10', 'Vua đầu bếp 2014 group 10'),
(14, 1, 'Hoạt hình test group 1', '&lt;p&gt;Hoạt hình test group 1&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 1', 'Hoạt hình test group 1', 'Hoạt hình test group 1'),
(15, 1, 'Hoạt hình test group 2', '&lt;p&gt;Hoạt hình test group 2&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 2', 'Hoạt hình test group 2', 'Hoạt hình test group 2'),
(16, 1, 'Hoạt hình test group 3', '&lt;p&gt;Hoạt hình test group 3&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 3', 'Hoạt hình test group 3', 'Hoạt hình test group 3'),
(17, 1, 'Hoạt hình test group 4', '&lt;p&gt;Hoạt hình test group 4&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 4', 'Hoạt hình test group 4', 'Hoạt hình test group 4'),
(18, 1, 'Hoạt hình test group 5', '&lt;p&gt;Hoạt hình test group 5&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 5', '', 'Hoạt hình test group 5'),
(19, 1, 'Hoạt hình test group 6', '&lt;p&gt;Hoạt hình test group 6&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 6', 'Hoạt hình test group 6', 'Hoạt hình test group 6'),
(20, 1, 'Hoạt hình test group 7', '&lt;p&gt;Hoạt hình test group 7&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 7', 'Hoạt hình test group 7', 'Hoạt hình test group 7'),
(21, 1, 'Hoạt hình test group 8', '&lt;p&gt;Hoạt hình test group 8&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 8', 'Hoạt hình test group 8', 'Hoạt hình test group 8'),
(22, 1, 'Hoạt hình test group 9', '&lt;p&gt;Hoạt hình test group 9&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 9', 'Hoạt hình test group 9', 'Hoạt hình test group 9'),
(23, 1, 'Hoạt hình test group 10', '&lt;p&gt;Hoạt hình test group 10&lt;br&gt;&lt;/p&gt;', 'Hoạt hình test group 10', 'Hoạt hình test group 10', 'Hoạt hình test group 10'),
(24, 1, 'Game test goup 1', '&lt;p&gt;Game test goup 1&lt;br&gt;&lt;/p&gt;', 'Game test goup 1', 'Game test goup 1', 'Game test goup 1'),
(25, 1, 'Game test goup 2', '&lt;p&gt;Game test goup 2&lt;br&gt;&lt;/p&gt;', 'Game test goup 2', 'Game test goup 2', 'Game test goup 2'),
(26, 1, 'Game test goup 3', '&lt;p&gt;Game test goup 3&lt;br&gt;&lt;/p&gt;', 'Game test goup 3', 'Game test goup 3', 'Game test goup 3'),
(27, 1, 'Game test goup 4', '&lt;p&gt;Game test goup 4&lt;br&gt;&lt;/p&gt;', 'Game test goup 4', 'Game test goup 4', 'Game test goup 4'),
(28, 1, 'Game test goup 5', '&lt;p&gt;Game test goup 5&lt;br&gt;&lt;/p&gt;', 'Game test goup 5', 'Game test goup 5', 'Game test goup 5'),
(29, 1, 'Game test goup 6', '&lt;p&gt;Game test goup 6&lt;br&gt;&lt;/p&gt;', 'Game test goup 6', 'Game test goup 6', 'Game test goup 6'),
(30, 1, 'Game test goup 7', '&lt;p&gt;Game test goup 7&lt;br&gt;&lt;/p&gt;', 'Game test goup 7', 'Game test goup 7', 'Game test goup 7'),
(31, 1, 'Game test goup 8', '&lt;p&gt;Game test goup 8&lt;br&gt;&lt;/p&gt;', 'Game test goup 8', 'Game test goup 8', 'Game test goup 8'),
(32, 1, 'Game test goup 9', '&lt;p&gt;Game test goup 9&lt;br&gt;&lt;/p&gt;', 'Game test goup 9', 'Game test goup 9', 'Game test goup 9'),
(33, 1, 'Game test goup 10', '&lt;p&gt;Game test goup 10&lt;br&gt;&lt;/p&gt;', 'Game test goup 10', 'Game test goup 10', 'Game test goup 10'),
(34, 1, 'Thể thao test group 1', '&lt;p&gt;Thể thao test group 1&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 1', 'Thể thao test group 1', ''),
(35, 1, 'Thể thao test group 2', '&lt;p&gt;Thể thao test group 2&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 2', 'Thể thao test group 2', 'Thể thao test group 2'),
(36, 1, 'Thể thao test group 3', '&lt;p&gt;Thể thao test group 3&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 3', 'Thể thao test group 3', 'Thể thao test group 3'),
(37, 1, 'Thể thao test group 4', '&lt;p&gt;Thể thao test group 4&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 4', 'Thể thao test group 4', 'Thể thao test group 4'),
(38, 1, 'Thể thao test group 5', '&lt;p&gt;Thể thao test group 5&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 5', 'Thể thao test group 5', 'Thể thao test group 5'),
(39, 1, 'Thể thao test group 6', '&lt;p&gt;Thể thao test group 6&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 6', 'Thể thao test group 6', 'Thể thao test group 6'),
(40, 1, 'Thể thao test group 7', '&lt;p&gt;Thể thao test group 7&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 7', 'Thể thao test group 7', 'Thể thao test group 7'),
(41, 1, 'Thể thao test group 8', '&lt;p&gt;Thể thao test group 8&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 8', 'Thể thao test group 8', 'Thể thao test group 8'),
(42, 1, 'Thể thao test group 9', '&lt;p&gt;Thể thao test group 9&lt;br&gt;&lt;/p&gt;', 'Thể thao test group 9', 'Thể thao test group 9', 'Thể thao test group 9'),
(43, 1, 'Tin tức test group 1', '&lt;p&gt;Tin tức test group 1&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 1', 'Tin tức test group 1', 'Tin tức test group 1'),
(44, 1, 'Tin tức test group 2', '&lt;p&gt;Tin tức test group 2&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 2', 'Tin tức test group 2', 'Tin tức test group 2'),
(45, 1, 'Tin tức test group 3', '&lt;p&gt;Tin tức test group 3&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 3', 'Tin tức test group 3', 'Tin tức test group 3'),
(46, 1, 'Tin tức test group 4', '&lt;p&gt;Tin tức test group 4&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 4', 'Tin tức test group 4', 'Tin tức test group 4'),
(47, 1, 'Tin tức test group 5', '&lt;p&gt;Tin tức test group 5&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 5', 'Tin tức test group 5', 'Tin tức test group 5'),
(48, 1, 'Tin tức test group 6', '&lt;p&gt;Tin tức test group 6&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 6', 'Tin tức test group 6', 'Tin tức test group 6'),
(49, 1, 'Tin tức test group 7', '&lt;p&gt;Tin tức test group 7&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 7', 'Tin tức test group 7', 'Tin tức test group 7'),
(50, 1, 'Tin tức test group 8', '&lt;p&gt;Tin tức test group 8&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 8', 'Tin tức test group 8', 'Tin tức test group 8'),
(51, 1, 'Tin tức test group 9', '&lt;p&gt;Tin tức test group 9&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 9', 'Tin tức test group 9', 'Tin tức test group 9'),
(52, 1, 'Tin tức test group 10', '&lt;p&gt;Tin tức test group 10&lt;br&gt;&lt;/p&gt;', 'Tin tức test group 10', 'Tin tức test group 10', 'Tin tức test group 10'),
(53, 1, 'Hài hước test group 1', '&lt;p&gt;Hài hước test group 1&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 1', 'Hài hước test group 1', 'Hài hước test group 1'),
(54, 1, 'Hài hước test group 2', '&lt;p&gt;Hài hước test group 2&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 2', 'Hài hước test group 2', 'Hài hước test group 2'),
(55, 1, 'Hài hước test group 3', '&lt;p&gt;Hài hước test group 3&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 3', 'Hài hước test group 3', 'Hài hước test group 3'),
(56, 1, 'Hài hước test group 4', '&lt;p&gt;Hài hước test group 4&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 4', 'Hài hước test group 4', 'Hài hước test group 4'),
(57, 1, 'Hài hước test group 5', '&lt;p&gt;Hài hước test group 5&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 5', 'Hài hước test group 5', 'Hài hước test group 5'),
(58, 1, 'Hài hước test group 6', '&lt;p&gt;Hài hước test group 6&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 6', 'Hài hước test group 6', 'Hài hước test group 6'),
(59, 1, 'Hài hước test group 7', '&lt;p&gt;Hài hước test group 7&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 7', 'Hài hước test group 7', 'Hài hước test group 7'),
(60, 1, 'Hài hước test group 8', '&lt;p&gt;Hài hước test group 8&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 8', 'Hài hước test group 8', 'Hài hước test group 8'),
(61, 1, 'Hài hước test group 9', '&lt;p&gt;Hài hước test group 9&lt;br&gt;&lt;/p&gt;', 'Hài hước test group 9', 'Hài hước test group 9', 'Hài hước test group 9');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
