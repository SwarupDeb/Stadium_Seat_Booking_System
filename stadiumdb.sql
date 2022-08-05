-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 20, 2022 at 06:34 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stadiumdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `cboxe` ()  begin
declare start int default 1;
while start <=25 do
insert into corporateboxeast(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `cboxw` ()  begin
declare start int default 1;
while start <=25 do
insert into corporateboxwest(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ge` ()  begin
declare start int default 1;
while start <=100 do
insert into generaleast(seat_num) values(start);
set start = start + 1;
 end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `gw` ()  begin
declare start int default 1;
while start <=100 do
insert into generalwest(seat_num) values(start);
set start = start + 1;
 end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `ine` ()  begin
declare start int default 1;
while start <=50 do
insert into internationaleast(seat_num) values(start);
set start = start + 1;
 end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inw` ()  begin
declare start int default 1;
while start <=50 do
insert into interenationalwest(seat_num) values(start);
set start = start + 1;
 end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pseat1` ()  begin
declare start int default 1;
while start <=30 do
insert into platinumseat(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pseate` ()  begin
declare start int default 1;
while start <=25 do
insert into premiumseateast(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `pseatw` ()  begin
declare start int default 1;
while start <=25 do
insert into premiumseatwest(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `rlbox` ()  begin
declare start int default 1;
while start <=20 do
insert into royalbox(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vboxe` ()  begin
declare start int default 1;
while start <=20 do
insert into vipboxeast(seat_num) values(start);
set start = start + 1;
end while;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `vboxw` ()  begin
declare start int default 1;
while start <=20 do
 insert into vipboxwest(seat_num) values(start);
set start = start + 1;
end while;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_name`, `admin_pass`) VALUES
(1, 'admin', 'admin@123');

-- --------------------------------------------------------

--
-- Table structure for table `availfood`
--

CREATE TABLE `availfood` (
  `item` varchar(50) DEFAULT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `availfood`
--

INSERT INTO `availfood` (`item`, `price`) VALUES
('Coke', 40),
('Sprite', 40),
('Popcorn Small', 25),
('Popcorn Medium', 40),
('Popcorn Large', 55);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `user_id` int(11) DEFAULT NULL,
  `event` varchar(50) NOT NULL,
  `seat_type` varchar(50) NOT NULL,
  `seat_num1` int(11) DEFAULT NULL,
  `seat_num2` int(11) DEFAULT NULL,
  `seat_num3` int(11) DEFAULT NULL,
  `seat_num4` int(11) DEFAULT NULL,
  `seat_num5` int(11) DEFAULT NULL,
  `amt` bigint(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL CHECK (`status` in ('Pending','Paid')),
  `food_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`user_id`, `event`, `seat_type`, `seat_num1`, `seat_num2`, `seat_num3`, `seat_num4`, `seat_num5`, `amt`, `status`, `food_id`) VALUES
(1, 'India', 'Platinum Seats', 1, NULL, NULL, NULL, NULL, NULL, 'Pending', 1),
(1, 'India', 'Platinum Seats', 6, NULL, NULL, NULL, NULL, NULL, 'Pending', 140);

-- --------------------------------------------------------

--
-- Table structure for table `corporateboxeast`
--

CREATE TABLE `corporateboxeast` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corporateboxeast`
--

INSERT INTO `corporateboxeast` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `corporateboxwest`
--

CREATE TABLE `corporateboxwest` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `corporateboxwest`
--

INSERT INTO `corporateboxwest` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `food_order`
--

CREATE TABLE `food_order` (
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `item1` varchar(20) DEFAULT NULL,
  `item2` varchar(20) DEFAULT NULL,
  `item3` varchar(20) DEFAULT NULL,
  `item4` varchar(20) DEFAULT NULL,
  `item5` varchar(20) DEFAULT NULL,
  `amt` bigint(20) DEFAULT NULL,
  `food_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_order`
--

INSERT INTO `food_order` (`user_id`, `order_id`, `item1`, `item2`, `item3`, `item4`, `item5`, `amt`, `food_id`) VALUES
(NULL, NULL, 'coke*2', NULL, NULL, NULL, NULL, 80, 4);

-- --------------------------------------------------------

--
-- Table structure for table `generaleast`
--

CREATE TABLE `generaleast` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generaleast`
--

INSERT INTO `generaleast` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1),
(26, 1, 1, 1),
(27, 1, 1, 1),
(28, 1, 1, 1),
(29, 1, 1, 1),
(30, 1, 1, 1),
(31, 1, 1, 1),
(32, 1, 1, 1),
(33, 1, 1, 1),
(34, 1, 1, 1),
(35, 1, 1, 1),
(36, 1, 1, 1),
(37, 1, 1, 1),
(38, 1, 1, 1),
(39, 1, 1, 1),
(40, 1, 1, 1),
(41, 1, 1, 1),
(42, 1, 1, 1),
(43, 1, 1, 1),
(44, 1, 1, 1),
(45, 1, 1, 1),
(46, 1, 1, 1),
(47, 1, 1, 1),
(48, 1, 1, 1),
(49, 1, 1, 1),
(50, 1, 1, 1),
(51, 1, 1, 1),
(52, 1, 1, 1),
(53, 1, 1, 1),
(54, 1, 1, 1),
(55, 1, 1, 1),
(56, 1, 1, 1),
(57, 1, 1, 1),
(58, 1, 1, 1),
(59, 1, 1, 1),
(60, 1, 1, 1),
(61, 1, 1, 1),
(62, 1, 1, 1),
(63, 1, 1, 1),
(64, 1, 1, 1),
(65, 1, 1, 1),
(66, 1, 1, 1),
(67, 1, 1, 1),
(68, 1, 1, 1),
(69, 1, 1, 1),
(70, 1, 1, 1),
(71, 1, 1, 1),
(72, 1, 1, 1),
(73, 1, 1, 1),
(74, 1, 1, 1),
(75, 1, 1, 1),
(76, 1, 1, 1),
(77, 1, 1, 1),
(78, 1, 1, 1),
(79, 1, 1, 1),
(80, 1, 1, 1),
(81, 1, 1, 1),
(82, 1, 1, 1),
(83, 1, 1, 1),
(84, 1, 1, 1),
(85, 1, 1, 1),
(86, 1, 1, 1),
(87, 1, 1, 1),
(88, 1, 1, 1),
(89, 1, 1, 1),
(90, 1, 1, 1),
(91, 1, 1, 1),
(92, 1, 1, 1),
(93, 1, 1, 1),
(94, 1, 1, 1),
(95, 1, 1, 1),
(96, 1, 1, 1),
(97, 1, 1, 1),
(98, 1, 1, 1),
(99, 1, 1, 1),
(100, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `generalwest`
--

CREATE TABLE `generalwest` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `generalwest`
--

INSERT INTO `generalwest` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1),
(26, 1, 1, 1),
(27, 1, 1, 1),
(28, 1, 1, 1),
(29, 1, 1, 1),
(30, 1, 1, 1),
(31, 1, 1, 1),
(32, 1, 1, 1),
(33, 1, 1, 1),
(34, 1, 1, 1),
(35, 1, 1, 1),
(36, 1, 1, 1),
(37, 1, 1, 1),
(38, 1, 1, 1),
(39, 1, 1, 1),
(40, 1, 1, 1),
(41, 1, 1, 1),
(42, 1, 1, 1),
(43, 1, 1, 1),
(44, 1, 1, 1),
(45, 1, 1, 1),
(46, 1, 1, 1),
(47, 1, 1, 1),
(48, 1, 1, 1),
(49, 1, 1, 1),
(50, 1, 1, 1),
(51, 1, 1, 1),
(52, 1, 1, 1),
(53, 1, 1, 1),
(54, 1, 1, 1),
(55, 1, 1, 1),
(56, 1, 1, 1),
(57, 1, 1, 1),
(58, 1, 1, 1),
(59, 1, 1, 1),
(60, 1, 1, 1),
(61, 1, 1, 1),
(62, 1, 1, 1),
(63, 1, 1, 1),
(64, 1, 1, 1),
(65, 1, 1, 1),
(66, 1, 1, 1),
(67, 1, 1, 1),
(68, 1, 1, 1),
(69, 1, 1, 1),
(70, 1, 1, 1),
(71, 1, 1, 1),
(72, 1, 1, 1),
(73, 1, 1, 1),
(74, 1, 1, 1),
(75, 1, 1, 1),
(76, 1, 1, 1),
(77, 1, 1, 1),
(78, 1, 1, 1),
(79, 1, 1, 1),
(80, 1, 1, 1),
(81, 1, 1, 1),
(82, 1, 1, 1),
(83, 1, 1, 1),
(84, 1, 1, 1),
(85, 1, 1, 1),
(86, 1, 1, 1),
(87, 1, 1, 1),
(88, 1, 1, 1),
(89, 1, 1, 1),
(90, 1, 1, 1),
(91, 1, 1, 1),
(92, 1, 1, 1),
(93, 1, 1, 1),
(94, 1, 1, 1),
(95, 1, 1, 1),
(96, 1, 1, 1),
(97, 1, 1, 1),
(98, 1, 1, 1),
(99, 1, 1, 1),
(100, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interenationalwest`
--

CREATE TABLE `interenationalwest` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `interenationalwest`
--

INSERT INTO `interenationalwest` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1),
(26, 1, 1, 1),
(27, 1, 1, 1),
(28, 1, 1, 1),
(29, 1, 1, 1),
(30, 1, 1, 1),
(31, 1, 1, 1),
(32, 1, 1, 1),
(33, 1, 1, 1),
(34, 1, 1, 1),
(35, 1, 1, 1),
(36, 1, 1, 1),
(37, 1, 1, 1),
(38, 1, 1, 1),
(39, 1, 1, 1),
(40, 1, 1, 1),
(41, 1, 1, 1),
(42, 1, 1, 1),
(43, 1, 1, 1),
(44, 1, 1, 1),
(45, 1, 1, 1),
(46, 1, 1, 1),
(47, 1, 1, 1),
(48, 1, 1, 1),
(49, 1, 1, 1),
(50, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `internationaleast`
--

CREATE TABLE `internationaleast` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `internationaleast`
--

INSERT INTO `internationaleast` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1),
(26, 1, 1, 1),
(27, 1, 1, 1),
(28, 1, 1, 1),
(29, 1, 1, 1),
(30, 1, 1, 1),
(31, 1, 1, 1),
(32, 1, 1, 1),
(33, 1, 1, 1),
(34, 1, 1, 1),
(35, 1, 1, 1),
(36, 1, 1, 1),
(37, 1, 1, 1),
(38, 1, 1, 1),
(39, 1, 1, 1),
(40, 1, 1, 1),
(41, 1, 1, 1),
(42, 1, 1, 1),
(43, 1, 1, 1),
(44, 1, 1, 1),
(45, 1, 1, 1),
(46, 1, 1, 1),
(47, 1, 1, 1),
(48, 1, 1, 1),
(49, 1, 1, 1),
(50, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `platinumseat`
--

CREATE TABLE `platinumseat` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `platinumseat`
--

INSERT INTO `platinumseat` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 0, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 0, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1),
(26, 1, 1, 1),
(27, 1, 1, 1),
(28, 1, 1, 1),
(29, 1, 1, 1),
(30, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `premiumseateast`
--

CREATE TABLE `premiumseateast` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premiumseateast`
--

INSERT INTO `premiumseateast` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `premiumseatwest`
--

CREATE TABLE `premiumseatwest` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `premiumseatwest`
--

INSERT INTO `premiumseatwest` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1),
(21, 1, 1, 1),
(22, 1, 1, 1),
(23, 1, 1, 1),
(24, 1, 1, 1),
(25, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `royalbox`
--

CREATE TABLE `royalbox` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `royalbox`
--

INSERT INTO `royalbox` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sportevent`
--

CREATE TABLE `sportevent` (
  `stadium_name` varchar(40) DEFAULT NULL,
  `event_name` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `start_time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sportevent`
--

INSERT INTO `sportevent` (`stadium_name`, `event_name`, `start_date`, `start_time`) VALUES
('Wankhede Stadium', 'India', '2021-04-27', '10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `stadium`
--

CREATE TABLE `stadium` (
  `name` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stadium`
--

INSERT INTO `stadium` (`name`, `city`, `address`, `phone`) VALUES
('Wankhede Stadium', 'Mumbai', 'Vinoo Mankad Rd, Church gate, Mumbai, Maharashtra 400020', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_pass` varchar(20) NOT NULL,
  `hint` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobnum` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_pass`, `hint`, `name`, `email`, `mobnum`) VALUES
(2, 'yash', 'yash12', 'Name', 'yash', 'yash24@gmail.com', '9255500000'),
(63, 'swarup', 'swarup10', 'Name', 'swarup', 'swarup20@gmail.com', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `vipboxeast`
--

CREATE TABLE `vipboxeast` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vipboxeast`
--

INSERT INTO `vipboxeast` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vipboxwest`
--

CREATE TABLE `vipboxwest` (
  `seat_num` int(11) DEFAULT NULL,
  `statusofevent1` tinyint(1) DEFAULT 1,
  `statusofevent2` tinyint(1) DEFAULT 1,
  `statusofevent3` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vipboxwest`
--

INSERT INTO `vipboxwest` (`seat_num`, `statusofevent1`, `statusofevent2`, `statusofevent3`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 1),
(3, 1, 1, 1),
(4, 1, 1, 1),
(5, 1, 1, 1),
(6, 1, 1, 1),
(7, 1, 1, 1),
(8, 1, 1, 1),
(9, 1, 1, 1),
(10, 1, 1, 1),
(11, 1, 1, 1),
(12, 1, 1, 1),
(13, 1, 1, 1),
(14, 1, 1, 1),
(15, 1, 1, 1),
(16, 1, 1, 1),
(17, 1, 1, 1),
(18, 1, 1, 1),
(19, 1, 1, 1),
(20, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_name` (`admin_name`);

--
-- Indexes for table `availfood`
--
ALTER TABLE `availfood`
  ADD UNIQUE KEY `item` (`item`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD UNIQUE KEY `food_id` (`food_id`),
  ADD UNIQUE KEY `seat_num1` (`seat_num1`),
  ADD UNIQUE KEY `seat_num2` (`seat_num2`),
  ADD UNIQUE KEY `seat_num3` (`seat_num3`),
  ADD UNIQUE KEY `seat_num4` (`seat_num4`),
  ADD UNIQUE KEY `seat_num5` (`seat_num5`);

--
-- Indexes for table `stadium`
--
ALTER TABLE `stadium`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`user_name`),
  ADD UNIQUE KEY `mobnum` (`mobnum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `food_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
