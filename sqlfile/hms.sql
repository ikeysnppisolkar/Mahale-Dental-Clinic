-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2019 at 06:32 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '24-05-2019 04:14:32 PM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) NOT NULL,
  `doctorId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `consultancyFees` int(11) NOT NULL,
  `appointmentDate` varchar(255) NOT NULL,
  `appointmentTime` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userStatus` int(11) NOT NULL,
  `doctorStatus` int(11) NOT NULL,
  `CanceledBy` varchar(100) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `CanceledBy`, `updationDate`) VALUES
(1, 'Dentist', 6, 6, 2500, '2019-05-02', '4:30 PM - 5:00 PM', '2019-05-02 12:33:26', 1, 0, '', ''),
(2, 'Dentist', 6, 6, 2500, '2019-05-02', '', '2019-05-02 12:33:44', 1, 0, '', ''),
(3, 'Dentist', 6, 6, 2500, '2019-05-02', '4:30 PM - 5:00 PM', '2019-05-02 12:34:12', 1, 0, '', ''),
(4, 'General Physician', 3, 6, 1200, '2019-05-02', '4:30 PM - 5:00 PM', '2019-05-02 12:36:00', 1, 0, '', ''),
(5, 'Dentist', 6, 6, 2500, '2019-05-02', '5:30 PM - 6:00 PM', '2019-05-02 12:40:29', 1, 0, '', ''),
(6, 'General Physician', 3, 6, 1200, '2019-05-02', '4:30 PM - 5:00 PM', '2019-05-02 12:40:46', 1, 1, '', ''),
(7, 'Dentist', 6, 6, 2500, '2019-05-02', '5:30 PM - 6:00 PM', '2019-05-02 12:43:47', 1, 0, '', ''),
(8, 'General Physician', 3, 6, 1200, '2019-05-02', '4:30 PM - 5:00 PM', '2019-05-02 12:45:10', 1, 0, '', ''),
(9, 'Dentist', 6, 6, 2500, '2019-05-02', '12:30 PM - 1:00 PM', '2019-05-02 13:03:09', 1, 0, '', ''),
(10, 'Dentist', 6, 6, 2500, '2019-05-02', '12:30 PM - 1:00 PM', '2019-05-02 13:03:49', 1, 1, '', ''),
(11, 'Dentist', 6, 6, 2500, '2019-05-02', '10:00 AM - 10:30 AM', '2019-05-02 13:19:52', 1, 1, '', ''),
(12, 'Dentist', 6, 6, 2500, '2019-05-02', '10:00 AM - 10:30 AM', '2019-05-02 13:20:08', 1, 1, '', ''),
(13, 'Dentist', 6, 6, 2500, '2019-05-02', '10:00 AM - 10:30 AM', '2019-05-02 13:21:12', 1, 1, '', ''),
(14, 'Dentist', 6, 6, 2500, '2019-05-02', '10:30 AM - 11:00 AM', '2019-05-02 13:21:53', 1, 1, '', ''),
(15, 'Dentist', 6, 6, 2500, '2019-05-30', '10:30 AM - 11:00 AM', '2019-05-02 13:22:09', 1, 0, '', ''),
(16, 'Dentist', 6, 6, 2500, '2019-05-02', '11:00 AM - 11:30 AM', '2019-05-02 13:24:11', 1, 1, '', ''),
(17, 'General Physician', 3, 6, 1200, '2019-05-02', '3:00 PM - 3:30 PM', '2019-05-02 13:25:15', 1, 0, '', ''),
(18, 'General Physician', 3, 6, 1200, '2019-05-02', '3:30 PM - 4:00 PM', '2019-05-02 13:31:47', 1, 0, '', ''),
(19, 'Dentist', 6, 6, 2500, '2019-05-03', '4:00 PM - 4:30 PM', '2019-05-03 05:20:51', 1, 0, '', ''),
(20, 'test', 0, 12, 0, '2019-05-30', '3:30 PM - 4:00 PM', '2019-05-24 12:02:23', 1, 1, '', ''),
(21, 'test', 16, 12, 0, '2019-05-25', '11:00 AM - 11:30 AM', '2019-05-24 12:05:09', 1, 0, '', ''),
(22, 'Gynecologist/Obstetrician', 0, 6, 1200, '2019-05-25', '12:30 PM - 1:00 PM', '2019-05-25 06:31:24', 1, 1, '', ''),
(23, 'Gynecologist/Obstetrician', 0, 6, 0, '2019-05-25', '5:00 PM - 5:30 PM', '2019-05-25 06:33:30', 1, 1, '', ''),
(24, 'Dentist', 6, 15, 2500, '2019-05-25', '5:00 PM - 5:30 PM', '2019-05-25 06:58:19', 1, 0, 'Admin', ''),
(25, 'Ayurveda', 1, 15, 500, '2019-05-25', '5:30 PM - 6:00 PM', '2019-05-25 07:03:24', 1, 0, 'Admin', ''),
(33, 'Dermatologist', 8, 15, 20000, '2019-05-29', '3:30 PM - 4:00 PM', '2019-05-29 13:59:46', 1, 0, 'Admin', ''),
(34, 'Ayurveda', 0, 15, 20000, '2019-05-30', '5:00 PM - 5:30 PM', '2019-05-30 06:16:29', 1, 1, 'Admin', ''),
(35, 'Dentist', 6, 15, 2500, '2019-05-31', '5:00 PM - 5:30 PM', '2019-05-31 10:23:13', 1, 0, 'Admin', ''),
(36, '', 0, 0, 0, '', '', '2019-05-31 11:07:08', 0, 0, 'Admin', ''),
(37, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(38, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(39, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(40, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(41, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(42, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(43, '', 0, 0, 0, '', '', '2019-05-31 11:07:09', 0, 0, 'Admin', ''),
(44, 'Ayurveda', 1, 15, 500, '2019-05-31', '4:30 PM - 5:00 PM', '2019-05-31 11:09:36', 1, 0, 'Admin', ''),
(45, 'Ayurveda', 5, 15, 8050, '2019-05-31', '4:00 PM - 4:30 PM', '2019-05-31 11:13:06', 1, 0, 'Admin', ''),
(46, '', 0, 0, 0, '', '', '2019-05-31 11:13:55', 0, 0, 'Admin', ''),
(47, '', 0, 0, 0, '', '', '2019-05-31 11:14:03', 0, 0, 'Admin', ''),
(48, 'Dermatologist', 8, 15, 20000, '2019-05-31', '11:30 AM - 12:00 PM', '2019-05-31 11:14:43', 1, 0, 'Admin', ''),
(49, '', 0, 0, 0, '', '', '2019-05-31 11:15:03', 0, 0, 'Admin', ''),
(50, '', 0, 0, 0, '', '', '2019-05-31 11:15:11', 0, 0, 'Admin', ''),
(51, '', 0, 0, 0, '', '', '2019-05-31 11:15:11', 0, 0, 'Admin', ''),
(52, '', 0, 0, 0, '', '', '2019-05-31 11:21:09', 0, 0, 'Admin', ''),
(53, '', 0, 0, 0, '', '', '2019-05-31 11:21:09', 0, 0, 'Admin', ''),
(54, '', 0, 0, 0, '', '', '2019-05-31 11:21:09', 0, 0, 'Admin', ''),
(55, '', 0, 0, 0, '', '', '2019-05-31 11:21:09', 0, 0, 'Admin', ''),
(56, '', 0, 0, 0, '', '', '2019-05-31 11:21:09', 0, 0, 'Admin', ''),
(57, '', 0, 0, 0, '', '', '2019-05-31 11:21:09', 0, 0, 'Admin', ''),
(81, '', 0, 0, 0, '', '', '2019-05-31 12:00:22', 0, 0, 'Doctor', ''),
(82, '', 0, 0, 0, '', '', '2019-05-31 12:00:22', 0, 0, 'Doctor', ''),
(83, 'Ayurveda', 5, 15, 8050, '2019-06-04', '11:00 AM - 11:30 AM', '2019-05-31 12:21:27', 1, 1, 'Admin', ''),
(84, '', 0, 0, 0, '', '', '2019-05-31 14:05:47', 0, 0, 'Doctor', ''),
(85, '', 0, 0, 0, '', '', '2019-05-31 14:05:47', 0, 0, 'Doctor', ''),
(86, '', 0, 0, 0, '', '', '2019-05-31 14:06:16', 0, 0, 'Doctor', ''),
(87, '', 0, 0, 0, '', '', '2019-05-31 14:06:16', 0, 0, 'Doctor', ''),
(88, '', 0, 0, 0, '', '', '2019-05-31 14:06:22', 0, 0, 'Doctor', ''),
(89, '', 0, 0, 0, '', '', '2019-05-31 14:06:22', 0, 0, 'Doctor', '');

-- --------------------------------------------------------

--
-- Table structure for table `career`
--

CREATE TABLE `career` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `cv` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `doctorName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `docFees` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `docEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Ayurveda', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '2016-12-29 06:25:37', '04-01-2017 01:27:51 PM'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', ''),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', ''),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', '123456', '2017-01-07 07:47:07', ''),
(6, 'Dentist', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', ''),
(8, 'Dermatologist', 'Sameer Varade', 'nashik', '20000', 6677889900, 'aa@gmail.com', '123456', '2019-04-25 06:17:52', ''),
(9, 'General Physician', 'vvv', 'ff', '34', 223344, 'ww@gmail.com', '123', '2019-05-02 10:20:16', ''),
(10, 'General Physician', 'vvv', 'rr', '34', 223344, 'ww@gmail.com', '123', '2019-05-02 10:25:24', ''),
(11, 'Dermatologist', 'vvv444', 'yyy44', '345', 223344, 'ww@gmail.com', '123456', '2019-05-02 10:26:24', ''),
(12, 'Dermatologist', 'vvv444', 'yy', '34', 223344, 'ww@gmail.com', '345', '2019-05-02 10:27:07', ''),
(16, 'test', 'samer', 'twtwe', 'sdfsdf', 1125454, 'sameer@test.com', 'testtest', '2019-05-24 10:29:05', '24-05-2019 04:22:31 PM'),
(17, 'Bones Specialist demo', 'Sameer Varade', 'hii', '20000', 66, '12@gmail.com', '123', '2019-05-25 11:28:11', '');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 2, 'sarita@gmail.com', 0x30000000000000000000000000000000, '2017-01-06 05:53:31', '', 1),
(2, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:07', '', 0),
(3, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:36:37', '06/01/2017 07:36:45', 1),
(4, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:41:33', '12:11:46', 1),
(5, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-06 06:55:16', '06-01-2017 12:27:47 PM', 1),
(6, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:12', '', 0),
(7, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:42', '', 0),
(8, 0, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:04:55', '', 0),
(9, 2, 'sarita@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:05:54', '07-01-2017 01:36:28 PM', 1),
(10, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 06:54:05', '', 0),
(11, 8, 'aa@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 06:54:38', '', 1),
(12, 5, 'sanjeev@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 06:57:25', '', 1),
(13, 5, 'sanjeev@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 07:02:01', '25-04-2019 02:22:26 PM', 1),
(14, 5, 'sanjeev@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 09:05:26', '25-04-2019 06:50:44 PM', 1),
(15, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 04:52:00', '', 0),
(16, 8, 'aa@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 04:52:56', '26-04-2019 11:08:59 AM', 1),
(17, 8, 'aa@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 06:30:05', '26-04-2019 12:00:19 PM', 1),
(18, 5, 'sanjeev@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 06:30:27', '', 1),
(19, 8, 'aa@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 12:46:21', '26-04-2019 06:16:48 PM', 1),
(20, 5, 'sanjeev@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 12:47:19', '26-04-2019 06:18:02 PM', 1),
(21, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-04-30 11:39:11', '', 1),
(22, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-04-30 11:45:01', '', 1),
(23, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-04-30 11:45:33', '', 1),
(24, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-02 06:54:09', '', 1),
(25, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-24 09:49:21', '', 1),
(26, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-24 09:50:54', '24-05-2019 05:55:09 PM', 1),
(27, 0, 'sameer@test.com', 0x3139322e3136382e302e313034000000, '2019-05-24 10:46:44', '', 0),
(28, 16, 'sameer@test.com', 0x3139322e3136382e302e313034000000, '2019-05-24 10:47:22', '24-05-2019 04:22:36 PM', 1),
(29, 8, 'aa@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 07:25:41', '25-05-2019 02:38:43 PM', 1),
(30, 8, 'aa@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-29 12:37:25', '29-05-2019 08:04:53 PM', 1),
(31, 8, 'aa@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-30 05:28:39', '30-05-2019 01:07:47 PM', 1),
(32, 0, '', 0x3139322e3136382e302e313130000000, '2019-05-31 05:18:47', '', 0),
(33, 0, 'aa@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-31 05:18:51', '', 0),
(34, 8, 'aa@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-31 11:13:47', '', 1),
(35, 8, 'aa@gmail.com', 0x666538303a3a353033643a643463613a, '2019-05-31 12:00:19', '31-05-2019 07:44:53 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '25-05-2019 04:46:39 PM'),
(2, 'Bones Specialist demo', '2016-12-28 06:38:12', '25-05-2019 04:49:31 PM'),
(3, 'Dermatologist', '2016-12-28 06:38:48', ''),
(4, 'Homeopathy', '2016-12-28 06:39:26', '30-04-2019 04:55:25 PM'),
(5, 'Ayurveda', '2016-12-28 06:39:51', ''),
(6, 'Dentist', '2016-12-28 06:40:08', ''),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', ''),
(9, 'Demo test', '2016-12-28 07:37:39', '28-12-2016 01:28:42 PM'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '26-04-2019 12:51:17 PM');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_temp`
--

CREATE TABLE `password_reset_temp` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `expDate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_reset_temp`
--

INSERT INTO `password_reset_temp` (`email`, `key`, `expDate`) VALUES
('aa@gmail.com', '768e78024aa8fdb9b8fe87be86f6474594ab722103', '2019-05-31 15:31:05'),
('aa@gmail.com', '768e78024aa8fdb9b8fe87be86f64745b45d21b629', '2019-05-31 15:35:41'),
('aa@gmail.com', '768e78024aa8fdb9b8fe87be86f64745abf54f83a5', '2019-05-31 15:40:43'),
('aa@gmail.com', '768e78024aa8fdb9b8fe87be86f647454ae1b09ca5', '2019-05-31 15:43:32'),
('aa@gmail.com', '768e78024aa8fdb9b8fe87be86f64745cb3e01c8c2', '2019-05-31 15:43:55'),
('admin@gmail.com', '768e78024aa8fdb9b8fe87be86f64745a70b9d3cc3', '2019-05-31 15:55:09'),
('admin@gmail.com', '768e78024aa8fdb9b8fe87be86f64745f0cecaf3f5', '2019-05-31 16:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, 1, '', 0x3a3a3100000000000000000000000000, '2017-01-06 07:02:28', '', 1),
(7, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:04:28', '', 1),
(8, 0, 'admin', 0x3a3a3100000000000000000000000000, '2017-01-06 07:07:41', '06-01-2017 12:38:09 PM', 0),
(9, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:08:01', '', 1),
(10, 1, 'info@w3gang.com', 0x3a3a3100000000000000000000000000, '2017-01-06 07:10:09', '25-04-2019 12:31:30 PM', 1),
(11, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:18', '07-01-2017 01:27:34 PM', 1),
(12, 0, 'asdad', 0x3a3a3100000000000000000000000000, '2017-01-07 07:57:44', '', 0),
(13, 0, 'xyz@test.com', 0x3a3a3100000000000000000000000000, '2017-01-07 07:59:43', '', 0),
(14, 5, 'amit12@gmail.com', 0x3a3a3100000000000000000000000000, '2017-01-07 08:00:44', '07-01-2017 01:34:19 PM', 1),
(15, 0, 'admin', 0x3139322e3136382e302e313035000000, '2019-04-25 06:22:11', '15-05-2019 07:45:43 PM', 0),
(16, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313035000000, '2019-04-25 06:27:41', '25-04-2019 12:11:51 PM', 1),
(17, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 06:55:04', '', 1),
(18, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 07:01:36', '', 1),
(19, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 07:17:13', '', 1),
(20, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-25 13:15:31', '25-04-2019 07:37:06 PM', 1),
(21, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 05:39:20', '26-04-2019 06:16:04 PM', 1),
(22, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-26 12:48:19', '', 1),
(23, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e312e313034000000, '2019-04-27 05:25:27', '27-04-2019 12:04:35 PM', 1),
(24, 6, 'battisenavneet@gmail.com', 0x3a3a3100000000000000000000000000, '2019-04-27 06:35:30', '', 1),
(25, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-04-30 05:01:03', '', 1),
(26, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-04-30 10:41:09', '30-04-2019 05:08:49 PM', 1),
(27, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-02 05:51:26', '02-05-2019 11:33:48 AM', 1),
(28, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-02 06:04:07', '', 1),
(29, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-02 11:36:54', '02-05-2019 05:09:01 PM', 1),
(30, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-02 11:39:26', '02-05-2019 07:36:51 PM', 1),
(31, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-03 05:20:12', '', 1),
(32, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-15 05:19:59', '', 1),
(33, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-24 05:24:33', '', 1),
(34, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:45:40', '', 1),
(35, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:45:44', '', 1),
(36, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-24 05:45:47', '', 0),
(37, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-24 05:45:53', '', 0),
(38, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-24 05:45:59', '24-05-2019 11:16:11 AM', 1),
(39, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:47:54', '', 1),
(40, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:47:55', '', 1),
(41, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:47:59', '', 1),
(42, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:53:38', '', 1),
(43, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:53:39', '', 1),
(44, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 05:53:41', '', 1),
(45, 7, '', 0x3139322e3136382e302e313038000000, '2019-05-24 06:19:52', '', 1),
(46, 8, '', 0x3139322e3136382e302e313034000000, '2019-05-24 11:05:10', '', 1),
(47, 8, '', 0x3139322e3136382e302e313034000000, '2019-05-24 11:05:12', '', 1),
(48, 8, '', 0x3139322e3136382e302e313034000000, '2019-05-24 11:05:15', '', 1),
(49, 0, 'dsfadf', 0x3139322e3136382e302e313034000000, '2019-05-24 11:05:54', '', 0),
(50, 0, 'aasasd', 0x3139322e3136382e302e313034000000, '2019-05-24 11:06:09', '', 0),
(51, 0, 'asas@asfda.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:06:14', '', 0),
(52, 0, 'test@asdfa.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:08:50', '', 0),
(53, 0, 'test@asdfa.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:08:55', '', 0),
(54, 0, 'test@asdfa.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:09:05', '', 0),
(55, 0, 'test@asdfa.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:09:19', '', 0),
(56, 12, 'test@asdfa.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:09:51', '24-05-2019 04:39:54 PM', 1),
(57, 12, 'test@asdfa.com', 0x3139322e3136382e302e313034000000, '2019-05-24 11:57:03', '', 1),
(58, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 05:40:01', '25-05-2019 11:11:42 AM', 1),
(59, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 05:41:48', '', 1),
(60, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:03:10', '', 0),
(61, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:03:14', '25-05-2019 11:33:52 AM', 1),
(62, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 06:03:54', '', 0),
(63, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 06:03:55', '', 0),
(64, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:03:58', '', 0),
(65, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 06:04:03', '', 0),
(66, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 06:04:06', '', 0),
(67, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:04:13', '', 0),
(68, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:04:22', '25-05-2019 11:34:49 AM', 1),
(69, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:04:59', '25-05-2019 11:36:05 AM', 1),
(70, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 06:08:42', '', 0),
(71, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:10:38', '', 0),
(72, 6, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:11:28', '25-05-2019 12:17:24 PM', 1),
(73, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:47:59', '', 0),
(74, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:48:05', '', 0),
(75, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 06:48:06', '', 0),
(76, 0, 'ravindra@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:48:51', '', 0),
(77, 0, 'ravindra@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:49:19', '', 0),
(78, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:52:44', '25-05-2019 12:28:34 PM', 1),
(79, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:58:38', '', 0),
(80, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 06:59:12', '', 0),
(81, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-25 07:00:04', '25-05-2019 12:46:51 PM', 1),
(82, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 07:23:31', '', 0),
(83, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 07:23:39', '', 0),
(84, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 07:23:46', '', 0),
(85, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-25 07:23:53', '', 0),
(86, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-27 09:30:19', '', 0),
(87, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-27 09:30:26', '', 0),
(88, 0, 'sanjeev@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-27 09:30:36', '', 0),
(89, 0, '', 0x3139322e3136382e302e313038000000, '2019-05-27 09:30:37', '', 0),
(90, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313038000000, '2019-05-27 09:30:59', '27-05-2019 05:59:41 PM', 1),
(91, 0, 'battisenavneet@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-29 09:35:18', '29-05-2019 06:07:04 PM', 0),
(92, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-29 09:35:26', '', 1),
(93, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-29 12:44:32', '', 1),
(94, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-30 05:15:44', '30-05-2019 03:48:32 PM', 1),
(95, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-30 12:03:50', '', 1),
(96, 0, '', 0x3139322e3136382e302e313130000000, '2019-05-30 13:47:14', '', 0),
(97, 0, '', 0x3139322e3136382e302e313130000000, '2019-05-31 05:31:01', '', 0),
(98, 15, 'ravindra@gmail.com', 0x3139322e3136382e302e313130000000, '2019-05-31 05:31:12', '', 1),
(99, 15, 'ravindra@gmail.com', 0x666538303a3a353033643a643463613a, '2019-05-31 12:03:45', '31-05-2019 07:51:00 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `city` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', ''),
(6, 'navneet', 'nashik', 'nashik', 'male', 'battisenavneet@gmail.com', '123', '2019-04-25 06:23:28', '25-05-2019 11:11:38 AM'),
(9, 'Navneet', 'nashik', 'nashik', 'male', 'admin@gmail.com', '123', '2019-05-24 05:46:37', ''),
(10, 'Navneet', 'nashik', 'nashik', 'male', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-05-24 05:47:12', ''),
(11, 'Navneet', 'nashik', 'nashik', 'male', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-05-24 05:47:44', ''),
(12, 'Navdada', 'nashik', 'nashik', 'male', 'admin@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2019-05-25 06:09:15', ''),
(13, 'Navneet', 'nashik', 'nashik', 'male', 'admin@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', '2019-05-25 06:09:50', ''),
(14, 'ravindra', 'nashik', 'nashik', 'male', 'battisenavneet@gmail.com', '123', '2019-05-25 06:47:53', ''),
(15, 'ravindra', 'nashik', 'nashik', '', 'ravindra@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-05-25 06:48:36', ''),
(16, 'ravindra', 'nashik', 'nashik', 'male', 'pandey@gmail.com', '202cb962ac59075b964b07152d234b70', '2019-05-25 07:17:22', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career`
--
ALTER TABLE `career`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `career`
--
ALTER TABLE `career`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
