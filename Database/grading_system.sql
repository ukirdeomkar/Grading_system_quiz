-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 30, 2021 at 09:43 AM
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
  `admin_id` text CHARACTER SET utf8 NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `emailid` varchar(50) NOT NULL,
  `phonenumber` bigint(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `name`, `emailid`, `phonenumber`, `password`) VALUES
('', 'om', 'om', 'omkar@gial.com', 12345612, '121212'),
('', '12', 'qw', 'veer.ganesh182@gmail.com', 8928158181, '11'),
('', '11', '11', 'kn@boss.assignment.pahijhe', 9167855471, '11'),
('', 'knboss', 'knboss', 'knboss@gmail.com', 9858958745, '11'),
('', '22', 'jokerBot', 'joker@joker.bot', 88888, '22'),
('', 'ou', 'ou', 'ou@ou.com', 8888888888, 'ou'),
('', 'teacher', 'Teacher', 'teacher@gmail.com', 9878987688, '12341234'),
('', 'rajeshree', 'Rajeshree Shedage', 'rajeshreeshedage@gmail.com', 9878998877, '1234512345'),
('', '1212', 'Ganesh Veer', 'ganeshveer@gmail.com', 55662323623, '1212'),
('', 'Ganesh ', 'Ganesh Veer', 'ganvee@gmail.com', 8928158181, 'Ganesh@1997'),
('6084536abbbad', '33', '22', '22@gmail.com', 22222222, '33'),
('60845545ef8dd', '44', '44', '44@g.com', 444444444, '44'),
('60858ee1bdad8', '13', '13', '13@13.com', 13333, '13');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5fcfb56532fd8', '5fcfb565335cd'),
('5fcfb5657e22a', '5fcfb5657e3c9'),
('5fcfb565c99da', '5fcfb565c9f51'),
('5fcfb5664ad21', '5fcfb5664af21'),
('5fcfb56692cb0', '5fcfb56692f4a'),
('5fcfbcdcc4518', '5fcfbcdcc47fa'),
('5fcfbcdd24cca', '5fcfbcdd24ee5'),
('5fcfbcdd971c8', '5fcfbcdd97341'),
('5fcfbcdde63b5', '5fcfbcdde66e3'),
('5fcfbe4ee0826', '5fcfbe4ee14ff'),
('5fcfbe4f18d1e', '5fcfbe4f18efb'),
('60858b7e4d41e', '60858b7e5a9ea'),
('60847193d83aa', '60847193d86b4'),
('60846dddaa55d', '60846dddaa991'),
('60846ddda96f9', '60846ddda9bda'),
('5fdb0cfc7d419', '5fdb0cfd06067'),
('5fdb0cfde4bd7', '5fdb0cfe16973'),
('5fdb0cff50e79', '5fdb0cff84830'),
('5fdb0d008b97a', '5fdb0d00a2b37'),
('5fdb0d01b6741', '5fdb0d023df3a'),
('5fdc3c36679bc', '5fdc3c3678e3c'),
('5fdc3c3720f05', '5fdc3c372bc27'),
('5fdc3c3759a2a', '5fdc3c376ed79'),
('6022111c6e1b6', '6022111c6fc99'),
('6022111c72e45', '6022111c72f5d'),
('604b980e42d3b', '604b980e43740'),
('604b980e45b41', '604b980e45c59'),
('604b980e460bc', '604b980e461c3'),
('604b980e46743', '604b980e46803'),
('60858c21bbf19', '60858c21bc808'),
('608591082834c', '6085910828f66'),
('6085912f62f92', '6085912f635e8'),
('6085a415273e0', '6085a4152748b'),
('6085a41529165', '6085a41529222'),
('6085a690d5b27', '6085a690d5d05'),
('6085a8804a116', '6085a8804a23b'),
('6085a965774cb', '6085a96577f9b'),
('6085ab11360cf', '6085ab1136827'),
('6085ab1136bd4', '6085ab1137045'),
('6085abd91acb0', '6085abd91b549'),
('6085abd91bb20', '6085abd91c331'),
('6086aad878b49', '6086aad880379'),
('6086ad569044b', '6086ad56910f8'),
('6086aebd282ad', '6086aebd2fb5b'),
('6086aebd30531', '6086aebd30f6e'),
('6086af2333af8', '6086af233404c'),
('6086af2334292', '6086af23344c5'),
('6086afb565699', '6086afb568188'),
('6086afb5684cb', '6086afb568633'),
('6086b30238fe9', '6086b30239c2c'),
('6086b30239f77', '6086b3023a8d7'),
('6086b47bb5f01', '6086b47bb8614'),
('6086b47bb8859', '6086b47bb900f'),
('6086b53ea5246', '6086b53ea6668'),
('6086b53ea7828', '6086b53ea8bf6'),
('6086c12a3400a', '6086c12a34caa'),
('6086c12a350d9', '6086c12a3a4e9');

