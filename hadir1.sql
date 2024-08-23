-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2023 at 04:30 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hadir1`
--

-- --------------------------------------------------------

--
-- Table structure for table `hadir`
--

CREATE TABLE `hadir` (
  `idHadir` int(15) NOT NULL,
  `nomKp` varchar(12) NOT NULL,
  `masa` time NOT NULL,
  `tarikh` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hadir`
--

INSERT INTO `hadir` (`idHadir`, `nomKp`, `masa`, `tarikh`) VALUES
(23, '222', '13:27:31', '2023-06-14'),
(25, '222', '21:00:17', '2023-06-18'),
(26, '222', '22:32:36', '2023-06-20'),
(27, '222', '09:37:32', '2023-06-28'),
(28, '776655043322', '18:05:43', '2023-06-28'),
(31, '222', '14:53:16', '2023-07-01');

-- --------------------------------------------------------

--
-- Table structure for table `hp`
--

CREATE TABLE `hp` (
  `nomHp` varchar(14) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hp`
--

INSERT INTO `hp` (`nomHp`, `nama`) VALUES
('0139887878', 'Afeerah'),
('01399999999', 'PENTABDIR SISTEM'),
('01992454', 'AFEEF SUHAIMI'),
('0199262674', 'NUREEN'),
('0199999999999', 'NUR BOSS KPN BIN AHMAD ZAHID');

-- --------------------------------------------------------

--
-- Table structure for table `peserta`
--

CREATE TABLE `peserta` (
  `nomKp` varchar(12) NOT NULL,
  `jantina` varchar(11) NOT NULL,
  `password` varchar(15) NOT NULL,
  `aras` varchar(10) DEFAULT NULL,
  `nomHp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peserta`
--

INSERT INTO `peserta` (`nomKp`, `jantina`, `password`, `aras`, `nomHp`) VALUES
('11', 'LELAKI', '12345', 'ADMIN', '01399999999'),
('222', 'LELAKI', '12345', 'PENGGUNA', '0199999999999'),
('552211043322', 'LELAKI', '043322', 'PENGGUNA', '01992454'),
('770828036435', 'LELAKI', '123456', 'PENGGUNA', '0139887878'),
('776655043322', 'LELAKI', '043322', 'PENGGUNA', '0199262674');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hadir`
--
ALTER TABLE `hadir`
  ADD PRIMARY KEY (`idHadir`),
  ADD KEY `nomKp` (`nomKp`);

--
-- Indexes for table `hp`
--
ALTER TABLE `hp`
  ADD PRIMARY KEY (`nomHp`);

--
-- Indexes for table `peserta`
--
ALTER TABLE `peserta`
  ADD PRIMARY KEY (`nomKp`),
  ADD KEY `nomHp` (`nomHp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hadir`
--
ALTER TABLE `hadir`
  MODIFY `idHadir` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hadir`
--
ALTER TABLE `hadir`
  ADD CONSTRAINT `hadir_ibfk_1` FOREIGN KEY (`nomKp`) REFERENCES `peserta` (`nomKp`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hp`
--
ALTER TABLE `hp`
  ADD CONSTRAINT `hp_ibfk_1` FOREIGN KEY (`nomHp`) REFERENCES `peserta` (`nomHp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
