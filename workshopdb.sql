-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 23, 2023 at 04:49 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `workshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Booking_ID` int NOT NULL,
  `Booking_Date` date NOT NULL,
  `Booking_Time` time NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `User_ID` int NOT NULL,
  `Workshop_ID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Booking_ID`, `Booking_Date`, `Booking_Time`, `Created_At`, `User_ID`, `Workshop_ID`) VALUES
(1, '2023-07-26', '10:00:00', '2023-07-19 11:16:34', 7, 2),
(2, '2023-08-16', '06:30:00', '2023-07-19 11:19:24', 11, 1),
(3, '2023-08-02', '19:00:00', '2023-07-19 17:04:25', 12, 1),
(4, '2023-07-21', '08:42:00', '2023-07-20 23:41:22', 7, 2),
(5, '2023-07-21', '08:11:00', '2023-07-21 00:11:40', 7, 1),
(6, '2023-07-22', '08:31:00', '2023-07-21 00:31:33', 7, 1),
(7, '2023-07-28', '17:15:00', '2023-07-21 08:14:22', 7, 1),
(8, '2023-07-28', '17:15:00', '2023-07-21 08:26:02', 7, 1),
(9, '2023-07-22', '16:27:00', '2023-07-21 08:27:09', 7, 1),
(10, '2023-07-22', '08:42:00', '2023-07-21 08:38:39', 7, 1),
(11, '2023-07-22', '05:45:00', '2023-07-21 08:44:06', 7, 1),
(12, '2023-07-26', '10:00:00', '2023-07-22 06:11:24', 7, 2),
(13, '2023-07-26', '22:00:00', '2023-07-22 06:13:28', 7, 2),
(14, '2023-07-26', '10:00:00', '2023-07-22 06:14:02', 7, 2),
(15, '2023-07-26', '10:00:00', '2023-07-22 06:17:17', 7, 2),
(16, '2023-07-26', '10:00:00', '2023-07-22 06:22:17', 7, 2),
(17, '2023-07-26', '10:00:00', '2023-07-22 06:22:41', 7, 2),
(18, '2023-07-26', '10:00:00', '2023-07-22 06:27:17', 7, 2),
(19, '2023-07-26', '10:00:00', '2023-07-22 06:29:01', 7, 2),
(20, '2023-07-26', '10:00:00', '2023-07-22 06:30:55', 7, 2),
(21, '2023-07-26', '10:00:00', '2023-07-22 06:51:47', 7, 2),
(22, '2023-07-26', '10:00:00', '2023-07-22 06:59:25', 7, 2),
(23, '2023-07-26', '10:00:00', '2023-07-22 07:05:17', 7, 1),
(24, '2023-07-26', '10:00:00', '2023-07-22 07:07:06', 7, 2),
(25, '2023-07-26', '10:00:00', '2023-07-22 07:07:48', 7, 2),
(26, '2023-07-26', '10:00:00', '2023-07-22 07:08:37', 7, 2),
(27, '2023-07-26', '10:00:00', '2023-07-22 07:09:08', 7, 2),
(28, '2023-07-26', '10:00:00', '2023-07-22 07:10:08', 7, 2),
(29, '2023-07-26', '07:16:00', '2023-07-22 07:12:09', 7, 2),
(30, '2023-07-04', '05:36:00', '2023-07-22 08:35:21', 7, 1),
(31, '2023-07-22', '08:40:00', '2023-07-22 08:36:33', 7, 1),
(32, '2023-07-22', '20:41:00', '2023-07-22 08:37:55', 7, 2),
(33, '2023-07-24', '13:35:00', '2023-07-23 02:35:15', 18, 2),
(34, '2023-07-23', '10:35:00', '2023-07-23 02:35:59', 18, 1),
(35, '2023-07-23', '19:58:00', '2023-07-23 08:58:21', 18, 11),
(36, '2023-07-06', '17:15:00', '2023-07-23 09:10:46', 39, 6),
(37, '2023-07-24', '13:28:00', '2023-07-23 15:28:18', 39, 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset`
--

CREATE TABLE `password_reset` (
  `id` int NOT NULL,
  `email` varchar(255) NOT NULL,
  `reset_token` varchar(64) NOT NULL,
  `request_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_used` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `password_reset`
--

INSERT INTO `password_reset` (`id`, `email`, `reset_token`, `request_time`, `is_used`) VALUES
(1, 'ashrafrosli6b@gmail.com', '40e3a0fd3bbbb0c49da3009c6fe60761792c2ae14d5ecd4bda0b9c38c8711f96', '2023-07-22 01:33:09', 0),
(2, 'mrpotatoes19@gmail.com', '82aaf7190cf49caa6ea1f5b8309c16a25c0b0424c9b3aca9f90e8de10f0c9df2', '2023-07-22 01:46:50', 0),
(3, 'mrpotatoes19@gmail.com', '0673e63d39f8593bee6bc90e42e303f099051f3fe9c72cbc4b08176e8f4a8dfc', '2023-07-22 01:54:14', 0),
(4, 'mrpotatoes19@gmail.com', '8ba2d69fb8cfc4e3129a415efb47b855cf1e206ff2acc5e37d517207d921b7d8', '2023-07-22 01:57:55', 0),
(5, 'mrpotatoes19@gmail.com', '40d4d6e6723ff1a23058288d754aa936a48138d32813adc9d95aca9613f42415', '2023-07-22 01:58:12', 0),
(6, 'mrpotatoes19@gmail.com', '02e3ecebe62ec9b27a5db68009006bbf5435603a9d368ceb4d046026c8819f71', '2023-07-22 02:02:35', 0),
(7, 'mrpotatoes19@gmail.com', '29ceeb88c8e127322147f89f2de359bcd8470fb792d0f6e29a6d757049b3cec1', '2023-07-22 02:05:39', 0),
(8, 'ali58@gmail.com', '8752d49e6d139de64fa3e7cac3e680ab4c783b18e3fdeaaf6d50c97d860731d8', '2023-07-22 02:07:15', 0),
(9, 'ali58@gmail.com', 'f97dee55817fcccdbb1e32eb9a0066e9abca4d80c7817ef5db75e24901ddab8c', '2023-07-22 02:08:05', 0),
(10, 'ali58@gmail.com', '3206819488139d9176794c0270683507b1d45e2b28d9c927032d9532c1a09de5', '2023-07-22 02:09:04', 0),
(11, 'ali58@gmail.com', '2b431a09507ec3d5b0e0b984457f33eca1bc842d97fa1613820cf68ac8faba89', '2023-07-22 02:09:46', 0);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `Payment_ID` int NOT NULL,
  `Booking_ID` int NOT NULL,
  `Payment_Date` datetime NOT NULL,
  `Payment_Method` varchar(20) NOT NULL,
  `Amount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`Payment_ID`, `Booking_ID`, `Payment_Date`, `Payment_Method`, `Amount`) VALUES
