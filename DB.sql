-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 02:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_job`
--

CREATE TABLE `add_job` (
  `Id` int(11) NOT NULL,
  `companyName` varchar(200) NOT NULL,
  `jobType` varchar(150) NOT NULL,
  `jobLocation` varchar(100) NOT NULL,
  `salary` int(11) NOT NULL,
  `skills` varchar(255) DEFAULT NULL,
  `qualification` varchar(100) NOT NULL,
  `companyImage` varchar(100) NOT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `add_job`
--

INSERT INTO `add_job` (`Id`, `companyName`, `jobType`, `jobLocation`, `salary`, `skills`, `qualification`, `companyImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Zoho Company', 'Software Developer', 'Chennai', 30000, ' C, C++, JAVA, PYTHON......', 'BE/B.Tech/ME/M.Tech', 'it1.jpg', '2023-01-14 05:21:58', NULL),
(2, 'Bosch', 'Quality Analyst', 'Bangalore', 30000, 'DataStructure, Programming Language, Algorithms', 'BE/B.Tech/ME/M.Tech.', 'it2.jpg', '2023-01-14 05:37:40', '2023-01-16 11:36:11'),
(3, 'NTT', 'MS Engineer', 'Bangalore', 50000, 'Good in Problem solving techniques, DataStructure, Programming Languages.', 'ME/M.Tech/MCA.', 'it3.jpg', '2023-01-11 05:41:07', '2023-01-16 11:36:11'),
(4, 'GSK', 'Junior Programmer', 'Pune', 25000, 'C, JAVA, MYSQL, PYTHON...', 'MCA/BCA/B.Sc.', 'it4.jpg', '2023-01-12 05:45:58', '2023-01-18 09:18:21'),
(5, 'Accenture', 'Quality Analyst', 'Dubai', 45000, 'DataStructure, Programming Language, Algorithms', 'BE/B.Tech/ME/M.Tech/MCA/BCA/B.Sc.', 'it5.jpg', '2023-01-11 05:49:13', NULL),
(6, 'GOOGLE', 'Data Analyst', 'Bangalore', 35000, 'Data Structure, Programming Language, Algorithms', 'BE/B.Tech/ME/M.Tech/MCA.', 'it6.jpg', '2023-01-12 05:51:26', NULL),
(7, 'Sun Life', 'System Engineer', 'Hyderabad/chennai', 40000, 'Data Structure, Programming Language, Algorithms', 'BE/B.Tech/ME/M.Tech/MCA/BCA/B.Sc.', 'it7.jpg', '2023-01-11 05:54:42', NULL),
(8, 'EY', 'Junior Programmer', 'Bangalore', 25000, 'Data Structure, Programming Language, Algorithms', 'BE/BCA/B.Sc.', 'it8.jpg', '2023-01-11 06:05:24', NULL),
(9, 'Cognizant', 'Software Developer', 'Pune/Bangalore', 30000, 'Data Structure, Programming Language, Algorithms', 'BE/B.Tech/ME/M.Tech/MCA/BCA/B.Sc.', 'it9.jpg', '2023-01-11 06:07:48', '2023-01-18 09:44:12'),
(10, 'HCL', 'Software Engineering', 'Bangalore', 30000, 'C, C++, Python, JAVA....', 'B.E/B.Tech', 'bj.jfif', '2023-01-17 11:50:42', NULL),
(12, 'HP', 'Data Analyst', 'Chennai', 20000, 'JAVA, PYTHON. MYSQL...', 'BCA', 'hp.jpg', '2023-01-18 09:43:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-01-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `applied_job`
--

CREATE TABLE `applied_job` (
  `AppliedId` int(11) NOT NULL,
  `Id` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `reason` mediumtext DEFAULT NULL,
  `reason1` text NOT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `withdraw` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `applied_job`
--

INSERT INTO `applied_job` (`AppliedId`, `Id`, `UserEmail`, `DOB`, `ToDate`, `reason`, `reason1`, `RegDate`, `status`, `withdraw`, `UpdationDate`) VALUES
(11, 9, 'hem@gmail.com', '10-11-2001', NULL, 'C,C++,PYTHON.', 'BCA', '2023-01-21 07:00:14', 1, NULL, '2023-01-21 07:05:42'),
(12, 1, 'hem@gmail.com', '2001-10-11', NULL, 'C,C++,PYTHON.', 'BCA', '2023-01-21 07:19:20', 0, NULL, NULL),
(14, 1, 'hem@gmail.com', '2023-01-10', NULL, 'C,C++,PYTHON.', 'BCA', '2023-01-21 12:52:08', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'hema', 'hem@gmail.com', '1234567890', 'quality', 'good', '2023-01-15 16:09:41', NULL),
(9, 'abc', 'abc@gmail.com', '0987654321', 'DEF', 'Nice', '2023-01-17 15:31:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL,
  `download` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `download`, `time`) VALUES
(1, 'Untitled2.pdf', '53742', 1, '2023-01-21 11:32:33'),
(2, 'Untitled2.pdf', '53742', 2, '2023-01-21 11:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`) VALUES
(1, 'hema', 'k', 'Female', 'hem@gmail.com', 0, '123456', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_job`
--
ALTER TABLE `add_job`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `applied_job`
--
ALTER TABLE `applied_job`
  ADD PRIMARY KEY (`AppliedId`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_job`
--
ALTER TABLE `add_job`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applied_job`
--
ALTER TABLE `applied_job`
  MODIFY `AppliedId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
