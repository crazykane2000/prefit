-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 06:17 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gym_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `desc` text NOT NULL,
  `tags` text NOT NULL,
  `file` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `desc`, `tags`, `file`, `category`, `date`) VALUES
(20, 'Gym Training', '<p>A Proper Guidance for Training. Helping thousands of men and women on the internet to achieve their body goals. A Proper Guidance for Training. Helping thousands of men and women on the internet to achieve their body goals</p>\r\n', 'men and women', '1563968695crossfit-workouts.jpg', 'Sports', '2019-07-24 11:44:55'),
(21, 'Old School Gym Here', '<p>By Dustin Myers about gym workout and exercises. The Old School Gym is a &#39;no-nonsense&#39; workout facility based in Pataskala, Ohio. Old School Gym can help everyone from beginners to advanced weightlifters.</p>\r\n', 'Fitness, morning', '1563969229gear-patrol-stop-doing-this-at-gym-lead-full.jpg', 'Gym', '2019-07-24 11:53:49'),
(22, 'Your cardio endurance', '<p><strong>Muscle &amp; Fitness</strong> is dedicated to covering the full fitness landscape, regularly introducing fans to new trends in training, nutrition, gear and technology. Muscle &amp; Fitness is the essential training partner.</p>\r\n', 'Gym,Morning,Fitness Freak', '1563969317the-body-fox-gym-and-wellness-shalimar-garden-extention-1-sahibabad-gyms-l4s7x.jpg', 'Sports', '2019-07-24 11:55:18'),
(23, 'WORKOUTS TO IMPROVE YOUR GENERAL FITNESS', '<p>You can develop your overall fitness by working on three key areas: your cardio endurance, your muscle strength and your muscle endurance.</p>\r\n', 'Fitness.Training', '15639694095-Ways-Youre-Wasting-Time-in-the-Gym.jpg', 'Gym', '2019-07-24 11:56:49');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`id`, `category`, `date`) VALUES
(8, 'Sports', '2018-06-22 08:54:12'),
(9, 'Gym', '2019-07-02 13:43:08');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `date`) VALUES
(1, 'Toppers Student', '2019-06-01 06:26:58'),
(2, 'Civil Works', '2019-06-20 11:27:41'),
(6, 'Gym 11', '2019-07-02 10:51:22'),
(7, 'Category1', '2019-07-23 13:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `remark` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`id`, `name`, `email`, `phone`, `remark`, `date`) VALUES
(2, 'tushar katore', 'tushar@gmail.com', '9886652570', 'Want to join..', '2019-06-24 07:35:07');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `enquiry_id` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `phone2` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `occupation` varchar(30) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `age` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `had_gym_before` text NOT NULL,
  `issue_with_previous_gym` text NOT NULL,
  `any_health_issue` text NOT NULL,
  `health_issue` text NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  `conversion_status` varchar(10) NOT NULL DEFAULT 'Warm',
  `service` varchar(30) NOT NULL,
  `purpose` varchar(100) NOT NULL,
  `reference_from_media` varchar(50) NOT NULL,
  `following_by` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `enquiry_id`, `name`, `phone`, `phone2`, `email`, `address`, `occupation`, `dob`, `age`, `gender`, `had_gym_before`, `issue_with_previous_gym`, `any_health_issue`, `health_issue`, `status`, `conversion_status`, `service`, `purpose`, `reference_from_media`, `following_by`, `date`) VALUES
