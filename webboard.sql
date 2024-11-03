-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 11:35 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'เรื่องทั่วไป'),
(2, 'เรื่องเรียน'),
(3, 'เรื่องกีฬา'),
(4, 'เรื่องความรัก'),
(5, 'เรื่องงาน'),
(6, 'เรื่องเกม'),
(7, 'เรื่องเสื้อผ้า'),
(8, 'เรื่องเงิน'),
(9, 'เรื่องเครื่องสำอาง');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(20148) NOT NULL,
  `post_date` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `content`, `post_date`, `user_id`, `post_id`) VALUES
(1, 'อยากโดนจำกัดการมองเห็น', '2024-11-03 16:23:20', 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `content` varchar(2048) NOT NULL,
  `post_date` datetime NOT NULL,
  `cat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `content`, `post_date`, `cat_id`, `user_id`) VALUES
(1, 'การบ้านยากจัง', 'แต่ก็ทำได้', '2024-10-07 21:30:34', 1, 4),
(2, 'แค่อย่างจะลอง', 'Date time มันขึ้นไหม', '2024-10-07 21:35:07', 2, 4),
(3, 'เทสอีกครั้ง', 'id ถูกหรือไม่', '2024-10-07 23:44:19', 2, 4),
(4, 'Test อีกรอบนึง', 'id ของผู้ใช้', '2024-10-07 23:45:19', 2, 4),
(5, 'อยากจะฮู้', 'ไหนลองสักที', '2024-10-11 18:39:45', 1, 5),
(6, 'แมนซิตี้', 'จะไม่ได้เล่นกะเพื่อนแล้ว', '2024-10-11 18:43:19', 3, 1),
(7, 'มาลองเป็นเรื่องเรียน', 'เดี๋ยวเปลี่ยนได้ทีเถอะ', '2024-10-11 19:21:19', 2, 5),
(9, 'palworld', 'เกมก็อป ไม่ได้เรื่อง', '2024-11-03 16:28:29', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `login` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `gender` char(1) NOT NULL,
  `email` varchar(32) NOT NULL,
  `role` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `login`, `password`, `name`, `gender`, `email`, `role`) VALUES
(1, 'kt', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'กำธน เจียมสกุลทิพย์', 'm', 'itznongdong@gmail.com', 'm'),
(2, '2124', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', '2131', 'm', 'itznongdong@gmail.com', 'm'),
(3, 'tit', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'กำธน เจียมสกุลทิพย์', 'm', 'itznongdong@gmail.com', 'm'),
(4, 'test', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'พิชชาภา อยู่อินทร์', 'f', 'Waii@gmail.com', 'a'),
(5, 'admin', '8dc9fa69ec51046b4472bb512e292d959edd2aef', 'กำธน เจียมสกุลทิพย์', 'm', 'itznongdong@gmail.com', 'a'),
(6, 'bantest', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'นายแบน', 'f', 'ban@gmail.com', 'b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
