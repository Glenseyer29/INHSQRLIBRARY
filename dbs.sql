-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 12:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `article_category` int(11) NOT NULL,
  `article_title` varchar(255) NOT NULL,
  `article_content` text NOT NULL,
  `article_image` varchar(255) NOT NULL,
  `date_published` varchar(255) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `article_category`, `article_title`, `article_content`, `article_image`, `date_published`, `views`) VALUES
(3, 2, 'Intramurals 2020', '<p><strong>Intramurals</strong>&nbsp;are fun, recreational, social and competitive on-campus sports activities for Bryant University students and staff. These are designed with the everyday athlete, just like you, in mind. This is a great opportunity for you to have some fun and to try that new sport you&#39;ve always wanted to learn!</p>\r\n', '1573535076.jpg', 'November 12, 2019, 5:04 am', 6),
(4, 3, 'ROTC Tactical', '<p>Sample Content</p>\r\n', '1573539500.jpg', 'November 12, 2019, 7:18 am', 4),
(5, 3, 'Upcoming Graduation', '<p>graduation</p>\r\n', '1573539664.jpg', 'November 12, 2019, 7:21 am', 2),
(6, 3, 'CHED  - Caraga RQAT Conducts Program Monitoring and Evaluation', '<p>contents</p>\r\n', '1573539757.jpg', 'November 12, 2019, 7:22 am', 3),
(7, 3, '84th National Book Week Celebration of SDSSU Library Management System ', '<p>dsfasdf</p>\r\n', '1573540011.png', 'November 12, 2019, 7:23 am', 4),
(8, 3, 'SDSSU Tandag Technical Librarian Attends the National Congress', '<p>dfadsf</p>\r\n', '1573540069.jpg', 'November 12, 2019, 7:27 am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `studentID` varchar(255) NOT NULL,
  `class_info` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `yearLevel` varchar(255) NOT NULL,
  `attendanceDate` varchar(255) NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `studentID`, `class_info`, `name`, `course`, `yearLevel`, `attendanceDate`, `time_in`, `time_out`) VALUES
(21, '00111', 5, 'Fallado, Orlan Ramirez', 'BS Info Tech', '4th Year', '11/07/2019', '04:13 pm', '04:32 pm'),
(22, '00112', 5, 'Parker, Floramie Duero', 'BS Info Tech', '4th Year', '11/07/2019', '04:53 pm', '04:53 pm'),
(23, '00114', 6, 'Ortiza, Joy Salang', 'BS Info Tech', '4th Year', '08/11/2019', '03:09 am', '03:10 am'),
(27, '00112', 7, 'Parker, Floramie Duero', 'BS Info Tech', '4th Year', '11/08/2019', '05:11 am', '05:11 am'),
(28, '00114', 7, 'Ortiza, Joy Salang', 'BS Info Tech', '4th Year', '11/08/2019', '05:11 am', ''),
(29, '00111', 7, 'Fallado, Orlan Ramirez', 'BS Info Tech', '4th Year', '11/08/2019', '05:11 am', '05:11 am'),
(30, '123456', 8, 'Fallado, Orlan Ramirez', 'BS Info Tech', '4th Year', '11/11/2019', '05:49 am', ''),
(31, '123457', 8, 'Ortiza, Joy Salang', 'BS Info Tech', '4th Year', '11/11/2019', '05:50 am', '05:50 am');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `datePublished` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `is_borrowed` tinyint(1) NOT NULL,
  `borrowerID` varchar(255) NOT NULL,
  `borrower` varchar(255) NOT NULL,
  `borrowerContact` varchar(255) NOT NULL,
  `dateBorrowed` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `isbn`, `bookTitle`, `author`, `datePublished`, `qrcode`, `is_borrowed`, `borrowerID`, `borrower`, `borrowerContact`, `dateBorrowed`) VALUES
(5, '978-3-16-148410-0', 'Ibong Adarnasssss', 'Filipino Author', '11/24/2004', '1573106911.png', 0, '', '', '', ''),
(14, '978-3-16-148410-5', 'IT Computer Literacy', 'JK rowling', '07/20/2023', '1687934469.png', 0, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booktransactions`
--

CREATE TABLE `booktransactions` (
  `id` int(11) NOT NULL,
  `transactionType` varchar(255) NOT NULL,
  `transactionDate` varchar(255) NOT NULL,
  `transactionTime` varchar(255) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `bookTitle` varchar(255) NOT NULL,
  `borrowerID` varchar(255) NOT NULL,
  `borrower` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `booktransactions`
--

INSERT INTO `booktransactions` (`id`, `transactionType`, `transactionDate`, `transactionTime`, `isbn`, `bookTitle`, `borrowerID`, `borrower`) VALUES
(27, 'borrow', '06/22/2023', '04:00:26', '978-3-16-148410-0', 'Ibong Adarnasssss', '2020600081', 'Richard Glen'),
(39, 'borrow', '07/02/2023', '03:50:39', '978-3-16-148410-5', 'IT Computer Literacy', '202060008144', 'Richard Glen');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`) VALUES
(2, 'Sports'),
(3, 'News');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chatid` int(11) NOT NULL,
  `sender_userid` int(11) NOT NULL,
  `receiver_userid` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chatid`, `sender_userid`, `receiver_userid`, `message`, `timestamp`, `status`) VALUES
