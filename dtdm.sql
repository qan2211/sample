-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 23, 2015 at 06:16 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dtdm`
--
CREATE DATABASE IF NOT EXISTS `dtdm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dtdm`;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE IF NOT EXISTS `chitiethoadon` (
  `id_chitiet` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `sanpham_id_sanpham` int(11) NOT NULL,
  `hoadon_id_hoadon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chitiet`, `soluong`, `sanpham_id_sanpham`, `hoadon_id_hoadon`) VALUES
(1, 1, 1, 1),
(2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE IF NOT EXISTS `hoadon` (
  `id_hoadon` int(11) NOT NULL,
  `ngaymua` date NOT NULL,
  `khachhang_id_khachhang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`id_hoadon`, `ngaymua`, `khachhang_id_khachhang`) VALUES
(1, '2015-07-01', 1),
(2, '2015-07-30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE IF NOT EXISTS `khachhang` (
  `id_khachhang` int(11) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `diachi` varchar(150) NOT NULL,
  `sdt` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`id_khachhang`, `ten`, `diachi`, `sdt`) VALUES
(1, 'Starite', 'NOP', '12445246'),
(2, 'Star', 'ggtred', '13251234');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE IF NOT EXISTS `loaisanpham` (
  `id_loai` int(11) NOT NULL,
  `tenloai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`id_loai`, `tenloai`) VALUES
(1, 'sach'),
(2, 'toy');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE IF NOT EXISTS `sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensp` varchar(20) NOT NULL,
  `loaisanpham_id_loai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id_sanpham`, `tensp`, `loaisanpham_id_loai`) VALUES
(1, 'Harrry', 1),
(2, 'YOLO', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chitiet`), ADD KEY `chitiethoadon_hoadon` (`hoadon_id_hoadon`), ADD KEY `chitiethoadon_sanpham` (`sanpham_id_sanpham`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`id_hoadon`), ADD KEY `hoadon_khachhang` (`khachhang_id_khachhang`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_khachhang`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id_loai`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id_sanpham`), ADD KEY `sanpham_loaisanpham` (`loaisanpham_id_loai`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
ADD CONSTRAINT `chitiethoadon_hoadon` FOREIGN KEY (`hoadon_id_hoadon`) REFERENCES `hoadon` (`id_hoadon`),
ADD CONSTRAINT `chitiethoadon_sanpham` FOREIGN KEY (`sanpham_id_sanpham`) REFERENCES `sanpham` (`id_sanpham`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
ADD CONSTRAINT `hoadon_khachhang` FOREIGN KEY (`khachhang_id_khachhang`) REFERENCES `khachhang` (`id_khachhang`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
ADD CONSTRAINT `sanpham_loaisanpham` FOREIGN KEY (`loaisanpham_id_loai`) REFERENCES `loaisanpham` (`id_loai`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