(1, 37, '2023-07-23 00:00:00', 'Online', 150);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int NOT NULL,
  `profile_picture` mediumblob NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` text NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(11) NOT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `license_plate` varchar(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `user_type` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `profile_picture`, `username`, `password`, `name`, `address`, `phone_number`, `vehicle_type`, `license_plate`, `created_at`, `updated_at`, `email`, `user_type`) VALUES
(7, 0x75706c6f6164732f4a6f686e2e706e67, 'Ahmad888', '$2y$10$ff0obAJy2RF6jT/r9kMXh.GMdxUPOEBP2oppbh6gFurx7u0fv38Au', 'Ahmad Muzakkir', 'No 36 Lorong Taman Tanah Putih 2', '01118687825', 'Sport Car', 'CBS360', '2023-07-16 07:47:29', '2023-07-16 07:47:29', 'muzack@gmail.com', 'user'),
(8, '', 'Amir', '$2y$10$ntKyXt14cxW0JyTV7UejNOvzr/7qrhUhlovIOIPcwXLRl7k5UdOeC', 'Amir Braim', 'Lorong 69, Jalan Karat', '0189986878', 'SUV', 'BRM888', '2023-07-16 17:37:51', '2023-07-16 17:37:51', 'amir69@gmail.com', 'user'),
(9, '', 'Aswad', '$2y$10$dRC/yPFVudpR1SVulqY8hua9o7irGZm3Zq8s0ewc2z5XmQdB2ugFO', 'Muhammad Aswad Bin Aziz', '356 Taman Sri Nyior, Jalan Kodiang', '0185764166', '4WD', 'KCE8696', '2023-07-16 22:52:21', '2023-07-16 22:52:21', 'aswad@gmail.com', 'user'),
(10, '', 'Lisa89', '$2y$10$61eifVyMvPG07EhpxXbg9eW7Srl3BfWWQ0OL9k95spMJLDbnA39Qe', 'Lisa Binti Mazlan', 'Jalan Bahagia, Machang, Kelantan', '0128689849', 'SUV', 'LIS1280', '2023-07-18 01:34:25', '2023-07-18 01:34:25', 'lis@gmail.com', 'user'),
(11, '', 'Helmidakbar', '$2y$10$kXw4E4L3wla74Cyk2DRyJ.WcEZ2XAzkHlJt4ki8THcMPGCIbh8Y66', 'Helmi Ottoman ', 'No 537 Kampung MySarah Bahagia', '011456456', '4WD', 'HDB7777', '2023-07-19 19:18:39', '2023-07-19 19:18:39', 'helmihensem@gmail.com', 'user'),
(12, 0x75706c6f6164732f70686f746f5f323032332d30372d32305f32322d33302d31392e6a7067, 'Ikmal56', '$2y$10$DAjUsyf08uXesCKG5kryW.fsJgBCDvyGqog51SBWc4M00gdYEBG7C', 'Muhammad Ikmal Bin Ahbar', 'No 70 Felda Sungai Tekam 27070 Jerantut Pahang', '0185234090', 'Sedan', 'MAL5666', '2023-07-20 01:03:25', '2023-07-20 01:03:25', 'ikmalrezz02@gmail.com', 'user'),
(13, 0x75706c6f6164732f536173756b652e706e67, 'Sasuke07', '$2y$10$Ao1L5F4aDBO5DSbdE.nLd.O4.9LNDxd.Q1KZcYpS8STJfGSHHOJj6', 'Muhammad Farris Bin Kamarsuparin', 'Lot 87 Taman Kenangan', '0129687835', 'Sport Car', 'RIC666', '2023-07-22 17:35:21', '2023-07-22 17:35:21', 'ric.nt@gmail.com', 'user'),
(14, 0x75706c6f6164732f494d472d32303139313131372d5741303033322e6a7067, 'farhan32', '$2y$10$2.APZNvnmL1cOOawy1IMi.pf5.PqAQyI7LYIrX7PfbkMirjBDn0yG', 'Muhammad Farhan Wafiq Bin Rahim', 'Lorong 69, Jalan Karat', '01117543210', 'MPV', 'CAR890', '2023-07-22 17:47:38', '2023-07-22 17:47:38', 'paan32@gmail.com', 'admin'),
(15, 0x75706c6f6164732f494d472d32303139313131362d5741303031312e6a7067, 'Mirul10', '$2y$10$COD0BI4U37U8UvqZln5NOugv4Fp69KQKe/tpdYJ35WM5QK0TQHc9C', 'Amirul Aiman Bin Azman', 'Lorong 10, Taman Kenangan', '014324865', '4WD', 'VAP1888', '2023-07-22 19:19:15', '2023-07-22 19:19:15', 'mirul10@gmail.com', 'admin'),
(16, 0x75706c6f6164732f494d472d32303139313131382d5741303033392e6a7067, 'AbuJa', '$2y$10$IRFbz2xI0WnpTSmGRvCXDuCl/8fs3Vl.VQDdrSS3321dGXA.S4ZyG', 'Abu Bin Ali', 'Lorong 89, Jalan Karat', '0185245009', 'Sedan', 'ABA200', '2023-07-22 20:22:36', '2023-07-22 20:22:36', 'abu02@gmail.com', 'user'),
(18, 0x75706c6f6164732f3238353835382e6a7067, 'M', '$2y$10$6MEdoA..r2TgRLFGjTqgg.tT7MGzhIZnpF4m/pFooiiujOt4O3Sam', 'aswad', '356 TAMAN SRI NYIOR', '0125141206', 'SUV', 'KCD 4638', '2023-07-23 10:31:42', '2023-07-23 10:31:42', 'aswadaziz7@gmail.com', 'user'),
(19, 0x75706c6f6164732f61303233363633653239643832363661356439613066636665616163613436302e706e67, 'K', '$2y$10$p0pO/6v71BU8pIG/Z9pqaeNIsX4ZjvzxvTibWay5L.vJ2YwDZ9kgu', 'SITI KHADIJAH', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0192050242', 'SUV', 'DDC 8671', '2023-07-23 11:36:42', '2023-07-23 11:36:42', 'siti1@gmail.com', 'user'),
(20, 0x75706c6f6164732f30613239323964323661343537323531313534633133323665306333373535642e706e67, 'aime', '$2y$10$WC8.OUWS3lt1oKA85/y1eO1Mrc0PNgZ9d4VW3znICedPRVcX7PdyK', 'Wan Aiman', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '01160504454', 'Sedan', 'PMK 7541', '2023-07-23 11:41:09', '2023-07-23 11:41:09', 'wanaime@gmail.com', 'user'),
(21, 0x75706c6f6164732f32643438313637333538366562353939376133373763643535633230303132332e706e67, 'anwar', '$2y$10$XKQZk0mL2d06Zw22QRLBHOqXU85Z.0R2UYEuPDhyk4OhaPZmbZVVS', 'wan mirul', 'PT 3402 Taman Desa Sri Hawa Kg Banggol kuin, Ulu Sat 18500 Machang', '0132672677', 'SUV', 'WDP 7254', '2023-07-23 11:44:44', '2023-07-23 11:44:44', 'wan@gmail.com', 'user'),
(22, 0x75706c6f6164732f35363235646365316439323166373963613238653964623939323830336363622e706e67, 'min', '$2y$10$s.ysHfuJW9GgQmlhWqYceOMs/RkD0deY17aJHIV8drKjT9/QRhGZC', 'Yasmin', 'PT342, Kampung Belukar, 18500 Machang, Kelantan', '0134530192', 'SUV', 'KTE 5472', '2023-07-23 11:46:31', '2023-07-23 11:46:31', 'min@gmail.com', 'user'),
(23, 0x75706c6f6164732f32663930393737313863303234633738663963636262373331613130636531372e706e67, 'ecah', '$2y$10$.xeL09MYzWY9Q.AgnBUx4..WTEuspwuFX95W6qUG2TZZqeMS5dhUO', 'Aisyah', 'PT42, Kampung Belukar, 18500 Machang, Kelantan', '0193063620', 'Sports car', 'PLE 5487', '2023-07-23 11:47:58', '2023-07-23 11:47:58', 'cah@gmail.com', 'user'),
(24, 0x75706c6f6164732f35646636303335343831613537363631376433343036643366353164343163312e706e67, 'yuni', '$2y$10$d7yHp76VtRiBLCk1gKE/G..S03RYKAF9eosgH3y1Wr5CL1dOTZOpK', 'Ayuni', 'PT32, Kampung Belukar, 18500 Machang, Kelantan', '0179743095', 'SUV', 'DPC 8677', '2023-07-23 11:49:05', '2023-07-23 11:49:05', 'yun@gmail.com', 'user'),
(25, 0x75706c6f6164732f62623732323730393232313036643965376135333334336666346133623363302e706e67, 'jah', '$2y$10$FguOFhYXwF78cFlB20vjVee0J36ZiZIR3.WsrYlOM.SCTXhK74ul.', 'Izzah', 'PT2, Kampung Belukar, 18500 Machang, Kelantan', '0194232094', 'SUV', 'KDE 5474', '2023-07-23 11:50:40', '2023-07-23 11:50:40', 'jah@gmail.com', 'user'),
(26, 0x75706c6f6164732f66616464386139353661363064656334346237303231653166653962323834362e706e67, 'qilah', '$2y$10$UzNTIGb592jTHcydEcT9jOlOwrpCxctRkreRb1WWQ8/yMhyook0Aq', 'Aqilah', 'PT302, Kampung Belukar, 18500 Machang, Kelantan', '0137201366', 'SUV', 'DFD 7472', '2023-07-23 11:52:54', '2023-07-23 11:52:54', 'qila@gmail.com', 'user'),
(27, 0x75706c6f6164732f30363232346261363332643561643036383662323561666431333436353262642e706e67, 'zati', '$2y$10$LXYDE8TBc7WHNg8IYrcbkuuvl9aoFkRwcI1Gb2lp2ELX91apnEJm2', 'Izati', 'PT80, Kampung Belukar, 18500 Machang, Kelantan', '01117990798', 'Sedan', 'DFD 7281', '2023-07-23 11:54:38', '2023-07-23 11:54:38', 'zati@gmail.com', 'user'),
(28, 0x75706c6f6164732f32626161383631363537363233313863363166646433303763353561353532632e706e67, 'ain', '$2y$10$75OhCjgGLM2S4sdIbBVmi.J21zFMoJljgg9iyOVhqk2r8n/kH7aqq', 'Ain', 'PT398, Kampung Belukar, 18500 Machang, Kelantan', '019454728', '4WD', 'PYU 5472', '2023-07-23 11:56:27', '2023-07-23 11:56:27', 'ain@gmail.com', 'user'),
(29, 0x75706c6f6164732f36646163346362306462306639316433313233663230626631666138646132342e706e67, 'wani', '$2y$10$xTW0vOzosG1F7HHcLKvSyOBwZTb36FuoV1Op57bJ2D8K/p4rHnbE2', 'Wani', ' PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '01125458462', 'Sports car', 'DFD 2424', '2023-07-23 11:58:42', '2023-07-23 11:58:42', 'wani@gmail.com', 'user'),
(30, 0x75706c6f6164732f64383666353030366632636339663264393830393833396636633465303761362e706e67, 'ying', '$2y$10$yrLsxrUmcv8yLIbdU/OB7OjZiep4JQvM7KcsQdP9xN4a4jf8dYPW6', 'Nurin', ' PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '01125713963', 'SUV', 'DDC 7524', '2023-07-23 12:00:14', '2023-07-23 12:00:14', 'ying@gmail.com', 'user'),
(31, 0x75706c6f6164732f63313864616237633333323536326664363963616334326638333162336362622e706e67, 'tash', '$2y$10$B/GZ7HhqCpXEnSo8gtOpreaqwnznTeDy6gNU96gkf9OaGpbHzpvSa', 'Tash', 'Lot 3243 A Kg Tok Petani, 18500 Machang, Kelantan', '0123174362', 'SUV', 'PYM 2345', '2023-07-23 12:01:45', '2023-07-23 12:01:45', 'tash@gmail.com', 'user'),
(32, 0x75706c6f6164732f38656634363161366561316434353137303337613738356333643738663130352e706e67, 'shu', '$2y$10$a/NfoecDAbN1z9cNq6bR5.xJebihuwWURLeEHjU8NY0TXJmMabzaG', 'Shuhaila', 'Taman MJ kemuning, 2, Jln Bukit Bakar, 18500 Machang, Kelantan', '01129105860', 'Crossover', 'KRW 5876', '2023-07-23 12:04:25', '2023-07-23 12:04:25', 'shu@gmail.com', 'user'),
(33, 0x75706c6f6164732f35393831326332343136393838323563353963303061623432663639396239302e706e67, 'pijah', '$2y$10$IfxtT4ojCFHuTcyq3Mm9AOFiEKvN/QQQ.HShbVY1pFto0TYVDzGBS', 'Hafizah', 'Kampung Pemanak, Kemuning, 18500 Machang, Kelantan', '01135140014', 'SUV', 'DWQ 1345', '2023-07-23 12:06:07', '2023-07-23 12:06:07', 'pijah@gmail.com', 'user'),
(34, 0x75706c6f6164732f65656463643739363232633133626139393234323635313835313335386264392e706e67, 'teah', '$2y$10$0eSIywDCHmlhuwN6JkZaduptE83RGVKm6/5.slx/sCfVtiEERWQ9a', 'Fatiah', 'Kampung Pemanak, Kemuning, 18500 Machang, Kelantan', '0189459697', 'SUV', 'PMN 7522', '2023-07-23 12:07:51', '2023-07-23 12:07:51', 'teah@gmail.com', 'user'),
(35, 0x75706c6f6164732f64323036626130306338356436643762623534313133383666393262353565352e706e67, 'aina', '$2y$10$UbiGTQFBgoKJtYRReLctiutPwLYwiWnvi0Y2l5excg1GbyF.jxXmi', 'Aina', 'Lot 3243 A Kg Tok Petani, 18500 Machang, Kelantan', '0189415771', 'Sedan', 'KFC 4639', '2023-07-23 12:09:04', '2023-07-23 12:09:04', 'aina@gmail.com', 'user'),
(36, 0x75706c6f6164732f61643939303833363438306434306636383366623036313334633737303963322e706e67, 'alya', '$2y$10$XCYOP2.X.HnFAE7DO2NhFewJH0VdbazPn.ZhdGIURCTMCirvyZ/nu', 'Alya', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '01120612833', 'Sports car', 'DMK 7541', '2023-07-23 12:11:01', '2023-07-23 12:11:01', 'alya@gmail.com', 'user'),
(37, 0x75706c6f6164732f62396335356666303735623237303437336537343939356235373732356466632e706e67, 'fida', '$2y$10$iiclCS8Ijn90abNOo0ybL.atfM3FDXgG4I1VV0Z.eS5PzimK21rD6', 'Afida', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '01162047328', 'SUV', 'DSC 8231', '2023-07-23 12:12:21', '2023-07-23 12:12:21', 'fida@gmail.com', 'user'),
(38, 0x75706c6f6164732f37613961336339383036343735373564336165346431646364383363643963382e706e67, 'raihan', '$2y$10$scJdPsLTyexWzUPhJfKo4u7cH.SZajD4/Q/wZWGqEZtVPN8nBv84q', 'Raihan', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '01127239123', 'SUV', 'PFQ 7123', '2023-07-23 12:13:31', '2023-07-23 12:13:31', 'raihan@gmail.com', 'user'),
(39, 0x75706c6f6164732f65623732326230353336666438303130396234633466643331643138626236632e706e67, 'medi', '$2y$10$jaQCTh9NaTtC.i2g./XSxOXTvx1r5.VinXnH/4Zo7wiChcorIzIQu', 'Hamdi', 'PT 3402 Taman Desa Sri Hawa Kg Banggol kuin, Ulu Sat 18500 Machang', '01119435672', 'SUV', 'WMK 7541', '2023-07-23 12:14:55', '2023-07-23 12:14:55', 'hamdi@gmail.com', 'user'),
(40, 0x75706c6f6164732f32346565363435616263326663643434616139346430373866333966653936342e706e67, 'faris', '$2y$10$pHiLPY4Sqm8vgyDBsmSYTOsCLSa57z9Y8NS9GbZRYUBRzfbtx9UfK', 'Faris', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '01111991508', 'Crossover', 'DLE 5487', '2023-07-23 12:15:51', '2023-07-23 12:15:51', 'faris@gmail.com', 'user'),
(41, 0x75706c6f6164732f62316336386636366434626533613938306664386239356465656565386263362e706e67, 'adriel', '$2y$10$SF22fHHG8Hr1QfpvdFYTIui6o5j7rrWC6p9jUJXWWLBN3SRRFSGky', 'Darwish', 'PT 3402 Taman Desa Sri Hawa Kg Banggol kuin, Ulu Sat 18500 Machang', '01137469556', 'Sports car', 'DFD 7615', '2023-07-23 12:17:15', '2023-07-23 12:17:15', 'ed@gmail.com', 'user'),
(42, 0x75706c6f6164732f38366334316135323464653363336437636464626133366633663135353538632e706e67, 'jat', '$2y$10$jZ../aVdfRUHsRijVAwvpu3kx9xGL2C2B1EAuQ6AY45N/UsOPflUa', 'Ikmal', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0179646553', 'SUV', 'DDC 8867', '2023-07-23 12:18:22', '2023-07-23 12:18:22', 'jat@gmail.com', 'user'),
(43, 0x75706c6f6164732f36623064383066393962663832333330636564333134656635346639313339652e706e67, 'dan', '$2y$10$A9IUEZq5Pk7kRFZdaT.mWODbASHzspdMh7TZ5FYOJoTGM9CXXSYY.', 'Shadan', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '01111032501', 'Crossover', 'DMK 7345', '2023-07-23 12:19:56', '2023-07-23 12:19:56', 'dan@gmail.com', 'user'),
(44, 0x75706c6f6164732f39383765336661376164616431323064636264346162666530303564653136642e706e67, 'lis', '$2y$10$YR8YTBzTLdP4hPRwCKDlmOoGb3fmXMI4Xp.PwsDzJtgSAZPU015kC', 'Lis', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0124030676', 'SUV', 'PMK 7534', '2023-07-23 12:20:55', '2023-07-23 12:20:55', 'lis@gmail.com', 'user'),
(45, 0x75706c6f6164732f64343139386233613035323435343962356532613962653863383239663434372e706e67, 'mimi', '$2y$10$im2gaeU.PSR5HmJK4bRT2uQzAaUEYk.l5wczgMWeMXv7OpfyupXOG', 'Hanun', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0139491091', 'Sports car', 'PRQ 5412', '2023-07-23 12:22:06', '2023-07-23 12:22:06', 'nun@gmail.com', 'user'),
(46, 0x75706c6f6164732f34353965356437373937666363323062623031636666396437653337373630332e706e67, 'falah', '$2y$10$lPbctZm2qLBsbkyC6btgieqjWzwftciW4A9UBVRw7yMaLgYQRGMKq', 'Misbahulfalah', 'PT 3402 Taman Desa Sri Hawa Kg Banggol kuin, Ulu Sat 18500 Machang', '01120683532', 'Sedan', 'KLM 4665', '2023-07-23 12:23:30', '2023-07-23 12:23:30', 'falah@gmail.com', 'user'),
(47, 0x75706c6f6164732f61616231373338383761346338356537313031323830643263653133623262642e706e67, 'braim', '$2y$10$ZyQa7SkHOAOnQxcAniHmjeEi4heHwZHdOGwz5HMtMT9ZLwmB8PXrS', 'Amir', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '018281059', 'SUV', 'KFC 7385', '2023-07-23 12:24:35', '2023-07-23 12:24:35', 'braim@gmail.com', 'user'),
(48, 0x75706c6f6164732f30303237656330383732336533393430343033343231656330383361373638342e706e67, 'ady', '$2y$10$gBm5IRcgyOAGG2feYMWs4.DQSS8qU.ZoqD/5XT01N7AtSKEMU4IGy', 'Ady', 'PT 3402 Taman Desa Sri Hawa Kg Banggol kuin, Ulu Sat 18500 Machang', '01114404259', 'Sports car', 'KDH 2422', '2023-07-23 12:25:47', '2023-07-23 12:25:47', 'adi@gmail.com', 'user'),
(49, 0x75706c6f6164732f696d6167657320283438292e6a7067, 'wati', '$2y$10$LPXxbEkIYxrvJ.kP5MXnoOqI9pYOfthXHDC3BzW5.G0FAwKuR2oJq', 'Watie', 'PT697, Kampung Belukar, 18500 Machang, Kelantan', '0178659874', 'Sports car', 'PLE 5435', '2023-07-23 12:47:02', '2023-07-23 12:47:02', 'wati@gmail.com', 'user'),
(50, 0x75706c6f6164732f696d6167657320283437292e6a7067, 'anwar', '$2y$10$8T39S52M9OtOnPy4ZX0gB.tOjo0bFuUSuvSIGrKGPk1jThDMbrtu2', 'sha', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0112358769', 'Sedan', 'WDP 7276', '2023-07-23 12:47:57', '2023-07-23 12:47:57', 'sha@gmail.com', 'user'),
(51, 0x75706c6f6164732f696d6167657320283436292e6a7067, 'tira', '$2y$10$N4KTLTRauknVj7pO5jpQf.xF/lVcf7bK2iNMg373XkSyBngbvqKQW', 'Tiara', 'PT3532, Kampung Belukar, 18500 Machang, Kelantan', '0143567985', 'SUV', 'PLE 5449', '2023-07-23 12:49:10', '2023-07-23 12:49:10', 'tira@gmail.com', 'user'),
(52, 0x75706c6f6164732f696d6167657320283435292e6a7067, 'hani', '$2y$10$pbBcaQXsvg71gPVDkILZG.ujIQ.ErWLL.6.vktFWqy28JRzGXsApu', 'Honey', 'Lot 3243 A Kg Tok Petani, 18500 Machang, Kelantan', '0118796324', 'Crossover', 'PMK 7553', '2023-07-23 12:50:25', '2023-07-23 12:50:25', 'hani@gmail.com', 'user'),
(53, 0x75706c6f6164732f696d6167657320283434292e6a7067, 'mawar', '$2y$10$K3kvKX7XiMJTMeUZlYAt5.Lf8WuIqyLezfVFiAOZPyi5gLboDIt8C', 'Mawar', 'Lot 3243 A Kg Tok Petani, 18500 Machang, Kelantan', '0128769453', 'Sports car', 'PLW 1248', '2023-07-23 12:51:17', '2023-07-23 12:51:17', 'mawa@gmail.com', 'user'),
(54, 0x75706c6f6164732f696d6167657320283433292e6a7067, 'yani', '$2y$10$8DLxjpNKNBqJPqyZJp7EPuSLynJjEEr7tw/NQf6PJFbFm0iWzryNC', 'Yani', 'Lot 1243 A Kg Tok Petani, 18500 Machang, Kelantan', '0183569874', 'Crossover', 'WDP 3567', '2023-07-23 12:52:14', '2023-07-23 12:52:14', 'yan@gmail.com', 'user'),
(55, 0x75706c6f6164732f696d6167657320283432292e6a7067, 'shira', '$2y$10$YYlc/lalDD7.70iZgrqs4Oa0Yj.qvAvuDbbUps.QxwK.ksLTcupFe', 'Shira', 'Lot 3243 A Kg Tok Petani, 18500 Machang, Kelantan', '0123987364', 'Sedan', 'KTE 3245', '2023-07-23 12:53:14', '2023-07-23 12:53:14', 'shira@gmail.com', 'user'),
(56, 0x75706c6f6164732f696d6167657320283431292e6a7067, 'mira', '$2y$10$o1OVm9J/0h6tnLZPGfPpe.mGtTeOIfLphKaX7JRheV7cp590VtmsG', 'Amira', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127893134', 'SUV', 'PLE 5860', '2023-07-23 12:54:10', '2023-07-23 12:54:10', 'mir@gmail.com', 'user'),
(57, 0x75706c6f6164732f696d6167657320283430292e6a7067, 'atin', '$2y$10$mfJEP6.f83WQZR1aDxf/qe5qyJkTZORcNGsoiSJTUeBh4TTY3is5G', 'Fatin', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0123657864', 'Sports car', 'KTE 2782', '2023-07-23 12:55:18', '2023-07-23 12:55:18', 'atin@gmail.com', 'user'),
(58, 0x75706c6f6164732f696d6167657320283339292e6a7067, 'shima', '$2y$10$OV8nzE0P/.2vV8Kt8QrCpOKE8Yf.2QltMkketoDFlcjtA0vpixPUO', 'Shima', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127864753', '4WD', 'PLE 8723', '2023-07-23 12:56:09', '2023-07-23 12:56:09', 'shima@gmail.com', 'user'),
(59, 0x75706c6f6164732f696d6167657320283338292e6a7067, 'mat', '$2y$10$gkJAcosC62Cho3PduJInWeFAFHKDhJGhsw/k5c/ixlrLKqGp0bdSi', 'Ahmad', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0123689567', 'Sports car', 'PMK 2356', '2023-07-23 12:57:35', '2023-07-23 12:57:35', 'mat@gmail.com', 'user'),
(60, 0x75706c6f6164732f696d6167657320283337292e6a7067, 'mai', '$2y$10$Gx.WxWUhyi8PJZRfyFg7G.rxqU/privy76eqVadJ9PlX.ZhxLgrz.', 'Mai', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0123697845', 'Sedan', 'WDL 4213', '2023-07-23 12:58:28', '2023-07-23 12:58:28', 'mai@gmail.com', 'user'),
(61, 0x75706c6f6164732f696d6167657320283336292e6a7067, 'aida', '$2y$10$zsqlLN2GxneLfqyoLBEsG.IYCEgSeLW9kGDYwWKXZe2prlpdDKpRO', 'Aida', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127893456', 'SUV', 'WDP 7365', '2023-07-23 13:00:36', '2023-07-23 13:00:36', 'aida@gmail.com', 'user'),
(62, 0x75706c6f6164732f696d6167657320283335292e6a7067, 'sara', '$2y$10$j2G2XG0dEcp.kgmwvaRkJ.zpa93mRcYJNiXUkuTDAOkwZ9xYSULo.', 'Sarah', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '013698764', 'Sports car', 'PLE 7164', '2023-07-23 13:01:30', '2023-07-23 13:01:30', 'sara@gmail.com', 'user'),
(63, 0x75706c6f6164732f696d6167657320283334292e6a7067, 'hanis', '$2y$10$Q6XINRqsTovhVA8.bR/sdePVidTL2/TPxUSQwKcHaZhef/EfFDAeK', 'Hanis', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0132456795', 'Sports car', 'PLE 5435', '2023-07-23 13:03:04', '2023-07-23 13:03:04', 'hani@gmail.com', 'user'),
(64, 0x75706c6f6164732f696d6167657320283333292e6a7067, 'zaini', '$2y$10$UICyDTIFNywfbQK/lLnhGuhFS4r5qxrIF7spyXoGmvkWF7oc81aDi', 'Zayani', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0114567359', 'SUV', 'PKD 7541', '2023-07-23 13:04:07', '2023-07-23 13:04:07', 'zai@yahoo.com', 'user'),
(65, 0x75706c6f6164732f696d6167657320283332292e6a7067, 'maya', '$2y$10$4p64wHkOiZydSxOKrSPCZuw6r7.c0/7G1uVX0Incr70YskssMt6hG', 'Maya', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0128963245', 'Sports car', 'KTC 5356', '2023-07-23 13:05:09', '2023-07-23 13:05:09', 'maya@gmail.com', 'user'),
(66, 0x75706c6f6164732f696d6167657320283331292e6a7067, 'najah', '$2y$10$J.dRZvAmgRbD8qmxx2QBZuMZvoXW7UV90mgGZukTMMf/6t1IZxWx2', 'Najah', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0189635427', 'SUV', 'WDP 3562', '2023-07-23 13:06:02', '2023-07-23 13:06:02', 'naja@gmail.com', 'user'),
(67, 0x75706c6f6164732f696d6167657320283330292e6a7067, 'mari', '$2y$10$KP/9HGgS9yUrx5EwluJfDeEQxSja9/f1fkaaGOqa1zZjIbHRHHFFy', 'mariam', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0138967542', '4WD', 'PDE 5325', '2023-07-23 13:06:58', '2023-07-23 13:06:58', 'mariam@gmail.com', 'user'),
(68, 0x75706c6f6164732f696d6167657320283239292e6a7067, 'lisa', '$2y$10$z7bJn1U9D/Qgr3oHQqcIT.7qUtzPuOWFMX/vse8ptXt8hjhQbrUUW', 'Lisa', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0128756133', 'Crossover', 'KTE 5235', '2023-07-23 13:08:29', '2023-07-23 13:08:29', 'lisa@gmail.com', 'user'),
(69, 0x75706c6f6164732f696d6167657320283238292e6a7067, 'janah', '$2y$10$jbMy2FkcaBDQEESf4O4Rse9r.IJr4WCevJzdGJDPH.I1pKDoxldwa', 'Janah', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0125639784', 'SUV', 'DDC 8235', '2023-07-23 13:09:24', '2023-07-23 13:09:24', 'jana@gmail.com', 'user'),
(70, 0x75706c6f6164732f696d6167657320283237292e6a7067, 'ros', '$2y$10$Y28Jwb9n1TZUtMwLjIIJ8.D1wQUEMbOt2u21bIil7L9pACnsglCgi', 'Rose', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0136795846', 'Crossover', 'KTE 8642', '2023-07-23 13:10:15', '2023-07-23 13:10:15', 'ros@gmail.com', 'user'),
(71, 0x75706c6f6164732f696d6167657320283236292e6a7067, 'faiz', '$2y$10$jJ1aANYnDwlYZlzR9qBej.wvWFl/A2KZ2kDMdbnClb94MDAxiZvIy', 'Faiz', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '015653155', '4WD', 'KTA 5475', '2023-07-23 13:11:21', '2023-07-23 13:11:21', 'faiz@gmail.com', 'user'),
(72, 0x75706c6f6164732f696d6167657320283235292e6a7067, 'dayah', '$2y$10$qJl0XVFKdOYd.xTY3eLg9eY50jg5AY7Vu8E4amErRlRFsMdOC.eKe', 'Hidayah', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0135698745', '4WD', 'WDP 7821', '2023-07-23 13:12:19', '2023-07-23 13:12:19', 'dayah@gmail.com', 'user'),
(73, 0x75706c6f6164732f696d6167657320283234292e6a7067, 'tia', '$2y$10$DlJltON5FXmnWKm9zpoex.DiPvGdYskIFpXJ4bE/L0prdXIgk1r9y', 'Tia', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '012784623', 'SUV', 'KTE 5432', '2023-07-23 13:21:33', '2023-07-23 13:21:33', 'tia@gmail.com', 'user'),
(74, 0x75706c6f6164732f696d6167657320283233292e6a7067, 'alia', '$2y$10$v9tFU6XMe9lZB1tRa3Lv3.Kk5FxmmqTu8D4uFb/v15e1zbl9yyCIO', 'Alia', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0136583698', 'SUV', 'WDP 7782', '2023-07-23 13:23:23', '2023-07-23 13:23:23', 'alia@gmail.com', 'user'),
(75, 0x75706c6f6164732f696d6167657320283232292e6a7067, 'ira', '$2y$10$BWNX7D5lObn5VEhQ/mDEF.eEbNWEZepZHkqT6pvuwZD751.52uyO.', 'Irah', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127896434', 'Sedan', 'WDP 3654', '2023-07-23 13:24:18', '2023-07-23 13:24:18', 'ira@gmail.com', 'user'),
(76, 0x75706c6f6164732f696d6167657320283231292e6a7067, 'eymah', '$2y$10$Hojn55Hdh0FWU.iyfFNaCOMoEFgyhSdYJdEQm2.PGf1fJm0t2r5Vi', 'Eyma', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0136987678', 'Crossover', 'KAB 5472', '2023-07-23 13:25:28', '2023-07-23 13:25:28', 'eyma@gmail.com', 'user'),
(77, 0x75706c6f6164732f696d6167657320283230292e6a7067, 'zati', '$2y$10$sbStB6/lARW.djWb7b932Offnp3UMOeXPIIoAad.5MpSpiNI13C..', 'Izzati', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0124563789', 'Crossover', 'PMD 7537', '2023-07-23 13:27:50', '2023-07-23 13:27:50', 'zat@gmail.com', 'user'),
(78, 0x75706c6f6164732f696d6167657320283139292e6a7067, 'mina', '$2y$10$Hq7itwQZqKeJA2n/lCJshOBp6UBz0dpl1kvAiNcH2fZVhnLlhs9rW', 'Mina', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0135698756', 'Sports car', 'DDC 8671', '2023-07-23 13:28:56', '2023-07-23 13:28:56', 'min@gmail.com', 'user'),
(79, 0x75706c6f6164732f696d6167657320283138292e6a7067, 'rahimah', '$2y$10$jtWJZnfjKQbLqwM6UxfvW.NB.L4XQHiPS8vHLc3JuHZm.OuX8Jn7a', 'Rahima', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '013896457', 'Sedan', 'KDE 5472', '2023-07-23 13:34:39', '2023-07-23 13:34:39', 'rahima@gmail.com', 'user'),
(80, 0x75706c6f6164732f696d6167657320283137292e6a7067, 'waney', '$2y$10$tpSZiQHE1hUw8IWb.Hlsa.XkKgSIcZ9STEjAWtyh/.6z2S9BS/9g.', 'Waney', 'PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '0183697235', 'Sedan', 'WKI 7254', '2023-07-23 13:35:50', '2023-07-23 13:35:50', 'waney@gmail.com', 'user'),
(81, 0x75706c6f6164732f696d6167657320283136292e6a7067, 'qoirun', '$2y$10$1tcXtVz3KcKxxIzaMLfojuEIV69p3Luyb5Z7xLGhIGvwgV/8i/z36', 'Qoirun', 'PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '0123568746', 'Crossover', 'PFA 5435', '2023-07-23 13:37:28', '2023-07-23 13:37:28', 'qoi@gmail.com', 'user'),
(82, 0x75706c6f6164732f696d6167657320283135292e6a7067, 'nisya', '$2y$10$5GN5ulgq3TuR2izAlrCeyujbQGt5ZvctaxS/MLxbOvnUnghZL3mJC', 'Nisya', 'PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '017453689', '4WD', 'KTE 5325', '2023-07-23 13:38:35', '2023-07-23 13:38:35', 'nisya@gmail.com', 'user'),
(83, 0x75706c6f6164732f696d6167657320283134292e6a7067, 'haikal', '$2y$10$TmQvNQrHtbiq8q8hGafrF.YwV/QNcO.hCYCTtLsN6G6zgpCXFgOxm', 'Haikal', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127896453', 'Crossover', 'WAD 7254', '2023-07-23 13:41:58', '2023-07-23 13:41:58', 'haikal@gmail.com', 'user'),
(84, 0x75706c6f6164732f696d6167657320283133292e6a7067, 'paan', '$2y$10$1ps5vxrVNxWVeOkM8PCX4enBewtOC/cWTtJzBcF4sa/FBtasKv2hC', 'Farhan', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '013567893', '4WD', 'KTE 5352', '2023-07-23 13:43:14', '2023-07-23 13:43:14', 'paan@gmail.com', 'user'),
(85, 0x75706c6f6164732f696d6167657320283132292e6a7067, 'g', '$2y$10$wuBxKPClXZnY2tIKgVfO1uUrpiLLutSN.B/GCapBWFc3m3GP7S3Zi', 'Gie', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0145263593', 'Crossover', 'PMK 3184', '2023-07-23 13:44:11', '2023-07-23 13:44:11', 'g@gmail.com', 'user'),
(86, 0x75706c6f6164732f696d6167657320283131292e6a7067, 'haris', '$2y$10$OWbUPI0HMN4WhTlpTTzRGO1FHliva0Ig/Nwk2JY2EQvMs6.Jf7hmG', 'Haris', '320 TAMAN SRI NYIOR', '0125141320', 'SUV', 'WDP 2545', '2023-07-23 13:45:27', '2023-07-23 13:45:27', 'haris@gmail.com', 'user'),
(87, 0x75706c6f6164732f696d6167657320283130292e6a7067, 'riz', '$2y$10$0j90Bo3QIKe3c7HS0rBHrOjJ/43fe0LWG9iHuwGZ2HCVF8D9VxkC.', 'Rizman', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0128793562', 'SUV', 'KTC 5323', '2023-07-23 13:46:27', '2023-07-23 13:46:27', 'rich@gmail.com', 'user'),
(88, 0x75706c6f6164732f696d61676573202839292e6a7067, 'hayati', '$2y$10$F0GypeYZAnNrAkq1uehfUOXnyThZ/bSHzLi9sz8zL2CBKsUXVNrsC', 'Hayati', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127896531', '4WD', 'KTE 2546', '2023-07-23 13:47:37', '2023-07-23 13:47:37', 'yati@gmail.com', 'user'),
(89, 0x75706c6f6164732f696d61676573202838292e6a7067, 'anuar', '$2y$10$pxXtJ7YmYKCYYHWwndm2CuOy/r8vEsqlnFZFbZenXRdb7FxrQEIr2', 'Anuar', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0128796463', 'SUV', 'WDP 3564', '2023-07-23 13:48:26', '2023-07-23 13:48:26', 'nur@gmail.com', 'user'),
(90, 0x75706c6f6164732f696d61676573202837292e6a7067, 'zai', '$2y$10$TezjB8AFI6yWWH8b1VjGgujK8YQluZOZJlJ4VSnmuYuzDxIdM6Qv.', 'Zai', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0137893452', 'Crossover', 'DDC 3625', '2023-07-23 13:49:29', '2023-07-23 13:49:29', 'zai@gmail.com', 'user'),
(91, 0x75706c6f6164732f696d61676573202836292e6a7067, 'sidik', '$2y$10$R9Aw2SDqHXTL65unGwcCYO2OUyyAdIFxaHPizZRkX5oGCG0GC14zK', 'Syadiq', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0172453675', 'SUV', 'KAB 4521', '2023-07-23 13:50:25', '2023-07-23 13:50:25', 'sya@gmail.com', 'user'),
(92, 0x75706c6f6164732f696d61676573202835292e6a7067, 'iz', '$2y$10$kPAx6J.IOhBuP42ksxL3T.MZOu4s9gVb.Jg4M.t9azRayIp9aZRiK', 'Idzris', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '012357684', '4WD', 'PMK 2451', '2023-07-23 13:51:24', '2023-07-23 13:51:24', 'riz@gmail.com', 'user'),
(93, 0x75706c6f6164732f696d61676573202834292e6a7067, 'liza', '$2y$10$1cik/Q/9a8kAC48cOo8gY.ZxkzWpOiCy6lG..eCyWU3PAKnHLcMN.', 'Liza', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0123567894', 'SUV', 'KCD 5472', '2023-07-23 13:52:23', '2023-07-23 13:52:23', 'liz@gmail.com', 'user'),
(94, 0x75706c6f6164732f696d61676573202833292e6a7067, 'mail', '$2y$10$zsIzcmGWb2bENo1m8rMdluG5t408S/QxPzes945qJX8SnMO4gl70i', 'Ismail', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0137548632', 'SUV', 'KEF 5472', '2023-07-23 13:53:38', '2023-07-23 13:53:38', 'iz@gmail.com', 'user'),
(95, 0x75706c6f6164732f696d61676573202832292e6a7067, 'acap', '$2y$10$4QxRu9YhXI8DnxE4YIUnTOdCIcg/D4j9/fl0jOT2TOcl.nHdIOoVi', 'Asraf', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0113697845', 'Sedan', 'KDF 5472', '2023-07-23 13:54:36', '2023-07-23 13:54:36', 'acap@gmail.com', 'user'),
(96, 0x75706c6f6164732f696d61676573202831292e6a7067, 'aliah', '$2y$10$WmAKchDtEQxK8l2zL9WirueI2X0bJMJ1gNpa0D9Hh9qRrIItliIJG', 'Aliah', 'PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '0145378956', 'Sports car', 'KDV 5471', '2023-07-23 13:55:51', '2023-07-23 13:55:51', 'aliah@gmail.com', 'user'),
(97, 0x75706c6f6164732f646f776e6c6f6164202831292e6a7067, 'marhan', '$2y$10$NI59XXGGdiDE7cZrZ7RGPeNNoO/mQZ0lW73eljv8isjqzt8TFrCMO', 'Marwan', 'PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '018769352', 'Sedan', 'WDP 2543', '2023-07-23 13:56:57', '2023-07-23 13:56:57', 'marmar@gmail.com', 'user'),
(98, 0x75706c6f6164732f696d616765732e6a7067, 'hasan', '$2y$10$h91t9jeToRQ0DTlS2Xrtce.RW9SkCrHiKwIVgTo7P1IB08./L3DJO', 'Hassan', 'PT 888 TAMAN SRI SENTOSA KG PADANG SELISING, 18500 Machang, Kelantan', '0185634174', 'Crossover', 'DDC 2344', '2023-07-23 13:57:53', '2023-07-23 13:57:53', 'hasan@gmail.com', 'admin'),
(99, 0x75706c6f6164732f30373837373261613738323862633833653335306664336335366263386131622e706e67, 'hafiz', '$2y$10$HR4IqgNVjyY6fKvkvYdY.Oc7iGg.ecehQpvEj8YULYxpKYdOLmjnC', 'Hafiz', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '012356743', 'SUV', 'KTE 2317', '2023-07-23 13:59:39', '2023-07-23 13:59:39', 'hafiz@gmail.com', 'user'),
(100, 0x75706c6f6164732f33353830323938616236613266613634323261326438393731343135656365612e706e67, 'anis', '$2y$10$f7eiiC.GqsMFmQzUfWb2ne5frrsSL2RClCtoSJGJW4V06Csa1VlLe', 'Anis', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0127845362', 'Sports car', 'KTE 5246', '2023-07-23 14:00:31', '2023-07-23 14:00:31', 'anis@gmail.com', 'user'),
(101, 0x75706c6f6164732f63313736386432343135356362396438356365313634396133313666366566312e706e67, 'kai', '$2y$10$C2mvz1XYbeqo11XiqsIdleHEz0S2u/XkzwJrx1IYDXOJYoNXEcGNK', 'Khairul', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0185763152', 'Crossover', 'KCV 5472', '2023-07-23 14:01:37', '2023-07-23 14:01:37', 'kai@gmail.com', 'user'),
(102, 0x75706c6f6164732f34656230636366366662643234366537656163623237366135323061323032322e706e67, 'anissa', '$2y$10$8RT59RxMuXziH4Vf30u17u/1/UscDbHJ/uGyycIN8N4FgMgkh1Ggi', 'Anissa', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0175943162', 'SUV', 'KDV 5423', '2023-07-23 14:02:44', '2023-07-23 14:02:44', 'anisa@gmail.com', 'admin'),
(103, 0x75706c6f6164732f30653433366564303030613461326438343330653030626239343732333262662e706e67, 'mawaz', '$2y$10$Wov1bIgV0hiC3MuHPXQl0.CefNNusLnQmx8cvkm54HNbl2XVw8LfS', 'Mawaz', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '018763452', 'SUV', 'KTE 2342', '2023-07-23 14:03:54', '2023-07-23 14:03:54', 'mawaz@gmail.com', 'user'),
(104, 0x75706c6f6164732f37336137383339653030393261633031643938343538663033363735313361342e706e67, 'sapiq', '$2y$10$yRers4L2kClauv/HfiX.0OTpbCWjZPT8z/kZarMHdZnVBRwbnKnmC', 'Syafiq', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0125631765', 'Crossover', 'WDP 7212', '2023-07-23 14:04:53', '2023-07-23 14:04:53', 'capik@gmail.com', 'admin'),
(105, 0x75706c6f6164732f37393631313031623832366438393835383164356535633231393735333864302e706e67, 'jack', '$2y$10$cb1ri7W9dmYQU6qDyMV51OXcKioNz/yKXFsS4cOWNf52nbnizBWQ2', 'Jaidi', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0123569874', 'SUV', 'KTE 1238', '2023-07-23 14:05:53', '2023-07-23 14:05:53', 'jack@gmail.com', 'user'),
(106, 0x75706c6f6164732f32663934373836383338323563326231613863643134383638323161636532372e706e67, 'heyqal', '$2y$10$GWzTXqIAPxiQfDOqSdmtOeJ7MHGe/yXx35Q2Zb37DTCVqUP1OCa72', 'Haiqal', 'PT3582, Kampung Belukar, 18500 Machang, Kelantan', '0124563785', 'Sedan', 'KTE 4532', '2023-07-23 14:06:49', '2023-07-23 14:06:49', 'haiqal@gmail.com', 'user'),
(107, 0x75706c6f6164732f33306164326138663937623335663835313234616439363037623765636135642e706e67, 'imah', '$2y$10$DUOEqmuPjGcbM5WgVbuT3u1OncKeD/57DqnXcRNdlgj8SnPPweQCS', 'Fatimah', 'Lebuhraya Timur-Barat, Kampung Belukar, 18500 Machang, Kelantan', '0124869532', '4WD', 'KAB 5694', '2023-07-23 14:07:49', '2023-07-23 14:07:49', 'imah@gmail.com', 'admin'),
(108, 0x75706c6f6164732f3639383830382e706e67, 'asd', '$2y$10$BpOHaHw0ADUH0Cbx7sHxQeUj5Zp1LXyVKXLkGhOJ36tNkbGgE037y', 'asd', '356 TAMAN SRI NYIOR', '0125141206', 'SUV', 'KDV 4213', '2023-07-23 17:01:15', '2023-07-23 17:01:15', 'aswadaziz@gmail.com', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `Workshop_ID` int NOT NULL,
  `Workshop_Name` varchar(50) NOT NULL,
  `Location` text NOT NULL,
  `Contact_Info` varchar(11) NOT NULL,
  `Description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `workshop`
