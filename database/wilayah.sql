-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2022 at 11:58 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wilayah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kota`
--

CREATE TABLE `tbl_kota` (
  `id_kabkota` int(11) NOT NULL,
  `kode_kabkota` varchar(6) NOT NULL,
  `nama_kabkota` varchar(39) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `kode_provinsi` varchar(26) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kota`
--

INSERT INTO `tbl_kota` (`id_kabkota`, `kode_kabkota`, `nama_kabkota`, `created_at`, `updated_at`, `kode_provinsi`) VALUES
(1, 'KSU', 'Kabupaten Adm. Kepulauan Seribu', '2022-04-12 01:01:11', NULL, 'ID-JK'),
(2, 'GGP', 'Kota Adm. Jakarta Barat', '2022-04-12 01:01:11', NULL, 'ID-JK'),
(3, 'TNA', 'Kota Adm. Jakarta Pusat', '2022-04-12 01:01:11', NULL, 'ID-JK'),
(4, 'KYB', 'Kota Adm. Jakarta Selatan', '2022-04-12 01:01:11', NULL, 'ID-JK'),
(5, 'CKG', 'Kota Adm. Jakarta Timur', '2022-04-12 01:01:11', NULL, 'ID-JK'),
(6, 'TJP', 'Kota Adm. Jakarta Utara', '2022-04-12 01:01:11', NULL, 'ID-JK'),
(7, 'SOR', 'Kabupaten Bandung', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(8, 'NPH', 'Kabupaten Bandung Barat', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(9, 'CKR', 'Kabupaten Bekasi', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(10, 'CBI', 'Kabupaten Bogor', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(11, 'CMS', 'Kabupaten Ciamis', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(12, 'CJR', 'Kabupaten Cianjur', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(13, 'SBR', 'Kabupaten Cirebon', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(14, 'GRT', 'Kabupaten Garut', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(15, 'IDM', 'Kabupaten Indramayu', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(16, 'KWG', 'Kabupaten Karawang', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(17, 'KNG', 'Kabupaten Kuningan', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(18, 'MJL', 'Kabupaten Majalengka', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(19, 'PAG', 'Kabupaten Pangandaran', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(20, 'PWK', 'Kabupaten Purwakarta', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(21, 'SNG', 'Kabupaten Subang', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(22, 'SBM', 'Kabupaten Sukabumi', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(23, 'SMD', 'Kabupaten Sumedang', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(24, 'SPA', 'Kabupaten Tasikmalaya', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(25, 'BDG', 'Kota Bandung', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(26, 'BJR', 'Kota Banjar', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(27, 'BKS', 'Kota Bekasi', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(28, 'BGR', 'Kota Bogor', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(29, 'CMH', 'Kota Cimahi', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(30, 'CBN', 'Kota Cirebon', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(31, 'DPK', 'Kota Depok', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(32, 'SKB', 'Kota Sukabumi', '2022-04-12 01:01:11', NULL, 'ID-JB'),
(33, 'TSM', 'Kota Tasikmalaya', '2022-04-12 01:01:11', NULL, 'ID-JB');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `kode_provinsi` varchar(6) NOT NULL,
  `nama_provinsi` varchar(26) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `kode_provinsi`, `nama_provinsi`, `created_at`, `updated_at`) VALUES
(1, 'ID-JK', 'DKI Jakarta', '2022-04-12 00:37:16', '2022-04-12 15:58:40'),
(2, 'ID-JB', 'Jawa Barat', '2022-04-12 00:37:16', '2022-04-12 15:52:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD PRIMARY KEY (`id_kabkota`),
  ADD UNIQUE KEY `kode_kabkota` (`kode_kabkota`),
  ADD KEY `kode_provinsi` (`kode_provinsi`),
  ADD KEY `kode_provinsi_2` (`kode_provinsi`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`),
  ADD UNIQUE KEY `kode_provinsi` (`kode_provinsi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  MODIFY `id_kabkota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  MODIFY `id_provinsi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_kota`
--
ALTER TABLE `tbl_kota`
  ADD CONSTRAINT `tbl_kota_ibfk_1` FOREIGN KEY (`kode_provinsi`) REFERENCES `tbl_provinsi` (`kode_provinsi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
