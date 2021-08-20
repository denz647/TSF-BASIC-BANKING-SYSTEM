-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2021 at 10:17 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsf_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Balance` int(10) NOT NULL DEFAULT 1000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Email`, `Phone`, `Balance`) VALUES
(1, 'Sam John', 'samjohn@gmail.com', '9876543210', 7999),
(2, 'Arun Pradeep', 'arunpradeep@gmail.com', '9123456780', 5700),
(3, 'Vipin C', 'vipinchandran@gmail.com', '9181716151', 4500),
(4, 'Kiran CJ', 'cjkiran@gmail.com', '8123481234', 8551),
(5, 'Arun Varghese', 'arunvarghese14@gmail.com', '9090909090', 4500),
(6, 'Anuridh D', 'anuridh45@gmail.com', '8181818181', 8200),
(7, 'Adwaith Sivan', 'adwaithsivan@gmail.com', '9009008000', 8100),
(8, 'Akhil Prasad', 'akhilprasad@gmail.com', '9229229229', 8350),
(9, 'Ananthu A', 'ananthu23@gmail.com', '8585858585', 6500),
(10, 'Sam Surrendran', 'samsurendran@gmail.com', '8000000000', 6500);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Sno` int(5) NOT NULL,
  `Name1` varchar(30) NOT NULL,
  `Name2` varchar(30) NOT NULL,
  `Amount` int(10) NOT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Sno`, `Name1`, `Name2`, `Amount`, `Time`) VALUES
(0, 'Ram Manohar', 'Kiran CJ', 1, '2021-07-19 09:12:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD UNIQUE KEY `ID` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
