-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 02:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `is_admin` int(255) NOT NULL,
  `payment_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `company_name`, `is_admin`, `payment_id`) VALUES
(12, 'ahmed', 'ahmed@example.com', '$2a$12$HDdNpL6JqVqXkjqLRqBT0OVBKETTlFdrQvULKuCpiwumYFPANYGGi', 'company6', 1, 'cus_Q1Wf33earZCx1i'),
(14, 'maya', 'maya@email.com', '$2a$12$YoKpMrA5AkLfcwL1NHRpjOIzPEdYjt2/Wt/vEZYDlKb0nF3PtnFNO', 'company8', 1, 'cus_Q1hBS7onPzyQpb'),
(15, 'zyad', 'zyad@gmail.com', '$2a$12$xxY9EnRPrXJRdcVBG/kkwOymajCxDPzTuRRplNjm3oT2/ZcGbuFf.', 'REease', 1, 'cus_Q7QejoiSQTYhkC'),
(16, 'ali mohamed', 'ali@gmail.com', '$2a$12$nBLapbd25FnC9dooF6FlWerpqPdcNxc2eEGeUjmUt/YH7DWfoKhKO', 'pheniox', 1, NULL),
(17, 'maya', 'maya@email.com', '$2a$12$jOpAqFH0vNtrpImm9j62U.bIewx7t/Mp3QA42iRtZJ49ckMiIDmmq', 'company8', 1, NULL),
(18, 'mohsen', 'm@gmail.com', '$2a$12$meZYQTwqi0kk7QrAmSUhyusfVCzfcBkbmdfg22D2uQQGMXO4KvzXO', 'google', 1, NULL),
(19, 'mahmoud mohamed', 'mahmoud@gmail.com', '$2a$12$RW1O2eVJmal/LefGgZ5aOOBFPkALIucKFeWBWt1xDIUy27VWYXOD.', 'company5555', 1, NULL),
(20, 'omar ahmed', 'omar@gmail.com', '$2a$12$bCBQvyHW0qANUtuFwZQJce.jX9WVg3DDBXX4PhGO3GFimbxeRVbFS', 'company99999999', 1, NULL),
(22, 'ayman', 'ayman@gmail.com', '$2a$12$RtDh5mRAuNqCKqkQmL67tukQkTBaegKbRj2a.tr1xsvANNkLNhavy', 'company55555', 1, NULL),
(23, 'mohamed ashraf', 'mohamedashraf@gmail.com', '$2a$12$BVI4d1V7ovUKKxFAcMw.q.yCX1iy0rrI.oc3EsfFKG4ctr.wEbbwe', 'Medicare.com', 1, NULL),
(24, 'mahmoud', 'm2@gmail.com', '$2a$12$Q63uW3kI6UxOdlV4FRFM.u.VAFh7WhF2JZiH40jz9pRjhGz.y3ERe', 'it is company', 1, 'cus_QEyUTnhR7HxnYm'),
(25, 'shahd', 'shahd@gmail.com', '$2a$12$oQ.hTu6ETo5q6FBnY3oTW.tXEZ/HPO9UEE8Qo87gJ9uB/Jpz0xKkq', 'puppyvet', 1, 'cus_QFDPMtt9G87jzS'),
(32, 'kaya1', 'kaya1@gmail.com', '$2a$12$yE7BQeZMqAszhWqeQfXnAOphAwSZTlZecVmsCXLDWqJAv7dqWkrjO', 'company555', 1, 'cus_QFguX7Au5YELtd'),
(33, 'shawky', 'shawky@gmail.com', '$2a$12$bEWTIme6CSbU2NdJf8GMgOXHSmoih5JQKD.OEAhFoFwq4FNBSkeO.', 'xxx', 1, 'cus_QHBgn9Y5wkV4z3'),
(34, 'mamad', 'mamad@gmail.com', '$2a$12$gsY.2LJVxyLwbfFhlWj/buiMNztGhKGvT55tW.gNhB3XhLv2Ny/Gq', 'safasfafa', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` text NOT NULL,
  `clock_in` text NOT NULL,
  `in_status` varchar(255) NOT NULL,
  `clock_out` text DEFAULT NULL,
  `out_status` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `email`, `date`, `clock_in`, `in_status`, `clock_out`, `out_status`, `company_name`) VALUES
