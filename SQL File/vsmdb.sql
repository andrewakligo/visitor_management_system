-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2023 at 04:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vsmdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `registrationid` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `staffid` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `confirmpassword` varchar(255) NOT NULL,
  `dateregistered` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`registrationid`, `name`, `staffid`, `password`, `confirmpassword`, `dateregistered`) VALUES
(1, 'ANDREW AKLIGO', '12345', '0000', '0000', '5/16/2022 3:14:24 PM'),
(2, ' ', '', '', '', '5/16/2022 3:26:01 PM'),
(3, ' ', '', '', '', '5/16/2022 3:26:03 PM'),
(4, ' ', '', '', '', '5/16/2022 3:29:51 PM'),
(5, 'ANITA AKLIGO', '11111', '99999', '99999', '5/16/2022 3:37:19 PM'),
(6, 'Vivian AKLIGO', '22222', '88888', '88888', '5/16/2022 3:45:11 PM'),
(7, 'GLORIA IMORO', '10618046', '7777', '7777', '5/18/2022 4:08:27 AM'),
(8, 'edwin aikins', '1234', '123', '123', '5/20/2022 7:02:28 AM'),
(9, 'edwin aikins', '1234', '123', '123', '5/20/2022 7:02:29 AM'),
(10, 'ASTRO B', '12345', '0000', '0000', '6/28/2022 8:02:30 PM'),
(11, 'Eric Adu', '74321', 'eric@', 'eric@', '6/29/2022 11:27:20 AM'),
(12, 'ALX SE', '9090', '9090', '9090', '6/14/2023 10:32:34 PM'),
(13, 'ani asd', '2233', '2233', '2233', '6/14/2023 10:41:24 PM'),
(14, 'Andrew Akligo', '10618046', '99999', '99999', '6/14/2023 10:51:10 PM'),
(15, 'DREW DODZI', '123', '123', '123', '6/14/2023 10:52:15 PM'),
(16, 'DREW asd', '12345', '9090', '9090', '6/14/2023 10:55:47 PM'),
(17, 'ANDRW SE', '0987', '0987', '0987', '6/15/2023 7:07:29 PM');

-- --------------------------------------------------------

--
-- Table structure for table `visitor1`
--

CREATE TABLE `visitor1` (
  `VisitorId` int(255) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Gender` varchar(500) NOT NULL,
  `Mobile` varchar(500) NOT NULL,
  `Vendor` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `MeetWith` varchar(500) NOT NULL,
  `Reason` varchar(500) NOT NULL,
  `VisitorCard` varchar(500) NOT NULL,
  `SignIn` varchar(500) NOT NULL,
  `SignOut` varchar(500) NOT NULL,
  `TimeIn` varchar(500) NOT NULL,
  `TimeOut` varchar(500) NOT NULL,
  `TimeSpend` varchar(500) NOT NULL,
  `Status` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visitor1`
--

INSERT INTO `visitor1` (`VisitorId`, `Name`, `Gender`, `Mobile`, `Vendor`, `Address`, `MeetWith`, `Reason`, `VisitorCard`, `SignIn`, `SignOut`, `TimeIn`, `TimeOut`, `TimeSpend`, `Status`) VALUES
(1, 'DODZI AKLIGO', 'Male', '0546997902', '', 'SUHUM', 'IT - IT', 'MAINTENANCE', 'VSMFF12134', '6/16/2023 12:00:00 AM', '', '2:32:15 PM', '2:34:10 PM', '1 minutes 55 seconds ', 'Out');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`registrationid`);

--
-- Indexes for table `visitor1`
--
ALTER TABLE `visitor1`
  ADD PRIMARY KEY (`VisitorId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `registrationid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `visitor1`
--
ALTER TABLE `visitor1`
  MODIFY `VisitorId` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
