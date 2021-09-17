-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 08:16 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking_sys`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `c_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `country` varchar(10) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `c_name`, `email`, `country`, `balance`) VALUES
(1, 'Tejaswini', 'Teju@gmail.com', 'india', 118325),
(2, 'Vaishnavi', 'vaishu@gmail.com', 'india', 206855),
(3, 'Harshita', 'harshita@gmail.com', 'india', 53150),
(4, 'Rahul', 'rahul@gmail.com', 'india', 51600),
(5, 'Tina', 'tina@gmail.com', 'USA', 700000),
(6, 'Priya', 'priya@gmail.com', 'Sri Lanka', 60000),
(7, 'Kasturi', 'kasturi@gmail.com', 'India', 465000),
(8, 'Albert', 'albert@gmail.com', 'China', 56000),
(9, 'Jaya', 'jaya@gmail.com', 'India', 81000),
(10, 'Vivaan', 'vivaan@gmail.com', 'Japan', 97500),
(11, 'Rehan', 'rehan@gmail.com', 'Afghanista', 119900),
(12, 'Anjali Jadhav', 'anjali@gmail.com', 'India', 505100),
(13, 'Reena', 'reena@gmail.com', 'pakistan', 1000),
(14, 'Amay', 'amay@gmail.com', 'India', 98800),
(15, 'Kashish', 'kashish@gmail.com', 'India', 118770);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `srno` int(11) NOT NULL,
  `Sender_name` varchar(20) NOT NULL,
  `Receiver` varchar(20) NOT NULL,
  `balance` int(11) NOT NULL,
  `Date-Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`srno`, `Sender_name`, `Receiver`, `balance`, `Date-Time`) VALUES
(1, 'Tejaswini', 'Vaishnavi', 10000, '2021-07-16 23:06:52'),
(2, 'Harshita', 'Tejaswini', 50000, '2021-07-16 23:10:04'),
(3, 'Tejaswini', 'Vaishnavi', 5, '2021-07-17 12:47:17'),
(4, 'Tejaswini', 'Jaya', 1000, '2021-07-17 13:02:33'),
(5, 'Tejaswini', 'Vivaan', 400, '2021-07-18 22:43:13'),
(6, 'Vaishnavi', 'Vivaan', 1000, '2021-07-18 23:00:04'),
(7, 'Rehan', 'Rahul', 100, '2021-07-18 23:12:07'),
(8, 'Tejaswini', 'Vaishnavi', 1500, '2021-07-20 13:15:55'),
(9, 'Tejaswini', 'Kasturi', 15000, '2021-07-20 13:16:57'),
(10, 'Vaishnavi', 'Tejaswini', 1500, '2021-07-20 13:57:53'),
(11, 'Vaishnavi', 'Harshita', 2050, '2021-07-20 14:00:14'),
(12, 'Harshita', 'Vivaan', 100, '2021-07-20 14:08:19'),
(13, 'Tejaswini', 'Anjali Jadhav', 5000, '2021-07-20 14:21:47'),
(14, 'Tejaswini', 'Rahul', 1500, '2021-07-20 14:56:45'),
(15, 'Amay', 'Harshita', 1200, '2021-07-20 16:16:33'),
(16, 'Kashish', 'Tejaswini', 1230, '2021-07-20 16:23:00'),
(17, 'Vaishnavi', 'Anjali Jadhav', 100, '2021-08-14 19:30:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
