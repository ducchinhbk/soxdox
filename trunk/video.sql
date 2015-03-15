-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2015 at 03:53 PM
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
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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

INSERT INTO `category` (`category_id`, `url`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, 'danh-muc/game-125.html', '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2015-03-15 21:09:36'),
(75, 'danh-muc/bong-da-the-gioi-175.html', '', 17, 0, 1, 20, 1, '2015-03-08 10:15:10', '2015-03-15 21:11:51'),
(73, 'danh-muc/bong-da-viet-nam-173.html', '', 17, 0, 1, 18, 1, '2015-03-08 10:13:09', '2015-03-15 21:11:58'),
(24, 'danh-muc/tin-tuc-124.html', '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2015-03-15 21:13:03'),
(17, 'danh-muc/the-thao-117.html', '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2015-03-15 21:11:45'),
(74, 'danh-muc/ngoai-hang-anh-174.html', '', 17, 0, 1, 19, 1, '2015-03-08 10:14:20', '2015-03-15 21:12:57'),
(76, 'danh-muc/la-liga-176.html', '', 17, 0, 1, 21, 1, '2015-03-08 10:16:01', '2015-03-15 21:12:51'),
(33, 'danh-muc/tv-show-133.html', '', 0, 1, 1, 1, 1, '2009-02-03 14:17:55', '2015-03-15 21:13:36'),
(60, 'danh-muc/hai-huoc-160.html', '', 0, 0, 1, 6, 1, '2015-03-08 09:54:57', '2015-03-15 21:09:45'),
(61, 'danh-muc/cong-dong-161.html', '', 0, 0, 1, 7, 1, '2015-03-08 09:55:54', '2015-03-15 21:09:02'),
(71, 'danh-muc/kinh-di-sieu-nhien-171.html', '', 57, 0, 1, 16, 1, '2015-03-08 10:06:23', '2015-03-15 21:11:31'),
(70, 'danh-muc/khoa-hoc-vien-tuong-170.html', '', 57, 0, 1, 0, 1, '2015-03-08 10:05:27', '2015-03-15 21:11:24'),
(69, 'danh-muc/tam-ly-lang-man-169.html', '', 57, 0, 1, 15, 1, '2015-03-08 10:04:14', '2015-03-15 21:11:37'),
(68, 'danh-muc/hanh-dong-phieu-luu-168.html', '', 57, 0, 1, 14, 1, '2015-03-08 10:02:52', '2015-03-15 21:11:19'),
(72, 'danh-muc/hai-huoc-172.html', '', 57, 0, 1, 17, 1, '2015-03-08 10:07:29', '2015-03-15 21:11:14'),
(67, 'danh-muc/show-hai-huoc-167.html', '', 33, 0, 1, 13, 1, '2015-03-08 10:01:27', '2015-03-15 21:13:49'),
(66, 'danh-muc/show-thuc-te-166.html', '', 33, 0, 1, 12, 1, '2015-03-08 10:00:36', '2015-03-15 21:14:09'),
(65, 'danh-muc/show-hoa-ngu-165.html', '', 33, 0, 1, 11, 1, '2015-03-08 09:59:57', '2015-03-15 21:14:02'),
(64, 'danh-muc/show-au-my-164.html', '', 33, 0, 1, 10, 1, '2015-03-08 09:58:51', '2015-03-15 21:13:42'),
(63, 'danh-muc/show-han-quoc-163.html', '', 33, 0, 1, 9, 1, '2015-03-08 09:58:00', '2015-03-15 21:13:56'),
(62, 'danh-muc/show-viet-nam-162.html', '', 33, 0, 1, 8, 1, '2015-03-08 09:57:20', '2015-03-15 21:14:15'),
(57, 'danh-muc/hoat-hinh-157.html', '', 0, 1, 1, 2, 1, '2011-04-26 08:53:16', '2015-03-15 21:11:06'),
(77, 'danh-muc/cac-mon-the-thao-khac-177.html', '', 17, 0, 1, 22, 1, '2015-03-08 10:17:24', '2015-03-15 21:12:04'),
(78, 'danh-muc/tin-the-gioi-178.html', '', 24, 0, 1, 23, 1, '2015-03-08 10:19:02', '2015-03-15 21:13:26'),
(79, 'danh-muc/kinh-te-179.html', '', 24, 0, 1, 0, 1, '2015-03-08 10:19:50', '2015-03-15 21:13:20'),
(80, 'danh-muc/doi-song-xa-hoi-180.html', '', 24, 0, 1, 24, 1, '2015-03-08 10:20:55', '2015-03-15 21:13:31'),
(81, 'danh-muc/bao-chi-181.html', '', 24, 0, 1, 25, 1, '2015-03-08 10:21:51', '2015-03-15 21:13:14'),
(82, 'danh-muc/tieu-pham-hai-182.html', '', 60, 0, 1, 26, 1, '2015-03-08 10:22:56', '2015-03-15 21:11:00'),
(83, 'danh-muc/san-khau-liveshow-hai-183.html', '', 60, 0, 1, 27, 1, '2015-03-08 10:23:58', '2015-03-15 21:10:54'),
(84, 'danh-muc/giai-tri-vui-nhon-184.html', '', 60, 0, 1, 28, 1, '2015-03-08 10:24:55', '2015-03-15 21:10:49');

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
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=115 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `title`, `link`, `image`, `manufacturer_id`, `url`, `date_available`, `sort_order`, `status`, `viewCount`, `likeCount`, `favoriteCount`, `duration`, `date_added`, `date_modified`, `user_id`, `customer_id`) VALUES
(55, 'Interview with a One Year Old - Julianna from ItsJudysLife', 'https://www.youtube.com/watch?v=U6TBDGa5f_I', 'data/U6TBDGa5f_I.jpg', 0, 'video/test-download-image-155.html', '2015-03-06', 1, 1, 628431, 41946, 0, '3:21', '2015-03-06 15:05:49', '2015-03-15 21:34:29', NULL, NULL),
(56, 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show truyền hình bằng giọng Nghệ An', 'https://www.youtube.com/watch?v=_Y6Ab2uypXQ', 'data/_Y6Ab2uypXQ.jpg', 0, 'video/nu-sinh-nghe-an-gay-sot-khi-tham-gia-game-show-truyen-hinh-bang-giong-nghe-an-156.html', '2015-03-09', 1, 1, 40673, 69, 0, '2:48', '2015-03-09 09:39:13', '2015-03-15 21:33:11', NULL, NULL),
(57, 'Cười là thua Full HD tập 3 - 22/10/2014', 'https://www.youtube.com/watch?v=NDY8ldg3B4M', 'data/NDY8ldg3B4M.jpg', 0, 'video/cuoi-la-thua-157.html', '2015-03-09', 1, 1, 167523, 95, 0, '44:49', '2015-03-09 09:42:31', '2015-03-15 21:26:06', NULL, NULL),
(58, 'CƯỜI LÀ THUA - TẬP 05 - (05/11/2014) THÚY NGA, HOÀNG PHI vs THU TRANG, ANH ĐỨC', 'https://www.youtube.com/watch?v=sxWlqtrLjaQ', 'data/sxWlqtrLjaQ.jpg', 0, 'video/cuoi-la-thua-tap-05-158.html', '2015-03-09', 1, 1, 289800, 255, 0, '43:55', '2015-03-09 09:48:17', '2015-03-15 21:26:37', NULL, NULL),
(59, 'Liveshow CHUYỆN GIỠN NHƯ THIỆT (Full Time) - Trấn Thành 2014 - HD1080p', 'https://www.youtube.com/watch?v=MB_l8J2C3UI', 'data/MB_l8J2C3UI.jpg', 0, 'video/liveshow-chuyen-gion-nhu-thiet-159.html', '2015-03-09', 1, 1, 4308132, 7542, 0, '3:19:15', '2015-03-09 09:52:18', '2015-03-15 21:30:56', NULL, NULL),
(60, 'LÀNG TA CÓ TÀI LANH (Part 1) - TRẤN THÀNH ft. THU TRANG ft. TRUNG DÂN ft. ANH ĐỨC ft. TIỂU BẢO QUỐC', 'https://www.youtube.com/watch?v=s59r7t2f4QM', 'data/s59r7t2f4QM.jpg', 0, 'video/lang-ta-co-tai-lanh-160.html', '2015-03-09', 1, 1, 808425, 932, 0, '16:7', '2015-03-09 09:57:49', '2015-03-15 21:30:20', NULL, NULL),
(61, 'LÀNG TA CÓ TÀI LANH (Part 2) - TRẤN THÀNH ft. HỒNG VÂN ft. MINH NHÍ', 'https://www.youtube.com/watch?v=7tn-wK24F8o', 'data/7tn-wK24F8o.jpg', 0, 'video/lang-ta-co-tai-lanh-phan-2-161.html', '2015-03-09', 1, 1, 375393, 384, 0, '9:38', '2015-03-09 10:02:26', '2015-03-15 21:30:28', NULL, NULL),
(62, 'LÀNG TA CÓ TÀI LANH (Part 3) - TRẤN THÀNH ft. TRƯỜNG GIANG ft. ANH ĐỨC ft.TRUNG DÂN ft.TIỂU BẢO QUỐC', 'https://www.youtube.com/watch?v=GDzrGVxvFgI', 'data/GDzrGVxvFgI.jpg', 0, 'video/lang-ta-co-tai-lanh-phan-3-162.html', '2015-03-09', 1, 1, 966651, 826, 0, '5:55', '2015-03-09 10:26:47', '2015-03-15 21:30:35', NULL, NULL),
(63, 'LÀNG TA CÓ TÀI LANH (Part 4) - TRẤN THÀNH ft. PHI PHỤNG ft. TRUNG DÂN ft. ANH ĐỨC ft. TIỂU BẢO QUỐC', 'https://www.youtube.com/watch?v=htZRLTAAFRQ', 'data/htZRLTAAFRQ.jpg', 0, 'video/lang-ta-co-tai-lanh-phan-4-163.html', '2015-03-09', 1, 1, 308706, 160, 0, '5:17', '2015-03-09 10:35:27', '2015-03-15 21:30:42', NULL, NULL),
(64, 'LÀNG TA CÓ TÀI LANH (Part 5) - TRẤN THÀNH ft. BẢO KHƯƠNG', 'https://www.youtube.com/watch?v=gpyeVed-VAE', 'data/gpyeVed-VAE.jpg', 0, 'video/lang-ta-co-tai-lanh-phan-5-164.html', '2015-03-09', 1, 1, 233421, 172, 0, '4:38', '2015-03-09 10:37:40', '2015-03-15 21:30:49', NULL, NULL),
(65, 'Doremon lồng tiếng 2015 Cuộc Xâm Lăng Người Ngoài Hành Tinh', 'https://www.youtube.com/watch?v=UF_q7657Mk0', 'data/UF_q7657Mk0.jpg', 0, 'video/doremon-long-tieng-2015-cuoc-xam-lang-nguoi-ngoai-hanh-tinh-165.html', '2015-03-09', 1, 1, 32408, 28, 0, '1:34:21', '2015-03-09 10:41:49', '2015-03-15 21:27:03', NULL, NULL),
(66, 'Phim Đôrêmon - Tập 15: Máy Bay Tí Hon (Lồng tiếng)', 'https://www.youtube.com/watch?v=Wrld1-DhCmM', 'data/Wrld1-DhCmM.jpg', 0, 'video/phim-doremon-tap-15-may-bay-ti-hon-long-tieng-166.html', '2015-03-09', 1, 1, 40080, 19, 0, '7:46', '2015-03-09 10:45:39', '2015-03-15 21:33:19', NULL, NULL),
(67, 'Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành', 'https://www.youtube.com/watch?v=MKme9SrTkIg', 'data/MKme9SrTkIg.jpg', 0, 'video/phim-doremon-chuyen-xe-lua-toc-hanh-167.html', '2015-03-09', 1, 1, 70762, 89, 0, '17:0', '2015-03-09 10:48:40', '2015-03-15 21:33:25', NULL, NULL),
(68, 'Doremon: Ngày ra đời của Nobita (2014)', 'https://www.youtube.com/watch?v=b2G45w0GTPU', 'data/b2G45w0GTPU.jpg', 0, 'video/doremon-ngay-ra-doi-cua-nobita-2014-168.html', '2015-03-09', 1, 1, 3325, 9, 0, '26:10', '2015-03-09 10:52:37', '2015-03-15 21:27:36', NULL, NULL),
(69, 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', 'https://www.youtube.com/watch?v=Y9Ps6bej0Iw', 'data/Y9Ps6bej0Iw.jpg', 0, 'video/doremon-nobita-va-nu-vuong-deo-mat-na-2014-169.html', '2015-03-09', 1, 1, 4796, 5, 0, '36:4', '2015-03-09 10:55:11', '2015-03-15 21:28:35', NULL, NULL),
(70, 'Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)', 'https://www.youtube.com/watch?v=yPP15KrXxj8', 'data/yPP15KrXxj8.jpg', 0, 'video/doremon-cuoc-khao-nghiem-tri-thuc-dac-biet-2014-170.html', '2015-03-09', 1, 1, 8669, 13, 0, '46:6', '2015-03-09 10:58:08', '2015-03-15 21:27:12', NULL, NULL),
(71, 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', 'https://www.youtube.com/watch?v=Y9Ps6bej0Iw', 'data/Y9Ps6bej0Iw.jpg', 0, 'video/doremon-nobita-va-nu-vuong-deo-mat-na-2014-171.html', '2015-03-09', 1, 1, 4796, 5, 0, '36:4', '2015-03-09 11:06:38', '2015-03-15 21:28:41', NULL, NULL),
(72, 'Doremon: Giấy xếp hình náo loạn (2014)', 'https://www.youtube.com/watch?v=yeaKO3peeWU', 'data/yeaKO3peeWU.jpg', 0, 'video/doremon-giay-xep-hinh-nao-loan-2014-172.html', '2015-03-09', 1, 1, 1646, 3, 0, '38:53', '2015-03-09 11:09:25', '2015-03-15 21:27:29', NULL, NULL),
(73, 'Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)', 'https://www.youtube.com/watch?v=MUELM4iQrjg', 'data/MUELM4iQrjg.jpg', 0, 'video/doremon-cuoc-phieu-luu-cua-chu-rai-ca-nobita-2014-173.html', '2015-03-09', 1, 1, 903, 2, 0, '22:59', '2015-03-09 11:12:48', '2015-03-15 21:27:19', NULL, NULL),
(74, 'Doraemon E072: Kẹo Urushima; Doraemon và Dorami', 'https://www.youtube.com/watch?v=tb3S6UUG444', 'data/tb3S6UUG444.jpg', 0, 'video/doraemon-e072-keo-urushima-doraemon-va-dorami-174.html', '2015-03-09', 1, 1, 288400, 635, 0, '32:32', '2015-03-09 11:16:10', '2015-03-15 21:26:55', NULL, NULL),
(75, 'Super Mario 64: Chucking Snowballs - PART 3 - Game Grumps', 'https://www.youtube.com/watch?v=OQHKLJE6DQg', 'data/OQHKLJE6DQg.jpg', 0, 'video/super-mario-64-chucking-snowballs-175.html', '2015-03-09', 1, 1, 335630, 8497, 0, '12:2', '2015-03-09 11:23:31', '2015-03-15 21:34:15', NULL, NULL),
(76, 'Dragon Ball XenoVerse - Grumpcade', 'https://www.youtube.com/watch?v=rBvYkSNReJ0', 'data/rBvYkSNReJ0.jpg', 0, 'video/dragon-ball-xenoverse-176.html', '2015-03-09', 1, 1, 619724, 11751, 0, '1:16:29', '2015-03-09 11:28:11', '2015-03-15 21:28:58', NULL, NULL),
(77, 'Dragonball Z Budokai 3 - Grumpcade (Ft. ProJared)', 'https://www.youtube.com/watch?v=_KziGzYLptg', 'data/_KziGzYLptg.jpg', 0, 'video/dragonball-z-budokai-3-177.html', '2015-03-09', 1, 1, 359884, 8879, 0, '25:32', '2015-03-09 11:30:56', '2015-03-15 21:29:19', NULL, NULL),
(78, 'DBZ-Gohan Vs Cell {Full Fight} (1080p HD)', 'https://www.youtube.com/watch?v=YB45FE6y_wg', 'data/YB45FE6y_wg.jpg', 0, 'video/dbz-gohan-vs-cell-178.html', '2015-03-09', 1, 1, 22878164, 80144, 0, '2:40:37', '2015-03-09 11:33:02', '2015-03-15 21:26:46', NULL, NULL),
(79, 'Ultimate Gohan vs Super Buu | Full Fight | HD', 'https://www.youtube.com/watch?v=PEiTcmtP7Wg', 'data/PEiTcmtP7Wg.jpg', 0, 'video/ultimate-gohan-vs-super-buu-179.html', '2015-03-09', 1, 1, 235300, 827, 0, '35:1', '2015-03-09 13:29:02', '2015-03-15 21:35:56', NULL, NULL),
(80, 'Super Saiyan 4 Gohan!! Dragonball Absalon Preview', 'https://www.youtube.com/watch?v=bbyPcDXiz6U', 'data/bbyPcDXiz6U.jpg', 0, 'video/super-saiyan-4-gohan-180.html', '2015-03-09', 1, 1, 906016, 8731, 0, '4:0', '2015-03-09 13:30:49', '2015-03-15 21:34:22', NULL, NULL),
(81, 'Episode 3 Absalon Trailer', 'https://www.youtube.com/watch?v=k-rwCG9-7wY', 'data/k-rwCG9-7wY.jpg', 0, 'video/episode-3-absalon-trailer-181.html', '2015-03-09', 1, 1, 694798, 8294, 0, '3:27', '2015-03-09 13:32:25', '2015-03-15 21:29:37', NULL, NULL),
(82, 'DragonBall AF Characters', 'https://www.youtube.com/watch?v=Je1JvDFXTtI', 'data/Je1JvDFXTtI.jpg', 0, 'video/dragonball-af-characters-182.html', '2015-03-09', 1, 1, 1386125, 3186, 0, '9:52', '2015-03-09 13:36:34', '2015-03-15 21:29:08', NULL, NULL),
(83, 'Vegito1089 Power lvls Frieza Saga', 'https://www.youtube.com/watch?v=5JVZrlxgBRs', 'data/5JVZrlxgBRs.jpg', 0, 'video/vegito1089-power-lvls-frieza-saga-183.html', '2015-03-09', 1, 1, 714088, 1666, 0, '10:7', '2015-03-09 13:37:58', '2015-03-15 21:36:03', NULL, NULL),
(84, 'Dragón Ball [Goku contra Piccolo]', 'https://www.youtube.com/watch?v=psD3DBN-xFg', 'data/psD3DBN-xFg.jpg', 0, 'video/dragon-ball-184.html', '2015-03-09', 1, 1, 1308620, 686, 0, '3:9', '2015-03-09 13:59:59', '2015-03-15 21:28:50', NULL, NULL),
(85, 'Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá', 'https://www.youtube.com/watch?v=1gEDMppFhN4', 'data/1gEDMppFhN4.jpg', 0, 'video/the-thao-24h-5-cau-thu-chay-nhanh-nhat-lich-su-bong-da-185.html', '2015-03-09', 1, 1, 24107, 4, 0, '2:8', '2015-03-09 14:02:56', '2015-03-15 21:34:35', NULL, NULL),
(86, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p2', 'https://www.youtube.com/watch?v=zYk13dH_At0', 'data/zYk13dH_At0.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-2-186.html', '2015-03-09', 1, 1, 1924, 7, 0, '31:33', '2015-03-09 14:05:45', '2015-03-15 21:31:50', NULL, NULL),
(87, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p3', 'https://www.youtube.com/watch?v=sF5ko2thxak', 'data/sF5ko2thxak.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-3-187.html', '2015-03-09', 1, 1, 892, 6, 0, '7:4', '2015-03-09 14:07:27', '2015-03-15 21:31:57', NULL, NULL),
(88, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p4', 'https://www.youtube.com/watch?v=aEkNB-nH_QU', 'data/aEkNB-nH_QU.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-4-188.html', '2015-03-09', 1, 1, 1321, 6, 0, '25:31', '2015-03-09 14:09:49', '2015-03-15 21:32:05', NULL, NULL),
(89, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p5', 'https://www.youtube.com/watch?v=iGwR6nYNFZE', 'data/iGwR6nYNFZE.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-5-189.html', '2015-03-09', 1, 1, 1799, 5, 0, '36:27', '2015-03-09 14:11:21', '2015-03-15 21:32:13', NULL, NULL),
(90, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p6', 'https://www.youtube.com/watch?v=ihVsSGfSIx0', 'data/ihVsSGfSIx0.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-6-190.html', '2015-03-09', 1, 1, 1481, 3, 0, '48:39', '2015-03-09 14:12:46', '2015-03-15 21:32:21', NULL, NULL),
(91, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p7', 'https://www.youtube.com/watch?v=AH65gpRQC50', 'data/AH65gpRQC50.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-7-191.html', '2015-03-09', 1, 1, 1126, 4, 0, '43:41', '2015-03-09 14:14:19', '2015-03-15 21:32:27', NULL, NULL),
(92, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p8', 'https://www.youtube.com/watch?v=_RlgmWHfVds', 'data/_RlgmWHfVds.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-8-192.html', '2015-03-09', 1, 1, 578, 3, 0, '41:39', '2015-03-09 14:16:43', '2015-03-15 21:32:40', NULL, NULL),
(93, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p9', 'https://www.youtube.com/watch?v=MeIkVwTOR-w', 'data/MeIkVwTOR-w.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-9-193.html', '2015-03-09', 1, 1, 584, 4, 0, '49:46', '2015-03-09 14:19:13', '2015-03-15 21:32:47', NULL, NULL),
(94, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 p10', 'https://www.youtube.com/watch?v=Zu5v6BSd4FU', 'data/Zu5v6BSd4FU.jpg', 0, 'video/ngoai-hang-anh-hom-nay-synthesis-premier-league-2015-phan-10-194.html', '2015-03-09', 1, 1, 1028, 1, 0, '50:42', '2015-03-09 14:20:43', '2015-03-15 21:31:43', NULL, NULL),
(95, 'Dưa hấu trung quốc chứa chất cực độc', 'https://www.youtube.com/watch?v=lbfE0veiKnw', 'data/lbfE0veiKnw.jpg', 0, 'video/dua-hau-trung-quoc-chua-chat-cuc-doc-195.html', '2015-03-09', 1, 1, 533700, 421, 0, '2:9', '2015-03-09 14:42:43', '2015-03-15 21:29:28', NULL, NULL),
(96, 'Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô', 'https://www.youtube.com/watch?v=1XeOsjlJW1A', 'data/1XeOsjlJW1A.jpg', 0, 'video/kinh-hoang-thit-lon-sap-phan-huy-che-thanh-bo-kho-196.html', '2015-03-09', 1, 1, 363342, 111, 0, '1:35', '2015-03-09 14:44:35', '2015-03-15 21:29:54', NULL, NULL),
(97, 'Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam', 'https://www.youtube.com/watch?v=uZ3LS-dGTN8', 'data/uZ3LS-dGTN8.jpg', 0, 'video/su-that-ve-viec-mua-dia-cua-trung-quoc-tai-viet-nam-197.html', '2015-03-09', 1, 1, 552096, 345, 0, '9:50', '2015-03-09 14:49:42', '2015-03-15 21:33:33', NULL, NULL),
(98, 'Làm giả bắp cải', 'https://www.youtube.com/watch?v=gq26zBmWUdc', 'data/gq26zBmWUdc.jpg', 0, 'video/lam-gia-bap-cai-198.html', '2015-03-09', 1, 1, 136411, 50, 0, '1:17', '2015-03-09 14:52:01', '2015-03-15 21:30:02', NULL, NULL),
(99, 'Cận cảnh công nghiệp thực phẩm Trung Quốc', 'https://www.youtube.com/watch?v=sfz4pBTf_uw', 'data/sfz4pBTf_uw.jpg', 0, 'video/can-canh-cong-nghiep-thuc-pham-trung-quoc-199.html', '2015-03-09', 1, 1, 133585, 42, 0, '6:3', '2015-03-09 14:53:36', '2015-03-15 21:24:40', NULL, NULL),
(100, 'Làm nông nghiệp kiểu HOÀNG ANH GIA LAI (HAG)', 'https://www.youtube.com/watch?v=H3kCWGOSf-I', 'data/H3kCWGOSf-I.jpg', 0, 'video/lam-nong-nghiep-kieu-hoang-anh-gia-lai-200.html', '2015-03-09', 1, 1, 112844, 200, 0, '12:44', '2015-03-09 14:55:31', '2015-03-15 21:30:09', NULL, NULL),
(101, 'Cây đũa thần trong phát triển nông nghiệp Israel', 'https://www.youtube.com/watch?v=7ATugsdAFPw', 'data/7ATugsdAFPw.jpg', 0, 'video/cay-dua-than-trong-phat-trien-nong-nghiep-israel-201.html', '2015-03-09', 1, 1, 92127, 126, 0, '29:40', '2015-03-09 14:58:15', '2015-03-15 21:25:49', NULL, NULL),
(102, 'Công nghệ nuôi Vịt hàng đầu thế giới', 'https://www.youtube.com/watch?v=mtvP0ntd390', 'data/mtvP0ntd390.jpg', 0, 'video/cong-nghe-nuoi-vit-hang-dau-the-gioi-202.html', '2015-03-09', 1, 1, 81691, 24, 0, '8:26', '2015-03-09 14:59:46', '2015-03-15 21:25:57', NULL, NULL),
(103, 'Cận cảnh thụ tinh nhân tạo', 'https://www.youtube.com/watch?v=xV0LArAMXQ4', 'data/xV0LArAMXQ4.jpg', 0, 'video/can-canh-thu-tinh-nhan-tao-203.html', '2015-03-09', 1, 1, 146460, 17, 0, '2:39', '2015-03-09 15:01:43', '2015-03-15 21:25:43', NULL, NULL),
(104, 'Thu hoạch ngô bằng Máy nông nghiệp bá đạo', 'https://www.youtube.com/watch?v=ev9hR2xI35w', 'data/ev9hR2xI35w.jpg', 0, 'video/thu-hoach-ngo-bang-may-nong-nghiep-ba-dao-204.html', '2015-03-09', 1, 1, 150401, 82, 0, '5:35', '2015-03-09 15:05:56', '2015-03-15 21:34:42', NULL, NULL),
(105, 'Những tình huống siêu hài hước trong bóng đá', 'https://www.youtube.com/watch?v=zEAXfebsFh8', 'data/zEAXfebsFh8.jpg', 0, 'video/nhung-tinh-huong-sieu-hai-huoc-trong-bong-da-205.html', '2015-03-09', 1, 1, 539381, 225, 0, '26:54', '2015-03-09 15:42:55', '2015-03-15 21:32:55', NULL, NULL),
(106, 'Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp', 'https://www.youtube.com/watch?v=bICg-Af7U7I', 'data/bICg-Af7U7I.jpg', 0, 'video/tieu-pham-hai-chi-vi-tieng-gay-chien-thang-van-hiep-206.html', '2015-03-09', 1, 1, 81196, 78, 0, '27:20', '2015-03-09 15:46:16', '2015-03-15 21:34:49', NULL, NULL),
(107, 'Tiểu phẩm hài -  Công nghệ bán cơm', 'https://www.youtube.com/watch?v=2dTSwAwbz-0', 'data/2dTSwAwbz-0.jpg', 0, 'video/tieu-pham-hai-cong-nghe-ban-com-207.html', '2015-03-09', 1, 1, 5129, 5, 0, '27:59', '2015-03-09 15:47:44', '2015-03-15 21:34:56', NULL, NULL),
(108, 'Hoài Linh Hay Nhất - Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh', 'https://www.youtube.com/watch?v=6QstOAXRrrM', 'data/6QstOAXRrrM.jpg', 0, 'video/tong-hop-cac-tieu-pham-hai-hoai-linh-208.html', '2015-03-09', 1, 1, 59341, 56, 0, '1:19:21', '2015-03-09 15:49:44', '2015-03-15 21:35:49', NULL, NULL),
(109, 'Tiểu phẩm hài - Vợ chồng son - Hán Văn Tình, Khánh Linh', 'https://www.youtube.com/watch?v=peEQYPJiTHE', 'data/peEQYPJiTHE.jpg', 0, 'video/tieu-pham-hai-vo-chong-son-209.html', '2015-03-09', 1, 1, 18053, 8, 0, '21:32', '2015-03-09 16:24:11', '2015-03-15 21:35:26', NULL, NULL),
(110, 'Tiểu phẩm VỢ hay Ô SIN', 'https://www.youtube.com/watch?v=YpksKXd_-Bo', 'data/YpksKXd_-Bo.jpg', 0, 'video/tieu-pham-vo-hay-o-sin-210.html', '2015-03-09', 1, 1, 9722, 9, 0, '12:11', '2015-03-09 16:26:44', '2015-03-15 21:35:33', NULL, NULL),
(111, '[Tiểu Phẩm Hài] - Sống Nhờ Osin - Minh Hằng,Hồng Quân,Lan Minh,', 'https://www.youtube.com/watch?v=MmU-ggJxd7c', 'data/MmU-ggJxd7c.jpg', 0, 'video/tieu-pham-hai-song-nho-osin-211.html', '2015-03-09', 1, 1, 14293, 9, 0, '28:54', '2015-03-09 16:37:19', '2015-03-15 21:35:11', NULL, NULL),
(112, '[Tiểu Phẩm Hài] - Tham Thì Thâm - Quang Tèo,Bình Trọng,Kim Xuyến', 'https://www.youtube.com/watch?v=7aJCNQ-V_yI', 'data/7aJCNQ-V_yI.jpg', 0, 'video/tieu-pham-hai-tham-thi-tham-212.html', '2015-03-09', 1, 1, 4871, 9, 0, '29:40', '2015-03-09 16:38:56', '2015-03-15 21:35:19', NULL, NULL),
(113, '[Tiểu Phẩm Hài] - Khách Thuê Nhà - Vân Dung,Minh Vượng,Phạm Bằng', 'https://www.youtube.com/watch?v=ADkSR2QVlvM', 'data/ADkSR2QVlvM.jpg', 0, 'video/tieu-pham-hai-khach-thue-nha-213.html', '2015-03-09', 1, 1, 20981, 14, 0, '52:42', '2015-03-09 16:46:18', '2015-03-15 21:35:04', NULL, NULL),
(114, 'HÀI: Bản lĩnh đàn ông - Phạm Bằng, Thu Hương, Thanh Dương, Thanh Tú, Thanh Hùng, Nam Cường', 'https://www.youtube.com/watch?v=SWEkMOm_CZw', 'data/SWEkMOm_CZw.jpg', 0, 'video/hai-ban-linh-dan-ong-214.html', '2015-03-09', 1, 1, 10058, 14, 0, '17:18', '2015-03-09 16:52:02', '2015-03-15 21:29:45', NULL, NULL);

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
(55, 1, 'Test download image', '&lt;p&gt;fadfa fgadgfadg&lt;/p&gt;', '', 'gqetfadvzcv', '', ''),
(56, 1, 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show truyền hình bằng giọng Nghệ An', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title long-title&quot; dir=&quot;ltr&quot; title=&quot;Nữ sinh Nghệ An gây sốt khi tham gia Game Show truyền hình bằng giọng Nghệ An&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 0.9em; letter-spacing: -0.03em; background: transparent;&quot;&gt;Nữ sinh Nghệ An gây sốt khi tham gia Game Show truyền hình bằng giọng Nghệ An&lt;/span&gt;&lt;/h1&gt;', 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show', 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show', 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show', 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show'),
(57, 1, 'Cười là thua', '&lt;p&gt;Cười là thua&lt;br&gt;&lt;/p&gt;', '', 'Cười là thua', 'Cười là thua', 'Cười là thua'),
(58, 1, 'CƯỜI LÀ THUA - TẬP 05 ', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title long-title&quot; dir=&quot;ltr&quot; title=&quot;CƯỜI LÀ THUA - TẬP 05 - (05/11/2014) THÚY NGA, HOÀNG PHI vs THU TRANG, ANH ĐỨC&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 0.9em; letter-spacing: -0.03em; background: transparent;&quot;&gt;Cười là thua - tập 5&amp;nbsp;&lt;/span&gt;&lt;/h1&gt;', '', 'Cười là thua - tập 5 ', 'Cười là thua - tập 5 ', 'Cười là thua - tập 5 '),
(59, 1, 'Liveshow CHUYỆN GIỠN NHƯ THIỆT', '&lt;p&gt;Liveshow CHUYỆN GIỠN NHƯ THIỆT&lt;br&gt;&lt;/p&gt;', '', 'Liveshow CHUYỆN GIỠN NHƯ THIỆT', 'Liveshow CHUYỆN GIỠN NHƯ THIỆT', 'Liveshow CHUYỆN GIỠN NHƯ THIỆT'),
(60, 1, 'Làng ta có tài lanh', '&lt;p&gt;Làng ta có tài lanh&lt;br&gt;&lt;/p&gt;', '', 'Làng ta có tài lanh', 'Làng ta có tài lanh', 'Làng ta có tài lanh'),
(61, 1, 'Làng ta có tài lanh Phần 2', '&lt;p&gt;Làng ta có tài lanh Phần 2&lt;br&gt;&lt;/p&gt;', '', 'Làng ta có tài lanh Phần 2', 'Làng ta có tài lanh Phần 2', 'Làng ta có tài lanh Phần 2'),
(62, 1, 'Làng ta có tài lanh Phần 3', '&lt;p&gt;Làng ta có tài lanh Phần 3&lt;br&gt;&lt;/p&gt;', '', 'Làng ta có tài lanh Phần 3', 'Làng ta có tài lanh Phần 3', 'Làng ta có tài lanh Phần 3'),
(63, 1, 'Làng ta có tài lanh Phần 4', '&lt;p&gt;Làng ta có tài lanh Phần 4&lt;br&gt;&lt;/p&gt;', '', 'Làng ta có tài lanh Phần 4', 'Làng ta có tài lanh Phần 4', 'Làng ta có tài lanh Phần 4'),
(64, 1, 'Làng ta có tài lanh Phần 5', '&lt;p&gt;Làng ta có tài lanh Phần 5&lt;br&gt;&lt;/p&gt;', '', 'Làng ta có tài lanh Phần 5', 'Làng ta có tài lanh Phần 5', 'Làng ta có tài lanh Phần 5'),
(65, 1, 'Doremon lồng tiếng 2015 Cuộc Xâm Lăng Người Ngoài Hành Tinh', '&lt;p&gt;Doremon lồng tiếng 2015 Cuộc Xâm Lăng Người Ngoài Hành Tinh&lt;br&gt;&lt;/p&gt;', '', 'Doremon lồng tiếng 2015 Cuộc Xâm Lăng Người Ngoài Hành Tinh', 'Doremon lồng tiếng 2015 Cuộc Xâm Lăng Người Ngoài Hành Tinh', 'Doremon lồng tiếng 2015 Cuộc Xâm Lăng Người Ngoài Hành Tinh'),
(66, 1, 'Phim Đôrêmon - Tập 15: Máy Bay Tí Hon (Lồng tiếng)', '&lt;p&gt;Phim Đôrêmon - Tập 15: Máy Bay Tí Hon (Lồng tiếng)&lt;br&gt;&lt;/p&gt;', '', 'Phim Đôrêmon - Tập 15', 'Phim Đôrêmon - Tập 15', 'Phim Đôrêmon - Tập 15'),
(67, 1, 'Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành&lt;/span&gt;&lt;/h1&gt;', '', 'Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành', 'Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành', 'Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành'),
(68, 1, 'Doremon: Ngày ra đời của Nobita (2014)', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Doremon: Ngày ra đời của Nobita (2014)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Doremon: Ngày ra đời của Nobita (2014)&lt;/span&gt;&lt;/h1&gt;', '', 'Doremon: Ngày ra đời của Nobita (2014)', 'Doremon: Ngày ra đời của Nobita (2014)', 'Doremon: Ngày ra đời của Nobita (2014)'),
(69, 1, 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Doremon: Nobita và nữ vương đeo mặt nạ (2014)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Doremon: Nobita và nữ vương đeo mặt nạ (2014)&lt;/span&gt;&lt;/h1&gt;', '', 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)'),
(70, 1, 'Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)&lt;/span&gt;&lt;/h1&gt;', '', 'Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)', 'Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)', 'Doremon: Cuộc khảo nghiệm tri thức đặc biệt (2014)'),
(71, 1, 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Doremon: Nobita và nữ vương đeo mặt nạ (2014)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Doremon: Nobita và nữ vương đeo mặt nạ (2014)&lt;/span&gt;&lt;/h1&gt;', '', 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)', 'Doremon: Nobita và nữ vương đeo mặt nạ (2014)'),
(72, 1, 'Doremon: Giấy xếp hình náo loạn (2014)', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Doremon: Giấy xếp hình náo loạn (2014)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Doremon: Giấy xếp hình náo loạn (2014)&lt;/span&gt;&lt;/h1&gt;', '', 'Doremon: Giấy xếp hình náo loạn (2014)', 'Doremon: Giấy xếp hình náo loạn (2014)', 'Doremon: Giấy xếp hình náo loạn (2014)'),
(73, 1, 'Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title long-title&quot; dir=&quot;ltr&quot; title=&quot;Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; font-size: 0.9em; letter-spacing: -0.03em; background: transparent;&quot;&gt;Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)&lt;/span&gt;&lt;/h1&gt;', '', 'Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)', 'Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)', 'Doremon: Cuộc phiêu lưu của chú rái cá Nobita (2014)'),
(74, 1, 'Doraemon E072: Kẹo Urushima; Doraemon và Dorami', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Doraemon E072: Kẹo Urushima; Doraemon và Dorami&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Doraemon E072: Kẹo Urushima; Doraemon và Dorami&lt;/span&gt;&lt;/h1&gt;', '', 'Doraemon E072: Kẹo Urushima; Doraemon và Dorami', 'Doraemon E072: Kẹo Urushima; Doraemon và Dorami', 'Doraemon E072: Kẹo Urushima; Doraemon và Dorami'),
(75, 1, 'Super Mario 64: Chucking Snowballs ', '&lt;p&gt;Super Mario 64: Chucking Snowballs&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Super Mario 64: Chucking Snowballs ', 'Super Mario 64: Chucking Snowballs ', 'Super Mario 64: Chucking Snowballs '),
(76, 1, 'Dragon Ball XenoVerse', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Dragon Ball XenoVerse - Grumpcade&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Dragon Ball XenoVerse&lt;/span&gt;&lt;/h1&gt;', '', 'Dragon Ball XenoVerse', 'Dragon Ball XenoVerse', 'Dragon Ball XenoVerse'),
(77, 1, 'Dragonball Z Budokai 3', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Dragonball Z Budokai 3 - Grumpcade (Ft. ProJared)&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Dragonball Z Budokai 3&lt;/span&gt;&lt;/h1&gt;', '', 'Dragonball Z Budokai 3', 'Dragonball Z Budokai 3', 'Dragonball Z Budokai 3'),
(78, 1, 'DBZ-Gohan Vs Cell', '&lt;p&gt;DBZ-Gohan Vs Cell&lt;br&gt;&lt;/p&gt;', '', 'DBZ-Gohan Vs Cell', 'DBZ-Gohan Vs Cell', 'DBZ-Gohan Vs Cell'),
(79, 1, 'Ultimate Gohan vs Super Buu', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Ultimate Gohan vs Super Buu | Full Fight | HD&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Ultimate Gohan vs Super Buu&lt;/span&gt;&lt;/h1&gt;', '', 'Ultimate Gohan vs Super Buu', 'Ultimate Gohan vs Super Buu', 'Ultimate Gohan vs Super Buu'),
(80, 1, 'Super Saiyan 4 Gohan', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Super Saiyan 4 Gohan!! Dragonball Absalon Preview&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Super Saiyan 4 Gohan&lt;/span&gt;&lt;/h1&gt;', '', 'Super Saiyan 4 Gohan', 'Super Saiyan 4 Gohan', 'Super Saiyan 4 Gohan'),
(81, 1, 'Episode 3 Absalon Trailer', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Episode 3 Absalon Trailer&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Episode 3 Absalon Trailer&lt;/span&gt;&lt;/h1&gt;', '', 'Episode 3 Absalon Trailer', 'Episode 3 Absalon Trailer', 'Episode 3 Absalon Trailer'),
(82, 1, 'DragonBall AF Characters', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;DragonBall AF Characters&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;DragonBall AF Characters&lt;/span&gt;&lt;/h1&gt;', '', 'DragonBall AF Characters', 'DragonBall AF Characters', 'DragonBall AF Characters'),
(83, 1, 'Vegito1089 Power lvls Frieza Saga', '&lt;p&gt;Vegito1089 Power lvls Frieza Saga&lt;br&gt;&lt;/p&gt;', '', 'Vegito1089 Power lvls Frieza Saga', 'Vegito1089 Power lvls Frieza Saga', 'Vegito1089 Power lvls Frieza Saga'),
(84, 1, 'Dragón Ball', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; vertical-align: top; color: rgb(34, 34, 34); line-height: normal; overflow: hidden; font-family: arial, sans-serif; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title &quot; dir=&quot;ltr&quot; title=&quot;Dragón Ball [Goku contra Piccolo]&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; background: transparent;&quot;&gt;Dragón Ball&lt;/span&gt;&lt;/h1&gt;', '', 'Dragón Ball', 'Dragón Ball', 'Dragón Ball'),
(85, 1, 'Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; font-size: 24px; display: table-cell; color: rgb(34, 34, 34); line-height: 1.2; overflow: hidden; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span id=&quot;eow-title&quot; class=&quot;watch-title long-title&quot; dir=&quot;ltr&quot; title=&quot;Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá&quot; style=&quot;margin: 0px; padding: 0px; border: 0px; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; font-size: 0.9em; letter-spacing: -0.03em; font-family: Arial; background-image: initial; background-attachment: initial; background-color: transparent; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá&lt;/span&gt;&lt;/h1&gt;', '', 'Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá', 'Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá', 'Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá'),
(86, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 2', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 2&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 2', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 2', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 2'),
(87, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 3', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 3&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 3', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 3', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 3'),
(88, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 4', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 4&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 4', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 4', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 4'),
(89, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 5', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 5&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 5', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 5', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 5'),
(90, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 6', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 6&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 6', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 6', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 6'),
(91, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 7', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 7&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 7', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 7', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 7'),
(92, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 8', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 8&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 8', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 8', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 8'),
(93, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 9', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 9&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 9', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 9', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 9'),
(94, 1, 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 10', '&lt;p&gt;Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 10&lt;br&gt;&lt;/p&gt;', '', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 10', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 10', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 10'),
(95, 1, 'Dưa hấu trung quốc chứa chất cực độc', '&lt;p&gt;Dưa hấu trung quốc chứa chất cực độc&lt;br&gt;&lt;/p&gt;', '', 'Dưa hấu trung quốc chứa chất cực độc', 'Dưa hấu trung quốc chứa chất cực độc', 'Dưa hấu trung quốc chứa chất cực độc'),
(96, 1, 'Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô ', '&lt;p&gt;Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô ', 'Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô ', 'Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô '),
(97, 1, 'Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam ', '&lt;p&gt;Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam ', 'Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam ', 'Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam '),
(98, 1, 'Làm giả bắp cải ', '&lt;p&gt;Làm giả bắp cải&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Làm giả bắp cải ', 'Làm giả bắp cải ', 'Làm giả bắp cải '),
(99, 1, 'Cận cảnh công nghiệp thực phẩm Trung Quốc ', '&lt;p&gt;Cận cảnh công nghiệp thực phẩm Trung Quốc&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Cận cảnh công nghiệp thực phẩm Trung Quốc ', 'Cận cảnh công nghiệp thực phẩm Trung Quốc ', 'Cận cảnh công nghiệp thực phẩm Trung Quốc '),
(100, 1, 'Làm nông nghiệp kiểu HOÀNG ANH GIA LAI ', '&lt;p&gt;Làm nông nghiệp kiểu HOÀNG ANH GIA LAI&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Làm nông nghiệp kiểu HOÀNG ANH GIA LAI ', 'Làm nông nghiệp kiểu HOÀNG ANH GIA LAI ', 'Làm nông nghiệp kiểu HOÀNG ANH GIA LAI '),
(101, 1, 'Cây đũa thần trong phát triển nông nghiệp Israel ', '&lt;p&gt;Cây đũa thần trong phát triển nông nghiệp Israel&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Cây đũa thần trong phát triển nông nghiệp Israel ', 'Cây đũa thần trong phát triển nông nghiệp Israel ', 'Cây đũa thần trong phát triển nông nghiệp Israel '),
(102, 1, 'Công nghệ nuôi Vịt hàng đầu thế giới ', '&lt;p&gt;Công nghệ nuôi Vịt hàng đầu thế giới&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Công nghệ nuôi Vịt hàng đầu thế giới ', 'Công nghệ nuôi Vịt hàng đầu thế giới ', 'Công nghệ nuôi Vịt hàng đầu thế giới '),
(103, 1, 'Cận cảnh thụ tinh nhân tạo ', '&lt;p&gt;Cận cảnh thụ tinh nhân tạo&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Cận cảnh thụ tinh nhân tạo ', 'Cận cảnh thụ tinh nhân tạo ', 'Cận cảnh thụ tinh nhân tạo '),
(104, 1, 'Thu hoạch ngô bằng Máy nông nghiệp bá đạo ', '&lt;p&gt;Thu hoạch ngô bằng Máy nông nghiệp bá đạo&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Thu hoạch ngô bằng Máy nông nghiệp bá đạo ', 'Thu hoạch ngô bằng Máy nông nghiệp bá đạo ', 'Thu hoạch ngô bằng Máy nông nghiệp bá đạo '),
(105, 1, 'Những tình huống siêu hài hước trong bóng đá ', '&lt;p&gt;Những tình huống siêu hài hước trong bóng đá&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Những tình huống siêu hài hước trong bóng đá ', 'Những tình huống siêu hài hước trong bóng đá ', 'Những tình huống siêu hài hước trong bóng đá '),
(106, 1, 'Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp', '&lt;p&gt;Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp&lt;br&gt;&lt;/p&gt;', '', 'Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp', 'Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp', 'Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp'),
(107, 1, 'Tiểu phẩm hài - Công nghệ bán cơm ', '&lt;p&gt;Tiểu phẩm hài - Công nghệ bán cơm&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Tiểu phẩm hài - Công nghệ bán cơm ', 'Tiểu phẩm hài - Công nghệ bán cơm ', 'Tiểu phẩm hài - Công nghệ bán cơm '),
(108, 1, 'Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh ', '&lt;p&gt;Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh ', 'Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh ', 'Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh '),
(109, 1, 'Tiểu phẩm hài - Vợ chồng son', '&lt;p&gt;Tiểu phẩm hài - Vợ chồng son&lt;br&gt;&lt;/p&gt;', '', 'Tiểu phẩm hài - Vợ chồng son', 'Tiểu phẩm hài - Vợ chồng son', 'Tiểu phẩm hài - Vợ chồng son'),
(110, 1, 'Tiểu phẩm VỢ hay Ô SIN ', '&lt;h1 class=&quot;yt watch-title-container&quot; style=&quot;margin-bottom: 13px; padding: 0px; border: 0px; display: table-cell; vertical-align: top; overflow: hidden; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;&quot;&gt;&lt;span style=&quot;color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 24px; line-height: normal;&quot;&gt;Tiểu phẩm VỢ hay Ô SIN&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/h1&gt;', '', 'Tiểu phẩm VỢ hay Ô SIN ', 'Tiểu phẩm VỢ hay Ô SIN ', 'Tiểu phẩm VỢ hay Ô SIN '),
(111, 1, 'Tiểu Phẩm Hài - Sống Nhờ Osin', '&lt;p&gt;Tiểu Phẩm Hài - Sống Nhờ Osin&lt;br&gt;&lt;/p&gt;', '', 'Tiểu Phẩm Hài - Sống Nhờ Osin', 'Tiểu Phẩm Hài - Sống Nhờ Osin', 'Tiểu Phẩm Hài - Sống Nhờ Osin'),
(112, 1, 'Tiểu Phẩm Hài - Tham Thì Thâm', '&lt;p&gt;Tiểu Phẩm Hài - Tham Thì Thâm&lt;br&gt;&lt;/p&gt;', '', 'Tiểu Phẩm Hài - Tham Thì Thâm', 'Tiểu Phẩm Hài - Tham Thì Thâm', 'Tiểu Phẩm Hài - Tham Thì Thâm'),
(113, 1, 'Tiểu Phẩm Hài - Khách Thuê Nhà', '&lt;p&gt;Tiểu Phẩm Hài - Khách Thuê Nhà&lt;br&gt;&lt;/p&gt;', '', 'Tiểu Phẩm Hài - Khách Thuê Nhà', 'Tiểu Phẩm Hài - Khách Thuê Nhà', 'Tiểu Phẩm Hài - Khách Thuê Nhà'),
(114, 1, 'HÀI: Bản lĩnh đàn ông', '&lt;p&gt;HÀI: Bản lĩnh đàn ông&lt;br&gt;&lt;/p&gt;', '', 'HÀI: Bản lĩnh đàn ông', 'HÀI: Bản lĩnh đàn ông', 'HÀI: Bản lĩnh đàn ông');

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
(55, 33),
(56, 33),
(56, 62),
(56, 63),
(56, 65),
(56, 67),
(56, 83),
(57, 33),
(57, 62),
(57, 63),
(57, 64),
(57, 65),
(57, 67),
(57, 83),
(58, 33),
(58, 62),
(58, 63),
(58, 64),
(58, 65),
(58, 67),
(58, 83),
(59, 33),
(59, 62),
(59, 63),
(59, 64),
(59, 65),
(59, 67),
(59, 83),
(60, 33),
(60, 62),
(60, 63),
(60, 64),
(60, 65),
(60, 67),
(60, 83),
(61, 33),
(61, 62),
(61, 63),
(61, 64),
(61, 65),
(61, 67),
(61, 83),
(62, 33),
(62, 62),
(62, 63),
(62, 64),
(62, 65),
(62, 67),
(62, 83),
(63, 33),
(63, 62),
(63, 63),
(63, 64),
(63, 65),
(63, 67),
(63, 83),
(64, 33),
(64, 62),
(64, 63),
(64, 64),
(64, 65),
(64, 67),
(64, 83),
(65, 57),
(65, 68),
(65, 69),
(65, 70),
(65, 71),
(65, 72),
(66, 57),
(66, 68),
(66, 69),
(66, 70),
(66, 71),
(66, 72),
(67, 57),
(67, 68),
(67, 69),
(67, 70),
(67, 71),
(67, 72),
(68, 57),
(68, 68),
(68, 69),
(68, 70),
(68, 71),
(68, 72),
(69, 57),
(69, 68),
(69, 69),
(69, 70),
(69, 71),
(69, 72),
(70, 57),
(70, 68),
(70, 69),
(70, 70),
(70, 71),
(70, 72),
(71, 57),
(71, 68),
(71, 69),
(71, 70),
(71, 71),
(71, 72),
(72, 57),
(72, 68),
(72, 69),
(72, 70),
(72, 71),
(72, 72),
(73, 57),
(73, 68),
(73, 69),
(73, 70),
(73, 71),
(73, 72),
(74, 57),
(74, 68),
(74, 69),
(74, 70),
(74, 71),
(74, 72),
(75, 25),
(76, 25),
(77, 25),
(78, 25),
(79, 25),
(80, 25),
(81, 25),
(82, 25),
(83, 25),
(84, 25),
(85, 17),
(85, 73),
(85, 74),
(85, 75),
(85, 76),
(85, 77),
(86, 17),
(86, 73),
(86, 74),
(86, 75),
(86, 76),
(86, 77),
(87, 17),
(87, 73),
(87, 74),
(87, 75),
(87, 76),
(87, 77),
(88, 17),
(88, 73),
(88, 74),
(88, 75),
(88, 76),
(88, 77),
(89, 17),
(89, 73),
(89, 74),
(89, 75),
(89, 76),
(89, 77),
(90, 17),
(90, 73),
(90, 74),
(90, 75),
(90, 76),
(90, 77),
(91, 17),
(91, 73),
(91, 74),
(91, 75),
(91, 76),
(91, 77),
(92, 17),
(92, 73),
(92, 74),
(92, 75),
(92, 76),
(92, 77),
(93, 17),
(93, 73),
(93, 74),
(93, 75),
(93, 76),
(93, 77),
(94, 17),
(94, 73),
(94, 74),
(94, 75),
(94, 76),
(94, 77),
(95, 24),
(95, 78),
(95, 79),
(95, 80),
(95, 81),
(96, 24),
(96, 78),
(96, 79),
(96, 80),
(96, 81),
(97, 24),
(97, 78),
(97, 79),
(97, 80),
(97, 81),
(98, 24),
(98, 78),
(98, 79),
(98, 80),
(98, 81),
(99, 24),
(99, 78),
(99, 79),
(99, 80),
(99, 81),
(100, 24),
(100, 78),
(100, 79),
(100, 80),
(100, 81),
(101, 24),
(101, 78),
(101, 79),
(101, 80),
(101, 81),
(102, 24),
(102, 78),
(102, 79),
(102, 80),
(102, 81),
(103, 24),
(103, 78),
(103, 79),
(103, 80),
(103, 81),
(104, 24),
(104, 78),
(104, 79),
(104, 80),
(104, 81),
(105, 60),
(105, 82),
(105, 83),
(105, 84),
(106, 60),
(106, 82),
(106, 83),
(106, 84),
(107, 60),
(107, 82),
(107, 83),
(107, 84),
(108, 60),
(108, 82),
(108, 83),
(108, 84),
(109, 60),
(109, 82),
(109, 83),
(109, 84),
(110, 60),
(110, 82),
(110, 83),
(110, 84),
(111, 60),
(111, 82),
(111, 83),
(111, 84),
(112, 60),
(112, 82),
(112, 83),
(112, 84),
(113, 60),
(113, 83),
(113, 84),
(114, 60),
(114, 82),
(114, 83),
(114, 84);

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

--
-- Dumping data for table `product_to_videogroup`
--

INSERT INTO `product_to_videogroup` (`product_id`, `videogroup_id`) VALUES
(56, 4),
(56, 6),
(56, 7),
(56, 8),
(56, 9),
(56, 13),
(57, 4),
(57, 6),
(57, 7),
(57, 8),
(57, 9),
(57, 10),
(57, 11),
(57, 12),
(57, 13),
(58, 4),
(58, 6),
(58, 7),
(58, 8),
(58, 9),
(58, 10),
(58, 11),
(58, 12),
(58, 13),
(59, 4),
(59, 6),
(59, 7),
(59, 8),
(59, 9),
(59, 10),
(59, 11),
(59, 12),
(59, 13),
(60, 4),
(60, 6),
(60, 7),
(60, 8),
(60, 9),
(60, 10),
(60, 11),
(60, 12),
(61, 4),
(61, 6),
(61, 7),
(61, 8),
(61, 9),
(61, 10),
(61, 11),
(61, 12),
(62, 4),
(62, 6),
(62, 7),
(62, 8),
(62, 9),
(62, 10),
(62, 11),
(62, 12),
(62, 13),
(63, 4),
(63, 6),
(63, 7),
(63, 8),
(63, 9),
(63, 10),
(63, 11),
(63, 12),
(63, 13),
(64, 4),
(64, 6),
(64, 7),
(64, 8),
(64, 9),
(64, 10),
(64, 11),
(64, 12),
(64, 13),
(65, 14),
(65, 15),
(65, 16),
(65, 17),
(65, 18),
(65, 19),
(65, 20),
(65, 21),
(65, 22),
(65, 23),
(66, 14),
(66, 15),
(66, 16),
(66, 17),
(66, 18),
(66, 19),
(66, 20),
(66, 21),
(66, 22),
(66, 23),
(67, 14),
(67, 15),
(67, 16),
(67, 17),
(67, 18),
(67, 19),
(67, 20),
(67, 21),
(67, 22),
(67, 23),
(68, 14),
(68, 15),
(68, 16),
(68, 17),
(68, 18),
(68, 19),
(68, 20),
(68, 21),
(68, 22),
(68, 23),
(69, 14),
(69, 15),
(69, 16),
(69, 17),
(69, 18),
(69, 19),
(69, 20),
(69, 21),
(69, 22),
(69, 23),
(70, 14),
(70, 15),
(70, 16),
(70, 17),
(70, 18),
(70, 19),
(70, 20),
(70, 21),
(70, 22),
(70, 23),
(71, 14),
(71, 15),
(71, 16),
(71, 17),
(71, 18),
(71, 19),
(71, 20),
(71, 21),
(71, 22),
(71, 23),
(72, 14),
(72, 15),
(72, 16),
(72, 17),
(72, 18),
(72, 19),
(72, 20),
(72, 21),
(72, 22),
(72, 23),
(73, 14),
(73, 15),
(73, 16),
(73, 17),
(73, 18),
(73, 19),
(73, 20),
(73, 21),
(73, 22),
(73, 23),
(74, 14),
(74, 15),
(74, 16),
(74, 17),
(74, 18),
(74, 19),
(74, 20),
(74, 21),
(74, 22),
(74, 23),
(75, 24),
(75, 25),
(75, 26),
(75, 27),
(75, 28),
(75, 29),
(75, 30),
(75, 31),
(75, 32),
(75, 33),
(76, 24),
(76, 25),
(76, 26),
(76, 27),
(76, 28),
(76, 29),
(76, 30),
(76, 31),
(76, 32),
(76, 33),
(77, 24),
(77, 25),
(77, 26),
(77, 27),
(77, 28),
(77, 29),
(77, 30),
(77, 31),
(77, 32),
(77, 33),
(78, 24),
(78, 25),
(78, 26),
(78, 27),
(78, 28),
(78, 29),
(78, 30),
(78, 31),
(78, 32),
(78, 33),
(79, 24),
(79, 25),
(79, 26),
(79, 27),
(79, 28),
(79, 29),
(79, 30),
(79, 31),
(79, 32),
(79, 33),
(80, 24),
(80, 25),
(80, 26),
(80, 27),
(80, 28),
(80, 29),
(80, 30),
(80, 31),
(80, 32),
(80, 33),
(81, 24),
(81, 25),
(81, 26),
(81, 27),
(81, 28),
(81, 29),
(81, 30),
(81, 31),
(81, 32),
(81, 33),
(82, 24),
(82, 25),
(82, 26),
(82, 27),
(82, 28),
(82, 29),
(82, 30),
(82, 31),
(82, 32),
(82, 33),
(83, 24),
(83, 25),
(83, 26),
(83, 27),
(83, 28),
(83, 29),
(83, 30),
(83, 31),
(83, 32),
(83, 33),
(84, 24),
(84, 25),
(84, 26),
(84, 27),
(84, 28),
(84, 29),
(84, 30),
(84, 31),
(84, 32),
(84, 33),
(85, 34),
(85, 35),
(85, 36),
(85, 37),
(85, 38),
(85, 39),
(85, 40),
(85, 41),
(85, 42),
(86, 34),
(86, 35),
(86, 36),
(86, 37),
(86, 38),
(86, 39),
(86, 40),
(86, 41),
(86, 42),
(87, 34),
(87, 35),
(87, 36),
(87, 37),
(87, 38),
(87, 39),
(87, 40),
(87, 41),
(87, 42),
(88, 34),
(88, 35),
(88, 36),
(88, 37),
(88, 38),
(88, 39),
(88, 40),
(88, 41),
(88, 42),
(89, 34),
(89, 35),
(89, 36),
(89, 37),
(89, 38),
(89, 39),
(89, 40),
(89, 41),
(89, 42),
(90, 34),
(90, 35),
(90, 36),
(90, 37),
(90, 38),
(90, 39),
(90, 40),
(90, 41),
(90, 42),
(91, 34),
(91, 35),
(91, 36),
(91, 37),
(91, 38),
(91, 39),
(91, 40),
(91, 41),
(91, 42),
(92, 34),
(92, 35),
(92, 36),
(92, 37),
(92, 38),
(92, 39),
(92, 40),
(92, 41),
(92, 42),
(93, 34),
(93, 35),
(93, 36),
(93, 37),
(93, 38),
(93, 39),
(93, 40),
(93, 41),
(93, 42),
(94, 34),
(94, 35),
(94, 36),
(94, 37),
(94, 38),
(94, 39),
(94, 40),
(94, 41),
(94, 42),
(95, 43),
(95, 44),
(95, 45),
(95, 46),
(95, 47),
(95, 48),
(95, 49),
(95, 50),
(95, 51),
(95, 52),
(96, 43),
(96, 44),
(96, 45),
(96, 46),
(96, 47),
(96, 48),
(96, 49),
(96, 50),
(96, 51),
(96, 52),
(97, 43),
(97, 44),
(97, 45),
(97, 46),
(97, 47),
(97, 48),
(97, 49),
(97, 50),
(97, 51),
(97, 52),
(98, 43),
(98, 44),
(98, 45),
(98, 46),
(98, 47),
(98, 48),
(98, 49),
(98, 50),
(98, 51),
(98, 52),
(99, 43),
(99, 44),
(99, 45),
(99, 46),
(99, 47),
(99, 48),
(99, 49),
(99, 50),
(99, 51),
(99, 52),
(100, 43),
(100, 44),
(100, 45),
(100, 46),
(100, 47),
(100, 48),
(100, 49),
(100, 50),
(100, 51),
(100, 52),
(101, 43),
(101, 44),
(101, 45),
(101, 46),
(101, 47),
(101, 48),
(101, 49),
(101, 50),
(101, 51),
(101, 52),
(102, 43),
(102, 44),
(102, 45),
(102, 46),
(102, 47),
(102, 48),
(102, 49),
(102, 50),
(102, 51),
(102, 52),
(103, 43),
(103, 44),
(103, 45),
(103, 46),
(103, 47),
(103, 48),
(103, 49),
(103, 50),
(103, 51),
(103, 52),
(104, 43),
(104, 44),
(104, 45),
(104, 46),
(104, 47),
(104, 48),
(104, 49),
(104, 50),
(104, 51),
(104, 52),
(105, 53),
(105, 54),
(105, 55),
(105, 56),
(105, 57),
(105, 58),
(105, 59),
(105, 60),
(105, 61),
(106, 53),
(106, 54),
(106, 55),
(106, 56),
(106, 57),
(106, 58),
(106, 59),
(106, 60),
(106, 61),
(107, 53),
(107, 54),
(107, 55),
(107, 56),
(107, 57),
(107, 58),
(107, 59),
(107, 60),
(107, 61),
(108, 53),
(108, 54),
(108, 55),
(108, 56),
(108, 57),
(108, 58),
(108, 59),
(108, 60),
(108, 61),
(109, 53),
(109, 54),
(109, 55),
(109, 56),
(109, 57),
(109, 58),
(109, 59),
(109, 60),
(109, 61),
(110, 53),
(110, 54),
(110, 55),
(110, 56),
(110, 57),
(110, 58),
(110, 59),
(110, 60),
(110, 61),
(111, 53),
(111, 54),
(111, 55),
(111, 56),
(111, 57),
(111, 58),
(111, 59),
(111, 60),
(111, 61),
(112, 53),
(112, 54),
(112, 55),
(112, 56),
(112, 57),
(112, 58),
(112, 59),
(112, 60),
(112, 61),
(113, 53),
(113, 54),
(113, 55),
(113, 56),
(113, 57),
(113, 58),
(113, 59),
(113, 60),
(113, 61),
(114, 53),
(114, 54),
(114, 55),
(114, 56),
(114, 57),
(114, 58),
(114, 59),
(114, 60),
(114, 61);

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
(268, 0, 'config', 'config_seo_url', '1', 0),
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
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1161 ;

--
-- Dumping data for table `url_alias`
--

INSERT INTO `url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(1082, 'category_id=69', 'Video hoạt hình Tâm Lý - Lãng Mạn '),
(730, 'manufacturer_id=8', 'apple'),
(772, 'information_id=4', 'about_us'),
(1094, 'category_id=33', 'Show truyền hình, truyền hình thực tế'),
(1077, 'category_id=57', 'Hoạt hình'),
(1072, 'category_id=25', 'Game video'),
(1080, 'category_id=70', 'Video hoạt hình Khoa học - Viễn Tưởng'),
(1073, 'category_id=60', 'Video hài hước'),
(1083, 'category_id=17', 'Video thể thao'),
(1089, 'category_id=24', 'Video tin tức'),
(1099, 'category_id=66', 'Show Thực Tế'),
(1098, 'category_id=65', 'Show Hoa Ngữ'),
(1095, 'category_id=64', 'Show Âu - Mỹ'),
(1097, 'category_id=63', 'Show Hàn Quốc'),
(1071, 'category_id=61', 'Video cộng đồng'),
(1100, 'category_id=62', 'Show Việt Nam'),
(1079, 'category_id=68', 'Hành Động - Phiêu Lưu'),
(1096, 'category_id=67', 'Show Hài Hước'),
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
(1148, 'product_id=55', 'gfgfagafg'),
(1081, 'category_id=71', 'Video hoạt hình Kinh Dị - Siêu Nhiên'),
(1078, 'category_id=72', 'Video hoạt hình Hài Hước'),
(1085, 'category_id=73', 'Video Bóng Đá Việt Nam'),
(1088, 'category_id=74', 'Video thể thao Ngoại Hạng Anh'),
(1084, 'category_id=75', 'Video thể thao Bóng Đá Thế Giới'),
(1087, 'category_id=76', 'Video thể thao La Liga'),
(1086, 'category_id=77', 'Video Các Môn Thể Thao Khác'),
(1092, 'category_id=78', 'Video Tin Tức Thế Giới'),
(1091, 'category_id=79', 'Video tin tức Kinh Tế'),
(1093, 'category_id=80', 'Video Đời Sống Xã Hội'),
(1090, 'category_id=81', 'Video Báo Chí'),
(1076, 'category_id=82', 'Video Tiểu Phẩm Hài'),
(1075, 'category_id=83', 'Video Sân Khẩu - LiveShow Hài'),
(1074, 'category_id=84', 'Video Giải Trí - Vui Nhộn'),
(1142, 'product_id=56', 'Nữ sinh Nghệ An gây sốt khi tham gia Game Show'),
(1108, 'product_id=57', 'Cười là thua'),
(1109, 'product_id=58', 'Cười là thua - tập 5 '),
(1131, 'product_id=59', 'Liveshow CHUYỆN GIỠN NHƯ THIỆT'),
(1127, 'product_id=60', 'Làng ta có tài lanh'),
(1070, '', ''),
(1128, 'product_id=62', 'Làng ta có tài lanh Phần 3'),
(1129, 'product_id=63', 'Làng ta có tài lanh Phần 4'),
(1130, 'product_id=64', 'Làng ta có tài lanh Phần 5'),
(1112, 'product_id=65', 'Doremon 2015'),
(1143, 'product_id=66', 'Phim Đôrêmon - Tập 15'),
(1144, 'product_id=67', 'Phim Đôrêmon: Chuyến Xe Lửa Tốc Hành'),
(1115, 'product_id=68', 'Doremon: Ngày ra đời của Nobita'),
(1116, 'product_id=69', 'Doremon: Nobita và nữ vương đeo mặt nạ'),
(1113, 'product_id=70', 'Doremon: Cuộc khảo nghiệm tri thức đặc biệt '),
(1114, 'product_id=73', 'Doremon: Cuộc phiêu lưu của chú rái cá Nobita'),
(1111, 'product_id=74', 'Doraemon E072: Kẹo Urushima; Doraemon và Dorami'),
(1146, 'product_id=75', 'Super Mario 64: Chucking Snowballs '),
(1118, 'product_id=76', 'Dragon Ball XenoVerse'),
(1120, 'product_id=77', 'Dragonball Z Budokai 3'),
(1110, 'product_id=78', 'DBZ-Gohan Vs Cell'),
(1159, 'product_id=79', 'Ultimate Gohan vs Super Buu'),
(1147, 'product_id=80', 'Super Saiyan 4 Gohan'),
(1122, 'product_id=81', 'Episode 3 Absalon Trailer'),
(1119, 'product_id=82', 'DragonBall AF Characters'),
(1160, 'product_id=83', 'Vegito1089 Power lvls Frieza Saga'),
(1117, 'product_id=84', 'Dragón Ball'),
(1149, 'product_id=85', 'Thể thao 24h - 5 cầu thủ chạy nhanh nhất lịch sử bóng đá'),
(1133, 'product_id=86', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 2'),
(1134, 'product_id=87', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 3'),
(1135, 'product_id=88', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 4'),
(1136, 'product_id=89', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 5'),
(1137, 'product_id=90', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 6'),
(1138, 'product_id=91', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 7'),
(1139, 'product_id=92', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 8'),
(1140, 'product_id=93', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 9'),
(1132, 'product_id=94', 'Ngoại Hạng Anh hôm nay: Synthesis Premier League 2015 phần 10'),
(1121, 'product_id=95', 'Dưa hấu trung quốc chứa chất cực độc'),
(1124, 'product_id=96', 'Kinh hoàng Thịt lợn sắp phân hủy chế thành bò khô '),
(1145, 'product_id=97', 'Sự thật về việc mua đỉa của Trung Quốc tại Việt Nam '),
(1125, 'product_id=98', 'Làm giả bắp cải '),
(1104, 'product_id=99', 'Cận cảnh công nghiệp thực phẩm Trung Quốc '),
(1126, 'product_id=100', 'Làm nông nghiệp kiểu HOÀNG ANH GIA LAI '),
(1106, 'product_id=101', 'Cây đũa thần trong phát triển nông nghiệp Israel '),
(1107, 'product_id=102', 'Công nghệ nuôi Vịt hàng đầu thế giới '),
(1105, 'product_id=103', 'Cận cảnh thụ tinh nhân tạo '),
(1150, 'product_id=104', 'Thu hoạch ngô bằng Máy nông nghiệp bá đạo '),
(1141, 'product_id=105', 'Những tình huống siêu hài hước trong bóng đá '),
(1151, 'product_id=106', 'Tiểu phẩm hài - Chỉ vì tiếng gáy - Chiến Thắng, Văn Hiệp'),
(1152, 'product_id=107', 'Tiểu phẩm hài - Công nghệ bán cơm '),
(1158, 'product_id=108', 'Tổng Hợp Các Tiểu Phẩm Hài Hoài Linh '),
(1156, 'product_id=109', 'Tiểu phẩm hài - Vợ chồng son'),
(1157, 'product_id=110', 'Tiểu phẩm VỢ hay Ô SIN '),
(1154, 'product_id=111', 'Tiểu Phẩm Hài - Sống Nhờ Osin'),
(1155, 'product_id=112', 'Tiểu Phẩm Hài - Tham Thì Thâm'),
(1153, 'product_id=113', 'Tiểu Phẩm Hài - Khách Thuê Nhà'),
(1123, 'product_id=114', 'HÀI: Bản lĩnh đàn ông');

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
  `viewCount` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`videogroup_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `videogroup`
--

INSERT INTO `videogroup` (`videogroup_id`, `image`, `category_id`, `viewCount`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `category_name`, `url`) VALUES
(1, '', 35, 86283, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, '', 28, 97239, 0, 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 'catalog/2.PNG', 33, 9686, 0, 1, 0, 1, '2015-03-08 20:50:12', '2015-03-15 21:51:26', '0', 'videogroup/vua-dau-bep-2014-104.html'),
(5, 'catalog/2.PNG', 33, 5243, 0, 1, 0, 1, '2015-03-08 20:52:34', '2015-03-15 21:52:20', '0', 'videogroup/vua-dau-bep-2014-group1-105.html'),
(6, 'catalog/2.PNG', 33, 3542, 0, 1, 0, 1, '2015-03-08 20:53:10', '2015-03-15 21:51:39', '0', 'videogroup/vua-dau-bep-2014-group-2-106.html'),
(7, 'catalog/2.PNG', 33, 5231, 0, 1, 0, 1, '2015-03-08 20:55:02', '2015-03-15 21:51:44', '0', 'videogroup/vua-dau-bep-2014-group-3-107.html'),
(8, 'catalog/2.PNG', 33, 3513, 0, 1, 0, 1, '2015-03-08 20:55:42', '2015-03-15 21:51:51', '0', 'videogroup/vua-dau-bep-2014-group-5-108.html'),
(9, 'catalog/2.PNG', 33, 122276, 0, 1, 0, 1, '2015-03-08 20:56:15', '2015-03-15 21:51:56', '0', 'videogroup/vua-dau-bep-2014-group-6-109.html'),
(10, 'catalog/2.PNG', 33, 123426, 0, 1, 0, 1, '2015-03-08 20:57:11', '2015-03-15 21:52:03', '0', 'videogroup/vua-dau-bep-2014-group-7-110.html'),
(11, 'catalog/2.PNG', 33, 1234123, 0, 1, 0, 1, '2015-03-08 20:58:15', '2015-03-15 21:52:09', '0', 'videogroup/vua-dau-bep-2014-group-8-111.html'),
(12, 'catalog/2.PNG', 33, 123343, 0, 1, 0, 1, '2015-03-08 20:58:46', '2015-03-15 21:52:14', '0', 'videogroup/vua-dau-bep-2014-group-9-112.html'),
(13, 'catalog/2.PNG', 33, 13522, 0, 1, 0, 1, '2015-03-08 20:59:19', '2015-03-15 21:51:32', '0', 'videogroup/vua-dau-bep-2014-group-10-113.html'),
(14, 'catalog/images (23).jpg', 57, 52421, 0, 1, 0, 1, '2015-03-08 21:04:08', '2015-03-15 21:46:03', '0', 'videogroup/hoat-hinh-test-group-1-114.html'),
(15, 'catalog/images (23).jpg', 57, 1325, 0, 1, 0, 1, '2015-03-08 21:14:52', '2015-03-15 21:47:09', '0', 'videogroup/hoat-hinh-test-group-2-115.html'),
(16, 'catalog/images (23).jpg', 57, 523, 0, 1, 0, 1, '2015-03-08 21:15:55', '2015-03-15 21:47:15', '0', 'videogroup/hoat-hinh-test-group-3-116.html'),
(17, 'catalog/images (23).jpg', 57, 2314, 0, 1, 0, 1, '2015-03-08 21:16:29', '2015-03-15 21:47:23', '0', 'videogroup/hoat-hinh-test-group-4-117.html'),
(18, 'catalog/images (23).jpg', 57, 92366, 0, 1, 0, 1, '2015-03-08 21:17:31', '2015-03-15 21:47:30', '0', 'videogroup/hoat-hinh-test-group-5-118.html'),
(19, 'catalog/images (23).jpg', 57, 56729, 0, 1, 0, 1, '2015-03-08 21:18:04', '2015-03-15 21:47:38', '0', 'videogroup/hoat-hinh-test-group-6-119.html'),
(20, 'catalog/images (23).jpg', 57, 97913, 0, 1, 0, 1, '2015-03-08 21:18:39', '2015-03-15 21:47:44', '0', 'videogroup/hoat-hinh-test-group-7-120.html'),
(21, 'catalog/images (23).jpg', 57, 273542, 0, 1, 0, 1, '2015-03-08 21:19:08', '2015-03-15 21:47:50', '0', 'videogroup/hoat-hinh-test-group-8-121.html'),
(22, 'catalog/images (23).jpg', 57, 897896, 0, 1, 0, 1, '2015-03-08 21:19:40', '2015-03-15 21:47:56', '0', 'videogroup/hoat-hinh-test-group-9-122.html'),
(23, 'catalog/images (23).jpg', 57, 543521, 0, 1, 0, 1, '2015-03-08 21:20:10', '2015-03-15 21:47:02', '0', 'videogroup/hoat-hinh-test-group-10-123.html'),
(24, 'catalog/game-01.jpg', 25, 341434, 0, 1, 0, 1, '2015-03-08 21:24:58', '2015-03-15 21:43:10', '0', 'videogroup/game-test-goup-1-124.html'),
(25, 'catalog/game2.jpg', 25, 25, 0, 1, 0, 1, '2015-03-08 21:25:35', '2015-03-15 21:44:12', '0', 'videogroup/game-test-goup-2-125.html'),
(26, 'catalog/game3.jpg', 25, 111, 0, 1, 0, 1, '2015-03-08 21:26:17', '2015-03-15 21:44:18', '0', 'videogroup/game-test-goup-3-126.html'),
(27, 'catalog/game4.jpg', 25, 12, 0, 1, 0, 1, '2015-03-08 21:26:54', '2015-03-15 21:44:23', '0', 'videogroup/game-test-goup-4-127.html'),
(28, 'catalog/game-01.jpg', 25, 123, 0, 1, 0, 1, '2015-03-08 21:27:21', '2015-03-15 21:44:31', '0', 'videogroup/game-test-goup-5-128.html'),
(29, 'catalog/game2.jpg', 25, 100, 0, 1, 0, 1, '2015-03-08 21:27:48', '2015-03-15 21:44:38', '0', 'videogroup/game-test-goup-6-129.html'),
(30, 'catalog/game4.jpg', 25, 261, 0, 1, 0, 1, '2015-03-08 21:28:25', '2015-03-15 21:44:43', '0', 'videogroup/game-test-goup-7-130.html'),
(31, 'catalog/game4.jpg', 25, 12, 0, 1, 0, 1, '2015-03-08 21:29:04', '2015-03-15 21:44:49', '0', 'videogroup/game-test-goup-8-131.html'),
(32, 'catalog/game-01.jpg', 25, 1234, 0, 1, 0, 1, '2015-03-08 21:29:31', '2015-03-15 21:44:55', '0', 'videogroup/game-test-goup-9-132.html'),
(33, 'catalog/game3.jpg', 25, 2345, 0, 1, 0, 1, '2015-03-08 21:30:02', '2015-03-15 21:44:07', '0', 'videogroup/game-test-goup-10-133.html'),
(34, 'catalog/sport1.jpg', 17, 1279887, 0, 1, 0, 1, '2015-03-08 21:33:04', '2015-03-15 21:48:03', '0', 'videogroup/the-thao-test-group-1-134.html'),
(35, 'catalog/sport2.jpg', 17, 1234976, 0, 1, 0, 1, '2015-03-08 21:35:52', '2015-03-15 21:48:12', '0', 'videogroup/the-thao-test-group-2-135.html'),
(36, 'catalog/sport3.jpg', 17, 1234911, 0, 1, 0, 1, '2015-03-08 21:36:31', '2015-03-15 21:48:18', '0', 'videogroup/the-thao-test-group-3-136.html'),
(37, 'catalog/sport4.jpg', 17, 1234912, 0, 1, 0, 1, '2015-03-08 21:37:25', '2015-03-15 21:48:23', '0', 'videogroup/the-thao-test-group-4-137.html'),
(38, 'catalog/sport5.jpg', 17, 1212976, 0, 1, 0, 1, '2015-03-08 21:38:27', '2015-03-15 21:48:29', '0', 'videogroup/the-thao-test-group-5-138.html'),
(39, 'catalog/sport6.jpg', 17, 1231176, 0, 1, 0, 1, '2015-03-08 21:39:07', '2015-03-15 21:48:35', '0', 'videogroup/the-thao-test-group-6-139.html'),
(40, 'catalog/sport7.jpg', 17, 1212976, 0, 1, 0, 1, '2015-03-08 21:39:46', '2015-03-15 21:48:41', '0', 'videogroup/the-thao-test-group-7-140.html'),
(41, 'catalog/sport8.jpg', 17, 1234900, 0, 1, 0, 1, '2015-03-08 21:40:25', '2015-03-15 21:48:48', '0', 'videogroup/the-thao-test-group-8-141.html'),
(42, 'catalog/sport9.jpg', 17, 1230076, 0, 1, 0, 1, '2015-03-08 21:41:02', '2015-03-15 21:48:54', '0', 'videogroup/the-thao-test-group-9-142.html'),
(43, 'catalog/news1.jpg', 24, 1234978, 0, 1, 0, 1, '2015-03-08 21:46:25', '2015-03-15 21:48:59', '0', 'videogroup/tin-tuc-test-group-1-143.html'),
(44, 'catalog/news2.jpg', 24, 1234666, 0, 1, 0, 1, '2015-03-08 21:47:07', '2015-03-15 21:49:54', '0', 'videogroup/tin-tuc-test-group-2-144.html'),
(45, 'catalog/news3.jpg', 24, 1234945, 0, 1, 0, 1, '2015-03-08 21:47:44', '2015-03-15 21:50:37', '0', 'videogroup/tin-tuc-test-group-3-145.html'),
(46, 'catalog/news4.jpg', 24, 1034976, 0, 1, 0, 1, '2015-03-08 21:48:37', '2015-03-15 21:50:46', '0', 'videogroup/tin-tuc-test-group-4-146.html'),
(47, 'catalog/news5.JPG', 24, 1014976, 0, 1, 0, 1, '2015-03-08 21:49:58', '2015-03-15 21:50:53', '0', 'videogroup/tin-tuc-test-group-5-147.html'),
(48, 'catalog/news6.jpg', 24, 1230976, 0, 1, 0, 1, '2015-03-08 21:50:39', '2015-03-15 21:50:59', '0', 'videogroup/tin-tuc-test-group-6-148.html'),
(49, 'catalog/news7.jpg', 24, 1233076, 0, 1, 0, 1, '2015-03-08 21:51:21', '2015-03-15 21:51:06', '0', 'videogroup/tin-tuc-test-group-7-149.html'),
(50, 'catalog/news8.jpg', 24, 2034976, 0, 1, 0, 1, '2015-03-08 21:52:10', '2015-03-15 21:51:13', '0', 'videogroup/tin-tuc-test-group-8-150.html'),
(51, 'catalog/news9.jpg', 24, 1034976, 0, 1, 0, 1, '2015-03-08 21:52:51', '2015-03-15 21:51:20', '0', 'videogroup/tin-tuc-test-group-9-151.html'),
(52, 'catalog/news10.jpg', 24, 1211976, 0, 1, 0, 1, '2015-03-08 21:53:33', '2015-03-15 21:49:05', '0', 'videogroup/tin-tuc-test-group-10-152.html'),
(53, 'catalog/funny1.jpg', 60, 12311, 0, 1, 0, 1, '2015-03-08 22:07:07', '2015-03-15 21:45:05', '0', 'videogroup/hai-huoc-test-group-1-153.html'),
(54, 'catalog/funny2.jpg', 60, 153976, 0, 1, 0, 1, '2015-03-08 22:07:49', '2015-03-15 21:45:12', '0', 'videogroup/hai-huoc-test-group-2-154.html'),
(55, 'catalog/funny3.jpg', 60, 123480, 0, 1, 0, 1, '2015-03-08 22:08:37', '2015-03-15 21:45:18', '0', 'videogroup/hai-huoc-test-group-3-155.html'),
(56, 'catalog/funny4.jpg', 60, 123476, 0, 1, 0, 1, '2015-03-08 22:09:14', '2015-03-15 21:45:24', '0', 'videogroup/hai-huoc-test-group-4-156.html'),
(57, 'catalog/funny5.jpg', 60, 123076, 0, 1, 0, 1, '2015-03-08 22:09:56', '2015-03-15 21:45:31', '0', 'videogroup/hai-huoc-test-group-5-157.html'),
(58, 'catalog/funny6.jpg', 60, 123496, 0, 1, 0, 1, '2015-03-08 22:10:31', '2015-03-15 21:45:37', '0', 'videogroup/hai-huoc-test-group-6-158.html'),
(59, 'catalog/funny7.jpg', 60, 1234923, 0, 1, 0, 1, '2015-03-08 22:11:20', '2015-03-15 21:45:42', '0', 'videogroup/hai-huoc-test-group-7-159.html'),
(60, 'catalog/funny8.jpg', 60, 123456, 0, 1, 0, 1, '2015-03-08 22:11:55', '2015-03-15 21:45:49', '0', 'videogroup/hai-huoc-test-group-8-160.html'),
(61, 'catalog/funny9.jpg', 60, 1234986, 0, 1, 0, 1, '2015-03-08 22:12:25', '2015-03-15 21:45:56', '0', 'videogroup/hai-huoc-test-group-9-161.html');

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
