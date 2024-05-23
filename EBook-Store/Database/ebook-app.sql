-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2024 at 12:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ebook-app`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_dtls`
--

CREATE TABLE `book_dtls` (
  `bookId` int(10) NOT NULL,
  `bookname` varchar(45) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `bookCategory` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_dtls`
--

INSERT INTO `book_dtls` (`bookId`, `bookname`, `author`, `price`, `bookCategory`, `status`, `photo`, `email`) VALUES
(5, 'Python Programming', 'CC Publications', '1500', 'New', 'Active', 'python2.jpeg', 'admin'),
(6, 'C Programming Language', 'Darrel L. Graham', '950', 'New', 'Active', 'c.jpg', 'admin'),
(7, 'Java Programming', 'Hari Mohan Pandey', '750', 'New', 'Active', 'java1.jpg', 'admin'),
(8, 'The SQL Complete Reference', 'Thomas Johnson', '480', 'Old', 'Active', 'sql.jpeg', 'admin'),
(9, 'The Intelligent Investor', 'Benjamin Graham', '449', 'New', 'Active', 'the intelligent investor.jpg', 'admin'),
(11, 'Java Spring Boot', 'Onkar Yevale', '500', 'Old', 'Active', 'images.jpeg', 'manu123@gmail.com'),
(12, 'The Psychology Of Money', 'Morgen Housel', '750', 'Old', 'Active', 'the psychology of money.png', 'manu123@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `book_order`
--

CREATE TABLE `book_order` (
  `id` int(10) NOT NULL,
  `order_id` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `address` varchar(500) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `price` varchar(45) NOT NULL,
  `payment` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_order`
--

INSERT INTO `book_order` (`id`, `order_id`, `user_name`, `email`, `address`, `phone`, `book_name`, `author`, `price`, `payment`) VALUES
(1, 'BOOK-ORD-00978', 'Manashri Jadhav', 'manu123@gmail.com', 'A/P  Male,st stand,kolhapur,maharashtra,416114', '9923904587', 'The Intelligent Investor', 'Benjamin Graham', '449.0', 'COD'),
(2, 'BOOK-ORD-00983', 'Manashri Jadhav', 'manu123@gmail.com', 'A/P  Male,st stand,kolhapur,maharashtra,416114', '9923904587', 'Java Programming', 'Hari Mohan Pandey', '750.0', 'COD'),
(3, 'BOOK-ORD-00864', 'Manashri Jadhav', 'manu123@gmail.com', 'shivaji peth, male,st stand,kolhapur,maharashtra,416114', '9923904587', 'The Intelligent Investor', 'Benjamin Graham', '449.0', 'COD'),
(4, 'BOOK-ORD-00454', 'Manashri Jadhav', 'manu123@gmail.com', 'shivaji peth, male,st stand,kolhapur,maharashtra,416114', '9923904587', 'Java Programming', 'Hari Mohan Pandey', '750.0', 'COD'),
(5, 'BOOK-ORD-00251', 'Manashri Jadhav', 'manu123@gmail.com', 'shivaji peth, male,st stand,kolhapur,maharashtra,416114', '9923904587', 'C Programming Language', 'Darrel L. Graham', '950.0', 'COD'),
(6, 'BOOK-ORD-00889', 'Manashri Jadhav', 'manu123@gmail.com', 'shivaji peth, male,st stand,kolhapur,maharashtra,416114', '9923904587', 'Python Programming', 'CC Publications', '1500.0', 'COD'),
(7, 'BOOK-ORD-00713', 'Manashri Jadhav', 'manu123@gmail.com', 'shivaji peth, male,st stand,kolhapur,maharashtra,416114', '9923904587', 'Python Programming', 'CC Publications', '1500.0', 'COD');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cid` int(10) NOT NULL,
  `bid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `bookName` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cid`, `bid`, `uid`, `bookName`, `author`, `price`, `total_price`) VALUES
(22, 9, 3, 'The Intelligent Investor', 'Benjamin Graham', 449, 449),
(23, 7, 3, 'Java Programming', 'Hari Mohan Pandey', 750, 750),
(24, 6, 3, 'C Programming Language', 'Darrel L. Graham', 950, 950),
(25, 5, 3, 'Python Programming', 'CC Publications', 1500, 1500),
(26, 5, 3, 'Python Programming', 'CC Publications', 1500, 1500);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `phno` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `landmark` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phno`, `password`, `address`, `landmark`, `city`, `state`, `pincode`) VALUES
(1, 'onkar yevale', 'onkaryevale1@gmail.com', '8698424630', '1234', NULL, NULL, NULL, NULL, NULL),
(2, 'onkar yevale', 'onkaryevale1@gmail.com', '8585458685', 'ahrahr', NULL, NULL, NULL, NULL, NULL),
(3, 'Manashri Jadhav', 'manu123@gmail.com', '9923904587', '1234', NULL, NULL, NULL, NULL, NULL),
(4, 'sahil yevale', 'sahilyevale1@gmail.com', '9623935189', '1234', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_dtls`
--
ALTER TABLE `book_dtls`
  ADD PRIMARY KEY (`bookId`);

--
-- Indexes for table `book_order`
--
ALTER TABLE `book_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_dtls`
--
ALTER TABLE `book_dtls`
  MODIFY `bookId` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `book_order`
--
ALTER TABLE `book_order`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
