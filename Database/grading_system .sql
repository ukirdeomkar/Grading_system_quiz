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
  `emailid` varchar(50) NOT NULL,
  `phonenumber` bigint(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `name`, `emailid`, `phonenumber`, `password`) VALUES
('om', 'om', 'omkar@gial.com', 12345612, '121212'),
('12', 'qw', 'veer.ganesh182@gmail.com', 8928158181, '11'),
('11', '11', 'kn@boss.assignment.pahijhe', 9167855471, '11'),
('knboss', 'knboss', 'knboss@gmail.com', 9858958745, '11'),
('22', 'jokerBot', 'joker@joker.bot', 88888, '22'),
('ou', 'ou', 'ou@ou.com', 8888888888, 'ou'),
('teacher', 'Teacher', 'teacher@gmail.com', 9878987688, '12341234'),
('rajeshree', 'Rajeshree Shedage', 'rajeshreeshedage@gmail.com', 9878998877, '1234512345'),
('1212', 'Ganesh Veer', 'ganeshveer@gmail.com', 55662323623, '1212'),
('Ganesh ', 'Ganesh Veer', 'ganvee@gmail.com', 8928158181, 'Ganesh@1997');

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
('5fd07a284eb5d', '5fd07a2856bfe'),
('5fd07a28b773d', '5fd07a28cf71c'),
('5fd07a291faaf', '5fd07a2926c81'),
('5fd07a2947ecd', '5fd07a295d230'),
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
('604b980e46743', '604b980e46803');

-- --------------------------------------------------------

--
-- Table structure for table `create_quiz_details`
--

CREATE TABLE `create_quiz_details` (
  `eid` text NOT NULL,
  `qtitle` varchar(100) NOT NULL,
  `qno` int(100) NOT NULL,
  `qright` int(10) NOT NULL,
  `qwrong` int(10) NOT NULL,
  `qtime` bigint(250) NOT NULL,
  `qdescription` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `create_quiz_details`
--

INSERT INTO `create_quiz_details` (`eid`, `qtitle`, `qno`, `qright`, `qwrong`, `qtime`, `qdescription`) VALUES
('5fd078b558011', 'TEST 1', 4, 4, 1, 10, 'Let do !'),
('5fdb0aed2542e', 'GK-1', 5, 4, 1, 10, 'Test your gk'),
('5fdc3b8c94001', 'Gk-2', 3, 4, 1, 10, 'let'),
('602210a8d68df', 'Maths', 10, 2, 1, 30, 'Attend all questions'),
('602210cadb664', 'Maths 1', 2, 2, 1, 30, 'Attend all questions'),
('602d3b75e9a8c', '39', 1, 12, 12, 5, '12'),
('604b953267bd1', 'makkya', 4, 4, 1, 60, '........');

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
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `qright`, `qwrong`, `date`) VALUES
('omkar123@gmail.com', '5fd078b558011', 6, 4, 2, 2, '2020-12-09 08:30:53'),
('tejasveer41@gmail.com', '5fd078b558011', 6, 4, 2, 2, '2020-12-09 09:05:19'),
('aniket9877@gmail.com', '5fd078b558011', 16, 4, 4, 0, '2020-12-12 06:04:04'),
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
('', '5fd078b558011', 3, 4, 2, 5, '2021-02-17 15:53:30'),
('', '5fdb0aed2542e', 20, 5, 5, 0, '2021-01-16 11:24:03'),
('ganeshveer@gmail.com', '5fd078b558011', 11, 4, 3, 1, '2021-01-16 14:50:13'),
('', '602210cadb664', 1, 2, 1, 1, '2021-02-09 04:38:05'),
('', '5fd078b558011', 3, 4, 2, 5, '2021-02-17 15:53:30'),
('', '5fd078b558011', 3, 4, 2, 5, '2021-02-17 15:53:30'),
('muku@muku.com', '604b953267bd1', 6, 4, 2, 2, '2021-03-12 16:40:06'),
('muku@muku.com', '602210a8d68df', 6, 3, 3, 0, '2021-03-12 16:41:39'),
('muku@muku.com', '5fd078b558011', 11, 4, 3, 1, '2021-03-12 16:42:49'),
('rohanchaudhari990@gmail.com', '602210a8d68df', 2, 1, 1, 0, '2021-03-13 07:38:11'),
('xyz@xyz.com', '602210a8d68df', 2, 1, 1, 0, '2021-03-20 11:17:05');

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
('5fd07a284eb5d', 'Canada', '5fd07a2856aa2'),
('5fd07a284eb5d', 'Russia', '5fd07a2856bfe'),
('5fd07a284eb5d', 'India', '5fd07a2856c0f'),
('5fd07a284eb5d', 'USA', '5fd07a2856c14'),
('5fd07a28b773d', 'Elephant', '5fd07a28cf709'),
('5fd07a28b773d', 'Girraf', '5fd07a28cf718'),
('5fd07a28b773d', 'Blue whale', '5fd07a28cf71c'),
('5fd07a28b773d', 'Hippo', '5fd07a28cf720'),
('5fd07a291faaf', 'Tiger', '5fd07a2926c4e'),
('5fd07a291faaf', 'Lion', '5fd07a2926c76'),
('5fd07a291faaf', 'Jaguar', '5fd07a2926c7d'),
('5fd07a291faaf', 'Cheetah', '5fd07a2926c81'),
('5fd07a2947ecd', '1920', '5fd07a295d21f'),
('5fd07a2947ecd', '1917', '5fd07a295d22b'),
('5fd07a2947ecd', '1914', '5fd07a295d230'),
('5fd07a2947ecd', '1919', '5fd07a295d234'),
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
('604b980e46743', 'chaas', '604b980e46804');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `questions` text NOT NULL,
  `ch` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `questions`, `ch`, `sn`) VALUES
