-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 14, 2017 at 01:55 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `fooder`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id_order` char(11) NOT NULL,
  `no_meja` char(2) NOT NULL,
  `menu` varchar(30) NOT NULL,
  `jml_pesanan` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tot_harga` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_order`, `no_meja`, `menu`, `jml_pesanan`, `harga`, `tot_harga`) VALUES
('001', '3', 'French Fries', 2, 17282, 34564),
('002', '3', 'Nasi Bakar', 3, 15000, 45000),
('003', '3', 'Nasi Sirip Hiu', 1, 45000, 45000),
('004', '3', 'ES Campur', 4, 12000, 48000),
('005', '3', 'ES Bubur Kacang Tanah', 1, 15000, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `kunjungan`
--

CREATE TABLE IF NOT EXISTS `kunjungan` (
  `id_k` varchar(100) NOT NULL,
  `nama` char(50) DEFAULT NULL,
  `kun_waktu` time DEFAULT NULL,
  PRIMARY KEY (`id_k`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE IF NOT EXISTS `makanan` (
  `Id_Makanan` int(5) NOT NULL,
  `Nama_Makanan` varchar(100) NOT NULL,
  `Harga` int(7) NOT NULL,
  PRIMARY KEY (`Id_Makanan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`Id_Makanan`, `Nama_Makanan`, `Harga`) VALUES
(1, 'Spaghetti Bolognaise', 17273),
(2, 'French Fries', 17282),
(3, 'Nasi Lemak', 7000),
(4, 'Kepala Celeng Bakar', 25000),
(5, 'Nasi Bakar', 15000),
(6, 'Nasi Sirip Hiu', 45000),
(7, 'Babat Lumba-Lumba', 40000),
(8, 'Kikil Kelinci', 17000);

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE IF NOT EXISTS `minuman` (
  `Id_Minuman` int(5) NOT NULL,
  `Nama_Minuman` varchar(100) NOT NULL,
  `Harga` int(7) NOT NULL,
  PRIMARY KEY (`Id_Minuman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`Id_Minuman`, `Nama_Minuman`, `Harga`) VALUES
(1, 'ES DJ', 8000),
(2, 'ES DS', 10000),
(3, 'ES DB', 5000),
(4, 'ES Campur', 12000),
(5, 'ES Sagu', 10000),
(6, 'ES Bubur Kacang Tanah', 15000),
(7, 'ES Sarang Sarang heo', 32000);

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE IF NOT EXISTS `pengunjung` (
  `id` char(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `tgl_lahir` varchar(30) NOT NULL,
  `no_telp` char(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `nama`, `alamat`, `tgl_lahir`, `no_telp`) VALUES
('0001', 'Ramadhany', 'Pondok Jati AU-11', '11 Januari 1998', '0895342553237'),
('0002', 'Adam', 'Sidoarjo', 'Double Dua', '08866637219'),
('0003', 'Sandy', 'Magersari', '21 Oktober 1998', '089554415361'),
('0004', 'Fadil', 'Rumah', '11 mei 1997', '089666661132');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
