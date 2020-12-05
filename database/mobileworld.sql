-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 25, 2019 at 04:10 PM
-- Server version: 5.7.24
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobileworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(2, 1, '::1', 3, 1),
(3, 2, '::1', 3, 1),
(5, 4, '::1', 3, 1),
(6, 1, '::1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(100) NOT NULL AUTO_INCREMENT,
  `cat_title` text NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Apple'),
(2, 'Samsung'),
(3, 'Huawei'),
(4, 'Nokia'),
(5, 'Oppo'),
(6, 'Vivo'),
(7, 'Xiaomi');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(100) NOT NULL AUTO_INCREMENT,
  `product_cat` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 'iPhone X Red', 135000, 'iPhone X Red', 'apple x red.jpg', 'Iphone mobile Phones'),
(2, 1, 'iPhone 6', 75000, 'iphone 6- \r\nGold \r\n32GB\r\n', 'Apple-iPhone-6.png', 'mobile iphone apple'),
(3, 2, 'Samsung Galaxy J2', 30000, 'Samsung brand', 'Samsung-Galaxy-J2.jpg', 'apple ipad tablet'),
(4, 1, 'iPhone 7', 65000, 'Apple iPhone \r\n64GB\r\nCompany Warrenty', 'apple-iphone-7.jpg', 'iphone apple 7 mobile'),
(5, 1, 'iPhone 8', 10000, 'Apple iPhone \r\n64GB', 'apple-iphone-8.jpg', 'Apple'),
(6, 1, 'iPhone X', 35000, 'iPhone X', 'apple-iphone-x.jpg', 'Apple'),
(7, 1, 'iPhone XR', 50000, '128GB', 'apple-iphone-xr.jpg', 'Iphone'),
(10, 2, 'M10', 135000, 'Samsung M10', 'detail m10.jpg', 'Samsung mobile Phones'),
(11, 2, 'Samsung Galaxy A5', 85000, 'Samsung 32GB', 'Samsung-Galaxy-A5.jpg', 'mobile Samsung'),
(12, 2, 'Samsung Galaxy A6', 30000, 'Samsung brand', 'Samsung-Galaxy-A6.jpg', ''),
(13, 2, 'Samsung Galaxy A7', 95000, '64GB\r\nCompany Warrenty', 'Samsung-Galaxy-A7.jpg', ''),
(14, 2, 'Samsung Galaxy A8', 80000, '64GB', 'Samsung-Galaxy-A8.jpg', 'Samsung'),
(15, 2, 'Samsung Galaxy A9', 64900, 'Samsung Galaxy', 'Samsung-Galaxy-A9.jpg', 'Samsung'),
(16, 2, 'Samsung Galaxy A20', 50000, '128GB', 'Samsung-Galaxy-A20.jpg', 'Samsung'),
(17, 2, 'Samsung Galaxy A30', 40000, 'Samsung Galaxy', 'Samsung-Galaxy-A30.jpg', 'Samsung mobile'),
(18, 2, 'Samsung Galaxy A50', 25000, 'Samsung Galaxy', 'Samsung-Galaxy-A50.jpg', 'Samsung Galaxy'),
(19, 3, 'Huawei Nova 3', 80000, 'Huawei Nova 3', 'Huawei-Nova-3.jpg', 'Huawei Nova 3'),
(20, 3, 'Huawei Nova 3i', 65000, 'Huawei-Nova-3i', 'Huawei-Nova-3i.jpg', 'Huawei-Nova-3i'),
(21, 3, 'Huawei nova 4', 30000, 'Huawei-nova-4', 'Huawei-nova-4.jpg', 'Huawei-nova-4'),
(22, 3, 'Huawei P20 Pro', 95000, 'Huawei-P20-Pro', 'Huawei-P20-Pro.jpg', 'Huawei-P20-Pro'),
(23, 3, 'Huawei P30 Lite', 80000, 'Huawei-P30-Lite', 'Huawei-P30-Lite.jpg', 'Huawei-P30-Lite'),
(24, 3, 'Huawei-P30-Pro', 64900, 'Huawei-P30-Pro', 'Huawei-P30-Pro.jpg', 'Huawei-P30-Pro'),
(25, 3, 'Huawei Y Max', 50000, '128GB', 'Huawei-Y-Max.jpg', 'Huawei-Y-Max'),
(26, 4, 'Nokia 1', 80000, 'Nokia-1', 'Nokia-1.jpg', 'Nokia-1'),
(27, 4, 'Nokia 2 ', 30000, 'Nokia-2-1', 'Nokia-2-1.jpg', 'Nokia-2-1'),
(28, 4, 'Nokia 3', 95000, 'Nokia-3', 'Nokia-3.jpg', 'Nokia-3'),
(29, 4, 'Nokia 3 Plus', 95000, 'Nokia-3-1-Plus', 'Nokia-3-1-Plus.jpg', 'Nokia-3-1-Plus'),
(30, 4, 'Nokia 5', 64900, 'Nokia-5', 'Nokia-5.jpg', 'Nokia-5'),
(31, 4, 'Nokia 6', 50000, 'Nokia-6', 'Nokia-6.jpg', 'Nokia-6'),
(32, 5, 'Oppo f9', 80000, 'f9', 'f9.png', 'f9'),
(33, 5, 'oppo r17', 30000, 'oppo r17', 'oppo r17.jpg', 'oppo r17'),
(34, 5, 'Oppo A3s', 95000, 'Oppo-A3s', 'Oppo-A3s.jpg', 'Oppo-A3s'),
(35, 5, 'Oppo F7 Black', 95000, 'Oppo-F7-Black', 'Oppo-F7-Black.jpg', 'Oppo-F7-Black'),
(36, 5, 'Oppo F9', 50000, 'Oppo-F9', 'Oppo-F9.jpg', 'Oppo-F9'),
(37, 5, 'OPPO K3 2', 50000, 'OPPO-K3-2', 'OPPO-K3-2.jpg', 'OPPO-K3-2'),
(38, 6, 'vivo v7', 60000, 'vivo v7', 'vivo-v7.jpg', 'vivo-v7'),
(39, 6, 'Vivo V9 Black', 45000, 'Vivo-V9-Black', 'Vivo-V9-Black.jpg', 'Vivo-V9-Black'),
(40, 6, 'Vivo V11 Pro', 95000, 'Vivo-V11-Pro', 'Vivo-V11-Pro.jpg', 'Vivo-V11-Pro'),
(41, 6, 'Vivo V15', 95000, 'Vivo-V15', 'Vivo-V15.jpg', 'Vivo-V15'),
(42, 6, 'Vivo V15 Pro', 50000, 'Vivo-V15-Pro', 'Vivo-V15-Pro.jpg', 'Vivo-V15-Pro'),
(43, 6, 'Vivo Y17', 85000, 'Vivo-Y17', 'Vivo-Y17.jpg', 'Vivo-Y17'),
(44, 7, 'Xiaomi Mi', 60000, 'Xiaomi-Mi', 'Xiaomi-Mi.jpg', 'Xiaomi-Mi'),
(45, 7, 'Xiaomi Mi 9', 45000, 'Xiaomi-Mi-9', 'Xiaomi-Mi-9.jpg', 'Xiaomi-Mi-9'),
(46, 7, 'Xiaomi Mi A2', 95000, 'Xiaomi-Mi-A2', 'Xiaomi-Mi-A2.jpg', 'Xiaomi-Mi-A2'),
(47, 7, 'Xiaomi Mi A2 Lite', 95000, 'Xiaomi-Mi-A2-Lite', 'Xiaomi-Mi-A2-Lite.jpg', 'Xiaomi-Mi-A2-Lite'),
(48, 7, 'Xiaomi Mi Max 3', 50000, 'Xiaomi-Mi-Max-3', 'Xiaomi-Mi-Max-3.jpg', 'Xiaomi-Mi-Max-3'),
(49, 7, 'Xiaomi Redmi Note 7 Black', 85000, 'Xiaomi-Redmi-Note-7-Black', 'Xiaomi-Redmi-Note-7-Black.jpg', 'Xiaomi-Redmi-Note-7-Black');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
CREATE TABLE IF NOT EXISTS `user_info` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(3, 'yathushan', 'shan', 'rajendranyathushan3@gmail.com', '23daa3a4bce3467565119a4e5126eb1a', '0774579991', 'jaffna', 'jaffna');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