('5fd078b558011', '5fd07a284eb5d', 'Largest Country In the world ?', 4, 1),
('5fd078b558011', '5fd07a28b773d', 'Largest Mammal exist ?', 4, 2),
('5fd078b558011', '5fd07a291faaf', 'Fastest animal in the world ?', 4, 3),
('5fd078b558011', '5fd07a2947ecd', 'First world war happen in which year ?', 4, 4),
('5fdb0aed2542e', '5fdb0cfc7d419', 'A computer cannot \"boot\" if it does not have the _____', 4, 1),
('5fdb0aed2542e', '5fdb0cfde4bd7', '________ is the process of dividing the disk into tracks and sectors\r\n\r\n', 4, 2),
('5fdb0aed2542e', '5fdb0cff50e79', 'Junk e-mail is also called ______\r\n\r\n', 4, 3),
('5fdb0aed2542e', '5fdb0d008b97a', 'Microsoft Office is an example of a\r\n\r\n', 4, 4),
('5fdb0aed2542e', '5fdb0d01b6741', 'Which of the following is a popular programming language for developing multimedia webpages.', 4, 5),
('5fdc3b8c94001', '5fdc3c36679bc', 'aaaaaaaaaaaa', 4, 1),
('5fdc3b8c94001', '5fdc3c3720f05', 'bbbbbbbbbbbbb', 4, 2),
('5fdc3b8c94001', '5fdc3c3759a2a', 'cccccccccccccc', 4, 3),
('602210cadb664', '6022111c6e1b6', '1+1\r\n\r\n', 4, 1),
('602210cadb664', '6022111c72e45', '2+2\r\n', 4, 2),
('604b953267bd1', '604b980e42d3b', 'what is mukund favorite color', 4, 1),
('604b953267bd1', '604b980e45b41', 'whe does mukund wake up ?', 4, 2),
('604b953267bd1', '604b980e460bc', 'what does mukund like to eat', 4, 3),
('604b953267bd1', '604b980e46743', 'mukund la pyayla kaay avadta', 4, 4);

-- --------------------------------------------------------

--
-- Table structure for table `ranking`
--

CREATE TABLE `ranking` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ranking`
--

INSERT INTO `ranking` (`email`, `score`, `time`) VALUES
('tejasveer41@gmail.com', 15, '2020-12-17 07:54:45'),
('mehulsonawane@gmail.com', 20, '2020-12-17 07:58:56'),
('pranaysuryarao@gmail.com', 10, '2020-12-17 07:59:49'),
('kovidnarkar@gmail.com', 0, '2020-12-17 08:00:44'),
('aniket987@gmail.com', 10, '2020-12-17 18:18:18'),
('omkarukirde2002@gmail.com', 10, '2020-12-18 05:22:15'),
('ganeshveer@gmail.com', 11, '2021-01-16 14:50:13'),
('muku@muku.com', 17, '2021-03-12 16:42:49');

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
('CodeCellWasHere', 'Code Cell', 'xyz@xyz.com', 1000000000, 'EasyPassword101');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
