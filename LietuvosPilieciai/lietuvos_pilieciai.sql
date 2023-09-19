-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 07:33 PM
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
-- Database: `lietuvos_pilieciai`
--

--
-- Table structure for table `pilieciai`
--

CREATE TABLE `pilieciai` (
  `AsmensID` int(11) NOT NULL,
  `Vardas` varchar(255) DEFAULT NULL,
  `Pavardė` varchar(255) DEFAULT NULL,
  `GimimoData` date DEFAULT NULL,
  `TevoID` int(11) DEFAULT NULL,
  `MamosID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pilieciai`
--

INSERT INTO `pilieciai` (`AsmensID`, `Vardas`, `Pavardė`, `GimimoData`, `TevoID`, `MamosID`) VALUES
(1, 'Antanas', 'Antanaitis', '1900-01-01', NULL, NULL),
(2, 'Jonas', 'Antanaitis', '1920-01-01', 1, 6),
(3, 'Kazys', 'Antanaitis', '1940-01-01', 2, 7),
(4, 'Antanas', 'Antanaitis', '1942-01-17', 2, 7),
(5, 'Algis', 'Antanaitis', '2013-01-01', 2, NULL),
(6, 'Antanina', 'Antanaitienė', '0000-00-00', NULL, NULL),
(7, 'Janina', 'Antanaitienė', '0000-00-00', NULL, NULL),
(8, 'Nežinoma', 'Nežinomaitė', '2016-01-01', 2, 7);

-- --------------------------------------------------------

--
-- Table structure for table `santuokos`
--

CREATE TABLE `santuokos` (
  `SantuokosID` int(11) NOT NULL,
  `VyroID` int(11) DEFAULT NULL,
  `ZmonosID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `santuokos`
--

INSERT INTO `santuokos` (`SantuokosID`, `VyroID`, `ZmonosID`) VALUES
(1, 1, 6),
(2, 2, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pilieciai`
--
ALTER TABLE `pilieciai`
  ADD PRIMARY KEY (`AsmensID`);

--
-- Indexes for table `santuokos`
--
ALTER TABLE `santuokos`
  ADD PRIMARY KEY (`SantuokosID`),
  ADD KEY `VyroID` (`VyroID`),
  ADD KEY `ZmonosID` (`ZmonosID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pilieciai`
--
ALTER TABLE `pilieciai`
  MODIFY `AsmensID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `santuokos`
--
ALTER TABLE `santuokos`
  MODIFY `SantuokosID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `santuokos`
--
ALTER TABLE `santuokos`
  ADD CONSTRAINT `santuokos_ibfk_1` FOREIGN KEY (`VyroID`) REFERENCES `pilieciai` (`AsmensID`),
  ADD CONSTRAINT `santuokos_ibfk_2` FOREIGN KEY (`ZmonosID`) REFERENCES `pilieciai` (`AsmensID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
