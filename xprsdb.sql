-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2022 at 05:08 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplysu_xprs`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `adid` int(5) NOT NULL,
  `adtype` tinyint(1) NOT NULL DEFAULT '0',
  `adtitle` varchar(150) NOT NULL DEFAULT '',
  `image` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `adstatus` tinyint(1) NOT NULL DEFAULT '0',
  `addate` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `app_promotions`
--

CREATE TABLE `app_promotions` (
  `id` int(255) NOT NULL,
  `pname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pimg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pprice` int(255) NOT NULL,
  `required_order` int(255) NOT NULL,
  `order_price` int(255) NOT NULL,
  `status` int(1) NOT NULL,
  `pid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_promotions`
--

INSERT INTO `app_promotions` (`id`, `pname`, `pimg`, `pprice`, `required_order`, `order_price`, `status`, `pid`) VALUES
(1, 'Mayo Chicken Burger', 'new123.jpg', 0, 0, 300, 0, 1006);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `bid` int(5) NOT NULL,
  `btype` tinyint(1) DEFAULT NULL,
  `bslider` tinyint(1) NOT NULL DEFAULT '0',
  `banner` varchar(150) NOT NULL DEFAULT '',
  `mbanner` varchar(150) NOT NULL,
  `url` varchar(255) NOT NULL DEFAULT '',
  `bdate` int(15) NOT NULL DEFAULT '0',
  `bstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`bid`, `btype`, `bslider`, `banner`, `mbanner`, `url`, `bdate`, `bstatus`) VALUES
(1, 2, 0, '304847.jpg', '304847.jpg', '#', 0, 1),
(4, 1, 0, 'banner1.jpeg', 'banner1.jpeg', '#', 0, 1),
(5, 2, 0, '444898.jpeg', '444898.jpeg', '#', 1642396801, 1),
(8, 1, 0, '5256.jpg', '5256.jpg', 'Banner', 1647928886, 0),
(17, 1, 1, '589645.jpg', '589645.jpg', '#', 1650898078, 0),
(24, 1, 0, '435682.jpg', '435682.jpg', '#', 1658302203, 0),
(25, 1, 0, '755352.jpg', '755352.jpg', '#', 1658302399, 0),
(26, 1, 0, '589334.jpg', '589334.jpg', '#', 1658302438, 0),
(34, 3, 1, '865549.jpg', '865549.jpg', '#', 1659441469, 0),
(35, 3, 1, '653225.jpg', '653225.jpg', '#', 1659441494, 0),
(36, 1, 1, '141957.jpg', '141957.jpg', '#', 1660853296, 0),
(38, 1, 1, '921483.jpeg', '921483.jpeg', '#', 1662034240, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bulk_notification`
--

CREATE TABLE `bulk_notification` (
  `id` int(6) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `message` longtext NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulk_notification`
--

INSERT INTO `bulk_notification` (`id`, `title`, `message`, `date`) VALUES
(2, 'This is Test Title Updated', 'This is test message Updated..', '2022-03-09 00:00:00'),
(3, 'Hello', 'This is test Notification', '2022-03-11 01:51:53'),
(4, 'XPRS Sehri Deal', 'Simply Sufi XPRS brings a scrumptious Sehri deal. Get 2 Chicken Paratha Rolls with 2 Lassi in just Rs. 600/-', '2022-04-03 10:09:16'),
(5, 'XPRS Sehri Deal', 'Get 2 Chicken Paratha Rolls with 2 Lassi in just Rs. 600/-', '2022-04-03 10:40:51'),
(6, 'XPRS Ramadan Deal 1:', ' Get 2 Crispy Chicken Burgers, 2 Punjabi Samosa, 2 Drink Cans in just Rs.650/- ', '2022-04-08 07:09:16'),
(7, 'XPRS Sehri Deal', 'Get 2 Chicken Paratha Rolls with 2 Lassi in just Rs. 600/-  Order Now!', '2022-04-10 13:48:51'),
(8, 'XPRS Sehri Deal', 'Get 2 Chicken Paratha Rolls with 2 Lassi in just Rs. 600/-  Order Now!', '2022-04-12 15:31:39'),
(9, 'Order and Win', 'Get a chance to Win Sehri and Iftar deals every week with Simply Sufi Xprs mobile app. Start Ordering Now.  *Terms and Conditions Apply ', '2022-04-13 07:31:47'),
(10, 'Kids Play Area', 'Enjoyment galore coming soon at Simply Sufi XPRS Model Town Branch. Our newest play area is set to have exciting activities for kids. Stay tuned for updates.', '2022-04-16 05:39:37'),
(11, 'XPRS Ramadan Deal 2:', ' Get 2 Chicken Paratha Rolls, 2 Punjabi Samosa, 2 Drink Cans in just Rs.600/- ', '2022-04-23 08:19:28'),
(12, 'kids Play Area Now Open', 'Enjoy playtime at SIMPLY SUFI XPRS, Model Town, Lahore. Bring your kids to savour exclusive Ramadan deals, family area, and the new fun-filled play area with entertaining kids-specific activities. Visit now at Model Town C-Block, Bank Square Market, Lahor', '2022-04-25 08:05:33'),
(13, 'XPRS Anda Shami Burger', 'Who can say no to the traditional Anda Shami Burger? Enjoy the decadence with a modern touch at Simply Sufi XPRS. Our very own XPRS Anda Shami Burger deal is available now.', '2022-05-01 08:50:04'),
(14, 'XPRS Family Feast Deals', 'All your favorites now available as amazing \"Xprs Family Feast Deals\", starting from Rs.1700/-  Order Now!', '2022-05-02 08:58:53'),
(15, 'XPRS Family Feast Deals', 'All your favorites now available as amazing \"Xprs Family Feast Deals\", starting from Rs.1700/-  Order Now!', '2022-05-04 07:41:29'),
(16, 'Xprs Kids Play Area', 'Food and Fun Together at Simply Sufi XPRS Model Town C Block Lahore', '2022-06-12 02:50:21'),
(18, 'XPRS BBQ', 'Get 1 Chicken Tikka Leg with Mix Fresh Salad and Mint Raita in just Rs.370/- Order Now!', '2022-06-24 03:40:55'),
(19, 'Midnight Deal 2', 'Get 1 Mayo Chicken Burger with 6pcs Classic Chicken Nuggets and 1 drink can in just Rs.400/-', '2022-06-28 03:38:44'),
(20, 'XPRS Tea Time Deal', 'Get 2 Punjabi Samosa with 1 Tea in just Rs.250/-', '2022-07-15 01:18:37'),
(21, 'Xprs Azadi Deals', 'Celebrate the spirit of freedom with Simply Sufi XPRS Azadi Deals.  DEAL 1: 2 Crispy Chicken Paratha Rolls, 2 Sufi Drink Cans.  DEAL 2: 2 Chicken Chapli Burgers, 6 Pcs Classic Chicken Nuggets, 2 Sufi Drink Cans. Order Now!', '2022-08-05 04:05:16'),
(22, 'Crispy Chicken Paratha Roll', 'Get 1 crispy chicken paratha roll with drink can in just Rs.400/-  Order Now!', '2022-08-24 02:02:07'),
(23, 'Cricket Fever 2022', 'Now get 10% discount on our B.B.Q platters.', '2022-08-27 04:55:35'),
(24, 'Xprs Breakfast', 'Fuel your morning with Xprs Breakfast starting from Rs.310/-', '2022-08-29 00:23:11'),
(25, 'XPRS Share Deal 1', 'Get 2 Xprs Crispy Chicken Burgers, 2 Sufi Drink Cans and 1 Regular Fries in just Rs.850/- Order Now!', '2022-09-02 04:36:53'),
(26, 'XPRS Share Deal 2', 'Get 4 XPRS Crispy Chicken Burgers, 4 Sufi Drink Cans and 2 Regular Fries for Rs.1700/-  Order Now!', '2022-09-05 02:01:00');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartid` int(8) NOT NULL,
  `oid` int(6) DEFAULT '0',
  `cid` int(6) DEFAULT '0',
  `sessionid` varchar(50) DEFAULT '',
  `brandid` int(5) DEFAULT '0',
  `pid` int(8) DEFAULT '0',
  `opt` varchar(150) DEFAULT '',
  `psize` varchar(30) NOT NULL DEFAULT '',
  `qty` int(5) DEFAULT '0',
  `unitprice` varchar(10) DEFAULT '',
  `totalprice` int(11) DEFAULT '0',
  `shipcharges` varchar(35) DEFAULT '',
  `rewardpoints` varchar(15) DEFAULT '',
  `rtstatus` tinyint(1) DEFAULT '0',
  `cartdate` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--


-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cid` int(5) NOT NULL,
  `cserialno` int(3) NOT NULL DEFAULT '0',
  `category` varchar(150) NOT NULL DEFAULT '',
  `cimage` varchar(250) NOT NULL DEFAULT '',
  `cpagetitle` varchar(250) NOT NULL DEFAULT '',
  `cpagename` varchar(250) NOT NULL DEFAULT '',
  `ctags` longtext NOT NULL,
  `ckeywords` longtext NOT NULL,
  `cdate` int(15) NOT NULL DEFAULT '0',
  `cstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cid`, `cserialno`, `category`, `cimage`, `cpagetitle`, `cpagename`, `ctags`, `ckeywords`, `cdate`, `cstatus`) VALUES
(1, 0, 'XPRS Deals', 'breakfast.png', 'XPRS Deals', 'xprs-deals', 'XPRS Deals', 'XPRS Deals', 1624620657, 0),
(2, 0, 'XPRS Platters', 'platters.jpg', 'XPRS Platters', 'xprs-b-b-q-range', 'XPRS Platters', 'XPRS Platters', 1624621204, 0),
(3, 0, 'XPRS Chicken Burgers', 'chicken-burgers.jpg', 'XPRS Chicken Burgers', 'xprs-chicken-burgers', 'XPRS Chicken Burgers', 'XPRS Chicken Burgers', 1624692772, 0),
(4, 0, 'XPRS Wraps', 'wrap-meals.png', 'XPRS Wraps', 'xprs-wraps', 'XPRS Wraps', 'XPRS Wraps', 1624692782, 0),
(5, 0, 'XPRS Classics', 'classic.png', 'XPRS Classics', '', '', '', 0, 0),
(6, 0, 'XPRS Kids Meal', 'kids-meal.png', 'XPRS Kids Meal', '', '', '', 0, 0),
(7, 0, 'XPRS Loaded Fries', 'loaded-fries.jpg', 'XPRS Loaded Fries', '', '', '', 0, 0),
(8, 0, 'XPRS Fries', 'fries.png', 'XPRS Fries', '', '', '', 0, 0),
(9, 0, 'XPRS Curly Fries', 'curly-fries.jpg', 'XPRS Curly Fries', 'xprs-curly-fries', 'XPRS Curly Fries', 'XPRS Curly Fries', 0, 0),
(10, 0, 'XPRS Breakfast', 'breakfast.png', 'XPRS Breakfast', 'XPRS Breakfast', '', '', 0, 0),
(12, 0, 'XPRS Shakes', 'shakes.png', 'XPRS Shakes', 'XPRS Shakes', '', '', 0, 0),
(13, 0, 'XPRS Slush', 'slush.png', 'XPRS Slush', 'XPRS Slush', '', '', 0, 0),
(14, 0, 'XPRS Ice Creams', 'ice-cream.png', 'XPRS Ice Creams', 'XPRS Ice Creams', '', '', 0, 0),
(15, 0, 'XPRS Cold Beverages', 'cold-bevarages.png', 'XPRS Cold Beverages', 'XPRS Cold Beverages', '', '', 0, 0),
(16, 0, 'XPRS Hot Beverages', 'hot-bevarages.png', 'XPRS Hot Beverages', 'XPRS Hot Beverages', '', '', 0, 0),
(18, 0, 'XPRS Chicken PCS', 'chicken-pcs.png', '', '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `cityid` int(5) NOT NULL,
  `city_code` varchar(35) NOT NULL DEFAULT '',
  `city_name` varchar(150) NOT NULL DEFAULT '',
  `delivery_time` varchar(150) NOT NULL DEFAULT '',
  `order_price` int(255) NOT NULL,
  `city_status` tinyint(1) NOT NULL DEFAULT '0',
  `city_date` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`cityid`, `city_code`, `city_name`, `delivery_time`, `order_price`, `city_status`, `city_date`) VALUES
(2, 'LHR', 'Lahore', '10:00 AM to 01:00 AM', 400, 0, 1624691957),
(3, 'ISB', 'Islamabad', '10:00 AM to 11:30 PM', 400, 0, 1624691974);

-- --------------------------------------------------------

--
-- Table structure for table `courier`
--

CREATE TABLE `courier` (
  `couid` int(4) NOT NULL,
  `coutitle` varchar(75) DEFAULT '',
  `couphone` varchar(75) DEFAULT '',
  `couaddress` varchar(150) DEFAULT '0',
  `coudate` int(15) DEFAULT '0',
  `coustatus` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `custid` int(6) NOT NULL,
  `email` varchar(75) DEFAULT '',
  `password` varchar(75) DEFAULT '',
  `gender` varchar(5) DEFAULT '',
  `wallet_points` int(11) NOT NULL DEFAULT '150',
  `firstname` varchar(75) DEFAULT '',
  `lastname` varchar(75) DEFAULT '',
  `dday` int(2) DEFAULT '0',
  `dmonth` int(2) DEFAULT '0',
  `dyear` int(4) DEFAULT '0',
  `companyname` varchar(75) DEFAULT '',
  `phoneno` varchar(35) DEFAULT '',
  `mobileno` varchar(50) DEFAULT '',
  `address1` varchar(255) DEFAULT '',
  `address2` varchar(255) DEFAULT '',
  `city` varchar(75) DEFAULT '',
  `state` varchar(35) DEFAULT '',
  `country` varchar(75) DEFAULT '',
  `zipcode` varchar(35) DEFAULT '',
  `cdeals` tinyint(1) DEFAULT '0',
  `saddress1` varchar(255) DEFAULT '',
  `saddress2` varchar(255) DEFAULT '',
  `scity` varchar(75) DEFAULT '',
  `sstate` varchar(75) DEFAULT '',
  `scountry` varchar(75) DEFAULT '',
  `szipcode` varchar(35) DEFAULT '',
  `cnewsletter` tinyint(1) DEFAULT '0',
  `custdate` int(15) DEFAULT '0',
  `warn` tinyint(1) DEFAULT '0',
  `seckey` varchar(75) DEFAULT '',
  `custstatus` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`custid`, `email`, `password`, `gender`, `wallet_points`, `firstname`, `lastname`, `dday`, `dmonth`, `dyear`, `companyname`, `phoneno`, `mobileno`, `address1`, `address2`, `city`, `state`, `country`, `zipcode`, `cdeals`, `saddress1`, `saddress2`, `scity`, `sstate`, `scountry`, `szipcode`, `cnewsletter`, `custdate`, `warn`, `seckey`, `custstatus`) VALUES