(3, 10, 14, 'hello', '2019-11-04 14:55:04', 0),
(4, 10, 7, 'hi', '2019-11-04 14:55:12', 0),
(5, 7, 10, 'hello', '2019-11-04 15:19:13', 0),
(6, 14, 10, 'hi', '2019-11-04 16:03:07', 0),
(7, 15, 10, 'hello', '2019-11-08 01:59:48', 0),
(8, 10, 7, 'hellow', '2021-09-25 03:33:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat_login_details`
--

CREATE TABLE `chat_login_details` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_typing` enum('no','yes','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `chat_login_details`
--

INSERT INTO `chat_login_details` (`id`, `userid`, `last_activity`, `is_typing`) VALUES
(1, 10, '2019-11-04 14:54:48', 'no'),
(2, 7, '2019-11-04 15:01:24', 'no'),
(3, 10, '2019-11-04 15:15:43', 'no'),
(4, 10, '2019-11-04 16:01:47', 'no'),
(5, 14, '2019-11-04 16:02:10', 'no'),
(6, 10, '2019-11-05 07:02:03', 'no'),
(7, 10, '2019-11-05 07:10:33', 'no'),
(8, 10, '2019-11-05 07:10:57', 'no'),
(9, 11, '2019-11-05 07:22:48', 'no'),
(10, 2, '2019-11-05 07:23:33', 'no'),
(11, 2, '2019-11-06 00:56:03', 'no'),
(12, 2, '2019-11-06 23:30:38', 'no'),
(13, 2, '2019-11-07 11:56:33', 'no'),
(14, 9, '2019-11-07 12:54:02', 'no'),
(15, 2, '2019-11-07 13:05:14', 'no'),
(16, 9, '2019-11-07 13:07:07', 'no'),
(17, 2, '2019-11-07 15:12:48', 'no'),
(18, 2, '2019-11-07 16:02:24', 'no'),
(19, 9, '2019-11-07 16:15:49', 'no'),
(20, 9, '2019-11-08 00:40:02', 'no'),
(21, 2, '2019-11-08 01:54:20', 'no'),
(22, 15, '2019-11-08 01:58:40', 'no'),
(23, 10, '2019-11-08 02:00:09', 'no'),
(24, 2, '2019-11-08 02:01:05', 'no'),
(25, 16, '2019-11-08 02:06:24', 'no'),
(26, 2, '2019-11-08 02:12:09', 'no'),
(27, 9, '2019-11-08 02:28:26', 'no'),
(28, 2, '2019-11-08 02:51:26', 'no'),
(29, 11, '2019-11-08 02:51:51', 'no'),
(30, 2, '2019-11-08 02:57:53', 'no'),
(31, 16, '2019-11-08 02:59:24', 'no'),
(32, 9, '2019-11-08 03:26:43', 'no'),
(33, 2, '2019-11-09 00:08:28', 'no'),
(34, 9, '2019-11-09 00:27:31', 'no'),
(35, 2, '2019-11-09 02:22:54', 'no'),
(36, 2, '2019-11-10 03:37:32', 'no'),
(37, 2, '2019-11-10 08:29:40', 'no'),
(38, 4, '2019-11-10 08:37:53', 'no'),
(39, 7, '2019-11-11 04:37:42', 'no'),
(40, 12, '2019-11-11 04:39:11', 'no'),
(41, 4, '2019-11-11 04:41:05', 'no'),
(42, 2, '2019-11-11 04:43:04', 'no'),
(43, 2, '2019-11-11 04:44:19', 'no'),
(44, 18, '2019-11-11 04:45:18', 'no'),
(45, 7, '2019-11-11 04:57:40', 'no'),
(46, 4, '2019-11-11 04:58:51', 'no'),
(47, 2, '2019-11-11 05:00:51', 'no'),
(48, 11, '2019-11-11 05:21:28', 'no'),
(49, 2, '2019-11-12 02:59:18', 'no'),
(50, 2, '2019-11-12 03:59:25', 'no'),
(51, 4, '2019-11-13 00:31:59', 'no'),
(52, 2, '2019-11-13 01:35:52', 'no'),
(53, 2, '2019-11-13 12:15:20', 'no'),
(54, 7, '2019-11-14 01:35:10', 'no'),
(55, 2, '2019-11-14 03:06:17', 'no'),
(56, 4, '2019-11-14 06:21:13', 'no'),
(57, 8, '2019-11-14 06:34:52', 'no'),
(58, 10, '2019-11-14 06:43:22', 'no'),
(59, 9, '2019-11-14 06:55:42', 'no'),
(60, 11, '2019-11-14 07:10:29', 'no'),
(61, 12, '2019-11-14 07:19:29', 'no'),
(62, 13, '2019-11-14 07:23:03', 'no'),
(63, 9, '2019-11-14 07:41:16', 'no'),
(64, 2, '2019-11-14 07:48:18', 'no'),
(65, 9, '2019-11-14 07:53:21', 'no'),
(66, 10, '2019-11-14 07:58:18', 'no'),
(67, 4, '2019-11-14 08:10:04', 'no'),
(68, 2, '2019-11-14 08:13:02', 'no'),
(69, 2, '2019-11-15 07:26:59', 'no'),
(70, 2, '2019-11-15 10:48:31', 'no'),
(71, 2, '2019-11-16 17:08:07', 'no'),
(72, 2, '2019-11-17 06:05:23', 'no'),
(73, 2, '2019-11-17 12:00:55', 'no'),
(74, 2, '2019-11-18 00:45:49', 'no'),
(75, 19, '2019-11-18 02:04:30', 'no'),
(76, 2, '2019-11-18 02:30:50', 'no'),
(77, 2, '2021-09-25 03:28:51', 'no'),
(78, 20, '2021-09-25 03:30:42', 'no'),
(79, 10, '2021-09-25 03:32:34', 'no'),
(80, 2, '2021-09-25 03:44:47', 'no'),
(81, 4, '2021-09-25 03:52:28', 'no'),
(82, 2, '2021-09-25 03:53:37', 'no'),
(83, 8, '2021-09-25 03:54:16', 'no'),
(84, 14, '2021-09-25 03:55:01', 'no'),
(85, 14, '2021-09-25 03:55:28', 'no'),
(86, 2, '2021-09-25 03:56:31', 'no'),
(87, 2, '2021-09-25 04:02:54', 'no'),
(88, 20, '2021-09-25 04:15:24', 'no'),
(89, 2, '2021-09-25 04:15:45', 'no'),
(90, 2, '2021-09-25 05:16:10', 'no'),
(91, 21, '2021-09-25 05:16:56', 'no'),
(92, 2, '2021-09-25 11:17:07', 'no'),
(93, 2, '2023-06-05 05:32:37', 'no'),
(94, 11, '2023-06-05 05:35:51', 'no'),
(95, 2, '2023-06-05 05:40:02', 'no'),
(96, 2, '2023-06-05 07:48:32', 'no'),
(97, 11, '2023-06-05 07:52:33', 'no'),
(98, 2, '2023-06-05 07:59:17', 'no'),
(99, 11, '2023-06-05 08:13:12', 'no'),
(100, 2, '2023-06-05 08:16:57', 'no'),
(101, 11, '2023-06-05 08:20:47', 'no'),
(102, 2, '2023-06-05 08:21:28', 'no'),
(103, 11, '2023-06-05 08:25:21', 'no'),
(104, 2, '2023-06-05 08:25:41', 'no'),
(105, 2, '2023-06-05 08:33:30', 'no'),
(106, 11, '2023-06-05 08:33:46', 'no'),
(107, 11, '2023-06-05 08:39:15', 'no'),
(108, 2, '2023-06-05 08:39:54', 'no'),
(109, 2, '2023-06-05 09:28:19', 'no'),
(110, 11, '2023-06-05 09:28:52', 'no'),
(111, 2, '2023-06-05 09:30:54', 'no'),
(112, 2, '2023-06-05 09:34:26', 'no'),
(113, 11, '2023-06-05 09:42:12', 'no'),
(114, 2, '2023-06-05 09:43:05', 'no'),
(115, 11, '2023-06-05 09:49:54', 'no'),
(116, 2, '2023-06-05 10:09:47', 'no'),
(117, 2, '2023-06-05 10:11:04', 'no'),
(118, 2, '2023-06-05 10:45:18', 'no'),
(119, 11, '2023-06-05 10:47:14', 'no'),
(120, 2, '2023-06-05 10:49:39', 'no'),
(121, 11, '2023-06-05 10:50:35', 'no'),
(122, 2, '2023-06-05 10:51:38', 'no'),
(123, 11, '2023-06-05 10:58:47', 'no'),
(124, 2, '2023-06-05 11:01:38', 'no'),
(125, 11, '2023-06-05 11:01:56', 'no'),
(126, 2, '2023-06-05 11:06:21', 'no'),
(127, 11, '2023-06-05 11:06:56', 'no'),
(128, 2, '2023-06-05 12:35:39', 'no'),
(129, 2, '2023-06-05 13:42:44', 'no'),
(130, 11, '2023-06-05 13:47:53', 'no'),
(131, 2, '2023-06-05 13:49:39', 'no'),
(132, 2, '2023-06-05 13:52:02', 'no'),
(133, 2, '2023-06-05 14:08:40', 'no'),
(134, 11, '2023-06-05 14:14:00', 'no'),
(135, 2, '2023-06-06 00:13:00', 'no'),
(136, 2, '2023-06-06 00:23:25', 'no'),
(137, 2, '2023-06-06 00:23:50', 'no'),
(138, 2, '2023-06-06 01:00:56', 'no'),
(139, 2, '2023-06-06 01:03:43', 'no'),
(140, 2, '2023-06-06 01:04:11', 'no'),
(141, 8, '2023-06-06 01:08:16', 'no'),
(142, 2, '2023-06-06 01:10:09', 'no'),
(143, 2, '2023-06-06 01:15:46', 'no'),
(144, 2, '2023-06-06 01:16:09', 'no'),
(145, 11, '2023-06-06 01:29:02', 'no'),
(146, 2, '2023-06-06 01:32:34', 'no'),
(147, 2, '2023-06-06 01:51:01', 'no'),
(148, 2, '2023-06-06 01:58:36', 'no'),
(149, 11, '2023-06-06 02:03:05', 'no'),
(150, 2, '2023-06-06 02:12:52', 'no'),
(151, 2, '2023-06-06 02:22:16', 'no'),
(152, 2, '2023-06-06 02:39:54', 'no'),
(153, 11, '2023-06-06 02:40:28', 'no'),
(154, 2, '2023-06-06 02:41:10', 'no'),
(155, 2, '2023-06-06 02:43:20', 'no'),
(156, 2, '2023-06-06 02:43:46', 'no'),
(157, 11, '2023-06-06 02:44:31', 'no'),
(158, 2, '2023-06-06 02:45:02', 'no'),
(159, 2, '2023-06-06 13:20:04', 'no'),
(160, 2, '2023-06-06 13:24:45', 'no'),
(161, 28, '2023-06-06 13:29:06', 'no'),
(162, 28, '2023-06-06 13:31:32', 'no'),
(163, 2, '2023-06-06 13:32:09', 'no'),
(164, 29, '2023-06-06 13:33:20', 'no'),
(165, 11, '2023-06-06 13:52:47', 'no'),
(166, 11, '2023-06-06 14:02:18', 'no'),
(167, 2, '2023-06-06 14:09:03', 'no'),
(168, 11, '2023-06-06 14:13:16', 'no'),
(169, 2, '2023-06-06 14:22:35', 'no'),
(170, 11, '2023-06-06 14:24:01', 'no'),
(171, 11, '2023-06-07 00:27:37', 'no'),
(172, 11, '2023-06-07 00:29:47', 'no'),
(173, 2, '2023-06-07 00:30:54', 'no'),
(174, 11, '2023-06-07 00:31:10', 'no'),
(175, 2, '2023-06-07 00:32:08', 'no'),
(176, 11, '2023-06-07 00:32:48', 'no'),
(177, 2, '2023-06-07 00:43:22', 'no'),
(178, 11, '2023-06-07 00:46:08', 'no'),
(179, 11, '2023-06-07 00:50:04', 'no'),
(180, 11, '2023-06-07 00:52:50', 'no'),
(181, 11, '2023-06-07 00:53:42', 'no'),
(182, 11, '2023-06-07 00:56:16', 'no'),
(183, 2, '2023-06-07 00:59:00', 'no'),
(184, 2, '2023-06-07 01:02:35', 'no'),
(185, 11, '2023-06-07 01:04:50', 'no'),
(186, 11, '2023-06-07 01:06:12', 'no'),
(187, 11, '2023-06-07 01:08:22', 'no'),
(188, 2, '2023-06-07 01:12:33', 'no'),
(189, 2, '2023-06-07 01:14:17', 'no'),
(190, 11, '2023-06-07 02:00:55', 'no'),
(191, 2, '2023-06-07 02:01:58', 'no'),
(192, 11, '2023-06-07 02:07:33', 'no'),
(193, 11, '2023-06-07 02:08:32', 'no'),
(194, 11, '2023-06-07 06:07:27', 'no'),
(195, 11, '2023-06-07 06:09:18', 'no'),
(196, 11, '2023-06-07 06:16:33', 'no'),
(197, 11, '2023-06-07 06:17:53', 'no'),
(198, 11, '2023-06-07 06:28:14', 'no'),
(199, 11, '2023-06-07 06:31:01', 'no'),
(200, 11, '2023-06-07 06:33:12', 'no'),
(201, 11, '2023-06-07 06:38:49', 'no'),
(202, 11, '2023-06-07 06:51:28', 'no'),
(203, 11, '2023-06-07 06:54:32', 'no'),
(204, 11, '2023-06-07 06:56:44', 'no'),
(205, 11, '2023-06-07 08:46:04', 'no'),
(206, 11, '2023-06-07 08:51:51', 'no'),
(207, 11, '2023-06-07 08:53:17', 'no'),
(208, 11, '2023-06-07 09:07:30', 'no'),
(209, 11, '2023-06-07 09:21:27', 'no'),
(210, 11, '2023-06-08 01:18:34', 'no'),
(211, 2, '2023-06-08 01:21:29', 'no'),
(212, 2, '2023-06-08 01:24:12', 'no'),
(213, 2, '2023-06-08 01:45:54', 'no'),
(214, 11, '2023-06-08 02:27:54', 'no'),
(215, 11, '2023-06-08 02:29:53', 'no'),
(216, 11, '2023-06-08 02:31:36', 'no'),
(217, 11, '2023-06-08 05:51:17', 'no'),
(218, 11, '2023-06-08 05:53:21', 'no'),
(219, 11, '2023-06-08 05:54:23', 'no'),
(220, 11, '2023-06-08 05:57:35', 'no'),
(221, 11, '2023-06-08 06:35:45', 'no'),
(222, 11, '2023-06-08 07:02:25', 'no'),
(223, 11, '2023-06-08 09:06:23', 'no'),
(224, 2, '2023-06-08 09:07:37', 'no'),
(225, 11, '2023-06-08 09:08:29', 'no'),
(226, 2, '2023-06-08 09:21:10', 'no'),
(227, 11, '2023-06-08 09:21:38', 'no'),
(228, 11, '2023-06-09 01:03:34', 'no'),
(229, 2, '2023-06-09 01:32:44', 'no'),
(230, 2, '2023-06-09 01:40:31', 'no'),
(231, 11, '2023-06-09 01:58:16', 'no'),
(232, 2, '2023-06-09 02:05:10', 'no'),
(233, 2, '2023-06-09 02:54:12', 'no'),
(234, 11, '2023-06-09 03:38:55', 'no'),
(235, 2, '2023-06-09 03:39:55', 'no'),
(236, 11, '2023-06-09 04:00:49', 'no'),
(237, 11, '2023-06-09 04:06:18', 'no'),
(238, 2, '2023-06-09 04:33:42', 'no'),
(239, 11, '2023-06-09 04:34:40', 'no'),
(240, 11, '2023-06-09 04:39:11', 'no'),
(241, 11, '2023-06-09 08:34:06', 'no'),
(242, 2, '2023-06-10 01:28:03', 'no'),
(243, 11, '2023-06-10 01:39:34', 'no'),
(244, 2, '2023-06-10 01:41:11', 'no'),
(245, 2, '2023-06-10 01:44:20', 'no'),
(246, 11, '2023-06-10 02:58:31', 'no'),
(247, 2, '2023-06-10 03:02:35', 'no'),
(248, 2, '2023-06-13 04:36:00', 'no'),
(249, 11, '2023-06-13 04:36:54', 'no'),
(250, 11, '2023-06-13 04:41:55', 'no'),
(251, 11, '2023-06-13 04:43:15', 'no'),
(252, 2, '2023-06-13 04:45:17', 'no'),
(253, 2, '2023-06-13 05:15:38', 'no'),
(254, 2, '2023-06-13 05:22:40', 'no'),
(255, 11, '2023-06-13 05:33:27', 'no'),
(256, 2, '2023-06-13 05:36:09', 'no'),
(257, 11, '2023-06-13 05:45:06', 'no'),
(258, 2, '2023-06-13 05:45:26', 'no'),
(259, 11, '2023-06-13 07:06:50', 'no'),
(260, 2, '2023-06-13 07:44:22', 'no'),
(261, 2, '2023-06-13 07:59:05', 'no'),
(262, 2, '2023-06-13 08:43:36', 'no'),
(263, 11, '2023-06-13 08:52:57', 'no'),
(264, 2, '2023-06-13 09:00:39', 'no'),
(265, 11, '2023-06-13 09:08:33', 'no'),
(266, 2, '2023-06-13 09:11:35', 'no'),
(267, 2, '2023-06-13 09:27:38', 'no'),
(268, 2, '2023-06-13 09:28:29', 'no'),
(269, 2, '2023-06-13 09:48:49', 'no'),
(270, 2, '2023-06-13 09:58:40', 'no'),
(271, 11, '2023-06-13 10:12:02', 'no'),
(272, 2, '2023-06-13 10:16:36', 'no'),
(273, 2, '2023-06-14 02:06:28', 'no'),
(274, 11, '2023-06-14 02:07:04', 'no'),
(275, 2, '2023-06-14 05:32:57', 'no'),
(276, 2, '2023-06-14 05:35:31', 'no'),
(277, 2, '2023-06-14 05:47:52', 'no'),
(278, 2, '2023-06-14 05:50:17', 'no'),
(279, 2, '2023-06-14 05:57:03', 'no'),
(280, 2, '2023-06-14 06:05:21', 'no'),
(281, 11, '2023-06-14 06:18:43', 'no'),
(282, 2, '2023-06-14 06:21:47', 'no'),
(283, 2, '2023-06-16 00:48:44', 'no'),
(284, 2, '2023-06-16 01:30:18', 'no'),
(285, 2, '2023-06-16 04:07:48', 'no'),
(286, 2, '2023-06-17 00:57:26', 'no'),
(287, 2, '2023-06-17 07:52:52', 'no'),
(288, 2, '2023-06-17 08:04:56', 'no'),
(289, 2, '2023-06-17 08:15:32', 'no'),
(290, 2, '2023-06-17 09:47:33', 'no'),
(291, 11, '2023-06-17 10:10:02', 'no'),
(292, 2, '2023-06-17 10:12:39', 'no'),
(293, 2, '2023-06-17 10:20:22', 'no'),
(294, 2, '2023-06-17 10:36:31', 'no'),
(295, 11, '2023-06-17 10:36:55', 'no'),
(296, 11, '2023-06-17 10:37:45', 'no'),
(297, 2, '2023-06-17 10:38:36', 'no'),
(298, 11, '2023-06-17 10:39:11', 'no'),
(299, 2, '2023-06-17 10:43:11', 'no'),
(300, 11, '2023-06-17 11:03:58', 'no'),
(301, 11, '2023-06-17 11:08:44', 'no'),
(302, 2, '2023-06-17 11:09:02', 'no'),
(303, 11, '2023-06-17 11:41:57', 'no'),
(304, 2, '2023-06-17 11:44:08', 'no'),
(305, 11, '2023-06-17 11:45:21', 'no'),
(306, 2, '2023-06-17 11:46:29', 'no'),
(307, 11, '2023-06-17 13:17:42', 'no'),
(308, 2, '2023-06-18 07:09:01', 'no'),
(309, 11, '2023-06-18 07:41:09', 'no'),
(310, 2, '2023-06-18 07:45:43', 'no'),
(311, 11, '2023-06-18 08:06:05', 'no'),
(312, 2, '2023-06-18 08:13:17', 'no'),
(313, 2, '2023-06-18 08:24:30', 'no'),
(314, 2, '2023-06-19 01:40:25', 'no'),
(315, 11, '2023-06-19 01:41:39', 'no'),
(316, 11, '2023-06-19 02:58:34', 'no'),
(317, 11, '2023-06-19 03:04:21', 'no'),
(318, 11, '2023-06-19 06:20:41', 'no'),
(319, 2, '2023-06-19 07:20:03', 'no'),
(320, 11, '2023-06-20 07:28:34', 'no'),
(321, 11, '2023-06-22 01:19:09', 'no'),
(322, 11, '2023-06-22 01:23:10', 'no'),
(323, 2, '2023-06-22 01:23:30', 'no'),
(324, 11, '2023-06-22 01:26:40', 'no'),
(325, 2, '2023-06-22 01:39:04', 'no'),
(326, 11, '2023-06-22 01:58:12', 'no'),
(327, 2, '2023-06-22 02:05:26', 'no'),
(328, 2, '2023-06-22 02:14:08', 'no'),
(329, 2, '2023-06-22 02:17:46', 'no'),
(330, 2, '2023-06-22 02:22:39', 'no'),
(331, 2, '2023-06-22 02:25:36', 'no'),
(332, 2, '2023-06-22 03:30:58', 'no'),
(333, 2, '2023-06-22 03:46:06', 'no'),
(334, 2, '2023-06-22 04:07:08', 'no'),
(335, 2, '2023-06-22 04:08:39', 'no'),
(336, 2, '2023-06-22 04:14:44', 'no'),
(337, 2, '2023-06-26 07:36:43', 'no'),
(338, 11, '2023-06-26 07:38:24', 'no'),
(339, 11, '2023-06-26 11:04:09', 'no'),
(340, 11, '2023-06-28 06:33:56', 'no'),
(341, 2, '2023-06-28 06:38:40', 'no'),
(342, 11, '2023-06-28 06:45:45', 'no'),
(343, 11, '2023-06-28 07:19:59', 'no'),
(344, 11, '2023-06-28 07:21:16', 'no'),
(345, 11, '2023-06-28 07:31:07', 'no'),
(346, 11, '2023-06-29 02:46:04', 'no'),
(347, 2, '2023-06-29 02:49:20', 'no'),
(348, 2, '2023-06-29 06:52:18', 'no'),
(349, 2, '2023-06-29 07:36:12', 'no'),
(350, 2, '2023-06-29 07:49:03', 'no'),
(351, 11, '2023-07-01 11:30:47', 'no'),
(352, 2, '2023-07-01 11:48:34', 'no'),
(353, 11, '2023-07-01 11:53:05', 'no'),
(354, 11, '2023-07-02 01:49:29', 'no'),
(355, 2, '2023-07-02 10:13:08', 'no'),
(356, 11, '2023-07-02 12:12:09', 'no'),
(357, 2, '2023-07-02 12:15:38', 'no'),
(358, 11, '2023-07-02 12:21:57', 'no'),
(359, 2, '2023-07-02 12:26:04', 'no'),
(360, 2, '2023-07-02 12:33:26', 'no'),
(361, 11, '2023-07-02 12:34:23', 'no'),
(362, 11, '2023-07-02 12:35:22', 'no'),
(363, 2, '2023-07-02 12:36:26', 'no'),
(364, 11, '2023-07-05 01:31:49', 'no'),
(365, 2, '2023-07-05 01:58:21', 'no'),
(366, 11, '2023-07-05 02:06:41', 'no'),
(367, 11, '2023-07-05 07:19:20', 'no'),
(368, 2, '2023-07-05 09:55:57', 'no'),
(369, 11, '2023-07-06 12:50:46', 'no'),
(370, 2, '2023-07-06 12:51:56', 'no'),
(371, 2, '2023-07-09 01:36:02', 'no'),
(372, 2, '2023-07-09 01:58:08', 'no'),
(373, 31, '2023-07-09 07:22:01', 'no'),
(374, 2, '2023-07-09 07:23:31', 'no'),
(375, 45, '2023-07-09 10:24:24', 'no'),
(376, 46, '2023-07-09 10:25:00', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `class_info`
--

CREATE TABLE `class_info` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `schedule` varchar(255) NOT NULL,
  `has_ended` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `class_info`
--

INSERT INTO `class_info` (`id`, `teacher_id`, `course`, `subject`, `schedule`, `has_ended`) VALUES
(5, 9, 'BS Info Tech', 'Thesis Writing IV', '8:00 - 9:00 AM', 1),
(6, 16, 'BS Info Tech', 'MATH II', '8:00 - 9:00 AM', 1),
(7, 9, 'BS Info Tech', 'Thesis Writing IV', '10:00 - 11:00 AM TTH', 1),
(8, 18, 'BS Info Tech', 'English IV', '8:00 - 9:00 AM', 1),
(9, 9, 'BS Info Tech', 'MATH II', '8:00 - 9:00 AM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `email`, `phone`, `message`) VALUES
(2, 'richard', 'Admin@gmail.com', '09758858203', 'Hello world'),
(6, 'Pork Adobos', 'cashier@gmail.com', '09758858203', 'I want to borrow math book'),
(11, 'richard', 'Admin@gmail.com', '09758858203', 'ddd'),
(12, 'richarddd', 'Admin@gmail.com', 'dd', 'ddd'),
(13, 'richard', 'admin@gmail.com', '09758858203', 'HELLO'),
(14, 'richard', 'Admin@gmail.com', '09758858203', 'gg'),
(16, 'richard', 'glenseyer@yahoo.com.ph', '09758858203', 'ggdfd'),
(17, 'Pork Adobos', 'Admin@gmail.com', '09758858203', 'Hi'),
(18, 'Olympia Reyes', 'admin@gmail.com', '09758858203', 'Do you have an algebra book ?'),
(19, 'Richard Glen Reyes', 'glenseyer@yahoo.com.ph', '09958054384', 'Do you have a calculus book?'),
(20, 'Glen', 'glenseyer@yahoo.com.ph', '09758858203', 'Do you have available grammar book?');

-- --------------------------------------------------------

--
-- Table structure for table `discussion`
--

CREATE TABLE `discussion` (
  `id` int(11) NOT NULL,
  `parent_comment` varchar(500) NOT NULL,
  `student` varchar(1000) NOT NULL,
  `post` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `discussion`
--

INSERT INTO `discussion` (`id`, `parent_comment`, `student`, `post`, `date`) VALUES
(154, '0', 'richard', 'dfdfdsdfgsdgsdgdsgsgdgd', '2023-07-02 12:39:31'),
(153, '151', 'Admin', 'you can borrow the book now', '2023-07-02 12:33:56'),
(151, '0', 'richard', 'ddd', '2023-07-02 12:32:46'),
(152, '151', 'dd', 'dd', '2023-07-02 12:32:50'),
(150, '147', 'admin', 'Thank you\n', '2023-07-02 12:22:54'),
(149, '147', 'sss', 'ss', '2023-07-02 12:22:39'),
(147, '0', 'richard', 'dd', '2023-07-02 12:22:07'),
(148, '147', 'd', 'd', '2023-07-02 12:22:13'),
(146, '144', 'xsds', 'sds', '2023-07-02 12:17:01'),
(145, '144', 'dsd', 'sds', '2023-07-02 12:16:54'),
(143, '0', 'richard', 'hi', '2023-07-02 12:12:40'),
(144, '', 'dcd', 'cdc', '2023-07-02 12:13:48'),
(142, '141', 'dded', 'eede', '2023-06-26 07:47:42'),
(141, '0', 'richard', 'xxcdvdvewfef', '2023-06-26 07:47:36'),
(140, '', 'Richard', 'Hello Everyone', '2023-06-20 08:05:59'),
(139, '', 'Richard', 'Hello there\n', '2023-06-20 08:05:17'),
(138, '', 'ss', 'ss', '2023-06-20 08:05:05'),
(93, '0', 'Mr Kyalo', 'What are some of the improved features of windows 11?', '2021-07-05 19:42:52'),
(133, '0', 'richard', 'what is your name?', '2023-06-19 01:34:35'),
(134, '133', 'me', 'I am richard', '2023-06-19 01:34:50'),
(135, '133', 'richard', 'What is your best books', '2023-06-19 01:35:18'),
(137, '0', 'ee', 'ee', '2023-06-20 08:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `extension`
--

CREATE TABLE `extension` (
  `id` int(11) NOT NULL,
  `ext_activity` varchar(255) NOT NULL,
  `ext_content` text NOT NULL,
  `attachedFile` varchar(255) NOT NULL,
  `extension_image` varchar(255) NOT NULL,
  `dateAdded` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `extension`
--

INSERT INTO `extension` (`id`, `ext_activity`, `ext_content`, `attachedFile`, `extension_image`, `dateAdded`) VALUES
(5, 'Coastal CleanUp by All SDSSU Students', '<p>CANTILAN, Surigao del Sur, May 24 -&nbsp; The Department of Environment and Natural Resources (DENR) - Community of Environment and Natural Resources Office (CENRO)-Cantilan, together with the Philippine National Police (PNP), Bureau of Fire of Protection (BFP), other government agencies, Cantilangnons and stakeholders, has showed unity in celebration of this year&rsquo;s Earth Day.</p>\r\n\r\n<p>The celebration was highlighted with the conduct of Mangrove Tree Planting and Coastal Clean-up activity at Barangay Magosilom, Cantilan, Surigao del Sur.</p>\r\n\r\n<p>A total of 1,000 mangrove propagules were planted of mixed bakauan babae and bakauan lalaki and 25 sacks of garbage was collected by the participants.</p>\r\n\r\n<p>Earth Day is celebrated annually, every 22nd day of April. Its core purpose is to raise awareness on the present status of the environment and to educate the people on ways to mitigate the causes of climate change.</p>\r\n\r\n<p>&ldquo;Earth Day celebration is just one avenue for us to show our care for the environment, but if we want to make a lasting legacy and change, we must practice discipline in our everyday life. How? Through proper disposal of our waste and teaching our children to do the same,&rdquo; CENR Officer Ruel Efren stated.</p>\r\n\r\n<p>This year&rsquo;s Earth Day celebration is anchored on the theme &ldquo;Protect our Species.&quot; (Shekinah L. Rojo/DENR-CENRO Cantilan/PIA-Caraga)</p>\r\n', '1573363990.pdf', '1573363990.jpg', '11/10/2019');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permission`, `is_admin`) VALUES
(1, 'Administrator', 'is_admin', 1),
(6, 'Student', 'is_library_admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ojt_requirements`
--

CREATE TABLE `ojt_requirements` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attachedFile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ojt_requirements`
--

INSERT INTO `ojt_requirements` (`id`, `name`, `attachedFile`) VALUES
(4, 'OJT Application Form', '1572311099.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int(11) NOT NULL,
  `programs` varchar(255) NOT NULL,
  `programType` int(11) NOT NULL,
  `accLevel` varchar(255) NOT NULL,
  `accPhase` varchar(255) NOT NULL,
  `pppFile` varchar(255) NOT NULL,
  `attachedFile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `programs`, `programType`, `accLevel`, `accPhase`, `pppFile`, `attachedFile`) VALUES
