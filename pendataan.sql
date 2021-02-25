-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2018 at 11:24 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pendataan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`nama`, `username`, `password`) VALUES
('dw', 'dw', 0);

-- --------------------------------------------------------

--
-- Table structure for table `hadiah_buku`
--

CREATE TABLE `hadiah_buku` (
  `judul` varchar(55) NOT NULL,
  `pengarang` varchar(55) NOT NULL,
  `penerbit` varchar(55) NOT NULL,
  `kota_terbit` varchar(55) NOT NULL,
  `tahunTerbit` date NOT NULL,
  `kelas` varchar(55) NOT NULL,
  `jumlah_exsem` int(55) NOT NULL,
  `harga_satuan` int(50) NOT NULL,
  `total_harga` int(10) NOT NULL,
  `penyumbang` varchar(55) NOT NULL,
  `tanggal` date NOT NULL,
  `keterangan` varchar(10) NOT NULL,
  `id_hadiah` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pembelianbuku`
--

CREATE TABLE `pembelianbuku` (
  `judul` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `kotaTerbit` varchar(50) NOT NULL,
  `kelas` int(11) NOT NULL,
  `jum_exem` int(3) NOT NULL,
  `hara_sat` int(11) NOT NULL,
  `total_hrg` int(11) NOT NULL,
  `penyedia` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelianbuku`
--

INSERT INTO `pembelianbuku` (`judul`, `pengarang`, `penerbit`, `kotaTerbit`, `kelas`, `jum_exem`, `hara_sat`, `total_hrg`, `penyedia`, `tanggal`) VALUES
('wd', 'dwa', 'dwa', 'dawawd', 21, 0, 0, 0, 0, '1999-10-10');

-- --------------------------------------------------------

--
-- Table structure for table `penggantianbuku`
--

CREATE TABLE `penggantianbuku` (
  `nama` varchar(50) NOT NULL,
  `nomor_anggota` varchar(20) NOT NULL,
  `judulbku_hlng` varchar(50) NOT NULL,
  `pngrngbku_hlng` varchar(50) NOT NULL,
  `pnrbtbku_hlng` varchar(50) NOT NULL,
  `kotatrbt_hlng` varchar(50) NOT NULL,
  `thntrbt_hlng` varchar(50) NOT NULL,
  `brcode_hlng` varchar(50) NOT NULL,
  `jdlbku_gnti` varchar(50) NOT NULL,
  `pngrng_gnti` varchar(50) NOT NULL,
  `penerbit_gnti` varchar(50) NOT NULL,
  `kotatrbt_gnti` varchar(66) NOT NULL,
  `thntrbt_gnti` varchar(66) NOT NULL,
  `nmrbar_gnti` varchar(66) NOT NULL,
  `tggl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penggantianbuku`
--

INSERT INTO `penggantianbuku` (`nama`, `nomor_anggota`, `judulbku_hlng`, `pngrngbku_hlng`, `pnrbtbku_hlng`, `kotatrbt_hlng`, `thntrbt_hlng`, `brcode_hlng`, `jdlbku_gnti`, `pngrng_gnti`, `penerbit_gnti`, `kotatrbt_gnti`, `thntrbt_gnti`, `nmrbar_gnti`, `tggl`) VALUES
('sda', 'asda', 'wda', 'awd ', 'awd', 'aw', 'wd', 'awd', 'dwa', 'wda', 'awd', 'awd', 'wd', 'awd', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `nama_sekolah` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nama_sekolah`, `username`, `password`) VALUES
('sdn karangduwet 1', 'dato', 0),
('sadsa', 'dato', 990);

-- --------------------------------------------------------

--
-- Table structure for table `usulan_siska`
--

CREATE TABLE `usulan_siska` (
  `nama` varchar(55) NOT NULL,
  `no_tlp` varchar(55) NOT NULL,
  `alamat` varchar(55) NOT NULL,
  `tnggl` date NOT NULL,
  `judul` varchar(55) NOT NULL,
  `pengarang` varchar(55) NOT NULL,
  `penerbit` varchar(55) NOT NULL,
  `kotaTrbt` varchar(55) NOT NULL,
  `thnTrbit` date NOT NULL,
  `hargaBku` int(11) NOT NULL,
  `keterangan` varchar(55) NOT NULL,
  `jawaban` text NOT NULL,
  `tanggal_jawab` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usulan_siska`
--

INSERT INTO `usulan_siska` (`nama`, `no_tlp`, `alamat`, `tnggl`, `judul`, `pengarang`, `penerbit`, `kotaTrbt`, `thnTrbit`, `hargaBku`, `keterangan`, `jawaban`, `tanggal_jawab`) VALUES
('wdw', 'wdd', 'wda', '0000-00-00', 'dwa', 'wa', 'wa', '', '0000-00-00', 32131, 'awa', 'wa', '1999-11-11'),
('wdw', 'wdd', 'wda', '0000-00-00', 'dwa', 'wa', 'wa', '', '1999-11-11', 32131, 'awa', 'wa', '1999-11-11'),
('wdw', 'wdd', 'wda', '0000-00-00', 'dwa', 'wa', 'wa', 'aw', '1999-11-11', 32131, 'awa', 'wa', '1999-11-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `hadiah_buku`
--
ALTER TABLE `hadiah_buku`
  ADD PRIMARY KEY (`id_hadiah`);

--
-- Indexes for table `penggantianbuku`
--
ALTER TABLE `penggantianbuku`
  ADD PRIMARY KEY (`nomor_anggota`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`password`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
