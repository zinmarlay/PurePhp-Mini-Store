-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 05:30 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `category_id` int(11) NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `summary`, `price`, `category_id`, `cover`, `created_date`, `modified_date`) VALUES
(10, 'Book 01', 'author_01', 'some summary', 100, 0, 'b_001.jpg', '2019-02-19 14:23:04', '2019-02-19'),
(11, 'Book 02', 'author_02', 'some summary', 200, 19, 'b_002.jpg', '2019-02-19 14:23:50', '2019-02-19'),
(12, 'Book 03', 'author_03', 'some summary', 150, 21, 'b_003.jpg', '2019-02-19 14:24:07', '2019-02-19'),
(13, 'Book 04', 'author_04', 'some summary', 300, 22, 'b_004.jpg', '2019-02-19 14:24:22', '2019-02-19'),
(14, 'Book 05', 'author_05', 'some summary', 500, 24, 'b_005.jpg', '2019-02-19 14:24:38', '2019-02-19'),
(15, 'Book 06', 'author_06', 'some summary', 400, 22, 'b_006.jpg', '2019-02-19 14:24:57', '2019-02-19'),
(16, 'Book 07', 'author_07', 'some summary', 350, 23, 'b_007.jpg', '2019-02-19 14:25:13', '2019-02-19'),
(17, 'Book 08', 'author_08', '', 500, 21, 'b_008.jpg', '2019-02-19 14:25:30', '2019-02-19'),
(18, 'Book 09', 'author_09', 'some summary', 400, 20, 'b_009.jpg', '2019-02-19 14:25:46', '2019-02-19'),
(20, 'Book 10', 'author_100', 'Lorem Ipsum is simply dummy text of ', 600, 22, 'b_010.jpg', '2019-02-19 14:35:39', '2019-02-21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `remark`, `create_date`, `modified_date`) VALUES
(19, 'Stories', 'some stories', '2019-02-19 14:19:15', '2019-02-19 14:19:15'),
(20, 'English', 'english', '2019-02-19 14:19:26', '2019-02-19 14:19:26'),
(21, 'Science', 'Some Science', '2019-02-19 14:19:36', '2019-02-19 14:19:36'),
(22, 'Matchs', 'some matchs', '2019-02-19 14:19:47', '2019-02-19 14:19:47'),
(23, 'IT Technology', 'IT books', '2019-02-19 14:20:04', '2019-02-19 16:32:36'),
(24, 'Engineering', 'Engineering Books', '2019-02-19 14:20:16', '2019-02-19 16:08:50'),
(29, 'Web Programming', '', '2019-03-23 11:22:10', '0000-00-00 00:00:00'),
(30, 'Java', '', '2019-03-24 10:11:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(1) NOT NULL,
  `created_date` datetime NOT NULL,
  `modified_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `status`, `created_date`, `modified_date`) VALUES
(1, 'Zin Mar Lwin', 'zimmar07@gmail.com', '09 799 677 377', 'No. 426(B), Shwe Pyi Tha', 1, '2019-02-27 16:32:45', '2019-03-02 10:00:57'),
(2, 'zml', 'zimmar07@gmail.com', '123456', 'test', 1, '2019-02-27 17:05:14', '2019-03-02 10:09:59'),
(3, 'admiin', 'zimmar07@gmail.com', '09 799 677 377', 'aaaa', 0, '2019-02-27 17:07:03', '2019-02-27 17:07:34'),
(4, 'zinmarlwin', 'zimmar07@gmail.com', '09799677377', 'Test', 1, '2019-03-02 09:58:30', '2019-03-02 10:10:03'),
(5, 'zinmar', 'test@gmail.com', '09 799 677 377', 'NO. 123... ', 0, '2019-03-17 13:17:00', '2019-03-17 13:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `book_id`, `order_id`, `qty`) VALUES
(1, 10, 1, 1),
(2, 10, 2, 2),
(3, 11, 2, 1),
(4, 10, 3, 1),
(5, 10, 4, 1),
(6, 10, 5, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
