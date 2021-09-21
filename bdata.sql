-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Sep 21, 2021 at 10:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Ram', 'Priya', 3456, '2021-03-20 06:46:25'),
(2, 'Soham', 'Ram', 23634, '2021-03-20 05:19:00'),
(3, 'Priya', 'Prathamesh', 23880, '2021-03-20 04:50:25'),
(4, 'Supriya', 'Rajesh', 12000, '2021-03-20 03:19:15'),
(5, 'Ramya', 'Rushi', 53020, '2021-03-20 06:19:25'),
(6, 'Ramya', 'Kavya', 53020, '2021-03-20 06:19:25'),
(7, 'Prathamesh ', 'prasad', 23400, '2021-03-20 06:23:46'),
(8, 'Rajesh', 'Supriya', 85000, '2021-03-20 06:25:07'),
(9, 'Sunil', 'Apeksha', 450, '2021-03-20 17:34:14'),
(10, 'Soham', 'prasad', 100, '2021-09-21 09:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Ram', 'ram@gmail.com', 6652),
(2, 'Soham', 'soham@gmail.com', 87600),
(3, 'prasad', 'prasad@gmail.com', 3256),
(4, 'Sunil', 'sunil@gmail.com', 23688),
(5, 'Supriya', 'supriya@gmail.com', 23444),
(6, 'Priya', 'priya@gmail.com', 12000),
(7, 'Ramya', 'ramya@gmail.com', 53020),
(8, 'Apeksha', 'apeksha@gmail.com', 93850),
(9, 'Rushi', 'rushi@gmail.com', 85000),
(10, 'Rajesh', 'rajesh@gmail.com', 7320),
(11, 'Prathamesh ', 'prathamesh@gmail.com', 99400);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