--

INSERT INTO `workshop` (`Workshop_ID`, `Workshop_Name`, `Location`, `Contact_Info`, `Description`) VALUES
(1, 'Machang Ekonomika Workshop Sdn. Bhd.', 'Kampung Batu Dua Puloh Lima, 18500 Machang, Kelantan', '0179496100', 'Towing Carrier service 24Hours✅ \r\nAccident Claims Insurance 😉✅\r\nWindscreen Claims Insurance 😉✅\r\nOwner ACCEPT kito jalan😋✅'),
(2, 'Eurozone Auto Works', 'Pekan Machang, 18500 Machang, Kelantan', '0179151997', 'Services, repair and parts.'),
(3, 'CSC Cherang Spray Cars', 'Kampung Bukit Tiu, 18500 Machang, Kelantan', '0169518455', 'Kereta kena langgar? Pintu kereta calar balar? Bumper kemek? Ingin beraya dengan bergaya tahun ini??\r\nCSC Cherang Spray Cars menyediakan perkhidmatan mengecat, touchup dan polish pelbagai jenis kenderaan dan motosikal.'),
(4, 'Pusat Service Abe Auto', 'D167, Jalan Ismail Petra, 17500 Tanah Merah, Kelantan', '0134300636', ' FREE CHECKING SETIAP KALI DATANG SERVIS : ENGINE OIL✔️\r\n GEAR OIL (ATF)✔️\r\nBRAKE FLUID✔️ \r\n P. STEERING FLUIDS✔️\r\n AIR FILTER✔️\r\n AIRCOND FILTER✔️\r\nBATTERY LIQUID✔️ '),
(5, 'A.M Auto Garage', 'Q66R+J4, Kampung Bukit Tiu, 18500 Machang, Kelantan', '0176804739', 'Enjin part PERODUA PROTON✅\r\nSuspension✅\r\nBasuh Enjin✅\r\nBreakdown✅'),
(6, 'Kurnia Jaya Auto Service', ' 0, Jalan Tok Bok 18500 Machang, Kelantan', '0199552426', 'Assalamualaikum..\r\nKenderaan adik kakok ado masaloh.??? Buleh halo ko kito deh..\r\nBengkel kito buleh service kenderaan (petrol &amp; diesel), overhaul engine, tukar alat ganti lain pom buleh..asal royak jah..inshaallah kito buleh tlg ejah..\r\nAdik kakok buleh halo dlu utk tahu masaloh kenderaan adik kakok...Gapo2 buleh halo ko no ni..'),
(7, 'Bengkel Kereta WKP Auto Machang', 'Lot 813, Jln Kampung Wek, Kampung Wek, 18500 Machang, Kelantan', '0129467895', 'Bateri, Perkhidmatan tukar minyak, Transmisi, Perkhidmatan pemandu, Servis & pembaikan brek'),
(8, 'Biou Motor', 'PT381, Kampung Kemunchup, Machang, Kelantan', '09-975 1516', 'Services, repair and parts.'),
(9, 'Bengkel Syuhada', 'Lot 300, Kampung Padang Selising, Machang, 18500, Kelantan', '0135878873', 'Services, repair and parts.'),
(10, 'Mat Workshop', 'Jln Petron Machang, Kampung Pangkal Changgong, 18500 Machang, Kelantan', '0139018925', 'Services, repair and parts.'),
(11, 'Car Accessories Shop ', 'Lot 1918, Jalan Pasir Putih, Kampung Chica Kubang Kerian, 16150 Kota Bharu, Kelantan', '0193223687', 'Kami menjual alat ganti \"performance parts\" dan juga aksesori kereta dari pelbagai jenama import.'),
(12, 'Nik Ju Auto Service', 'Lot 839 Kampung, Jalan Bunut Sarang Burung, 16210 Wakaf Bharu, Kelantan', '0145111513', 'Services, repair and parts.'),
(13, 'Jaya Center Accessories & Air Cond', 'Jalan Kuala Krai, Kampung Telaga Bina, Bunut Payung, 15150 Kota Bharu, Kelantan', '01692286000', 'Services, repair and parts.'),
(14, 'AZ Auto Accessories', 'Lot 3397, Kampung Kutang, 16250 Wakaf Bharu, Kelantan', '0199842624', 'We are selling bmw parts, halfcut, supplies and vehicle service.'),
(15, 'Pusat Servis Kenderaan imza auto', 'PT 3485, Berhampiran JPJ Laloh,Bechah Pulai, Kampung Laloh, 18000 Kuala Krai, Kelantan', '0127969507', 'Menyediakan perkhidmatan membaiki kenderaan seperti kereta, mpv, 4×4, van, lori 1 tan dan 3 tan.'),
(16, 'KU AMIN MAJU SPRAY WORKS', 'Jalan Pintasan, 17000 Pasir Mas, Kelantan', '0103777128', 'Kami menyediakan khidmat spray, polish, fiber dan ketuk bodi.'),
(17, 'Auto Boy Air-Cond & Accessories', 'Lot 4091, Jalan Ismail Petra, Tanah Merah, 17500 Tanah Merah, Kelantan', '0129487778', 'Car accessories, audio, aircon, tinted car.'),
(18, 'Azam Car Spray', 'Lot 26, Lorong Aman, Kg Gaung Pendek Batu 5, 130, 15100 Kota Bharu, Kelantan', '0179886261', 'Mengecat Kenderaan, Speed Boat, 4x4, Polish dan Wax. Cat bermutu.'),
(19, 'Pusat ekzos bukit merah(MAT EKZOS)', 'Lot 6701 Kg bukit merah,jalan p.mas-t.merah, 17500 Tanah Merah, Kelantan', '0199627881', 'Baik pulih ekzos, custom ekzos, tukar minyak hitam, pasang absober, aksesori.'),
(20, 'Ays Servis Aircond Kereta', 'Kg kubang badak, Kampung Pauh, 17000 Pasir Mas, Kelantan', '0109240509', 'Kedai servis aircond kenderaan terbaik Kelantan'),
(21, 'Bengkel Aircond Kereta Kelantan', 'Kg kubang badak, Kampung Pauh, 17000 Pasir Mas, Kelantan', '0139949157', 'Car repair and maintenance, Chauffeur service, Auto air conditioning service.'),
(22, 'HAZLEE EKZOS', 'KM 4, Jalan Pasir Mas, Desa Sri Putra, 16250 Wakaf Bharu, Kelantan', '0199783888', 'Baik pulih ekzos, custom ekzos.'),
(23, 'K&T Auto Servis', 'Jalan Jedok - Air Chanal - Legeh, 17700 Tanah Merah, Kelantan', '099582297', 'Kedai Alat Ganti Automotif'),
(24, 'Maju Auto Parts & Services', '46, 3, Pekan Pasir Mas, 17000 Pasir Mas, Kelantan', '0199585256', 'Services, repair and parts.'),
(25, 'R Man Mega Auto Service', 'Pt 703, Kampung Kasar, 17030 Pasir Mas, Kelantan', '0139386783', 'Menyediakan khidmat servis kenderaan dan membaik pulih kenderaan.'),
(26, 'Lim Brothers Auto Air cond & Accessories SDN BHD', 'No. 4 wisma ppk, Jalan Pasir Pekan, Pekan Pasir Mas, 17000 Pasir Mas, Kelantan', '01131222377', 'Aircond & Accessories Specialist'),
(27, 'Jaim Auto', 'Jalan Wakaf Che Yeh - Salor - Pasir Mas, 15100 Pasir Mas, Kelantan', '0193450654', 'Pusat Servis Kereta'),
(28, 'MFS Auto Workshop', 'Kampung Pauh Kumbang, 16210 Wakaf Bharu, Kelantan', '0195756506', 'Servicing, repair and wiring vehicle.'),
(29, 'Epu Auto Servis', 'Kampung Pauh, 17000 Pasir Mas, Kelantan', '0137804856', 'Services, repair and parts.'),
(30, 'R.K Auto Workshop', '2004, Jalan Taman Sari, 15200 Kota Bharu, Kelantan', '0139602371', 'Baik pulih Kenderaan.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Booking_ID`),
  ADD KEY `User_ID` (`User_ID`),
  ADD KEY `Workshop_ID` (`Workshop_ID`);

--
-- Indexes for table `password_reset`
--
ALTER TABLE `password_reset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_reset_token` (`reset_token`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`Payment_ID`),
  ADD KEY `Booking_ID` (`Booking_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`Workshop_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `Booking_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `password_reset`
--
ALTER TABLE `password_reset`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `Payment_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `Workshop_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`Workshop_ID`) REFERENCES `workshop` (`Workshop_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`Booking_ID`) REFERENCES `booking` (`Booking_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