(7, 'customer@gmail.com', 'customer', 'Male', 0, 'test', 'customer', 4, 4, 1984, 'MHR', '1234567', '+441234567', 'address 2', '', 'city', '', 'United Kingdom', 'zip', 0, '', '', '', '', '', '', 0, 1625134292, 0, '', 0),
(9, 'zeshan7938@gmail.com', '', '', 0, 'sdnsdjsd', '', 0, 0, 0, '', '', NULL, '3y2u3y23uy', '', 'Array', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(25, 'mawais150@yahoo.com', '$2y$10$CNCNh80Pwxd86N.Y32AVs.xELVagMo1qUzmTdTQSwn9mqkd7wiatG', '', 0, 'Awais', '', 0, 0, 0, '', '', '03225750284', 'H 404 Model Town', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(27, 'awais@yahoo.com', '', '', 0, 'awaos', '', 0, 0, 0, '', '', '03008183889', '9304ngdsgddjkshdjfff', '', 'Array', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(28, 'awai33s@yahoo.com', '', '', 0, 'awaos', '', 0, 0, 0, '', '', '03008183889', '9304ngdsgddjkshdjfff', '', 'Islamabad', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(29, 'awai3300s@yahoo.com', '', '', 0, 'awaos', '', 0, 0, 0, '', '', '03008183889', '9304ngdsgddjkshdjfff', '', 'Islamabad', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(30, 'shan112244@gmail.com', '', '', 0, 'Muhammad Zeeshan', '', 0, 0, 0, '', '', '03083324567', 'Pakd adjsd dj h', '', 'Islamabad', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(31, 'admin1@yahoo.com', '', '', 0, 'admin', '', 0, 0, 0, '', '', '02002121123', 'jdshddj hdjashd hasjdh ', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(32, 'zeshanyaqoob@gmail.com', '', '', 0, 'zee', '', 0, 0, 0, '', '', '03074170669', 'hwuwjwjw', '', 'Islamabad', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(33, 'shan1122@gmail.com', '', '', 0, 'zeshan', '', 0, 0, 0, '', '', '03074170669', 'Lahore', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(34, 'sehar@gmail.com', '', '', 0, 'sahar', '', 0, 0, 0, '', '', '020022222222', '3434344', '', NULL, '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(35, 'odh22275@boofx.com', '', '', 0, 'Koi bhi', '', 0, 0, 0, '', '', '+92090078601', 'DHA', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(38, 'abc@gmail.com', '', '', 0, 'Abc User', '', 0, 0, 0, '', '', '030012345678', 'Address line 1', '', 'lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(39, 'abcd@gmail.com', '', '', 0, 'Abc User', '', 0, 0, 0, '', '', '030012345678', 'Address line 1', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(40, 'abc1@gmail.com', '', '', 0, 'Abc User', '', 0, 0, 0, '', '', '030012345678', 'Address line 1', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(41, 'abc123@gmail.com', '', '', 0, 'Abc User', '', 0, 0, 0, '', '', '030012345678', 'Address', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(42, 'xyz@gmail.com', '', '', 0, 'Xyz User', '', 0, 0, 0, '', '', '030012345678', 'Address of Xyz', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(43, 'abcd123@gmail.com', '', '', 0, 'User Abc', '', 0, 0, 0, '', '', '030012345678', 'address of this user', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(45, 'awais@gmail.com', '$2y$10$GBpgzyjvo1su7uiyif8IQ.HpCCePn2/ELjFBwwSiSePcDvUViIbWm', '', 150, 'Awais', '', 0, 0, 0, '', '', '123456789', 'Lhr Pk', '', 'Lhr', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(46, 'abcd1234@gmail.com', '$2y$10$J2732IUCufWuSp7ru7m0SuCUc9lQbqEScJZBERCITJ1XyGgMAPUki', '', 0, 'Zubair Yasin', '', 0, 0, 0, '', '', '030012345678', 'Address of the user will display here.', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(47, 'xyz123@gmail.com', '$2y$10$PSY8Nz5xBa5O/yxnjwcpgeosmgNl4II5aiJr86cLWYc1y3i.Cgc16', '', 0, 'Test User', '', 0, 0, 0, '', '', '030012345678', 'This is the address.', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(48, 'test123@gmail.com', '$2y$10$j6WE0hQFdXL2bnPaz59O4.ELm5niEXHyA9gkIT8yfixz7gau.MJ3W', '', 0, 'John Duo', '', 0, 0, 0, '', '', '030012345678', 'Dummy addresss of the user', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(49, 'aabb@gmail.com', '$2y$10$YaRT.5sJaL7.Y8xBVUt9Xuj4vsxTbWUrRFtbJQxZUlb5n3UCFXh5y', '', 6800, 'Test User', '', 0, 0, 0, '', '', '030012345678', 'Address of the user', '', 'Lahore', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
(50, 'zubair.yasin@broadvisions.net', '$2y$10$g0I.tlRuljq6LKhZzul5XOFg6RWg9A1b0p37wp2qtMFpDunJtIH/q', '', 0, 'Zubair Yasin', '', 0, 0, 0, '', '', '03217072271', 'Hally tower lahore', '', 'Islamabad', '', '', '', 0, '', '', '', '', '', '', 0, 0, 0, '', 0),
--------------------------------------------------------

--
-- Table structure for table `dday`
--

CREATE TABLE `dday` (
  `dday` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dday`
--

INSERT INTO `dday` (`dday`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `disid` int(6) NOT NULL,
  `distitle` varchar(150) DEFAULT '',
  `discode` varchar(75) DEFAULT '',
  `distype` tinyint(1) DEFAULT '0',
  `dislevel` int(3) DEFAULT '0',
  `numcredit` int(3) DEFAULT '0',
  `numused` int(3) DEFAULT '0',
  `disstatus` tinyint(1) DEFAULT '0',
  `disdate` int(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `discountuse`
--

CREATE TABLE `discountuse` (
  `disuid` int(6) NOT NULL,
  `disid` int(6) DEFAULT '0',
  `custid` int(6) NOT NULL DEFAULT '0',
  `oid` int(6) NOT NULL DEFAULT '0',
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `disudate` int(15) NOT NULL DEFAULT '0',
  `disustatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmonth`
--

CREATE TABLE `dmonth` (
  `dmonth` int(2) NOT NULL,
  `month` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dmonth`
--

INSERT INTO `dmonth` (`dmonth`, `month`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `draw`
--

CREATE TABLE `draw` (
  `drawid` int(5) NOT NULL,
  `from_date` varchar(50) NOT NULL DEFAULT '',
  `to_date` varchar(50) NOT NULL DEFAULT '',
  `num_winners` int(5) NOT NULL DEFAULT '0',
  `prize` varchar(50) NOT NULL DEFAULT '',
  `draw_date` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `draw`
--

INSERT INTO `draw` (`drawid`, `from_date`, `to_date`, `num_winners`, `prize`, `draw_date`) VALUES
(1, '04/01/2022', '04/07/2022', 10, 'Sehri Deal', 1650962114);

-- --------------------------------------------------------

--
-- Table structure for table `dyear`
--

CREATE TABLE `dyear` (
  `dyear` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dyear`
--

INSERT INTO `dyear` (`dyear`) VALUES
(1950),
(1951),
(1952),
(1953),
(1954),
(1955),
(1956),
(1957),
(1958),
(1959),
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005);

-- --------------------------------------------------------

--
-- Table structure for table `earned_points`
--

CREATE TABLE `earned_points` (
  `id` int(11) NOT NULL,
  `oid` int(11) NOT NULL,
  `custid` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(5) NOT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(6) NOT NULL,
  `name` varchar(75) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `items` tinyint(1) NOT NULL DEFAULT '0',
  `communication` tinyint(1) NOT NULL DEFAULT '0',
  `shipspeed` tinyint(1) NOT NULL DEFAULT '0',
  `comments` longtext NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `imgid` int(6) NOT NULL,
  `pid` int(8) NOT NULL DEFAULT '0',
  `smallimage` varchar(150) NOT NULL DEFAULT '',
  `largeimage` varchar(150) NOT NULL DEFAULT '',
  `cover` tinyint(1) NOT NULL DEFAULT '0',
  `imgdate` int(15) NOT NULL DEFAULT '0',
  `imgstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `devicetype` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--


-- --------------------------------------------------------

--
-- Table structure for table `orderremarks`
--

CREATE TABLE `orderremarks` (
  `orid` int(6) NOT NULL,
  `oid` int(6) NOT NULL DEFAULT '0',
  `ostatus` int(2) NOT NULL DEFAULT '0',
  `custid` int(6) NOT NULL DEFAULT '0',
  `orcomments` longtext NOT NULL,
  `ordate` int(15) NOT NULL DEFAULT '0',
  `orstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(6) NOT NULL,
  `id` int(3) NOT NULL DEFAULT '0',
  `otype` tinyint(1) DEFAULT '0',
  `paytype` tinyint(1) DEFAULT '0',
  `custid` int(6) DEFAULT '0',
  `couid` int(4) DEFAULT '0',
  `sessionid` varchar(50) DEFAULT '',
  `totalqty` int(5) DEFAULT '0',
  `totalprice` int(11) DEFAULT '0',
  `othercharges` varchar(35) DEFAULT '0',
  `totalrewardpoints` varchar(15) DEFAULT '0',
  `discount` varchar(15) DEFAULT '0',
  `giftwrap` varchar(50) DEFAULT '0',
  `contactperson` varchar(50) DEFAULT '',
  `oemail` varchar(50) DEFAULT '',
  `omobile` varchar(35) DEFAULT '',
  `ophone` varchar(35) DEFAULT '',
  `oaddress` varchar(255) DEFAULT '',
  `ocomments` varchar(255) DEFAULT NULL,
  `remarks` longtext,
  `odate` datetime DEFAULT CURRENT_TIMESTAMP,
  `ostatus` tinyint(1) DEFAULT '1',
  `token` varchar(255) NOT NULL,
  `devicetype` varchar(255) NOT NULL,
  `drawid` int(5) NOT NULL DEFAULT '0',
  `draw_prize` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderstatus`
--

CREATE TABLE `orderstatus` (
  `ostatus` int(2) NOT NULL,
  `orderstatus` varchar(25) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderstatus`
--

INSERT INTO `orderstatus` (`ostatus`, `orderstatus`) VALUES
(0, 'Not Viewed'),
(1, 'Pending'),
(2, 'In Process'),
(3, 'Dispatched'),
(4, 'Delivered'),
(5, 'Canceled'),
(6, 'Expired'),
(7, 'Failed'),
(8, 'Charge Back'),
(9, 'Processed'),
(10, 'Processing'),
(11, 'Refunded'),
(12, 'Reversed'),
(13, 'Shipped'),
(14, 'Voided'),
(15, 'Returned');

-- --------------------------------------------------------

--
-- Table structure for table `ordertotal`
--

CREATE TABLE `ordertotal` (
  `odid` int(6) NOT NULL,
  `sessionid` varchar(50) NOT NULL DEFAULT '',
  `totalqty` tinyint(5) NOT NULL DEFAULT '0',
  `totalprice` varchar(15) NOT NULL DEFAULT '',
  `ptype` tinyint(1) NOT NULL DEFAULT '0',
  `othercharges` varchar(15) NOT NULL DEFAULT '',
  `rewardpoints` varchar(15) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(3) NOT NULL,
  `title` varchar(150) NOT NULL,
  `detail` longtext NOT NULL,
  `image` varchar(150) NOT NULL DEFAULT '',
  `imagestatus` tinyint(1) NOT NULL DEFAULT '0',
  `pdate` int(15) NOT NULL DEFAULT '0',
  `pstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `detail`, `image`, `imagestatus`, `pdate`, `pstatus`) VALUES
(1, 'About Us', '<p>Pj&#39;s &amp; co is a clothing brand known for it&#39;s sleep wear. It&#39;s originated by a young female entrepreneur, who always make sure to provide quality service to her customers. She gradually added diversification in both, the product line and the types of refined fabrics used.&nbsp;<br />\r\nFrom cotton to silk and from night suits to sleeping masks, all the night wear essentials are provided under the same brand to make your sleep comfier than ever.</p>\r\n', '796708.jpg', 0, 0, 0),
(2, 'Shipping', '<p>The orders you place on www.pyjamasco.com will be delivered within 9-10 working days. You will receive an confirmation email or phone call as soon as we receive your order.&nbsp;</p>\r\n\r\n<p><strong>No return</strong>&nbsp;</p>\r\n\r\n<p>Exchange is only possible if we have sent you the wrong article or size.&nbsp;<br />\r\nIn case you refuse to receive your order, you will not be entertained by us in future.</p>\r\n', '887758.jpg', 0, 0, 0),
(3, 'FAQ\'s', '<p>&nbsp;</p>\r\n\r\n<p><strong>Q1: Where can we find the size chart?</strong></p>\r\n\r\n<p>Answer: Go to the &#39;Shipping&#39; category above, the size chart will be available there.</p>\r\n\r\n<p>Note: All the measurements are in &#39;Inches&#39;</p>\r\n\r\n<p><strong>Q2: Can we get customised Pj&#39;s?</strong></p>\r\n\r\n<p>Answer: Yes, you can get customised colors in &#39;Plain Pj&#39;s Series&#39;. The sizes cannot be customised. The delivery time for customisd Pj&#39;s will be 10-15 working days.</p>\r\n\r\n<p><strong>Q3: Do you have Night suits for kids and men?</strong></p>\r\n\r\n<p>Answer: We will launch Pj&#39;s for kids and men soon!</p>\r\n\r\n<p><strong>Q4: Do you have any return/exchange policy?</strong></p>\r\n\r\n<p>Answer: The exchange policy is addressed in the cateory &#39;Shipping&#39;</p>\r\n', '', 0, 0, 0),
(4, 'Terms & Conditions', '<p>No return.&nbsp;<br />\r\nExchange is only possible if we have sent you the wrong article or size.&nbsp;<br />\r\nIn case you refuse to receive your order, you will not be entertained by us in future.</p>\r\n', '', 0, 0, 0),
(5, 'Cash on Delivery', '<p>The orders you place on www.pyjamasco.com will be delivered within 9-10 working days. You will receive an confirmation email or phone call as soon as we receive your order.&nbsp;</p>\r\n', '', 0, 0, 0),
(6, 'Warranty and Return Policy', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 0, 0, 0),
(7, 'Contact Us', '<!--[if gte mso 9]><xml> <w:WordDocument> <w:View>Normal</w:View> <w:Zoom>0</w:Zoom> <w:TrackMoves /> <w:TrackFormatting /> <w:PunctuationKerning /> <w:ValidateAgainstSchemas /> <w:SaveIfXMLInvalid>false</w:SaveIfXMLInvalid> <w:IgnoreMixedContent>false</w:IgnoreMixedContent> <w:AlwaysShowPlaceholderText>false</w:AlwaysShowPlaceholderText> <w:DoNotPromoteQF /> <w:LidThemeOther>EN-GB</w:LidThemeOther> <w:LidThemeAsian>X-NONE</w:LidThemeAsian> <w:LidThemeComplexScript>X-NONE</w:LidThemeComplexScript> <w:Compatibility> <w:BreakWrappedTables /> <w:SnapToGridInCell /> <w:WrapTextWithPunct /> <w:UseAsianBreakRules /> <w:DontGrowAutofit /> <w:SplitPgBreakAndParaMark /> <w:DontVertAlignCellWithSp /> <w:DontBreakConstrainedForcedTables /> <w:DontVertAlignInTxbx /> <w:Word11KerningPairs /> <w:CachedColBalance /> </w:Compatibility> <m:mathPr> <m:mathFont m:val=\"Cambria Math\" /> <m:brkBin m:val=\"before\" /> <m:brkBinSub m:val=\"--\" /> <m:smallFrac m:val=\"off\" /> <m:dispDef /> <m:lMargin m:val=\"0\" /> <m:rMargin m:val=\"0\" /> <m:defJc m:val=\"centerGroup\" /> <m:wrapIndent m:val=\"1440\" /> <m:intLim m:val=\"subSup\" /> <m:naryLim m:val=\"undOvr\" /> </m:mathPr></w:WordDocument> </xml><![endif]-->\r\n<p>Instagram: @pyjamas_co</p>\r\n\r\n<p>Email: pjs.company18@gmail.com</p>\r\n\r\n<p>Facebook: Pj&rsquo;s &amp; co.</p>\r\n<!--[if gte mso 9]><xml> <w:LatentStyles DefLockedState=\"false\" DefUnhideWhenUsed=\"true\"   DefSemiHidden=\"true\" DefQFormat=\"false\" DefPriority=\"99\"   LatentStyleCount=\"267\"> <w:LsdException Locked=\"false\" Priority=\"0\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Normal\" /> <w:LsdException Locked=\"false\" Priority=\"9\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"heading 1\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 2\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 3\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 4\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 5\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 6\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 7\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 8\" /> <w:LsdException Locked=\"false\" Priority=\"9\" QFormat=\"true\" Name=\"heading 9\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 1\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 2\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 3\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 4\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 5\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 6\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 7\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 8\" /> <w:LsdException Locked=\"false\" Priority=\"39\" Name=\"toc 9\" /> <w:LsdException Locked=\"false\" Priority=\"35\" QFormat=\"true\" Name=\"caption\" /> <w:LsdException Locked=\"false\" Priority=\"10\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Title\" /> <w:LsdException Locked=\"false\" Priority=\"1\" Name=\"Default Paragraph Font\" /> <w:LsdException Locked=\"false\" Priority=\"11\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtitle\" /> <w:LsdException Locked=\"false\" Priority=\"22\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Strong\" /> <w:LsdException Locked=\"false\" Priority=\"20\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"59\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Table Grid\" /> <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Placeholder Text\" /> <w:LsdException Locked=\"false\" Priority=\"1\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"No Spacing\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 1\" /> <w:LsdException Locked=\"false\" UnhideWhenUsed=\"false\" Name=\"Revision\" /> <w:LsdException Locked=\"false\" Priority=\"34\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"List Paragraph\" /> <w:LsdException Locked=\"false\" Priority=\"29\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Quote\" /> <w:LsdException Locked=\"false\" Priority=\"30\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Quote\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 1\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 2\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 3\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 4\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 5\" /> <w:LsdException Locked=\"false\" Priority=\"60\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Shading Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"61\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"62\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Light Grid Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"63\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"64\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Shading 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"65\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"66\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium List 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"67\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 1 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"68\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 2 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"69\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Medium Grid 3 Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"70\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Dark List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"71\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Shading Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"72\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful List Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"73\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" Name=\"Colorful Grid Accent 6\" /> <w:LsdException Locked=\"false\" Priority=\"19\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"21\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Emphasis\" /> <w:LsdException Locked=\"false\" Priority=\"31\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Subtle Reference\" /> <w:LsdException Locked=\"false\" Priority=\"32\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Intense Reference\" /> <w:LsdException Locked=\"false\" Priority=\"33\" SemiHidden=\"false\"    UnhideWhenUsed=\"false\" QFormat=\"true\" Name=\"Book Title\" /> <w:LsdException Locked=\"false\" Priority=\"37\" Name=\"Bibliography\" /> <w:LsdException Locked=\"false\" Priority=\"39\" QFormat=\"true\" Name=\"TOC Heading\" /> </w:LatentStyles> </xml><![endif]--><!--[if gte mso 10]>\r\n<style>\r\n /* Style Definitions */\r\n table.MsoNormalTable\r\n	{mso-style-name:\"Table Normal\";\r\n	mso-tstyle-rowband-size:0;\r\n	mso-tstyle-colband-size:0;\r\n	mso-style-noshow:yes;\r\n	mso-style-priority:99;\r\n	mso-style-qformat:yes;\r\n	mso-style-parent:\"\";\r\n	mso-padding-alt:0cm 5.4pt 0cm 5.4pt;\r\n	mso-para-margin-top:0cm;\r\n	mso-para-margin-right:0cm;\r\n	mso-para-margin-bottom:10.0pt;\r\n	mso-para-margin-left:0cm;\r\n	line-height:115%;\r\n	mso-pagination:widow-orphan;\r\n	font-size:11.0pt;\r\n	font-family:\"Calibri\",\"sans-serif\";\r\n	mso-ascii-font-family:Calibri;\r\n	mso-ascii-theme-font:minor-latin;\r\n	mso-fareast-font-family:\"Times New Roman\";\r\n	mso-fareast-theme-font:minor-fareast;\r\n	mso-hansi-font-family:Calibri;\r\n	mso-hansi-theme-font:minor-latin;}\r\n</style>\r\n<![endif]-->', '', 0, 0, 0),
(8, 'Reward Points System', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 0, 0, 0),
(9, 'Privacy and Confidentiality', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(8) NOT NULL,
  `pserialno` int(3) NOT NULL DEFAULT '0',
  `cid` int(6) DEFAULT '0',
  `sku` varchar(75) DEFAULT '',
  `pname` varchar(150) DEFAULT '',
  `weight` varchar(255) NOT NULL,
  `weight_unit` varchar(35) NOT NULL DEFAULT '',
  `currency` varchar(35) NOT NULL DEFAULT '',
  `rewardpoints` int(5) DEFAULT '0',
  `shippingcost` int(5) DEFAULT '0',
  `paytype` varchar(25) DEFAULT '',
  `deliverytime` varchar(75) DEFAULT '',
  `instock` tinyint(1) DEFAULT '0',
  `featured` tinyint(1) DEFAULT '0',
  `newarrival` tinyint(1) DEFAULT '0',
  `description` longtext,
  `image` varchar(150) NOT NULL DEFAULT '',
  `ptags` varchar(255) DEFAULT '',
  `ppagetitle` varchar(250) DEFAULT '',
  `ppagename` varchar(250) DEFAULT '',
  `pkeywords` longtext,
  `pdate` int(15) DEFAULT '0',
  `pstatus` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `pserialno`, `cid`, `sku`, `pname`, `weight`, `weight_unit`, `currency`, `rewardpoints`, `shippingcost`, `paytype`, `deliverytime`, `instock`, `featured`, `newarrival`, `description`, `image`, `ptags`, `ppagetitle`, `ppagename`, `pkeywords`, `pdate`, `pstatus`) VALUES
(6, 1, 1, '', 'Deal For 4', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>4 XPRS Mayo Chicken Burgers, 4 Sufi Cola Cans</p>\r\n', '34494549.jpg', 'Deal For 4', 'Deal For 4', 'deal-for-4', 'Deal For 4', 1629805474, 0),
(7, 2, 1, '', 'XPRS Chapli Burgers Deal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>4 Chapli Burgers,</p>\r\n\r\n<p>1 Ltr. Drink</p>\r\n', '74775183.jpeg', 'XPRS Chapli Burgers Deal', 'XPRS Chapli Burgers Deal', 'xprs-chapli-burgers-deal', 'XPRS Chapli Burgers Deal', 1629805675, 1),
(8, 3, 1, '', 'XPRS Deal 1', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>1 XPRS Chicken Burger, 1 XPRS Spicy Chicken Burger, 1 Regular Fries and 2 Regular Drinks.</p>\r\n', '40765469.jpeg', 'Xprs Deal 1', 'Xprs Deal 1', 'xprs-deal-1', 'Xprs Deal 1', 1629805776, 1),
(9, 4, 1, '', 'Mid Night Deal 1', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>2 XPRS Mayo Chicken Burgers, 12 Pcs XPRS Classic nuggets, 2 Sufi Cola Cans</p>\r\n', '37231804.jpg', 'Mid Night Deal 1', 'Mid Night Deal 1', 'mid-night-deal-1', 'Mid Night Deal 1', 1629805877, 1),
(10, 5, 1, '', 'Mid Night Deal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>1 XPRS Mayo Chicken Burger, 6 Pcs XPRS Classic Nuggets, 1 Sufi Cola Can</p>\r\n', '8207829.jpg', 'Mid Night Deal', 'Mid Night Deal', 'mid-night-deal', 'Mid Night Deal', 1629805964, 0),
(11, 6, 1, '', 'XPRS Big Box', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>1 Mini Crispy Chicken Burger, 1 Mini Chapli Chicken Burger, 2 Regular Fries, 1 Paratha Roll, 1 Shawarma Roll, 6 Pcs Chicken Poppers, 2 Punjabi Samosa, 2 Reshmi Tikka, 1 Hummus, 1 Ketchup Sauce, 1 BBQ Sauce, 1 Garlic Mayo Sauce, 1 Pita Bread</p>\r\n', '24314695.jpg', 'XPRS Big Box', 'XPRS Big Box', 'xprs-big-box', 'XPRS Big Box', 1629806114, 1),
(12, 7, 1, '', 'XPRS Slider Box', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Slide Box includes 1 Chapli Burger, 1 Shami Burger and 1 Crispy Chicken Burger.</p>\r\n', '20573981.jpg', 'XPRS Slider Box', 'XPRS Slider Box', 'xprs-slider-box', 'XPRS Slider Box', 1629806196, 0),
(13, 8, 1, '', 'Xprs Crispy Chicken Paratha Roll With Cola', 'Deal', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Crispy Chicken Paratha Roll With Sufi Cola Can</p>\r\n', '74363935.jpeg', 'Paratha Roll', 'Paratha Roll', 'xprs-crispy-chicken-paratha-roll-with-cola', 'Paratha Roll', 1629806265, 0),
(16, 9, 1, '', 'XPRS Slider Box Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Slide Box includes 1 Chapli Burger, 1 Shami Burger and 1 Crispy Chicken Burger, With Fries and Drink</p>\r\n', '10415795.jpeg', 'XPRS Slider Box Meal', 'XPRS Slider Box with Fries and Drink', 'xprs-slider-box-meal', 'XPRS Slider Box Meal', 1629807234, 1),
(17, 10, 1, '', 'XPRS Paratha Roll', 'Deal', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Xprs Crispy Chicken Paratha Roll.</p>\r\n', '86397354.jpg', 'XPRS Paratha Roll', 'XPRS Paratha Roll', 'xprs-paratha-roll', 'XPRS Paratha Roll', 1629807509, 0),
(18, 11, 1, '', 'XPRS Tea Time', 'Deal', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Tea 2 Punjabi Samosa</p>\r\n', '67161610.jpg', 'XPRS Tea Time', 'XPRS Tea Time', 'xprs-tea-time', 'XPRS Tea Time', 1629807631, 0),
(19, 12, 1, '', 'XPRS Deal 2', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>3 XPRS Chicken burgers, 1 XPRS Chicken grilled burger, 6 Pcs nuggets, 2 Regular fries and 1 Ltr. Cola</p>\r\n', '38970365.jpg', 'XPRS Deal 2', 'XPRS Deal 2', 'xprs-deal-2', 'XPRS Deal 2', 1629807773, 1),
(21, 0, 2, '', 'Platter 1', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Leg 1 Pc, Chicken Tikka Boti 2 Pcs, Mint Raita, Mix Fresh Salad, Roghni Naan 1 pc</p>\r\n', '62260539.jpeg', 'Platter 1', 'Platter 1', 'platter-1', 'Platter 1', 0, 0),
(22, 0, 2, '', 'Platter 2', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Breast 01 Pc, Chicken Tikka Botte 02 Pcs, Roghni Naan 01 Pc, Mint Riata, Mix Fresh Salad</p>\r\n', '37810421.jpeg', 'Platter 2', 'Platter 2', 'platter-2', 'Platter 2', 0, 0),
(23, 0, 2, '', 'Platter 3', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Leg 1 Pc, Roghni Naan 1 Pc, Mix Fresh Salad, Mint Raita</p>\r\n', '33690096.jpeg', 'Platter 3', 'Platter 3', 'platter-3', 'Platter 3', 0, 0),
(24, 0, 2, '', 'Platter 4', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Breast 1 Pc, Mint Raita, Mix Fresh Salad, Roghni Naan 1 Pc</p>\r\n', '63459861.jpeg', 'Platter 4', 'Platter 4', 'platter-4', 'Platter 4', 0, 0),
(25, 0, 2, '', 'Platter 5', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Leg 1 Pc, Chicken Seekh Kabab 2 Pcs, Mint Raita, Mix Fresh Salad, Roghni Naan 1 Pc</p>\r\n', '94470018.jpeg', 'Platter 5', 'Platter 5', 'platter-5', 'Platter 5', 0, 0),
(26, 0, 2, '', 'Platter 6', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Breast 1 Pc, Chicken Seekh Kabab 2 Pcs, Roghni Naan 1 Pc, Mix Fresh Salad, Mint Raita</p>\r\n', '64322585.jpeg', 'Platter 6', 'Platter 6', 'platter-6', 'Platter 6', 0, 0),
(27, 0, 2, '', 'Single Entry 01', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Leg 1 Pc, Mint Raita, Mix Fresh Salad</p>\r\n', '25342879.jpg', 'Single Entry 01', 'Single Entry 01', 'single-entry-01', 'Single Entry 01', 0, 0),
(28, 0, 2, '', 'Single Entry 02', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Breast 1 Pc, Mint Raita, Mix Fresh Salad</p>\r\n', '75495799.jpg', 'Single Entry 02', 'Single Entry 02', 'single-entry-02', 'Single Entry 02', 0, 0),
(29, 0, 2, '', 'Single Entry 03', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Seekh Kabab 4 Pc, Mint Raita, Mix Fresh Salad</p>\r\n', '36873546.jpg', 'Single Entry 03', 'Single Entry 03', 'single-entry-03', 'Single Entry 03', 0, 0),
(30, 0, 2, '', 'Single Entry 04', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Reshmi Boti 4 Pc, Mint Raita, Mix Fresh Salad</p>\r\n', '62188332.jpg', 'Single Entry 04', 'Single Entry 04', 'single-entry-04', 'Single Entry 04', 0, 0),
(31, 0, 2, '', 'Single Entry 05', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Tikka Boti 4 Pc, Mint Raita, Mix Fresh Salad</p>\r\n', '36959110.jpg', 'Single Entry 05', 'Single Entry 05', 'single-entry-05', 'Single Entry 05', 0, 0),
(32, 0, 2, '', 'Single Entry 06', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Mint Raita</p>\r\n', '38442953.jpg', '', '', 'single-entry-06', '', 0, 0),
(33, 0, 2, '', 'Single Entry 07', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Mix Fresh Salad</p>\r\n', '23150895.jpg', '', '', 'single-entry-07', '', 0, 0),
(34, 0, 2, '', 'Single Entry 08', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Roghni Naan</p>\r\n', '29543452.jpg', '', '', 'single-entry-08', '', 0, 0),
(35, 0, 3, '', 'XPRS Crispy Chicken Burger', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Crispy Chicken Burger</p>\r\n', 'crispy-chicken-burger.jpeg', 'XPRS Crispy Chicken Burger', 'XPRS Crispy Chicken Burger', 'xprs-crispy-chicken-burger', 'XPRS Crispy Chicken Burger', 0, 0),
(36, 0, 3, '', 'XPRS Crispy Chicken Burger Regular Meal ', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Crispy Chicken Burger - Regular Meal</p>\r\n', 'crispy-chicken-burger-meal.jpeg', 'XPRS Crispy Chicken Burger Regular Meal ', 'XPRS Crispy Chicken Burger Regular Meal ', 'xprs-crispy-chicken-burger-regular-meal-', 'XPRS Crispy Chicken Burger Regular Meal ', 0, 0),
(37, 0, 3, '', 'XPRS Chicken Burger', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Burger</p>\r\n', 'chicken-burger.png', '', '', 'xprs-chicken-burger', '', 0, 0),
(38, 0, 3, '', 'XPRS Chicken Burger Regular Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Burger - Regular Meal</p>\r\n', '20342561.jpg', 'XPRS Chicken Burger Regular Meal', 'XPRS Chicken Burger Regular Meal', 'xprs-chicken-burger-regular-meal', 'XPRS Chicken Burger Regular Meal', 0, 0),
(39, 0, 3, '', 'XPRS Chicken Burger Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Burger - Medium Meal</p>\r\n', '25150313.jpg', 'XPRS Chicken Burger Medium Meal', 'XPRS Chicken Burger Medium Meal', 'xprs-chicken-burger-medium-meal', 'XPRS Chicken Burger Medium Meal', 0, 0),
(40, 0, 3, '', 'XPRS Chicken Burger Large Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Burger - Large Meal</p>\r\n', '28046415.jpg', 'XPRS Chicken Burger Large Meal', 'XPRS Chicken Burger Large Meal', 'xprs-chicken-burger-large-meal', 'XPRS Chicken Burger Large Meal', 0, 0),
(41, 0, 3, '', 'XPRS Spicy Chicken Burger', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Chicken Burger</p>\r\n', 'spicy-burger.png', '', '', 'xprs-spicy-chicken-burger', '', 0, 0),
(42, 0, 3, '', 'XPRS Spicy Chicken Burger Regular Meal ', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Chicken Burger - Regular Meal</p>\r\n', 'spicy-burger-meal.png', 'XPRS Spicy Chicken Burger Regular Meal ', 'XPRS Spicy Chicken Burger Regular Meal ', 'xprs-spicy-chicken-burger-regular-meal-', 'XPRS Spicy Chicken Burger Regular Meal ', 0, 0),
(43, 0, 3, '', 'XPRS Spicy Chicken Burger Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Chicken Burger&nbsp;- Medium Meal</p>\r\n', 'spicy-burger-meal.png', 'XPRS Spicy Chicken Burger Medium Meal', 'XPRS Spicy Chicken Burger Medium Meal', 'xprs-spicy-chicken-burger-medium-meal', 'XPRS Spicy Chicken Burger Medium Meal', 0, 0),
(44, 0, 3, '', 'XPRS Spicy Chicken Burger Large Meal ', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Chicken Burger&nbsp;- Large Meal</p>\r\n', 'spicy-burger-meal.png', 'XPRS Spicy Chicken Burger Large Meal', 'XPRS Spicy Chicken Burger Large Meal', 'xprs-spicy-chicken-burger-large-meal-', 'XPRS Spicy Chicken Burger Large Meal', 0, 0),
(45, 0, 3, '', 'XPRS Grilled Chicken Burger', '', '', '', 0, 0, '', '', 0, 0, 0, 'XPRS Grilled Chicken Burger', 'grilled-burger.png', '', '', '', NULL, 0, 0),
(46, 0, 3, '', 'XPRS Grilled Chicken Burger Regular Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Grilled Chicken Burger - Regular Meal</p>\r\n', 'grilled-burger-meal.png', 'XPRS Grilled Chicken Burger Regular Meal', 'XPRS Grilled Chicken Burger Regular Meal', 'xprs-grilled-chicken-burger-regular-meal', 'XPRS Grilled Chicken Burger Regular Meal', 0, 0),
(47, 0, 3, '', 'XPRS Grilled Chicken Burger Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Grilled Chicken Burger - Medium Meal</p>\r\n', 'grilled-burger-meal.png', 'XPRS Grilled Chicken Burger Medium Meal', 'XPRS Grilled Chicken Burger Medium Meal', 'xprs-grilled-chicken-burger-medium-meal', 'XPRS Grilled Chicken Burger Medium Meal', 0, 0),
(48, 0, 3, '', 'XPRS Grilled Chicken Burger Large Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Grilled Chicken Burger - Large Meal</p>\r\n', 'grilled-burger-meal.png', 'XPRS Grilled Chicken Burger Large Meal', 'XPRS Grilled Chicken Burger Large Meal', 'xprs-grilled-chicken-burger-large-meal', 'XPRS Grilled Chicken Burger Large Meal', 0, 0),
(49, 0, 3, '', 'XPRS Spicy Grilled Chicken Burger', '', '', '', 0, 0, '', '', 0, 0, 0, 'XPRS Spicy Grilled Chicken Burger', 'spicy-grilled-burger.png', '', '', '', NULL, 0, 0),
(50, 0, 3, '', 'XPRS Spicy Grilled Chicken Burger Regular Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Grilled Chicken Burger - Regular Meal</p>\r\n', 'spicy-grilled-burger-meal.png', 'XPRS Spicy Grilled Chicken Burger Regular Meal', 'XPRS Spicy Grilled Chicken Burger Regular Meal', 'xprs-spicy-grilled-chicken-burger-regular-meal', 'XPRS Spicy Grilled Chicken Burger Regular Meal', 0, 0),
(51, 0, 3, '', 'XPRS Spicy Grilled Chicken Burger Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Grilled Chicken Burger - Medium Meal</p>\r\n', 'spicy-grilled-burger-meal.png', 'XPRS Spicy Grilled Chicken Burger Medium Meal', 'XPRS Spicy Grilled Chicken Burger Medium Meal', 'xprs-spicy-grilled-chicken-burger-medium-meal', 'XPRS Spicy Grilled Chicken Burger Medium Meal', 0, 0),
(52, 0, 3, '', 'XPRS Spicy Grilled Chicken Burger Large Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Spicy Grilled Chicken Burger - Large Meal</p>\r\n', 'spicy-grilled-burger-meal.png', 'XPRS Spicy Grilled Chicken Burger', 'XPRS Spicy Grilled Chicken Burger', 'xprs-spicy-grilled-chicken-burger-large-meal', 'XPRS Spicy Grilled Chicken Burger', 0, 0),
(53, 0, 3, '', 'XPRS Chapli Burger', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chapli Burger - Regular Meal</p>\r\n', '96014956.jpg', 'XPRS Chapli Burger', 'XPRS Chapli Burger', 'xprs-chapli-burger', 'XPRS Chapli Burger', 0, 1),
(73, 0, 4, '', 'XPRS Reshmi Chicken Wrap', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Reshmi Chicken Wrap</p>\r\n', '54025635.jpg', 'XPRS Reshmi Chicken Wrap', 'XPRS Reshmi Chicken Wrap', 'xprs-reshmi-chicken-wrap', 'XPRS Reshmi Chicken Wrap', 0, 0),
(74, 0, 4, '', 'XPRS Reshmi Chicken Wrap Regular Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Reshmi Chicken&nbsp;Wrap - Regular Meal</p>\r\n', '48792801.jpg', 'XPRS Reshmi Chicken Wrap Regular Meal', 'XPRS Reshmi Chicken Wrap Regular Meal', 'xprs-reshmi-chicken-wrap-regular-meal', 'XPRS Reshmi Chicken Wrap Regular Meal', 0, 0),
(75, 0, 4, '', 'XPRS Reshmi Chicken Wrap Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Reshmi Chicken Wrap - Medium Meal</p>\r\n', '63191518.jpg', 'XPRS Reshmi Chicken Wrap Medium Meal', 'XPRS Reshmi Chicken Wrap Medium Meal', 'xprs-reshmi-chicken-wrap-medium-meal', 'XPRS Reshmi Chicken Wrap Medium Meal', 0, 0),
(76, 0, 4, '', 'XPRS Reshmi Chicken Wrap Large Meal ', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Reshmi Chicken Wrap - Large Meal</p>\r\n', '35975180.jpg', 'XPRS Reshmi Chicken Wrap Large Meal ', 'XPRS Reshmi Chicken Wrap Large Meal ', 'xprs-reshmi-chicken-wrap-large-meal-', 'XPRS Reshmi Chicken Wrap Large Meal ', 0, 0),
(77, 0, 4, '', 'XPRS Crispy Chicken Wrap', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Crispy Chicken Wrap</p>\r\n', '3831899.jpg', 'XPRS Crispy Chicken Wrap', 'XPRS Crispy Chicken Wrap', 'xprs-crispy-chicken-wrap', 'XPRS Crispy Chicken Wrap', 0, 0),
(78, 0, 4, '', 'XPRS Crispy Chicken Wrap Regular Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Crispy Chicken Wrap - Regular Meal</p>\r\n', '97069826.jpg', 'XPRS Crispy Chicken Wrap Regular Meal', 'XPRS Crispy Chicken Wrap Regular Meal', 'xprs-crispy-chicken-wrap-regular-meal', 'XPRS Crispy Chicken Wrap Regular Meal', 0, 0),
(79, 0, 4, '', 'XPRS Crispy Chicken Wrap Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Crispy Chicken Wrap - Medium Meal</p>\r\n', '63834206.jpg', 'XPRS Crispy Chicken Wrap Medium Meal', 'XPRS Crispy Chicken Wrap Medium Meal', 'xprs-crispy-chicken-wrap-medium-meal', 'XPRS Crispy Chicken Wrap Medium Meal', 0, 0),
(80, 0, 4, '', 'XPRS Crispy Chicken Wrap Large Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Crispy Chicken Wrap - Large Meal</p>\r\n', '23225692.jpg', 'XPRS Crispy Chicken Wrap Large Meal', 'XPRS Crispy Chicken Wrap Large Meal', 'xprs-crispy-chicken-wrap-large-meal', 'XPRS Crispy Chicken Wrap Large Meal', 0, 0),
(81, 0, 10, '', 'Chicken & Egg Muffin', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken &amp; Egg Muffin</p>\r\n', '81740584.jpg', 'Chicken & Egg Muffin', 'Chicken & Egg Muffin', 'chicken-egg-muffin', 'Chicken & Egg Muffin', 0, 0),
(82, 0, 10, '', 'Chicken & Egg Muffin Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken &amp; Egg Muffin - Meal</p>\r\n', '27244834.jpg', 'Chicken & Egg Muffin Meal', 'Chicken & Egg Muffin Meal', 'chicken-egg-muffin-meal', 'Chicken & Egg Muffin Meal', 0, 0),
(83, 0, 10, '', 'Chicken Muffin', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Muffin</p>\r\n', '48292394.jpg', 'Chicken Muffin', 'Chicken Muffin', 'chicken-muffin', 'Chicken Muffin', 0, 0),
(84, 0, 10, '', 'Chicken Muffin Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken Muffin - Meal</p>\r\n', '15072023.jpg', 'Chicken Muffin Meal', 'Chicken Muffin Meal', 'chicken-muffin-meal', 'Chicken Muffin Meal', 0, 0),
(85, 0, 10, '', 'Egg & Cheese Muffin', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Egg &amp; Cheese Muffin</p>\r\n', '28822096.jpg', 'Egg & Cheese Muffin', 'Egg & Cheese Muffin', 'egg-cheese-muffin', 'Egg & Cheese Muffin', 0, 0),
(86, 0, 10, '', 'Egg & Cheese Muffin Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Egg &amp; Cheese Muffin - Meal</p>\r\n', '12338688.jpg', 'Egg & Cheese Muffin Meal', 'Egg & Cheese Muffin Meal', 'egg-cheese-muffin-meal', 'Egg & Cheese Muffin Meal', 0, 0),
(87, 0, 10, '', 'English Muffin', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>English Muffin</p>\r\n', '69657728.jpg', 'English Muffin', 'English Muffin', 'english-muffin', 'English Muffin', 0, 1),
(88, 0, 10, '', 'English Muffin Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>English Muffin - Meal</p>\r\n', '4737921.jpg', 'English Muffin Meal', 'English Muffin Meal', 'english-muffin-meal', 'English Muffin Meal', 0, 1),
(89, 0, 5, '', 'XPRS Classic Chicken Nuggets 6 Pcs', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Classic Chicken Nuggets 6 Pcs</p>\r\n', 'nuggets.png', 'XPRS Classic Chicken Nuggets 6 Pcs', 'XPRS Classic Chicken Nuggets 6 Pcs', 'xprs-classic-chicken-nuggets-6-pcs', 'XPRS Classic Chicken Nuggets 6 Pcs', 0, 0),
(90, 0, 5, '', 'XPRS Classic Chicken Nuggets 6 Pcs Regular Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Classic Chicken Nuggets 6 Pcs - Regular Meal</p>\r\n', '29842411.jpg', 'XPRS Classic Chicken Nuggets 6 Pcs Regular Meal', 'XPRS Classic Chicken Nuggets 6 Pcs Regular Meal', 'xprs-classic-chicken-nuggets-6-pcs-regular-meal', 'XPRS Classic Chicken Nuggets 6 Pcs Regular Meal', 0, 0),
(91, 0, 5, '', 'XPRS Classic Chicken Nuggets 6 Pcs Medium Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Classic Chicken Nuggets 6 Pcs - Medium Meal</p>\r\n', '24239654.jpg', 'XPRS Classic Chicken Nuggets 6 Pcs Medium Meal', 'XPRS Classic Chicken Nuggets 6 Pcs Medium Meal', 'xprs-classic-chicken-nuggets-6-pcs-medium-meal', 'XPRS Classic Chicken Nuggets 6 Pcs Medium Meal', 0, 0),
(92, 0, 5, '', 'XPRS Classic Chicken Nuggets 6 Pcs Large Meal', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Classic Chicken Nuggets 6 Pcs - Large Meal</p>\r\n', '76987904.jpg', 'XPRS Classic Chicken Nuggets 6 Pcs Large Meal', 'XPRS Classic Chicken Nuggets 6 Pcs Large Meal', 'xprs-classic-chicken-nuggets-6-pcs-large-meal', 'XPRS Classic Chicken Nuggets 6 Pcs Large Meal', 0, 0),
(93, 0, 5, '', 'XPRS Classic Chicken Nuggets 9 Pcs', '', '', '', 0, 0, '', '', 0, 0, 0, 'XPRS Classic Chicken Nuggets 9 Pcs', 'nuggets.png', '', '', '', NULL, 0, 0),
(97, 0, 5, '', 'XPRS Classic Chicken Nuggets 20 Pcs', '', '', '', 0, 0, '', '', 0, 0, 0, 'XPRS Classic Chicken Nuggets 20 Pcs', 'nuggets.png', '', '', '', NULL, 0, 0),
(98, 0, 5, '', 'XPRS Chicken Poppers', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Poppers 10 Pcs</p>\r\n', '81374640.jpg', 'XPRS Chicken Poppers', 'XPRS Chicken Poppers', 'xprs-chicken-poppers', 'XPRS Chicken Poppers', 0, 1),
(99, 0, 5, '', 'XPRS Chicken Wings 8 Pcs', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Wings 10 Pcs</p>\r\n', 'wings.png', 'H', 'B ', 'xprs-chicken-wings-8-pcs', 'H', 0, 0),
(100, 0, 18, '', 'XPRS Chicken', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken 1 Pc</p>\r\n', '17673784.jpg', 'XPRS Chicken 1 Pc', 'XPRS Chicken 1 Pc', 'xprs-chicken', 'XPRS Chicken 1 Pc', 0, 0),
(101, 0, 18, '', 'XPRS Chicken Spicy', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Spicy 1 Pc</p>\r\n', 'chicken-pc.png', '', '', 'xprs-chicken-spicy', '', 0, 0),
(102, 0, 18, '', 'XPRS Chicken', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken 3 Pcs</p>\r\n', '31617255.jpg', 'XPRS Chicken 3 Pcs', 'XPRS Chicken 3 Pcs', 'xprs-chicken', 'XPRS Chicken 3 Pcs', 0, 0),
(103, 0, 18, '', 'XPRS Chicken Spicy', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Chicken Spicy 3 Pcs</p>\r\n', 'chicken-3-pcs.jpg', '', '', 'xprs-chicken-spicy', '', 0, 0),
(104, 0, 18, '', 'XPRS Share Bucket with Free Drink', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Share Bucket with Free Drink 9 Pcs</p>\r\n', 'share-bucket.jpg', '', '', 'xprs-share-bucket-with-free-drink', '', 0, 0),
(105, 0, 18, '', 'XPRS Share Bucket Spicy', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Share Bucket Spicy 9 Pcs</p>\r\n', '84858135.jpg', 'XPRS Share Bucket Spicy', 'XPRS Share Bucket Spicy', 'xprs-share-bucket-spicy', 'XPRS Share Bucket Spicy', 0, 0),
(106, 0, 6, '', 'Captain Kids Meal with 4 PCs Space Nuggets', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Captain Kids Meal with 4 PCs Space Nuggets</p>\r\n', '20688724.jpg', 'Captain Kids Meal with 4 PCs Space Nuggets', 'Captain Kids Meal with 4 PCs Space Nuggets', 'captain-kids-meal-with-4-pcs-space-nuggets', 'Captain Kids Meal with 4 PCs Space Nuggets', 0, 0),
(107, 0, 6, '', 'Captain Kids Meal with 1 Pc Chicken', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Captain Kids Meal with 1 Pc Chicken</p>\r\n', '15381733.jpg', 'Captain Kids Meal with 1 Pc Chicken', 'Captain Kids Meal with 1 Pc Chicken', 'captain-kids-meal-with-1-pc-chicken', 'Captain Kids Meal with 1 Pc Chicken', 0, 0),
(108, 0, 6, '', 'Captain Kids Meal with Chicken Burger', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Captain Kids Meal with Chicken Burger</p>\r\n', '8764067.jpg', 'Captain Kids Meal with Chicken Burger', 'Captain Kids Meal with Chicken Burger', 'captain-kids-meal-with-chicken-burger', 'Captain Kids Meal with Chicken Burger', 0, 0),
(109, 0, 6, '', 'Captain Kids Meal with 4 PCs Nuggets', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Captain Kids Meal with 4 PCs Nuggets</p>\r\n', '35804180.jpg', 'Captain Kids Meal with 4 PCs Nuggets', 'Captain Kids Meal with 4 PCs Nuggets', 'captain-kids-meal-with-4-pcs-nuggets', 'Captain Kids Meal with 4 PCs Nuggets', 0, 0),
(110, 0, 6, '', 'Chicken n Chips', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chicken n Chips</p>\r\n', '61163878.jpg', 'Chicken n Chips', 'Chicken n Chips', 'chicken-n-chips', 'Chicken n Chips', 0, 0),
(111, 0, 7, '', 'XPRS Original Mayo Fries', '', '', '', 0, 0, '', '', 0, 0, 0, 'XPRS Original Mayo Fries', 'mayo fries.jpg', '', '', '', NULL, 0, 0),
(112, 0, 7, '', 'XPRS Original Mayo Fries Jambo', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Original Mayo Fries - Jambo</p>\r\n', 'mayo fries.jpg', 'XPRS Original Mayo Fries Jambo', 'XPRS Original Mayo Fries Jambo', 'xprs-original-mayo-fries-jambo', 'XPRS Original Mayo Fries Jambo', 0, 0),
(113, 0, 7, '', 'XPRS BBQ Fries', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS BBQ Fries</p>\r\n', '38389489.jpg', 'XPRS BBQ Fries', 'XPRS BBQ Fries', 'xprs-bbq-fries', 'XPRS BBQ Fries', 0, 0),
(114, 0, 7, '', 'XPRS BBQ Fries Jambo', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS BBQ Fries - Jambo</p>\r\n', '99407165.jpg', 'XPRS BBQ Fries Jambo', 'XPRS BBQ Fries Jambo', 'xprs-bbq-fries-jambo', 'XPRS BBQ Fries Jambo', 0, 0),
(115, 0, 7, '', 'XPRS Nacho Cheese Fries', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Nacho Cheese Fries</p>\r\n', 'XPRS Nacho Cheese Fries.jpg', '', '', 'xprs-nacho-cheese-fries', '', 0, 1),
(116, 0, 7, '', 'XPRS Nacho Cheese Fries Jambo', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Nacho Cheese Fries - Jambo</p>\r\n', 'XPRS Nacho Cheese Fries.jpg', 'XPRS Nacho Cheese Fries Jambo', 'XPRS Nacho Cheese Fries Jambo', 'xprs-nacho-cheese-fries-jambo', 'XPRS Nacho Cheese Fries Jambo', 0, 1),
(117, 0, 8, '', 'Small Fries', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Small Fries</p>\r\n', '95021752.jpg', 'Small Fries', 'Small Fries', 'small-fries', 'Small Fries', 1629966862, 0),
(118, 0, 8, '', 'Medium Fries', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Medium Fries</p>\r\n', '84836899.jpg', 'Medium Fries', 'Medium Fries', 'medium-fries', 'Medium Fries', 1629966902, 0),
(119, 0, 8, '', 'Large Fries', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Large Fries</p>\r\n', '32194716.jpg', 'Large Fries', 'Large Fries', 'large-fries', 'Large Fries', 1629966944, 0),
(120, 0, 9, '', 'Xprs Curly Fries Small', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Xprs Curly Fries - Small</p>\r\n', '78141907.jpeg', 'Xprs Curly Fries Small', 'Xprs Curly Fries Small', 'xprs-curly-fries-small', 'Xprs Curly Fries Small', 1629967240, 0),
(121, 0, 9, '', 'Xprs Curly Fries Medium', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Xprs Curly Fries - Medium</p>\r\n', '31583962.jpeg', 'Xprs Curly Fries Medium', 'Xprs Curly Fries Medium', 'xprs-curly-fries-medium', 'Xprs Curly Fries Medium', 1629967278, 0),
(122, 0, 9, '', 'Xprs Curly Fries Large', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Xprs Curly Fries - Large</p>\r\n', '34348277.jpeg', 'Xprs Curly Fries Large', 'Xprs Curly Fries Large', 'xprs-curly-fries-large', 'Xprs Curly Fries Large', 1629967312, 0),
(123, 0, 14, '', 'Plain Cone', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Plain Cone</p>\r\n', '56935351.jpg', 'Plain Cone', 'Plain Cone', 'plain-cone', 'Plain Cone', 1630046026, 0),
(124, 0, 14, '', 'Chocolate Cone', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '12028834.jpg', 'Chocolate Cone', 'Chocolate Cone', 'chocolate-cone', 'Chocolate Cone', 1630046062, 0),
(125, 0, 14, '', 'Chocolate Sundae	', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Chocolate Sundae</p>\r\n', '80924657.jpg', 'Chocolate Sundae	', 'Chocolate Sundae	', 'chocolate-sundae	', 'Chocolate Sundae	', 1630046372, 0),
(126, 0, 14, '', 'Caramel Sundae', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '62858393.jpg', 'Caramel Sundae', 'Caramel Sundae', 'caramel-sundae', 'Caramel Sundae', 1630046402, 1),
(127, 0, 14, '', 'Strawberry Sundae', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Strawberry Sundae</p>\r\n', '18611481.jpg', 'Strawberry Sundae', 'Strawberry Sundae', 'strawberry-sundae', 'Strawberry Sundae', 1630046434, 0),
(128, 0, 12, '', 'Strawberry Shake', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Strawberry Shake</p>\r\n', '74778519.jpg', 'Strawberry Shake', 'Strawberry Shake', 'strawberry-shake', 'Strawberry Shake', 1630046532, 0),
(129, 0, 12, '', 'Vanilla Shake', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Vanilla Shake</p>\r\n', '40361594.jpg', 'Vanilla Shake', 'Vanilla Shake', 'vanilla-shake', 'Vanilla Shake', 1630046580, 0),
(130, 0, 12, '', 'Chocolate Shake', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '30464630.jpg', 'Chocolate Shake', 'Chocolate Shake', 'chocolate-shake', 'Chocolate Shake', 1630046622, 0),
(131, 0, 13, '', 'Peach Slush', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '4943442.jpg', 'Peach Slush', 'Peach Slush', 'peach-slush', 'Peach Slush', 1630047186, 0),
(132, 0, 13, '', 'Blue Ocean Slush', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '57700175.jpg', 'Blue Ocean Slush', 'Blue Ocean Slush', 'blue-ocean-slush', 'Blue Ocean Slush', 1630047794, 0),
(133, 1, 16, '', 'Regular Tea', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '26759464.jpg', 'Regular Tea', 'Regular Tea', 'regular-tea', 'Regular Tea', 1630047913, 0),
(134, 4, 16, '', 'Cappuccino Coffee', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '54158776.jpg', 'Cappuccino Coffee', 'Cappuccino Coffee', 'cappuccino-coffee', 'Cappuccino Coffee', 1630048082, 0),
(135, 5, 16, '', 'Latte Coffee', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '2161236.jpg', 'Coffee', 'Coffee', 'latte-coffee', 'Coffee', 1630048200, 0),
(136, 6, 16, '', 'Long Black Coffee', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '', '28017437.jpg', 'Long Black Coffee', 'Long Black Coffee', 'long-black-coffee', 'Long Black Coffee', 1630048254, 1),
(137, 0, 15, '', 'Small Drink', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Small Drink</p>\r\n', '73015047.jpg', 'Small Drink', 'Small Drink', 'small-drink', 'Small Drink', 1630048376, 0),
(138, 0, 15, '', 'Medium Drink', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Medium Drink</p>\r\n', '32994287.jpg', 'Medium Drink', 'Medium Drink', 'medium-drink', 'Medium Drink', 1630048402, 0),
(139, 0, 15, '', 'Large Drink', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Large Drink</p>\r\n', '70879579.jpg', 'Large Drink', 'Large Drink', 'large-drink', 'Large Drink', 1630048425, 0),
(140, 0, 15, '', 'Diet Coke', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Diet Coke</p>\r\n', '33904996.jpg', 'Diet Coke', 'Diet Coke', 'diet-coke', 'Diet Coke', 1630048453, 0),
(141, 0, 15, '', 'Sufi Can', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Sufi Can</p>\r\n', '9440917.jpg', 'Sufi Can', 'Sufi Can', 'sufi-can', 'Sufi Can', 1630048800, 1),
(142, 0, 15, '', 'Oolala Milk Strawberry', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Oolala Milk Strawberry</p>\r\n', '86519220.jpg', 'Oolala Milk Strawberry', 'Oolala Milk Strawberry', 'oolala-milk-strawberry', 'Oolala Milk Strawberry', 1630048910, 0),
(143, 0, 15, '', 'Oolala Milk Chocolate', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Oolala Milk Chocolate</p>\r\n', '68328365.jpg', 'Oolala Milk Chocolate', 'Oolala Milk Chocolate', 'oolala-milk-chocolate', 'Oolala Milk Chocolate', 1630049020, 0),
(144, 0, 15, '', 'Sufi Mineral Water', '', '', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Sufi Mineral Water</p>\r\n', '67072719.jpg', 'Sufi Mineral Water', 'Sufi Mineral Water', 'sufi-mineral-water', 'Sufi Mineral Water', 1630049133, 0),
(150, 2, 16, '', 'Karak Tea', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>Karak Tea</p>\r\n', '93703159.jpg', 'Karak Tea', 'Karak Tea', 'karak-tea', 'Karak Tea', 1651348064, 0),
(151, 0, 1, '', 'XPRS Family Feast Deal 1', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>4 Spicy Chicken Burgers, 10 Pcs Classic Chicken Nuggets, 1 Large Fries, 1.5 Ltr Drink</p>\r\n', '63041317.jpg', 'XPRS Family Feast Deal 1', 'XPRS Family Feast Deal 1', 'xprs-family-feast-deal-1', 'XPRS Family Feast Deal 1', 1651349526, 0),
(152, 0, 1, '', 'XPRS Family Feast Deal 2', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>2 Crispy Chicken Burgers, 2 Mayo Chicken Burgers, 4 Pcs Spicy Chicken, 2 Regular Fries, 1.5 Lrt Drink</p>\r\n', '69830014.jpg', 'XPRS Family Feast Deal 2', 'XPRS Family Feast Deal 2', 'xprs-family-feast-deal-2', 'XPRS Family Feast Deal 2', 1651349663, 0),
(153, 0, 1, '', 'XPRS Family Feast Deal 3', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>2 Spicy Chicken Burgers, 2 Chicken Paratha Rolls, 10 Pcs Classic Chicken Nuggets, 2 Regular Fries, 1.5 Ltr Drink</p>\r\n', '94803173.jpg', 'XPRS Family Feast Deal 3', 'XPRS Family Feast Deal 3', 'xprs-family-feast-deal-3', 'XPRS Family Feast Deal 3', 1651349840, 0),
(154, 0, 1, '', 'XPRS Anda Shami Burger Deal', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>XPRS Anda Shami Burger, Drink Can</p>\r\n', '67313475.jpg', 'XPRS Anda Shami Burger', 'XPRS Anda Shami Burger', 'xprs-anda-shami-burger-deal', 'XPRS Anda Shami Burger', 1651350052, 0),
(155, 3, 16, '', 'Cardamom Tea', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '', '47750131.jpg', 'Cardamom Tea', 'Cardamom Tea', 'cardamom-tea', 'Cardamom Tea', 1651351138, 0),
(1006, 0, 1, '', 'Free Mayo Chicken Burger', 'Deal', '', '', 0, 0, '', '', 0, 0, 0, NULL, 'new123.jpg', '', '', '', NULL, 0, 1),
(1007, 0, 1, '', 'XPRS Chapli Burgers Deal', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>4 Chappli Burgers + 1 Liter Drink</p>\r\n\r\n<p>&nbsp;</p>\r\n', '42632373.jpeg', 'XPRS Chapli Burgers Deal', 'XPRS Chapli Burgers Deal', 'xprs-chapli-burgers-deal', 'XPRS Chapli Burgers Deal', 1658304518, 0),
(1010, -2, 1, '', 'XPRS Share Deal 1', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>2 XPRS Crispy Chicken Burgers, 2 Sufi Drink Cans, 1 Regular Fries</p>\r\n', '28190630.jpeg', 'XPRS Share Deal 1', 'XPRS Share Deal 1', 'xprs-share-deal-1', 'XPRS Share Deal 1', 1662034081, 0),
(1011, -1, 1, '', 'XPRS Share Deal 2', '', 'gm', 'PK', 0, 0, '', '', 0, 0, 0, '<p>4 XPRS Crispy Chicken Burgers, 4 Sufi Drink Cans, 2 Regular Fries</p>\r\n', '82196227.jpeg', 'XPRS Share Deal 2', 'XPRS Share Deal 2', 'xprs-share-deal-2', 'XPRS Share Deal 2', 1662034207, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_addons`
--

CREATE TABLE `product_addons` (
  `adid` int(6) NOT NULL,
  `pid` int(5) NOT NULL DEFAULT '0',
  `adpid` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_addons`
--

INSERT INTO `product_addons` (`adid`, `pid`, `adpid`) VALUES
(1, 37, 137),
(3, 37, 117),
(4, 1007, 0),
(5, 1008, 0),
(6, 1009, 0),
(7, 1010, 0),
(8, 1011, 0);

-- --------------------------------------------------------

--
-- Table structure for table `product_prices`
--

CREATE TABLE `product_prices` (
  `ppid` int(5) NOT NULL,
  `pid` int(5) NOT NULL DEFAULT '0',
  `cityid` int(5) NOT NULL DEFAULT '0',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ppstatus` tinyint(1) NOT NULL DEFAULT '0',
  `ppdate` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_prices`
--

INSERT INTO `product_prices` (`ppid`, `pid`, `cityid`, `price`, `ppstatus`, `ppdate`) VALUES
(1, 1, 2, '600.00', 0, 1625129226),
(2, 1, 3, '750.00', 0, 1625129226),
(3, 2, 2, '699.00', 0, 1625141240),
(4, 2, 3, '700.00', 0, 1625141240),
(5, 3, 2, '500.00', 0, 1627385671),
(6, 3, 3, '650.00', 0, 1627385671),
(7, 4, 2, '275.00', 0, 1628850588),
(8, 4, 3, '275.00', 0, 1628850588),
(9, 5, 2, '200.00', 0, 1628850661),
(10, 5, 3, '200.00', 0, 1628850661),
(11, 6, 2, '900.00', 0, 1629805474),
(12, 6, 3, '900.00', 0, 1629805474),
(13, 7, 2, '1000.00', 0, 1629805675),
(14, 7, 3, '1000.00', 0, 1629805675),
(15, 8, 2, '950.00', 0, 1629805776),
(16, 8, 3, '950.00', 0, 1629805776),
(17, 9, 2, '650.00', 0, 1629805877),
(18, 9, 3, '650.00', 0, 1629805877),
(19, 10, 2, '475.00', 0, 1629805964),
(20, 10, 3, '475.00', 0, 1629805964),
(21, 11, 2, '1375.00', 0, 1629806114),
(22, 11, 3, '1375.00', 0, 1629806114),
(23, 12, 2, '520.00', 0, 1629806196),
(24, 12, 3, '520.00', 0, 1629806196),
(25, 13, 2, '400.00', 0, 1629806265),
(26, 13, 3, '400.00', 0, 1629806265),
(27, 14, 2, '250.00', 0, 1629806395),
(28, 14, 3, '250.00', 0, 1629806395),
(29, 15, 2, '150.00', 0, 1629806506),
(30, 15, 3, '150.00', 0, 1629806506),
(31, 16, 2, '660.00', 0, 1629807234),
(32, 16, 3, '660.00', 0, 1629807234),
(33, 17, 2, '325.00', 0, 1629807509),
(34, 17, 3, '325.00', 0, 1629807509),
(35, 18, 2, '270.00', 0, 1629807631),
(36, 18, 3, '270.00', 0, 1629807631),
(37, 19, 2, '1900.00', 0, 1629807773),
(38, 19, 3, '1900.00', 0, 1629807773),
(39, 21, 2, '895.00', 0, 0),
(40, 21, 3, '895.00', 0, 0),
(41, 22, 2, '895.00', 0, 0),
(42, 22, 3, '895.00', 0, 0),
(43, 23, 2, '660.00', 0, 0),
(44, 23, 3, '660.00', 0, 0),
(45, 24, 2, '660.00', 0, 0),
(46, 24, 3, '660.00', 0, 0),
(47, 25, 2, '999.00', 0, 0),
(48, 25, 3, '999.00', 0, 0),
(49, 26, 2, '999.00', 0, 0),
(50, 26, 3, '999.00', 0, 0),
(51, 27, 2, '560.00', 0, 0),
(52, 27, 3, '560.00', 0, 0),
(53, 28, 2, '560.00', 0, 0),
(54, 28, 3, '560.00', 0, 0),
(55, 29, 2, '870.00', 0, 0),
(56, 29, 3, '870.00', 0, 0),
(57, 30, 2, '500.00', 0, 0),
(58, 30, 3, '500.00', 0, 0),
(59, 31, 2, '440.00', 0, 0),
(60, 31, 3, '440.00', 0, 0),
(61, 32, 2, '40.00', 0, 0),
(62, 32, 3, '40.00', 0, 0),
(63, 33, 2, '35.00', 0, 0),
(64, 33, 3, '35.00', 0, 0),
(65, 34, 2, '110.00', 0, 0),
(66, 34, 3, '110.00', 0, 0),
(67, 35, 2, '300.00', 0, 0),
(68, 35, 3, '300.00', 0, 0),
(69, 36, 2, '475.00', 0, 0),
(70, 36, 3, '475.00', 0, 0),
(71, 37, 2, '490.00', 0, 0),
(72, 37, 3, '490.00', 0, 0),
(73, 38, 2, '590.00', 0, 0),
(74, 38, 3, '590.00', 0, 0),
(75, 39, 2, '690.00', 0, 0),
(76, 39, 3, '690.00', 0, 0),
(77, 40, 2, '860.00', 0, 0),
(78, 40, 3, '860.00', 0, 0),
(79, 41, 2, '550.00', 0, 0),
(80, 41, 3, '550.00', 0, 0),
(81, 42, 2, '690.00', 0, 0),
(82, 42, 3, '690.00', 0, 0),
(83, 43, 2, '790.00', 0, 0),
(84, 43, 3, '790.00', 0, 0),
(85, 44, 2, '960.00', 0, 0),
(86, 44, 3, '960.00', 0, 0),
(87, 45, 2, '540.00', 0, 0),
(88, 45, 3, '540.00', 0, 0),
(89, 46, 2, '690.00', 0, 0),
(90, 46, 3, '690.00', 0, 0),
(91, 47, 2, '790.00', 0, 0),
(92, 47, 3, '790.00', 0, 0),
(93, 48, 2, '960.00', 0, 0),
(94, 48, 3, '960.00', 0, 0),
(95, 49, 2, '540.00', 0, 0),
(96, 49, 3, '540.00', 0, 0),
(97, 50, 2, '690.00', 0, 0),
(98, 50, 3, '690.00', 0, 0),
(99, 51, 2, '790.00', 0, 0),
(100, 51, 3, '790.00', 0, 0),
(101, 52, 2, '960.00', 0, 0),
(102, 52, 3, '960.00', 0, 0),
(103, 53, 2, '390.00', 0, 0),
(104, 53, 3, '390.00', 0, 0),
(105, 73, 2, '530.00', 0, 0),
(106, 73, 3, '530.00', 0, 0),
(107, 74, 2, '700.00', 0, 0),
(108, 74, 3, '700.00', 0, 0),
(109, 75, 2, '800.00', 0, 0),
(110, 75, 3, '800.00', 0, 0),
(111, 76, 2, '970.00', 0, 0),
(112, 76, 3, '970.00', 0, 0),
(113, 77, 2, '470.00', 0, 0),
(114, 77, 3, '470.00', 0, 0),
(115, 78, 2, '600.00', 0, 0),
(116, 78, 3, '600.00', 0, 0),
(117, 79, 2, '700.00', 0, 0),
(118, 79, 3, '700.00', 0, 0),
(119, 80, 2, '870.00', 0, 0),
(120, 80, 3, '870.00', 0, 0),
(121, 81, 2, '490.00', 0, 0),
(122, 81, 3, '490.00', 0, 0),
(123, 82, 2, '740.00', 0, 0),
(124, 82, 3, '740.00', 0, 0),
(125, 83, 2, '360.00', 0, 0),
(126, 83, 3, '360.00', 0, 0),
(127, 84, 2, '600.00', 0, 0),
(128, 84, 3, '600.00', 0, 0),
(129, 85, 2, '310.00', 0, 0),
(130, 85, 3, '310.00', 0, 0),
(131, 86, 2, '570.00', 0, 0),
(132, 86, 3, '570.00', 0, 0),
(133, 87, 2, '190.00', 0, 0),
(134, 87, 3, '190.00', 0, 0),
(135, 88, 2, '330.00', 0, 0),
(136, 88, 3, '330.00', 0, 0),
(137, 89, 2, '540.00', 0, 0),
(138, 89, 3, '540.00', 0, 0),
(139, 90, 2, '640.00', 0, 0),
(140, 90, 3, '640.00', 0, 0),
(141, 91, 2, '740.00', 0, 0),
(142, 91, 3, '740.00', 0, 0),
(143, 92, 2, '910.00', 0, 0),
(144, 92, 3, '910.00', 0, 0),
(145, 93, 2, '740.00', 0, 0),
(146, 93, 3, '740.00', 0, 0),
(147, 94, 2, '380.00', 0, 0),
(148, 94, 3, '380.00', 0, 0),
(149, 95, 2, '430.00', 0, 0),
(150, 95, 3, '430.00', 0, 0),
(151, 96, 2, '450.00', 0, 0),
(152, 96, 3, '450.00', 0, 0),
(153, 97, 2, '1200.00', 0, 0),
(154, 97, 3, '1200.00', 0, 0),
(155, 98, 2, '330.00', 0, 0),
(156, 98, 3, '330.00', 0, 0),
(157, 99, 2, '440.00', 0, 0),
(158, 99, 3, '440.00', 0, 0),
(159, 100, 2, '190.00', 0, 0),
(160, 100, 3, '190.00', 0, 0),
(161, 101, 2, '190.00', 0, 0),
(162, 101, 3, '190.00', 0, 0),
(163, 102, 2, '555.00', 0, 0),
(164, 102, 3, '555.00', 0, 0),
(165, 103, 2, '555.00', 0, 0),
(166, 103, 3, '555.00', 0, 0),
(167, 104, 2, '1600.00', 0, 0),
(168, 104, 3, '1600.00', 0, 0),
(169, 105, 2, '1600.00', 0, 0),
(170, 105, 3, '1600.00', 0, 0),
(171, 106, 2, '550.00', 0, 0),
(172, 106, 3, '550.00', 0, 0),
(173, 107, 2, '550.00', 0, 0),
(174, 107, 3, '550.00', 0, 0),
(175, 108, 2, '550.00', 0, 0),
(176, 108, 3, '550.00', 0, 0),
(177, 109, 2, '550.00', 0, 0),
(178, 109, 3, '550.00', 0, 0),
(179, 110, 2, '275.00', 0, 0),
(180, 110, 3, '275.00', 0, 0),
(181, 111, 2, '330.00', 0, 0),
(182, 111, 3, '330.00', 0, 0),
(183, 112, 2, '380.00', 0, 0),
(184, 112, 3, '380.00', 0, 0),
(185, 113, 2, '330.00', 0, 0),
(186, 113, 3, '330.00', 0, 0),
(187, 114, 2, '380.00', 0, 0),
(188, 114, 3, '380.00', 0, 0),
(189, 115, 2, '410.00', 0, 0),
(190, 115, 3, '410.00', 0, 0),
(191, 116, 2, '525.00', 0, 0),
(192, 116, 3, '525.00', 0, 0),
(193, 117, 2, '300.00', 0, 1629966862),
(194, 117, 3, '300.00', 0, 1629966862),
(195, 118, 2, '400.00', 0, 1629966902),
(196, 118, 3, '400.00', 0, 1629966902),
(197, 119, 2, '450.00', 0, 1629966944),
(198, 119, 3, '450.00', 0, 1629966944),
(199, 120, 2, '350.00', 0, 1629967240),
(200, 120, 3, '350.00', 0, 1629967240),
(201, 121, 2, '450.00', 0, 1629967278),
(202, 121, 3, '450.00', 0, 1629967278),
(203, 122, 2, '500.00', 0, 1629967312),
(204, 122, 3, '500.00', 0, 1629967312),
(205, 123, 2, '130.00', 0, 1630046026),
(206, 123, 3, '130.00', 0, 1630046026),
(207, 124, 2, '190.00', 0, 1630046062),
(208, 124, 3, '190.00', 0, 1630046062),
(209, 125, 2, '380.00', 0, 1630046372),
(210, 125, 3, '380.00', 0, 1630046372),
(211, 126, 2, '340.00', 0, 1630046402),
(212, 126, 3, '340.00', 0, 1630046402),
(213, 127, 2, '380.00', 0, 1630046434),
(214, 127, 3, '380.00', 0, 1630046434),
(215, 128, 2, '380.00', 0, 1630046532),
(216, 128, 3, '380.00', 0, 1630046532),
(217, 129, 2, '380.00', 0, 1630046580),
(218, 129, 3, '380.00', 0, 1630046580),
(219, 130, 2, '380.00', 0, 1630046622),
(220, 130, 3, '380.00', 0, 1630046622),
(221, 131, 2, '175.00', 0, 1630047186),
(222, 131, 3, '175.00', 0, 1630047186),
(223, 132, 2, '175.00', 0, 1630047794),
(224, 132, 3, '175.00', 0, 1630047794),
(225, 133, 2, '250.00', 0, 1630047913),
(226, 133, 3, '250.00', 0, 1630047913),
(227, 134, 2, '350.00', 0, 1630048082),
(228, 134, 3, '350.00', 0, 1630048082),
(229, 135, 2, '380.00', 0, 1630048200),
(230, 135, 3, '380.00', 0, 1630048200),
(231, 136, 2, '270.00', 0, 1630048254),
(232, 136, 3, '270.00', 0, 1630048254),
(233, 137, 2, '190.00', 0, 1630048376),
(234, 137, 3, '190.00', 0, 1630048376),
(235, 138, 2, '240.00', 0, 1630048402),
(236, 138, 3, '240.00', 0, 1630048402),
(237, 139, 2, '290.00', 0, 1630048425),
(238, 139, 3, '290.00', 0, 1630048425),
(239, 140, 2, '100.00', 0, 1630048453),
(240, 140, 3, '100.00', 0, 1630048453),
(241, 141, 2, '100.00', 0, 1630048800),
(242, 141, 3, '100.00', 0, 1630048800),
(243, 142, 2, '80.00', 0, 1630048910),
(244, 142, 3, '80.00', 0, 1630048910),
(245, 143, 2, '80.00', 0, 1630049020),
(246, 143, 3, '80.00', 0, 1630049020),
(247, 144, 2, '35.00', 0, 1630049133),
(248, 144, 3, '35.00', 0, 1630049133),
(249, 145, 2, '650.00', 0, 1648447850),
(250, 145, 3, '650.00', 0, 1648447850),
(251, 146, 2, '600.00', 0, 1648447930),
(252, 146, 3, '600.00', 0, 1648447930),
(253, 147, 2, '600.00', 0, 1648448036),
(254, 147, 3, '600.00', 0, 1648448036),
(255, 148, 2, '750.00', 0, 1651131141),
(256, 148, 3, '750.00', 0, 1651131141),
(257, 149, 2, '750.00', 0, 1651131301),
(258, 149, 3, '750.00', 0, 1651131301),
(259, 150, 2, '180.00', 0, 1651348064),
(260, 150, 3, '180.00', 0, 1651348064),
(261, 151, 2, '2050.00', 0, 1651349526),
(262, 151, 3, '2050.00', 0, 1651349526),
(263, 152, 2, '2100.00', 0, 1651349663),
(264, 152, 3, '2100.00', 0, 1651349663),
(265, 153, 2, '1850.00', 0, 1651349840),
(266, 153, 3, '1850.00', 0, 1651349840),
(267, 154, 2, '350.00', 0, 1651350052),
(268, 154, 3, '350.00', 0, 1651350052),
(269, 155, 2, '320.00', 0, 1651351138),
(270, 155, 3, '320.00', 0, 1651351138),
(271, 156, 2, '750.00', 0, 1651900685),
(272, 156, 3, '750.00', 0, 1651900685),
(273, 157, 2, '750.00', 0, 1651900840),
(274, 157, 3, '750.00', 0, 1651900840),
(275, 1007, 2, '1000.00', 0, 1658304518),
(276, 1007, 3, '1000.00', 0, 1658304518),
(277, 1008, 2, '500.00', 0, 1659430840),
(278, 1008, 3, '500.00', 0, 1659430840),
(279, 1009, 2, '600.00', 0, 1659431008),
(280, 1009, 3, '600.00', 0, 1659431008),
(281, 1010, 2, '850.00', 0, 1662034081),
(282, 1010, 3, '850.00', 0, 1662034081),
(283, 1011, 2, '1700.00', 0, 1662034207),
(284, 1011, 3, '1700.00', 0, 1662034207);

-- --------------------------------------------------------

--
-- Table structure for table `recentview`
--

CREATE TABLE `recentview` (
  `rvid` int(8) NOT NULL,
  `pid` int(6) NOT NULL DEFAULT '0',
  `custid` int(6) NOT NULL DEFAULT '0',
  `rvdate` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `redeemed_products`
--

CREATE TABLE `redeemed_products` (
  `id` int(11) NOT NULL,
  `redeem_code_id` int(11) NOT NULL,
  `redeem_pid` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `redeemed_products`
--

INSERT INTO `redeemed_products` (`id`, `redeem_code_id`, `redeem_pid`, `cust_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 45, '2021-12-26 22:54:56', '2021-12-26 22:54:56'),
(2, 2, 1, 45, '2021-12-26 22:55:01', '2021-12-26 22:55:01'),
(3, 1, 1, 45, '2021-12-26 22:57:25', '2021-12-26 22:57:25'),
(4, 1, 1, 45, '2021-12-26 22:58:23', '2021-12-26 22:58:23'),
(5, 3, 1, 49, '2021-12-30 02:40:43', '2021-12-30 02:40:43'),
(6, 4, 1, 49, '2021-12-30 02:41:02', '2021-12-30 02:41:02'),
(7, 5, 1, 49, '2021-12-30 20:50:38', '2021-12-30 20:50:38'),
(8, 6, 1, 49, '2021-12-30 20:57:33', '2021-12-30 20:57:33'),
(9, 7, 2, 49, '2021-12-30 21:26:13', '2021-12-30 21:26:13'),
(10, 8, 2, 49, '2021-12-30 21:34:34', '2021-12-30 21:34:34'),
(11, 9, 2, 49, '2021-12-30 21:35:12', '2021-12-30 21:35:12'),
(12, 10, 2, 49, '2022-01-03 21:50:15', '2022-01-03 21:50:15'),
(13, 11, 2, 49, '2022-01-04 21:45:52', '2022-01-04 21:45:52'),
(14, 12, 2, 49, '2022-01-04 21:48:05', '2022-01-04 21:48:05'),
(15, 13, 2, 49, '2022-01-04 21:50:59', '2022-01-04 21:50:59'),
(16, 14, 2, 49, '2022-01-04 22:05:24', '2022-01-04 22:05:24'),
(17, 39, 2, 49, '2022-01-05 22:19:51', '2022-01-05 22:19:51'),
(18, 15, 3, 49, '2022-01-05 22:30:10', '2022-01-05 22:30:10'),
(19, 40, 2, 49, '2022-01-06 16:58:26', '2022-01-06 16:58:26'),
(20, 41, 2, 49, '2022-01-06 16:58:34', '2022-01-06 16:58:34'),
(21, 16, 3, 49, '2022-01-06 17:45:13', '2022-01-06 17:45:13'),
(22, 17, 3, 49, '2022-01-06 17:46:22', '2022-01-06 17:46:22'),
(23, 18, 3, 49, '2022-01-07 19:17:13', '2022-01-07 19:17:13'),
(24, 42, 1, 321, '2022-03-10 17:32:06', '2022-03-10 17:32:06'),
(25, 43, 1, 321, '2022-03-10 22:47:54', '2022-03-10 22:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `redeem_codes`
--

CREATE TABLE `redeem_codes` (
  `id` int(11) NOT NULL,
  `redeemed_pid` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `redeem_codes`
--

INSERT INTO `redeem_codes` (`id`, `redeemed_pid`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'ABC123', 1, '2021-12-26 11:51:13', '2021-12-26 11:51:13'),
(2, 1, 'XYZ123', 1, '2021-12-26 11:51:13', '2021-12-26 11:51:13'),
(3, 1, 'JASJAKSJAKJ', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(4, 1, 'DSDSDHJSDHJS', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(5, 1, 'JDSJDKKHSJSWI', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(6, 1, 'JDSKDOSSKMDKSJDJSD', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(7, 2, 'DSJSJDSDJKSD', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(8, 2, 'SJCSDJKSJC', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(9, 2, 'SDJKJDKSJD', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(10, 2, 'DSKJDKSJDKJS', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(11, 2, 'DSJDHJSOOOWWW', 1, '2021-12-29 14:05:43', '2021-12-29 14:05:43'),
(12, 2, 'OOPIWNWJUDJD', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(13, 2, 'DSJDKJSKKOOKSJD', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(14, 2, 'JJJKKLJJJNJMNH', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(15, 3, 'JJJMJDIMDIM', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(16, 3, 'NDNDNDJNJDNJD', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(17, 3, 'KCKJSKJCKSJ', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(18, 3, 'JKMKJMJNNNN', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(19, 3, 'POPOPOMJ', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(20, 3, 'MMCKCMSOOM', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(21, 3, 'DKFJDFJKD', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(22, 3, 'KCKJDKJDPO', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(23, 3, 'NDVNMKFVDNVDM', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(24, 3, 'CCCCCJJ', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(25, 3, 'POOOSNDJNJ', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(26, 3, 'KFJKJDFDSJFKS', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(27, 3, 'NMVJVJVJVJ', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(28, 3, 'FDKJFDJFKJDF', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(29, 3, 'DKJDSJND', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(30, 3, 'POODNFDFD', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(31, 3, 'OIOOINDFJ', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(32, 3, 'KFKKDOFKOJNJ', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(33, 3, 'JJJFJIDJME', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(34, 3, 'JJVDKJCVID', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(35, 3, 'VJJIDMVIOEJS', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(36, 3, 'VKXKVJCXJI', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(37, 3, 'VODOKVDOVKDI', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(38, 3, 'MMMSVISJVNI3', 0, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(39, 2, 'KFDOKFODJFE', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(40, 2, 'MVKXVMXKMVI', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(41, 2, 'VJIDJVDIVJC', 1, '2021-12-29 14:09:51', '2021-12-29 14:09:51'),
(42, 1, 'TESTCODE0012', 1, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(43, 1, 'TESTCODE213', 1, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(44, 1, 'TESTCODE0132', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(45, 1, 'TESTCODE1232', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(46, 2, 'TESTCODE493', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(47, 2, 'TESTCODE4934', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(48, 2, 'TESTCODE432', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(49, 2, 'TESTCODE323', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(50, 2, 'TESTCODE4343', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07'),
(51, 2, 'TESTCODE9434', 0, '2022-03-10 06:31:07', '2022-03-10 06:31:07');

-- --------------------------------------------------------

--
-- Table structure for table `redeem_products`
--

CREATE TABLE `redeem_products` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `redeem_points` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `redeem_products`
--

INSERT INTO `redeem_products` (`id`, `pid`, `redeem_points`, `description`) VALUES
(1, 6, 50, 'Testing 123'),
(2, 7, 200, 'this is a test product '),
(3, 8, 350, 'this is a test product for redemption'),
(4, 9, 100, 'this is product for redemption'),
(5, 10, 120, 'this is product for redemption'),
(6, 11, 150, 'this is product for redemption'),
(7, 14, 10000, 'This is a free product that could be redeemed against points you have in your wallet');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '042-111-779-977',
  `longitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `latitude` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `address`, `phone`, `longitude`, `latitude`) VALUES
(2, 'F7 College Road, Islamabad', 'F7 College Road, Islamabad', '051-111-779-977', '73.052495', '33.7197932'),
(3, 'Bhera Food Forum M2 Northside, Islamabad', 'Bhera Food Forum M2 Northside, Islamabad', '051-111-779-977', '72.885865', '32.453703'),
(4, 'Bhera Service Area M2 Southside, Islamabad', 'Bhera Service Area M2 Southside, Islamabad', '051-111-779-977', '72.887726', '32.454994'),
(5, 'Food court Emporium Mall, Lahore', 'Food court Emporium Mall, Lahore', '042-111-779-977', '74.266136', '31.466718'),
(6, 'Food Court Packages Mall, Lahore', 'Food Court Packages Mall, Lahore', '042-111-779-977', '74.356494', '31.471753'),
(7, 'DD C 5, Sector J Phase 6, Lahore', 'DD C 5, Sector J Phase 6, Lahore', '042-111-779-977', '74.455537', '31.479259'),
(8, 'Food Court, Gigga Mall, Islamabad', 'Food Court, Gigga Mall, Islamabad', '051-111-779-977', '73.157594', '33.521616'),
(9, 'Main Blvd Pak Block, Allama Iqbal Town, Lahore', 'Main Blvd Pak Block, Allama Iqbal Town, Lahore', '042-111-779-977', '74.297054', '31.514654'),
(10, 'Shop#30, Mini Market Cavalry Ground, Near Khalid M', 'Shop#30, Mini Market Cavalry Ground, Near Khalid Masjid, Lahore', '042-111-779-977', '74.366889', '31.498885'),
(11, 'Shop # 51, Block-H Phase 1, DHA, Lahore', 'Shop # 51, Block-H Phase 1, DHA, Lahore', '042-111-779-977', '74.354867', '31.469957');

-- --------------------------------------------------------

--
-- Table structure for table `returndetail`
--

CREATE TABLE `returndetail` (
  `rtdid` int(6) NOT NULL,
  `rtid` int(6) NOT NULL DEFAULT '0',
  `oid` int(6) NOT NULL DEFAULT '0',
  `custid` int(6) NOT NULL DEFAULT '0',
  `pid` int(6) DEFAULT '0',
  `qty` int(6) NOT NULL DEFAULT '0',
  `rttotalprice` varchar(15) NOT NULL DEFAULT '',
  `rtrewardpoints` varchar(15) NOT NULL DEFAULT '',
  `rtdate` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `returns`
--

CREATE TABLE `returns` (
  `rtid` int(6) NOT NULL,
  `oid` int(6) NOT NULL DEFAULT '0',
  `custid` int(6) NOT NULL DEFAULT '0',
  `rtreason` varchar(35) NOT NULL DEFAULT '',
  `rtcomments` longtext NOT NULL,
  `rtdate` int(15) NOT NULL DEFAULT '0',
  `rtstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rid` int(8) NOT NULL,
  `pid` int(8) DEFAULT '0',
  `custid` int(5) DEFAULT '0',
  `name` varchar(75) DEFAULT '',
  `email` varchar(75) DEFAULT '',
  `comments` longtext,
  `rating` tinyint(1) DEFAULT '0',
  `rstatus` tinyint(1) DEFAULT '0',
  `rdate` int(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rewardpoints`
--

CREATE TABLE `rewardpoints` (
  `rpid` int(6) NOT NULL,
  `custid` int(6) NOT NULL DEFAULT '0',
  `oid` int(6) NOT NULL DEFAULT '0',
  `rpdetail` varchar(175) NOT NULL DEFAULT '',
  `received` int(5) NOT NULL DEFAULT '0',
  `used` int(5) NOT NULL DEFAULT '0',
  `pointbalance` int(6) NOT NULL DEFAULT '0',
  `rpstatus` tinyint(1) NOT NULL DEFAULT '0',
  `rpdate` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `riders`
--

CREATE TABLE `riders` (
  `ridid` int(5) NOT NULL,
  `id` int(3) NOT NULL DEFAULT '0',
  `riname` varchar(150) NOT NULL DEFAULT '',
  `riemail` varchar(50) NOT NULL DEFAULT '',
  `rimobile` varchar(50) NOT NULL DEFAULT '',
  `riaddress` varchar(255) NOT NULL DEFAULT '',
  `ricity` varchar(50) NOT NULL DEFAULT '',
  `rilat` varchar(50) NOT NULL DEFAULT '',
  `rilong` varchar(50) NOT NULL DEFAULT '',
  `ristatus` tinyint(1) NOT NULL DEFAULT '0',
  `ridate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `riders`
--

INSERT INTO `riders` (`ridid`, `id`, `riname`, `riemail`, `rimobile`, `riaddress`, `ricity`, `rilat`, `rilong`, `ristatus`, `ridate`) VALUES
(1, 5, 'Emporium Rider 1', 'rider@gmail.com', '03001456789', 'test address', 'Lahore', '', '', 0, '2022-07-26 13:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `rightid` int(5) NOT NULL,
  `uid` int(5) NOT NULL DEFAULT '0',
  `addcategory` tinyint(1) NOT NULL DEFAULT '0',
  `editcategory` tinyint(1) NOT NULL DEFAULT '0',
  `deletecategory` tinyint(1) NOT NULL DEFAULT '0',
  `addproduct` tinyint(1) NOT NULL DEFAULT '0',
  `editproduct` tinyint(1) NOT NULL DEFAULT '0',
  `deleteproduct` tinyint(1) NOT NULL DEFAULT '0',
  `addcustomer` tinyint(1) NOT NULL DEFAULT '0',
  `editcustomer` tinyint(1) NOT NULL DEFAULT '0',
  `deletecustomer` tinyint(1) NOT NULL DEFAULT '0',
  `exportcustomer` tinyint(1) NOT NULL DEFAULT '0',
  `bulknotification` tinyint(1) NOT NULL DEFAULT '0',
  `orders` tinyint(1) NOT NULL,
  `updateorder` tinyint(1) NOT NULL DEFAULT '0',
  `dailysale` tinyint(1) NOT NULL DEFAULT '0',
  `salebyproduct` tinyint(1) NOT NULL DEFAULT '0',
  `salebycustomer` tinyint(1) NOT NULL DEFAULT '0',
  `banners` tinyint(1) NOT NULL DEFAULT '0',
  `locations` tinyint(1) NOT NULL DEFAULT '0',
  `udate` int(15) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`rightid`, `uid`, `addcategory`, `editcategory`, `deletecategory`, `addproduct`, `editproduct`, `deleteproduct`, `addcustomer`, `editcustomer`, `deletecustomer`, `exportcustomer`, `bulknotification`, `orders`, `updateorder`, `dailysale`, `salebyproduct`, `salebycustomer`, `banners`, `locations`, `udate`) VALUES
(3, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1389337577),
(5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1649401378),
(6, 6, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1650101162);

-- --------------------------------------------------------

--
-- Table structure for table `temporder`
--

CREATE TABLE `temporder` (
  `tmpid` int(6) NOT NULL,
  `sessionid` varchar(50) DEFAULT '',
  `totalqty` tinyint(5) DEFAULT '0',
  `totalprice` varchar(15) DEFAULT '',
  `ptype` tinyint(1) DEFAULT '0',
  `othercharges` varchar(15) DEFAULT '',
  `rewardtype` tinyint(1) DEFAULT '0',
  `distype` tinyint(1) DEFAULT '0',
  `rewardpoints` varchar(15) DEFAULT '',
  `disid` int(6) DEFAULT '0',
  `discount` varchar(15) DEFAULT '',
  `giftwrap` varchar(50) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `tid` int(6) NOT NULL,
  `name` varchar(150) NOT NULL DEFAULT '',
  `comment` longtext NOT NULL,
  `image` varchar(150) NOT NULL DEFAULT '',
  `comment_date` int(15) NOT NULL DEFAULT '0',
  `tdate` int(15) NOT NULL DEFAULT '0',
  `tstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(5) NOT NULL,
  `id` int(3) NOT NULL DEFAULT '0',
  `username` varchar(35) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `email` varchar(35) DEFAULT '',
  `fullname` varchar(35) DEFAULT '',
  `utype` tinyint(1) DEFAULT '0',
  `phoneno` varchar(35) DEFAULT '',
  `mobileno` varchar(35) DEFAULT '',
  `uaddress` longtext,
  `ustatus` tinyint(1) DEFAULT '0',
  `udate` int(15) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `id`, `username`, `password`, `email`, `fullname`, `utype`, `phoneno`, `mobileno`, `uaddress`, `ustatus`, `udate`) VALUES
(3, 0, 'admin', '5661a80713abfe1198ea9316624bf5a0', 'info@simplysufi.com', 'Admin', 0, '0423-12345667', '03001234567', 'Address', 0, 1389337577),
(5, 0, 'mohsin', 'd38509b02c3af7545dc345630382cdeb', 'mohsin.raza01@live.com', 'Mohsin Raza', 1, '+441234567', '+441234567', 'address 2', 0, 1649401378),
(6, 0, 'adnan', 'fd1853046307d6571465c2a145565363', 'm.adnan@simplysufi.com', 'M. Adnan', 1, '321 4801462', '321 4801462', 'Address', 0, 1650101162);

-- --------------------------------------------------------

--
-- Table structure for table `whishlist`
--

CREATE TABLE `whishlist` (
  `wid` int(8) NOT NULL,
  `pid` int(6) NOT NULL DEFAULT '0',
  `custid` int(6) NOT NULL DEFAULT '0',
  `wdate` int(15) NOT NULL DEFAULT '0',
  `wstatus` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whishlist`
--

INSERT INTO `whishlist` (`wid`, `pid`, `custid`, `wdate`, `wstatus`) VALUES
(5, 8, 6, 1570263035, 0),
(6, 3, 6, 1571197983, 0),
(7, 9, 6, 1571198147, 0),
(8, 7, 6, 1571198261, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `app_promotions`
--
ALTER TABLE `app_promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `bulk_notification`
--
ALTER TABLE `bulk_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`cityid`);

--
-- Indexes for table `courier`
--
ALTER TABLE `courier`
  ADD PRIMARY KEY (`couid`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`disid`);

--
-- Indexes for table `discountuse`
--
ALTER TABLE `discountuse`
  ADD PRIMARY KEY (`disuid`);

--
-- Indexes for table `draw`
--
ALTER TABLE `draw`
  ADD PRIMARY KEY (`drawid`);

--
-- Indexes for table `earned_points`
--
ALTER TABLE `earned_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`imgid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderremarks`
--
ALTER TABLE `orderremarks`
  ADD PRIMARY KEY (`orid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`ostatus`);

--
-- Indexes for table `ordertotal`
--
ALTER TABLE `ordertotal`
  ADD PRIMARY KEY (`odid`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `product_addons`
--
ALTER TABLE `product_addons`
  ADD PRIMARY KEY (`adid`);

--
-- Indexes for table `product_prices`
--
ALTER TABLE `product_prices`
  ADD PRIMARY KEY (`ppid`);

--
-- Indexes for table `recentview`
--
ALTER TABLE `recentview`
  ADD PRIMARY KEY (`rvid`);

--
-- Indexes for table `redeemed_products`
--
ALTER TABLE `redeemed_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_codes`
--
ALTER TABLE `redeem_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem_products`
--
ALTER TABLE `redeem_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `returndetail`
--
ALTER TABLE `returndetail`
  ADD PRIMARY KEY (`rtdid`);

--
-- Indexes for table `returns`
--
ALTER TABLE `returns`
  ADD PRIMARY KEY (`rtid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `rewardpoints`
--
ALTER TABLE `rewardpoints`
  ADD PRIMARY KEY (`rpid`);

--
-- Indexes for table `riders`
--
ALTER TABLE `riders`
  ADD PRIMARY KEY (`ridid`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`rightid`);

--
-- Indexes for table `temporder`
--
ALTER TABLE `temporder`
  ADD PRIMARY KEY (`tmpid`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `whishlist`
--
ALTER TABLE `whishlist`
  ADD PRIMARY KEY (`wid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ads`
--
ALTER TABLE `ads`
  MODIFY `adid` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_promotions`
--
ALTER TABLE `app_promotions`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `bid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `bulk_notification`
--
ALTER TABLE `bulk_notification`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cartid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1590;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `cityid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `courier`
--
ALTER TABLE `courier`
  MODIFY `couid` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `custid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2696;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `disid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discountuse`
--
ALTER TABLE `discountuse`
  MODIFY `disuid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `draw`
--
ALTER TABLE `draw`
  MODIFY `drawid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `earned_points`
--
ALTER TABLE `earned_points`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `imgid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3700;

--
-- AUTO_INCREMENT for table `orderremarks`
--
ALTER TABLE `orderremarks`
  MODIFY `orid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1194;

--
-- AUTO_INCREMENT for table `ordertotal`
--
ALTER TABLE `ordertotal`
  MODIFY `odid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1012;

--
-- AUTO_INCREMENT for table `product_addons`
--
ALTER TABLE `product_addons`
  MODIFY `adid` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_prices`
--
ALTER TABLE `product_prices`
  MODIFY `ppid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `recentview`
--
ALTER TABLE `recentview`
  MODIFY `rvid` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `redeemed_products`
--
ALTER TABLE `redeemed_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `redeem_codes`
--
ALTER TABLE `redeem_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `redeem_products`
--
ALTER TABLE `redeem_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `returndetail`
--
ALTER TABLE `returndetail`
  MODIFY `rtdid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returns`
--
ALTER TABLE `returns`
  MODIFY `rtid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rid` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewardpoints`
--
ALTER TABLE `rewardpoints`
  MODIFY `rpid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riders`
--
ALTER TABLE `riders`
  MODIFY `ridid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `rightid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `temporder`
--
ALTER TABLE `temporder`
  MODIFY `tmpid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `tid` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `whishlist`
--
ALTER TABLE `whishlist`
  MODIFY `wid` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