-- --------------------------------------------------------

--
-- Table structure for table `create_quiz_details`
--

CREATE TABLE `create_quiz_details` (
  `eid` text NOT NULL,
  `admin_id` text CHARACTER SET utf8 NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `author` text NOT NULL,
  `qno` int(100) NOT NULL,
  `qright` int(10) NOT NULL,
  `qwrong` int(10) NOT NULL,
  `qtime` bigint(250) NOT NULL,
  `qdescription` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_quiz_details`
--

INSERT INTO `create_quiz_details` (`eid`, `admin_id`, `qtitle`, `author`, `qno`, `qright`, `qwrong`, `qtime`, `qdescription`) VALUES
('5fdb0aed2542e', '', 'GK-1', '', 5, 4, 1, 10, 'Test your gk'),
('5fdc3b8c94001', '', 'Gk-2', '', 3, 4, 1, 10, 'let'),
('602210a8d68df', '', 'Maths', '', 10, 2, 1, 30, 'Attend all questions'),
('602210cadb664', '', 'Maths 1', '', 2, 2, 1, 30, 'Attend all questions'),
('602d3b75e9a8c', '', '39', '', 1, 12, 12, 5, '12'),
('604b953267bd1', '', 'makkya', '', 4, 4, 1, 60, '........'),
('60845872ec7c9', '', 'ou', '', 2, 2, 1, 1, '2ek'),
('60845b0b6c054', '', '1', '', 1, 1, 1, 1, '1\r\n\r\n'),
('60845c3b2329b', '', '2', '', 2, 2, 2, 2, '2'),
('60845ca5f13f6', '6084536abbbad', '33', '', 3, 3, 33, 3, '3'),
('6085aba096608', '60845545ef8dd', '222', '44', 2, 2, 2, 2, '2'),
('6085aae9b593a', '60845545ef8dd', '22222', '44', 2, 222, 2, 2, '2'),
('6085a90a99b0a', '60845545ef8dd', '44', '44', 1, 1, 1, 1, '1'),
('6085a84fbb786', '60845545ef8dd', '11111111111', '44', 1, 1, 1, 1, '1'),
('60858f03dbb02', '60858ee1bdad8', '13', '13', 1, 2, 2, 2, ',l,e'),
('6085a6dd92d3e', '6084536abbbad', '18', '22', 2, 2, 2, 2, '2'),
('6085a67f3abc8', '6084536abbbad', '17', '22', 1, 1, 1, 1, '1'),
('6085a3f643a95', '6084536abbbad', '15', '22', 2, 1, 1, 1, '1'),
('60859093ccb2e', '60858ee1bdad8', '12', '13', 1, 1, 1, 1, '1'),
('608590e3019fb', '60858ee1bdad8', '14', '13', 1, 1, 1, 1, '1'),
('6086aaba7f351', '6084536abbbad', '1221', '22', 1, 1, 1, 1, '1'),
('6086ad2b4a223', '6084536abbbad', '15677', '22', 1, 1, 1, 1, '1'),
('6086ae70a81a0', '6084536abbbad', 'ou1', '22', 2, 1, 1, 1, '1'),
('6086af028347c', '6084536abbbad', 'ou2', '22', 2, 2, 2, 2, '2'),
('6086af8846281', '6084536abbbad', '122222', '22', 2, 2, 2, 2, '2'),
('6086b2c0ed344', '6084536abbbad', '1000000', '22', 2, 2, 2, 2, '2'),
('6086b4211d6eb', '6084536abbbad', 'zz', '22', 2, 2, 2, 2, '2'),
('6086b4e806e35', '6084536abbbad', '999999', '22', 2, 2, 2, 2, '2'),
('6086bfda81f82', '60858ee1bdad8', 'ou3', '13', 2, 2, 1, 1, '1'),
('6086c0f393ed5', '60845545ef8dd', 'aaaaaaaaaaa', '44', 2, 2, 2, 2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(10) NOT NULL,
  `level` int(11) NOT NULL,
  `qright` int(10) NOT NULL,
  `qwrong` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `qright`, `qwrong`, `date`) VALUES
('qq@q.com', '6086c0f393ed5', -2, 1, 0, 1, '2021-04-26 13:46:07'),
('', '6086c0f393ed5', -2, 1, 0, 1, '2021-04-28 13:35:28'),
('', '6086c0f393ed5', -2, 1, 0, 1, '2021-04-28 13:35:28'),
('omkar123@gmail.com', '5fdb0aed2542e', 23, 5, 6, 1, '2020-12-17 07:48:58'),
('aniket9877@gmail.com', '5fdb0aed2542e', 10, 5, 3, 2, '2020-12-17 07:52:43'),
('omkarukire2001@gmail.com', '5fdb0aed2542e', 20, 5, 5, 0, '2020-12-17 07:53:45'),
('tejasveer41@gmail.com', '5fdb0aed2542e', 15, 5, 4, 1, '2020-12-17 07:54:45'),
('mehulsonawane@gmail.com', '5fdb0aed2542e', 20, 5, 5, 0, '2020-12-17 07:58:56'),
('pranaysuryarao@gmail.com', '5fdb0aed2542e', 10, 5, 3, 2, '2020-12-17 07:59:49'),
('kovidnarkar@gmail.com', '5fdb0aed2542e', 0, 5, 1, 4, '2020-12-17 08:00:44'),
('jytyu@gmail.com', '5fdb0aed2542e', 10, 5, 3, 2, '2020-12-17 08:36:02'),
('aniketrathod@gmail.com', '5fdb0aed2542e', 15, 5, 4, 1, '2020-12-17 16:28:23'),
('aniket987@gmail.com', '5fdb0aed2542e', 10, 5, 3, 2, '2020-12-17 18:18:18'),
('omkarukirde2002@gmail.com', '5fdb0aed2542e', 10, 5, 3, 2, '2020-12-18 05:22:15'),
('', '6086b4e806e35', -6, 1, 0, 3, '2021-04-26 13:24:48'),
('', '5fdb0aed2542e', 20, 5, 5, 0, '2021-01-16 11:24:03'),
('', '6086b4e806e35', -6, 1, 0, 3, '2021-04-26 13:24:48'),
('', '602210cadb664', 1, 2, 1, 1, '2021-02-09 04:38:05'),
('', '6086aaba7f351', -1, 1, 0, 1, '2021-04-26 11:59:07'),
('', '6085a90a99b0a', -1, 1, 0, 1, '2021-04-25 17:45:54'),
('muku@muku.com', '604b953267bd1', 6, 4, 2, 2, '2021-03-12 16:40:06'),
('muku@muku.com', '602210a8d68df', 6, 3, 3, 0, '2021-03-12 16:41:39'),
('', '604b953267bd1', 1, 4, 1, 3, '2021-04-25 17:12:16'),
('rohanchaudhari990@gmail.com', '602210a8d68df', 2, 1, 1, 0, '2021-03-13 07:38:11'),
('xyz@xyz.com', '602210a8d68df', 2, 1, 1, 0, '2021-03-20 11:17:05'),
('', '6086c0f393ed5', -2, 1, 0, 1, '2021-04-28 13:35:28'),
('', '6086c0f393ed5', -2, 1, 0, 1, '2021-04-28 13:35:28'),
('ganeshveer@gmail.com', '6086c0f393ed5', -4, 2, 0, 2, '2021-04-27 17:22:49'),
('ganeshveer@gmail.com', '6086c0f393ed5', -4, 2, 0, 2, '2021-04-27 17:22:49'),
('', '6086c0f393ed5', -2, 1, 0, 1, '2021-04-28 13:35:28'),
('a@a.com', '6086c0f393ed5', 0, 2, 1, 1, '2021-04-29 01:47:34'),
('a@a.com', '6086bfda81f82', 2, 1, 1, 0, '2021-04-30 06:14:13'),
('a@a.com', '6086af028347c', -4, 2, 0, 2, '2021-04-30 06:18:49'),
('a@a.com', '5fdb0aed2542e', -1, 1, 0, 1, '2021-04-30 06:24:23'),
('a@a.com', '6086b4e806e35', -4, 2, 0, 2, '2021-04-30 06:24:41'),
('a@a.com', '5fdc3b8c94001', -2, 3, 1, 6, '2021-04-30 07:03:16'),
('a@a.com', '5fdc3b8c94001', -2, 3, 1, 6, '2021-04-30 07:03:16'),
('a@a.com', '602210a8d68df', 20, 10, 10, 0, '2021-04-30 07:03:58'),
('a@a.com', '602210cadb664', 4, 2, 2, 0, '2021-04-30 07:07:53'),
('a@a.com', '602d3b75e9a8c', 12, 1, 1, 0, '2021-04-30 07:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5fcfb56532fd8', 'Vadapav', '5fcfb565335bd'),
('5fcfb56532fd8', 'Chicken burger', '5fcfb565335ca'),
('5fcfb56532fd8', 'Tamatachi chutney', '5fcfb565335cd'),
('5fcfb56532fd8', 'Mitracha dappa', '5fcfb565335d1'),
('5fcfb5657e22a', 'Carrom', '5fcfb5657e3ab'),
('5fcfb5657e22a', 'Football', '5fcfb5657e3b5'),
('5fcfb5657e22a', 'Lagadi', '5fcfb5657e3b7'),
('5fcfb5657e22a', 'Pakda Pakdi', '5fcfb5657e3c9'),
('5fcfb565c99da', 'Hentai', '5fcfb565c9f51'),
('5fcfb565c99da', 'One piece', '5fcfb565c9f60'),
('5fcfb565c99da', 'One man punch', '5fcfb565c9f65'),
('5fcfb565c99da', 'Naruto', '5fcfb565c9f6c'),
('5fcfb5664ad21', 'Shin Chan', '5fcfb5664af15'),
('5fcfb5664ad21', 'Luffy', '5fcfb5664af1e'),
('5fcfb5664ad21', 'Mou teitoku', '5fcfb5664af21'),
('5fcfb5664ad21', 'Nami', '5fcfb5664af23'),
('5fcfb56692cb0', 'Spooning', '5fcfb56692f3e'),
('5fcfb56692cb0', 'Front to Front', '5fcfb56692f48'),
('5fcfb56692cb0', 'Interwines', '5fcfb56692f4a'),
('5fcfb56692cb0', 'Leg hug', '5fcfb56692f4c'),
('5fcfbcdcc4518', 'Biryani', '5fcfbcdcc47ac'),
('5fcfbcdcc4518', 'vadapv', '5fcfbcdcc47b9'),
('5fcfbcdcc4518', 'tamatachi chutney', '5fcfbcdcc47fa'),
('5fcfbcdcc4518', 'Cheese burger', '5fcfbcdcc4802'),
('5fcfbcdd24cca', 'Naruto', '5fcfbcdd24eb7'),
('5fcfbcdd24cca', 'One piece', '5fcfbcdd24ebf'),
('5fcfbcdd24cca', 'one punch man', '5fcfbcdd24ec2'),
('5fcfbcdd24cca', 'Hentai', '5fcfbcdd24ee5'),
('5fcfbcdd971c8', 'Mou Hasamazu', '5fcfbcdd97341'),
('5fcfbcdd971c8', 'Luffy', '5fcfbcdd97348'),
('5fcfbcdd971c8', 'Korosensai', '5fcfbcdd9734a'),
('5fcfbcdd971c8', 'Kakashi', '5fcfbcdd9734c'),
('5fcfbcdde63b5', 'Watch Anime', '5fcfbcdde66c8'),
('5fcfbcdde63b5', 'Blendering', '5fcfbcdde66d7'),
('5fcfbcdde63b5', 'Sleeping', '5fcfbcdde66dc'),
('5fcfbcdde63b5', 'All day Sleeping', '5fcfbcdde66e3'),
('5fcfbe4ee0826', 'Naruto', '5fcfbe4ee14cc'),
('5fcfbe4ee0826', 'One piece ', '5fcfbe4ee14e9'),
('5fcfbe4ee0826', 'one  punch man', '5fcfbe4ee14f4'),
('5fcfbe4ee0826', 'Hentai', '5fcfbe4ee14ff'),
('5fcfbe4f18d1e', 'Mou Hasamzau', '5fcfbe4f18efb'),
('5fcfbe4f18d1e', 'Luffy', '5fcfbe4f18f05'),
('5fcfbe4f18d1e', 'kakashi', '5fcfbe4f18f09'),
('5fcfbe4f18d1e', 'Zoro', '5fcfbe4f18f0c'),
('60858b7e4d41e', '11111111', '60858b7e5a9ef'),
('60858b7e4d41e', '11111', '60858b7e5a9ee'),
('60858b7e4d41e', '1111', '60858b7e5a9ed'),
('60858b7e4d41e', '111', '60858b7e5a9ea'),
('60847193d83aa', 'dsfsd', '60847193d86b4'),
('60847193d83aa', 'sfs', '60847193d86b3'),
('60847193d83aa', 'asd', '60847193d86b1'),
('60847193d83aa', 'fsdf', '60847193d86ae'),
('60846dddaa55d', 'r', '60846dddaa993'),
('60846dddaa55d', 'e', '60846dddaa992'),
('60846dddaa55d', 'e', '60846dddaa991'),
('60846dddaa55d', 'e', '60846dddaa98c'),
('60846ddda96f9', 'w', '60846ddda9bdb'),
('60846ddda96f9', 'w', '60846ddda9bda'),
('60846ddda96f9', 'w', '60846ddda9bd9'),
('60846ddda96f9', 'gdfg', '60846ddda9bce'),
('5fdb0cfc7d419', 'Compiler', '5fdb0cfd06056'),
('5fdb0cfc7d419', 'Loader', '5fdb0cfd06061'),
('5fdb0cfc7d419', 'Operating system', '5fdb0cfd06067'),
('5fdb0cfc7d419', 'Assembler', '5fdb0cfd0606b'),
('5fdb0cfde4bd7', 'Tracking', '5fdb0cfe1696b'),
('5fdb0cfde4bd7', 'Formatting', '5fdb0cfe16973'),
('5fdb0cfde4bd7', 'Crashing', '5fdb0cfe16975'),
('5fdb0cfde4bd7', 'Allotting', '5fdb0cfe16977'),
('5fdb0cff50e79', 'Spam', '5fdb0cff84830'),
('5fdb0cff50e79', 'Spoof', '5fdb0cff84838'),
('5fdb0cff50e79', ' Sniffer script', '5fdb0cff84839'),
('5fdb0cff50e79', 'Spool', '5fdb0cff8483a'),
('5fdb0d008b97a', 'Closed source software', '5fdb0d00a2b19'),
('5fdb0d008b97a', 'Open source software', '5fdb0d00a2b34'),
('5fdb0d008b97a', 'Horizontal market software', '5fdb0d00a2b37'),
('5fdb0d008b97a', 'vertical market software', '5fdb0d00a2b38'),
('5fdb0d01b6741', 'Assembler', '5fdb0d023df1c'),
('5fdb0d01b6741', 'COBOL', '5fdb0d023df2b'),
('5fdb0d01b6741', 'BASIC', '5fdb0d023df32'),
('5fdb0d01b6741', 'Java', '5fdb0d023df3a'),
('5fdc3c36679bc', 'a', '5fdc3c3678e3c'),
('5fdc3c36679bc', 'aa', '5fdc3c3678e44'),
('5fdc3c36679bc', 'aaa', '5fdc3c3678e46'),
('5fdc3c36679bc', 'aaaa', '5fdc3c3678e47'),
('5fdc3c3720f05', 'b', '5fdc3c372bc1f'),
('5fdc3c3720f05', 'bb', '5fdc3c372bc26'),
('5fdc3c3720f05', 'bbb', '5fdc3c372bc27'),
('5fdc3c3720f05', 'bbbb', '5fdc3c372bc29'),
('5fdc3c3759a2a', 'c', '5fdc3c376ed73'),
('5fdc3c3759a2a', 'cc', '5fdc3c376ed79'),
('5fdc3c3759a2a', 'ccc', '5fdc3c376ed7a'),
('5fdc3c3759a2a', 'cccc', '5fdc3c376ed7b'),
('6022111c6e1b6', '3', '6022111c6fc94'),
('6022111c6e1b6', '4', '6022111c6fc98'),
('6022111c6e1b6', '2', '6022111c6fc99'),
('6022111c6e1b6', '1', '6022111c6fc9a'),
('6022111c72e45', '3', '6022111c72f59'),
('6022111c72e45', '4', '6022111c72f5d'),
('6022111c72e45', '5', '6022111c72f5e'),
('6022111c72e45', '6', '6022111c72f5f'),
('604b980e42d3b', 'black', '604b980e4373b'),
('604b980e42d3b', 'black ', '604b980e4373e'),
('604b980e42d3b', 'black', '604b980e4373f'),
('604b980e42d3b', 'all', '604b980e43740'),
('604b980e45b41', 'late', '604b980e45c59'),
('604b980e45b41', 'very late', '604b980e45c71'),
('604b980e45b41', 'vv latebhaat', '604b980e45c73'),
('604b980e45b41', 'vvv lateparatlela bhaat', '604b980e45c74'),
('604b980e460bc', 'jalela bhaat', '604b980e461be'),
('604b980e460bc', 'paratlela  bhaat', '604b980e461c1'),
('604b980e460bc', 'bhaat', '604b980e461c2'),
('604b980e460bc', 'lasun bhaat', '604b980e461c3'),
('604b980e46743', 'mountain dew', '604b980e467ff'),
('604b980e46743', 'b fizz', '604b980e46802'),
('604b980e46743', 'pani', '604b980e46803'),
('604b980e46743', 'chaas', '604b980e46804'),
('60858c21bbf19', '1', '60858c21bc808'),
('60858c21bbf19', '1', '60858c21bc80f'),
('60858c21bbf19', '1', '60858c21bc810'),
('60858c21bbf19', '1', '60858c21bc812'),
('608591082834c', '1', '6085910828f60'),
('608591082834c', '1', '6085910828f66'),
('608591082834c', '1', '6085910828f67'),
('608591082834c', '1', '6085910828f69'),
('6085912f62f92', '1', '6085912f635e8'),
('6085912f62f92', '1', '6085912f635ea'),
('6085912f62f92', '1', '6085912f635eb'),
('6085912f62f92', '1', '6085912f635ec'),
('6085a415273e0', '1', '6085a4152748b'),
('6085a415273e0', '11', '6085a4152748e'),
('6085a415273e0', '111', '6085a41527490'),
('6085a415273e0', '1111', '6085a41527493'),
('6085a41529165', '2', '6085a4152921d'),
('6085a41529165', '22', '6085a41529220'),
('6085a41529165', '222', '6085a41529221'),
('6085a41529165', '2222', '6085a41529222'),
('6085a690d5b27', '1', '6085a690d5d05'),
('6085a690d5b27', '1', '6085a690d5d0d'),
('6085a690d5b27', '11', '6085a690d5d0e'),
('6085a690d5b27', '1', '6085a690d5d0f'),
('6085a8804a116', '1', '6085a8804a23b'),
('6085a8804a116', '11', '6085a8804a23d'),
('6085a8804a116', '111', '6085a8804a23e'),
('6085a8804a116', '1111', '6085a8804a23f'),
('6085a965774cb', '1', '6085a96577f9b'),
('6085a965774cb', '1', '6085a96577fa4'),
('6085a965774cb', '111', '6085a96577fa7'),
('6085a965774cb', '1', '6085a96577faa'),
('6085ab11360cf', '1', '6085ab1136827'),
('6085ab11360cf', '11', '6085ab113682a'),
('6085ab11360cf', '111', '6085ab113682b'),
('6085ab11360cf', '1111', '6085ab113682c'),
('6085ab1136bd4', '2', '6085ab1137042'),
('6085ab1136bd4', '22', '6085ab1137045'),
('6085ab1136bd4', '222', '6085ab1137046'),
('6085ab1136bd4', '2222', '6085ab1137047'),
('6085abd91acb0', '2', '6085abd91b541'),
('6085abd91acb0', '2', '6085abd91b549'),
('6085abd91acb0', '2', '6085abd91b54c'),
('6085abd91acb0', '2', '6085abd91b54e'),
('6085abd91bb20', '2', '6085abd91c32b'),
('6085abd91bb20', '2', '6085abd91c331'),
('6085abd91bb20', '2', '6085abd91c332'),
('6085abd91bb20', '2', '6085abd91c334'),
('6086aad878b49', '1', '6086aad880374'),
('6086aad878b49', '11', '6086aad880377'),
('6086aad878b49', '111', '6086aad880378'),
('6086aad878b49', '1111', '6086aad880379'),
('6086ad569044b', '1', '6086ad56910e4'),
('6086ad569044b', '11', '6086ad56910f8'),
('6086ad569044b', '111', '6086ad56910f9'),
('6086ad569044b', '1111', '6086ad56910fa'),
('6086aebd282ad', '1', '6086aebd2fb5b'),
('6086aebd282ad', '11', '6086aebd2fb70'),
('6086aebd282ad', '111', '6086aebd2fb71'),
('6086aebd282ad', '1111', '6086aebd2fb72'),
('6086aebd30531', '2', '6086aebd30f69'),
('6086aebd30531', '22', '6086aebd30f6e'),
('6086aebd30531', '222', '6086aebd30f6f'),
('6086aebd30531', '2222', '6086aebd30f70'),
('6086af2333af8', '1', '6086af2334043'),
('6086af2333af8', '11', '6086af2334049'),
('6086af2333af8', '11', '6086af233404b'),
('6086af2333af8', '11', '6086af233404c'),
('6086af2334292', '2', '6086af23344c5'),
('6086af2334292', '22', '6086af23344ca'),
('6086af2334292', '222', '6086af23344cb'),
('6086af2334292', '2222', '6086af23344cc'),
('6086afb565699', 'a', '6086afb568181'),
('6086afb565699', 'aa', '6086afb568188'),
('6086afb565699', 'aaa', '6086afb568189'),
('6086afb565699', 'aaaa', '6086afb56818a'),
('6086afb5684cb', 'bb', '6086afb568633'),
('6086afb5684cb', 'bbb', '6086afb568636'),
('6086afb5684cb', 'bbbb', '6086afb568637'),
('6086afb5684cb', 'bbbbb', '6086afb568638'),
('6086b30238fe9', 'q', '6086b30239c2c'),
('6086b30238fe9', 'qq', '6086b30239c32'),
('6086b30238fe9', 'qqqqqq', '6086b30239c35'),
('6086b30238fe9', 'qqqqqqqq', '6086b30239c36'),
('6086b30239f77', 'w', '6086b3023a8cf'),
('6086b30239f77', 'ww', '6086b3023a8d4'),
('6086b30239f77', 'www', '6086b3023a8d6'),
('6086b30239f77', 'wwww', '6086b3023a8d7'),
('6086b47bb5f01', 'z', '6086b47bb8610'),
('6086b47bb5f01', 'zz', '6086b47bb8614'),
('6086b47bb5f01', 'zzz', '6086b47bb8615'),
('6086b47bb5f01', 'zzzz', '6086b47bb8616'),
('6086b47bb8859', 'x', '6086b47bb9008'),
('6086b47bb8859', 'xx', '6086b47bb900d'),
('6086b47bb8859', 'xxx', '6086b47bb900e'),
('6086b47bb8859', 'xxxx', '6086b47bb900f'),
('6086b53ea5246', '11', '6086b53ea6638'),
('6086b53ea5246', '111', '6086b53ea6665'),
('6086b53ea5246', '1111', '6086b53ea6668'),
('6086b53ea5246', '11111', '6086b53ea666a'),
('6086b53ea7828', '1', '6086b53ea8bf6'),
('6086b53ea7828', '1', '6086b53ea8c05'),
('6086b53ea7828', '2', '6086b53ea8c06'),
('6086b53ea7828', '1', '6086b53ea8c07'),
('6086c12a3400a', 'a', '6086c12a34caa'),
('6086c12a3400a', 'a', '6086c12a34cb0'),
('6086c12a3400a', 'a', '6086c12a34cb2'),
('6086c12a3400a', 'a', '6086c12a34cb4'),
('6086c12a350d9', 'b', '6086c12a3a4cb'),
('6086c12a350d9', 'b', '6086c12a3a4e9'),
('6086c12a350d9', 'b', '6086c12a3a4ec'),
('6086c12a350d9', 'b', '6086c12a3a4ee');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `questions` text NOT NULL,
  `qimage` varchar(100) NOT NULL,
  `ch` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `questions`, `qimage`, `ch`, `sn`) VALUES
('5fdb0aed2542e', '5fdb0cfc7d419', 'A computer cannot \"boot\" if it does not have the _____', '', 4, 1),
('5fdb0aed2542e', '5fdb0cfde4bd7', '________ is the process of dividing the disk into tracks and sectors\r\n\r\n', '', 4, 2),
('5fdb0aed2542e', '5fdb0cff50e79', 'Junk e-mail is also called ______\r\n\r\n', '', 4, 3),
('5fdb0aed2542e', '5fdb0d008b97a', 'Microsoft Office is an example of a\r\n\r\n', '', 4, 4),
('5fdb0aed2542e', '5fdb0d01b6741', 'Which of the following is a popular programming language for developing multimedia webpages.', '', 4, 5),
('5fdc3b8c94001', '5fdc3c36679bc', 'aaaaaaaaaaaa', '', 4, 1),
('5fdc3b8c94001', '5fdc3c3720f05', 'bbbbbbbbbbbbb', '', 4, 2),
('5fdc3b8c94001', '5fdc3c3759a2a', 'cccccccccccccc', '', 4, 3),
('602210cadb664', '6022111c6e1b6', '1+1\r\n\r\n', '', 4, 1),
('602210cadb664', '6022111c72e45', '2+2\r\n', '', 4, 2),
('604b953267bd1', '604b980e42d3b', 'what is mukund favorite color', '', 4, 1),
('604b953267bd1', '604b980e45b41', 'whe does mukund wake up ?', '', 4, 2),
('604b953267bd1', '604b980e460bc', 'what does mukund like to eat', '', 4, 3),
('604b953267bd1', '604b980e46743', 'mukund la pyayla kaay avadta', '', 4, 4),
('6085a67f3abc8', '6085a690d5b27', '1', '1', 4, 1),
('6085a84fbb786', '6085a8804a116', '1', '1', 4, 1),
('6085a90a99b0a', '6085a965774cb', '111111111111', 'ER Model.PNG', 4, 1),
('6085aae9b593a', '6085ab11360cf', '1', 'SQL QUERY.PNG', 4, 1),
('6085aae9b593a', '6085ab1136bd4', '2', 'SQL QUERY.PNG', 4, 2),
('6085aba096608', '6085abd91acb0', '2', '20170105_193858.jpg', 4, 1),
('6085aba096608', '6085abd91bb20', '2', '20170105_193858.jpg', 4, 2),
('6086aaba7f351', '6086aad878b49', '1', '', 4, 1),
('6086ad2b4a223', '6086ad569044b', '111', '', 4, 1),
('6086ae70a81a0', '6086aebd282ad', '11111111111', '', 4, 1),
('6086ae70a81a0', '6086aebd30531', '2222222', '', 4, 2),
('6086af028347c', '6086af2333af8', '1', '2.png', 4, 1),
('6086af028347c', '6086af2334292', '2', '2.png', 4, 2),
('6086af8846281', '6086afb565699', 'aaaaaaaaaa', '2 (1).png', 4, 1),
('6086af8846281', '6086afb5684cb', 'b', '2 (1).png', 4, 2),
('6086b2c0ed344', '6086b30238fe9', 'qqqqqqqqqqq', '', 4, 1),
('6086b2c0ed344', '6086b30239f77', 'wwwwwwwwwwwwwww', '', 4, 2),
('6086b4211d6eb', '6086b47bb5f01', 'z', '', 4, 1),
('6086b4211d6eb', '6086b47bb8859', 'x', '', 4, 2),
('6086b4e806e35', '6086b53ea5246', '1212121212', '1.png', 4, 1),
('6086b4e806e35', '6086b53ea7828', '212121212', 'Quizzo.png', 4, 2),
('6086c0f393ed5', '6086c12a3400a', 'aaaaaaaaaaaaaaaaaaaa', 'download.png', 4, 1),
('6086c0f393ed5', '6086c12a350d9', 'b', 'download.jpg', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`email`, `eid`, `score`, `time`) VALUES
('tejasveer41@gmail.com', '', 15, '2020-12-17 07:54:45'),
('mehulsonawane@gmail.com', '', 20, '2020-12-17 07:58:56'),
('pranaysuryarao@gmail.com', '', 10, '2020-12-17 07:59:49'),
('kovidnarkar@gmail.com', '', 0, '2020-12-17 08:00:44'),
('aniket987@gmail.com', '', 10, '2020-12-17 18:18:18'),
('omkarukirde2002@gmail.com', '', 10, '2020-12-18 05:22:15'),
('ganeshveer@gmail.com', '', 7, '2021-04-27 17:22:49'),
('muku@muku.com', '', 17, '2021-03-12 16:42:49'),
('a@a.com', '', -8, '2021-04-30 06:24:41'),
('a@a.com', '5fdc3b8c94001', -2, '2021-04-30 07:03:16'),
('a@a.com', '602210a8d68df', 20, '2021-04-30 07:03:58'),
('a@a.com', '602210cadb664', 4, '2021-04-30 07:07:53'),
('a@a.com', '602d3b75e9a8c', 12, '2021-04-30 07:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `timeleft` bigint(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `time`
--

INSERT INTO `time` (`username`, `eid`, `timeleft`) VALUES
('aa', '6086c0f393ed5', 120),
('aa', '6086c0f393ed5', 120),
('aa', '6086bfda81f82', 60),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '6086bfda81f82', 60),
('aa', '6086bfda81f82', 60),
('aa', '6086bfda81f82', 60),
('aa', '6086af028347c', 120),
('aa', '6086af028347c', 120),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '5fdb0aed2542e', 600),
('aa', '6086b4e806e35', 120),
('aa', '6086b4e806e35', 120),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '5fdc3b8c94001', 600),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210a8d68df', 1800),
('aa', '602210cadb664', 1800),
('aa', '602210cadb664', 1800),
('aa', '602d3b75e9a8c', 300);

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `name`, `email`, `phonenumber`, `password`) VALUES
('tejas', 'Tejas Veer', 'tejasveer41@gmail.com', 8928158181, '123123'),
('Mehul123', 'Mehul Sonawane', 'mehulsonawane@gmail.com', 9858556699, '123456'),
('pranay321', 'Pranay Suryarao', 'pranaysuryarao@gmail.com', 898896336, '1234567'),
('Kovid19', 'Kovid Narkar', 'kovidnarkar@gmail.com', 8966688999, '12345678'),
('omkar2001', 'Omkar Ukirde', 'omkarukirde2002@gmail.com', 8996996996, '111111'),
('aniket1021', 'Aniket Rathod', 'aniket987@gmail.com', 9594802585, '121212'),
('22', 'Ganesh Veer', 'ganeshveer@gmail.com', 55662323623, '22'),
('muku', 'muku', 'muku@muku.com', 123, 'muku'),
('ross', 'Rohan Chaudhari', 'rohanchaudhari990@gmail.com', 9321216460, 'Rohan'),
('CodeCellWasHere', 'Code Cell', 'xyz@xyz.com', 1000000000, 'EasyPassword101'),
('qq', 'qq', 'qq@q.com', 0, 'qq'),
('aa', 'aa', 'a@a.com', 1111, 'aa');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
