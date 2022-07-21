-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2022 at 06:10 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myartsy`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_category`
--

CREATE TABLE `add_category` (
  `p_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `add_category`
--

INSERT INTO `add_category` (`p_id`, `type`, `description`) VALUES
(9, 'Dance', 'Dance Show'),
(11, 'music', 'Music Shows'),
(12, 'standupcomedy', 'Standup Comedy'),
(13, 'drama', 'Drama Shows');

-- --------------------------------------------------------

--
-- Table structure for table `dance_booking`
--

CREATE TABLE `dance_booking` (
  `book_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `funname` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `no_guest` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `approval` varchar(11) NOT NULL,
  `reason` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dance_booking`
--

INSERT INTO `dance_booking` (`book_id`, `u_id`, `pro_id`, `funname`, `location`, `date`, `time`, `no_guest`, `hours`, `total_amount`, `approval`, `reason`) VALUES
(1, 3, 19, 'engagement', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-07-07', '10:30:00', 500, 2, 8000, 'Confirmed', ''),
(2, 4, 13, 'get together', 'kottayam', '2022-06-20', '11:30:00', 120, 0, 0, 'Confirmed', ''),
(3, 4, 6, 'marriage', 'kannur', '2022-06-26', '10:40:00', 1000, 0, 0, '0', ''),
(4, 5, 19, 'Birth day', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-06-30', '12:00:00', 150, 0, 0, 'Confirmed', ''),
(5, 4, 7, 'anniversary', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-06-19', '10:30:00', 500, 0, 0, '0', ''),
(6, 3, 12, 'house Warmig', 'kottayam', '2022-06-30', '11:29:00', 1000, 0, 0, '0', ''),
(7, 4, 13, 'engagement', 'kottarathil house', '2022-06-12', '13:20:00', 500, 0, 0, '0', ''),
(8, 4, 19, 'get together', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-06-19', '10:45:00', 500, 0, 0, 'Confirmed', ''),
(12, 3, 13, 'ddf', 'sdfs', '2022-06-30', '02:41:00', 100, 0, 0, 'Confirmed', ''),
(13, 4, 19, 'engagement', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-07-26', '10:28:00', 1000, 0, 5000, '0', ''),
(14, 4, 13, 'get together', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-07-20', '10:34:00', 1000, 0, 0, 'Rejected', 'Due to some date Issue we are rejecting your booking.'),
(15, 4, 13, 'get together', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-07-12', '10:43:00', 100, 3, 0, '0', ''),
(16, 4, 13, 'house Warmig', 'kottarathil house', '2022-07-11', '12:50:00', 500, 2, 0, '0', ''),
(17, 4, 13, 'anniversary', 'thakidivelyil house', '2022-07-06', '11:05:00', 150, 3, 0, 'Confirmed', ''),
(18, 4, 19, 'engagement', 'kannur', '2022-07-11', '11:42:00', 1000, 5, 0, '0', ''),
(19, 3, 13, 'get together', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-07-08', '09:54:00', 500, 2, 12000, '0', ''),
(20, 3, 19, 'house Warmig', 'kannur', '2022-07-20', '10:00:00', 250, 2, 0, '0', ''),
(21, 3, 13, 'engagement', 'Sangupurathil House Nedumkundum p.o Nedumkundum', '2022-07-04', '10:20:00', 500, 3, 0, 'Rejected', 'Due to some issues we are rejecting your booking.'),
(24, 4, 12, 'engagement', 'kannur', '2022-07-14', '09:31:00', 200, 2, 0, '0', ''),
(29, 4, 19, 'house Warmig', 'kannur', '2022-07-01', '11:24:00', 1000, 2, 8000, '0', ''),
(30, 5, 19, 'Engagement', 'Sangupurathil', '2022-07-25', '10:00:00', 1000, 3, 0, '0', ''),
(31, 4, 13, 'Engagement', 'Sangupurathil', '2022-07-31', '04:43:00', 1000, 2, 0, '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `painter_reg`
--

CREATE TABLE `painter_reg` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `log_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `painter_reg`
--

INSERT INTO `painter_reg` (`id`, `fname`, `lname`, `address`, `email`, `gender`, `district`, `phone`, `log_id`, `status`) VALUES
(2, 'Das', 'ds', 'Das', 'das@gmail.com', 'male', 'Alapuzha', '964814775121', 15, 3),
(3, 'amrutha', 'A', 'amrutha bhavan', 'amrutha@gmail.com', 'female', 'Kottayam', '9876543211', 16, 3),
(4, 'John', 'S', 'Johns House ', 'john@gmail.com', 'male', 'Kottayam', '97364353627', 20, 3),
(5, 'Madhavn', 'P', 'Madhava Bhavan', 'madhavn@gmail.com', 'male', 'Ernakulam', '8373637262', 21, 3),
(6, 'mili', 'Mathew', 'mili@gmail.com', 'mili@gmail.com', 'female', 'Alapuzha', '7825363262', 22, 3);

-- --------------------------------------------------------

--
-- Table structure for table `painting_details`
--

CREATE TABLE `painting_details` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `price` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(250) NOT NULL,
  `Status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `painting_details`
--

INSERT INTO `painting_details` (`id`, `u_id`, `price`, `name`, `image`, `Status`) VALUES
(8, 8, 1500, 'Water Painting', 'p1.jpg', 0),
(20, 15, 880, 'Water painting', '3.jpg', 0),
(22, 20, 2945, 'photorealism', 'images2.jpg', 0),
(23, 20, 1430, 'Tanjore Painting', '5.jpg', 0),
(24, 21, 1295, 'Oil Painting', '7.jpg', 0),
(25, 21, 1775, 'Abstract Art', 'painter1.jpeg', 0),
(26, 22, 2120, 'Landscape Painting', '1.jpg', 0),
(28, 22, 2050, 'Encaustic', '9.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `performers_program_details`
--

CREATE TABLE `performers_program_details` (
  `p_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `amount` int(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `no_performers` int(100) NOT NULL,
  `image` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performers_program_details`
--

INSERT INTO `performers_program_details` (`p_id`, `u_id`, `description`, `amount`, `item`, `no_performers`, `image`, `status`) VALUES
(30, 14, 'Dancers come and go in the twinkling of an eye, but the dance lives on.', 25000, 'dance', 15, '800x600_Hip_Hop_Nutcracker_Mobile.jpg', 'Approved'),
(33, 10, 'Music', 6500, 'music', 10, 'the_glitch_mob_2014-by-ralph-arvesenjpg.jpg', ''),
(38, 11, 'Standup Comedy', 25000, 'standup comedy', 1, 'st1.jpg', ''),
(39, 14, 'Standup Comedy', 5000, 'standup comedy', 1, 'st2.jpg', ''),
(42, 9, 'Dance', 35000, 'standup comedy', 1, 'photo-1611956425642-d5a8169abd63.jfif', ''),
(43, 14, 'Standup  comedy', 10000, 'standup comedy', 1, 'file-20200731-14-yfu9hp.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `performer_reg`
--

CREATE TABLE `performer_reg` (
  `id` int(11) NOT NULL,
  `bandname` varchar(100) NOT NULL,
  `item` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `members` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `since` year(4) NOT NULL,
  `no_performers` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `log_id` int(11) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `performer_reg`
--

INSERT INTO `performer_reg` (`id`, `bandname`, `item`, `address`, `email`, `members`, `district`, `phone`, `since`, `no_performers`, `amount`, `image`, `log_id`, `status`) VALUES
(6, 'Standups', 'standupcomedy', 'abcd', 'stand@gmail.com', 'team', 'Idukki', '97265111892', 0000, 0, 0, 'photo-1611956425642-d5a8169abd63.jfif', 14, 2),
(7, 'drama ', 'drama', 'drama ', 'drama@gmail.com', 'team', 'Idukki', '9876543211', 2010, 25, 5000, 'drama_performance_in_theater.jpg', 17, 2),
(10, 'music', 'Music', 'Music', 'musicrockers@gmail.com', 'team', 'Kottayam', '9863312456', 2001, 10, 5000, '5184949590163456.jpg', 10, 2),
(12, 'Music', 'music', 'musicians', 'm@gmail.com', 'team', 'Alapuzha', '9578461471', 2010, 20, 3500, 'istockphoto-1080797152-170667a.jpg', 12, 2),
(13, 'DanceDace', 'Dance', 'Dance', 'dancecrw123@gmail.com', 'team', 'kottayam', '81298745712', 2010, 20, 5000, 'Shinjini_kathak_dance_indian_classical_in_traditional_attire.jpg', 13, 2),
(19, 'My Self and My Moves', 'dance', 'cochi', 'msmm@gmail.com', 'team', 'Ernakulam', '6541239871', 2005, 20, 8000, '800x600_Hip_Hop_Nutcracker_Mobile.jpg', 19, 2),
(21, 'Stand Up King', 'standupcomedy', 'Stand Up ', 'standup@gmail.com', 'Individual', 'Thiruvanandapuram', '9845672130', 2010, 1, 2000, 'file-20200731-14-yfu9hp.jpg', 24, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_booking_payment`
--

CREATE TABLE `tbl_booking_payment` (
  `id` int(11) NOT NULL,
  `pro_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_booking_payment`
--

INSERT INTO `tbl_booking_payment` (`id`, `pro_id`, `u_id`, `amount`) VALUES
(1, 13, 4, 15000),
(2, 19, 4, 40000),
(6, 19, 3, 16000),
(7, 13, 3, 15000),
(8, 19, 4, 16000),
(9, 19, 4, 12000),
(10, 19, 4, 8000),
(11, 19, 5, 12000),
(12, 13, 4, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `id` int(11) NOT NULL,
  `District` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`id`, `District`) VALUES
(4, 'kollam'),
(5, 'ernakulam'),
(6, 'kottayam'),
(7, 'Idukki'),
(9, 'Alapuzha'),
(10, 'Thiruvanandapuram');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `u_type` varchar(100) NOT NULL,
  `status` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`id`, `username`, `password`, `u_type`, `status`) VALUES
(0, 'admin', 'admin@123', 'admin', 0),
(3, 'Vidhya', '12345678', 'user', 1),
(4, 'geetha', 'geetha123', 'user', 1),
(5, 'prasad', '12121212', 'user', 1),
(6, 'Meenakshi', '12345678', 'user', 1),
(7, 'Vignesh', '12345678', 'user', 1),
(8, 'jancy', 'jancy123', 'painter', 3),
(9, 'dancecrew', '12345678', 'performer', 2),
(10, 'music rockers', '87654321', 'performer', 2),
(11, 'stp', '12345678', 'performer', 2),
(12, 'music masters', '12345678', 'performer', 2),
(13, 'dancedance', '12345678', 'performer', 2),
(14, 'standup', '12345678', 'performer', 2),
(15, 'das', '12345678', 'painter', 3),
(16, 'amrutha', '12345678', 'painter', 3),
(17, 'drama', '12345678', 'performer', 2),
(18, 'devika', '12345678', 'user', 0),
(19, 'myselfmymoves', '12345678', 'performer', 2),
(20, 'john', '12345678', 'painter', 3),
(21, 'madhavan', '12345678', 'painter', 3),
(22, 'mili', '12345678', 'painter', 3),
(23, 'Varadha', 'Vidhya@123', 'user', 0),
(24, 'Stand Up King', '12345678', 'performer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paint_category`
--

CREATE TABLE `tbl_paint_category` (
  `id` int(11) NOT NULL,
  `p_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_paint_category`
--

INSERT INTO `tbl_paint_category` (`id`, `p_type`) VALUES
(1, 'water painting'),
(4, 'photorealism'),
(5, 'Tanjore Painting'),
(14, 'Magic Show');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `paied_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`id`, `u_id`, `ar_id`, `amount`, `paied_on`) VALUES
(1, 4, 28, 3355, '0000-00-00 00:00:00'),
(2, 2, 22, 1295, '0000-00-00 00:00:00'),
(5, 3, 44, 2120, '0000-00-00 00:00:00'),
(6, 3, 45, 1500, '0000-00-00 00:00:00'),
(7, 4, 41, 1295, '0000-00-00 00:00:00'),
(8, 4, 49, 2050, '0000-00-00 00:00:00'),
(9, 4, 51, 880, '0000-00-00 00:00:00'),
(28, 4, 51, 880, '0000-00-00 00:00:00'),
(29, 4, 51, 880, '0000-00-00 00:00:00'),
(30, 4, 52, 1775, '0000-00-00 00:00:00'),
(31, 4, 57, 2120, '0000-00-00 00:00:00'),
(32, 4, 64, 1295, '0000-00-00 00:00:00'),
(33, 4, 65, 1500, '0000-00-00 00:00:00'),
(35, 4, 69, 1295, '0000-00-00 00:00:00'),
(36, 1, 20, 1800, '2022-07-08 09:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_program_img`
--

CREATE TABLE `tbl_program_img` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `program_image` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_program_img`
--

INSERT INTO `tbl_program_img` (`id`, `team_id`, `program_image`, `description`) VALUES
(1, 19, 'd2.jpg', 'The moment is everything. Don’t think about tomorrow; don’t think about yesterday: think about exactly what you’re doing right now and live it and dance it and breath it and be it.'),
(3, 10, 'm1.jfif', 'Music is a part of every known society, past and present, and is common to all human cultures across the globe.'),
(4, 13, 'd5.jpg', 'Dancing is like dreaming with your feet!'),
(7, 14, 'file-20200731-14-yfu9hp.jpg', 'Laughing is a gazillion times more likely than praying to leave you grateful to be alive'),
(8, 24, 'file-20200731-14-yfu9hp.jpg', 'Laughing is a gazillion times more likely than praying to leave you grateful to be alive'),
(9, 17, 'BA-Hons-Drama-3.jpg', 'All the worlds a stage and most of us are desperately unrehearsed');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_team_members`
--

CREATE TABLE `tbl_team_members` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `membername` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `address` varchar(25) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `experiance` varchar(25) NOT NULL,
  `member_image` varchar(250) NOT NULL,
  `certificate` varchar(250) NOT NULL,
  `description` varchar(100) NOT NULL,
  `program_image` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_team_members`
--

INSERT INTO `tbl_team_members` (`id`, `team_id`, `membername`, `gender`, `email`, `address`, `phone`, `experiance`, `member_image`, `certificate`, `description`, `program_image`) VALUES
(22, 19, 'Mridhul', 'male', 'mridhul@gmail.com', 'Mridhul Bhavan', '2147483647', '2 Years', 'mem1.jpg', 'dc2.jpg', '', ''),
(23, 13, 'Amy', 'female', 'amy@gmail.com', 'amy', '9675432190', '2', 'm2.jpg', 'dc4.jpg', '', ''),
(24, 13, 'Sam', 'male', 'sam@gmail.com', 'sam', '8745691230', '3', 'mem3.jpg', 'dc3.jpg', '', ''),
(25, 13, 'Sachin', 'male', 'sachin@gmail.com', 'Sachin', '7120750123', '4', 'mem5.jpg', 'dc1.jpg', '', ''),
(26, 10, 'Aan', 'female', 'aan@gmail.com', 'Aan', '2147483647', '3', 'm2.jpg', 'mc2.jpg', '', ''),
(30, 13, 'Jacob', 'male', 'jacob@gmail.com', 'Johns', '9471231111', '4', 'mem2.jpg', 'dc3.jpg', '', ''),
(31, 21, 'Ethan', 'male', 'ethan@gmail.com', 'ethan willa', '2147483647', '2', 'st1.jpg', 'st3.png', '', ''),
(35, 7, 'Augustin', 'male', 'augustin@gmail.com', 'Augustin Willa', '961245783', '2', 'mem5.jpg', 'dr2.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_type`
--

CREATE TABLE `tbl_type` (
  `id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_type`
--

INSERT INTO `tbl_type` (`id`, `team_id`, `theme`, `type`) VALUES
(1, 13, 'Classical', 'bharatha natyam'),
(2, 13, 'Traditional', 'Folk dance'),
(4, 13, 'Cinematic', 'Hip Hop'),
(5, 13, 'Cinematic', 'Contemporary');

-- --------------------------------------------------------

--
-- Table structure for table `tl_order`
--

CREATE TABLE `tl_order` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `ar_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `orderd_on` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tl_order`
--

INSERT INTO `tl_order` (`id`, `u_id`, `ar_id`, `price`, `status`, `orderd_on`) VALUES
(12, 4, 26, 3355, 'placed', '2022-01-11 09:45:31'),
(17, 4, 23, 1775, 'placed', '2022-02-08 09:45:31'),
(19, 4, 25, 1295, 'placed', '2022-06-02 09:45:31'),
(20, 4, 20, 2054, 'placed', '2022-07-05 09:45:31'),
(30, 3, 8, 1295, 'placed', '2022-07-10 04:21:49'),
(31, 3, 15, 1295, 'placed', '2022-07-10 04:21:49'),
(32, 3, 22, 1295, 'placed', '2022-07-10 04:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_msg`
--

CREATE TABLE `user_msg` (
  `msg_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `t_id` int(11) NOT NULL,
  `msg` varchar(250) NOT NULL,
  `replay` varchar(250) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_msg`
--

INSERT INTO `user_msg` (`msg_id`, `u_id`, `t_id`, `msg`, `replay`, `status`) VALUES
(6, 4, 13, 'amazing', 'Thankyou for your Feedback.', 1),
(7, 3, 13, 'Amazing', ' Thank You for your valuable comments.', 1),
(11, 4, 7, 'Your team is amazing', '', 0),
(12, 4, 21, 'Your performance is mind-blowing. ', '', 0),
(13, 3, 13, 'I want to book your show. ', '      ', 1),
(14, 4, 13, 'Your Profile is amazing.', 'Thank you for your valuable comments.', 1),
(15, 4, 13, 'Hello your profile is amazing.', '', 0),
(16, 3, 13, 'Hello.', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_reg`
--

CREATE TABLE `user_reg` (
  `id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `district` varchar(100) NOT NULL,
  `log_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_reg`
--

INSERT INTO `user_reg` (`id`, `fname`, `lname`, `address`, `email`, `phone`, `gender`, `district`, `log_id`, `status`) VALUES
(1, 'Vidhya', 'Prasad', 'Sankupurathil', 'Vidhya@gmail.com', '9612457838', 'female', 'Idukki', 3, 1),
(2, 'Geetha', 'Prasad', 'Geethalayam', 'vidhyaprasad9991@gmail.com', '9871231324', 'female', 'Idukki', 4, 1),
(3, 'Prasad', 'SP', 'sangupurathil', 'prasad@gmail.com', '9544084812', 'male', 'idukki', 5, 1),
(4, 'Geetha', 'Prasad', 'Geethalayam', 'geetha123@gmail.com', '9871231311', 'female', 'Idukki', 6, 1),
(6, 'devika', 'D', 'devika bhavan', 'devika@gmail.com', '9544054815', 'female', 'Ernakulam', 18, 0),
(7, 'Varadha', 'S', 'Varadha Bhavan', 'varadha@gmail.com', '9475681247', 'female', 'Alapuzha', 23, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_category`
--
ALTER TABLE `add_category`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `dance_booking`
--
ALTER TABLE `dance_booking`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `dance_booking_ibfk_1` (`u_id`),
  ADD KEY `pro_id` (`pro_id`) USING BTREE;

--
-- Indexes for table `painter_reg`
--
ALTER TABLE `painter_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `painting_details`
--
ALTER TABLE `painting_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `performers_program_details`
--
ALTER TABLE `performers_program_details`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `performer_reg`
--
ALTER TABLE `performer_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `tbl_booking_payment`
--
ALTER TABLE `tbl_booking_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_id` (`login_id`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_paint_category`
--
ALTER TABLE `tbl_paint_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `tbl_program_img`
--
ALTER TABLE `tbl_program_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_team_members`
--
ALTER TABLE `tbl_team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_id` (`team_id`);

--
-- Indexes for table `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tl_order`
--
ALTER TABLE `tl_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_id` (`u_id`);

--
-- Indexes for table `user_msg`
--
ALTER TABLE `user_msg`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `u_id` (`u_id`),
  ADD KEY `user_msg_ibfk_1` (`t_id`);

--
-- Indexes for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD PRIMARY KEY (`id`),
  ADD KEY `log_id` (`log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_category`
--
ALTER TABLE `add_category`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `dance_booking`
--
ALTER TABLE `dance_booking`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `painter_reg`
--
ALTER TABLE `painter_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `painting_details`
--
ALTER TABLE `painting_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `performers_program_details`
--
ALTER TABLE `performers_program_details`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `performer_reg`
--
ALTER TABLE `performer_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_booking_payment`
--
ALTER TABLE `tbl_booking_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_paint_category`
--
ALTER TABLE `tbl_paint_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbl_program_img`
--
ALTER TABLE `tbl_program_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_team_members`
--
ALTER TABLE `tbl_team_members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tl_order`
--
ALTER TABLE `tl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `user_msg`
--
ALTER TABLE `user_msg`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_reg`
--
ALTER TABLE `user_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dance_booking`
--
ALTER TABLE `dance_booking`
  ADD CONSTRAINT `dance_booking_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_login` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dance_booking_ibfk_2` FOREIGN KEY (`pro_id`) REFERENCES `performer_reg` (`id`);

--
-- Constraints for table `painter_reg`
--
ALTER TABLE `painter_reg`
  ADD CONSTRAINT `painter_reg_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`id`);

--
-- Constraints for table `painting_details`
--
ALTER TABLE `painting_details`
  ADD CONSTRAINT `painting_details_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_login` (`id`);

--
-- Constraints for table `performers_program_details`
--
ALTER TABLE `performers_program_details`
  ADD CONSTRAINT `performers_program_details_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `tbl_login` (`id`);

--
-- Constraints for table `performer_reg`
--
ALTER TABLE `performer_reg`
  ADD CONSTRAINT `performer_reg_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`id`);

--
-- Constraints for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD CONSTRAINT `tbl_cart_ibfk_1` FOREIGN KEY (`login_id`) REFERENCES `user_reg` (`id`),
  ADD CONSTRAINT `tbl_cart_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `painting_details` (`id`);

--
-- Constraints for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD CONSTRAINT `tbl_payment_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user_reg` (`id`);

--
-- Constraints for table `tbl_team_members`
--
ALTER TABLE `tbl_team_members`
  ADD CONSTRAINT `tbl_team_members_ibfk_1` FOREIGN KEY (`team_id`) REFERENCES `performer_reg` (`id`);

--
-- Constraints for table `tl_order`
--
ALTER TABLE `tl_order`
  ADD CONSTRAINT `tl_order_ibfk_1` FOREIGN KEY (`u_id`) REFERENCES `user_reg` (`id`);

--
-- Constraints for table `user_msg`
--
ALTER TABLE `user_msg`
  ADD CONSTRAINT `user_msg_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `performer_reg` (`id`),
  ADD CONSTRAINT `user_msg_ibfk_2` FOREIGN KEY (`u_id`) REFERENCES `user_reg` (`id`);

--
-- Constraints for table `user_reg`
--
ALTER TABLE `user_reg`
  ADD CONSTRAINT `user_reg_ibfk_1` FOREIGN KEY (`log_id`) REFERENCES `tbl_login` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