(1, 'mahdy@gmail.com', '4-6-2024', '9:0', 'on time', '17:0', 'on time', 'REease'),
(2, 'mahdy@gmail.com', '11-6-2024', '9:0', 'on time', '17:0', 'on time', 'REease'),
(3, 'khaled@gmail.com', '11-17-2024', '9:0', 'on time', '20:0', 'extra', 'REease'),
(6, 'khaled@gmail.com', '17-6-2024', '8:0', 'on time', '17:0', 'extra', 'REease'),
(7, 'khaled@gmail.com', '11-6-2024', '10:0', 'absent', '20:0', 'extra', 'REease'),
(8, 'khaled@gmail.com', '19-6-2024', '8:0', 'on time', '17:0', 'on time', 'REease');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `start_date` text DEFAULT NULL,
  `end_date` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `name`, `leave_type`, `start_date`, `end_date`, `description`, `status`, `company_name`) VALUES
(5, 'mahdy', 'medical leave', '3-6-2024', '5-6-2024', 'iam very sick and i cant come to work', 'rejected', 'REease'),
(6, 'mahdy', 'other', '3-6-2024', '5-6-2024', 'iam very sick and i cant come to work', 'approved', 'REease'),
(7, 'mahdy', 'othersssssssss', '3-6-2024', '5-6-2024', 'iam very sick and i cant come to work', 'rejected', 'REease'),
(10, 'khaled', 'medical leave', '12-6-2024', '15-6-2024', 'iam very sick and i cant come to work', 'rejected', 'REease'),
(12, 'khaled', 'Distinctio Culpa re', '2017-07-12', '1992-09-21', 'Quo voluptatum odit ', 'pending', 'REease'),
(13, 'khaled', 'Autem cillum volupta', '2012-11-05', '2002-02-18', 'Quia animi ullamco ', 'pending', 'REease');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `basic` int(255) NOT NULL,
  `absent_attendance` int(255) NOT NULL,
  `extra_attendance` int(255) NOT NULL,
  `done_RE` int(255) NOT NULL,
  `allowance` int(255) DEFAULT NULL,
  `deduction` int(255) DEFAULT NULL,
  `total` int(255) NOT NULL,
  `month` int(255) NOT NULL,
  `year` int(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payroll`
--

INSERT INTO `payroll` (`id`, `name`, `position`, `company_name`, `basic`, `absent_attendance`, `extra_attendance`, `done_RE`, `allowance`, `deduction`, `total`, `month`, `year`, `status`) VALUES
(2, 'mohamed', 'frontend developer', 'REease', 15000, 750, 281, 1000, 300, 400, 15431, 7, 2024, 'not paid'),
(3, 'khaled', 'frontend developer', 'REease', 15000, 750, 281, 1000, 300, 400, 15431, 6, 2024, 'not paid'),
(4, 'khaled', 'frontend developer', 'REease', 15000, 750, 281, 1000, 300, 550, 15281, 6, 2024, 'paid'),
(5, 'khaled', 'frontend developer', 'REease', 15000, 750, 188, 1000, 300, 550, 15188, 6, 2024, 'not paid');

-- --------------------------------------------------------

--
-- Table structure for table `re`
--

CREATE TABLE `re` (
  `id` int(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `size` int(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `done_date` text DEFAULT NULL,
  `price` int(255) NOT NULL,
  `assigned_to` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `document` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `re`
--

INSERT INTO `re` (`id`, `owner`, `type`, `address`, `size`, `status`, `done_date`, `price`, `assigned_to`, `company_name`, `document`) VALUES
(2, 'khaled', 'appartment', 'giza', 200, 'for sale', '16-6-2024', 150000, 'khaled', 'REease', NULL),
(7, 'khaled', 'appartment', 'giza', 200, 'sold out', '16-6-2024', 150000, 'khaled', 'REease', NULL),
(8, 'khaled', 'appartment', 'giza', 200, 'rented', '16-6-2024', 150000, 'khaled', 'REease', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `company_name` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `salary` int(200) NOT NULL,
  `is_admin` int(200) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `company_name`, `position`, `salary`, `is_admin`) VALUES
(71, 'shady1', 'shady1@gmail.com', '$2a$12$0VBRs1SmL2G2tcllljBym.FsPMvnlBWo/Ejr2xEBLHdvfivahu10S', 'REease', 'frontend developer', 15000, 0),
(72, 'Luke Clayton', 'nytadyga@mailinator.com', '$2a$12$hplV0DnjgN3.aVcnsAoG/.YygXeRxIE8MiKaZE5xMGTSDXTkIO9.O', 'company555', 'Perspiciatis aliqui', 1, 0),
(73, 'khaled', 'khaled@gmail.com', '$2a$12$89Y7lX6ZsxS5xaPIGg/FWOqnNZHJH6q54/8mzNVRMXxJWYa/u6aPe', 'REease', 'frontend developer', 15000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `re`
--
ALTER TABLE `re`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `re`
--
ALTER TABLE `re`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
