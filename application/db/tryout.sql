-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2013 at 10:35 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tryout`
--
CREATE DATABASE IF NOT EXISTS `tryout` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tryout`;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_hasil`
--

CREATE TABLE IF NOT EXISTS `tmp_hasil` (
  `id_user` varchar(30) NOT NULL,
  `kode_soal` varchar(30) NOT NULL,
  `jwb_soal` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_usrlogin`
--

CREATE TABLE IF NOT EXISTS `tmp_usrlogin` (
  `usr_id` int(11) NOT NULL,
  `usr_name` text NOT NULL,
  `usr_lastlogin` datetime NOT NULL,
  `usr_[ip_address]` text NOT NULL,
  `usr_[session]` text NOT NULL,
  `usr_[status]` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmp_usrlogin`
--

INSERT INTO `tmp_usrlogin` (`usr_id`, `usr_name`, `usr_lastlogin`, `usr_[ip_address]`, `usr_[session]`, `usr_[status]`) VALUES
(1, 'admin', '2013-09-18 12:11:07', '::1', '7ee557f3593a5ffe5fa7ec5dee64bae0', 'is_login'),
(1, 'admin', '2013-09-20 08:32:40', '::1', '26d25ce97dc09bd9f365aebc3b7cc2d6', 'is_login');

-- --------------------------------------------------------

--
-- Table structure for table `try_admin`
--

CREATE TABLE IF NOT EXISTS `try_admin` (
  `id_admin` int(11) NOT NULL AUTO_INCREMENT,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `try_admin`
--

INSERT INTO `try_admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `try_berita`
--

CREATE TABLE IF NOT EXISTS `try_berita` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `tgl` datetime NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `try_hasil`
--

CREATE TABLE IF NOT EXISTS `try_hasil` (
  `id_user` varchar(30) NOT NULL,
  `poin` int(11) NOT NULL,
  `tgl_tryout` datetime NOT NULL,
  `jml_soal` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `try_kode`
--

CREATE TABLE IF NOT EXISTS `try_kode` (
  `kd_soal` varchar(30) NOT NULL,
  `id_soal` varchar(30) NOT NULL,
  `mata_pelajaran` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_kode`
--

INSERT INTO `try_kode` (`kd_soal`, `id_soal`, `mata_pelajaran`) VALUES
('kdind_000', 'ind_000', 'bahasa indonesia'),
('kdind_000', 'ind_002', 'bahasa indonesia'),
('kdind_000', 'ind_003', 'bahasa indonesia');

-- --------------------------------------------------------

--
-- Table structure for table `try_paket`
--

CREATE TABLE IF NOT EXISTS `try_paket` (
  `kd_paket` int(11) NOT NULL,
  `kd_mtk` varchar(30) NOT NULL,
  `kd_ind` varchar(30) NOT NULL,
  `kd_ing` varchar(30) NOT NULL,
  `kd_bio` varchar(30) NOT NULL,
  `kd_kim` varchar(30) NOT NULL,
  `kd_fis` varchar(30) NOT NULL,
  `kd_geo` varchar(30) NOT NULL,
  `kd_eko` varchar(30) NOT NULL,
  `kd_sej` varchar(30) NOT NULL,
  `time_start` datetime NOT NULL,
  `time_finish` datetime NOT NULL,
  `status` enum('aktive','pasif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_paket`
--

INSERT INTO `try_paket` (`kd_paket`, `kd_mtk`, `kd_ind`, `kd_ing`, `kd_bio`, `kd_kim`, `kd_fis`, `kd_geo`, `kd_eko`, `kd_sej`, `time_start`, `time_finish`, `status`) VALUES
(0, '-- pilihan --', 'kdind_000', '-- pilihan --', '-- pilihan --', '-- pilihan --', '-- pilihan --', '-- pilihan --', '-- pilihan --', '-- pilihan --', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 'aktive');

-- --------------------------------------------------------

--
-- Table structure for table `try_soal`
--

CREATE TABLE IF NOT EXISTS `try_soal` (
  `id_soal` varchar(30) NOT NULL,
  `soal` longtext NOT NULL,
  `mata_pelajaran` varchar(30) NOT NULL,
  `plh_a` longtext NOT NULL,
  `plh_b` longtext NOT NULL,
  `plh_c` longtext NOT NULL,
  `plh_d` longtext NOT NULL,
  `plh_e` longtext NOT NULL,
  `jwb_soal` longtext NOT NULL,
  `penjelasan` longtext NOT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_soal`
--

INSERT INTO `try_soal` (`id_soal`, `soal`, `mata_pelajaran`, `plh_a`, `plh_b`, `plh_c`, `plh_d`, `plh_e`, `jwb_soal`, `penjelasan`) VALUES
('ind_002', 'sdfds', 'bahasa indonesia', 'dsfds', 'sdf', 'sdfsd', 'sdf', 'sdfds', 'e', ''),
('ind_003', 'asdsa', 'bahasa indonesia', 'asd', 'sad', 'asd', 'asd', 'asd', 'a', ''),
('mtk_000', 'asdsa', 'matematika', 'sadasd', 'sadas', 'asdas', 'sadas', 'asd', 'a', '');

-- --------------------------------------------------------

--
-- Table structure for table `try_tentor`
--

CREATE TABLE IF NOT EXISTS `try_tentor` (
  `id_tentor` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `matapelajaran` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` enum('aprove','ignore') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `try_user`
--

CREATE TABLE IF NOT EXISTS `try_user` (
  `id_user` int(11) NOT NULL,
  `nama` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `sekolah` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `kelas` int(11) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` enum('aprove','ignore') NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_user`
--

INSERT INTO `try_user` (`id_user`, `nama`, `username`, `sekolah`, `no_hp`, `kelas`, `password`, `status`) VALUES
(0, '', 'awank', 'xtm', '085241032700', 9, '21232f297a57a5a743894a0e4a801f', 'aprove');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
