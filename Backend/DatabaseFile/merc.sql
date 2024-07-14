-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 09:18 AM
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
('Sameer', '8310087784', 2000000, '2024-07-14', '2024-07-14', 8, 'delivered', 26, 22),
('Siddarath', '9740346544', 4000000, '2024-07-14', '2024-07-14', 7, 'delivered', 27, 23),
('Wazid', '9113545025', 6000000, '2024-07-14', '2024-07-14', 2, 'delivered', 28, 29),
('Samarth', '9663362387', 2500000, '2024-07-14', '2024-07-14', 10, 'delivered', 29, 26),
('Sabeer', '9845916211', 3000000, '2024-07-14', '2024-07-14', 2, 'delivered', 30, 27),
('Sameer', '8310087784', 10000000, '2024-07-14', '2024-07-14', 8, 'delivered', 31, 25),
('Siddarath', '9740346544', 5000000, '2024-07-14', '2024-07-14', 5, 'delivered', 32, 28),
('Wazid', '9113545025', 6000000, '2024-07-14', '0000-00-00', 8, 'pending', 33, 23),
('Ray', '8884476001', 6000000, '2024-07-14', '0000-00-00', 9, 'pending', 34, 27);

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
('C Class', 'Sedan', 'carimage_1720938942816.png', 6185000, 'Black', 5, 'Luxury', '1000', 2000, 'sideview_1720938942817.jpg', 'interior_1720938942819.jpg', 'rearview_1720938942821.png', 22),
('E Class', 'Sedan', 'carimage_1720939024746.png', 7605000, 'Black', 5, 'Luxury', '1001', 2001, 'sideview_1720939024747.jpg', 'interior_1720939024748.jpg', 'rearview_1720939024750.jpg', 23),
('S Class', 'Sedan', 'carimage_1720939203542.png', 17695000, 'Black', 2, 'Luxury', '1002', 2002, 'sideview_1720939203543.jpg', 'interior_1720939203546.jpg', 'rearview_1720939203549.jpg', 24),
('MAYBACH', 'Sedan', 'carimage_1720939482944.png', 27195000, 'Black', 1, 'Luxury', '1003', 2003, 'sideview_1720939482944.jpg', 'interior_1720939482945.jpg', 'rearview_1720939482946.jpg', 25),
('GLA', 'SUV', 'carimage_1720939586754.png', 5175000, 'White', 8, 'Luxury', '1004', 2004, 'sideview_1720939586754.jpg', 'interior_1720939586755.jpg', 'rearview_1720939586756.jpg', 26),
('GLC', 'SUV', 'carimage_1720939665767.png', 7590000, 'White', 5, 'Luxury', '1005', 2005, 'sideview_1720939665767.jpg', 'interior_1720939665768.jpg', 'rearview_1720939665769.jpg', 27),
('GLE', 'SUV', 'carimage_1720939735161.png', 9665000, 'Grey', 4, 'Luxury', '1006', 2006, 'sideview_1720939735161.jpg', 'interior_1720939735163.jpg', 'rearview_1720939735165.jpg', 28),
('GLS', 'SUV', 'carimage_1720939800295.png', 13225000, 'White', 2, 'Luxury', '1007', 2007, 'sideview_1720939800295.jpg', 'interior_1720939800295.jpg', 'rearview_1720939800296.jpg', 29);

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
('Sameer', '8310087784', 'Ramathirth Nagar', '1000', '123456', 22),
('Siddarath', '9740990085', 'Hanuman Nagar', '1001', '123456', 23),
('Wazid', '9113545025', 'Hanuman Nagar', '1002', '123456', 24),
('Ray', '8884476001', 'Shastri Nagar', '1003', '123456', 25),
('Samarth', '9663362387', 'Basavan Kudachi', '1004', '123456', 26),
('Sabeer', '9845916211', 'Shivabasav Nagar', '1005', '123456', 27);

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
('KA22SS1000', 'Sameer', '8310087784', 'General', '2024-07-14', '2024-07-14', 'Regular service', 10000, 'true', 18),
('KA22AS2003', 'Sameer', '8310087784', 'General', '2024-07-14', '0000-00-00', '', 0, 'false', 19),
('KA22FZ2001', 'Siddarath', '9740346544', 'General', '2024-07-14', '0000-00-00', '', 0, 'false', 20),
('KA22RS3002', 'Siddarath', '9740346544', 'General', '2024-07-14', '2024-07-14', 'Engine oil change ', 5000, 'true', 21),
('KA22WS1111', 'Wazid', '9113545025', 'General', '2024-07-14', '0000-00-00', '', 0, 'false', 22),
('KA22SW2211', 'Wazid', '9113545025', 'General', '2024-07-14', '0000-00-00', '', 0, 'false', 23),
('KA22SS1010', 'Wazid', '9113545025', 'General', '2024-07-14', '0000-00-00', '', 0, 'false', 24),
('KA22SS1000', 'Sameer', '8310087784', 'Additional', '2024-07-14', '0000-00-00', '', 0, 'false', 25),
('KA22AS2003', 'Siddarath', '9740346544', 'Additional', '2024-07-14', '0000-00-00', '', 0, 'false', 26);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
