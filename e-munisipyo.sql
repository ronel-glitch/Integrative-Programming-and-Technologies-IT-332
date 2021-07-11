-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2021 at 08:46 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-munisipyo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `office` varchar(50) NOT NULL,
  `adminID` int(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `approved_request_birth`
--

CREATE TABLE `approved_request_birth` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `approved_request_birth`
--

INSERT INTO `approved_request_birth` (`ID`, `reqID`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `approved_request_cedula`
--

CREATE TABLE `approved_request_cedula` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `approved_request_death`
--

CREATE TABLE `approved_request_death` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `approved_request_marriage`
--

CREATE TABLE `approved_request_marriage` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `birthcert`
--

CREATE TABLE `birthcert` (
  `reqID` int(255) NOT NULL,
  `certName` varchar(50) NOT NULL,
  `reqType` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Middlename` varchar(50) NOT NULL,
  `Birthdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `FFirstname` varchar(50) NOT NULL,
  `FLastname` varchar(50) NOT NULL,
  `FMiddlename` varchar(50) NOT NULL,
  `MFirstname` varchar(50) NOT NULL,
  `MLastname` varchar(50) NOT NULL,
  `MMiddlename` varchar(50) NOT NULL,
  `Barangay` varchar(50) NOT NULL,
  `Purpose` varchar(50) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `birthcert`
--

INSERT INTO `birthcert` (`reqID`, `certName`, `reqType`, `Gender`, `Firstname`, `Lastname`, `Middlename`, `Birthdate`, `FFirstname`, `FLastname`, `FMiddlename`, `MFirstname`, `MLastname`, `MMiddlename`, `Barangay`, `Purpose`, `Status`) VALUES
(1, 'BirthCert', 'Self', 'Male', 'Ronel', 'Ilao', 'Sevilla', '2021-07-11 06:22:32', 'Rayven', 'Ilao', 'Sevilla', 'Eulalia', 'Sevilla', 'Marasigan', 'Calayo', 'Local Employee', 'Sent'),
(2, 'BirthCert', 'Son', 'Male', 'Reniel', 'Ilao', 'Sevilla', '2021-07-11 06:24:04', 'Rayven', 'Ilao', 'Sevilla', 'Eulalia', 'Sevilla', 'Marasigan', 'Calayo', 'Local Employee', 'Sent');

-- --------------------------------------------------------

--
-- Table structure for table `cedula`
--

CREATE TABLE `cedula` (
  `reqID` int(11) NOT NULL,
  `certName` varchar(50) NOT NULL,
  `reqType` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Middlename` varchar(50) NOT NULL,
  `Barangay` varchar(50) NOT NULL,
  `PlaceOfBirth` varchar(50) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `Occupation` varchar(50) NOT NULL,
  `MontlyIncome` int(11) NOT NULL,
  `CivilStatus` varchar(10) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deathcert`
--

CREATE TABLE `deathcert` (
  `reqID` int(11) NOT NULL,
  `certName` varchar(50) NOT NULL,
  `reqType` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Birthdate` varchar(50) NOT NULL,
  `DFirstname` varchar(50) NOT NULL,
  `DLastname` varchar(50) NOT NULL,
  `DMiddlename` varchar(50) NOT NULL,
  `DateOfDeath` date NOT NULL,
  `Country` varchar(50) NOT NULL,
  `Province` varchar(50) NOT NULL,
  `Municipality` varchar(50) NOT NULL,
  `Purpose` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `marriagecert`
--

CREATE TABLE `marriagecert` (
  `reqID` int(11) NOT NULL,
  `certName` varchar(50) NOT NULL,
  `reqType` varchar(50) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Middlename` varchar(50) NOT NULL,
  `Birthdate` varchar(50) NOT NULL,
  `Firstname1` varchar(50) NOT NULL,
  `Lastname1` varchar(50) NOT NULL,
  `Middlename1` varchar(50) NOT NULL,
  `Firstname2` varchar(50) NOT NULL,
  `Lastname2` int(50) NOT NULL,
  `Middlename2` varchar(50) NOT NULL,
  `DateOfMarriage` date NOT NULL,
  `Barangay` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `reqID` int(11) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_request_birth`
--

CREATE TABLE `rejected_request_birth` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_request_cedula`
--

CREATE TABLE `rejected_request_cedula` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_request_death`
--

CREATE TABLE `rejected_request_death` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rejected_request_marriage`
--

CREATE TABLE `rejected_request_marriage` (
  `ID` int(11) NOT NULL,
  `reqID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `approved_request_birth`
--
ALTER TABLE `approved_request_birth`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `approved_request_cedula`
--
ALTER TABLE `approved_request_cedula`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `approved_request_death`
--
ALTER TABLE `approved_request_death`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `approved_request_marriage`
--
ALTER TABLE `approved_request_marriage`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `birthcert`
--
ALTER TABLE `birthcert`
  ADD PRIMARY KEY (`reqID`);

--
-- Indexes for table `cedula`
--
ALTER TABLE `cedula`
  ADD PRIMARY KEY (`reqID`);

--
-- Indexes for table `deathcert`
--
ALTER TABLE `deathcert`
  ADD PRIMARY KEY (`reqID`);

--
-- Indexes for table `marriagecert`
--
ALTER TABLE `marriagecert`
  ADD PRIMARY KEY (`reqID`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `rejected_request_birth`
--
ALTER TABLE `rejected_request_birth`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `rejected_request_cedula`
--
ALTER TABLE `rejected_request_cedula`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rejected_request_death`
--
ALTER TABLE `rejected_request_death`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- Indexes for table `rejected_request_marriage`
--
ALTER TABLE `rejected_request_marriage`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reqID` (`reqID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `approved_request_birth`
--
ALTER TABLE `approved_request_birth`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `approved_request_cedula`
--
ALTER TABLE `approved_request_cedula`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approved_request_death`
--
ALTER TABLE `approved_request_death`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `approved_request_marriage`
--
ALTER TABLE `approved_request_marriage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `birthcert`
--
ALTER TABLE `birthcert`
  MODIFY `reqID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cedula`
--
ALTER TABLE `cedula`
  MODIFY `reqID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deathcert`
--
ALTER TABLE `deathcert`
  MODIFY `reqID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marriagecert`
--
ALTER TABLE `marriagecert`
  MODIFY `reqID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejected_request_birth`
--
ALTER TABLE `rejected_request_birth`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejected_request_cedula`
--
ALTER TABLE `rejected_request_cedula`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejected_request_death`
--
ALTER TABLE `rejected_request_death`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rejected_request_marriage`
--
ALTER TABLE `rejected_request_marriage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `approved_request_birth`
--
ALTER TABLE `approved_request_birth`
  ADD CONSTRAINT `approved_request_birth_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `birthcert` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `approved_request_cedula`
--
ALTER TABLE `approved_request_cedula`
  ADD CONSTRAINT `approved_request_cedula_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `cedula` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `approved_request_death`
--
ALTER TABLE `approved_request_death`
  ADD CONSTRAINT `approved_request_death_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `deathcert` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `approved_request_marriage`
--
ALTER TABLE `approved_request_marriage`
  ADD CONSTRAINT `approved_request_marriage_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `marriagecert` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rejected_request_birth`
--
ALTER TABLE `rejected_request_birth`
  ADD CONSTRAINT `rejected_request_birth_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `birthcert` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rejected_request_death`
--
ALTER TABLE `rejected_request_death`
  ADD CONSTRAINT `rejected_request_death_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `deathcert` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rejected_request_marriage`
--
ALTER TABLE `rejected_request_marriage`
  ADD CONSTRAINT `rejected_request_marriage_ibfk_1` FOREIGN KEY (`reqID`) REFERENCES `marriagecert` (`reqID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