(6, 'GYM2', 'piyush sharma', '2147483647', '0', '', 'raigarh', '', '', '18', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Zumba', 'Fitness', 'Others', '', '2019-06-05 10:57:13'),
(21, 'GYM2', 'rakhi swant', '2147483647', '0', '', 'mumbai', 'dancer', '', '26', 'Female', 'Yes', 'Have questions about your software or other MINDBODY products?', 'Yes', 'Have questions about your software or other MINDBODY products?', 'Pending', 'Warm', 'Dance Class', 'Weight Loss', 'Radio', '', '2019-06-05 13:51:42'),
(31, 'GYM2', 'Yoga', '0', '0', '', 'edfesfg', '58959556', '', 'sefwerf', 'efsfef', '20', 'Female', 'No', '', 'Pending', 'Warm', 'No', '', 'Hoarding', '', '2019-06-06 16:54:04'),
(41, 'GYM2', 'Kiran', '2147483647', '0', '', 'vfcb', 'job', '', '27', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Yoga', 'Body Building', 'Radio', '', '2019-08-06 15:51:36'),
(42, 'GYM2', 'rfgerg', '2147483647', '2147483647', '', 'erwtgfwerf', 'job', '', '27', 'Male', 'No', '', 'No', '', 'Pending', 'Cold', 'Yoga', 'Weight Gain', 'Radio', '', '05-08-2019'),
(45, 'GYM2', 'vrf efef fedf efd', '8995655623', '9899898980', '', 'fvfdv', 'dscfsdc', '', '31', 'Female', 'No', '', 'No', '', 'Pending', 'Hot', 'Yoga', 'Weight Gain', 'Coupons', '', '06-08-2019'),
(48, 'GYM2', 'reerereeerr rerererer', '87977665656', '878765655', '', 'fsd', 'sd', '', '22', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Yoga', 'Body Building', 'Radio', '', '08-08-2019'),
(49, 'GYM2', 'Rahul Singh', '9875412589', '9874521025', '', 'rdfref', 'ewfdrew', '', '22', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Yoga', 'Body Building', 'Social Media', '', '09-08-2019'),
(50, 'GYM2', 'fghf', '658756875', '85785', '', 'htfgh', 'dgfdg', '', '28', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class', 'Weight Loss', 'Hoarding', '', '29-08-2019'),
(51, 'GYM2', 'refrewf', 'efrdew', 'fewrfd', '', 'werfdew', 'ewdf', '', '26', 'Male', 'No', '', 'No', 'wedew', 'Pending', 'Warm', 'Yoga', 'Body Building', 'Coupons', '', '18-09-2019'),
(52, 'GYM2', 'fghrfdgh', 'grfdg', 'redg', '', 'regferg', 'hyfhgtr', '', '27', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga,Zumba', '', 'Flyer', '', '12-09-2019'),
(53, 'GYM2', 'rfgretf', 'werwer', 'werwe', '', 'rewrwe', 'ewrew', '', '27', 'Female', 'No', '', 'No', 'wer', 'Pending', 'Warm', 'Dance Class,Yoga,Zumba,Gym', 'Weight Loss,Body Building,Weig', 'Hoarding', '', '05-09-2019'),
(54, 'GYM2', 'Mohini Sharma', '9875412589', '6985478525', '', 'fghtrg', 'Self-Employeed', '', '27', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga,Zumba', 'Weight Loss,Body Building,Fitn', 'Social Media', '', '29-08-2019'),
(55, 'ENQ0055', 'Kishan', '7854589652', '8754258963', '', 'efewsfd', 'Business', '03/16/1990', '29', 'Male', 'No', '', 'No', '', 'Pending', 'Hot', 'Dance Class,Yoga', 'Weight Gain,Fitness,General Training', 'Flyer', '', '27-08-2019'),
(56, 'ENQ0056', 'sacdas', 'a', 'sa', '', 'as', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Weight Gain,Fitness', 'Flyer', '', '03-09-2019'),
(57, 'ENQ0057', 'grdtr4trtre', 'dsfsd', 'fsdf', '', 'sdfs', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Hot', 'Dance Class,Zumba', 'Body Building,General Training', 'Hoarding', '', '11-09-2019'),
(58, 'ENQ0058', 'w3erwqe34r3r', 'wer', 'aw', '', 'wqewq', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Zumba', 'Weight Gain', 'Flyer', '', '04-09-2019'),
(59, 'ENQ0059', 'feswf', 'erfdwe', 'ferwe', '', 'dwqewq', 'Business', '', '1', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class', 'Body Building', 'Flyer', '', '05-09-2019'),
(60, 'ENQ0060', 'fgedrfg', '844895', '959596+2', '', 'nbuihjnij', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Body Building,Weight Gain', 'Social Media', '', '05-09-2019'),
(61, 'ENQ0061', 'fgvwerf', '4546543523', '234243', '', 'edfw', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Body Building,Fitness', 'Friend', '', '04-09-2019'),
(62, 'ENQ0062', 'fgewf', '4356345234', '234324', '', 'ewrfewf', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Weight Gain', 'Hoarding', '', '05-09-2019'),
(63, 'ENQ0063', 'fgewf', '4356345234', '234324', '', 'ewrfewf', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Weight Gain', 'Hoarding', '', '05-09-2019'),
(64, 'ENQ0064', 'fgewf', '4356345234', '234324', '', 'ewrfewf', 'Job', '', '1', 'Female', 'No', '', 'No', '', 'Pending', 'Hot', 'Dance Class,Yoga', 'Weight Gain', 'Hoarding', '', '05-09-2019'),
(65, 'ENQ0065', 'wqedwq', '65655544', '35445', '', 'esf', 'Job', '', '2', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class', 'Body Building', 'Friend', '', '05-09-2019'),
(66, 'ENQ0066', 'Tushar katore', '6232072339', '9886694339', '', 'Rly bangakla para', 'Job', '28-11-1991', '', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Zumba', 'Weight Loss,Body Building,Weight Gain', 'Flyer', '', '11-09-2019'),
(67, 'ENQ0067', 'Yanick Winter', '9875425896', '6521458963', '', 'Tatya para', 'Business', '02/05/1997', '22', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga,Zumba', 'Body Building,Weight Gain', 'Radio', '', '11-09-2019'),
(68, 'ENQ0068', 'wqeqwe', '234324', '42343', '', 'qwadwqds', 'Job', '09/18/2019', '0', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', '', '', 'Friend', '', ''),
(69, 'ENQ0069', 'edsfesd', 'awsd', 'wasd', '', 'as', 'Job', '', '', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', '', '', 'Friend', '', '02-10-2019'),
(70, 'ENQ0070', 'Rakesh sahu', '9874525896', '9632050235', '', 'Rly bangla para', 'Self-Employeed', '02/09/2000', '19', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga,Zumba,Gym', 'Weight Loss,Body Building,Weight Gain,Fitness,General Training', 'Flyer', '', '17-10-2019'),
(71, 'ENQ0071', 'Sheikh moh', '9875412589', '6985478963', '', 'wedfe', 'Job', '03/09/1990', '29', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga,Zumba,Gym', 'Weight Loss,Weight Gain,Fitness', 'Friend', '20', '16-10-2019'),
(72, 'ENQ0072', 'Raja Reddy', '8956425896', '9854258963', '', 'rdgtg', 'Job', '03/09/2001', '18', 'Female', 'No', '', 'No', '', 'Pending', 'Warm', 'Yoga', 'Body Building,Fitness', 'Friend', 'Hero', '09-03-2000'),
(73, 'ENQ0073', 'Naomi', '9874589652', '8989898989', '', 'ewrf', 'Job', '07/20/1991', '28', 'Female', 'No', '', 'No', '', 'Pending', 'Expected P', 'Dance Class,Yoga', 'Weight Loss,Body Building', 'Flyer', 'Hero', '16-10-2019'),
(74, 'ENQ0074', 'Avinash Mehta', '9875425896', '9658963258', '', 'ewfd', 'Job', '03/15/1990', '29', 'Male', 'No', '', 'No', 'dsfcs', 'Pending', 'Expected P', 'Yoga', '', 'Friend', 'golu', '15-10-2019'),
(75, 'ENQ0075', 'Rajdeep Manna', '8574589652', '9874589635', '', 'wed', 'Self-Employeed', '03/11/1993', '26', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Weight Loss,Weight Gain,Fitness', 'Friend', 'golu', '15-10-2019'),
(76, 'ENQ0076', 'wded', '98595662669', '8995269553', '', 'wqesq', 'Job', '10/09/2019', '0', 'Male', 'No', '', 'No', '', 'Pending', 'Expected P', 'Dance Class,Yoga', 'Weight Loss,Weight Gain', 'Friend', 'uyhiji', '19-11-2019'),
(77, 'ENQ0077', 'heymant', '8754589652', '895000000', '', 'ewde', 'Job', '03/10/2000', '19', 'Female', 'No', '', 'No', '', 'Pending', 'Expected P', 'Dance Class,Yoga', 'Weight Loss', 'Friend', 'tyhtrhg', '21-11-2019'),
(78, 'ENQ0078', 'cartoon', '8975420256', '5689202563', '', 'werdf', 'Business', '08/21/1992', '27', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class,Yoga', 'Body Building,Weight Gain', 'Social Media', 'dsfrgrgfgv fvd52', '30-10-2019'),
(79, 'ENQ0079', 'heera thakur', '9854210256', '9852365202', 'refref@gmail.com', 'Tere beri ke niche', 'Self-Employeed', '26-07-1991', '28', 'Male', 'No', '', 'No', '', 'Pending', 'Warm', 'Dance Class', 'Weight Loss', 'Flyer', 'mahesh kumar', '11-12-2019');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_follow_up`
--

CREATE TABLE `enquiry_follow_up` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `date` varchar(20) NOT NULL,
  `remark` text NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_follow_up`
--

INSERT INTO `enquiry_follow_up` (`id`, `enquiry_id`, `date`, `remark`, `status`) VALUES
(20, 21, '05-06-2019', 'hii', 'Warm'),
(21, 21, '10-06-2019', '', ''),
(22, 16, '05-06-2019', 'out Of Order', 'Hot'),
(23, 16, '11-06-2019', 'hfhgh', 'Hot'),
(24, 16, '11-06-2019', 'hfhgh', 'Hot'),
(25, 16, '07-06-2019', '', ''),
(26, 16, '12-06-2019', 'nbjkn', 'Cold'),
(27, 16, '13-06-2019', 'rtryy6', 'Hot'),
(28, 16, '15-06-2019', '', ''),
(29, 13, '06-06-2019', 'hyjgjuy', 'Hot'),
(30, 13, '06-06-2019', '', ''),
(31, 10, '06-06-2019', 'ytuyuyt', 'Hot'),
(32, 10, '06-06-2019', '', ''),
(33, 11, '06-06-2019', 'nmdsdsd', 'Hot'),
(34, 11, '06-06-2019', '', ''),
(35, 25, '06-06-2019', '', ''),
(36, 26, '06-06-2019', '', ''),
(37, 27, '06-06-2019', '', ''),
(38, 28, '06-06-2019', '', ''),
(39, 29, '06-06-2019', '', ''),
(40, 30, '06-06-2019', '', ''),
(41, 31, '06-06-2019', '', ''),
(42, 32, '06-06-2019', '', ''),
(43, 33, '06-06-2019', '', ''),
(44, 34, '07-06-2019', '', ''),
(45, 35, '11-06-2019', '', ''),
(46, 36, '22-07-2019', '', ''),
(47, 37, '06-08-2019', 'gregf', 'Cold'),
(48, 37, '09-08-2019', 'hellow', 'Hot'),
(49, 38, '06-08-2019', 'gregf', 'Cold'),
(50, 38, '09-08-2019', 'hellow', 'Hot'),
(51, 38, '10-08-2019', 'ghbfdgg rfgrdf', 'Warm'),
(52, 38, '12-08-2019', 'grgfref', 'Hot'),
(53, 38, '13-08-2019', 'fgrf', 'Hot'),
(54, 38, '06-08-2019', 'gregf', 'Cold'),
(55, 39, '06-08-2019', 'gregf', 'Cold'),
(56, 39, '13-08-2019', 'fgrf', 'Hot'),
(57, 39, '06-08-2019', 'gregf', 'Cold'),
(58, 39, '14-08-2019', 'gredg', 'Hot'),
(59, 39, '16-08-2019', '', ''),
(60, 40, '06-08-2019', 'gregf', 'Cold'),
(61, 40, '14-08-2019', '', ''),
(62, 41, '06-08-2019', 'gregf', 'Cold'),
(63, 41, '08-08-2019', '', ''),
(64, 42, '06-08-2019', 'gregf', 'Cold'),
(65, 42, '07-08-2019', '', ''),
(66, 43, '06-08-2019', 'gregf', 'Cold'),
(67, 43, '07-08-2019', '', ''),
(68, 44, '06-08-2019', 'gregf', 'Cold'),
(69, 44, '08-08-2019', '', ''),
(70, 45, '06-08-2019', 'gfhbf', 'Hot'),
(71, 45, '09-08-2019', '', ''),
(72, 45, '10-08-2019', '', ''),
(73, 46, '10-08-2019', '', ''),
(74, 47, '10-08-2019', '', ''),
(75, 48, '10-08-2019', '', ''),
(76, 49, '31-08-2019', '', ''),
(77, 50, '02-09-2019', '', ''),
(78, 51, '04-09-2019', 'ewf', 'Hot'),
(79, 52, '04-09-2019', 'ewf', 'Hot'),
(80, 53, '04-09-2019', 'ewf', 'Hot'),
(81, 54, '04-09-2019', 'ewf', 'Hot'),
(82, 54, '05-09-2019', 'freew', 'Hot'),
(83, 54, '06-09-2019', '', ''),
(84, 0, '04-09-2019', '', ''),
(85, 55, '04-09-2019', 'rgerfg', 'Hot'),
(86, 55, '11-09-2019', '', ''),
(87, 56, '04-09-2019', '', ''),
(88, 0, '04-09-2019', '', ''),
(89, 57, '04-09-2019', 'efef', 'Hot'),
(90, 57, '05-09-2019', 'freew', 'Hot'),
(91, 0, '05-09-2019', 'freew', 'Hot'),
(92, 0, '05-09-2019', 'freew', 'Hot'),
(93, 60, '05-09-2019', 'freew', 'Hot'),
(94, 61, '05-09-2019', 'freew', 'Hot'),
(95, 0, '05-09-2019', 'freew', 'Hot'),
(96, 64, '05-09-2019', 'freew', 'Hot'),
(97, 64, '07-09-2019', '', ''),
(98, 65, '20-09-2019', '', ''),
(99, 66, '23-09-2019', '', ''),
(100, 67, '23-09-2019', '', ''),
(101, 68, '12-10-2019', '', ''),
(102, 69, '17-10-2019', '', ''),
(103, 70, '17-10-2019', '', ''),
(104, 71, '17-10-2019', '', ''),
(105, 72, '19-10-2019', '', ''),
(106, 73, '21-10-2019', 'dfsdf', 'Expected Payment'),
(107, 73, '23-10-2019', 'tomorrow  will call said', 'Expected Payment'),
(108, 73, '24-10-2019', 'error', 'Expected Payment'),
(109, 75, '21-10-2019', 'dfsdf', 'Expected Payment'),
(110, 74, '21-10-2019', 'dfsdf', 'Expected Payment'),
(111, 74, '22-10-2019', 'get appointment for tomorrow', 'Hot'),
(112, 76, '21-10-2019', 'dfsdf', 'Expected Payment'),
(113, 76, '17-10-2019', '', ''),
(114, 76, '22-10-2019', 'get appointment for tomorrow', 'Hot'),
(115, 76, '23-10-2019', 'tomorrow  will call said', 'Expected Payment'),
(116, 76, '24-10-2019', 'error', 'Expected Payment'),
(117, 76, '25-10-2019', '', ''),
(118, 77, '21-10-2019', 'dfsdf', 'Expected Payment'),
(119, 77, '22-10-2019', 'get appointment for tomorrow', 'Hot'),
(120, 77, '23-10-2019', 'tomorrow  will call said', 'Expected Payment'),
(121, 77, '24-10-2019', 'error', 'Expected Payment'),
(122, 77, '25-10-2019', '', ''),
(123, 78, '02-11-2019', '', ''),
(124, 79, '17-12-2019', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `id` int(11) NOT NULL,
  `expense_type` varchar(20) NOT NULL,
  `expense_amount` varchar(20) NOT NULL,
  `paid_by` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`id`, `expense_type`, `expense_amount`, `paid_by`, `date`, `remarks`) VALUES
(1, 'Telephone bill', '200000', 'Cash', '12-06-2019', 'hi...there'),
(4, 'Salary Expense', '333', 'Cash', '03-06-2019', ''),
(5, 'Telephone bill', '55000', 'Cash', '10-06-2019', 'gfggd'),
(6, 'Marketing Expenses', '9000.00', 'Internet Banking', '23-07-2019', 'paid by');

-- --------------------------------------------------------

--
-- Table structure for table `expense_type`
--

CREATE TABLE `expense_type` (
  `id` int(11) NOT NULL,
  `expensetype_name` varchar(50) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_type`
--

INSERT INTO `expense_type` (`id`, `expensetype_name`, `date`) VALUES
(1, 'Telephone Bill Expensee', '2019-07-01 09:39:48'),
(2, 'Computer Expenses', '2019-07-23 09:12:59'),
(3, 'Salary Expenses', '2019-06-13 10:16:34'),
(4, 'Light Bill Expenses', '2019-06-13 10:17:12'),
(5, 'Marketing  Expenses', '2019-06-13 10:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `category`, `file`, `date`) VALUES
(6, 'Toppers Student', '1559995492download (1).jpg', '2019-06-08 12:04:52'),
(8, 'Toppers Student', '1559995525coaching-abdb6cfbc0.jpg', '2019-06-08 12:05:26'),
(10, 'Gym 11', '1565090406111.jpg', '2019-08-06 11:20:07');

-- --------------------------------------------------------

--
-- Table structure for table `login_admin`
--

CREATE TABLE `login_admin` (
  `id` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_admin`
--

INSERT INTO `login_admin` (`id`, `user`, `pass`, `date`, `name`) VALUES
(1, 'prefit@gmail.com', 'pass', '2019-05-30 05:55:28', 'Raj Patil');

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `amount` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `remarks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`id`, `name`, `quantity`, `amount`, `date`, `remarks`) VALUES
(2, 'dumbbell-press1', '20', '21000', '13-06-2019', 'within 2 day$');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `membership_type` varchar(50) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `phone_number2` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(20) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `validity_from` varchar(20) NOT NULL,
  `validity_to` varchar(20) NOT NULL,
  `reference_from_media` varchar(50) NOT NULL,
  `paid_by` varchar(50) NOT NULL,
  `receipt_type` varchar(50) NOT NULL,
  `member_image` varchar(255) NOT NULL,
  `enquiry_id` varchar(30) NOT NULL,
  `following_by` varchar(100) NOT NULL,
  `payment_status` varchar(30) NOT NULL DEFAULT 'Pending',
  `date` varchar(60) NOT NULL,
  `remarks` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `member_id`, `membership_type`, `member_name`, `phone_number`, `phone_number2`, `email`, `gender`, `dob`, `state`, `city`, `age`, `address`, `occupation`, `marital_status`, `total_amount`, `paid_amount`, `due_amount`, `validity_from`, `validity_to`, `reference_from_media`, `paid_by`, `receipt_type`, `member_image`, `enquiry_id`, `following_by`, `payment_status`, `date`, `remarks`) VALUES
(49, 'MEM0049', '6000/6 Months', 'Shristy Thawait', '8965033005', '6232072339', 'jkm@gmail.com', 'Female', '14-11-1995', 'Chhattisgarh', 'Raipur', '25', 'Galiiii', 'Web Designer', 'unmarried', 10000, 7000, -2000, '28-05-2019', '21-11-2019', 'Social Media', '', '', '', '', 'cfcfcf', 'Pending', '2019-07-22 11:52:22', 'wedwdw'),
(51, 'MEM0051', 'Diamond / Rs.10000 / 365days', 'dcfdsfcs', 'sadasd', '', '', 'Male', '11-11-1999', 'Haryana', 'sadsd', '26', 'sadsad', 'sadsad', 'unmarried', 10000, 8000, -1000, '09-07-2019', '13-09-2019', 'Radio', '', '', '', '', '', 'Pending', '2019-07-22 15:19:03', ''),
(52, 'MEM0052', '6', 'Ritesh deshmukh', '7854210256', '', '', '', '', '', '', '', '', 'Job', 'unmarried', 10000, 5000, -1000, '21-10-2019', '12-12-2019', '', '', '', '', '', '', 'Pending', '23-10-2019', ''),
(53, 'MEM0053', 'Diamond / Rs.10000 / 365days', '', '', '', '', 'Female', '', '', '', '14', '', '', 'married', 10000, 4000, -2000, '', '', 'Friend', '', '', '', '', '', 'Pending', '17-07-2019', ''),
(54, 'MEM0054', 'Diamond / Rs.10000 / 365days', 'xfvgsdv', '7854422102', '', '', 'Female', '', '', '', '14', '', '', 'married', 10000, 7000, -1000, '', '', 'Social Media', '', '', '', '', '', 'Pending', '2019-07-22 16:09:45', 'dfewrfwefd'),
(55, 'MEM0055', 'Diamond / Rs.10000 / 365days', 'efwqdf', 'qwdeqwd', '', '', 'Male', '', 'Haryana', 'wdes', '17', 'wdsa', '', 'unmarried', 10000, 8000, -1000, '', '', 'Friend', '', '', '', '', '', 'Pending', '17-07-2019', 'wedqwdswsdewqd sedfwqedw wdw wd'),
(56, 'MEM0056', 'Shristy thawait / Rs.10000 / 10days', 'ref', 'erfewrf', '', '', 'Female', '', '', '', '16', '', '', 'unmarried', 10000, 11000, -1000, '', '', 'Friend', '', '', '', '', '', 'Pending', '2019-07-22 16:47:20', 'ghgdfgdf'),
(57, 'MEM0057', 'Shristy thawait / Rs.10000 / 10days', 'dsfdf', '', '', '', 'Female', '', '', '', '14', 'dasd', 'sdad', 'unmarried', 10000, 10100, -100, '', '', 'Friend', '', '', '', '', '', 'Pending', '5-9-2019', 'sfgefdf'),
(58, 'MEM0058', 'Diamond / Rs.10000 / 365days', 'sadasd', 'asds', '', '', 'Male', '', '', '', '14', 'sads', 'asdds', 'unmarried', 10000, 13000, 0, '', '', 'Friend', '', '', '', '', '', 'Pending', '2019-07-22 16:59:50', 'ttuuyyy t ghtrg tgt '),
(59, 'MEM0059', 'nandani  / Rs.50000 / 20days', 'Nandu', '7896541025', '', '', 'Female', '01-07-2019', 'Gujarat', 'hbjnm', '21', 'koijojk,', '', 'married', 50000, 50000, 0, '15-07-2019', '31-07-2019', 'Social Media', '', '', '', '', '', 'Pending', '20-07-2019', 'ftgyhuijokpl[; ujikl'),
(60, 'MEM0060', 'Platinum / Rs.5000 / 180days', 'Neeraj Mishra', '7854120236', '', '', 'Female', '31-12-1992', 'Gujarat', 'wertgge', '27', 'Kotra Road', 'job', 'unmarried', 5000, 5000, 0, '06-05-2019', '09-11-2019', 'Flyer', '', '', '', '', '', 'Pending', '20-07-2019', 'just paid 1000 rupeesrgfrgf rf frf r'),
(61, 'MEM0061', 'Diamond / Rs.10000 / 365days', 'Gagan Bhalla', '7854210256', '', '', 'Male', '16-06-1999', 'Jharkhand', 'raigarh', '26', 'ewrfdef', 'business', 'married', 10000, 10000, 0, '03-06-2019', '16-11-2019', 'Seminars', '', '', '', '', '', 'paid', '16-07-2019', 'hii'),
(62, 'MEM0062', 'Diamond / Rs.10000 / 365days', 'Rajni Kant', '8742512036', '', '', 'Male', '08-02-1995', 'Goa', 'Bhilai', '22', 'ewfdref', 'edqwd', 'unmarried', 10000, 10000, 0, '04-06-2019', '20-09-2019', 'Flyer', '', '', '', '', '', 'paid', '16-07-2019', 'Hii Paid'),
(63, 'MEM0063', 'Diamond / Rs.10000 / 365days', 'ewrf4ef', '', '', '', 'Female', '', '', '', '14', '', '', 'married', 10000, 5200, 4800, '', '', 'Friend', '', '', '', '', '', 'Pending', '16-07-2019', 'sdfgh'),
(64, 'MEM0064', 'Diamond / Rs.10000 / 365days', 'wqeqwe', '', '', '', 'Female', '', '', '', '14', '', '', 'married', 10000, 5000, 5000, '', '', 'Friend', '', '', '', '', '', 'Pending', '20-07-2019', ''),
(65, 'MEM0065', 'Diamond / Rs.10000 / 365days', 'trghyertgertg', '', '', '', 'Female', '', '', '', '14', '', '', 'married', 10000, 6500, 3500, '', '', 'Friend', '', '', '', '', '', 'Pending', '20-07-2019', ''),
(66, 'MEM0066', 'Gold / Rs.3000 / 90days', 'dsafvasfcsa', '', '', '', 'Female', '', '', '', '14', '', '', 'married', 3000, 1500, 1500, '30-06-2019', '30-07-2019', 'Friend', '', '', '', '', '', 'Pending', '2019-07-23 17:50:59', ''),
(67, 'MEM0067', 'Diamond / Rs.10000 / 365days', 'Hero9009', '8956321055', '', '', 'Male', '', 'Gujarat', 'sdaswed', '14', 'sadxaXA', 'asAS', 'unmarried', 10000, 5000, 5000, '02-06-2019', '20-09-2019', 'Social Media', '', '', '', '', '', 'Pending', '20-07-2019', 'wedfrt'),
(68, 'MEM0068', 'Diamond / Rs.10000 / 365days', 'Piyush Kumar', '9875421025', '', '', 'Male', '14-03-1991', 'Delhi', 'drgg', '25', 'gwerfwefr', 'werrwf', 'married', 10000, 9000, 1000, '01-07-2019', '14-09-2019', 'Social Media', '', '', '', '', '', 'Pending', '16-07-2019', 'yjuythb'),
(69, 'MEM0069', 'Diamond / Rs.10000 / 365days', 'fvdv', '7854210256', '', '', 'Female', '02-02-1999', 'Gujarat', 'sdfcasd', '26', 'adsda', 'sdasd', 'married', 10000, 9902, 98, '01-07-2019', '09-11-2019', 'Flyer', '', '', '', '', '', 'Pending', '18-07-2019', 'efgethryjtukio rtgyh'),
(70, 'MEM0070', 'Platinum / Rs.5000 / 180days', 'dsfsedf', '7854210256', '', '', 'Female', '14-06-1994', 'Gujarat', 'aswdad', '25', 'sadds', 'dsaasd', 'unmarried', 5000, 3600, 1400, '17-07-2019', '16-07-2019', 'Friend', '', '', '1564495304aa0d213f-f4a9-43eb-bc6a-a051ffef89fb1555', '', '', 'Pending', '24-07-2019', 'swadaswd'),
(71, 'MEM0071', 'Diamond / Rs.10000 / 365days', 'erfwerf', '849859', '', '', 'Female', '01-08-2019', '', '', '14', 'ewrf', 'ewrf', 'unmarried', 10000, 8000, 2000, '24-07-2019', '03-08-2019', 'Hoarding', '', '', '1564495724Workoutready_730x411.jpg', '', '', 'Pending', '24-07-2019', 'ewrf'),
(72, 'MEM0072', 'Platinum / Rs.5000 / 180days', 'Dilip Kumar', '7854210256', '', '', 'Male', '14-06-1994', 'Goa', 'Mumbai', '26', 'hie', 'job', 'unmarried', 5000, 1000, 4000, '30-06-2019', '07-09-2019', 'Flyer', '', '', '1564553509images.jpg', '', '', 'Pending', '30-07-2019', 'werfe'),
(73, 'MEM0073', '10000/12 Months', 'Tushar', '8754210256', '6832072339', '', '', '', '', '', '', '', 'wqdwqd', '', 10000, 1000, 900, '22-10-2019', '17-01-2020', '', 'Cash', 'Manual', '1564556669iop.jpg', '', 'Hero', 'Pending', '23-10-2019', ''),
(74, 'MEM0074', 'Platinum / Rs.5000 / 180days', 'tyuy tyhy5', '8754210256', '', '', 'Female', '02-01-2019', '', 'serdfg', '20', 'ef', 'efd', 'married', 5000, 3000, 2000, '02-07-2019', '15-11-2019', 'Radio', 'Internet Banking', 'Printed', '1564562372catpops.png', '', '', 'Pending', '18-07-2019', 'dfvs'),
(75, 'MEM0075', 'Platinum / Rs.5000 / 180days', 'efrerfef efewfdr44', '7854210256', '', '', 'Female', '08-07-2019', 'Himachal Pradesh', 'efe', '14', 'efdf', 'efe', 'married', 5000, 1000, -1000, '', '', 'Flyer', 'Paytm', 'Email', '1564562441cleaning-glass-at-home-1559038890.jpg', '', '', 'Pending', '10-07-2019', 'dfcsdec'),
(76, 'MEM0076', '6000/5 Months', 'Sonu Kumar', '9854210256', '98754896523', '', '', '', '', '', '', '', 'job', 'unmarried', 5000, 5000, 0, '22-10-2019', '21-12-2019', '', 'Internet Banking', 'Printed', '1564738468aa0d213f-f4a9-43eb-bc6a-a051ffef89fb1555', '', '', 'Pending', '31-07-2019', ''),
(77, 'MEM0077', 'Gold / Rs.3000 / 90days', 'edfedf', '7677676546', '', '', 'Male', '01-02-2000', 'Chhattisgarh', 'sdfces', '26', 'sadx', 'sxsa', 'unmarried', 3000, 1000, -800, '05-08-2019', '22-08-2019', 'Flyer', 'Internet Banking', 'Email', '1564738610buses-500x500.png', '', '', 'Pending', '30-07-2019', 'dfv'),
(78, 'MEM0078', 'Gold / Rs.3000 / 90days', 'Priyanka sharma', '8754210256', '', '', 'Female', '14-06-1989', 'Chhattisgarh', 'Raipur', '29', 'dsfgh', 'business', 'married', 3000, 3000, 0, '27-05-2019', '15-11-2019', 'Flyer', 'Internet Banking', 'Email', '1565004727Workoutready_730x411.jpg', '', '', 'Pending', '04-08-2019', 'wdqerfg'),
(79, 'MEM0079', 'Diamond / Rs.10000 / 365days', 'fgrdfg', '84798655526', '', '', 'Male', '05-02-2019', 'Goa', 'fdrssd', '23', 'sdfsd', 'sdfsdf', 'unmarried', 10000, 4000, -2000, '31-07-2019', '22-08-2019', 'Flyer', 'Check', 'Printed', '15663051341.jpg', '', '', 'Pending', '14-08-2019', 'dfdsf'),
(86, 'MEM0086', '6000/5 Months', 'efdedfe e', '', '', '', 'Female', '', '', '', '', '', 'Job', 'married', 6000, 0, 6000, '', '5 Months', 'Friend', 'Cash', 'Manual', '1568963765aa0d213f-f4a9-43eb-bc6a-a051ffef89fb1555', '', '', 'Pending', '', ''),
(87, 'MEM0087', '6000/5 Months', 'regtt', '3443243', '8695695632', '', 'Female', '', '', '', '', '', 'Job', 'married', 6000, 1000, 5000, '', '5 Months', 'Friend', 'Cash', 'Manual', '15689639404.jpg', '', '', 'Pending', '', ''),
(88, 'MEM0088', '6000/5 Months', 'feswf', 'erfdwe', 'ferwe', '', 'Female', '', '', '', '1', 'dwqewq', 'Business', 'married', 6000, 1000, 5000, '', '5 Months', 'Flyer', 'Cash', 'Manual', '15689640734.jpg', '', '', 'Pending', '', ''),
(92, 'MEM0092', '6000/5 Months', 'Yanick Winter', '9875425896', '6521458963', '', 'Female', '02/05/1997', 'Arunachal Pradesh', 'ewfr', '22', 'Tatya para', 'Business', 'married', 6000, 2000, 4000, '23-09-2019', '20-12-2019', 'Radio', 'Cash', 'Manual', '15692304554.jpg', '', '', 'Pending', '18-09-2019', ''),
(93, 'MEM0093', '10000/12 Months', 'Kishore Kumar', '9874521589', '6521456987', '', 'Female', '11/22/1991', '', 'raipur', '27', 'fdvdrv', 'Self-Employeed', 'married', 10000, 4000, 6000, '09-10-2019', '18-01-2020', 'Friend', 'Cash', 'Printed', '15713016813 (2).jpg', '', '', 'Pending', '17-10-2019', 'adwa'),
(94, 'MEM0094', '6000/5 Months', 'Naomi', '9874589652', '8989898989', '', 'Female', '07/20/1991', '', 'raipur', '28', 'ewrf', 'Job', 'married', 6000, 2000, 4000, '13-10-2019', '07-12-2019', 'Flyer', 'Cash', 'Manual', '15716398302 (2).jpg', '', 'Hero', 'Pending', '09-03-1990', 'rf'),
(95, 'MEM0095', '6000/6 Months', 'Shakeel', '9875425896', '9886694339', '', 'Female', '11/23/1991', '', 'fgdrf', '27', 'edsfsd', 'Job', 'married', 6000, 1000, 5000, '22-10-2019', '24-01-2020', 'Friend', 'Cash', 'Manual', '1571649951ewb-2.png', '', 'hero no1', 'Pending', '23-10-2019', 'fvbfdsv'),
(96, 'MEM0096', '6000/5 Months', 'Rahul sahu', '9875425892', '9854525896', '', '', '', '', '', '', '', 'Student', 'married', 10000, 1000, 9000, '01-10-2019', '01-12-2019', '', 'Cash', 'Printed', '15716502461.jpg', '', '', 'Pending', '21-11-2019', ''),
(97, 'MEM0097', '6000/5 Months', 'Salman khan', '8754125896', '9520000058', '', 'Female', '03/05/1999', '', '', '20', 'dsrfc', 'Job', 'married', 6000, 1000, 5000, '01-10-2019', '20-11-2019', 'Friend', 'Cash', 'Manual', '1571731898buses-500x500.png', '', 'hero no1', 'Pending', '22-10-2019', 'efref fgtgftfb'),
(98, 'MEM0098', '6000/5 Months', 'hellow', '9875489652', '6985789966', '', 'Female', '03/09/1990', '', '', '29', 'wedfe', 'Job', 'married', 6000, 1000, 5000, '21-10-2019', '13-12-2019', 'Friend', 'Cash', 'Manual', '1571811146ewb-2.png', '', '', 'Pending', '', ''),
(99, 'MEM0099', '6000/5 Months', 'heymant', '8754589652', '895000000', '', 'Female', '03/10/2000', 'Arunachal Pradesh', 'dcdes', '19', 'ewde', 'Job', 'married', 6000, 1000, 5000, '22-10-2019', '13-12-2019', 'Friend', 'Cash', 'Manual', '15718249213 (2).jpg', '', '', 'Pending', '19-07-1991', ''),
(100, 'MEM0100', '10000/12 Months', 'dfgrd', 'edfesf', 'sedfs', '', 'Male', '03/09/2000', 'Arunachal Pradesh', 'erffre', '19', 'efewsfd', 'Business', 'married', 10000, 1000, 9000, '22-10-2019', '13-12-2019', 'Flyer', 'Cash', 'Manual', '15718255473 (2).jpg', '', 'Hero', 'Pending', '', ''),
(101, 'MEM0101', '6000/5 Months', 'fgedrfg', '844895', '959596+2', '', 'Female', '02/02/2017', '', '', '2', 'nbuihjnij', 'Job', 'married', 6000, 6000, 0, '22-10-2019', '13-12-2019', 'Social Media', 'Cash', 'Manual', '1571825702PaperCut.png', '', 'Hero', 'paid', '22-10-2019', ''),
(102, 'MEM0102', '10000/12 Months', 'Avinash Mehta', '9875425896', '9658963000', '', 'Female', '03/15/1990', 'Andhra Pradesh', 'grefge', '29', 'ewfd', 'Job', 'married', 10000, 2000, 8000, '14-10-2019', '13-12-2019', 'Friend', 'Cash', 'Manual', '15719945602 (2).jpg', 'ENQ0074', 'golu', 'Pending', '23-10-2019', ''),
(103, 'MEM0103', '10000/12 Months', 'Rajni Bhai', '9875425896', '6852178965', 'tushar.katore3112@gmail.com', 'Male', '06/24/1999', '', 'bhilai', '20', 'sdfe', 'Self-Employeed', 'unmarried', 10000, 2000, 8000, '28-10-2019', '14-02-2020', 'Hoarding', 'Cash', 'Manual', '1572613487IMG-20191024-WA0030.jpg', '', 'hero no1', 'Pending', '31-10-2019', ''),
(104, 'MEM0104', '10000/12 Months', 'Rajni nath', '9875425896', '6852178965', 'tushar.katore3112@gmail.com', 'Male', '06/24/1999', '', 'bhilai', '20', 'sdfe', 'Self-Employeed', 'unmarried', 10000, 2000, 8000, '28-10-2019', '14-02-2020', 'Hoarding', 'Cash', 'Manual', '1572613759IMG-20191024-WA0030.jpg', '', 'hero no1', 'Pending', '31-10-2019', ''),
(105, 'MEM0105', '6000/5 Months', 'jhijkpoln iijok', '987542589', '9652147569', 'tushar.katore3112@gmail.com', 'Male', '03/04/2010', 'Assam', 'jhioklp', '9', 'werg', 'Business', 'married', 6000, 1000, 5000, '29-10-2019', '11-01-2020', 'Social Media', 'Cash', 'Printed', '1572614603catpops.png', '', 'hero no1', 'Pending', '29-10-2019', ''),
(106, 'MEM0106', '6000/5 Months', 'dsfedfwesd', '98556875425', '9875425896', 'tushar.katore3112@gmail.com', 'Male', '02/14/2017', '', '', '2', 'wesqs', 'Job', 'unmarried', 6000, 1000, 5000, '29-10-2019', '18-01-2020', 'Hoarding', 'Cash', 'Printed', '1572614853111.jpg', '', 'edfewfe', 'Pending', '31-10-2019', ''),
(107, 'MEM0107', '6000/5 Months', 'dsfedfwesd', '98556875425', '9875425896', 'tushar.katore3112@gmail.com', 'Male', '02/14/2017', '', '', '2', 'wesqs', 'Job', 'unmarried', 6000, 2000, 4000, '29-10-2019', '18-01-2020', 'Hoarding', 'Cash', 'Printed', '1572615001111.jpg', '', 'edfewfe', 'Pending', '31-10-2019', ''),
(108, 'MEM0108', '6000/5 Months', 'dsfedfwesd', '98556875425', '9875425896', 'tushar.katore3112@gmail.com', 'Male', '02/14/2017', '', '', '2', 'wesqs', 'Job', 'unmarried', 6000, 1000, 5000, '29-10-2019', '18-01-2020', 'Hoarding', 'Cash', 'Printed', '1572615062111.jpg', '', 'edfewfe', 'Pending', '31-10-2019', ''),
(109, 'MEM0109', '6000/5 Months', 'dsfedfwesd', '98556875425', '9875425896', 'tushar.katore3112@gmail.com', 'Male', '02/14/2017', '', '', '2', 'wesqs', 'Job', 'unmarried', 6000, 1000, 5000, '29-10-2019', '18-01-2020', 'Hoarding', 'Cash', 'Printed', '1572615069111.jpg', '', 'edfewfe', 'Pending', '31-10-2019', ''),
(110, 'MEM0110', '6000/5 Months', 'dsfedfwesd', '98556875425', '9875425896', 'tushar.katore3112@gmail.com', 'Male', '02/14/2017', '', '', '2', 'wesqs', 'Job', 'unmarried', 6000, 1000, 5000, '29-10-2019', '18-01-2020', 'Hoarding', 'Cash', 'Printed', '1572616945111.jpg', 'na', 'edfewfe', 'Pending', '31-10-2019', ''),
(111, 'MEM0111', '10000/12 Months', 'Avinash Mehta', '9875425896', '9658963258', '', 'Female', '03/15/1990', '', '', '29', 'ewfd', 'Job', 'married', 10000, 2000, 8000, '', '', 'Friend', 'Cash', 'Manual', '1572617002cleaning-glass-at-home-1559038890.jpg', 'ENQ0074', 'golu', 'Pending', '', '4erwer'),
(112, 'MEM0112', '10000/12 Months', 'Avinash Mehta', '9875425896', '9658963258', '', 'Female', '03/15/1990', '', '', '29', 'ewfd', 'Job', 'married', 10000, 2000, 8000, '', '', 'Friend', 'Cash', 'Manual', '1572619103cleaning-glass-at-home-1559038890.jpg', 'ENQ0074', 'golu', 'Pending', '', '4erwer'),
(113, 'MEM0113', '10000/12 Months', 'Avinash Mehta', '9875425896', '9658963258', '', 'Female', '03/15/1990', '', '', '29', 'ewfd', 'Job', 'married', 10000, 2000, 8000, '', '', 'Friend', 'Cash', 'Manual', '1572619238cleaning-glass-at-home-1559038890.jpg', 'ENQ0074', 'golu', 'Pending', '', '4erwer'),
(114, 'MEM0114', '10000/12 Months', 'Avinash Mehta', '9875425896', '9658963258', '', 'Female', '03/15/1990', '', '', '29', 'ewfd', 'Job', 'married', 10000, 2000, 8000, '', '', 'Friend', 'Cash', 'Manual', '1572619368cleaning-glass-at-home-1559038890.jpg', 'ENQ0074', 'golu', 'Pending', '', '4erwer'),
(115, 'MEM0115', '6000/5 Months', 'ferref rttrt', '9875425896', '9852147850', 'tushar.katore3112@gmail.com', 'Male', '02/12/2015', '', 'efwfe', '4', 'wef', 'Self-Employeed', 'unmarried', 6000, 1000, 5000, '30-10-2019', '11-01-2020', 'Friend', 'Cash', 'Manual', '1572619439iop.jpg', 'na', 'uyhiji', 'Pending', '29-10-2019', ''),
(116, 'MEM0116', '10000/12 Months', 'edfewf tghtrg', '9875425896', '9852005896', 'tushar.katore3112@gmail.com', 'Male', '11/13/2019', 'Jharkhand', 'rfgewf', '1', 'ewdrfew', 'Job', 'unmarried', 10000, 2000, 8000, '', '08-11-2019', 'Friend', 'Cash', 'Manual', '1572619759img121.jpg', 'na', 'hero no1', 'Pending', '06-11-2019', ''),
(117, 'MEM0117', '10000/12 Months', 'efew edfwed', '56757676', '76575676600', 'fdgr@gmail.com', 'Female', '03/10/1990', 'Assam', 'sdfvsd', '29', 'regerkkj', 'Job', 'unmarried', 10000, 10000, 0, '29-10-2019', '24-01-2020', 'Flyer', 'Cash', 'Manual', '1572673990ewb-2.png', '', 'hero no1', 'paid', '06-11-2019', 'rgr'),
(118, 'MEM0118', '10000/12 Months', 'Yanick Winter', '9875425896', '6521458963', '', 'Male', '02/05/1997', 'Gujarat', 'raipur', '22', 'Tatya para', 'Business', 'unmarried', 10000, 2000, 8000, '29-10-2019', '16-01-2020', 'Radio', 'Cash', 'Manual', '1572679133fav.png', 'ENQ0067', 'hero no1', 'Pending', '31-10-2019', 'cbfgtdb'),
(119, 'MEM0119', '10000/12 Months', 'Kishan', '7854589652', '8754258963', 'tushar@gmail.com', 'Female', '03/16/1990', 'Jammu and Kashmir', 'rgr', '29', 'efewsfd', 'Business', 'married', 10000, 2000, 8000, '', '', 'Flyer', 'Cash', 'Manual', '1572680811img121.jpg', 'ENQ0055', 'Hero', 'Pending', '30-10-2019', 'decf'),
(120, 'MEM0120', '10000/12 Months', 'reitesh', '7854589652', '68952589632', 'rit@gmail.com', 'Male', '06/21/1990', 'Andhra Pradesh', 'csdc', '29', 'sdgfvsf', 'Business', 'unmarried', 10000, 2000, 8000, '30-10-2019', '06-03-2020', 'Hoarding', 'Cash', 'Manual', '15726830023 (2).jpg', '', 'hero no1', 'Pending', '30-10-2019', ''),
(121, 'MEM0121', '10000/12 Months', 'fgedrfg', '844895', '959596+2', 'sdfsdf@gmail.com', 'Female', '02/09/2017', 'Goa', 'dfreswf', '2', 'nbuihjnij', 'Job', 'married', 10000, 2000, 8000, '29-10-2019', '10-01-2020', 'Social Media', 'Cash', 'Manual', '1572683117images (1).jpg', 'ENQ0060', '', 'Pending', '30-10-2019', 'ghy'),
(122, 'MEM0122', '10000/12 Months', 'fgedrfg', '844895', '959596+2', 'sdfsdf@gmail.com', 'Female', '02/09/2017', 'Goa', 'dfreswf', '2', 'nbuihjnij', 'Job', 'married', 10000, 2000, 8000, '29-10-2019', '10-01-2020', 'Social Media', 'Cash', 'Manual', '1572683196images (1).jpg', 'ENQ0060', '', 'Pending', '30-10-2019', 'ghy'),
(123, 'MEM0123', '10000/12 Months', 'Alfanzo Kumar', '9874589652', '9874585256', 'alfan@gmail.com', 'Male', '07/13/1995', 'Gujarat', 'fgvefrd', '24', 'efwe', 'Self-Employeed', 'unmarried', 10000, 2000, 8000, '30-10-2019', '15-02-2020', 'Friend', 'Cash', 'Manual', '1572686451aa0d213f-f4a9-43eb-bc6a-a051ffef89fb1555', '', 'hero no1', 'Pending', '30-10-2019', ''),
(124, 'MEM0124', '6000/5 Months', 'uhiuij iojkpl', '9875452589', '9852025632', 'dsfewfcd@gmail.com', 'Male', '04/07/1990', 'Karnataka', 'efdwead', '29', 'fewd', 'Job', 'married', 6000, 2000, 4000, '30-10-2019', '04-01-2020', 'Friend', 'Cash', 'Manual', '1572691039iop.jpg', 'NA', 'hero no1', 'Pending', '30-10-2019', ''),
(125, 'MEM0125', '6000/5 Months', 'Naveen Kumar', '9875420256', '6520258963', 'sdas@gmail.com', 'Female', '03/05/1999', 'Assam', 'aswdwas', '20', 'wdweqd', 'Job', 'married', 6000, 1000, 5000, '30-10-2019', '10-01-2020', 'Friend', 'Cash', 'Manual', '1572693008111.jpg', 'NA', 'hero no1', 'Pending', '06-11-2019', 'wdsq'),
(126, 'MEM0126', '10000/12 Months', 'fgewf', '4356345234', '234324', 'fvsdf@gmail.com', 'Female', '03/03/2016', '', 'gffdgv', '3', 'ewrfewf', 'Job', 'married', 10000, 4000, 6000, '30-10-2019', '11-01-2020', 'Hoarding', 'Cash', 'Manual', '1572700998images.jpg', 'NA', 'tgdrfgfr55 gfbdfdf', 'Pending', '29-10-2019', 'cwqaesd'),
(127, 'MEM0127', '10000/12 Months', 'Rakesh sahu', '9874525896', '9632050235', 'rakesh@gmail.com', 'Female', '02/09/2000', 'Arunachal Pradesh', 'kjrrrfr', '19', 'Rly bangla para', 'Self-Employeed', 'married', 10000, 2000, 8000, '30-10-2019', '08-02-2020', 'Flyer', 'Cash', 'Manual', '15728692834.jpg', 'ENQ0070', 'hero no1', 'Pending', '30-10-2019', 'xvffdv'),
(128, 'MEM0128', '6000/5 Months', 'Naomi', '9874589652', '8989898989', 'naomi123@gmail.com', 'Female', '07/20/1991', 'Andhra Pradesh', 'wqdwqed', '28', 'ewrf', 'Job', 'unmarried', 6000, 1000, 5000, '30-10-2019', '15-02-2020', 'Flyer', 'Cash', 'Manual', '1572869509payroll.jpg', 'ENQ0073', 'hero no1', 'Pending', '31-10-2019', 'wqded'),
(129, 'MEM0129', '6000/5 Months', 'Rajdeep Manna', '8574589652', '9874589635', 'ghvhbg@gmail.com', 'Female', '03/11/1993', 'Arunachal Pradesh', 'hjvbhbkj', '26', 'wed', 'Self-Employeed', 'unmarried', 6000, 2000, 4000, '31-10-2019', '10-01-2020', 'Friend', 'Cash', 'Manual', '15728706573 (2).jpg', 'ENQ0075', 'hero no1', 'Pending', '30-10-2019', 'dfrd'),
(130, 'MEM0130', '6000/5 Months', 'rahul bhaiya', '6521025689', '6520258963', 'raja@gmail.com', 'Male', '07/12/1990', 'Andaman and Nicobar Islands', 'ukukju', '29', 'rfgrefg', 'Student', 'unmarried', 6000, 0, 6000, '29-10-2019', '18-01-2020', 'Friend', 'Cash', 'Manual', '1572871485img121.jpg', 'NA', 'hero no1', 'Pending', '29-10-2019', 'uiopljhh'),
(131, 'MEM0131', '6000/5 Months', 'rahul bhaiya', '6521025689', '6520258963', 'raja@gmail.com', 'Male', '07/12/1990', 'Andaman and Nicobar Islands', 'ukukju', '29', 'rfgrefg', 'Student', 'unmarried', 6000, 0, 6000, '29-10-2019', '18-01-2020', 'Friend', 'Cash', 'Manual', '1572871575img121.jpg', 'NA', 'hero no1', 'Pending', '29-10-2019', 'uiopljhh'),
(132, 'MEM0132', '6000/5 Months', 'rahul bhaiya', '6521025689', '6520258963', 'raja@gmail.com', 'Male', '07/12/1990', 'Andaman and Nicobar Islands', 'ukukju', '29', 'rfgrefg', 'Student', 'unmarried', 6000, 0, 6000, '29-10-2019', '18-01-2020', 'Friend', 'Cash', 'Manual', '1572871608img121.jpg', 'NA', 'hero no1', 'Pending', '29-10-2019', 'uiopljhh'),
(133, 'MEM0133', '6000/5 Months', 'Amit khana', '7854258962', '9854202563', 'edwedw@gmail.com', 'Female', '11/15/2019', 'Gujarat', 'wefrd', '1', 'wqeqwe', 'Job', 'married', 6000, 0, 6000, '29-10-2019', '13-12-2019', 'Friend', 'Cash', 'Manual', '15728716921.jpg', 'NA', 'hero no1', 'Pending', '29-10-2019', 'retgtf'),
(134, 'MEM0134', '6000/5 Months', 'Toshan Singh', '8754210256', '8525202365', 'ewdwed@gmail.com', 'Male', '03/12/1993', 'Assam', 'wsedrff', '26', 'wedrf', 'Job', 'married', 6000, 0, 6000, '07-11-2019', '24-01-2020', 'Friend', 'Cash', 'Manual', '1572871952aa0d213f-f4a9-43eb-bc6a-a051ffef89fb1555', 'NA', 'hero no1', 'Pending', '30-10-2019', 'fdgb'),
(135, 'MEM0135', '10000/12 Months', 'raj patil', '9874250252', '9874250252', 'yghujhh12@gmail.com', 'Female', '02/09/1989', 'Andhra Pradesh', 'gftf', '30', 'ewdew', 'Job', 'married', 10000, 2000, 8000, '06-11-2019', '22-11-2019', 'Friend', 'Cash', 'Manual', '1572872134iop.jpg', 'NA', 'hero no1', 'Pending', '05-11-2019', 'yurth'),
(136, 'MEM0136', '6000/5 Months', 'Guru bhai', '6985420000', '6985420000', 'dscfdsc@gmail.com', 'Female', '03/02/1990', 'Andhra Pradesh', '', '29', 'rgfregf', 'Job', 'married', 6000, 0, 6000, '29-10-2019', '18-01-2020', 'Friend', 'Cash', 'Manual', '1572873092Workoutready_730x411.jpg', 'NA', 'hero no1', 'Pending', '30-10-2019', 'jik'),
(137, 'MEM0137', '6000/5 Months', 'Nilesh Tiwari', '60252025689', '98520258966', 'ewdqwed@gmail.com', 'Male', '04/14/1990', 'Goa', 'efwefd', '29', 'dewsferf efcefe', 'Self-Employeed', 'unmarried', 6000, 1500, 4500, '31-10-2019', '11-11-2019', 'Flyer', 'Cash', 'Manual', '1573207017images (1).jpg', 'NA', 'golu', 'Pending', '31-10-2019', 'ewferf'),
(138, 'MEM0138', '6000/5 Months', 'sdfsed', '875687568', '7567865786', 'desfesf@gmail.com', 'Female', '11/21/2019', 'Jharkhand', 'kjghngf', '1', 'efdewd', 'Job', 'married', 6000, 0, 6000, '15-11-2019', '', 'Friend', 'Cash', 'Email', '1573207493aa0d213f-f4a9-43eb-bc6a-a051ffef89fb1555', 'NA', 'hero no1', 'Pending', '31-10-2019', 'wqdew'),
(139, 'MEM0139', '6000/5 Months', 'sdfgregf', '848695', '84524354543', 'cscdsadc@gmail.com', 'Female', '11/14/2019', 'Himachal Pradesh', 'scsa', '1', 'cwsdwed', 'Job', 'married', 6000, 0, 6000, '30-10-2019', '', 'Friend', 'Cash', 'Manual', '1573208302payroll.jpg', 'NA', 'hero no1', 'Pending', '31-10-2019', 'wdwqd'),
(140, 'MEM0140', '10000/12 Months', 'cartoon', '8975420256', '5689202563', 'wsqws@gmail.com', 'Female', '08/21/1992', '', 'qwsdwq', '27', 'werdf', 'Business', 'married', 10000, 0, 10000, '30-10-2019', '02-11-2019', 'Friend', 'Cash', 'Manual', '15732114112 (2).jpg', '', 'dsfrgrgfgv fvd52', 'Pending', '01-11-2019', 'asxdsA'),
(141, 'MEM0141', '6000/5 Months', 'feswf', 'erfdwe', 'ferwe', 'dfrefre@gmail.com', 'Female', '10/31/2019', '', '', '0', 'dwqewq', 'Business', 'married', 6000, 0, 6000, '01-11-2019', '11-01-2020', 'Friend', 'Cash', 'Manual', '1573211701payroll.jpg', 'NA', 'dfasdfas', 'Pending', '29-10-2019', 'sxa'),
(142, 'MEM0142', '6000/5 Months', 'cartoon', '8975420256', '5689202563', 'wqswq@gmail.com', 'Female', '08/21/1992', '', '', '27', 'werdf', 'Business', 'married', 6000, 0, 6000, '', '', 'Friend', 'Cash', 'Manual', '15732118633 (2).jpg', 'NA', 'dsfrgrgfgv fvd52', 'Pending', '', 'qws'),
(143, 'MEM0143', '6000/5 Months', 'cartoon', '8975420256', '5689202563', 'yuhjyth@gmail.com', 'Female', '08/21/1992', '', '', '27', 'werdf', 'Business', 'married', 6000, 0, 6000, '01-11-2019', '10-01-2020', 'Friend', 'Cash', 'Manual', '1573212706cleaning-glass-at-home-1559038890.jpg', 'ENQ0078', 'dsfrgrgfgv fvd52', 'Pending', '31-10-2019', 's2wqsq'),
(144, 'MEM0144', '6000/5 Months', 'tuttt', '56745675765', '75745646', 'vfddf@gmail.com', 'Female', '02/03/2017', 'Himachal Pradesh', 'tghtfrg', '2', 'efwedf', 'Job', 'married', 6000, 0, 6000, '31-10-2019', '', 'Friend', 'Cash', 'Manual', '1573212867images.jpg', 'NA', 'hero no1', 'Pending', '31-10-2019', 'wedew'),
(145, 'MEM0145', '6000/5 Months', 'Tushar katore', '6232072339', '9886694339', 'ujhh@gmail.com', 'Female', '03/10/1990', 'Jharkhand', 'qsqw', '29', 'Rly bangakla para', 'Job', 'married', 6000, 0, 6000, '30-10-2019', '', 'Flyer', 'Cash', 'Download Pdf', '1573303996gal.jpg', 'NA', 'hero no1', 'Pending', '28-11-2019', 'sdsde'),
(146, 'MEM0146', '6000/5 Months', 'Tushar katore', '6232072339', '9886694339', 'wdweqd@gmail.com', 'Female', '02/07/1991', 'Dadra and Nagar Haveli', 'edewd', '28', 'Rly bangakla para', 'Job', 'married', 6000, 0, 6000, '29-10-2019', '10-01-2020', 'Friend', 'Cash', 'Manual', '1573304128gal.jpg', 'ENQ0066', '', 'Pending', '30-10-2019', 'swdweas'),
(147, 'MEM0147', '/', 'heymant', '8754589652', '895000000', 'rete@gmail.com', 'Female', '03/10/2000', 'Arunachal Pradesh', 'regtfre', '19', 'ewde', 'Job', 'unmarried', 10000, 10000, 0, '31-10-2019', '17-01-2020', 'Flyer', 'Internet Banking', 'Printed', '1573305344images.jpg', 'ENQ0077', 'hero no1', 'paid', '13-11-2019', 'ew3r4w'),
(148, 'MEM0148', '1000/1 Month', 'rfgretf', 'werwer', 'werwe', 'fgdfs@gmail.com', 'Female', '', '', '', '27', 'rewrwe', 'Self-Employeed', 'married', 1000, 0, 1000, '31-10-2019', '', 'Hoarding', 'Cash', 'Manual', '15736489482 (2).jpg', 'GYM2', 'cfcfcf', 'Pending', '06-11-2019', 'fwesdf'),
(149, 'MEM0149', '/', 'swadi', '9874025636', '9562656262', 'sacdsa@gmail.com', 'Female', '02/04/1999', 'Arunachal Pradesh', 'ssss', '20', 'dwqd', 'Job', 'married', 6000, 1000, 5000, '29-10-2019', '', 'Friend', 'Cash', 'Manual', '1573649032images.jpg', 'NA', 'hero no1', 'Pending', '30-10-2019', 'wqa');

-- --------------------------------------------------------

--
-- Table structure for table `membership_type`
--

CREATE TABLE `membership_type` (
  `id` int(11) NOT NULL,
  `membership_period` varchar(50) NOT NULL,
  `membership_amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_type`
--

INSERT INTO `membership_type` (`id`, `membership_period`, `membership_amount`, `date`) VALUES
(3, '3 Months', '3000', '2019-11-11 05:58:40'),
(4, '1 Month', '1000', '2019-11-11 05:59:39'),
(6, '6 Months', '6000', '2019-11-11 06:00:24'),
(7, '12 Months', '10000', '2019-10-11 08:17:22');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `member_id` varchar(20) NOT NULL,
  `pay_amount` int(20) NOT NULL,
  `paid_by` varchar(30) NOT NULL,
  `receipt_type` varchar(20) NOT NULL,
  `remarks` varchar(50) NOT NULL,
  `date` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `member_id`, `pay_amount`, `paid_by`, `receipt_type`, `remarks`, `date`) VALUES
(71, 'MEM0060', 1000, '0', 'Email', 'just paid 1000 rupees', '2019-07-22 13:58:32'),
(72, 'MEM0060', 2000, '0', 'Email', 'rgergerfgewf erferferff ', '2019-07-22 17:30:10'),
(74, 'MEM0062', 7000, '0', 'Email', 'Hii Paid', '2019-07-23 13:52:49'),
(80, 'MEM0068', 5000, '0', 'Email', 'yjuythb', '0000-00-00 00:00:00'),
(81, 'MEM0069', 5000, '0', 'Email', 'efgethryjtukio rtgyh', '18-07-2019'),
(82, 'MEM0069', 2000, '0', 'Printed', 'fgerg retfgertgf', ''),
(83, 'MEM0069', 2000, '0', 'Printed', 'ewqdwqd', '30-07-2019'),
(84, 'MEM0070', 2000, '0', 'Printed', 'swadaswd', '24-07-2019'),
(85, 'MEM0071', 5000, '0', 'Email', 'ewrf', '24-07-2019'),
(86, 'MEM0072', 1000, '0', 'Printed', 'werfe', '30-07-2019'),
(87, 'MEM0073', 0, '0', 'Download Pdf', 'asdfeg', '31-07-2019'),
(88, 'MEM0074', 2000, 'Internet Banking', 'Printed', 'dfvs', '18-07-2019'),
(89, 'MEM0075', 0, 'Debit', 'Download Pdf', 'dfcsdec', '10-07-2019'),
(90, 'MEM0076', 2000, 'Internet Banking', 'Printed', 'qws', '31-07-2019'),
(91, 'MEM0077', 200, 'Internet Banking', 'Email', 'dfv', '30-07-2019'),
(92, 'MEM0078', 3000, 'Internet Banking', 'Email', 'wdqerfg', '04-08-2019'),
(93, 'MEM0076', 3000, 'Cash', 'Printed', 'paid 3000', '05-08-2019'),
(94, 'MEM0079', 2000, 'Cash', 'Printed', 'uhiuj', '06-08-2019'),
(95, 'MEM0071', 3000, 'Paytm', 'Manual', ' fbf', '07-08-2019'),
(96, 'MEM0079', 2000, 'Check', 'Printed', 'dfdsf', '14-08-2019'),
(100, 'MEM0073', 1000, 'Check', 'Printed', 'eqdwe', '20-08-2019'),
(101, 'MEM0073', 1000, 'Check', 'Printed', 'ewdf', '23-08-2019'),
(102, 'MEM0073', 2000, 'Cash', 'Printed', 'Paid 2000rs', '24-08-2019'),
(103, 'MEM0080', 0, 'Cash', 'Manual', '', ''),
(105, 'MEM0079', 2000, 'Check', 'Download Pdf', 'fgfrdtg', '03-09-2019'),
(106, 'MEM0077', 800, 'Cash', 'Manual', 'rtyr', '01-09-2019'),
(107, 'MEM0075', 1000, 'Cash', 'Manual', 'gdrg', '06-09-2019'),
(125, 'MEM0060', 500, 'Cash', 'Manual', 'wsd', '20/07/2019'),
(126, 'MEM0081', 2000, 'Cash', 'Manual', 'dcf', '11-09-2019'),
(127, 'MEM0082', 0, 'Cash', 'Manual', '', ''),
(128, 'MEM0083', 0, 'Cash', 'Manual', '', ''),
(129, 'MEM0084', 0, 'Cash', 'Manual', '', ''),
(130, 'MEM0085', 1000, 'Cash', 'Manual', 'wdew', ''),
(131, 'MEM0086', 0, 'Cash', 'Manual', '', ''),
(132, 'MEM0087', 1000, 'Cash', 'Manual', '', ''),
(133, 'MEM0088', 1000, 'Cash', 'Manual', '', ''),
(134, 'MEM0089', 1000, 'Internet Banking', 'Printed', '', '21-09-2019'),
(135, 'MEM0090', 0, 'Cash', 'Manual', '', ''),
(136, 'MEM0091', 1000, 'Cash', 'Manual', '', ''),
(137, 'MEM0092', 1000, 'Cash', 'Manual', '', '18-09-2019'),
(138, 'MEM0081', 1000, 'Cash', 'Manual', '', '11/09/2019'),
(139, 'MEM0092', 1000, 'Cash', 'Manual', 'fgrf', '18/09/2019'),
(142, 'MEM0060', 500, 'Cash', 'Manual', '', '20/07/2019'),
(143, 'MEM0060', 1000, 'Cash', 'Manual', '', '20/07/2019'),
(144, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(145, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(146, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(147, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(148, 'MEM0068', 100, 'Cash', 'Manual', '', '16/07/2019'),
(149, 'MEM0068', 100, 'Cash', 'Manual', '', '16/07/2019'),
(150, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(160, 'MEM0068', 100, 'Cash', 'Manual', '', '16/07/2019'),
(161, 'MEM0093', 2000, 'Cash', 'Printed', '', '17-10-2019'),
(162, 'MEM0093', 1000, 'Cash', 'Manual', 'ghjgh', '17/10/2019'),
(163, 'MEM0094', 1000, 'Cash', 'Manual', '', '09-03-1990'),
(164, 'MEM0095', 1000, 'Cash', 'Manual', '', '22-11-2000'),
(165, 'MEM0096', 1000, 'Cash', 'Printed', '', '10-10-2019'),
(166, 'MEM0097', 1000, 'Cash', 'Manual', '', '22-10-2019'),
(167, 'MEM0073', 100, 'Cash', 'Manual', 'paying', '30/07/2019'),
(168, 'MEM0098', 1000, 'Cash', 'Manual', 'fdv', ''),
(169, 'MEM0099', 1000, 'Cash', 'Manual', 'wswqs', '19-07-1991'),
(170, 'MEM0100', 0, 'Cash', 'Manual', 'wdwed', ''),
(171, 'MEM0101', 1000, 'Cash', 'Manual', 'dvd', '22-10-2019'),
(172, 'MEM0101', 5000, 'Cash', 'Manual', 'sdrfgrdgv', '22/10/2019'),
(173, 'MEM0100', 1000, 'Cash', 'Manual', 'wede', ''),
(174, 'MEM0102', 2000, 'Cash', 'Manual', 'fgbf', '23-10-2019'),
(175, 'MEM0103', 2000, 'Cash', 'Manual', '', '31-10-2019'),
(176, 'MEM0104', 2000, 'Cash', 'Manual', '', '31-10-2019'),
(177, 'MEM0105', 1000, 'Cash', 'Printed', '', '29-10-2019'),
(178, 'MEM0106', 1000, 'Cash', 'Printed', '', '31-10-2019'),
(179, 'MEM0107', 1000, 'Cash', 'Printed', '', '31-10-2019'),
(180, 'MEM0108', 1000, 'Cash', 'Printed', '', '31-10-2019'),
(181, 'MEM0109', 1000, 'Cash', 'Printed', '', '31-10-2019'),
(182, 'MEM0110', 1000, 'Cash', 'Printed', '', '31-10-2019'),
(183, 'MEM0111', 2000, 'Cash', 'Manual', '4erwer', ''),
(184, 'MEM0112', 2000, 'Cash', 'Manual', '4erwer', ''),
(185, 'MEM0113', 2000, 'Cash', 'Manual', '4erwer', ''),
(186, 'MEM0114', 2000, 'Cash', 'Manual', '4erwer', ''),
(187, 'MEM0115', 1000, 'Cash', 'Manual', '', '29-10-2019'),
(188, 'MEM0116', 2000, 'Cash', 'Manual', '', '06-11-2019'),
(189, 'MEM0117', 2000, 'Cash', 'Manual', '', '06-11-2019'),
(190, 'MEM0117', 8000, 'Cash', 'Manual', 'hjjh', '06/11/2019'),
(191, 'MEM0118', 2000, 'Cash', 'Manual', 'cbfgtdb', '31-10-2019'),
(192, 'MEM0119', 2000, 'Cash', 'Manual', 'decf', '30-10-2019'),
(193, 'MEM0120', 2000, 'Cash', 'Manual', '', '30-10-2019'),
(194, 'MEM0121', 2000, 'Cash', 'Manual', 'ghy', '30-10-2019'),
(195, 'MEM0122', 2000, 'Cash', 'Manual', 'ghy', '30-10-2019'),
(196, 'MEM0123', 2000, 'Cash', 'Manual', '', '30-10-2019'),
(197, 'MEM0124', 2000, 'Cash', 'Manual', '', '30-10-2019'),
(198, 'MEM0125', 1000, 'Cash', 'Manual', 'wdsq', '06-11-2019'),
(199, 'MEM0126', 4000, 'Cash', 'Manual', 'cwqaesd', '29-10-2019'),
(200, 'MEM0127', 2000, 'Cash', 'Manual', 'xvffdv', '30-10-2019'),
(201, 'MEM0128', 1000, 'Cash', 'Manual', 'wqded', '31-10-2019'),
(202, 'MEM0129', 0, 'Cash', 'Manual', 'dfrd', '30-10-2019'),
(203, 'MEM0131', 0, 'Cash', 'Manual', 'uiopljhh', '29-10-2019'),
(204, 'MEM0132', 0, 'Cash', 'Manual', 'uiopljhh', '29-10-2019'),
(205, 'MEM0133', 0, 'Cash', 'Manual', 'retgtf', '29-10-2019'),
(206, 'MEM0135', 2000, 'Cash', 'Manual', 'yurth', '05-11-2019'),
(207, 'MEM0065', 500, 'Cash', 'Manual', 'rfrefref', '23/10/2019'),
(208, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(209, 'MEM0070', 500, 'Cash', 'Manual', 'efwefd', '24/07/2019'),
(210, 'MEM0070', 500, 'Cash', 'Manual', 'hnnjh', '05/11/2019'),
(211, 'MEM0070', 500, 'Cash', 'Manual', 'hgh', '24/07/2019'),
(212, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(213, 'MEM0068', 1000, 'Cash', 'Manual', '', '16/07/2019'),
(214, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(215, 'MEM0068', 200, 'Cash', 'Manual', '', '16/07/2019'),
(216, 'MEM0069', 100, 'Cash', 'Manual', '', '18/07/2019'),
(217, 'MEM0069', 2, 'Cash', 'Manual', '', '18/07/2019'),
(218, 'MEM0137', 1000, 'Cash', 'Manual', 'ewferf', '31-10-2019'),
(219, 'MEM0137', 500, 'Cash', 'Manual', 'dsfsdf', '31/10/2019'),
(220, 'MEM0147', 10000, 'Cash', 'Manual', ' fgd', '13/11/2019'),
(221, 'MEM0068', 500, 'Cash', 'Manual', 'trger', '16/07/2019'),
(222, 'MEM0149', 1000, 'Cash', 'Manual', 'wqa', '30-10-2019'),
(223, 'MEM0068', 1000, 'Cash', 'Manual', 'grefr', '25/07/2019'),
(224, 'MEM0107', 1000, 'Cash', 'Manual', 'fgttrdg', '02/11/2019'),
(225, 'MEM0066', 500, 'Cash', 'Manual', 'bvdfvgd', '29/11/2019'),
(226, 'MEM0067', 800, 'Cash', 'Manual', '', '20/07/2019'),
(227, 'MEM0068', 500, 'Cash', 'Manual', 'rftef', '16/07/2019'),
(228, 'MEM0093', 1000, 'Cash', 'Manual', 'fvdr', '17/10/2019'),
(229, 'MEM0094', 1000, 'Cash', 'Manual', '', '09/03/1990'),
(230, 'MEM0061', 2800, 'Cash', 'Manual', '', '16/07/2019'),
(231, 'MEM0062', 2800, 'Cash', 'Manual', 'gajab', '16/07/2019'),
(232, 'MEM0074', 1000, 'Cash', 'Manual', 'hyui', '25/07/2019'),
(233, 'MEM0129', 2000, 'Cash', 'Manual', 'vfd', '30/10/2019'),
(234, 'MEM0068', 500, 'Cash', 'Manual', 'fef', '17/07/2019'),
(235, 'MEM0070', 100, 'Cash', 'Manual', 'fwef', '25/07/2019');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `date`) VALUES
(2, 'Gym', '2019-06-03 11:51:31'),
(3, 'Zumba', '2019-06-03 11:51:36'),
(4, 'Yoga', '2019-06-03 11:51:41'),
(5, 'Dance Class', '2019-06-03 11:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `age` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `salary` int(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `aadhar_card` varchar(100) NOT NULL,
  `pan_card` varchar(100) NOT NULL,
  `upload_img` varchar(20) NOT NULL,
  `joining_date` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `allow_delete` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_id`, `type`, `name`, `email`, `password`, `dob`, `age`, `mobile`, `salary`, `address`, `aadhar_card`, `pan_card`, `upload_img`, `joining_date`, `status`, `allow_delete`, `date`) VALUES
(3, 'STAF0003', 'staff', 'rfgrff', 'Catpops', 'pass', '', '', '7576', 6566, 'hfgtfg', '', '', '15602450774.jpg', '27-05-2019', 'Active', '', '2019-06-11 09:24:37'),
(4, 'STAF0004', 'staff', 'fdsdf', 'Catpops', 'pass', '', '', '435', 454, 'erewr', '', '', '15602490034.jpg', '17-06-2019', 'Active', '', '2019-06-11 10:30:04'),
(7, 'STAF0007', 'staff', 'dfasdfas', 'Catpops', 'pass', '', '', '5644576', 4656, 'rfrdfdsfsd', '', '', '1560249265666.JPG', '02-07-2019', 'Active', '', '2019-06-11 10:34:25'),
(8, 'STAF0008', 'staff', 'edfewfe', 'Catpops', 'pass', '', '', '4435', 54, 'greg', '', '', '1560249314_menu_.jpg', '02-07-2019', 'Active', '', '2019-06-11 10:35:15'),
(9, 'TRAIN0009', 'trainer', 'dsfrgrgfgv fvd52', 'Catpops', 'pass', '', '', '5446', 56, 'yhhhyh', '', '', '1560257172222.JPG', '17-06-2019', 'Active', '', '2019-06-11 12:46:12'),
(11, 'STAF0010', 'staff', 'rreerfg', 'Catpopsfgsefsd', 'pass', '', '', '5464545', 34534535, 'erfefreef', '', '', '1560258055888.JPG', '26-05-2019', 'Active', '', '2019-06-11 13:00:56'),
(12, 'TRAIN0012', 'trainer', 'dfbfbsf dvdsv', 'Catpops', 'pass', '', '', '', 5546, 'gdfvdf', '', '', '1560258032555.JPG', '01-07-2019', 'Active', '', '2019-06-11 13:00:33'),
(13, 'TRAIN0013', 'trainer', 'tgdrfgfr55 gfbdfdf', 'Catpops', 'pass', '', '', '65545', 545, 'gfbfgbgvb', '', '', '1560258099images.jpg', '03-06-2019', 'Active', '', '2019-06-11 13:01:39'),
(14, 'STAF0014', 'staff', 'tyhtrhg', 'Catpops@gmail.com', 'pass4545', '', '', '6589552252', 29652, 'we4rtwerff', '', '', '1560260892images.jpg', '11-06-2019', 'Active', '', '2019-06-11 13:48:12'),
(15, 'STAF0015', 'staff', 'golu', 'gols@gmail.com', '78943211', '', '', '9874524102', 50000, 'rly bajlmk', '', '', '15602610033.jpg', '17-06-2019', 'Active', '', '2019-06-11 13:50:04'),
(16, 'STAF0016', 'staff', 'uyhiji', 'Catpops@gmail.com', 'pass', '', '', '7777722222', 546556, 'dsff', '', '', '15602615283.jpg', '11-06-2019', 'Active', '', '2019-06-11 13:58:48'),
(18, 'STAF0017', 'staff', 'cfcfcf', 'shgb@gmail.com', '123456', '', '', '8965033005', 70000, 'kjljkljkljk', '', '', '1563777005payroll.jp', '14-06-2019', 'Active', '', '2019-07-22 06:30:05'),
(19, 'STAF0019', 'staff', 'Hero', 'hero@gmail.com', 'pass', '', '', '6524589652', 15000, 'Railway Bangla Paraa', '', '', '1570803535images.jpg', '16-10-2019', 'Active', '', '2019-10-11 14:18:55'),
(20, 'STAF0020', 'staff', 'hero no1', 'prefit@gmail.com', '9089', '', '', '6985425896', 15000, 'Tere GHar me', '', '', '1570803612images (1)', '01-10-2019', 'Active', '', '2019-10-11 14:20:12'),
(21, 'STAF0021', 'staff', 'mahesh kumar', 'mahesh@gmail.com', '', '31-12-1991', '27', '9874521000', 16000, 'sdwqad', '', '', '15746777401.jpg', '20-11-2019', 'Active', '', '2019-11-25 10:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `supplement_product`
--

CREATE TABLE `supplement_product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `brand_name` varchar(20) NOT NULL,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplement_product`
--

INSERT INTO `supplement_product` (`id`, `product_name`, `brand_name`, `date`) VALUES
(2, 'MuscleBlazeo Protein', 'abc4441', '2019-07-23 07:15:24'),
(3, 'Endura Mass', 'XYZ', NULL),
(4, 'Optimum Nutrition ', 'stu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8 NOT NULL,
  `desc` text CHARACTER SET utf8 NOT NULL,
  `tags` text CHARACTER SET utf8 NOT NULL,
  `file` varchar(100) NOT NULL,
  `category` varchar(100) CHARACTER SET utf8 NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `title`, `desc`, `tags`, `file`, `category`, `date`) VALUES
(18, 'PANKAJ', 'Thanks to guruji I found the right path in life and today I am really successful and well settled. Just follow his remedies and you’ll surely see a difference in your life.', 'Delhi', '15403131721q.jpg', '', '2018-10-23 16:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `link` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `title`, `link`, `date`) VALUES
(14, 'Common Gym Mistakes - Training Shoulders', 'yUgFJHp4faA', '2019-05-22 06:05:32'),
(15, 'Complete BICEP & TRICEP routine for GYM! BBRT', '2q8QF_SGp7U', '2019-05-22 06:06:22'),
(21, 'WordPress', 'Z8YLi2X2p1I', '2019-06-24 12:55:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_follow_up`
--
ALTER TABLE `enquiry_follow_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense`
--
ALTER TABLE `expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_type`
--
ALTER TABLE `expense_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_admin`
--
ALTER TABLE `login_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `membership_type`
--
ALTER TABLE `membership_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplement_product`
--
ALTER TABLE `supplement_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `enquiry_follow_up`
--
ALTER TABLE `enquiry_follow_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT for table `expense`
--
ALTER TABLE `expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_type`
--
ALTER TABLE `expense_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `machine`
--
ALTER TABLE `machine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `membership_type`
--
ALTER TABLE `membership_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `supplement_product`
--
ALTER TABLE `supplement_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
