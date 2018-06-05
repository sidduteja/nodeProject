-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2017 at 10:32 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysql_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `address_tables`
--

CREATE TABLE `address_tables` (
  `address_id` int(12) NOT NULL,
  `user_id` int(12) NOT NULL DEFAULT '0',
  `address_1` varchar(200) NOT NULL DEFAULT '0',
  `address_2` varchar(200) NOT NULL DEFAULT '0',
  `area` varchar(50) NOT NULL DEFAULT '0',
  `city` varchar(100) NOT NULL DEFAULT '0',
  `state` varchar(100) NOT NULL DEFAULT '0',
  `country` varchar(100) NOT NULL DEFAULT '0',
  `zipcode` int(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address_tables`
--

INSERT INTO `address_tables` (`address_id`, `user_id`, `address_1`, `address_2`, `area`, `city`, `state`, `country`, `zipcode`) VALUES
(1, 1, 'Flat no 302, tirumala Apartmnents', 'near mvsr engineering college', 'Saidabad', 'Hyderabad', 'TN', 'IN', 500059),
(2, 1, 'Flat no 102 tirumala Apartments', 'near baba temple', 'Dilsukhnagar', 'Hyderabad', 'TN', 'IN', 500034),
(3, 1, 'Flat no 002 , shradda Apartment', 'near Dps school', 'Tnagar', 'Thiru', 'KL', 'IN', 500060),
(4, 1, 'Flat no  001 , Dbr enclave', 'near mandi', 'Malakpet', 'Hyderabad', 'TN', 'IN', 500059),
(5, 2, 'Flat no 202 , jaya apartments', 'near Church', 'Jayanagar', 'Secunderabad', 'TN', 'IN', 500040),
(6, 2, 'Flat no 333, sachin apartments', 'near Busstop', 'Amaravathi', 'Vijayawada', 'AP', 'IN', 500020),
(7, 3, 'Flat no 202 , Tirupathi Apartments', 'near baba temple', 'Dilsukhnagar', 'Hyderabad', 'TN', 'IN', 500034),
(8, 4, 'Flat no 302 , Murali Apartments', 'near gandhi statue', 'Prakashnagar', 'Secunderabad', 'TN', 'IN', 500045),
(9, 4, 'Flat no 001 , shine apartments', 'near Sunshine Hospital', 'Maya nagar', 'Thiru', 'KL', 'IN', 500020),
(10, 5, 'Flat no 201 , reliance apartment', 'near reliance fresh', 'mandapeta', 'Guntur', 'AP', 'IN', 500042),
(11, 5, 'Flat no 302 , kushi apartments', 'near metro station', 'Amaravathi', 'Vijayawada', 'AP', 'IN', 500035),
(12, 5, 'Falt no 320 , Anna Apartment', 'near Mosque', 'Annanagar', 'Cochin', 'KL', 'IN', 500034);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(12) NOT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL DEFAULT '0',
  `phone_no` int(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `email`, `phone_no`) VALUES
(1, 'dheeraj', 'chandra', 'dheeraj@gmail.com', 949330262),
(2, 'teja', 'kumar', 'teja@gmail.com', 738291866),
(4, 'vinod', 'kumar', 'vinod@gmail.com', 767503928),
(5, 'naresh', 'babu', 'naresh@gmail.com', 898550168),
(6, 'susmitha', 'reddy', 'susmitha@gmail.com', 998999877),
(7, 'venu', 'kumar', 'venu@gmail.com', 889988997);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_tables`
--
ALTER TABLE `address_tables`
  ADD PRIMARY KEY (`address_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_tables`
--
ALTER TABLE `address_tables`
  MODIFY `address_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
