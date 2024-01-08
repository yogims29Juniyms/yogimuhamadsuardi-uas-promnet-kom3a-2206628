-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2024 at 01:21 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_2206628_yogimuhamadsuardi_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `pasien_puskesmas_yogimuhamadsuardi`
--

CREATE TABLE `pasien_puskesmas_yogimuhamadsuardi` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `deskripsi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien_puskesmas_yogimuhamadsuardi`
--

INSERT INTO `pasien_puskesmas_yogimuhamadsuardi` (`id`, `nama`, `usia`, `jenis_kelamin`, `alamat`, `deskripsi`) VALUES
(1, 'Yogi Muhamad Suardi', 18, 'L', 'Garut', 'Sakit Kepala'),
(2, 'Muhamad Izzudin Alfatih', 19, 'L', 'Tangerang', 'Demam dan Flu'),
(3, 'Irfan Habibi', 20, 'L', 'Jambi', 'Nyeri Punggung'),
(4, 'Mia Amalia', 18, 'P', 'Sukabumi', 'Pusing dan Mual'),
(5, 'Citra Ayu Rahmawati', 20, 'P', 'Karawang', 'Gangguan Pernapasan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pasien_puskesmas_yogimuhamadsuardi`
--
ALTER TABLE `pasien_puskesmas_yogimuhamadsuardi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pasien_puskesmas_yogimuhamadsuardi`
--
ALTER TABLE `pasien_puskesmas_yogimuhamadsuardi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
