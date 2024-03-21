-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 21, 2024 at 12:52 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

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

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `customername` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `bookingamount` int NOT NULL,
  `bookingdate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `employeeid` int NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `carid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `modelname` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `carimage` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `price` int NOT NULL,
  `color` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `stock` int NOT NULL,
  `description` varchar(300) COLLATE utf8mb4_general_ci NOT NULL,
  `chassisno` varchar(18) COLLATE utf8mb4_general_ci NOT NULL,
  `engineno` int NOT NULL,
  `sideview` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `interior` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `rearview` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`modelname`, `type`, `carimage`, `price`, `color`, `stock`, `description`, `chassisno`, `engineno`, `sideview`, `interior`, `rearview`, `id`) VALUES
('MEXRS', 'SUV', 'carimage_1711025108692.jpeg', 8999990, 'Blue', 12, 'Ultra Fasrt', '231555', 0, 'sideview_1711025108705.jpeg', 'interior_1711025108708.png', 'rearview_1711025108716.jpeg', 15);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `name` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `licencenumber` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `salary` int NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `registrationnumber` varchar(16) COLLATE utf8mb4_general_ci NOT NULL,
  `customername` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `servicetype` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `arrivaldate` date NOT NULL,
  `deliverydate` date NOT NULL,
  `servicedescription` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cost` int NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`registrationnumber`, `customername`, `phone`, `servicetype`, `arrivaldate`, `deliverydate`, `servicedescription`, `cost`, `status`, `id`) VALUES
('KA 22 HD 7816', 'Wazid', '9113545025', 'General', '2024-02-28', '2024-02-29', 'cghsadjasdhasvckahscvkjacbkjac', 20000, 'true', 1),
('KA 21 HP 3210', 'Siddarath', '9740990085', 'general', '2024-02-29', '2024-03-04', 'Nothing', 5000, 'true', 2),
('KA 57 C 3924', 'John Doe', '1234567890', 'Regular', '2024-02-25', '2024-03-05', 'Routine', 150, 'false', 3),
('KA 22 HC 8978', 'Naveen', '9632587416', 'Periodic Sevice', '2024-03-01', '2024-03-02', 'Brake pads replaced', 15000, 'false', 4),
('KA 21 GG 6969', 'URBRO', '789632154', 'Room Service', '2024-03-01', '2024-03-02', 'xD', 150, 'true', 5),
('KA 65 P 3216', 'Karl Benz', '8978632541', 'Periodic Sevice', '2024-03-01', '2024-03-02', 'Belts and hoses checked', 10000, 'false', 6),
('MH 09 HK 5698', 'Apex', '8978645562', 'Major Service', '2024-02-29', '2024-03-02', 'Wheel bearings and shock absorbers changed ', 50000, 'true', 7),
('KA 22 Z 8965', 'Nitin', '8965327845', 'Periodic Sevice', '2024-03-01', '2024-03-01', 'Radiator and coolant hose checked', 10000, 'true', 8),
('KA 25 JK 6325', 'John', '3216549632', 'Body Shop', '2024-02-01', '2024-03-01', 'Bumpers, damaged body panels Replaced', 100000, 'false', 9),
('KA 01 HG 8978', 'Sumit', '3021560696', 'Periodic Sevice', '2024-02-28', '2024-03-04', 'Lasun', 1222, 'true', 10),
('1234', 'RayX911', '8888888', 'General', '2024-03-04', '0000-00-00', '', 0, 'false', 11),
('Ka 22 EP 077', 'Ray', '8884476001', 'General', '2024-03-04', '2024-03-04', 'Genral', 65000, 'true', 12),
('1234', 'asd', '9972013771', 'General', '2024-03-04', '0000-00-00', '', 0, 'false', 13),
('Ray', 'RayX911', '9972013771', 'Additional', '2024-03-04', '0000-00-00', '', 0, 'false', 14);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
