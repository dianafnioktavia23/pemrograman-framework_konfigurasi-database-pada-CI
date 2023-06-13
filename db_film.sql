-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 07:19 AM
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
-- Database: `db_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL,
  `nama_film` varchar(200) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `duration` varchar(50) NOT NULL,
  `cover` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`id`, `nama_film`, `id_genre`, `duration`, `cover`, `created_at`, `updated_at`) VALUES
(1, 'Tom and jerri', 1, '1 jam 2 menit', 'tomandjerry.jpg', '2023-06-07 01:05:44', '2023-06-07 01:05:44'),
(2, 'sewu dino', 3, '2 jam 30 menit', 'sewudino.jpg', '2023-06-07 01:05:44', '2023-06-07 01:05:44'),
(3, 'coldplay', 4, '2 jam 30 menit', 'coldplay.jpg', '2023-06-07 01:11:05', '2023-06-07 01:11:05'),
(4, 'popay', 1, '3 jam 1 menit', 'popay.jpg', '2023-06-07 01:11:05', '2023-06-07 01:11:05'),
(5, 'keluarga cemara', 2, '1 jam 10 menit', 'keluarga.jpg', '2023-06-07 01:13:05', '2023-06-07 01:13:05'),
(6, 'kkn didesa penari', 3, '2 jam 1 menit', 'kkn.jpg', '2023-06-07 01:13:05', '2023-06-07 01:13:05'),
(7, 'ayat-ayat cinta', 2, '2 jam 30 menit', 'cinta.jpg', '2023-06-07 01:14:34', '2023-06-07 01:14:40'),
(8, 'cek toko sebelah', 5, '2 jam 10 menit', 'toko.jpg', '2023-06-07 01:14:31', '2023-06-07 01:14:31'),
(9, 'cinta suci', 2, '1 jam 30 menit', 'suci.jpg', '2023-06-07 01:16:23', '2023-06-07 01:16:59'),
(10, 'idol indonesia', 4, '2 jam 20 menit', 'idol.jpg', '2023-06-07 01:17:43', '2023-06-07 01:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id_genre`, `nama_genre`, `created_at`, `updated_at`) VALUES
(1, 'kartun', '2023-06-12 14:44:53', '2023-06-19 14:44:53'),
(2, 'Drama', '2023-06-13 14:44:53', '2023-06-14 14:44:53'),
(3, 'horor', '2023-06-12 14:46:06', '2023-06-14 14:46:06'),
(4, 'music', '2023-06-13 14:46:06', '2023-06-15 14:46:06'),
(5, 'komedi', '2023-06-14 14:47:17', '2023-06-15 14:47:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_genre` (`id_genre`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`id_genre`) REFERENCES `genre` (`id_genre`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
