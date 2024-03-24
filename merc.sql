-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2024 at 04:09 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `merc`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `customername` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `bookingamount` int(11) NOT NULL,
  `bookingdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `employeeid` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `id` int(11) NOT NULL,
  `carid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`customername`, `phone`, `bookingamount`, `bookingdate`, `deliverydate`, `employeeid`, `status`, `id`, `carid`) VALUES
('Sameer', '8310087784', 85000, '2024-03-21', '2024-03-21', 3, 'delivered', 18, 16),
('Sameer', '8310087784', 2000000, '2024-03-21', '2024-03-21', 7, 'delivered', 19, 21),
('Sameer Nadaf', '9740346544', 2000000, '2024-03-21', '2024-03-22', 3, 'delivered', 20, 16),
('Wazid', '7022835766', 2000000, '2024-03-21', '0000-00-00', 3, 'pending', 21, 16),
('Siddarath', '9740990085', 2000000, '2024-03-21', '0000-00-00', 8, 'pending', 22, 18),
('Ray', '8884037890', 2000000, '2024-03-21', '0000-00-00', 6, 'pending', 23, 18),
('Sam', '8310087784', 20000, '2024-03-22', '2024-03-22', 2, 'delivered', 24, 18);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `modelname` varchar(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `carimage` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `color` varchar(30) NOT NULL,
  `stock` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  `chassisno` varchar(18) NOT NULL,
  `engineno` int(11) NOT NULL,
  `sideview` varchar(100) NOT NULL,
  `interior` varchar(100) NOT NULL,
  `rearview` varchar(100) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`modelname`, `type`, `carimage`, `price`, `color`, `stock`, `description`, `chassisno`, `engineno`, `sideview`, `interior`, `rearview`, `id`) VALUES
('GLS', 'SUV', 'carimage_1711025872452.png', 7500000, 'red', 8, 'Nothing special', '1000', 2000, 'sideview_1711025872453.jpg', 'interior_1711025872454.jpg', 'rearview_1711025872460.jpg', 16),
('GLC', 'SUV', 'carimage_1711026122156.png', 9000000, 'YELLOW', 10, 'Nothing special', '1001', 2001, 'sideview_1711026122156.jpg', 'interior_1711026122159.jpg', 'rearview_1711026122162.jpg', 17),
('GLE', 'SUV', 'carimage_1711043353635.png', 7500000, 'red', 10, 'Nothing special', '1002', 2002, 'sideview_1711043353636.jpg', 'interior_1711043353639.jpg', 'rearview_1711043353641.jpg', 18),
('GLA', 'SUV', 'carimage_1711043420681.png', 7000000, 'YELLOW', 8, 'Nothing special', '1003', 2003, 'sideview_1711043420681.jpg', 'interior_1711043420682.jpg', 'rearview_1711043420683.jpg', 19),
('S Class', 'Sedan', 'carimage_1711043495376.png', 15000000, 'Black', 10, 'Nothing special', '1004', 2004, 'sideview_1711043495376.jpg', 'interior_1711043495379.jpg', 'rearview_1711043495381.jpg', 20);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `name` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(50) NOT NULL,
  `licencenumber` varchar(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`name`, `phone`, `address`, `licencenumber`, `password`, `id`) VALUES
('Siddarath', '9740990085', 'Hanuman Nagar', 'ka22 2022', '123456789', 4),
('Sameer Nadaf', '8310087784', 'Belagavi', 'KA22202897', '123456789', 9),
('Akash', '8796324512', 'Belagavi', 'KA22202526', '123456', 12),
('Hritik', '9632215478', 'Belagavi', 'KA22202589', '123456', 13),
('Ray Kun', '884476001', 'London', 'ka22EP007', 'loda', 15),
('Sameer ', '8310087784', 'chagd', 'cascasc', '123456', 17),
('RayX911', '9972013771', 'fsd', '21e41rd', '12345678', 18),
('Ray', '8884476001', 'bgm', 'Ka22Ep007', 'dota', 19),
('Ruturaj', '8884476001', 'Shastri Nagar', 'KA22BA7777', 'RAYISBEST', 20);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `name` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`name`, `department`, `salary`, `id`) VALUES
('Aftab', 'Spares Manager', 80000, 5),
('Robert Wilson', 'Technician', 100000, 6),
('Christopher Lee', 'Lot manager', 70000, 7),
('Sarah', 'sales', 20000, 8),
('Jessica Taylor', 'Sales Manager', 75000, 9),
('Mary Johnson', 'Finance Manager', 75000, 10),
('Samantha', 'Finance', 30000, 11),
('Aarav Gupta', 'Finance', 30000, 12),
('Vikram Singh', 'Customer service', 50000, 13);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `registrationnumber` varchar(16) NOT NULL,
  `customername` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `servicetype` varchar(50) NOT NULL,
  `arrivaldate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `servicedescription` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  `status` varchar(30) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`registrationnumber`, `customername`, `phone`, `servicetype`, `arrivaldate`, `deliverydate`, `servicedescription`, `cost`, `status`, `id`) VALUES
('KA 22 HD 7816', 'Wazid', '9113545025', 'General', '2024-02-28', '2024-02-29', 'cghsadjasdhasvckahscvkjacbkjac', 20000, 'true', 1),
('KA 21 HP 3210', 'Siddarath', '9740990085', 'general', '2024-02-29', '2024-03-04', 'Nothing', 5000, 'true', 2),
('KA 57 CA 3924', 'John Doe', '1234567890', 'Regular', '2024-02-25', '2024-03-21', 'nothing', 5000, 'true', 3),
('KA 22 HC 8978', 'Naveen', '9632587416', 'Periodic Sevice', '2024-03-01', '2024-03-22', 'uydgewyg', 500, 'true', 4),
('KA 21 GG 6969', 'URBRO', '789632154', 'Room Service', '2024-03-01', '2024-03-02', 'xD', 150, 'true', 5),
('KA 65 PL 3216', 'Karl Benz', '8978632541', 'Periodic Sevice', '2024-03-01', '2024-03-02', 'Belts and hoses checked', 10000, 'false', 6),
('MH 09 HK 5698', 'Apex', '8978645562', 'Major Service', '2024-02-29', '2024-03-02', 'Wheel bearings and shock absorbers changed ', 50000, 'true', 7),
('KA 22 ZR 8965', 'Nitin', '8965327845', 'Periodic Sevice', '2024-03-01', '2024-03-01', 'Radiator and coolant hose checked', 10000, 'true', 8),
('KA 25 JK 6325', 'John', '3216549632', 'Body Shop', '2024-02-01', '2024-03-01', 'Bumpers, damaged body panels Replaced', 100000, 'false', 9),
('KA 01 HG 8978', 'Sumit', '3021560696', 'Periodic Sevice', '2024-02-28', '2024-03-04', 'Lasun', 1222, 'true', 10),
('KA 22 MS 1234', 'RayX911', '8888888', 'General', '2024-03-04', '0000-00-00', '', 0, 'false', 11),
('Ka 22 EP 0777', 'Ray', '8884476001', 'General', '2024-03-04', '2024-03-04', 'Genral', 65000, 'true', 12),
('KA 22 SS 2541', 'asd', '9972013771', 'General', '2024-03-04', '0000-00-00', '', 0, 'false', 13),
('KA 22 MS 4512', 'aaa', '8310087784', 'General', '2024-03-21', '0000-00-00', '', 0, 'false', 15),
('KA 22 AA 2002', 'Sameer Nadaf', '8310087784', 'General', '2024-03-21', '0000-00-00', '', 0, 'false', 16);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
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
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