(3, 'Bachelor of Secondary Education major in Sciences', 4, 'Level III', 'Phase II', 'sample file', '1573610103.pdf'),
(4, 'Bachelor of Secondary Education major in Technology & Livelihood Education', 4, 'Level III', 'Phase II', 'sample file', '1573610126.pdf'),
(5, 'Master in Teaching Technology Education', 1, 'Level III', 'Phase II', 'sample file', '1573610094.pdf'),
(8, 'Bachelor of Science in Computer Science', 4, '', '', 'sample file', '1573609661.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `programtype`
--

CREATE TABLE `programtype` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `programtype`
--

INSERT INTO `programtype` (`id`, `type`) VALUES
(1, 'Graduate Studies'),
(4, 'Under Graduate Studies');

-- --------------------------------------------------------

--
-- Table structure for table `qr_students`
--

CREATE TABLE `qr_students` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `midname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `grade` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `contact` varchar(11) NOT NULL,
  `LRN` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qr_students`
--

INSERT INTO `qr_students` (`id`, `fname`, `midname`, `lname`, `grade`, `section`, `contact`, `LRN`, `qrcode`) VALUES
(7, 'Richard', 'De Guzman', 'Reyes', '7', 'Molave', '09758858203', '104838110627', '1687003411.png'),
(10, 'GLEN', 'De Guzman', 'Reyes', '7', 'Molave', '09758858202', '1048381106262', '1687934397.png');

-- --------------------------------------------------------

--
-- Table structure for table `research`
--

CREATE TABLE `research` (
  `id` int(11) NOT NULL,
  `research` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `researchfile` varchar(255) NOT NULL,
  `dateAdded` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `research`
--

INSERT INTO `research` (`id`, `research`, `content`, `researchfile`, `dateAdded`) VALUES
(9, 'Research', '<p>The melamine controversy that erupted during the last quarter of year 2008 brought people&rsquo;s attention back to the debates between breastfeeding and the use of breast milk substitutes like commercial infant formula. This wasn&rsquo;t the first time that infant formula had caused illnesses and even deaths to infants worldwide - hence the continuous campaign of World Health Organization (WHO) and UNICEF along with other breastfeeding advocates, for mothers to breastfeed their children at least until 6 months of age.</p>\r\n\r\n<p>Infant feeding practices refer generally to meet the nutritional and immunological needs of the baby. A study of infant feeding practices was carried out on a sample of 100 mother and infant pairs. The results revealed that only 20% of mothers in the study currently exclusively breastfeed their babies. It also shows that socio-economic factors like mother&rsquo;s work status, marital status and educational attainment had direct bearing on these practices. Employed mothers tend to cease from breastfeeding their babies and eventually stop and just resort to formula feeding as they go back to work. The study also showed that mothers who are married and living with their partners are more likely to breastfeed their infants than single mothers. Those with higher educational attainment resort more to formula feeding and mixed feeding than those with lower educational attainment. Health care professionals influence mothers the most when it comes to infant feeding decisions.</p>\r\n', '1572425819.pdf', '11/15/2019'),
(10, 'Introducing Smartphone Applications to Education: Analysis of Pros and Cons', '<p>Education is not an exception from this rule. In fact, technology has been integrated into the education processes throughout the years due to the fact it provides amazing tools that facilitate learning. Thanks to the internet, teachers, and professors have more resources to help children and students learn the lectures. On the other hand, students find it easier to keep up with school with many tools they can use to research, learn, and organize. With the rise of smartphones, we have the option to use applications (apps) for every aspect of our lives. Apps go beyond social media, it is possible to download a suitable application for everything. What about education? Would the introduction of apps into education have a positive or negative impact? Despite the fact all of us believe the impact would be positive or negative, the question is not easy to answer.</p>\r\n\r\n<p>We use our phones for everything today; to check emails, shop, book flights and hotels, pay bills, get food, and so much more. It is simple, anything one can do on the computer, he or she can also do on their smartphone. In this day and age, it is difficult to succeed at work and school without a smartphone primarily due to their convenience. Carrying laptops around can be a nuisance for people who are on the go, but smartphones fit perfectly into the pocket and offer same possibilities. Professors and teachers can benefit greatly from the introduction of mobile apps into education. For example, a number of scientists and experts in education explain that mobile technologies can create new opportunities for independent investigations, practical fieldwork, professional updating, and on the spot access to knowledge. At the same time, they provide the mechanism for enhanced individual guidance and learner support and more efficient course administration and management.</p>\r\n', '1573924566.pdf', '11/16/2019'),
(11, 'sample research', '<p>asdfasdf</p>\r\n', '1574009035.pdf', '11/17/2019');

-- --------------------------------------------------------

--
-- Table structure for table `studattendance`
--

CREATE TABLE `studattendance` (
  `ID` int(100) NOT NULL,
  `STUDENTID` varchar(100) NOT NULL,
  `TIMEIN` varchar(100) NOT NULL,
  `TIMEOUT` varchar(250) NOT NULL,
  `LOGDATE` varchar(250) NOT NULL,
  `STATUS` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studattendance`
--

INSERT INTO `studattendance` (`ID`, `STUDENTID`, `TIMEIN`, `TIMEOUT`, `LOGDATE`, `STATUS`) VALUES
(50, 'Richard Glen Reyes G7-Dalia', '2023-06-09 12:42:13 PM', '2023-06-09 12:42:27 PM', '2023-06-09', '1'),
(51, 'Richard Glen Reyes G7-Dalia', '2023-06-09 12:44:52 PM', '', '2023-06-09', '0'),
(52, 'Richard Glen Reyes G7-Dalia', '2023-06-10 09:40:11 AM', '2023-06-10 09:40:38 AM', '2023-06-10', '1'),
(53, 'Richard Glen Reyes G7-Dalia', '2023-06-10 09:40:28 AM', '2023-06-10 09:40:38 AM', '2023-06-10', '1'),
(54, 'Richard Glen Reyes G7-Dalia', '2023-06-10 09:40:41 AM', '', '2023-06-10', '0'),
(56, 'Richard Glen Reyes G7-Dalia', '2023-06-13 12:43:41 PM', '2023-06-13 03:09:42 PM', '2023-06-13', '1'),
(57, 'Richard Glen Reyes G7-Dalia', '2023-06-13 12:44:09 PM', '2023-06-13 03:09:42 PM', '2023-06-13', '1'),
(58, 'Richard Glen Reyes G7-Dalia', '2023-06-13 12:44:17 PM', '2023-06-13 03:09:42 PM', '2023-06-13', '1'),
(59, 'Richard Glen Reyes G7-Daliassssss', '2023-06-13 1:04:26 PM', '2023-06-13 1:09:42 PM', '2023-06-13', '1'),
(61, 'Richard Glen Reyes G7-Daliassss', '2023-06-13 03:08:13 PM', '2023-06-13 03:08:42 PM', '2023-06-12', '1'),
(87, 'Richard Reyes 104838110627', '2023-06-18 04:24:55 PM', '2023-06-18 04:25:48 PM', '2023-06-18', '1'),
(99, 'Richard Reyes 104838110627', '2023-06-28 02:35:05 PM', '2023-06-28 02:35:33 PM', '2023-06-28', '1'),
(101, 'GLEN Reyes 1048381106262', '2023-07-02 06:16:32 PM', '2023-07-02 06:16:55 PM', '2023-07-02', '1'),
(103, 'Richard Reyes 104838110627', '2023-07-02 06:18:00 PM', '', '2023-07-02', '0');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `studentID` varchar(10) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `yearLevel` varchar(255) NOT NULL,
  `pcontact` varchar(11) NOT NULL,
  `qrcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `teacher_id`, `studentID`, `fname`, `mname`, `lname`, `course`, `yearLevel`, `pcontact`, `qrcode`) VALUES
(4, 9, '00111', 'Orlan', 'Ramirez', 'Fallado', 'BS Info Tech', '4th Year', '09468163654', '1573133329.png'),
(5, 9, '00112', 'Floramie', 'Duero', 'Parker', 'BS Info Tech', '4th Year', '09484006292', '1573141983.png'),
(6, 16, '00114', 'Joy', 'Salang', 'Ortiza', 'BS Info Tech', '4th Year', '09468163654', '1573178864.png'),
(7, 9, '00114', 'Joy', 'Salang', 'Ortiza', 'BS Info Tech', '4th Year', '09468163654', '1573185696.png'),
(8, 18, '123456', 'Orlan', 'Ramirez', 'Fallado', 'BS Info Tech', '4th Year', '09484006290', '1573447626.png'),
(9, 18, '123457', 'Joy', 'Salang', 'Ortiza', 'BS Info Tech', '4th Year', '09484006290', '1573447675.png'),
(10, 19, '201200763', 'Donita', 'Julve', 'Roz', 'IT', '4th Year', '09461323654', '1574043770.png');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `topicTitle` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `topicTitle`) VALUES
(1, 'HTML: Basic Programming'),
(2, 'PHP Programming Language'),
(4, 'VB Programming'),
(5, 'C++ Progamming');

-- --------------------------------------------------------

--
-- Table structure for table `topic_contents`
--

CREATE TABLE `topic_contents` (
  `id` int(11) NOT NULL,
  `topic` int(11) NOT NULL,
  `chapterTitle` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `attached_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `topic_contents`
--

INSERT INTO `topic_contents` (`id`, `topic`, `chapterTitle`, `content`, `attached_file`) VALUES
(11, 2, 'PHP: Introduction', '<h2>What is PHP?</h2>\r\n\r\n<ul>\r\n	<li>PHP is an acronym for &quot;PHP: Hypertext Preprocessor&quot;</li>\r\n	<li>PHP is a widely-used, open source scripting language</li>\r\n	<li>PHP scripts are executed on the server</li>\r\n	<li>PHP is free to download and use</li>\r\n</ul>\r\n\r\n<p>PHP is an amazing and popular language!</p>\r\n\r\n<p>It is powerful enough to be at the core of the biggest blogging system on the web (WordPress)!<br />\r\nIt is deep enough to run the largest social network (Facebook)!<br />\r\nIt is also easy enough to be a beginner&#39;s first server side language!</p>\r\n\r\n<hr />\r\n<h2>What is a PHP File?</h2>\r\n\r\n<ul>\r\n	<li>PHP files can contain text, HTML, CSS, JavaScript, and PHP code</li>\r\n	<li>PHP code is executed on the server, and the result is returned to the browser as plain HTML</li>\r\n	<li>PHP files have extension &quot;<code>.php</code>&quot;</li>\r\n</ul>\r\n\r\n<hr />\r\n<h2>What Can PHP Do?</h2>\r\n\r\n<ul>\r\n	<li>PHP can generate dynamic page content</li>\r\n	<li>PHP can create, open, read, write, delete, and close files on the server</li>\r\n	<li>PHP can collect form data</li>\r\n	<li>PHP can send and receive cookies</li>\r\n	<li>PHP can add, delete, modify data in your database</li>\r\n	<li>PHP can be used to control user-access</li>\r\n	<li>PHP can encrypt data</li>\r\n</ul>\r\n\r\n<p>With PHP you are not limited to output HTML. You can output images, PDF files, and even Flash movies. You can also output any text, such as XHTML and XML.</p>\r\n', '1571811826.pdf'),
(12, 1, 'Chapter 1: HTML: Introduction', '<p>something about the topic</p>\r\n', '1572310948.pdf'),
(13, 1, 'Chapter 2: HTML Links', '<p>all about links</p>\r\n', '1574045240.pdf'),
(14, 1, 'Chapter 3: HTML DIV', '<p>all about Div</p>\r\n', '1573371420.pdf'),
(15, 1, 'Chapter 4: HTML IMAGE', '<p>ALL ABOUT IMAGE</p>\r\n', '1573371439.pdf'),
(16, 1, 'Chapter 5: HTML Paragraph', '<p>all about paragraph</p>\r\n', '1573371467.pdf'),
(17, 1, 'Chapter 6: HTML TAGS', '<p>all about tags</p>\r\n', '1573371490.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `trainees`
--

CREATE TABLE `trainees` (
  `id` int(11) NOT NULL,
  `studentID` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `civilstatus` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `paddress` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `bdate` varchar(255) NOT NULL,
  `bplace` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `height` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `fathername` varchar(255) NOT NULL,
  `foccupation` varchar(255) NOT NULL,
  `fcontact` varchar(255) NOT NULL,
  `mothername` varchar(255) NOT NULL,
  `moccupation` varchar(255) NOT NULL,
  `mcontact` varchar(255) NOT NULL,
  `elem` varchar(255) NOT NULL,
  `esy` varchar(255) NOT NULL,
  `secondary` varchar(255) NOT NULL,
  `hsy` varchar(255) NOT NULL,
  `tertiary` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `yearLevel` varchar(255) NOT NULL,
  `company_applied` varchar(255) NOT NULL,
  `registered` tinyint(1) NOT NULL,
  `login_id` varchar(36) NOT NULL,
  `studentpic` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trainees`
--

INSERT INTO `trainees` (`id`, `studentID`, `fname`, `mname`, `lname`, `civilstatus`, `sex`, `paddress`, `nationality`, `bdate`, `bplace`, `age`, `height`, `weight`, `fathername`, `foccupation`, `fcontact`, `mothername`, `moccupation`, `mcontact`, `elem`, `esy`, `secondary`, `hsy`, `tertiary`, `major`, `course`, `yearLevel`, `company_applied`, `registered`, `login_id`, `studentpic`) VALUES
(3, '00111', 'Orlan', 'Ramirez', 'Fallado', 'Single', 'Male', 'Zone I, Lanuza, Surigao del Sur', 'Filipino', '07/29/1990', 'Lanuza, Surigao del Sur', '20', '5', '60KG', 'Father Fallado', 'Driver', '09116546541', 'Zeny Fallado', 'Housekeeper', '09481656546', 'Lanuza Central Elementary School', '2002-2003', 'Florita Herrera Irizari National High School', '2006-2007', 'Surigao del Sur State University', 'Computer', 'IT', '4th Year', 'apple company', 1, '5db872aab0828', '1574003916.jpg'),
(4, '00112', 'Floramie', 'Duero', 'Parker', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IT', '4th Year', 'apple company', 1, '5dc036bd8d38f', ''),
(5, '00113', 'Jillmer', 'Intano', 'Donila', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BS Info Tech', '4th Year', 'apple company', 1, '5dc4cbb154e89', ''),
(6, '00114', 'Joy', 'Salang', 'Ortiza', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BS Info Tech', '4th Year', 'ABS-CBN', 0, '', ''),
(7, '00115', 'Jaria', 'Anggay', 'Batocapala', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'BS Info Tech', '4th Year', 'GMA Network', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `permission` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `joined` varchar(255) NOT NULL,
  `login_id` varchar(36) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `current_session` int(11) NOT NULL,
  `online` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `permission`, `username`, `password`, `fname`, `lname`, `joined`, `login_id`, `avatar`, `current_session`, `online`) VALUES
(1, 0, 'john123', 'hashed_password', 'John', 'Doe', '2023-06-06 10:00:00', '12345', 'avatar.jpg', 0, 1),
(2, 1, 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'Richard', 'Reyes', '2019-10-21 15:24:32', '', '1572797180.jpg', 0, 0),
(4, 2, 'admin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-10-27 14:47:02', '', '', 0, 0),
(7, 9, 'orlanfallado', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-10-29 18:11:06', '5db872aab0828', '1572797180.jpg', 0, 0),
(9, 4, 'tadmin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-03 13:55:38', '', '', 0, 0),
(10, 5, 'ojtadmin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-03 13:57:22', '', '1572873391.jpg', 0, 0),
(11, 6, 'student', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-03 13:58:45', '', '', 0, 0),
(12, 7, 'researchadmin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-03 13:59:43', '', '', 0, 0),
(13, 8, 'exadmin', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-03 14:00:55', '', '', 0, 0),
(14, 9, 'fparker', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-04 15:33:33', '5dc036bd8d38f', '', 10, 1),
(15, 9, 'jillmer', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-08 02:58:09', '5dc4cbb154e89', '', 0, 0),
(16, 4, 'jaria123', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-08 03:06:04', '', '', 0, 0),
(18, 4, 'floramie', '15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225', 'Floramie', 'Parker', '2019-11-11 05:44:54', '', '1573448152.jpg', 0, 0),
(19, 4, 'obatay', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2019-11-18 03:04:20', '', '', 0, 0),
(22, 0, 'Student', '123456', '', '', '', '', '', 0, 0),
(23, 0, 'Student', '123456', '', '', '', '', '', 0, 0),
(24, 0, 'john123', 'hashed_password', 'John', 'Doe', '2023-06-06 10:00:00', '12345', 'avatar.jpg', 0, 1),
(25, 0, 'john123', 'hashed_password', 'John', 'Doe', '2023-06-06 10:00:00', '12345', 'avatar.jpg', 0, 1),
(26, 0, 'john123', 'hashed_password', 'John', 'Doe', '2023-06-06 10:00:00', '12345', 'avatar.jpg', 0, 1),
(27, 0, 'john123', 'hashed_password', 'John', 'Doe', '2023-06-06 10:00:00', '12345', 'avatar.jpg', 0, 1),
(30, 6, 'glenseyer29@gmail', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2023-06-14 08:23:16', '', '', 0, 0),
(31, 6, 'Richard Glen Reyes', 'b629f76f897c99e6a6c5140e46af459cde0a335a97530821ded65114856b8f55', '', '', '2023-07-09 09:21:34', '', '', 0, 0),
(32, 6, 'glenseyer@gmail.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2023-07-09 09:25:56', '', '', 0, 0),
(33, 6, 'admins', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2023-07-09 09:28:57', '', '', 0, 0),
(34, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:08:30', '', '', 0, 0),
(35, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:08:34', '', '', 0, 0),
(36, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:08:39', '', '', 0, 0),
(37, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:08:42', '', '', 0, 0),
(38, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:08:44', '', '', 0, 0),
(39, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:09:44', '', '', 0, 0),
(40, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:09:46', '', '', 0, 0),
(41, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:10:49', '', '', 0, 0),
(42, 6, '', 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855', '', '', '2023-07-09 12:10:51', '', '', 0, 0),
(43, 6, 'glenseyers29@gmail.c', '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', '', '', '2023-07-09 12:22:07', '', '', 0, 0),
(44, 6, 'admins', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '', '', '2023-07-09 12:23:27', '', '', 0, 0),
(45, 6, 'adminss', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2023-07-09 12:24:00', '', '', 0, 0),
(46, 6, 'student1', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', '', '', '2023-07-09 12:24:46', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joined` datetime NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booktransactions`
--
ALTER TABLE `booktransactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chatid`);

--
-- Indexes for table `chat_login_details`
--
ALTER TABLE `chat_login_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_info`
--
ALTER TABLE `class_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `discussion`
--
ALTER TABLE `discussion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extension`
--
ALTER TABLE `extension`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ojt_requirements`
--
ALTER TABLE `ojt_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `programtype`
--
ALTER TABLE `programtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qr_students`
--
ALTER TABLE `qr_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research`
--
ALTER TABLE `research`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `studattendance`
--
ALTER TABLE `studattendance`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic_contents`
--
ALTER TABLE `topic_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainees`
--
ALTER TABLE `trainees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `booktransactions`
--
ALTER TABLE `booktransactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat_login_details`
--
ALTER TABLE `chat_login_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;

--
-- AUTO_INCREMENT for table `class_info`
--
ALTER TABLE `class_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `discussion`
--
ALTER TABLE `discussion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `extension`
--
ALTER TABLE `extension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ojt_requirements`
--
ALTER TABLE `ojt_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `programtype`
--
ALTER TABLE `programtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `qr_students`
--
ALTER TABLE `qr_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `research`
--
ALTER TABLE `research`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `studattendance`
--
ALTER TABLE `studattendance`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `topic_contents`
--
ALTER TABLE `topic_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `trainees`
--
ALTER TABLE `trainees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
