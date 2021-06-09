-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2021 at 12:13 PM
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
-- Database: `pabw-gilang`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(9) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `kelamin` enum('L','P') NOT NULL,
  `jurusan` enum('TI','SI','MI','TK','KA') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `kelamin`, `jurusan`) VALUES
('119501101', 'Gilang Pramudya S', 'L', 'TI'),
('119501102', 'Indra Febriansyah', 'L', 'TI'),
('119501104', 'Vika', 'P', 'TK'),
('119501105', 'Andi', 'L', 'MI'),
('119501106', 'Fadlan', 'L', 'TK'),
('119501107', 'Siti Zulaika', 'P', 'MI'),
('119501108', 'Nyoman', 'P', 'TI'),
('119501109', 'Gea', 'P', 'SI'),
('119501110', 'Tiza', 'P', 'KA'),
('119501111', 'Nova', 'P', 'TK'),
('119501112', 'Yuni', 'P', 'TI'),
('119501113', 'Novan', 'L', 'MI'),
('119501114', 'Adib', 'L', 'TK'),
('119501115', 'Anggi', 'L', 'KA'),
('119501116', 'Nadhira', 'P', 'KA'),
('119501117', 'Suparno', 'L', 'KA'),
('119501118', 'Asrianda', 'L', 'TK'),
('119501119', 'Tono', 'L', 'MI'),
('119501120', 'Suratno', 'L', 'SI'),
('123110008', 'Istiningsih', 'P', 'MI'),
('119501122', 'Sofyan', 'L', 'KA'),
('119501121', 'Reva', 'P', 'KA');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
-- Error reading data for table pabw-gilang.matakuliah: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `pabw-gilang`.`matakuliah`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` char(9) NOT NULL,
  `password` varchar(60) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`) VALUES
('afi', 'fc2f6178abeec3a91654adc3f22419fd', 'Aliyah Afifah'),
('agus', 'fdf169558242ee051cca1479770ebac3', 'Agus Subagyo'),
('eko', 'e5ea9b6d71086dfef3a15f726abcc5bf', 'Eko Haryanto'),
('susi', '536931d80decb18c33db9612bdd004d4', 'Susi Susanti');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
