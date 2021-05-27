-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2020 at 12:29 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `grading_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` bigint(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `name`, `email`, `phonenumber`, `password`) VALUES
('omkar1', 'omkar', 'omkar@gial.com', 1221122112, '212121'),
('om', 'om', 'omkar@gial.com', 12345612, '121212'),
('12', 'qw', 'veer.ganesh182@gmail.com', 8928158181, '11'),
('11', '11', 'veer.ganesh182@gmail.com', 22222222, '11');

-- --------------------------------------------------------

--
-- Table structure for table `create_quiz_details`
--

CREATE TABLE `create_quiz_details` (
  `qtitle` varchar(100) NOT NULL,
  `qno` int(100) NOT NULL,
  `qright` int(10) NOT NULL,
  `qwrong` int(10) NOT NULL,
  `qtime` bigint(250) NOT NULL,
  `qdescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phonenumber` bigint(13) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `email`, `phonenumber`, `password`) VALUES
('twjas', 'tejas', 'veer.ganesh182@gmail.com', 444444, '1234'),
('17102C2031', 'TEJAS MACHINDRA VEER', 'tejasveer41@gmail.com', 8655524080, '1234'),
('qq', 'qq', 'veer.ganesh182@gmail.com', 987654321, 'qq');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
