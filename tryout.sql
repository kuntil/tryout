-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2014 at 02:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tryout`
--

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
(2, 'ary', '2014-04-08 06:06:28', '::1', '4ef0798b90571b8b326105b83deff7a4', 'is_login'),
(0, 'admin', '2014-04-08 06:22:04', '::1', '18682473243061dcd405d4e2038f4380', 'is_login');

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
-- Table structure for table `try_jadwal`
--

CREATE TABLE IF NOT EXISTS `try_jadwal` (
  `id_jadwal` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` enum('tambahan','konseling') NOT NULL,
  `id_tentor` text NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `id_mtk` varchar(30) NOT NULL,
  `kursi` int(11) NOT NULL,
  PRIMARY KEY (`id_jadwal`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `try_jadwal`
--

INSERT INTO `try_jadwal` (`id_jadwal`, `jenis`, `id_tentor`, `tanggal`, `jam`, `id_mtk`, `kursi`) VALUES
(9, 'konseling', '14', '2014-04-04', '10:00:00', 'kd_ing', 1),
(10, 'tambahan', '16', '2014-03-27', '10:00:00', 'kd_fis', 0),
(11, 'konseling', '17', '2014-03-27', '10:00:00', 'kd_fis', 1),
(12, 'tambahan', '18', '2014-04-02', '10:00:00', 'kd_fis', 0),
(13, 'konseling', '19', '2014-04-16', '11:00:00', 'kd_ind', 1);

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
('kdind_000', 'ind_001', 'bahasa indonesia'),
('kdind_000', 'ind_002', 'bahasa indonesia'),
('kdind_000', 'ind_003', 'bahasa indonesia'),
('kdind_000', 'ind_004', 'bahasa indonesia'),
('kdind_000', 'ind_007', 'bahasa indonesia'),
('kdind_000', 'ind_009', 'bahasa indonesia'),
('kdind_000', 'ind_010', 'bahasa indonesia'),
('kdind_000', 'ind_012', 'bahasa indonesia'),
('kdind_000', 'ind_013', 'bahasa indonesia'),
('kdind_000', 'ind_014', 'bahasa indonesia'),
('kdind_000', 'ind_015', 'bahasa indonesia'),
('kdind_000', 'ind_016', 'bahasa indonesia'),
('kdind_000', 'ind_017', 'bahasa indonesia'),
('kdind_000', 'ind_018', 'bahasa indonesia'),
('kding_000', 'ing_000', 'bahasa inggris'),
('kding_000', 'ing_001', 'bahasa inggris'),
('kding_000', 'ing_002', 'bahasa inggris'),
('kding_000', 'ing_003', 'bahasa inggris'),
('kding_000', 'ing_004', 'bahasa inggris'),
('kding_000', 'ing_005', 'bahasa inggris'),
('kding_000', 'ing_006', 'bahasa inggris'),
('kding_000', 'ing_007', 'bahasa inggris'),
('kding_000', 'ing_008', 'bahasa inggris'),
('kding_000', 'ing_009', 'bahasa inggris'),
('kding_000', 'ing_011', 'bahasa inggris'),
('kding_000', 'ing_012', 'bahasa inggris'),
('kding_000', 'ing_013', 'bahasa inggris'),
('kding_000', 'ing_014', 'bahasa inggris'),
('kding_000', 'ing_015', 'bahasa inggris'),
('kdfis_000', 'fis_000', 'fisika'),
('kdfis_000', 'fis_001', 'fisika'),
('kdfis_000', 'fis_002', 'fisika'),
('kdfis_000', 'fis_003', 'fisika'),
('kdfis_000', 'fis_004', 'fisika'),
('kdfis_000', 'fis_005', 'fisika'),
('kdfis_000', 'fis_006', 'fisika'),
('kdfis_000', 'fis_007', 'fisika'),
('kdfis_000', 'fis_008', 'fisika'),
('kdfis_000', 'fis_009', 'fisika'),
('kdfis_000', 'fis_011', 'fisika'),
('kdfis_000', 'fis_012', 'fisika'),
('kdfis_000', 'fis_013', 'fisika'),
('kdfis_000', 'fis_014', 'fisika'),
('kdfis_000', 'fis_015', 'fisika'),
('kdeko_000', 'eko_000', 'ekonomi'),
('kdeko_000', 'eko_001', 'ekonomi'),
('kdeko_000', 'eko_003', 'ekonomi'),
('kdeko_000', 'eko_004', 'ekonomi'),
('kdeko_000', 'eko_005', 'ekonomi'),
('kdeko_000', 'eko_006', 'ekonomi'),
('kdeko_000', 'eko_007', 'ekonomi'),
('kdeko_000', 'eko_008', 'ekonomi'),
('kdeko_000', 'eko_009', 'ekonomi'),
('kdeko_000', 'eko_011', 'ekonomi'),
('kdeko_000', 'eko_012', 'ekonomi'),
('kdeko_000', 'eko_013', 'ekonomi'),
('kdeko_000', 'eko_014', 'ekonomi'),
('kdeko_000', 'eko_015', 'ekonomi'),
('kdeko_000', 'eko_016', 'ekonomi'),
('kdsej_000', 'sej_000', 'sejarah'),
('kdsej_000', 'sej_001', 'sejarah'),
('kdsej_000', 'sej_002', 'sejarah'),
('kdsej_000', 'sej_003', 'sejarah'),
('kdsej_000', 'sej_004', 'sejarah'),
('kdsej_000', 'sej_005', 'sejarah'),
('kdsej_000', 'sej_006', 'sejarah'),
('kdsej_000', 'sej_007', 'sejarah'),
('kdsej_000', 'sej_008', 'sejarah'),
('kdsej_000', 'sej_009', 'sejarah'),
('kdsej_000', 'sej_011', 'sejarah'),
('kdsej_000', 'sej_012', 'sejarah'),
('kdsej_000', 'sej_013', 'sejarah'),
('kdsej_000', 'sej_014', 'sejarah'),
('kdsej_000', 'sej_015', 'sejarah'),
('kdgeo_000', 'geo_000', 'geografi'),
('kdgeo_000', 'geo_001', 'geografi'),
('kdgeo_000', 'geo_002', 'geografi'),
('kdgeo_000', 'geo_003', 'geografi'),
('kdgeo_000', 'geo_004', 'geografi'),
('kdgeo_000', 'geo_005', 'geografi'),
('kdgeo_000', 'geo_006', 'geografi'),
('kdgeo_000', 'geo_007', 'geografi'),
('kdgeo_000', 'geo_008', 'geografi'),
('kdgeo_000', 'geo_009', 'geografi'),
('kdgeo_000', 'geo_011', 'geografi'),
('kdgeo_000', 'geo_012', 'geografi'),
('kdgeo_000', 'geo_013', 'geografi'),
('kdgeo_000', 'geo_014', 'geografi'),
('kdgeo_000', 'geo_015', 'geografi'),
('kdkim_000', 'kim_000', 'kimia'),
('kdkim_000', 'kim_003', 'kimia'),
('kdkim_000', 'kim_004', 'kimia'),
('kdkim_000', 'kim_005', 'kimia'),
('kdkim_000', 'kim_006', 'kimia'),
('kdkim_000', 'kim_007', 'kimia'),
('kdkim_000', 'kim_008', 'kimia'),
('kdkim_000', 'kim_009', 'kimia'),
('kdkim_000', 'kim_011', 'kimia'),
('kdkim_000', 'kim_012', 'kimia'),
('kdkim_000', 'kim_013', 'kimia'),
('kdkim_000', 'kim_014', 'kimia'),
('kdkim_000', 'kim_015', 'kimia'),
('kdkim_000', 'kim_016', 'kimia'),
('kdkim_000', 'kim_017', 'kimia'),
('kdbio_000', 'bio_000', 'biologi'),
('kdbio_000', 'bio_001', 'biologi'),
('kdbio_000', 'bio_002', 'biologi'),
('kdbio_000', 'bio_003', 'biologi'),
('kdbio_000', 'bio_004', 'biologi'),
('kdbio_000', 'bio_005', 'biologi'),
('kdbio_000', 'bio_006', 'biologi'),
('kdbio_000', 'bio_007', 'biologi'),
('kdbio_000', 'bio_008', 'biologi'),
('kdbio_000', 'bio_009', 'biologi'),
('kdbio_000', 'bio_011', 'biologi'),
('kdbio_000', 'bio_012', 'biologi'),
('kdbio_000', 'bio_013', 'biologi'),
('kdbio_000', 'bio_014', 'biologi'),
('kdbio_000', 'bio_015', 'biologi'),
('kdmtk_000', 'mtk_000', 'matematika'),
('kdmtk_000', 'mtk_001', 'matematika'),
('kdmtk_000', 'mtk_002', 'matematika'),
('kdmtk_000', 'mtk_003', 'matematika'),
('kdmtk_000', 'mtk_004', 'matematika'),
('kdmtk_000', 'mtk_005', 'matematika'),
('kdmtk_000', 'mtk_006', 'matematika'),
('kdmtk_000', 'mtk_007', 'matematika'),
('kdmtk_000', 'mtk_008', 'matematika'),
('kdmtk_000', 'mtk_009', 'matematika'),
('kdmtk_000', 'mtk_011', 'matematika'),
('kdmtk_000', 'mtk_012', 'matematika'),
('kdmtk_000', 'mtk_013', 'matematika'),
('kdmtk_000', 'mtk_014', 'matematika'),
('kdmtk_000', 'mtk_015', 'matematika');

-- --------------------------------------------------------

--
-- Table structure for table `try_nilai`
--

CREATE TABLE IF NOT EXISTS `try_nilai` (
  `id_user` int(11) NOT NULL,
  `tgl` datetime NOT NULL,
  `benar_mtk` int(11) NOT NULL,
  `salah_mtk` int(11) NOT NULL,
  `kosong_mtk` int(11) NOT NULL,
  `benar_ind` int(11) NOT NULL,
  `salah_ind` int(11) NOT NULL,
  `kosong_ind` int(11) NOT NULL,
  `benar_ing` int(11) NOT NULL,
  `salah_ing` int(11) NOT NULL,
  `kosong_ing` int(11) NOT NULL,
  `benar_bio` int(11) NOT NULL,
  `salah_bio` int(11) NOT NULL,
  `kosong_bio` int(11) NOT NULL,
  `benar_kim` int(11) NOT NULL,
  `salah_kim` int(11) NOT NULL,
  `kosong_kim` int(11) NOT NULL,
  `benar_fis` int(11) NOT NULL,
  `salah_fis` int(11) NOT NULL,
  `kosong_fis` int(11) NOT NULL,
  `benar_geo` int(11) NOT NULL,
  `salah_geo` int(11) NOT NULL,
  `kosong_geo` int(11) NOT NULL,
  `benar_eko` int(11) NOT NULL,
  `salah_eko` int(11) NOT NULL,
  `kosong_eko` int(11) NOT NULL,
  `benar_sej` int(11) NOT NULL,
  `salah_sej` int(11) NOT NULL,
  `kosong_sej` int(11) NOT NULL,
  `jml_benar` int(11) NOT NULL,
  `jml_salah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_nilai`
--

INSERT INTO `try_nilai` (`id_user`, `tgl`, `benar_mtk`, `salah_mtk`, `kosong_mtk`, `benar_ind`, `salah_ind`, `kosong_ind`, `benar_ing`, `salah_ing`, `kosong_ing`, `benar_bio`, `salah_bio`, `kosong_bio`, `benar_kim`, `salah_kim`, `kosong_kim`, `benar_fis`, `salah_fis`, `kosong_fis`, `benar_geo`, `salah_geo`, `kosong_geo`, `benar_eko`, `salah_eko`, `kosong_eko`, `benar_sej`, `salah_sej`, `kosong_sej`, `jml_benar`, `jml_salah`) VALUES
(6, '2014-04-01 17:22:54', 7, 2, 6, 10, 5, 0, 8, 2, 5, 10, 0, 5, 4, 0, 11, 6, 6, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2014-04-01 17:44:27', 10, 5, 0, 12, 3, 0, 4, 6, 5, 10, 0, 5, 4, 6, 5, 8, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2014-04-01 17:50:49', 10, 0, 5, 7, 0, 8, 12, 1, 2, 10, 0, 5, 5, 0, 10, 6, 0, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '2014-04-01 17:55:32', 9, 0, 6, 5, 0, 10, 8, 5, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '2014-04-01 18:00:06', 9, 0, 6, 8, 0, 7, 8, 0, 7, 9, 4, 2, 4, 2, 9, 13, 2, 0, 10, 0, 5, 10, 0, 5, 9, 1, 5, 0, 0),
(2, '2014-04-01 18:15:12', 13, 0, 2, 5, 0, 10, 12, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, '2014-04-02 16:26:02', 10, 1, 4, 15, 0, 0, 12, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 2, 2, 12, 0, 3, 11, 0, 4, 0, 0),
(3, '2014-04-02 16:32:33', 14, 0, 1, 11, 3, 1, 13, 0, 2, 13, 2, 0, 15, 0, 0, 10, 1, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(13, '2014-04-02 16:40:23', 13, 0, 2, 14, 0, 1, 12, 3, 0, 13, 0, 2, 11, 0, 4, 11, 2, 2, 12, 0, 3, 10, 0, 5, 11, 0, 4, 0, 0),
(4, '2014-04-02 16:47:44', 11, 0, 4, 10, 0, 5, 12, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 4, 10, 0, 5, 13, 0, 2, 0, 0),
(7, '2014-04-02 16:52:08', 4, 0, 11, 5, 3, 7, 3, 6, 6, 4, 1, 10, 1, 0, 14, 1, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(8, '2014-04-02 16:54:44', 2, 0, 13, 4, 4, 7, 5, 0, 10, 3, 0, 12, 1, 0, 14, 2, 3, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, '2014-04-02 16:56:35', 4, 4, 7, 2, 3, 10, 2, 6, 7, 2, 1, 12, 1, 0, 14, 1, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10, '2014-04-02 17:00:02', 3, 0, 12, 2, 4, 9, 5, 9, 1, 1, 0, 14, 1, 0, 14, 2, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2014-04-03 17:25:30', 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2014-04-04 07:50:51', 0, 3, 12, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(0, '2014-04-04 08:00:35', 1, 0, 14, 0, 0, 15, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2014-04-04 08:50:38', 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2014-04-06 08:18:07', 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, '2014-04-08 06:08:00', 0, 0, 15, 0, 0, 15, 0, 0, 15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

--
-- Triggers `try_nilai`
--
DROP TRIGGER IF EXISTS `cek_nilai`;
DELIMITER //
CREATE TRIGGER `cek_nilai` BEFORE INSERT ON `try_nilai`
 FOR EACH ROW BEGIN

IF NEW.benar_mtk*4 - NEW.salah_mtk < 22 THEN
INSERT INTO try_tambahan (id_user,id_mtk) VALUES (NEW.id_user,'kd_mtk');
END IF;
IF NEW.benar_ind*4 - NEW.salah_ind < 22 THEN
INSERT INTO try_tambahan (id_user,id_mtk) VALUES (NEW.id_user,'kd_ind');
END IF;
IF NEW.benar_ing*4 - NEW.salah_ing < 22 THEN
INSERT INTO try_tambahan (id_user,id_mtk) VALUES (NEW.id_user,'kd_ing');
END IF;

IF NEW.benar_geo = 0 AND NEW.salah_geo = 0 AND NEW.kosong_geo = 0
THEN
	IF NEW.benar_bio*4 - NEW.salah_bio < 22 THEN
	INSERT INTO try_tambahan (id_user,id_mtk) VALUES 		
    (NEW.id_user,'kd_bio');
	END IF;
    IF NEW.benar_kim*4 - NEW.salah_kim < 22 THEN
	INSERT INTO try_tambahan (id_user,id_mtk) VALUES 		
    (NEW.id_user,'kd_kim');
	END IF;
    IF NEW.benar_fis*4 - NEW.salah_fis < 22 THEN
	INSERT INTO try_tambahan (id_user,id_mtk) VALUES 		
    (NEW.id_user,'kd_fis');
	END IF;
END IF;


IF NEW.benar_kim = 0 AND NEW.salah_kim = 0 AND NEW.kosong_kim = 0
THEN
	IF NEW.benar_geo*4 - NEW.salah_geo < 22 THEN
	INSERT INTO try_tambahan (id_user,id_mtk) VALUES 		
    (NEW.id_user,'kd_geo');
	END IF;
    IF NEW.benar_sej*4 - NEW.salah_sej < 22 THEN
	INSERT INTO try_tambahan (id_user,id_mtk) VALUES 		
    (NEW.id_user,'kd_sej');
	END IF;
    IF NEW.benar_eko- NEW.salah_eko < 22 THEN
	INSERT INTO try_tambahan (id_user,id_mtk) VALUES 		
    (NEW.id_user,'kd_eko');
	END IF;
END IF;

END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `try_paket`
--

CREATE TABLE IF NOT EXISTS `try_paket` (
  `kd_paket` int(11) NOT NULL,
  `kd_mtk` varchar(30) NOT NULL,
  `kd_ind` varchar(30) NOT NULL,
  `kd_ing` varchar(30) NOT NULL,
  `tgl_dasar` date NOT NULL,
  `jam_dasar` time NOT NULL,
  `kd_bio` varchar(30) NOT NULL,
  `kd_kim` varchar(30) NOT NULL,
  `kd_fis` varchar(30) NOT NULL,
  `tgl_ipa` date NOT NULL,
  `jam_ipa` time NOT NULL,
  `kd_geo` varchar(30) NOT NULL,
  `kd_eko` varchar(30) NOT NULL,
  `kd_sej` varchar(30) NOT NULL,
  `tgl_ips` date NOT NULL,
  `jam_ips` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_paket`
--

INSERT INTO `try_paket` (`kd_paket`, `kd_mtk`, `kd_ind`, `kd_ing`, `tgl_dasar`, `jam_dasar`, `kd_bio`, `kd_kim`, `kd_fis`, `tgl_ipa`, `jam_ipa`, `kd_geo`, `kd_eko`, `kd_sej`, `tgl_ips`, `jam_ips`) VALUES
(0, '-- pilihan --', '-- pilihan --', '-- pilihan --', '0000-00-00', '00:00:00', '-- pilihan --', '-- pilihan --', '-- pilihan --', '0000-00-00', '00:00:00', 'kdgeo_000', 'kdeko_000', 'kdsej_000', '2014-04-08', '10:00:00');

--
-- Triggers `try_paket`
--
DROP TRIGGER IF EXISTS `clean_tyout`;
DELIMITER //
CREATE TRIGGER `clean_tyout` BEFORE UPDATE ON `try_paket`
 FOR EACH ROW DELETE FROM try_tryout
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `try_roster`
--

CREATE TABLE IF NOT EXISTS `try_roster` (
  `id_user` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_roster`
--

INSERT INTO `try_roster` (`id_user`, `id_jadwal`) VALUES
(9, 7),
(9, 9),
(19, 7),
(19, 8),
(3, 11),
(10, 7),
(10, 8),
(2, 13);

--
-- Triggers `try_roster`
--
DROP TRIGGER IF EXISTS `cek_kursi`;
DELIMITER //
CREATE TRIGGER `cek_kursi` BEFORE INSERT ON `try_roster`
 FOR EACH ROW BEGIN
	
SET @kursi = (SELECT kursi FROM try_jadwal WHERE id_jadwal = NEW.id_jadwal)+1;

UPDATE try_jadwal SET kursi=@kursi WHERE id_jadwal = NEW.id_jadwal;

END
//
DELIMITER ;

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
('101', '', '-- pilihan --', '', '', '', '', '', '-- pilihan --', ''),
('bio_000', '<p>Pada tumbuhan ,pembelahan meiosis terjadi pada .....</p>\r\n', 'biologi', '<p>Pembentukan Xilem sekunder</p>\r\n', '<p>meristem apikal dan lateral</p>\r\n', '<p>pembentukan biji</p>\r\n', '<p>pembentukan makrospora</p>\r\n', '<p>pertumbuhan buah</p>\r\n', 'd', '<p>pad tumbuhan , pembelahan meiosis /reduksi/pengurangan jumlah kromosom terjadi pada saat pembentukan gamet(makrospora dan mikrospora).</p>\r\n'),
('bio_001', '<p>Fikasi CO&sup2; yang merupakan salah satu tahap reaksi gelap fotosintesis memerlukan ....</p>\r\n', 'biologi', '<p>klorofil dan enzim</p>\r\n', '<p>enzim dan RuBP</p>\r\n', '<p>RDP dan ATP</p>\r\n', '<p>katalisator dan RuBp</p>\r\n', '<p>ATP, NADPH2 dan RDP</p>\r\n', 'b', '<p>Salah satu tahap dari proses fotosintesis adalah fiksasi co2 yang dilakukan oleh RDP/RuBP dibantu enzim rubisco/RuBP karboksilase.</p>\r\n'),
('bio_002', '<p>Berikut ini ciri tumbuhan paku, KECUALI .....</p>\r\n', 'biologi', '<p>Sporofit</p>\r\n', '<p>kormophyta</p>\r\n', '<p>tracheophyta</p>\r\n', '<p>berakar serabut</p>\r\n', '<p>keturunan vegetatif</p>\r\n', 'e', '<p>Beberapa ciri lumut:</p>\r\n\r\n<ol>\r\n	<li>SPorofit/ menghasilkan spora</li>\r\n	<li>kormophyta/memiliki akar,batang , dan daun sejati</li>\r\n	<li>tracheophyta/memiliki pembuluh angkut floem dan xilem</li>\r\n	<li>berakar serabut</li>\r\n	<li>keturunan generatif</li>\r\n</ol>\r\n'),
('bio_003', '<p>suatu hewan tubuhnya berbuku-buku, terdiri dari cephaltoraks dan abdomen, memiliki karapaks dan 2 pasang antena , maka hewan tersebut termasuk dalam ....</p>\r\n', 'biologi', '<p>Arachnoidea</p>\r\n', '<p>crustaceae</p>\r\n', '<p>Myriopoda</p>\r\n', '<p>Heksapoda</p>\r\n', '<p>Insekta</p>\r\n', 'b', '<p>suatu hewan tubuhnya berbuku-buku , terdiri dari cephalotoraks dan abdomen, memiliki karapaks dan 2 pasang antena, maka hewan tersebut termasuk dalam Crustaceae, contoh udang, kepiting, dll.</p>\r\n'),
('bio_004', '<p>pembuluh darah pada katak yang berfungsi membawa darah menuju paru-paru dan kulit adalah .....</p>\r\n', 'biologi', '<p>arteri karotis</p>\r\n', '<p>trunkus arteriosus</p>\r\n', '<p>arteri pulmokutaneus</p>\r\n', '<p>vena pulmokutaneus</p>\r\n', '<p>sinus venosus</p>\r\n', 'c', '<p>Pembuuh darah pada katak yang berfungsi membawa darah menuju paru-paru dan kulit adalah arteri pulmokutaneus sedangkan vena pulmokutaneus berfungsi membawa darah dari paru-paru dan kulit menuju serambi kiri.&nbsp;</p>\r\n'),
('bio_005', '<p>pada tanaman pinus , jaringan penghasil terpenting yang terdiri atas sel-sel yang berubah bentuk terdapat pada jaringan ......</p>\r\n', 'biologi', '<p>epidermis</p>\r\n', '<p>parenkim</p>\r\n', '<p>kolenkim</p>\r\n', '<p>floem</p>\r\n', '<p>xilem</p>\r\n', 'b', '<p>pada tanaman pinus, jaringan penghasil &nbsp;terpenting yang terdiri atas sel-sel yang berubah bentuk pada jaringan parenkim.</p>\r\n'),
('bio_006', '<p>interaksi dua populasi berbeda , dimana populasi yang satu menghassilkan suatu zat yang dapat menghambat pertumbuhan populasi yang lain digolongkan pada ....</p>\r\n', 'biologi', '<p>kompetisi</p>\r\n', '<p>amensalisme</p>\r\n', '<p>simbiosis</p>\r\n', '<p>predasi</p>\r\n', '<p>antibiosis</p>\r\n', 'e', '<p>interaksi dua populasi berbeda , dimana populasi yang satu mengasilkan suatu zat (antibiotik) yang dapat menghambat pertumbuhan populasi yang lain digolongkan pada antibiosis.</p>\r\n'),
('bio_007', '<p>Lumut Kerak (lichen) dimasukkan kedalam divisi Thalophyta karena .....</p>\r\n', 'biologi', '<p>selnya belum terdiferensiasi dengan sempurna</p>\r\n', '<p>merupakan simbiosis antara jamur dengan alga</p>\r\n', '<p>masing-masing bagian tubuhnya dapat hidup secara terpisah</p>\r\n', '<p>memiliki rhizoma untuk meyerap nutrisi</p>\r\n', '<p>berkembang biak dengan soredium</p>\r\n', 'b', '<p>Lumuk kerak dimasukkan ke dalam diisi thalophyta krena lumut kerak merupakan simbiosis abtara jamur dan alga.</p>\r\n'),
('bio_008', '<p>Beberapa fungsi memiliki bagian sekat antar sel yang disebut.....</p>\r\n', 'biologi', '<p>Hifa</p>\r\n', '<p>septa</p>\r\n', '<p>Noktah</p>\r\n', '<p>Membran</p>\r\n', '<p>Miselium</p>\r\n', 'b', '<p>Beberapa fungsi memiliki sekat &nbsp;antar sel yang disebut Septa</p>\r\n'),
('bio_009', '<p>Perhatikan ciri-ciri tumbuhan dibawah ini:</p>\r\n\r\n<p>a. hiasan bunga spiral</p>\r\n\r\n<p>b. bakal buah tenggelam</p>\r\n\r\n<p>c. biji bersayap</p>\r\n\r\n<p>d. memiliki sulur</p>\r\n\r\n<p>diantara ciri-ciri tumbuhan di atas, yang termasuk ciri suku Cucurbitaceae adalah ....</p>\r\n', 'biologi', '<p>a dan b</p>\r\n', '<p>a dan c</p>\r\n', '<p>a dan d</p>\r\n', '<p>b dan c</p>\r\n', '<p>b dan d</p>\r\n', 'e', '<p>Ciri dari suku Cucurbitaceae adalah bakalbuahnya tenggelam dan memiliki sulur.</p>\r\n'),
('bio_011', '<p>Berdasarkan klasifikasi lima dunia , termasuk organisme yang memiliki karakteristik uniseluler,heterotof, tanpa membran inti , dan tanpa organela sel?</p>\r\n', 'biologi', '<p>Funsi</p>\r\n', '<p>Monera</p>\r\n', '<p>Protista</p>\r\n', '<p>Plantae</p>\r\n', '<p>Animalia</p>\r\n', 'b', '<p>Monera memiliki karaketeristik uiseluler, heterotrof, tanpa membran inti dan tanpa organel sel.</p>\r\n'),
('bio_012', '<p>Anggota &nbsp;kingdom apa yang dimiliki eukariota?</p>\r\n', 'biologi', '<p>Plantae, Fungsi, Monera, Protista, dan Anamalia</p>\r\n', '<p>Plantae, Fungsi, Protista, dan Animalia</p>\r\n', '<p>Plantae , Fungsi, Monera, dan Aniimalia</p>\r\n', '<p>Plantae, Fungsi, dan Animalia</p>\r\n', '<p>Plantae dan Animalia</p>\r\n', 'b', '<p>Domai eukariota mrupakan domain kingdom Plantae, Fungi, Protista, dan Animalia</p>\r\n'),
('bio_013', '<p>Keanekaragaman hayati memiliki berbagai manfaat dalam kehidupan , misalnya beberapa jenis tanaman dapat digunakan secara langsung oleh manusia. Manfaat ii termasuk ke dalam nilai ......</p>\r\n', 'biologi', '<p>Jasa lingkungan</p>\r\n', '<p>Eksistensi</p>\r\n', '<p>Konsumtif</p>\r\n', '<p>Warisan</p>\r\n', '<p>Pilihan</p>\r\n', 'c', '<p>Konsumtif merupakan salah satu nilai dari penggunaan keaneka ragaman hayati secara langsung yang dilakukan oleh manusia..</p>\r\n'),
('bio_014', '<p>Keaneka ragaman genetika pada suatu populasi organisme akan meningkat jika ...........</p>\r\n', 'biologi', '<p>Habitat yang ditempati makin luas</p>\r\n', '<p>Ukuran populasi meningkat</p>\r\n', '<p>Terdapat dimorfisme seksual</p>\r\n', '<p>terjadi migrasi gen</p>\r\n', '<p>terjadi evolusi</p>\r\n', 'c', '<p>Keanekaragaman genetika dalam suatu populasi organisme akan meningkatkan jika terdapat dimorfisme seksual&nbsp;</p>\r\n'),
('bio_015', '<p>Pernyataan berikut yang benar tentang daur ulang limbah nontoksik suatu organisme adalah...</p>\r\n', 'biologi', '<p>Ammonia hasil metabolisme protein digunakan cacing tanah untuk mensintesis asam amino</p>\r\n', '<p>molekul air hasil respirasi digunakan oleh hewan yang menggantikan air yang hilang melalui kulit</p>\r\n', '<p>karbon dioksida hasil respirasi digunakan oleh belalang untuk menghasilkan oksigen</p>\r\n', '<p>Asam organik hasil fotosintesis digunakan tumbuhan hijau untuk mensintesis glikogen</p>\r\n', '<p>Oksidasi hasil fotosintesis fitoplankton digunakan hewan laut untuk menyusun energi</p>\r\n', 'b', '<p>Cukup jelas</p>\r\n'),
('bio_016', '<p>Pencandraan yang tidak tepat terhadap tumbuhan kelapa,pinang, aren, lontar, dan sagu adalah.....</p>', 'biologi', '<p>Batang beruas-ruas dan tidak memiliki kambium</p>', '<p>kulit buah tebal dan biji berkeping tunggal</p>', '<p>batang tegak ke atas dan jarang bercabang</p>', '<p>akar serabut dan daun tunggal</p>', '<p>bunga majemuk tandan</p>', 'd', '<p>Kelapa,Pinang ,aren, lontar, dan sagu dikelompokkan ke dalam tumbuhan monokotil kelompok Palmaceae, kelompok ini memiliki ciri-ciri;</p>\r\n<ul>\r\n<li>Batang beruas-ruas</li>\r\n<li>batang tidak memiliki kambium</li>\r\n<li>kulit buah tebal</li>\r\n<li>batang jarang bercabang</li>\r\n<li>akar serabut</li>\r\n<li>daun majemuk</li>\r\n<li>bunga majemuk tandan</li>\r\n</ul>'),
('eko_000', '<p style="text-align: justify;">Dengan pengorbanan tertentu berusaha mendapatkan hasil maksimal dan dengan&nbsp;pengorbanan&nbsp;minimal berusaha mendapatkan hasil tertentu merupakan &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>Prinsip ekonomi&nbsp;</p>\r\n', '<p>Motif ekonomi&nbsp;</p>\r\n', '<p>Hukum ekonomi&nbsp;</p>\r\n', '<p>Norma ekonomi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;Aturan ekonomi</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'a', '<p style="text-align: justify;">Prinsip ekonomi : dengan pengorbanan tertentu berusaha mendapatkan hasil maksimal dan&nbsp;dengan&nbsp;pengorbanan minimal berusaha mendapatkan hasil tertentu.</p>\r\n'),
('eko_001', '<p><span style="line-height:1.6em">Berikut ini yang merupakan faktor produksi adalah &hellip;.</span></p>\r\n\r\n<p>(1) Sumber daya alam&nbsp;<br />\r\n(2) Sumber daya manusia<br />\r\n(3) Modal<br />\r\n(4) Wirausaha&nbsp;<br />\r\n(5) Keluarga<br />\r\n(6) Toko</p>\r\n', 'ekonomi', '<p>1 dan 2</p>\r\n', '<p>1,2, dan 3</p>\r\n', '<p>1,2,3 dan 4</p>\r\n', '<p>1,2,3,dan 5</p>\r\n', '<p>2,3,4, dan 5</p>\r\n', 'c', '<p>Faktor produksi :<br />\r\n1. asli (SDA,SDM)<br />\r\n2. turunan (modal, wirausaha)</p>\r\n'),
('eko_003', '<p>Perhitungan pendapatan nasional menggunakan pendekatan &hellip;.</p>\r\n', 'ekonomi', '<p>Produksi, Pendapatan,Pengeluaran.dan&nbsp;SDM</p>\r\n', '<p>Produksi, Pendapatan,SDA.dan&nbsp;SDM</p>\r\n', '<p>Produksi, Modal,Pengeluaran.dan&nbsp;SDM</p>\r\n', '<p>Produksi, Pendapatan&nbsp;,Pengeluaran.dan&nbsp;Pemasukan</p>\r\n', '<p>Pengeluaran, Pemasukan,Produksi,dan SDM</p>\r\n', 'd', '<p>Pendekatan perhitungan pendapatan nasional :<br />\r\n1. pendapatan<br />\r\n2. pengeluaran<br />\r\n3. produksi/nilai tambah<br />\r\n4. Pemasukkan</p>\r\n'),
('eko_004', '<p>Kenaikan harga secara umum yang terus menerus dinamakan ....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>Inflasi&nbsp;</p>\r\n', '<p>&nbsp;Deflasi&nbsp;</p>\r\n', '<p>Depresiasi&nbsp;</p>\r\n', '<p>Devaluasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Apresiasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'a', '<p>Inflasi adalah kenaikan harga secara umum dan terus menerus yang terjadi karena jumlah uang&nbsp;beredar&nbsp;lebih banyak dibandingkan jumlah barang.</p>\r\n'),
('eko_005', '<p>Berikut ini &nbsp;bukan syarat kredit yang dikenal dengan 5C, yaitu &hellip;</p>\r\n', 'ekonomi', '<p>Watak/karakter&nbsp;</p>\r\n', '<p>Jaminan&nbsp;</p>\r\n', '<p>Modal&nbsp;</p>\r\n', '<p>Kemampuan</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Kerja sama</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'e', '<p>Syarat kredit yang dieknal 5C, yaitu :<br />\r\n1. character /watak<br />\r\n2. capacity/kemampuan<br />\r\n3. capital/modal<br />\r\n4. collateral/jaminan<br />\r\n5. condition of economic/kondisi ekonomi.</p>\r\n'),
('eko_006', '<p>Kebijakan pemerintah untuk membatasi jumlah barang yang diimpor &nbsp;dinamakan...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>subsidi&nbsp;</p>\r\n', '<p>kuota&nbsp;</p>\r\n', '<p>dumping&nbsp;</p>\r\n', '<p>tarif</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>retriksi</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'b', '<p style="text-align: justify;">Kuota adalah kebijakan pemerintah dengan cara membatasi jumlah barang yang bisa&nbsp;diimpor/diekspor.</p>\r\n'),
('eko_007', '<p style="text-align: justify;">Penerimaan pendapatan jasa secara tunai Rp2.000.000,00 akan dicatat dalam persamaan dasar&nbsp;akuntansi...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>Harta kas (+) dan modal (+)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Harta kas (+) dan utang (+)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Harta kas (+) dan pendapatan (+)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Harta kas (-) dan modal (+)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Harta kas (+) dan utang (-)&nbsp;</p>\r\n', 'a', '<p>Penerimaan pendapatan secara tunai berarti harta kas (+) dan pendapatan (+) bertambahnya<br />\r\npendapatan akan menyebabkan modal (+).</p>\r\n'),
('eko_008', '<p style="text-align: justify;">Data keuangan PT Aulia mencatat pendapatan perusahaan Rp2.000.000,00, utang&nbsp;Rp4.000.000,00,&nbsp;beban Rp1.000.000,00, modal Rp10.000.000,00 dan harta Rp14.000.000,00. berdasarkan data&nbsp;tersebut besarnya laba adalah...</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 'ekonomi', '<p>Rp1.000.000,00</p>\r\n', '<p>Rp2.000.000,00&nbsp;</p>\r\n', '<p>Rp3.000.000,00&nbsp;</p>\r\n', '<p>Rp6.000.000,00</p>\r\n', '<p>Rp10.000.0000,00</p>\r\n', 'a', '<p>Laba = pendapatan &ndash; beban<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; = 2.000.000 &ndash; 1.000.000 = 1.000.000</p>\r\n'),
('eko_009', '<p>Transaksi PD Abadi :&nbsp;<br />\r\n1 April &nbsp;Menjual barang dagang Rp10.000.000,00 diterima tunai Rp4.000.000,00 dan sisanya &nbsp;kemudian. &nbsp;<br />\r\n4 April &nbsp;menerima pembayaran transaksi tanggal 1 April&nbsp;<br />\r\nPencatatan transaksi tanggal 4 Arpil dalam jurnal umum adalah &hellip;.&nbsp;</p>\r\n', 'ekonomi', '<p>&nbsp;Kas Rp6.000.000,00<br />\r\nPiutang &nbsp;Rp6.000.000,00&nbsp;</p>\r\n', '<p>Kas Rp6.000.000,00<br />\r\nUtang &nbsp;Rp6.000.000,00&nbsp;</p>\r\n', '<p>Utang Rp6.000.000,00<br />\r\nKas &nbsp;Rp6.000.000,00&nbsp;</p>\r\n', '<p>Piutang Rp6.000.000,00<br />\r\n&nbsp; Kas &nbsp;Rp6.000.000,00</p>\r\n', '<p>Piutang Rp6.000.000,00<br />\r\nPendapatan Rp6.000.000,00</p>\r\n', 'a', '<p>Penerimaan piutang berarti kas (+) debet, dan piutang (-) kredit</p>\r\n'),
('eko_011', '<p>Bidang manajemen yang menangani &nbsp;sistem informasi produksi adalah...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>&nbsp;Manajemen pemasaran</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Manajemen produksi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Manajemen keuangan</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;Manajemen akuntansi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Manajemen sumber daya&nbsp;</p>\r\n', 'b', '<p>Kegiatan manajemen produksi :<br />\r\n1. perencanaan produksi<br />\r\n2. pengendalian produksi<br />\r\n3. sistem informasi produksi</p>\r\n'),
('eko_012', '<p>&nbsp;Badan usaha yang beranggotakan dua orang atau lebih atas nama bersama dinamakan...</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>Firma&nbsp;</p>\r\n', '<p>Yayasan&nbsp;</p>\r\n', '<p>Koperasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Persekutuan komanditer</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Perseroan terbatas&nbsp;</p>\r\n', 'a', '<p>Firma adalah badan usaha yang beranggotakan dua orang atau lebih atas nama bersama.</p>\r\n'),
('eko_013', '<p style="text-align: justify;">Harga minyak dunia meningkat dari waktu&nbsp;ke waktu, tidak hanya disebabkan oleh&nbsp;meningkatnya permintaan lebih cepat&nbsp;dari pada penawaran, juga disebabkan&nbsp;persediaan di dalam bumi yang menyusut.Kondisi ini menggambarkan konsep ....</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 'ekonomi', '<p>kelangkaan</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>sumber daya alam</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>sumber daya yang tidak dapat &nbsp;diperbaharui</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>biaya peluang</p>\r\n', '<p>barang-barang ekonomis&nbsp;</p>\r\n', 'a', '<p>Kondisi diatas menggambarkan&nbsp;<strong>kelangkaan</strong></p>\r\n'),
('eko_014', '<p style="text-align: justify;">Kurva kemungkinan produksi (production &nbsp;possibility frontier) menggambarkan jika&nbsp;menambah produksi barang X, maka&nbsp;produksi barang Y harus dikurangi. Ini&nbsp;berarti kurva kemungkinan produksi&nbsp;memiliki lereng (slope) ....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'ekonomi', '<p>positif</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>negatif</p>\r\n', '<p>datar (horizontal)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>tegak (vertikal)</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>nol</p>\r\n', 'b', '<p>kurva kemungkinan produksi&nbsp;memiliki lereng (slope) negatif</p>\r\n'),
('eko_015', '<p style="text-align: justify;">Ketika mengonsumsi 5 buah mangga, nilai &nbsp;guna total yang diperoleh 200. Nilai guna&nbsp;total meningkat menjadi 250 ketika&nbsp;mengonsumsi 7 buah mangga. Berdasarkan&nbsp;dua kondisi konsumsi ini, pernyataan yang&nbsp;benar adalah ....</p>\r\n', 'ekonomi', '<p>akumulasi nilai guna total 450</p>\r\n', '<p>nilai guna marginal 50</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>nilai guna rata-rata 50</p>\r\n', '<p>nilai guna marginal 25</p>\r\n', '<p>nilai guna rata-rata 25&nbsp;</p>\r\n', 'd', '<p>pernyataan yang&nbsp;benar adalah&nbsp;nilai guna marginal 25</p>\r\n'),
('eko_016', '<p>Pengaruh penerapan kebijakan moneter yang kontraktif oleh Bank Indonesia terhadap kurva permintaan agregat adalah .....</p>', 'ekonomi', '<p>bergeser ke kanan</p>', '<p>bergeser ke kiri</p>', '<p>tetap</p>', '<p>bergeser ke kanan kemudian ke kiri</p>', '<p>bergeser ke kiri kemudian ke kanan</p>', 'a', '<p>Kebijakan moneter yang kontraktif oleh Bank Indonesia mengakibatkan kurva permintaan agregat bergeser ke kanan.</p>'),
('fis_000', '<p>Jika R adalah resistansi listrik dan L induktansi listrik; maka besaran R/L memiliki satuan ....</p>\r\n', 'fisika', '<p>ohm</p>\r\n', '<p>ohm.henry</p>\r\n', '<p>H<sup>-1</sup></p>\r\n', '<p>s</p>\r\n', '<p>Hz</p>\r\n', 'e', '<p>Listrik/Satuan : &nbsp;<br />\r\nSatuan R/L : (ohm/henry) &nbsp;<br />\r\n= ( V/A )/( Vs/A) = 1/s = Hz &nbsp;&nbsp;</p>\r\n'),
('fis_001', '<p style="text-align: justify;">Balok A dan beban gantung B dihubungkan dengan tali dan&nbsp;dipasang pada landasan licin seperti pada gambar di&nbsp;samping ini. Landasan terpasang tetap pada lantai&nbsp;mendatar, perbandingan tinggi dan panjang alas&nbsp;landasan adalah 3 : 4. Tali dianggap cukup kuat, tidak&nbsp;lentur dan massanya diabaikan, gesekan bidang dan&nbsp;katrol juga diabaikan. Jika massa A adalah 0,5 kg, massa B&nbsp;adalah 1,1 kg dan percepatan gravitasi dianggap 10 m/s2,&nbsp;maka percepatan balok A dan gaya tegangan tali&nbsp;berturut-turut adalah ... .</p>\r\n', 'fisika', '<p>5,0 m/s<sup>2</sup> dan 3,4 newton</p>\r\n', '<p>3,4 m/s<sup>2</sup> dan 5,0 newton</p>\r\n', '<p>5,0 m/s<sup>2</sup> dan 5,5 newton</p>\r\n', '<p>5,5 m/s<sup>2</sup> dan 5,0 newton</p>\r\n', '<p>5,0 m/s<sup>2</sup> dan 5,0 newton</p>\r\n', 'c', '<p>Mekanik : Gaya :</p>\r\n\r\n<p>Untuk sistem : a=&nbsp;(&Sigma;F)/(&Sigma;m)&nbsp;</p>\r\n\r\n<p>= (m<sub>B</sub>g - m<sub>A</sub>g sin?)/(m<sub>B</sub> + m<sub>A</sub>)</p>\r\n\r\n<p>=(11-3) / (1,1 + 0,5)</p>\r\n\r\n<p>= 5 m/s<sup>2</sup></p>\r\n\r\n<p>Lalu tinjau benda B : m<sub>B</sub>g -T = m<sub>B</sub>a, sehingga</p>\r\n\r\n<p>T = 11 - (1,1)(5) = 5,5 N</p>\r\n'),
('fis_002', '<p style="text-align: justify;">Sebuah pesawat diterbangkan dengan kecepatan 120 km/jam dari Bandung ke arah barat. Setelah&nbsp;terbang 30 menit, ternyata pesawat berada di atas Jatiluhur yang terletak 75 km sebelah barat dan&nbsp;20 km sebelah utara dihitung dari Bandung. Dengan anggapan perubahan terjadi karena angin yang&nbsp;kecepatannya konstan, maka dapat disimpulkan bahwa besar kecepatan angin adalah... km/jam.</p>\r\n', 'fisika', '<p>20</p>\r\n', '<p>30</p>\r\n', '<p>40</p>\r\n', '<p>50</p>\r\n', '<p>75</p>\r\n', 'd', '<p>Vektor : Penjumlahan&nbsp;<br />\r\nR = P + A, jadi pada arah utara 40 = 0 + A<sub>u</sub>, maka A<sub>u</sub> =40<br />\r\nPada arah barat : 150 = 120 + A<sub>b</sub> maka A<sub>b</sub> =30</p>\r\n\r\n<p>Sehingga A =&nbsp;&radic; (1600 + 900) = 50<br />\r\n&nbsp;</p>\r\n'),
('fis_003', '<p style="text-align: justify;">Seorang anak bermassa 40 kg berada 15 m di depan peti bermassa 8,0 kg; keduanya berada&nbsp;pada&nbsp;lantai datar yang licin. Dengan menggunakan tali, si anak menarik peti dengan gaya mendatar&nbsp;sehingga keduanya bergerak saling mendekat. Berapa jarak yang ditempuh anak, sejak mulai&nbsp;menarik tali hingga peti sampai pada si anak?</p>\r\n', 'fisika', '<p>2,0 m</p>\r\n', '<p>2,5 m</p>\r\n', '<p>4,0 m</p>\r\n', '<p>5,0 m</p>\r\n', '<p>12,5 m</p>\r\n', 'b', '<p>Mekanika : Sistem pusat massa : &nbsp;<br />\r\nm<sub>1</sub>x<sub>1</sub> =m<sub>2</sub>x<sub>2</sub>, atau (40)x = 8( 15 - x), &nbsp;<br />\r\ndidapat x = 2,5 m.&nbsp;</p>\r\n'),
('fis_004', '<p><span style="line-height:1.6em">Dua buah muatan A dan B masing-masing 4q dan &ndash;q terpisah dengan jarak L. Jika pada titik tertentu&nbsp;</span><span style="line-height:1.6em">harga medan listrik yang dihasilkan kedua muatan berharga nol, maka lokasi titik tersebut terhadap&nbsp;</span><span style="line-height:1.6em">muatan A adalah ....</span></p>\r\n', 'fisika', '<p>x = 2 L</p>\r\n', '<p>x = 1,33 L</p>\r\n', '<p>x = 0 atau L&nbsp;</p>\r\n', '<p>x = 0,5 L&nbsp;</p>\r\n', '<p>x =(1 - &radic;2)L</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'a', '<p>Listrikstatik :<br />\r\nKarena kedua muatan sumber berbeda jenis, maka titik bermedan listrik nol akan terletak di luar<br />\r\npada garis hubungnya, dengan E<sub>1</sub> = E<sub>2</sub>, tetapi berlawanan arah, sehingga q<sub>1</sub>/r<sub>1</sub><sup>2</sup> = q<sub>1</sub>/r<sub>1</sub><sup>2</sup>, atau 4/r<sup>2</sup> =1/(r -&nbsp;L)<sup>2</sup>, sehingga r/(r -&nbsp;L) = 2, atau r = 2L.</p>\r\n'),
('fis_005', '<p>Suatu muatan positif diletakkan dalam medan magnet seragam. Setelah dilepaskan dari keadaan&nbsp;rehat, maka selanjutnya muatan tersebut akan &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fisika', '<p>bergerak dengan kecepatan tetap karena gayanya yang tidak nol mempunyai besar yang tetap</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>bergerak dengan percepatan tetap karena gayanya tidak nol mempunyai besar yang tetap</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>bergerak sepanjang lintasan lingkaran dengan kelajuan tetap karena gayanya mempunyai&nbsp;komponen &nbsp;yang sejajar dengan kecepatannya</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>bergerak dipercepat sepanjang lintasan lingkaran karena gayanya mempunyai komponen yang&nbsp;sejajar dengan kecepatannya</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>tetap rehat di posisinya karena gaya dan kecepatannya awalnya nol&nbsp;</p>\r\n', 'e', '<p>Kemagnetan : Gaya magnet F = qvxB,</p>\r\n\r\n<p>jadi jika v = 0, maka F = 0, sehingga tetap rehat.</p>\r\n'),
('fis_006', '<p>Arus listrik searah (DC) sebesar 3 A yang mengalir melewati suatu filament &nbsp;menghasilkan daya listrik&nbsp;sebesar P. Jika digunakan arus bolak balik (AC) dengan arus maksimum 3A juga, maka sekarang daya&nbsp;yang dibangkitkan pada filament adalah &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fisika', '<p>P/4&nbsp;</p>\r\n', '<p>P/2&nbsp;</p>\r\n', '<p>P</p>\r\n', '<p>&nbsp;2P</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>4P</p>\r\n', 'b', '<p>Listrik searah dan bolak balik<br />\r\nPada arus searah, daya P1 = I<sup>2</sup>R, sedang pada arus bolak balik P<sub>2</sub> =&nbsp;I<sub>ef</sub><sup>2</sup>R = (I<sub>max</sub>/&radic;2)<sup>2</sup>R.<br />\r\nKarena I = I<sub>max</sub>, maka P<sub>2</sub> = P<sub>1</sub>/2.</p>\r\n'),
('fis_007', '<p style="text-align: justify;">Transformator step down dengan efisiensi 75% dihubungkan dengan tegangan primer 220 V dan&nbsp;mempunyai tegangan sekunder 110 V. Jika kuat arus sekundernya 2A, maka kuat arus primernya&nbsp;adalah ... A.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n', 'fisika', '<p>0,75&nbsp;</p>\r\n', '<p>0,80</p>\r\n', '<p>1,00</p>\r\n', '<p>1,20</p>\r\n', '<p>1,33</p>\r\n', 'e', '<p>Imbas :Transformator<br />\r\nEfisiensi = P<sub>2</sub> / P<sub>1</sub> = (V<sub>2</sub> I<sub>2</sub>) / (V<sub>1</sub> I<sub>1</sub>)<br />\r\n100 = (110)(2) / (220) I<sub>2</sub> sehingga didapat<br />\r\nI<sub>2</sub> = 100/75 = 1,33 A</p>\r\n'),
('fis_008', '<p style="text-align: justify;">Sebuah partikel bermassa 50 gram dan bermuatan +5 &micro;C dilepaskan dari keadaan diam saat berjarak&nbsp;50 cm dari partikel lain yang bermuatan -20 &micro;C. Besar percepatan awal yang dialami&nbsp;partikel&nbsp;pertama adalah ... m/s<sup>2</sup><br />\r\n<br />\r\n.</p>\r\n', 'fisika', '<p>36</p>\r\n', '<p>54</p>\r\n', '<p>65</p>\r\n', '<p>72</p>\r\n', '<p>90</p>\r\n', 'd', '<p>Mekanika dan Listrik Statik :<br />\r\na = F / m = (kQ<sub>1</sub>Q<sub>2</sub>)/(r<sup>2</sup>m)<br />\r\n= (9x10<sup>9</sup>)(20x10<sup>-6</sup>)(5x10<sup>-6</sup>)/(0,5)<sup>2</sup>(0,05) = 72 m/s<sup>2</sup></p>\r\n'),
('fis_009', '<p style="text-align: justify;">Sebuah pesawat mempunyai energi kinetik sebesar 1/12 kali energi diamnya. Jika c adalah&nbsp;kecepatan cahaya, maka laju pesawat adalah ....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fisika', '<p>5c/12&nbsp;</p>\r\n', '<p>7c/12&nbsp;</p>\r\n', '<p>5c/13</p>\r\n', '<p>7c/13</p>\r\n', '<p>12c/13</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'c', '<p>FisikaModern : Relativitas</p>\r\n\r\n<p>E<sub>k</sub> = E<sub>0</sub> (1 /&radic;1 - v<sup>2</sup>/c<sup>2</sup> &nbsp; - 1&nbsp;)= 1/12E<sub>0</sub></p>\r\n\r\n<p>maka diperoleh v = 5c/13</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('fis_011', '<p>Sebuah partikel meluruh dalam keadaan diam dengan waktu paruh 10<sup>&nbsp;-7</sup> &nbsp;detik. Bila partikel tersebut&nbsp;meluruh menjadi separuhnya saat menempuh jarak 60 meter, maka besar kecepatan gerak partikel &nbsp;mendekati angka ... m/s.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fisika', '<p>10<sup>8</sup>/&radic;5&nbsp;</p>\r\n', '<p>2x10<sup>8</sup>/&radic;5&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;4x10<sup>8</sup>/&radic;5</p>\r\n', '<p>6x10<sup>8</sup>/&radic;5</p>\r\n', '<p>6x10<sup>8</sup>/&radic;6</p>\r\n', 'd', '<p>FisikaModern :<br />\r\nRelativitas :Waktu :</p>\r\n\r\n<p>t = t<sub>0</sub> / &radic;(1 -&nbsp;v<sup>2</sup>/c<sup>2</sup>) dengan t = x/v = 60/v<br />\r\nMaka diperoleh : 60/v = 10-<sup>7</sup>/ &radic;(1 -&nbsp;v<sup>2</sup>/c<sup>2</sup>), dan didapat : v = 6x10<sup>8</sup>/&radic;5 m/s</p>\r\n'),
('fis_012', '<p style="text-align: justify;">&nbsp;Fungsi kerja suatu logam adalah 1,5 eV. Jika tetapan Planck 6,6 x <sup>10-34</sup> &nbsp;Js, &nbsp;muatan dan massa elektron&nbsp;masing-masing 1,6 x 10&nbsp;<sup>-19</sup> &nbsp;C dan 9 x 10&nbsp;<sup>-31</sup>&nbsp;&nbsp;kg, maka cahaya dengan panjang gelombang &nbsp;6800 A yang&nbsp;menumbuk logam tersebut akan mengeluarkan fotoelektron dengan momentum sebesar ... kg.m/s</p>\r\n', 'fisika', '<p>1,6 x 10<sup>-25</sup><br />\r\n&nbsp;</p>\r\n', '<p>2,4 x 10<sup>-25</sup><br />\r\n&nbsp;</p>\r\n', '<p>3,0 x 10<sup>-25</sup><br />\r\n&nbsp;</p>\r\n', '<p>4,5 x 10<sup><span style="line-height:1.6em">-25</span></sup></p>\r\n', '<p>6,6 x 10<sup><span style="line-height:1.6em">-25</span></sup></p>\r\n', 'c', '<p>FisikaModern : Dualisme Gelombang Partikel :<br />\r\nEk = hc/&lambda; &ndash;W = 0,5 x 10-19 J<br />\r\nMomentum p = &radic;(2mEk) = 3 x 10<sup>-25</sup> kg m/s</p>\r\n'),
('fis_013', '<p><strong>Perhatikan pernyataan berikut!</strong></p>\r\n\r\n<p>1) Elektorn dapat keluar dari logam saat permukaan logam disinari gelombang elektromagnetik.</p>\r\n\r\n<p>2)Lepas tidaknya elektron dari logam ditentukan oleh frekuensi cahaya yang datang.</p>\r\n\r\n<p>3)Fungsi kerja untuk setiap logam selalu sama.</p>\r\n\r\n<p>Pernyataan yang benar berkaitan dengan efek fotolistrik adalah .....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'fisika', '<p>1,2 dan 3</p>\r\n', '<p>1 dan 2</p>\r\n', '<p>1 dan 3</p>\r\n', '<p>1 saja</p>\r\n', '<p>3 saja</p>\r\n', 'b', '<p>Efek fotolistrik:</p>\r\n\r\n<p>1. Agar elektron dapat lepas dari permukaan logam.maka f&gt;fo.</p>\r\n\r\n<p>2. Ek maksimum elektron yang terlepas tidak tergantung pada intensitas cahaya yang digunakan ,hanya tergantung pada energi atau frekuensi cahaya. Tetapi inensitas cahaya yang datang ,sebading dengan jumlah elektron yang terlepas &nbsp;dari logam.</p>\r\n\r\n<p>3. Elektron-elektron dibebaskan dari permukaan logam hampir tanpa selang waktu . yaitu kurang dari 10<sup>-9</sup> sekon setelah penyinaran</p>\r\n'),
('fis_014', '<p>Kelemahan model atom Rutherford adalah ....</p>\r\n', 'fisika', '<p>Elektron terus berputar pada lintasannya</p>\r\n', '<p>Atom bersifat netral tak bermuatan listrik</p>\r\n', '<p>Elektron tidak kehilangan energi saat mengelilingi inti atom</p>\r\n', '<p>Tidak sesuai dengan eksperimen hamuran sinar&nbsp;&alpha;</p>\r\n', '<p>Elektron akan jatuh ke inti karena kehilangan energi</p>\r\n', 'e', '<p>Kelemahan teori Rutherford.</p>\r\n\r\n<ul>\r\n	<li>Elektron yang mengelilingi inti akan terus memancarkan energi berupa gelombang elektromagnet sehingga lintasnnya berbentuk spiral dan suatu saat akan jatuh ke dalam inti.</li>\r\n	<li>Tidak dapat menjelaskan kestabilan atom.</li>\r\n	<li>Tidak dapat menjelaskan spektrum garis atom hidrogen.</li>\r\n</ul>\r\n'),
('fis_015', '<p>Pada proses termodinamika, pernyataan yang menunjukkan gas mengalami proses isobarik adalah jika .........&nbsp;</p>\r\n', 'fisika', '<p>Perubahan keadaan gas yang suhunya selalu tetap</p>\r\n', '<p>Perubahan keadaan gas yang tekanannya selalu tetap</p>\r\n', '<p>kecepatan rata-rata partikel tambahan</p>\r\n', '<p>Usaha luar gas sebanding dengan suhunya</p>\r\n', '<p>suhu dan volume gas tidak mengalami perubahan</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'b', '<p>Proses isobarik pada proses termodinamika adalah proses dimana gas berubah keadaan pada tekanan (bar ) yang tetap.</p>\r\n'),
('geo_000', '<p style="text-align: justify;">Penanggulangan masalah banjir di Jakarta diupayakan melalui pembuatan kanal-kanal, danau&nbsp;penampungan air, pengerukan sungai Ciliwung. Pernyataan ini merupakan....</p>\r\n', 'geografi', '<p>pendekatan spatial</p>\r\n', '<p>pendekatan ekologi</p>\r\n', '<p>pendekatan topik</p>\r\n', '<p>pendekatan aktivitas manusia</p>\r\n', '<p>pendekatan kompleks wilayah</p>\r\n', 'a', '<p>Banjir diatasi dengan upaya yang dilakukan oleh tempat atau ruang terjadi banjir, maka dalam&nbsp;<br />\r\nkonteks ini merupakan pernyataan pendekatan spatial. &nbsp;</p>\r\n'),
('geo_001', '<p>Gempa tektonik di Papua dan Halmahera merupakan konvergen dari lempeng litosfer ....</p>\r\n', 'geografi', '<p>Lempeng Indo-Australia dengan Lempeng Pasifik</p>\r\n', '<p>Lempeng Afrika dengan Lempeng Eurasia</p>\r\n', '<p>Lempeng India-Australia dengan Lempeng Eurasia</p>\r\n', '<p>Lempeng Asia dengan Lempeng Australia</p>\r\n', '<p>Lempeng Eurasia dengan Lempeng Pasifik</p>\r\n', 'e', '<p>Gempa di Papua dan Halmahera merupakan konvergen lempeng Eurasia dengan lempeng Pasifik. &nbsp;</p>\r\n'),
('geo_002', '<p>Magma pijar, mengalami pembekuan, pendinginan sangat cepat, tidak berkristal, merupakan ....</p>\r\n', 'geografi', '<p>batuan beku dalam/tubir</p>\r\n', '<p>batuan beku sela/korok/gang</p>\r\n', '<p>batuan beku luar/leleran</p>\r\n', '<p>batuan sedimen/endapan</p>\r\n', '<p>batuan metamorf/malihan</p>\r\n', 'c', '<p>Batuan beku luar sangat cepat membeku sehingga tidak berkristal. &nbsp;</p>\r\n'),
('geo_003', '<p>Seismograf pada stasion gempa mencatat gelombang primer diterima pukul 20.20.10 dan<br />\r\ngelombang sekunder pada pukul 20.23.00. Jarak episentrumnya ialah ....</p>\r\n', 'geografi', '<p>330 km</p>\r\n', '<p>620 km</p>\r\n', '<p>990 km</p>\r\n', '<p>1830 km</p>\r\n', '<p>2300 km</p>\r\n', 'd', '<p>Hukum Laska &nbsp;<br />\r\n? = {(S -P) - 1&#39;} x 1000 km</p>\r\n\r\n<p>&nbsp;S : 20 23 00</p>\r\n\r\n<p>&nbsp;P : 20 20 10</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2.50&rarr;2 50/60&nbsp;= 2 5&#39;/6 - 1&#39;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = 1 5/6 x 1000km<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; = 1830 km&nbsp;</p>\r\n'),
('geo_004', '<p>Wilayah Indonesia merupakan &ldquo;jalur gunung api&rdquo; karena ....</p>\r\n', 'geografi', '<p>terdapat busur dalam dan busur luar vulkanik</p>\r\n', '<p>wilayah sebaran gunung api terbanyak</p>\r\n', '<p>gunung api di Indonesia termasuk aktif dan erupsi eksplosif</p>\r\n', '<p>berada pada zona geologis tiga lempeng litosfer dan pertemuan jalur pegunungan</p>\r\n', '<p>merupakan tempat teraglomerasinya zat asthenosfer</p>\r\n', 'd', '<p>Wilayah Indonesia merupakan jalur gunung api &ldquo;ring of fire&rdquo; karena pertumbukan (konvergen) zona&nbsp;<br />\r\ngeologis 3 (tiga) lempeng dan pertemuan jalur pegunungan.&nbsp;</p>\r\n'),
('geo_005', '<p>Pada relief bumi berupa dome muda pola sungai cenderung ....</p>\r\n', 'geografi', '<p>pinnate</p>\r\n', '<p>trellis</p>\r\n', '<p>denritik</p>\r\n', '<p>radial</p>\r\n', '<p>anular</p>\r\n', 'd', '<p>Pola radial (radial centrifugal) pada relief dome/kubah muda. &nbsp;</p>\r\n'),
('geo_006', '<p>Berdasarkan relief dasar lautnya, wilayah laut yang sebenarnya merupakan kaki benua, 200 &ndash;1800m dengan kemiringan sampai 5&ordm;, ialah ....</p>\r\n', 'geografi', '<p>continental shelf</p>\r\n', '<p>continental slope</p>\r\n', '<p>ocean floor</p>\r\n', '<p>trench</p>\r\n', '<p>through</p>\r\n', 'b', '<p><em>Continental slope</em>, kaki benua, kemiringan sampai 1&ordm;, kedalaman 200 &ndash; 1800 m.&nbsp;</p>\r\n'),
('geo_007', '<p>Gunung Ceremai pada triangulasi 3000 m dpl berdasarkan gradien barometer vertikal dapat<br />\r\ndiketahui tekanan udaranya ialah ....</p>\r\n', 'geografi', '<p>220 mb</p>\r\n', '<p>375 mb</p>\r\n', '<p>425 mb</p>\r\n', '<p>550 mb</p>\r\n', '<p>660 mb</p>\r\n', 'e', '<p>Gunung Ceremai &nbsp;= 1013 mb - 1 mb (3000m/ 8,5 m)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= 1013 &nbsp;mb - mb (352,94)</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= 660,06 mb&nbsp;&asymp; 660 mb<br />\r\n&nbsp;</p>\r\n'),
('geo_008', '<p>&nbsp;Suatu negara yang memiliki angka&nbsp;ketergantungan sangat tinggi, dapat<br />\r\ntercermin dari grafik keadaan penduduk&nbsp;sebuah piramida yang berbentuk &hellip; .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'geografi', '<p>constringtive</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;ekspansive</p>\r\n', '<p>stationary</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>irregular</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>ellips</p>\r\n', 'b', '<p>grafik keadaan penduduk&nbsp;sebuah piramida yang berbentuk&nbsp;ekspansive</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('geo_009', '<p>Angin yang berputar berhembus dari daerah &nbsp;yang bertekanan maksimum ke daerah yang&nbsp;bertekanan minimum dengan arah masuk &nbsp;ke dalam disebut angin &hellip;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'geografi', '<p>siklon</p>\r\n', '<p>passat</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>muson</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>anti siklon</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>anti passat&nbsp;</p>\r\n', 'a', '<p>angin&nbsp;siklon</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('geo_011', '<p>Lapisan udara yang mempunyai peranan &nbsp;&nbsp;penting dalam media komunikasi, sebab&nbsp;dapat berfungsi dalam memantulkan&nbsp;gelombang radio dan merupakan lapisan&nbsp;inverse suhu adalah lapisan &hellip; .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'geografi', '<p>mesosfer</p>\r\n', '<p>stratosfer</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>termosfer</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>troposfer</p>\r\n', '<p>dissipasisfer&nbsp;</p>\r\n', 'c', '<p>lapisan&nbsp;inverse suhu adalah lapisan&nbsp;termosfer</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('geo_012', '<p>&nbsp;Pelepasan uap air dari tumbuh-tumbuhan &nbsp;melalui stomata atau mulut daun dalam&nbsp;proses daur hidrologi disebut &hellip; .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'geografi', '<p>presipitasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>sublimasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>evaporasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>kondensasi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>transpirasi&nbsp;</p>\r\n', 'e', '<p>transpirasi&nbsp;disebut&nbsp;&nbsp;Pelepasan uap air dari tumbuh-tumbuhan &nbsp;melalui stomata atau mulut daun dalam&nbsp;proses daur hidrologi</p>\r\n'),
('geo_013', '<p>&nbsp;Lubang-lubang di daerah karst yang&nbsp;berbentuk corong, merupakan hasil proses&nbsp;pelarutan dan pelapukan disebut &hellip; .</p>\r\n', 'geografi', '<p>ox bow lake</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>stalakmit</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>stalaktit</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>dolina</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>uvala</p>\r\n', 'd', '<p>dolina disebut&nbsp;&nbsp;Lubang-lubang di daerah karst yang&nbsp;berbentuk corong, merupakan hasil proses&nbsp;pelarutan dan pelapukan</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('geo_014', '<p>Secara umum tahapan interpretasi dalam&nbsp;citra foto atau foto udara antara lain &hellip; .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'geografi', '<p>deteksi- identifikasi-pengenalan-analisis-&nbsp;deduksi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>pengenalan-deteksi-identifikasi-deduksi-analisis</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>identifikasi-deteksi-pengenalan-analisis -deduksi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>deteksi-pengenalan-identifikasi-deduksi-analisis</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>pengenalan-identifikasi-deteksi-analisis -&nbsp;deduksi</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'a', '<p>deteksi- identifikasi-pengenalan-analisis-&nbsp;deduksi merupakan salah satu interpretasi dalam citra foto atau foto udara</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('geo_015', '<p>&nbsp;Wilayah dengan vegetasi hutan lebat,&nbsp;pohonnya tinggi dan berdaun rindang,&nbsp;tanah maupun udara lembab serta di bagian&nbsp;bawahnya sangat gelap karena sinar&nbsp;matahari tidak dapat menembusnya. Hal&nbsp;tersebut merupakan ciri dari wilayah &hellip; .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'geografi', '<p>hutan taiga</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>hutan tundra</p>\r\n', '<p>hutan musim</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>hutan hujan tropis</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>hutan sabana-stepa&nbsp;</p>\r\n', 'd', '<p>hutan hujan tropis</p>\r\n'),
('ind_000', '<p style="text-align: justify;">Cermati kutipan berikut untuk menjawab soal nomor 1 s.d. 3!<br />\r\n(1) Dalam upaya pencegahan pencemaran udara, hutan mampu menangkal polutan gas ataupun butiran padat. (2) Hasil penelitian menunjukkan bahwa volume udara yang mengandung polusi gas zon sebesar 150 ppm gas ternyata 99% terserap oleh tegukan hutan dalam waktu delapan jam. (3) Komplek industri yang mengeluarkan polutan belerang dioksida di Uni Rusia ternyata berkurang dengan adanya jalur vegetasi kayu selebar 500 m yang mengelilingi kawasan industri tersebut. (4) Tumbuhan berkayu ataupun pohon memang diandalkan dalam penyelamatan keadaan lingkungan seperti tanah, air, dan udara walaupun peran pohon tersebut sebatas pada lingkungan, yang belum akut. (5) Pohon memang tidak akan mampu menetralisasi polusi, terutama pada kawasan industri besar.</p>\r\n\r\n<p style="text-align: justify;">Ide pokok paragraf tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>pencegahan pencemaran</p>\r\n', '<p>kemampuan hutan</p>\r\n', '<p>penyelamat lingkungan</p>\r\n', '<p>populasi gas ozon</p>\r\n', '<p>penetralisasi polusi</p>\r\n', 'a', 'Teks di atas merupakan paragraf deduktif karena diawali oleh kalimat utama. Kalimat pertama\r\nmengandung ide pokok, gagasan utama, atau pikiran utama paragraf.Kalimat ini dijelaskan oleh kalimatkalimat\r\npenjelas. Kalimat kedua s.d. kalimat kelima merupakan kalimat yang menjelaskan masalah\r\npencegahan pencemaran udara.'),
('ind_001', '<p style="text-align: justify;">(1) Dalam upaya pencegahan pencemaran udara, hutan mampu menangkal polutan gas ataupun butiran padat. (2) Hasil penelitian menunjukkan bahwa volume udara yang mengandung polusi gas zon sebesar 150 ppm gas ternyata 99% terserap oleh tegukan hutan dalam waktu delapan jam. (3) Komplek industri yang mengeluarkan polutan belerang dioksida di Uni Rusia ternyata berkurang dengan adanya jalur vegetasi kayu selebar 500 m yang mengelilingi kawasan industri tersebut. (4) Tumbuhan berkayu ataupun pohon memang<br />\r\ndiandalkan dalam penyelamatan keadaan lingkungan seperti tanah, air, dan udara walaupun peran pohon tersebut sebatas pada lingkungan, yang belum akut. (5) Pohon memang tidak akan mampu menetralisasi polusi, terutama pada kawasan industri besar.</p>\r\n\r\n<p style="text-align: justify;">Kalimat yang berisi fakta terdapat pada nomor&hellip;.</p>\r\n', 'bahasa indonesia', '<p>(1) dan (2)</p>\r\n', '<p>(1) dan (5)</p>\r\n', '<p>(2) dan (3)</p>\r\n', '<p>(3) dan (4)</p>\r\n', '<p>(4) dan (5)</p>\r\n', 'c', 'Kalimat (2) merupakan hal yang benar-benar ada karena merupakan hasil penelitian. Kalimat (3) berisi\r\nkenyataan yang terjadi di Uni Rusia. Jadi kalimat kedua dan ketiga merupakan fakta. Kalimat (1), (4), dan (5)\r\nmerupakan opini.'),
('ind_002', '<p style="text-align: justify;">(1) Dalam upaya pencegahan pencemaran udara, hutan mampu menangkal polutan gas ataupun butiran padat. (2) Hasil penelitian menunjukkan bahwa volume udara yang mengandung polusi gas zon sebesar 150 ppm gas ternyata 99% terserap oleh tegukan hutan dalam waktu delapan jam. (3) Komplek industri yang mengeluarkan polutan belerang dioksida di Uni Rusia ternyata berkurang dengan adanya jalur vegetasi kayu selebar 500 m yang mengelilingi kawasan industri tersebut. (4) Tumbuhan berkayu ataupun pohon memang<br />\r\ndiandalkan dalam penyelamatan keadaan lingkungan seperti tanah, air, dan udara walaupun peran pohon tersebut sebatas pada lingkungan, yang belum akut. (5) Pohon memang tidak akan mampu menetralisasi polusi, terutama pada kawasan industri besar.</p>\r\n\r\n<p style="text-align: justify;">Kata tidak baku terdapat pada kalimat &hellip;.</p>\r\n', 'bahasa indonesia', '<p>1</p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'c', 'Kata komplek pada kalimat ketiga berasal dari kata complex (bahasa Inggris). Kata serapan yang\r\nmenggunakan huruf x seperti taxi, tex menjadi taksi, teks. Jadi, kata komplek pada kalimat ketiga seharusnya\r\nkompleks.'),
('ind_003', '<p style="text-align: justify;"><strong>Paragraf berikut untuk soal nomor 4 dan 5.</strong><br />\r\nBacalah dengan cermat!<br />\r\n(1) Situs purbakala di kawasan Kota Banda Aceh kuno saat ini dalam kondisi terbengkalai. (2) Rumput ilalang tumbuh subur di kawasan itu. (3) Makam-makam kuno peninggalan masa kerajaan Aceh yang dibuat sekitar abad ke-17 dan ke-18 berserak tak terurus. (4) Banyak yang tidak utuh dan terbelah. (5) Sebagian batu nisan berkaligrafi musnah terbawa tsunami atau diambil orang. (6) Manuskrip batu nisan berserakan dan tak diketahui lagi posisi awalnya. (7) Padahal, tulisan kaligrafi pada nisan itu mempunyai pesan dan/atau teks sejarah yang berguna.</p>\r\n\r\n<p style="text-align: justify;">Kalimat utama paragraf tersebut adalah nomor &hellip;.</p>\r\n', 'bahasa indonesia', '<p>1</p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'a', 'Teks di atas diawali oleh kalimat yang paling luas cakupannya dibandingkan kalimat lain. Kalimat kedua\r\nsampai dengan ketujuh merupakan kalimat-kalimat khusus yang menjelaskan kalimat pertama. Jadi, teks\r\ntersebut merupakan paragraf deduktif.'),
('ind_004', '<p style="text-align: justify;">Bacalah dengan cermat!<br />\r\n(1) Situs purbakala di kawasan Kota Banda Aceh kuno saat ini dalam kondisi terbengkalai. (2) Rumput ilalang tumbuh subur di kawasan itu. (3) Makam-makam kuno peninggalan masa kerajaan Aceh yang dibuat sekitar abad ke-17 dan ke-18 berserak tak terurus. (4) Banyak yang tidak utuh dan terbelah. (5) Sebagian batu nisan berkaligrafi musnah terbawa tsunami atau diambil orang. (6) Manuskrip batu nisan berserakan dan tak diketahui lagi posisi awalnya. (7) Padahal, tulisan kaligrafi pada nisan itu mempunyai pesan dan/atau teks sejarah yang berguna.</p>\r\n\r\n<p>Pernyataan yang sesuai dengan isi paragraf tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Semua makam kuno di banda Aceh musnah karena terbawa tsunami.</p>\r\n', '<p>Pemerintah diharapkan segera mengumpulkan lagi peninggalan yang ada.</p>\r\n', '<p>Kompleks makam yang hilang direnovasi kembali oleh pemerintah .</p>\r\n', '<p>Situs purbakala Banda Aceh telah ditata kembali oleh pemerintah daerah.</p>\r\n', '<p>Tulisan kaligrafi pada nisan berisi data diri yang meninggal.</p>\r\n', 'e', 'Pernyataan A, B, C, dan D tidak sesuai dengan isi paragraf. Sedangkan pernyataan E sesuai dengan kalimat\r\nketujuh.'),
('ind_005', '<p>Tabel berikut untuk soal nomor 6 dan 7.<br />\r\nPerhatikan dengan saksama!</p>\r\n\r\n<table align="left" border="1" cellpadding="1" cellspacing="1" style="height:158px; width:487px">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="1" rowspan="2">No</td>\r\n			<td colspan="1" rowspan="2">Kurs Valas</td>\r\n			<td colspan="2" rowspan="1">Kurs valas bulan juni 2011</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28 juni</td>\r\n			<td>30 juni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>GBP</td>\r\n			<td>13.700</td>\r\n			<td>13.800</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>EUR</td>\r\n			<td>12.300</td>\r\n			<td>12.400</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>AUD</td>\r\n			<td>9.000</td>\r\n			<td>9.200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>JPY(100)</td>\r\n			<td>10.700</td>\r\n			<td>10.600</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pernyataan yang sesuai dengan tabel tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Pada tanggal 28 dan 30 tiap-tiap kurs valas mengalami kenaikan.</p>\r\n', '<p>Kenaikan kurs valas tertinggi pada kurs valas nomor 3 dan 4.</p>\r\n', '<p>Kurs valas pada nomor 4 tidak mengalami kenaikan.</p>\r\n', '<p>Kenaikan kurs valas pada nomor 1, 2, dan 3 besarnya sama.</p>\r\n', '<p>Besar kenaikan kurs valas pada nomor 1 dan 2 tidak sama.</p>\r\n', 'c', 'Pernyataan A salah karena pada tanggal 28 dan 30 ada kurs valas yang naik dan ada yang turun. Pernyataan\r\nB salah karena kenaikan tertinggi terjadi pada nomor 3 saja. Pernyataan D salah karena kurs valas pada\r\nnomor 1, 2, dan 3 besarnya tidak sama. Pernyataan E salah karena kenaikan kurs valas pada nomor 1 dan 2\r\nsama.'),
('ind_006', '\r\n<table align="left" border="1" cellpadding="1" cellspacing="1" style="height:158px; width:487px">\r\n	<tbody>\r\n		<tr>\r\n			<td colspan="1" rowspan="2">No</td>\r\n			<td colspan="1" rowspan="2">Kurs Valas</td>\r\n			<td colspan="2" rowspan="1">Kurs valas bulan juni 2011</td>\r\n		</tr>\r\n		<tr>\r\n			<td>28 juni</td>\r\n			<td>30 juni</td>\r\n		</tr>\r\n		<tr>\r\n			<td>1</td>\r\n			<td>GBP</td>\r\n			<td>13.700</td>\r\n			<td>13.800</td>\r\n		</tr>\r\n		<tr>\r\n			<td>2</td>\r\n			<td>EUR</td>\r\n			<td>12.300</td>\r\n			<td>12.400</td>\r\n		</tr>\r\n		<tr>\r\n			<td>3</td>\r\n			<td>AUD</td>\r\n			<td>9.000</td>\r\n			<td>9.200</td>\r\n		</tr>\r\n		<tr>\r\n			<td>4</td>\r\n			<td>JPY(100)</td>\r\n			<td>10.700</td>\r\n			<td>10.600</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>Simpulan yang tepat berdasarkan tabel di bawah adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Kenaikan setiap kurs valas sebanding satu dengan lainnya.</p>\r\n', '<p>Kenaikan kurs valas (1) sama dengan kurs valas (4)</p>\r\n', '<p>Kenaikan rendah terjadi pada kurs valas nomor (3).</p>\r\n', '<p>Kurs valas mengalami kenaikan setiap hari.</p>\r\n', '<p>Kenaikan kurs valas tanggal 28 ke tanggal 30 Juni relatif stabil.</p>\r\n', 'e', 'Simpulan A salah karena tidak setiap kurs valas mengalami kenikan. Simpulan B salah karena kurs valas nomor (4) mengalami penurunan bukan kenaikan. Simpulan C salah karena kurs valas nomor (3) mengalami kenaikan tertinggi. Simpulan D salah karena ada kurs valas yang mengalami penurunan.'),
('ind_007', '<p><strong>Paragraf berikut untuk soal nomor 8 dan 9.</strong><br />\r\nBacalah dengan cermat!<br />\r\nSebermula ada sebulan selangnya, maka pada suatu hari raja semayam di balairung diadap oleh segala menteri hulubalang dan rakyat sekalian. Maka barang siapa bercakap mengobati raja itu; jikalau sembuh penyakitnya, diambil raja akan menantu. (Hikayat Patani)</p>\r\n\r\n<p>Karakteristik yang menggambarkan bahwa naskah tersebut karya Sastra melayu Klasik adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>istanasentris dan kesaktian</p>\r\n', '<p>istanasentris dan struktur kalimat</p>\r\n', '<p>struktur kalimat rancu dan kemustahilan</p>\r\n', '<p>kemustahilan, tokohnya binatang</p>\r\n', '<p>tokohnya binatang, kesaktian seseorang</p>\r\n', 'a', 'Penggalan hikayat di atas menyajikan tokoh raja yang merupakan salah satu karakteristik hikayat. Di samping itu, dikisahkan juga secara implisit kesaktian seseorang yang cakap atau mampu mengobati raja.'),
('ind_008', '<p><strong>Paragraf berikut untuk soal nomor 8 </strong><br />\r\nBacalah dengan cermat!<br />\r\nSebermula ada sebulan selangnya, maka pada suatu hari raja semayam di balairung diadap oleh segala menteri hulubalang dan rakyat sekalian. Maka barang siapa bercakap mengobati raja itu; jikalau sembuh penyakitnya, diambil raja akan menantu. (Hikayat Patani)</p>\r\n\r\n<p>Isi cerita yang diungkapkan dalam kutipan tersebut adalah …. &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Di balairung raja berjanji akan mengambil menantu bagi yang dapat menyembuhkan penyakitnya.</p>\r\n', '<p>Siapa pun yang mengobati raja di balairung akan diambil menantu di hadapan menteri dan\r\nhulubalang.</p>\r\n', '<p>Raja yang bersemayam karena sakit, membuat janji kepada menantunya</p>\r\n', '<p>Para menteri dan hulubalang menghadap raja di balairung sambil mengobati raja.</p>\r\n', '<p>Rasa sakit raja ketika bersemayam di balairung terobati karena raja akan mengambil menantu.</p>\r\n', 'a', 'Penggalan hikayat tersebut bercerita tentang seorang raja. Raja mengatakan bahwa siapa pun orangnya\r\nyang mampu mengobati raja akan dijadikan menantu. Jadi, hikayat di atas berisi janjinseorang raja.');
INSERT INTO `try_soal` (`id_soal`, `soal`, `mata_pelajaran`, `plh_a`, `plh_b`, `plh_c`, `plh_d`, `plh_e`, `jwb_soal`, `penjelasan`) VALUES
('ind_009', '<p>Bacalah dengan cermat!<br />\r\nMaka apabila sampailah dekat kepada kampung orang yang empunya kampung itu melihat akan dia, maka diusirnyalah dengan kayu, maka si Miskin itu pun larilah, ia lalu ke pasar. Maka, apabila dilihat oleh orang pasar itu si Miskin datang, mereka masing-masing pun datang, ada yang melontari dengan batu, ada yang memalu dengan kayu, maka si Miskin itu pun larilah tunggang langgang. Tubuhnya habis berlumur darah. Maka, menangislah ia tersedu-sedu sepanjang jalan itu dengan tersangat lapar dahaganya seperti akan matilah rasanya. Maka ia pun bertemu dengan tempat orang membuangkan sampah-sampah. Maka, berhentilah ia di sana, maka dicaharinyalah di dalam sampah yang bertimbun itu barang yang boleh dimakannya.(Hikayat Si Miskin)</p>\r\n\r\n<p>Nilai moral yang kurang baik dalam kutipan tersebut adalah …. &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Kepedulian masyarakat pada kehidupan sekitarnya.</p>\r\n', '<p>Ketidakpedulian masyarakat kepada oang miskin.</p>\r\n', '<p>Sikap orang miskin yang tetap bertahan hidup.</p>\r\n', '<p>Perlakuan orang kampung kepada orang pasar.</p>\r\n', '<p>Pengusiran orang miskin dari kampung atau kota.</p>\r\n', 'b', 'Jawaban yang berisi nilai moral kurang baik adalah A dan E. jawaban E kurang tepat karena dalam penggalan tidak disinggung masalah kota. Cerita didominasi oleh sikap-sikap ketidakpedulian warga masyarakat kepada si Miskin.'),
('ind_010', '<p style="text-align: justify;">Bacalah dengan cermat!<br />\r\nMereka melihat harimau sangat lincah melepaskan pak Balam dari cengkeramannya. Harimau itu menghilang ke dalam hutan yang sangat gelap di tengah malam itu. Dengan cepat mereka berlari dan menuju ke tempat Pak Balam terbaring. Dalam cahaya samar-samar dari potongan kayu yang menyala, mereka melihat\r\nbetapa kaki kiri pak Balam lukanya bengkak sekali, betisnya kena gigitan harimau, daging dan otot betis koyak hingga kelihatan tulangnya yang putih, dan darah mengalir berwarna merah.<br />\r\n\r\nFrasa adjektiva yang tepat untuk memperbaiki frasa yang bercetak miring dalam paragraf tersebut adalah …. &hellip;.</p>\r\n', 'bahasa indonesia', '<p>sangat besar, besar benar, teramat banyak</p>\r\n', '<p>sangat besar, amat parah, amat banyak</p>\r\n', '<p>cukup besar, sakit sekali, bagaikan air</p>\r\n', '<p>agak besar, dalam sekali, tak tertahankan</p>\r\n', '<p>tinggi besar, paling lebar, seperti air</p>\r\n', 'b', 'Frasa adjektiva untuk menggantikan sangat lincah ada dua kemungkinan yaitu sangat besar dan tinggi besar karena cukup besar dan agak besar kurang pas untuk menunjukkan keterkejutan. Jadi, jawaban C dan D sudah tereliminasi. Frasa adjektiva besar benar dan paling lebar tidak pas menggantikan bengkak sekali.\r\nDengan demikian jawaban A dan E juga tereliminasi. Jadi, selain frasa kedua yaitu amat parah, frasa ketiga pun telah diketahui yaitu amat banyak.'),
('ind_011', '<p style="text-align: justify;">Cermatilah paragraf berikut!<br />\r\nJasa-jasa ekologi yang terdapat di Kawasan Ekosistem Leuser mencakup penyediaan air bersih,pengendalian erosi sehingga banjir, pengaturan iklim lokal, penyerapan karbon, perikanan air tawar, bahwa keindahan alam pendukung industri pariwisata. Jasa-jasa ini hanya dapat tersedia maupun Kawasan Ekosistem Leuser dijaga dan dipelihara fungsinya sebagai suatu kesatuan interaksi yang utuh.</p>\r\n\r\n<p style="text-align: justify;">kalimat yang&nbsp; berisi sebab akibat terletak pada ....</p>\r\n', 'bahasa indonesia', '<p>pengendalian erosi sehingga banjir</p>\r\n', '<p>Jasa-jasa ekologi yang terdapat di Kawasan Ekosistem Leuser mencakup penyediaan air bersih</p>\r\n', '<p>Jasa-jasa ini hanya dapat tersedia maupun Kawasan Ekosistem<br />\r\nLeuser</p>\r\n', '<p>&nbsp;Jasa-jasa ekologi&nbsp; tersedia di Kawasan Ekosistem Leuser&nbsp; jika dipelihara fungsinya sebagai suatu kesatuan interaksi yang utuh.</p>\r\n', '<p>Jasa-jasa ekologi yang terdapat di Kawasan Ekosistem Leuser mencakup penyediaan air bersih</p>\r\n', 'd', ''),
('ind_012', '<p>Cermati topik pidato dan kalimat persuasif yang terdapat dalam paragraph tersebut!<br />\r\n<strong>Topik: Kesehatan usus</strong><br />\r\n(1) Saudara, data yang dikeluarkan US National Library menyebutkan kanker usus menempati urutan ke-2 penyebab kematian sedangkan di ndonesia dari RSCM Jakarta menyebutkan, setiap tahun menerima lima puluh pasien baru penderita kanker usus. (2) Kanker usus terjadi karena transit makanan dalam usus besar dalam waktu yang lama dan ditandai oleh buang air besar tidak setiap hari. (3) Hal ini akan menyebabkan zat karsinogenetik (penyebab kanker) dalam makanan mengendap pada dinding usus sehingga memicu pertumbuhan kanker. (4) Untuk mencegah kanker usus sebaiknya kita mengubah pola makan dari yang banyak mengandung lemak menjadi makanan yang kaya serat. (5) Penuhilah kebutuhan serat Anda dari sayur-sayuran dan buah-buahan segar. (6) Saat ini untuk mendapatkan buah-buahan segar tidaklah sulit karena hampir setiap&nbsp; pojok di tepi jalan terdapat penjual buah.<br />\r\nKalimat persuasif pada kutipan pidato tersebut yang sesuai dengan topik adalah nomor &hellip;.</p>\r\n', 'bahasa indonesia', '<p>(1) dan (2)</p>\r\n', '<p>(2) dan (3)</p>\r\n', '<p>(3) dan (4)</p>\r\n', '<p>(4) dan (5)</p>\r\n', '<p>(5) dan (6)</p>\r\n', 'd', ''),
('ind_013', '<p style="text-align: justify;">Cermati paragraf berikut!<br />\r\nMeja kecil itu unik sekali. Bentuknya bulat lonjong. Di salah satu sisinya terdapat sebuah laci yang diberi ukiran di bagian tutupnya. Kaki mejanya berjumlah empat. . . . . Antarkaki dihubungkan dengan anyaman rotan untuk memperkuat berdirinya meja tersebut.<br />\r\nKalimat deskripsi yang tepat untuk melengkapi paragraf tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Bentuknya seperti kaki kucing yang mencengkeram kukunya.</p>\r\n', '<p>Fungsi kaki bagi meja untuk penahan permukaan meja kecil.</p>\r\n', '<p>Memang banyak orag membuat kaki meja seperti kaki binatang.</p>\r\n', '<p>Bentuk yang sering digunakan untuk kaki meja beragam.</p>\r\n', '<p>Kekuatan meja sangat bergantung kepada kekuatan kakinya.</p>\r\n', 'a', ''),
('ind_014', '<p>Cermatilah pantun berikut! Pergi berlibur ke pantai<br />\r\nPulangnya naik odong-odong<br />\r\nJadilah anak yang pandai<br />\r\n&hellip;.<br />\r\nLarik yang tepat untuk melengkapi pantun tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Jangan selalu tolong-menolong</p>\r\n', '<p>Perangai baik dan tidak sombong</p>\r\n', '<p>Punya teman suka menolong</p>\r\n', '<p>Jangan bicara omong kosong</p>\r\n', '<p>Punya otak janganlah bolong</p>\r\n', 'b', ''),
('ind_015', '<p>Cermatilah puisi berikut!Kehidupan<br />\r\nDialah sang sutradara<br />\r\nDan kita semua &hellip;<br />\r\nMaka persoalan yang utama<br />\r\nBagaimana memainkan peran kita<br />\r\nKarena kita tak bisa memilih<br />\r\nMari bermain dalam bimbingan-Nya<br />\r\nDiksi yang tepat untuk melengkapi larik kedua puisi tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>penontonnya</p>\r\n', '<p>aktornya</p>\r\n', '<p>artisnya</p>\r\n', '<p>oratornya</p>\r\n', '<p>penerusnya</p>\r\n', 'b', ''),
('ind_016', '<p style="text-align: justify;">Cermatilah paragraf narasi berikut!<br />\r\nOmbak yang bergulung lembut sore itu benar-benar menunjukkan pesona. Perahu dengan layar warna warni menghias diorama nyata alam terbuka. Kilau rona kemuning bias sinar matahari sore. Sementara itu, wajah kecut wanita muda berpaling bahwa pesona keindahan alam tak mau berpihak pada kisah asmaranya. Pemuda yang telah melukis kisah indah di hatinya ternyata tega berkhianat. Kesuciannya dirampas karena janjijanjikosong. Dia merenung, ternyata keimanannya dikalahkan hanya dengan pujian memabokkan dan &hellip;. Rasanya tinggal kekecewaan yang sedang dilempar ke ufuk biar tenggelam, tetapi mana mungkin?<br />\r\nUngkapan yang tepat untuk melengkapi paragraf tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>membuka hati</p>\r\n', '<p>kebahagiaan semu</p>\r\n', '<p>mulut manisnya</p>\r\n', '<p>mulut berbisa</p>\r\n', '<p>kelembutan hati</p>\r\n', 'c', ''),
('ind_017', '<p style="text-align: justify;">Cermatilah paragraf berikut!<br />\r\nSetiap orang memiliki perbedaan, mulai perbedaan fisik, pola berpikir, cara merespon, dan cara<br />\r\nmempelajari hal yang baru. Dalam hal belajar, setiap orang memiliki kelebihan dan kekurangan dalam menyerap pelajaran. Bahkan, dapat dipastikan setiap orang menerapkan cara belajar yang berbeda-beda. &hellip;.<br />\r\nSimpulan yang tepat untuk melengkapi akhir paragraf tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Oleh karena itu, kita harus menerima kekurangan orang lain.</p>\r\n', '<p>Dengan demikian, setiap manusia memiliki kekhususan.</p>\r\n', '<p>Jadi, janganlah memaksakan kehendak kepada orang lain.</p>\r\n', '<p>Setiap orang harus belajar dengan cara yang berbeda-beda.</p>\r\n', '<p>Belajar merupakan kebutuhan setiap manusia di dunia.</p>\r\n', 'b', ''),
('ind_018', '<p style="text-align: justify;">Cermatilah tajuk berikut untuk menjawab soal nomor 19 !<br />\r\nBank Dunia mengingatkan beban berat yang ditanggung anggaran pendapatan dan belanja Negara terkait subsidi bahan bakar minyak (BBM). Peringatan itu bukanlah yang pertama. Bahkan, bukan sekadar peringatan juga disertai saran dan jalan keluar. Pemerintah pun bukan tidak menyadari ancaman pembengkakan subsidi itu. Sejak awal, pemerintah telah menugaskan kalangan perguruan tinggi untuk melakukan kajian yang akan dipakai sebagai dasar penetapan kebijakan pengelolaan BBM bersubsidi. Beberapa opsi telah dihasilkan, seperti menaikkan harga dan membatasi pemakaian. Jika pemerintah mengambil opsi menaikkan harga BBM bersubsidi secara terukur disertai kompensasi bagi masyarakat miskin, mungkin lebih bisa diterima masyarakat. Apalagi, jika penghematan anggaran subsidi itu benar-benar untuk alokasi peningkatan anggaran belanja pembangunan infrastruktur.</p>\r\n\r\n<p style="text-align: justify;">Opini penulis dalah tajuk tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Bank dunia harus turun tangan mengatasi masalah BBM bersubsidi di tanah air ini.</p>\r\n', '<p>Penghematan anggaran subsidi harus dialokasikan untuk anggaran belanja pembangunan<br />\r\ninfrastruktur.</p>\r\n', '<p>Pemerintah hendaknya menyadari ancaman pembengkakan subsidi di tanah air ini.</p>\r\n', '<p>Pemerintah sebaiknya menaikkan harga BBM bersubsidi disertai kompensasi bagi masyarakat miskin.</p>\r\n', '<p>Penghematan anggaran subsidi BBM digunakan untuk peningkatan belanja negara.</p>\r\n', 'd', 'Opini yang hendak disampaikan penulis berkaitan dengan upaya yang sebaiknya dilakukan pemerintah dalam pengelolaan BBM bersubsidi agar tidak membebani anggaran pendapatan dan belanja negara. Hal ini terlihat sejak kalimat pertama yang diperkuat dengan fakta peringatan dari Bank Dunia sampai dengan\r\nmunculnya opsi. Penulis memberikan masukan kepada pemerintah bahwa jika pemerintah mengambil opsi menaikkan harga BBM bersubsisi secara terukur disertai kompensasi bagi masyarakat miskin, mungkin lebih bisa diterima masyarakat.'),
('ind_019', '<p style="text-align: justify;">Cermatilah tajuk berikut untuk menjawab soal nomor&nbsp; 20!<br />\r\nBank Dunia mengingatkan beban berat yang ditanggung anggaran pendapatan dan belanja Negara terkait subsidi bahan bakar minyak (BBM). Peringatan itu bukanlah yang pertama. Bahkan, bukan sekadar peringatan juga disertai saran dan jalan keluar. Pemerintah pun bukan tidak menyadari ancaman pembengkakan subsidi itu. Sejak awal, pemerintah telah menugaskan kalangan perguruan tinggi untuk melakukan kajian yang akan dipakai sebagai dasar penetapan kebijakan pengelolaan BBM bersubsidi. Beberapa opsi telah dihasilkan, seperti menaikkan harga dan membatasi pemakaian. Jika pemerintah mengambil opsi menaikkan harga BBM bersubsidi secara terukur disertai kompensasi bagi masyarakat miskin, mungkin lebih bisa diterima masyarakat. Apalagi, jika penghematan anggaran subsidi itu benar-benar untuk alokasi peningkatan anggaran<br />\r\nbelanja pembangunan infrastruktur.</p>\r\n\r\n<p style="text-align: justify;">Opini permasalahan dalam tajuk tersebut ditujukan kepada &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Bank Dunia</p>\r\n', '<p>Perguruan tinggi</p>\r\n', '<p>Pemerintah</p>\r\n', '<p>Pengusaha</p>\r\n', '<p>Masyarakat</p>\r\n', 'c', 'Kalimat pertama yang membicarakan anggaran pendapatan dan belanja negara menunjukkan bahwa yang dituju oleh opini permasalahan dalam tulisan tersebut adalah pemerintah. Secara eksplisit muncul pada kalimat ke-3 dan ke-5.'),
('ind_020', '<p style="text-align: justify;">Kutipan novel di bawah ini untuk soal nomor 21 dan 22.<br />\r\nBacalah dengan saksama!<br />\r\nKepala sekolahnya adalah seorang pejabat penting. Ibu Frischa namanya. Caranya ber-make up jelasmmemperlihatkan dirinya sedang bertempur mati-matian melawan usia dan tampak jelas pula, dalam pertempuran itu, beliau telah kalah. Ia seorang wanita keras yang terpelajar, progresif, ambisius, dan sering habis-habisan menghina sekolah kampung. Gerak-geriknya diatur sedemikian rupa sebagai penegasan kelas sosialnya. Di dekatnya siapa pun akan merasa terintimidasi. Kalau sempat berbicara dengan beliau, ia sama seperti orang melayu yang baru belajar memasak , bumbunya cukup tiga macam: pembicaraan tentang fasilitas -fasilitas sekolah PN, anggaran ekstrakurikuler jutaan rupiah, dan tentang murid-muridnya yang telah menjadi dokter, insinyur, ahli ekonomi, pengusaha, dan orang-orang yang telah sukses di kota atau bahkan di luar negeri.<br />\r\n(Laskar Pelangi, Andrea Hirata)<br />\r\nTokoh Ibu Frischa yang angkuh dan sombong dideskripsikan melalui &hellip;.</p>\r\n', 'bahasa indonesia', '<p>dialog antartokoh</p>\r\n', '<p>lingkungan tokoh</p>\r\n', '<p>pikiran tokoh</p>\r\n', '<p>tindakan tokoh</p>\r\n', '<p>uraian langsung</p>\r\n', 'd', ''),
('ind_021', '<p style="text-align: justify;">Bacalah dengan saksama!<br />\r\nKepala sekolahnya adalah seorang pejabat penting. Ibu Frischa namanya. Caranya ber-make up jelas memperlihatkan dirinya sedang bertempur mati-matian melawan usia dan tampak jelas pula, dalam pertempuran itu, beliau telah kalah. Ia seorang wanita keras yang terpelajar, progresif, ambisius, dan sering habis-habisan menghina sekolah kampung. Gerak-geriknya diatur sedemikian rupa sebagai penegasan kelas sosialnya. Di dekatnya siapa pun akan merasa terintimidasi. Kalau sempat berbicara dengan beliau, ia sama seperti orang melayu yang baru belajar memasak , bumbunya cukup tiga macam: pembicaraan tentang fasilitas-fasilitas sekolah PN, anggaran ekstrakurikuler jutaan rupiah, dan tentang murid-muridnya yang telah menjadi dokter, insinyur, ahli ekonomi, pengusaha, dan orang-orang yang telah sukses di kota atau bahkan di luar negeri.<br />\r\n(Laskar Pelangi, Andrea Hirata)</p>\r\n\r\n<p style="text-align: justify;">Amanat yang sesuai dengan isi kutipan tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Jadilah wanita yang terpelajar, tetapi tidak angkuh dan sombong.</p>\r\n', '<p>Jangan angkuh dan sombong kalau menjadi orang yang terpelajar.</p>\r\n', '<p>Bersikaplah keras dalam memimpin, tetapi tetap santun kepada orang lain.</p>\r\n', '<p>Bersikaplah rendah hati, santun, dan sederhana sekalipun menjadi pejabat tinggi.</p>\r\n', '<p>Janganlah mengingkari kodrat atau yang diberikan kepada kita.</p>\r\n', 'd', ''),
('ind_022', '<p style="text-align: justify;">Paragraf berikut untuk soal nomor 23 .<br />\r\nBacalah dengan saksama!<br />\r\nPria kelahiran Medan, 26 Juli 1922 ini seorang penyair legendaris Indonesia yang karya-karyanya hidup dalam batin (digemari) sepanjang zaman. Salah satu bukti keabadian karyanya, pada Jumat, 8 Juni 2007, Chairil Anwar yang meninggal di Jakarta, 28 April 1949, masih dianugerahi penghargaan Dewan Kesenian Bekasi (DKB) Award 2007 untuk kategori seniman sastra.<br />\r\nChairil Anwar memang penyair besar yang menginspirasi dan mengapresiasi upaya manusia meraih kemerdekaan, termasuk perjuangan bangsa Indonesia untuk melepaskan diri dari penjajahan. Hal ini, antara lain tercermin dari sajaknya bertajuk: Krawang-Bekasi, yang disadurnya dari sajak The Young Dead Soldiers,karya Archibald MacLeish (1948).<br />\r\nDia juga menulis sajak Persetujuan dengan Bung Karno, yang merefleksikan dukungannya pada Bung Karno untuk terus mempertahankan Proklamasi 17 Agustus 1945.<br />\r\nSajaknya yang berjudul Aku dan Diponegoro banyak diapresiasi orang sebagai sajak perjuangan. Kata Aku binatang jalang dalam sajan Aku, diapresiasi sebagi dorongan kata hati rakyat Indonesia untuk bebas merdeka.</p>\r\n\r\n<p style="text-align: justify;">Hal yang menarik pada diri tokoh Chairil Anwar adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Karya-karyanya digemari masyarakat sepanjang zaman</p>\r\n', '<p>Mendapat penghargaan meski Chairl sudah lama meninggal.</p>\r\n', '<p>Karyanya menginspirasi rakyat Indonesia untuk meraih kemerdekaan.</p>\r\n', '<p>Menulis sajak untuk merefleksikan dukungannya pada presiden RI.</p>\r\n', '<p>Banyak menyadur dan menerjemahkan karya-karya bahasa asing.</p>\r\n', 'a', ''),
('ind_023', '<p style="text-align: justify;">Paragraf berikut untuk soal nomor 24.<br />\r\nBacalah dengan saksama!<br />\r\nPria kelahiran Medan, 26 Juli 1922 ini seorang penyair legendaris Indonesia yang karya-karyanya hidup dalam batin (digemari) sepanjang zaman. Salah satu bukti keabadian karyanya, pada Jumat, 8 Juni 2007, Chairil Anwar yang meninggal di Jakarta, 28 April 1949, masih dianugerahi penghargaan Dewan Kesenian Bekasi (DKB) Award 2007 untuk kategori seniman sastra.<br />\r\nChairil Anwar memang penyair besar yang menginspirasi dan mengapresiasi upaya manusia meraih kemerdekaan, termasuk perjuangan bangsa Indonesia untuk melepaskan diri dari penjajahan. Hal ini, antara lain tercermin dari sajaknya bertajuk: Krawang-Bekasi, yang disadurnya dari sajak The Young Dead Soldiers, karya Archibald MacLeish (1948).<br />\r\nDia juga menulis sajak Persetujuan dengan Bung Karno, yang merefleksikan dukungannya pada Bung Karno untuk terus mempertahankan Proklamasi 17 Agustus 1945.<br />\r\nSajaknya yang berjudul Aku dan Diponegoro banyak diapresiasi orang sebagai sajak perjuangan. Kata Aku binatang jalang dalam sajan Aku, diapresiasi sebagi dorongan kata hati rakyat Indonesia untuk bebas merdeka.</p>\r\n\r\n<p style="text-align: justify;">Mengapa Chairil Anwar meskipun sudah meninggal, masih memperoleh penghargaan DKB Award 2007?</p>\r\n', 'bahasa indonesia', '<p>Karena ia adalah penyair legendaris Indonesia yang karya-karyanya hidup sepanjang zaman.</p>\r\n', '<p>Karena penghargaan itu untuk membuktikan keabadian karya-karyanya</p>\r\n', '<p>Karena ia telah menginspirasi para pejuang kemerdekaan melalui sajak Krawang-Bekasi.</p>\r\n', '<p>Karena ia menulis sajak untuk merefleksikan dukungan kepada Bung Karno.</p>\r\n', '<p>Karena sajaknya yang berjudul Aku dan Diponegoro diapresiasi sebagai sajak perjuangan.</p>\r\n', 'a', ''),
('ind_024', '<p style="text-align: justify;">Cermati pagraf berikut!<br />\r\nHari ini hari terakhir kami berkumpul karena besok kami akan menuju ke tempat melanjutkan sekolah masingmasing. Kami &hellip; Air mata tanpa disadari &hellip;Terasa berat hati untuk berpisah karena tidak ada lagi canda gurau dan &hellip; yang menambah manis persahabatan kami.<br />\r\nKata ulang yang tepat untuk melengkapi paragraph tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>salam-salam, linang-linangan, cela-celaan</p>\r\n', '<p>bersalam-salaman, berlinang-linangan, cela-cela</p>\r\n', '<p>menyalam-nyalami, linang-linangan, cela-cela</p>\r\n', '<p>disalam-salami, linang-linangan, mencela-cela</p>\r\n', '<p>bersalam-salaman, berlinang-linang, cela-celaan</p>\r\n', 'e', ''),
('ind_025', '<p>Penulisan judul yang sesuai dengan EYD adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Membandingkan Puisi Indonesia dan Puisi Terjemahan Dalam Pembelajaran</p>\r\n', '<p>Membandingkan Puisi Indonesia dan Puisi Terjemahan dalam Pembelajaran</p>\r\n', '<p>Membandingkan Puisi Indonesia dan puisi Terjemahan dalam pembelajaran<br />\r\n&nbsp;</p>\r\n', '<p>Membandingkan puisi Indonesia dan puisi terjemahan dalam pembelajaran</p>\r\n', '<p>Membandingkan puisi Indonesia dan puisi terjemahan dalam pembelajaran</p>\r\n', 'b', ''),
('ind_026', '<p>Perhatikan topik-topik berikut!<br />\r\n1. otonomi daerah<br />\r\n2. kearifan lokal<br />\r\n3. pengelolaan wisata<br />\r\nKalimat latar belakang yang tepat berdasarkan topik-topik karya tulis tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Kearifan lokal akan meningkatkan kualitas otonomi daerah dan pengelola wisata.</p>\r\n', '<p>Pengelolaan pariwisata merupakan bagian dari otonomi daerah yang potensial.</p>\r\n', '<p>Otonomi daerah dalam peningkatan wisata perlu ditangani sungguh-sungguh.</p>\r\n', '<p>Pelaksanaan otonomi daerah saat ini diharuskan berbasis kearifan local, di antaranya dalam mengelola wisata.</p>\r\n', '<p>Setiap otonomi daerah harus melakukan kearifan lokal yang berpijak pada pengelolaan pariwisata</p>\r\n', 'd', ''),
('ind_027', '<p style="text-align: justify;">Cermati topik berikut!<br />\r\nTopik: Mengatasi penyusutan areal pertanian<br />\r\nKalimat rumusan masalah yang sesuai dengan topik tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Mengapa areal pertanian banyak dijadikan kawasan industri?</p>\r\n', '<p>Bagaimana cara mengantisipasi penyusutan areal pertanian?</p>\r\n', '<p>Siapa yang menyebabkan susutnya areal pertanian di desa-desa?</p>\r\n', '<p>Berapa banyakkah areal pertanian yang susut tahun ini?</p>\r\n', '<p>Mengapa areal pertanian di kota besar dijadikan lahan pemukiman?</p>\r\n', 'b', ''),
('ind_028', '<p style="text-align: justify;">Cermati ilustrasi berikut!<br />\r\nNovel &ldquo;Bekisar Merah&rdquo; dengan tokoh Sasi mengisahkan kehidupan penduduk Karangsoga yang miskin. Pemaparan alam pedesaan sangat kuat. Tokoh cerita digambarkan melalui suara batinnya. Penulisannya sangat akrab dengan situasi pedesaan dan kemiskinan.<br />\r\nKalimat resensi yang menyatakan keunggulan novel tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p style="text-align: justify;">Penduduk Karangsoga yang miskin diangkat oleh penulis &ldquo;Bekisar Merah&rdquo; agar kita lebih paham memaknai kemiskinan.</p>\r\n', '<p style="text-align: justify;">Novel ini mengisahkan tokoh-tokoh yang hidup di Karangsoga, termasuk Sasi yang hidup dalam kemiskinan.</p>\r\n', '<p style="text-align: justify;">Novel ini menggambarkan batin tokoh-tokoh yang miskin yang tinggal di Karangsoga tempat tinggal penulis.</p>\r\n', '<p style="text-align: justify;">&ldquo;Bekisar Merah&rdquo; perlu dibaca orang yang ingin mengentaskan kemiskinan karena batin orang miskin bisa dirasakan.</p>\r\n', '<p style="text-align: justify;">Penulis yang akrab dengan alam pedesaan mampu mengangkat desa miskin Karangsoga melalui batin pelakunya dalam sebuah novel.</p>\r\n', 'e', ''),
('ind_029', '<p>Cermatilah dialog berikut!<br />\r\nHusna: Sakit apa, Mbak?<br />\r\nAstuti: Sakit perut, sudah beberapa hari.<br />\r\nHusna: Mbak selalu ke dokter ini? Apa setiap hari juga banyak pasiennya?<br />\r\n(Sambil melihat beberapa pasien yang menunggu)<br />\r\nAstuti: Setahu saya begitu, setiap hari banyak dikunjungi pasien. Padahal dokter lain juga ada.<br />\r\nHusna: Dokternya punya kelebihan?<br />\r\nAstuti: &hellip;<br />\r\nHusna: O, pantas kalau begitu.<br />\r\nAstuti: Banyak orang yang sembuh ditangani dokter ini.<br />\r\nKalimat yang tepat untuk melengkapi bagian rumpang pada dialog tersebut adalah &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Ya, anaknya banyak, tujuh orang.</p>\r\n', '<p>Setahu saya dia biasa saja.</p>\r\n', '<p>Dia dokter yang bertangan dingin.</p>\r\n', '<p>Dia punya apotek yang cukup besar.</p>\r\n', '<p>Obatnya selalu obat warung saja.</p>\r\n', 'c', ''),
('ind_030', '<p style="text-align: justify;">Perhatikan penggalan paragraph beriakut dengan saksama!<br />\r\n(1)Dukungan masyarakat merupakan modal yang cukup strategis untuk meningkatkan keberhasilan tugas polisi. (2) Bersikap santun saat menangani persoalan masyarakat dapat menimbulkan empati, sekaligus memotivasi masyarakat untuk membantu tugas-tugas polisi. (3) Polisi yang kurang profesionalisme dalam menjalankan tugas akan menimbulkan rasa tidak puas dari masyarakat. (4) Memang, ini tidak mudah karena penuh dengan dinamika yang harus didesain agar sejalan dengan kondisi masyarakat. (5) Di samping itu, polisi juga harus mampu mengelaborasi kebutuhan masyarakat atas jaminan keamanan dan perlindungan.<br />\r\nKalimat yang menggunakan istilah tidak tepat terdapat pada nomor &hellip;.</p>\r\n', 'bahasa indonesia', '<p>1</p>\r\n', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', 'c', ''),
('ind_031', '<p style="text-align: justify;">Cermatilah kutipan paragraf berikut!<br />\r\nKembang sepatu di Indonesia banyak dijadikan tanaman hias, di Okinawa (Jepang) sebagai tanaman pagar. Di bagian selatan Okinawa, tanaman ini disebut bunga kehidupan sesudah mati sehingga banyak ditanam di kuburan atau pusara. Di India bunga kembang sepatu dijadikan semir sepatu dan sebagai bunga persembahan.<br />\r\nDi Malaysia disebut bunga raya dan ditetapkan sebagi bunga nasional Malaysia pada 28 Juli 1960. Jadi, tanaman kembang sepatu pemanfaatannya berbeda di beberapa negara.<br />\r\nArtikel tersebut memberi tahu kepada pembaca bahwa &hellip;.</p>\r\n', 'bahasa indonesia', '<p>Tanaman kembang sepatu banyak manfaatnya di beberapa negara.</p>\r\n', '<p>Pemanfaatan tanaman kembang sepatu di beberapa negara berbeda.</p>\r\n', '<p>Cara memanfaatkan kembang sepatu dapat dibandingkan.</p>\r\n', '<p>Tanaman hias kembang sepatu sangat bermanfaat dalam kehidupan.</p>\r\n', '<p>Kembang sepatu adalah tanaman yang unik dan bernilai.</p>\r\n', 'b', ''),
('ing_000', '<p style="text-align: justify;">In 1956 a Brazilian scientist imported some special bees into Brazil from Africa. The African bees were the same size as ordinary bees. But they were much stronger and more dangerous. A sting from one of these bees can kill a&nbsp;man of even a buffalo very quickly.&nbsp;<br />\r\nThe scientist imported the bees because he wanted to breed a new type of bees using the&nbsp;African bees and&nbsp;ordinary European bees. He wanted to combine the strength of the African bee with the safety of &nbsp; the European&nbsp;bee. Unfortunately, in 1957, 26 queen bees escaped and began to breed in the jungles of Brazil. They spread very&nbsp;quickly and since that time they have been moving slowly north- wards, covering 300 to 400 kilometers a year.&nbsp;Over 200 people have died after being stung by the killer bees, and thousands of animals have also died. By March&nbsp;1978 the killer bees had reached Venezuela and in 1980 they arrived in Panama. If they continue to move at the&nbsp;same speed will reach the USA in 1988.&nbsp;<br />\r\nToday scientists from many different countries are trying to find ways of stopping the killer bees. But if they&nbsp;cannot be stopped, the Americans, like the Brazilians, will have to learn how to live with a new a very dangerous&nbsp;visitor.</p>\r\n\r\n<p style="text-align: justify;">Which bees kill people?</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'bahasa inggris', '<p>The African bees</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>The new type of bees</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>The European bees</p>\r\n', '<p>The ordinary bees</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>The passage does not say&nbsp;</p>\r\n', 'a', '<p style="text-align: justify;">Which bees kill people?<br />\r\nPada paragraph pertama dinyatakan the African bees were the same size as ordinary bees. But they&nbsp;were much stronger and more dangerous. Asking from one of these bees can kill a man or even a&nbsp;buffalo very quickly. Jadi sudah sangat jelas &nbsp;bees (=lebah) yang dapat membunuh manusia adalah&nbsp;the African bees.&nbsp;</p>\r\n'),
('ing_001', '<p style="text-align: justify;">In 1956 a Brazilian scientist imported some special bees into Brazil from Africa. The African bees were the same&nbsp;size as ordinary bees. But they were much stronger and more dangerous. A sting from one of these bees can kill a&nbsp;man of even a buffalo very quickly.<br />\r\nThe scientist imported the bees because he wanted to breed a new type of bees using the African bees and&nbsp;ordinary European bees. He wanted to combine the strength of the African bee with the safety of the European&nbsp;bee. Unfortunately, in 1957, 26 queen bees escaped and began to breed in the jungles of Brazil. They spread very&nbsp;quickly and since that time they have been moving slowly north- wards, covering 300 to 400 kilometers a year.&nbsp;Over 200 people have died after being stung by the killer bees, and thousands of animals have also died. By March&nbsp;1978 the killer bees had reached Venezuela and in 1980 they arrived in Panama. If they continue to move at the&nbsp;same speed will reach the USA in 1988.<br />\r\nToday scientists from many different countries are trying to find ways of stopping the killer bees. But if they&nbsp;cannot be stopped, the Americans, like the Brazilians, will have to learn how to live with a new a very dangerous&nbsp;visitor.</p>\r\n\r\n<p style="text-align: justify;">Which of the following is TRUE according to the&nbsp;passage?</p>\r\n', 'bahasa inggris', '<p>The imported African bees are stronger but&nbsp;not as dangerous as the European bees</p>\r\n', '<p>The African bees are smaller but more&nbsp;dangerous than the European bees</p>\r\n', '<p>A sting from the African bee is so poisonous&nbsp;that it can kill a buffalo in a very short time</p>\r\n', '<p>Scientists have been successful in stopping&nbsp;the killer bees</p>\r\n', '<p>A scientist wanted to breed a new type of&nbsp;bees that give more honey</p>\r\n', 'c', '<p style="text-align: justify;">Which of the following is TRUE according to the text? Kita periksa dengan teliti masing-masing<br />\r\npilihan yang disediakan. Pilihan A tidak benar (pernyataan but not as dangerous as the European<br />\r\nbees, salah), pilihan B tidak benar (pernyataan the African bees are smaller, salah), pilihan C benar&nbsp;sesuai dengan isi bacaan pada paragraph pertama, pilihan D tidak benar (pernyataan have been&nbsp;successful, tidak didukung oleh teks), pilihan E tidak benar (pernyataan that give more honey tidak&nbsp;tertulis dalam teks), sehingga pernyataan yang paling sesuai berdasarkan isi wacana adalah pilihan&nbsp;(C).&nbsp;</p>\r\n'),
('ing_002', '<p style="text-align: justify;">In 1956 a Brazilian scientist imported some special bees into Brazil from Africa. The African bees were the same&nbsp;size as ordinary bees. But they were much stronger and more dangerous. A sting from one of these bees can kill a&nbsp;man of even a buffalo very quickly.<br />\r\nThe scientist imported the bees because he wanted to breed a new type of bees using the African bees and&nbsp;ordinary European bees. He wanted to combine the strength of the African bee with the safety of the European&nbsp;bee. Unfortunately, in 1957, 26 queen bees escaped and began to breed in the jungles of Brazil. They spread very&nbsp;quickly and since that time they have been moving slowly north- wards, covering 300 to 400 kilometers a year.&nbsp;Over 200 people have died after being stung by the killer bees, and thousands of animals have also died. By March&nbsp;1978 the killer bees had reached Venezuela and in 1980 they arrived in Panama. If they continue to move at the&nbsp;same speed will reach the USA in 1988.<br />\r\nToday scientists from many different countries are trying to find ways of stopping the killer bees. But if they&nbsp;cannot be stopped, the Americans, like the Brazilians, will have to learn how to live with a new a very dangerous&nbsp;visitor.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Which of the following is NOT TRUE according to&nbsp;the passage?</p>\r\n', 'bahasa inggris', '<p>A Brazilian scientist wanted to have a new&nbsp;type of bees</p>\r\n', '<p>Scientists are trying to prevent the killer&nbsp;bees from moving north-wards</p>\r\n', '<p>Many people have died because of the&nbsp;poisonous sting of the African bees</p>\r\n', '<p>The dangerous bees moved to Venezuela&nbsp;before reaching Panama</p>\r\n', '<p>The imported African bees are less&nbsp;dangerous than the European ones</p>\r\n', 'e', '<p style="text-align: justify;">Which of the following is Not True according to the passage? Pilihan A sesuai dengan paragraph<br />\r\nkedua, pilihan B sesuai dengan paragraph ketiga, piliha C sesuai dengan paragraph kedua, pilihan D&nbsp;sesuai dengan paragraph ketiga, pilihan E tidak sesuai dengan isi wacana (pernyataan less&nbsp;dangerous berlawanan dengan isi &nbsp;wacana pada paragraph pertama). Jadi pilihan yang tepat adalah&nbsp;(E).</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n'),
('ing_003', '<p style="text-align: justify;">In 1956 a Brazilian scientist imported some special bees into Brazil from Africa. The African bees were the same&nbsp;size as ordinary bees. But they were much stronger and more dangerous. A sting from one of these bees can kill a&nbsp;man of even a buffalo very quickly.<br />\r\nThe scientist imported the bees because he wanted to breed a new type of bees using the African bees and&nbsp;ordinary European bees. He wanted to combine the strength of the African bee with the safety of the European&nbsp;bee. Unfortunately, in 1957, 26 queen bees escaped and began to breed in the jungles of Brazil. They spread very&nbsp;quickly and since that time they have been moving slowly north- wards, covering 300 to 400 kilometers a year.&nbsp;Over 200 people have died after being stung by the killer bees, and thousands of animals have also died. By March<br />\r\n1978 the killer bees had reached Venezuela and in 1980 they arrived in Panama. If they continue to move at the&nbsp;same speed will reach the USA in 1988.<br />\r\nToday scientists from many different countries are trying to find ways of stopping the killer bees. But if they&nbsp;cannot be stopped, the Americans, like the Brazilians, will have to learn how to live with a new a very dangerous&nbsp;visitor.</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n\r\n<p style="text-align: justify;">When the passage was written?</p>\r\n', 'bahasa inggris', '<p>The killer bees had already reached the USA</p>\r\n', '<p>Thousands of animals had already died</p>\r\n', '<p>Scientist had found ways of stopping the&nbsp;killer bees</p>\r\n', '<p>The Brazilian scientists had already bred a&nbsp;new type of bees</p>\r\n', '<p>People in Brazil had already known how to&nbsp;live with the killer bees</p>\r\n', 'b', '<p style="text-align: justify;">When the passage written&hellip;.<br />\r\nKita periksa masing-masing pilihan, pilihan A tidak benar karena tidak sesuai dengan paragraph&nbsp;ketiga&hellip;.they will reach the USA in 1988, pilihan B benar sesuai dengan paragraph kedua, pilihan C&nbsp;tidak benar karena tidak sesuai dengan paragraph keempat, pilihan D salah karena tidak&nbsp;ada&nbsp;keterangan dalam teks, pilihan E tidak benar karena tidak sesuai dengan paragraph keempat.&nbsp;</p>\r\n'),
('ing_004', '<p style="text-align: justify;">Hospitality is natural in my village. Guests arrive at any time of the day or night and they are always welcome.&nbsp;Nobody asks them, &lsquo;Why have you come?&rsquo; or &lsquo;How long are you going to stay?&rsquo; They become a part of the family.<br />\r\nThe villages are delighted to receive guests. They are fed, clothed and given presents. When guests arrive they&nbsp;are offered a pot of water to wash their hands, face, and feet. Then they are given mat or a chair to sit on.&nbsp;Previously, sherbet was offered, but now it is the custom to give a cup of tea, a depending on the time of the day.&nbsp;Guests are never asked &ldquo;Have you eaten?&rdquo; or &ldquo;Would you like something to eat or drink?&rdquo; . Food is placed before&nbsp;them and it is impolite for guests to refuse. Hospitality means giving yourself completely to guests and strangers.</p>\r\n\r\n<p style="text-align: justify;">What is the topic of the paragraph?</p>\r\n', 'bahasa inggris', '<p>Guests and strangers</p>\r\n', '<p>Hospitality in a village</p>\r\n', '<p>Rules of politeness</p>\r\n', '<p>Advice for guests</p>\r\n', '<p>The arrival of guests</p>\r\n', 'b', '<p>Informasi dapat kita temukan pada paragraph pertama kalimat pertama yaitu hospitality is natural&nbsp;in my village.&nbsp;<br />\r\n&nbsp;</p>\r\n'),
('ing_005', '<p style="text-align: justify;">Hospitality is natural in my village. Guests arrive at any time of the day or night and they are always welcome.&nbsp;Nobody asks them, &lsquo;Why have you come?&rsquo; or &lsquo;How long are you going to stay?&rsquo; They become a part of the family.<br />\r\nThe villages are delighted to receive guests. They are fed, clothed and given presents. When guests arrive they&nbsp;are offered a pot of water to wash their hands, face, and feet. Then they are given mat or a chair to sit on.&nbsp;Previously, sherbet was offered, but now it is the custom to give a cup of tea, a depending on the time of the day.&nbsp;Guests are never asked &ldquo;Have you eaten?&rdquo; or &ldquo;Would you like something to eat or drink?&rdquo; . Food is placed before&nbsp;them and it is impolite for guests to refuse. Hospitality means giving yourself completely to guests and strangers.</p>\r\n\r\n<p style="text-align: justify;">What is the main idea of the text?</p>\r\n', 'bahasa inggris', '<p>In the writer&rsquo;s village, guest are always&nbsp;received warmly</p>\r\n', '<p>Guest have to wash their hands, face, and&nbsp;feet when they arrive</p>\r\n', '<p>The hosts never ask their visitors questions</p>\r\n', '<p>Guest are usually asked about the purpose&nbsp;of their visit</p>\r\n', '<p>It is impolite to refuse food and drink&nbsp;offered by the host</p>\r\n', 'a', '<p style="text-align: justify;">Pilihan yang paling tepat adalah pilihan A yaitu in the writer&rsquo;s village, guests are always received<br />\r\nwarmly. Kata warmly = hospitality, yang bermakna keramah-tamahan, kesukaan/kesediaan&nbsp;dalam&nbsp;menerima tamu.&nbsp;<br />\r\n&nbsp;</p>\r\n'),
('ing_006', '<p style="text-align: justify;">Motion sickness comes in many forms, not just seasickness. Ninety percent of the human race is susceptible&nbsp;to motion sickness one kind or another. Some people become sick when they sit in the backseat of a car; others&nbsp;cannot read or look at a map in any kind of moving vehicle. People get motion sickness on airplanes, motorcycles,&nbsp;amusement park rides, and even on camels! Scientist have learned that motion sickness occurs when the brain is<br />\r\ntrying to make sense of a situation and there are too many conflicting messages. While the eyes are sending one&nbsp;message, the ears are trying to send a message about balance. The skin and bone joints, sensitive to air pressure,&nbsp;send another message.<br />\r\nMany people who have experienced violent motion sickness try to avoid travel. But that is not always&nbsp;possible. So travelers should employ some well-known strategies to avoid getting sick. The most useful strategy&nbsp;concern food; eat a light meal before travelling and bring along a packet of plain soda crackers to snack on&nbsp;regularly. Avoid alcoholic and carbonated beverages, high-fat, and spices. Care in choosing the location of your seat&nbsp;is another important strategy. In car, sit at the front and keep your eyes fixed on the horizon.<br />\r\nPeople who still got sick after trying these strategies can try medical help. Some rely on over - the counter&nbsp;medications , although some of them can make you sleepy. Others use simple ginger capsules to settle their&nbsp;stomach. A large number of travelers use pressure bands of their wrists. It is not clear how these bands work, but&nbsp;they do prevent motion sickness.</p>\r\n\r\n<p style="text-align: justify;">A suitable title for the text is &hellip;.</p>\r\n', 'bahasa inggris', '<p>Motion Sickness</p>\r\n', '<p>Inability to avoid Motion Sickness</p>\r\n', '<p>Effect of Motion Sickness</p>\r\n', '<p>The Worst Kind of Motion Sickness</p>\r\n', '<p>Susceptibility to Motion sickness</p>\r\n', 'a', '<p style="text-align: justify;">Judul yang paling tepat untuk wacana pada soal adalah &lsquo;motion sickness&rsquo; karena pada keseluruhan&nbsp;paragraph diceritakan tentang &nbsp;&lsquo;motion sickness&rsquo; yang terjadi dalam berbagai bentuk, dilanjutkan&nbsp;dengan penyebabnya, dan upaya-upaya yang dilakukan oleh penderitanya. &nbsp;</p>\r\n'),
('ing_007', '<p style="text-align: justify;">Motion sickness comes in many forms, not just seasickness. Ninety percent of the human race is susceptible&nbsp;to motion sickness one kind or another. Some people become sick when they sit in the backseat of a car; others&nbsp;cannot read or look at a map in any kind of moving vehicle. People get motion sickness on airplanes, motorcycles,&nbsp;amusement park rides, and even on camels! Scientist have learned that motion sickness occurs when the brain is&nbsp;trying to make sense of a situation and there are too many conflicting messages. While the eyes are sending one&nbsp;message, the ears are trying to send a message about balance. The skin and bone joints, sensitive to air pressure,&nbsp;send another message.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">Many people who have experienced violent motion sickness try to avoid travel. But that is not always&nbsp;possible. So travelers should employ some well-known strategies to avoid getting sick. The most useful strategy&nbsp;concern food; eat a light meal before travelling and bring along a packet of plain soda crackers to snack on&nbsp;regularly. Avoid alcoholic and carbonated beverages, high-fat, and spices. Care in choosing the location of your seat&nbsp;is another important strategy. In car, sit at the front and keep your eyes fixed on the horizon.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">People who still got sick after trying these strategies can try medical help. Some rely on over - the counter&nbsp;medications , although some of them can make you sleepy. Others use simple ginger capsules to settle their&nbsp;stomach. A large number of travelers use pressure bands of their wrists. It is not clear how these bands work, but&nbsp;they do prevent motion sickness.</p>\r\n\r\n<p style="text-align: justify;">A person get motion sickness because of &hellip;.</p>\r\n', 'bahasa inggris', '<p>sitting in vehicles</p>\r\n', '<p>reading a book while traveling</p>\r\n', '<p>waiting for the airplane to come</p>\r\n', '<p>the conflicting messages received by the brain</p>\r\n', '<p>watching rides in the amusement park</p>\r\n', 'd', '<p>Orang jadi mabuk karena pada saat otak bekerja terlalu banyak hal yang harus diproses (the<br />\r\nconflicting messages received by the brain). Kulit dan tulang dipengaruhi oleh tekanan udara.<br />\r\n(paragraph pertama kalimat keempat). &nbsp;</p>\r\n'),
('ing_008', '<p style="text-align: justify;">Motion sickness comes in many forms, not just seasickness. Ninety percent of the human race is susceptible&nbsp;to motion sickness one kind or another. Some people become sick when they sit in the backseat of a car; others&nbsp;cannot read or look at a map in any kind of moving vehicle. People get motion sickness on airplanes, motorcycles,&nbsp;amusement park rides, and even on camels! Scientist have learned that motion sickness occurs when the brain is<br />\r\ntrying to make sense of a situation and there are too many conflicting messages. While the eyes are sending one&nbsp;message, the ears are trying to send a message about balance. The skin and bone joints, sensitive to air pressure,&nbsp;send another message.<br />\r\nMany people who have experienced violent motion sickness try to avoid travel. But that is not always&nbsp;possible. So travelers should employ some well-known strategies to avoid getting sick. The most useful strategy&nbsp;concern food; eat a light meal before travelling and bring along a packet of plain soda crackers to snack on&nbsp;regularly. Avoid alcoholic and carbonated beverages, high-fat, and spices. Care in choosing the location of your seat&nbsp;is another important strategy. In car, sit at the front and keep your eyes fixed on the horizon&nbsp;People who still got sick after trying these strategies can try medical help. Some rely on over - the counter&nbsp;medications , although some of them can make you sleepy. Others use simple ginger capsules to settle their<br />\r\nstomach. A large number of travelers use pressure bands of their wrists. It is not clear how these bands work, but&nbsp;they do prevent motion sickness.</p>\r\n\r\n<p style="text-align: justify;">Victims of motion sickness can reduce the chance of becoming sick by doing following, except &hellip;.</p>\r\n', 'bahasa inggris', '<p>avoiding spicy foods</p>\r\n', '<p>eating a light before traveling</p>\r\n', '<p>consuming high-fat food</p>\r\n', '<p>taking the back-seat in a car</p>\r\n', '<p>not consuming alcohol</p>\r\n', 'c', '<p>Untuk mengurangi peluang terjadinya motion sickness yang jangan atau tidak &nbsp;dilakukan &nbsp;dapat<br />\r\ndilihat dari strategi makanan misalnya mengkonsumsi makanan berlemak tinggi (=high fat food).<br />\r\nSedangkan khusus untuk &nbsp;perihal naik mobil, jangan duduk dikursi belakang. Mengingat motion<br />\r\nsickness tidak hanya &lsquo;mabuk mobil&rsquo; tetapi sangat luas yang meliputi airplanes, motorcycles,<br />\r\namusement, park rides, bahkan camels, maka jawaban yang bersifat umum adalah strategi<br />\r\nmakanan pilihan (C).&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('ing_009', '<p style="text-align: justify;">Motion sickness comes in many forms, not just seasickness. Ninety percent of the human race is susceptible&nbsp;to motion sickness one kind or another. Some people become sick when they sit in the backseat of a car; others&nbsp;cannot read or look at a map in any kind of moving vehicle. People get motion sickness on airplanes, motorcycles,&nbsp;amusement park rides, and even on camels! Scientist have learned that motion sickness occurs when the brain is&nbsp;trying to make sense of a situation and there are too many conflicting messages. While the eyes are sending one&nbsp;message, the ears are trying to send a message about balance. The skin and bone joints, sensitive to air pressure,&nbsp;send another message.<br />\r\nMany people who have experienced violent motion sickness try to avoid travel. But that is not always&nbsp;possible. So travelers should employ some well-known strategies to avoid getting sick. The most useful strategy&nbsp;concern food; eat a light meal before travelling and bring along a packet of plain soda crackers to snack on&nbsp;regularly. Avoid alcoholic and carbonated beverages, high-fat, and spices. Care in choosing the location of your seat&nbsp;is another important strategy. In car, sit at the front and keep your eyes fixed on the horizon.<br />\r\nPeople who still got sick after trying these strategies can try medical help. Some rely on over - the counter&nbsp;medications , although some of them can make you sleepy. Others use simple ginger capsules to settle their&nbsp;stomach. A large number of travelers use pressure bands of their wrists. It is not clear how these bands work, but&nbsp;they do prevent motion sickness.</p>\r\n\r\n<p>The meaning of &lsquo;over the counter medication&rsquo; is medicine bought &hellip;.</p>\r\n', 'bahasa inggris', '<p>outside drugstores</p>\r\n', '<p>in small grocery stores</p>\r\n', '<p>only in drugstores</p>\r\n', '<p>by paying cash</p>\r\n', '<p>without prescription</p>\r\n', 'e', '<p style="text-align: justify;">&lsquo;Over the counter medication&rsquo; bermakna pengobatan tanpa ada rujukan secara medis, atau tanpa<br />\r\nada rujukan dari dokter (=resep) &lsquo;medicine bought without prescription&rsquo;.&nbsp;<br />\r\n&nbsp;</p>\r\n');
INSERT INTO `try_soal` (`id_soal`, `soal`, `mata_pelajaran`, `plh_a`, `plh_b`, `plh_c`, `plh_d`, `plh_e`, `jwb_soal`, `penjelasan`) VALUES
('ing_011', '<p>Motion sickness comes in many forms, not just seasickness. Ninety percent of the human race is susceptible&nbsp;to motion sickness one kind or another. Some people become sick when they sit in the backseat of a car; others&nbsp;cannot read or look at a map in any kind of moving vehicle. People get motion sickness on airplanes, motorcycles,&nbsp;amusement park rides, and even on camels! Scientist have learned that motion sickness occurs when the brain is<br />\r\ntrying to make sense of a situation and there are too many conflicting messages. While the eyes are sending one&nbsp;message, the ears are trying to send a message about balance. The skin and bone joints, sensitive to air pressure,&nbsp;send another message.<br />\r\nMany people who have experienced violent motion sickness try to avoid travel. But that is not always&nbsp;possible. So travelers should employ some well-known strategies to avoid getting sick. The most useful strategy&nbsp;concern food; eat a light meal before travelling and bring along a packet of plain soda crackers to snack on&nbsp;regularly. Avoid alcoholic and carbonated beverages, high-fat, and spices. Care in choosing the location of your seat&nbsp;is another important strategy. In car, sit at the front and keep your eyes fixed on the horizon.&nbsp;People who still got sick after trying these strategies can try medical help. Some rely on over - the counter&nbsp;medications , although some of them can make you sleepy. Others use simple ginger capsules to settle their&nbsp;stomach. A large number of travelers use pressure bands of their wrists. It is not clear how these bands work, but&nbsp;they do prevent motion sickness.</p>\r\n\r\n<p>From the text we may conclude that &hellip;.</p>\r\n', 'bahasa inggris', '<p>basically everyone tends to get sick when they are traveling</p>\r\n', '<p>there is no define solution to the problem of motion sickness</p>\r\n', '<p>medical help is the best way to cure motion sickness</p>\r\n', '<p>there are so many ways for people to stop getting motion sickness</p>\r\n', '<p>motion sickness can be overcome by any drug prescribed by a doctor</p>\r\n', 'b', '<p style="text-align: justify;">Kesimpulan umum tentang isi wacana adalah &nbsp;tidak adanya solusi yang pasti/jelas untuk dapat<br />\r\nmengobati &lsquo;motion sickess&rsquo; walaupun telah banyak upaya pencegahan yang dilakukan oleh&nbsp;penderita motion sickness ini.&nbsp;</p>\r\n\r\n<p style="text-align: justify;">&nbsp;</p>\r\n'),
('ing_012', '<p style="text-align: justify;">In the process of trying to discover the various causes of such accidents, an investigator considers&nbsp;factors to the time of day. He collects information on the number of accidents occurring during the&nbsp;various working hours of the day, and by using statistical methods he is able to show that the accident&nbsp;rate increases during the morning and also during the afternoon. Further statistical studies then reveal&nbsp;some of the major contributing factors involved in these accidents.</p>\r\n\r\n<p style="text-align: justify;">Which of the following would best begin the paragraph above?</p>\r\n', 'bahasa inggris', '<p>So far there has not been enough information about people having accidents at a work site</p>\r\n', '<p>An industrial firm is concerned about the large number of accidents occurring in its plant</p>\r\n', '<p>Investigators have found out that working hours in some industrial firms are too long</p>\r\n', '<p>The result of an investigation shows that accidents in a plant never occurs in the evening</p>\r\n', '<p>Statistics plays a very important role in eliminating the causes of accidents in a plant</p>\r\n', 'a', '<p>Sejauh ini tidak ada informasi yang memadai tentang orang-orang yag mengalami kecelakaan di&nbsp;<br />\r\ntempat kerja.&nbsp;</p>\r\n'),
('ing_013', '<p style="text-align: justify;">In the process of trying to discover the various causes of such accidents, an investigator considers&nbsp;factors to the time of day. He collects information on the number of accidents occurring during the&nbsp;various working hours of the day, and by using statistical methods he is able to show that the accident&nbsp;rate increases during the morning and also during the afternoon. Further statistical studies then reveal&nbsp;some of the major contributing factors involved in these accidents.</p>\r\n\r\n<p style="text-align: justify;">The topic of the above paragraph is &hellip;.</p>\r\n', 'bahasa inggris', '<p>the investigation of causes of accidents</p>\r\n', '<p>the role of statistics for investigators</p>\r\n', '<p>working hours and types of accidents</p>\r\n', '<p>contributions of investigators in a company</p>\r\n', '<p>major accidents in the working hours</p>\r\n', 'e', '<p>Topik yang paling sesuai untuk wacana pada soal adalah &lsquo;kecelakaan yang dominan dalam jam-jam&nbsp;kerja&rsquo;.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('ing_014', '<p style="text-align: justify;">Traditional nineteenth &ndash;century education is usually with the image of a stern teacher standing in&nbsp;front of a blackboard in a one-room schoolhouse, teaching only the three R&rsquo; s of reading, writing, and&nbsp;arithmetic, and demanding rote (mechanical repetition) learning in an atmosphere of silence and&nbsp;restraint. Accurate or not, the image conflicts sharply with the modern reality. Today, the typical public&nbsp;school offers students a diversity of subject areas, a plethora of educational materials, and a variety of&nbsp;activities from creative dramatics to journalism. The modern school complex contains an array of&nbsp;educational facilities. Within the classroom setting, students are encouraged to speak up and engage in&nbsp;guided discussion. In fact, articulate speech and debate are desirable skills. Children are encouraged to&nbsp;interrelate on class projects that are independent of the teacher.</p>\r\n\r\n<p style="text-align: justify;">Which of the following would best end the text?</p>\r\n', 'bahasa inggris', '<p>There has been a change in the teacher&rsquo;s attitude in the past few years</p>\r\n', '<p>Traditional and modern education have different goals to achieve</p>\r\n', '<p>The development in education tends to make students independent</p>\r\n', '<p>Unlike the traditional education, the modern one is less strict</p>\r\n', '<p>It is the task of modern education to make children creative</p>\r\n', 'd', '<p>Unlike the traditional education, the modern one is less strict</p>\r\n'),
('ing_015', '<p style="text-align: justify;">Traditional nineteenth &ndash;century education is usually with the image of a stern teacher standing in&nbsp;front of a blackboard in a one-room schoolhouse, teaching only the three R&rsquo; s of reading, writing, and&nbsp;arithmetic, and demanding rote (mechanical repetition) learning in an atmosphere of silence and&nbsp;restraint. Accurate or not, the image conflicts sharply with the modern reality. Today, the typical public&nbsp;school offers students a diversity of subject areas, a plethora of educational materials, and a variety of&nbsp;activities from creative dramatics to journalism. The modern school complex contains an array of&nbsp;educational facilities. Within the classroom setting, students are encouraged to speak up and engage in&nbsp;guided discussion. In fact, articulate speech and debate are desirable skills. Children are encouraged to&nbsp;interrelate on class projects that are independent of the teacher.</p>\r\n\r\n<p style="text-align: justify;">The topic of the text is &hellip;.</p>\r\n', 'bahasa inggris', '<p>the traditional nineteenth century education</p>\r\n', '<p>the freedom of students to choose from a variety of subjects</p>\r\n', '<p>the role of the teachers in education</p>\r\n', '<p>the difference between traditional and modern education</p>\r\n', '<p>the teaching of reading, writing, and arithmetic</p>\r\n', 'd', '<p>Wacana pada soal membicarakan tentang perbedaan antara pendidikan tradisional dan modern.&nbsp;</p>\r\n'),
('kim_000', '<p>Pada reaksi pemanasan 86,4 gram cuplikan yang mengandung senyawa HgO (Mr = 216) diperoleh&nbsp;3,2 gram gas oksigen (Mr = 32), menurut persamaan reaksi : 2 HgO (s) &rarr;&nbsp;2 Hg(s) + O2(g). Besarnya&nbsp;kadar HgO dalam cuplikan, adalah &hellip;.</p>\r\n', 'kimia', '<p>50%</p>\r\n', '<p>40%</p>\r\n', '<p>25%</p>\r\n', '<p>20%</p>\r\n', '<p>15%</p>\r\n', 'a', '<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 HgO (s) &rarr;&nbsp;2 Hg (s) + O<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 86,4 g &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3,2 g = 3,2/32<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 0,2 mol &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0,1 mol&nbsp;<br />\r\nKadar HgO dalam cuplikan =<u> 0,2 x 216 g &nbsp;</u>&nbsp;&nbsp; &nbsp;x &nbsp; 100% = 50%</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n'),
('kim_003', '<p>Reaksi kesetimbangan di bawah ini yang memperlihatkan hubungan antara Kp dan Kc sebagai Kp<br />\r\n=Kc(RT), adalah &hellip;.</p>\r\n\r\n<p>1.&nbsp;2 SO<sub>3</sub>(g)&nbsp;&hArr;&nbsp;2 SO<sub>2</sub>&nbsp;(g) + O<sub>2</sub>(g)</p>\r\n\r\n<p>2.&nbsp;BiCl<sub>3</sub>(aq) + H<sub>2</sub>O(l)&nbsp;&hArr;&nbsp;BiOCl(s) + 2 HCl(aq)</p>\r\n\r\n<p>3.&nbsp;PCl<sub>5</sub>(g)&nbsp;&hArr;PCl<sub>3</sub>(g) + Cl<sub>2</sub>(g)</p>\r\n\r\n<p>4.&nbsp;2 NO<sub>2</sub>(g)&nbsp;&hArr;&nbsp;N2O<sub>4</sub>&nbsp;(g)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'kimia', '<p>1 dan 2</p>\r\n', '<p>1 dan 3</p>\r\n', '<p>2 dan 3</p>\r\n', '<p>3 dan 4</p>\r\n', '<p>1 dan 4</p>\r\n', 'b', '<p>Kp=Kc(RT)<sup>?n </sup>,&nbsp;?n = jumlah koefisien gas sebelah kanan &ndash; sebelah kiri&nbsp;<br />\r\n<strong>Kp=Kc(RT)</strong> &nbsp; &nbsp;, ?n = <strong>1&nbsp;</strong></p>\r\n\r\n<p><strong>1.&nbsp;2 SO<sub>3</sub>(g)&nbsp;&hArr;&nbsp;2 SO<sub>2</sub>&nbsp;(g) + O<sub>2</sub>(g) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;?n = 3 - 2 = 1</strong></p>\r\n\r\n<p>2.&nbsp;BiCl<sub>3</sub>(aq) + H<sub>2</sub>O(l)&nbsp;&hArr;&nbsp;BiOCl(s) + 2 HCl(aq), ?n =&nbsp;<strong>0 - 0 = 0&nbsp;</strong></p>\r\n\r\n<p><strong>3.&nbsp;PCl<sub>5</sub>(g)&nbsp;&hArr;PCl<sub>3</sub>(g) + Cl<sub>2</sub>(g) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;?n = 2 -&nbsp;1 = 1&nbsp;</strong></p>\r\n\r\n<p>4.&nbsp;2 NO<sub>2</sub>(g)&nbsp;&hArr;&nbsp;N2O<sub>4</sub>&nbsp;(g) &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ?n =&nbsp;1&nbsp;- 2 = -1&nbsp;</p>\r\n\r\n<p>jadi yang memenuhi &nbsp;<strong>Kp=Kc(RT)</strong>&nbsp; adalah 1 dan 3</p>\r\n'),
('kim_004', '<p>Konfigurasi elektron dari ion <sub>29</sub>L<sup>+</sup>, adalah &hellip;.</p>\r\n', 'kimia', '<p>[Ne] 3s<sup>2</sup> 3p<sup>6</sup> 3d<sup>9</sup> 4s<sup>2</sup></p>\r\n', '<p>[Ne] 3s<sup>2</sup> 3p<sup>6</sup> 3d<sup>10</sup> 4s<sup>1</sup></p>\r\n', '<p>[Ne] 3s<sup>2</sup> 3p<sup>6</sup> 3d<sup>5</sup> 4s<sup>2</sup> 4p<sup>4</sup></p>\r\n', '<p>[Ar] 3d<sup>10</sup> 4s<sup>1</sup></p>\r\n', '<p>[Ar] 3d<sup>10</sup></p>\r\n', 'e', '<p>&nbsp; Nomor atom = jumlah proton = jumlah elektron = 29 &nbsp;<br />\r\n&nbsp; Konfigurasi elektron &nbsp;atom <sub>29&nbsp;</sub>L : 1s<sup>2</sup> 2s<sup>2</sup> 2p<sup>6</sup> &nbsp;3s<sup>2</sup>&nbsp;3p<sup>6</sup>&nbsp;3d<sup>10</sup>&nbsp;4s<sup>1</sup></p>\r\n\r\n<p><sup>&nbsp; </sup>&nbsp; Konfigurasi ion&nbsp;&nbsp;<sub>29&nbsp;</sub>L<sup>+&nbsp;</sup>: <u>1s</u><sup>2</sup><u> 2s</u><sup>2</sup><u> 2p</u><sup>6</sup><u> 3s</u><sup>2 </sup><u>3p</u><sup>6</sup> 3d<sup>10</sup> 4s<sup>0</sup></p>\r\n\r\n<p><sup>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </sup>[Ar] &nbsp;3d<sup>10</sup></p>\r\n'),
('kim_005', '<p>Senyawa dengan rumus molekul C<sub>4</sub>H<sub>8</sub>O memiliki jumlah isomer struktur sebanyak ....</p>\r\n', 'kimia', '<p>2</p>\r\n', '<p>3</p>\r\n', '<p>4</p>\r\n', '<p>5</p>\r\n', '<p>6</p>\r\n', 'b', '<p>&nbsp; &nbsp; Rumus molekul C<sub>4</sub>H<sub>8</sub>O &nbsp; &nbsp;&rarr; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;R &ndash; C HO : alkanal/aldehida<br />\r\n&nbsp; &nbsp; Rumus Umum : C<sub>n</sub>H<sub>2n</sub>O &nbsp;&rarr; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;R &ndash; CO &ndash; R : alkanon/keton&nbsp;</p>\r\n\r\n<p><sub style="line-height:1.6em">4 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;1 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 1</sub><span style="line-height:1.6em">&nbsp;</span></p>\r\n\r\n<p>R&nbsp;&ndash; CHO : CH3&nbsp;&ndash; CH2&ndash; CH2 - CHO &nbsp; &nbsp;dan &nbsp;CH3&ndash; CH &ndash; CHO&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Butanal &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;l &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;CH<sub>3&nbsp;</sub>&nbsp;2 - metilpropanal<br />\r\n&nbsp;<br />\r\nR &ndash; CO &ndash; R&rsquo; : CH<sub>3</sub>&nbsp;&ndash; CO &ndash; CH<sub>2</sub>&nbsp;-&nbsp;CH<span style="font-size:11px">3 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span>Butanon&nbsp;<br />\r\n&nbsp;<br />\r\nJumlah isomer = 3&nbsp;</p>\r\n'),
('kim_006', '<p style="text-align: justify;">Dalam kehidupan sehari-hari kebutuhan akan air merupakan kebutuhan yang primer. Jika air di&nbsp;lingkungan kita mengandung banyak garam kalsium klorida, CaCl2, yang dikenal dengan sebutan air&nbsp;sadah, maka untuk menghilangkan kesadahan tersebut dilakukan dengan cara &hellip;.<br />\r\n(1) dipanaskan sampai mendidih<br />\r\n(2) ditambahkan natrium bikarbonat<br />\r\n(3) ditambahkan air kapur</p>\r\n\r\n<p><span style="line-height:1.6em">(4) ditambahkan natrium karbonat</span></p>\r\n', 'kimia', '<p>1 dan 2</p>\r\n', '<p>2 dan 4</p>\r\n', '<p>2 dan 3&nbsp;</p>\r\n', '<p>1 ,&nbsp;3, dan 4</p>\r\n', '<p>1, 2, dan 3</p>\r\n', 'd', '<p>&nbsp; Air sadah adalah air yang mengandung ion &ndash; ion logam Ca<sup>2+</sup> dan Mg<sup>2+</sup> &nbsp; &nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; a. Air sadah tetap mengandung garam &ndash; garam :cacl<sub>2</sub>, Mgcl<sub>2,</sub>CaSO<sub>4</sub>,MgSO<sub>4</sub></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; b. Air sadah sementara mengandung garam &ndash; garam : Ca(HCO<sub>3</sub>)<sub>2</sub>, Mg(HCO<sub>3</sub>)<sub>2</sub></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;Cara menghilangkan kesadahan :&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;a. Air sadah tetap : ditambah soda, Na<sub>2</sub>CO<sub>3</sub>&nbsp;(natrium karbonat)&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp;b. Air sadah sementara : 1. dipanaskan sampai mendidih&nbsp;<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2. ditambah air kapur, Ca(OH)<sub>2</sub><br />\r\n&nbsp;<br />\r\n<br />\r\n&nbsp;</p>\r\n'),
('kim_007', '<p>Sebanyak 50 mL larutan CH<sub>3</sub>COOH 0,2 M dicampurkan ke dalam 50 mL Ca(OH)<sub>2</sub> 0,05 M . Jika Ka&nbsp;CH<sub>3</sub>COOH = 2,0 x 10 <sup>&ndash; 5</sup>, maka ph larutan yang terjadi, adalah &hellip;.</p>\r\n', 'kimia', '<p>5 &ndash; log 2</p>\r\n', '<p>5</p>\r\n', '<p>5 + log 2</p>\r\n', '<p>9</p>\r\n', '<p>9 + log 2</p>\r\n', 'a', '<p>2CH<sub>3</sub>COOH &nbsp; &nbsp; + &nbsp; &nbsp; Ca(OH)<sub>2</sub>&rarr;Ca(CH<sub>3</sub>COO)<sub>2</sub> &nbsp;&nbsp;+ 2 H<sub>2</sub>O&nbsp;<br />\r\n&nbsp;50 mL.0,2 M &nbsp; &nbsp; &nbsp; &nbsp;50 mL. 0,05 M&nbsp;<br />\r\nMula-mula : 10 mmol &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;2,5mmol</p>\r\n\r\n<p><u>Bereaksi &nbsp; : 5 mmol &nbsp; &nbsp; &nbsp; &nbsp; ~ &nbsp; &nbsp; 2,5mmol &nbsp; ~ &nbsp; 2,5mmol</u></p>\r\n\r\n<p>Sisa &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: 5mmol &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;0 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2,5mmol</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CH<sub>3</sub>COOH &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Ca(CH<sub>3</sub>COO)<sub>2 </sub>: Penyangga bersifat asam</p>\r\n\r\n<p>Ca(CH<sub>3</sub>COO)<sub>2</sub>&nbsp;&rarr; Ca<sup>2+</sup> + 2CH<sub>3</sub>COO <sup>-</sup></p>\r\n\r\n<p>2,5mmol &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;~ &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5mmol</p>\r\n\r\n<p>Rumus :[H<sup>+</sup>]=<u> Ka x [CH<sub>3</sub>COOH] </u>&nbsp;= 2,0 X 10<sup>-5</sup> x&nbsp;<u>5MMOL/100mL</u> = &nbsp;2,0 X 10<sup>-5</sup> M</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; CH<sub>3</sub>COO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 5MMOL/100mL&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>pH = 5 - log 2</p>\r\n'),
('kim_008', '<p>Pada suhu tertentu larutan jenuh L(OH)<sub>2</sub> memiliki pH = 9 + 2 log 2. Pada suhu yang sama harga Ksp&nbsp;L(OH)<sub>2</sub>, adalah &hellip;.</p>\r\n', 'kimia', '<p>4,0 x 10 <sup>&ndash; 14</sup></p>\r\n', '<p>3,2 x 10 <sup>&ndash; 14</sup></p>\r\n', '<p>1,6 x 10 <sup>&ndash; 14</sup></p>\r\n', '<p>4,0 x 10 <sup>&ndash; 15</sup></p>\r\n', '<p>3,2 x 10 <sup>&ndash; 16</sup></p>\r\n', 'b', '<p>Larutan Jenuh L(OH)<sub>2</sub>&nbsp;:&nbsp;&nbsp;pH = 9 + 2 log 2 = 9 + log 4</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;pOH = 5 - log 4&rarr;[OH<sup>-</sup>] = 4 x 10 <sup>-5</sup> M</p>\r\n\r\n<p>L(OH)<sub>2</sub> (s)&hArr; L<sup>2+</sup>(aq) + 2 OH<sup>- </sup>(aq)</p>\r\n\r\n<p>s= 2 x 10<sup> -5</sup> M&nbsp;&rarr; 4 x 10 <sup>-5</sup> M</p>\r\n\r\n<p>n =3, Ksp L(OH)<sub>2</sub> = 4S<sup>3</sup> = 4(2 x 10<sup>-5</sup>)<sup>3</sup> = 32 x 10 <sup>-15</sup> =3,2 x 10 <sup>-14</sup></p>\r\n'),
('kim_009', '<p>Suatu radio isotop A dengan waktu paruh 10 tahun disimpan pada suatu tempat selama 60 tahun.<br />\r\nJika massa awal radioisotop A = 64 gram, maka massa radioisotop yang telah meluruh sebanyak&nbsp;&hellip;.</p>\r\n', 'kimia', '<p>64 gram</p>\r\n', '<p>63 gram</p>\r\n', '<p>32 gram</p>\r\n', '<p>16 gram</p>\r\n', '<p>1 gram</p>\r\n', 'b', '<p>t &frac12; = 10 tahun, T = lama meluruh = 60 tahun&nbsp;&rarr; n = T/&nbsp;t&frac12; &nbsp;= 60/10 =6</p>\r\n\r\n<p>Sisa = Ns =(1/2)<sup>n </sup>x N<sub>0&nbsp;</sub>= (1/2)<sup>6</sup> x 64 = 1/64 x64 = 1 gram<br />\r\n&nbsp;Meluruh = No - Ns = 64 - 1 = 63 gram</p>\r\n'),
('kim_011', '<p>Sebanyak 100 mL larutan KOH 0,1 M direaksikan dengan 100 mL larutan H<sub>2</sub>SO<sub>4</sub>&nbsp;ternyata pH larutan&nbsp;yang terjadi 2 &ndash; log 5. Konsentrasi larutan H<sub>2</sub>SO<sub>4</sub> tersebut adalah &hellip;.</p>\r\n', 'kimia', '<p>0,01 M&nbsp;</p>\r\n', '<p>0,02 M&nbsp;</p>\r\n', '<p>0,05 M</p>\r\n', '<p>0,10 M</p>\r\n', '<p>0,20 M</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'd', '<p>KOH + H<sub>2</sub>SO<sub>4</sub> : pH campuran = 2 &ndash; log 5 , sisa asam kuat H<sub>2</sub>SO<sub>4</sub> , mol H<sup>+</sup> &gt; mol OH<sup>&ndash;</sup></p>\r\n\r\n<p>100 mL.0,1 M 100mL xM &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[H<sup>+</sup>] sisa = 5 x 10<sup>&ndash; 2</sup> M</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Volume campuran = 200 mL</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;mmol H<sup>+</sup> sisa = 200 x 5 x 10<sup>&ndash; 2</sup> = 10 mmol</p>\r\n\r\n<p>100 mL KOH 0,1 M =10 mmol &rarr; OH<sup>&ndash;</sup> = 10 mmol</p>\r\n\r\n<p>100 mL H<sub>2</sub>SO<sub>4</sub> x M = 100 x mmol &rarr;&nbsp;H<sup>+</sup> = 200x mmol</p>\r\n\r\n<p>mmol H<sup>+</sup> sisa = mmol H<sup>+</sup> &ndash; mmol OH<sup>&ndash;</sup></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;= (200 x) &ndash; (10) = 200 x &ndash; 10 = 10<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;200 x = 20, x = 0,1 M H<sub>2</sub>SO<sub>4</sub></p>\r\n'),
('kim_012', '<p>Diketahui beberapa reaksi karbon sebagai berikut :&nbsp;</p>\r\n<p>1. CH4 + Cl<sub>2</sub> <sup><span style="text-decoration: underline;">UV</span></sup>&gt;&nbsp;CH<sub>3</sub>Cl + HCl</p>\r\n<p>2. C<sub>2</sub>H<sub>5</sub>OH <sup><span style="text-decoration: underline;">170&ordm;C</span></sup>&gt;&nbsp;C<sub>2</sub>H<sub>4</sub> + H<sub>2</sub>O</p>\r\n<p>3. C<sub>2</sub>H<sub>4</sub>&nbsp;+ HCl &rarr;&nbsp; C<sub>2</sub>H<sub>5</sub>Cl</p>\r\n<p>4. C<sub>2</sub>H<sub>5</sub>OH + CH<sub>3</sub>COOH &nbsp; &rarr;&nbsp; CH<sub>3</sub>CHOOC<sub>2</sub>H<sub>5</sub> + H<sub>2</sub>O<br /> &nbsp;<br /> Pasangan jenis reaksi yang merupakan reaksi eliminasi dan substitusi, adalah &hellip;.&nbsp;</p>', 'kimia', '<p>1 dan 2</p>', '<p>1 dan 4</p>', '<p>2 dan 4</p>', '<p>2 dan 3</p>', '<p>3 dan 4</p>', 'c', '<p>1. CH<sub>4</sub> + Cl<sub>2</sub> <sup><span style="text-decoration: underline;">U V</span></sup>&gt;&nbsp;CH<sub>3</sub>Cl + HCl <strong>(reaksi substitusi )</strong><br /> 2. C<sub>2</sub>H<sub>5</sub>OH <span style="text-decoration: underline;"><sup>170 oC</sup></span>&gt;C<sub>2</sub>H<sub>4</sub> + H<sub>2</sub>O <strong>(reaksi eliminasi)</strong><br /> 3. C<sub>2</sub>H<sub>4</sub> + HCl &rarr;C<sub>2</sub>H<sub>5</sub>Cl (reaksi adisi/penjenuhan)<br /> 4. C<sub>2</sub>H<sub>5</sub>OH + CH<sub>3</sub>COOH&rarr; CH<sub>3</sub>COOC<sub>2</sub>H<sub>5</sub> + H<sub>2</sub>O<strong> (reaksi substitusi )</strong></p>'),
('kim_013', '<p>Diketahui konfigurasi elektron ion X&nbsp;<sup>3&ndash;</sup>: 1s<sup>2&nbsp;</sup>2s<sup>2&nbsp;</sup>2p<sup>6&nbsp;</sup>3s<sup>2&nbsp;</sup>3p<sup>6</sup><br />\r\nDalam tabel Sistem Periodik Unsur atom X&nbsp;tersebut terletak pada perioda dan golongan &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'kimia', '<p>&nbsp;3, VIIIA&nbsp;</p>\r\n', '<p>4, III B&nbsp;</p>\r\n', '<p>3, VA</p>\r\n', '<p>4, II A</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;5, III A</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'c', '<p>Konfigurasi elektron ion X <sup>3&ndash;</sup> : 1s<sup>2</sup> 2s<sup>2</sup> 2p<sup>6</sup> 3s<sup>2</sup> 3p<sup>6</sup> ( menerima 3 elektron )<br />\r\nKonfigurasi elektron atom unsur X : 1s<sup>2</sup> 2s<sup>2</sup> 2p<sup>6</sup> <u><strong>3s</strong></u><strong><sup>2</sup></strong><u><strong> 3p</strong></u><sup><strong>3</strong></sup><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<strong>Perioda 3, golongan VA</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('kim_014', '<p>&nbsp;Jika diketahui larutan HCl mengandung 18,25% massa, Mr = 36,5 dan &nbsp;massa jenis larutan 1,04&nbsp;gram/cm&nbsp;<sup>3</sup>&nbsp;maka konsentrasi larutan tersebut, adalah &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'kimia', '<p>0,52 M&nbsp;</p>\r\n', '<p>1,04 M&nbsp;</p>\r\n', '<p>2,08 M&nbsp;</p>\r\n', '<p>5,02 M</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>5,2 &nbsp; M</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'e', '<p>M =&nbsp;<u>10 &times; % massa &times; massa jenis</u>&nbsp;=&nbsp;<u>10 x 18,25 x 1,04&nbsp;</u>&nbsp; =&nbsp;<strong>5,2 M HCl</strong><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Mr &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 36,5</p>\r\n'),
('kim_015', '<p>Sebanyak 6 gram urea, Mr = 60, dilarutkan ke dalam air sampai volume 500 mL larutan. Pada<br />\r\ntemperatur yang sama isotonik dengan x gram NaOH (Mr = 40) dalam 200 mL larutan. Nilai x,&nbsp;adalah&nbsp;&hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'kimia', '<p>1,6 gram&nbsp;</p>\r\n', '<p>1,2 gram</p>\r\n', '<p>0,8 gram&nbsp;</p>\r\n', '<p>0,4 gram</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>0,2 gram</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'c', '<p>Isotonik : tekanan osmotik sama : &pi;1 = &pi;2<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; M<sub>1</sub> R T i<sub>1 </sub>= M<sub>2</sub> RT i<sub>2</sub> (RT sama )<br />\r\nM<sub>1</sub> x i<sub>1</sub> = M<sub>2</sub> x i<sub>2</sub><br />\r\n<sub>&nbsp; &nbsp;Urea</sub>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<sub>NaOH</sub><br />\r\n6/60 x 1000/500 &nbsp;x 1 = x/40 &nbsp;x 1000/200 &nbsp;x 2 (i dari NaOH = 2)<br />\r\n, 0,2 = x/4 , <strong>x=0,8 gram NaOH</strong></p>\r\n'),
('kim_016', '<p>Pada elektrolisis larutan NaCl/C diperoleh 5,6 liter gas di katoda pada keadaan standar . Muatan listrik yang dialirkan ke dalam larutan tersebut , sebanyak.....</p>', 'kimia', '<p>0,125 F</p>', '<p>0,250 F</p>', '<p>0,500 F</p>', '<p>1,000 F</p>', '<p>1,250 F</p>', 'c', '<p>Elektrolisis Larutan NaCl/C:</p>\r\n<p>NaCl(aq)&nbsp;&rarr; Na<sup>+</sup>(aq) + Cl<sup>-</sup>(aq)</p>\r\n<p>Katoda(-) : 2 H<sub>2</sub>O(l) + 2 e&nbsp;&rarr; 2 OH<sup>-</sup>(aq) + H<sub>2</sub>(g)</p>\r\n<p><span style="text-decoration: underline;">Anoda(+) : 2Cl<sup>-</sup>&nbsp;</span>&rarr; <span style="text-decoration: underline;">Cl<sub>2</sub>(g) + 2e</span></p>\r\n<p>2 H<sub>2</sub>O (l) + 2 Cl<sup>-</sup>&nbsp;&rarr; 2 OH<sup>-</sup>(aq) + <strong>H<sub>2</sub>(g) + Cl<sub>2</sub>(g)</strong></p>\r\n<p>5,6 L gas H<sub>2</sub>(STP) = 5,6 / 22,4 = 0,25 mol H<sub>2</sub></p>\r\n<p>Katoda (-) : 2 H<sub>2</sub>O(l) + 2 e&nbsp;&rarr; 2 OH-(aq) + H<sub>2</sub> (g)</p>\r\n<p><strong>0,5 mol e&nbsp;&larr;0,25 mol H <sub>2</sub></strong></p>\r\n<p><strong>=0,5 F</strong></p>'),
('kim_017', '<p>Konfigurasi elektron ion X<sup>2+</sup> yang memiliki bilangan massa 45 dan 24 neutron adalah ..........</p>', 'kimia', '<p>1s<sup>2</sup> 2s<sup>2</sup> 2p<sup>6</sup> 3s<sup>2</sup> 3p<sup>6</sup> 4s<sup>2</sup> 3d<sup>1</sup></p>', '<p>1s<sup>2</sup>&nbsp;2s<sup>2</sup>&nbsp;2p<sup>6</sup>&nbsp;3s<sup>2</sup>&nbsp;3p<sup>6</sup>&nbsp;4s1</p>', '<p>1s<sup>2</sup>&nbsp;2s<sup>2</sup>&nbsp;2p<sup>6</sup>&nbsp;3s<sup>2</sup>&nbsp;3p<sup>6</sup>&nbsp;3d<sup>1</sup></p>', '<p>1s<sup>2</sup>&nbsp;2s<sup>2</sup>&nbsp;2p<sup>6</sup>&nbsp;3s<sup>2</sup>&nbsp;3p<sup>6</sup>&nbsp;4s<sup>2</sup>&nbsp;3d<span style="font-size: 7.777778148651123px;">2</span></p>', '<p>1s<sup>2</sup>&nbsp;2s<sup>2</sup>&nbsp;2p<sup>6</sup>&nbsp;3s<sup>2</sup>&nbsp;3p<sup>6</sup>&nbsp;4s<sup>2</sup>&nbsp;3d<span style="font-size: 7.777778148651123px;">3</span></p>', 'c', '<p>dik :</p>\r\n<p>&nbsp; ion X<sup>2+</sup></p>\r\n<p>&nbsp; massa = 45</p>\r\n<p>&nbsp; neutron = 24</p>\r\n<p>&nbsp;</p>\r\n<p>1s<sup>2</sup>&nbsp;2s<sup>2</sup>&nbsp;2p<sup>6</sup>&nbsp;3s<sup>2</sup>&nbsp;3p<sup>6</sup>&nbsp;3d<sup>1&nbsp;</sup> = 19</p>\r\n<p>&nbsp;</p>'),
('kim_018', '<p>Berdasarkan tipe senyawanya , pernyataan berikut yang benar tentang alum dan dietilseng adalah......</p>', 'kimia', '<p>pada tekanan yang sama , alum mendididh pada suhu lebih tinggi daripada titik didih dietilseng.&nbsp;</p>', '<p>kelarutan alum dalam air lebih rendah daripada kelarutan etilseng</p>', '<p>Bilangan koordinat Zn pada etilseng sama dengan bilangan koordinasi AI pada alum</p>', '<p>Molekul diestilseng lebih polar daripada molekul alum</p>', '<p>pada suhu yang sama tekanan uap diestilseng lebih rendah daripada tekanan uap alum.</p>', 'a', '<p>Alum, AI<sub>2</sub>(SO<sub>4</sub>)<sub>3</sub>Senyawa anorganik. DIestilseng merupakan senyawa organik.Pada tekanan yang sama , senyawa anorganik mempunyai titik didih yang lebih tinggi daripada senyawa organik.</p>'),
('mtk_000', '<p>Supaya fungsi <em>f</em>(x) =<em>p</em>x<sup>2 </sup>&ndash; (2<em>p</em>+3)x + <em>p</em> +6 selalu bernilai positif, maka nilai p adalah</p>\r\n', 'matematika', '<p>P &lt; 0</p>\r\n', '<p>P &lt; 3/4</p>\r\n', '<p>P &gt; 3</p>\r\n', '<p>P &gt; 4</p>\r\n', '<p>0 &lt; p &lt;3/4&nbsp;</p>\r\n', 'b', '<p>Syarat fungsi kuadrat bernilai positif :D &gt;0</p>\r\n\r\n<p>{-(2p+3)}<sup>2&nbsp;</sup>-4x p x (p+6) &gt;0</p>\r\n\r\n<p>(4p<sup>2</sup> +12p +9) - 4p<sup>2</sup> -24p&gt;0</p>\r\n\r\n<p>-12p+9&gt;0</p>\r\n\r\n<p>-12p&gt;-9</p>\r\n\r\n<p>p&gt;-9/-12</p>\r\n\r\n<p>p&gt;3/4</p>\r\n'),
('mtk_001', '<p>Yang ekivalen (setara) dengan pernyataan ~p &rArr;&nbsp;q adalah pernyataan ....</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'matematika', '<p>&nbsp;p v&nbsp;q&nbsp;</p>\r\n', '<p>~p v q</p>\r\n', '<p>p&rArr;q</p>\r\n', '<p>p&rArr;~q</p>\r\n', '<p>p&nbsp;?&nbsp;~q</p>\r\n', 'a', '<p>~ p &rArr;q = ~(~ p) ? v&nbsp;q = p v&nbsp;q</p>\r\n'),
('mtk_002', '<p>Diketahui lima bilangan, yang terkecil 15, yang terbesar 90 dan mediannya 50. Jika rataan&nbsp;hitungnya x&macr;, maka &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'matematika', '<p>28 <u>&lt;</u>&nbsp;x&macr; <u>&lt;</u>&nbsp;64</p>\r\n', '<p>32&nbsp;<u>&lt;</u>&nbsp;x&macr;&nbsp;<u>&lt;</u>&nbsp;42</p>\r\n', '<p>30&nbsp;<u>&lt;</u>&nbsp;x&macr;&nbsp;<u>&lt;</u>&nbsp;42</p>\r\n', '<p>35&nbsp;<u>&lt;</u>&nbsp;x&macr;&nbsp;<u>&lt;</u>&nbsp;60</p>\r\n', '<p>44&nbsp;<u>&lt;</u>&nbsp;x&macr;&nbsp;<u>&lt;</u>&nbsp;59</p>\r\n', 'e', '<p>Datanya: 15, x, 50, y, 90</p>\r\n\r\n<p>x&macr; =<u> 15 + x +50 + y + 90X</u><br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5</p>\r\n\r\n<p>x&macr;<sub>min</sub>&nbsp;=<u>15 + 15&nbsp;+50 + 50&nbsp;+ 90</u>&nbsp;=40<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5</p>\r\n\r\n<p>x&macr;<sub>max =</sub><u>15 + 50&nbsp;+50 + 90&nbsp;+ 90</u>&nbsp;=59<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;5<br />\r\n44&nbsp;<u>&lt;</u>&nbsp;x&macr;&nbsp;<u>&lt;</u>&nbsp;59</p>\r\n'),
('mtk_003', '<p>Pada selang interval -10 <u>&lt;</u> x <u>&lt;</u>10, jumlah semua bilangan bulat yang memenuhi&nbsp;</p>\r\n\r\n<p><u>x</u><sup>2</sup><u> - 3x + 1</u> &nbsp;<u>&lt;&nbsp;</u>&nbsp;<u> &nbsp;-2 &nbsp;</u>&nbsp;&nbsp;, adalah ....<br />\r\nx<sup>2</sup> + 3x - 28 &nbsp; &nbsp; &nbsp;x-4</p>\r\n', 'matematika', '<p>6</p>\r\n', '<p>7</p>\r\n', '<p>8</p>\r\n', '<p>9</p>\r\n', '<p>10</p>\r\n', 'c', '<p><u>x</u><sup>2</sup><u>&nbsp;- 3x + 1</u>&nbsp;&nbsp;<u>&lt;&nbsp;</u>&nbsp;<u>&nbsp;&nbsp;-2 &nbsp;</u>&nbsp;&nbsp;<br />\r\nx<sup>2</sup>&nbsp;+ 3x - 28 &nbsp; &nbsp; x - 4</p>\r\n\r\n<p><u>x</u><sup>2</sup><u>&nbsp;- 3x + 1</u>&nbsp;&nbsp;+&nbsp;<u>&nbsp;&nbsp;-2 &nbsp;</u>&nbsp;&nbsp;<u>&lt;</u>&nbsp;0<br />\r\nx<sup>2</sup>&nbsp;+ 3x - 28 &nbsp; &nbsp; &nbsp;x-4</p>\r\n\r\n<p><u>x</u><sup>2</sup><u>&nbsp;- 3x + 1</u>&nbsp;&nbsp;+&nbsp;<u>&nbsp;&nbsp;-2(x+7) &nbsp;</u>&nbsp;&nbsp;<u>&lt;</u>&nbsp;0<br />\r\nx<sup>2</sup>&nbsp;+ 3x - 28 &nbsp; &nbsp; &nbsp;(x - 4)-(x+7)</p>\r\n\r\n<p><u>x</u><sup>2</sup><u>&nbsp;- 3x + 1</u>&nbsp;&nbsp;+&nbsp;<u>&nbsp;&nbsp;-2x+14&nbsp;&nbsp;</u>&nbsp;&nbsp;<u>&lt;</u>&nbsp;0<br />\r\nx<sup>2</sup>&nbsp;+ 3x - 28 &nbsp; &nbsp; x<sup>2</sup>&nbsp;+ 3x - 28</p>\r\n\r\n<p><u>x</u><sup>2</sup><u>&nbsp;- x&nbsp;+ 15</u>&nbsp;&nbsp;<u>&gt;</u>&nbsp;0<br />\r\nx<sup>2</sup>&nbsp;+ 3x - 28&nbsp;</p>\r\n\r\n<p>&nbsp;<u>&nbsp; &nbsp; &nbsp; &nbsp;(+) &nbsp; &nbsp; &nbsp;</u>&nbsp;&nbsp;<u>&gt;</u>&nbsp;0<br />\r\n&nbsp;(x+7) (x-4) &nbsp; &nbsp;</p>\r\n\r\n<p>Bilangan bulat pada interval -10<u>&lt;</u> x <u>&lt;</u> 10 , yang memenuhi adalah ....</p>\r\n\r\n<p>= -10 +(-9) + (-8)+5+6+7+8+9</p>\r\n\r\n<p>=8</p>\r\n'),
('mtk_004', '<p>Agar persamaan kuadrat x2 + (p - 2)x +4 =0 mempunyai akar kembar ,maka nilai p yang memenuhi adalah .....</p>\r\n', 'matematika', '<p>p = -6 atau p =4</p>\r\n', '<p>o=-2 atau p=6</p>\r\n', '<p>p=-3 atau p =4</p>\r\n', '<p>p= -3 atau p=-4</p>\r\n', '<p>p=1 atau p =-12</p>\r\n', 'b', '<p>Syarat akar kembar : D=0</p>\r\n\r\n<p>(p - 2)<sup>2</sup> - 4 x 1 x 4 &nbsp;= 0</p>\r\n\r\n<p>p<sup>2 </sup>- 4pp + 4 - 16 =0</p>\r\n\r\n<p>p<sup>2 </sup>- 4p - 12 =0</p>\r\n\r\n<p>(p + 2)(p - 6) =0</p>\r\n\r\n<p>p=-2 atau p=6</p>\r\n'),
('mtk_005', '<p>Persamaan lingkaran berdiameter 10 dan berpusat di titik (-5,5) adalah .........</p>\r\n', 'matematika', '<p>x<sup>2</sup> + y<sup>2</sup> + 10x - 10y + 25 =0</p>\r\n', '<p>x<sup>2</sup>&nbsp;+ y<sup>2</sup>&nbsp;-&nbsp;10x + 10y + 25 =0</p>\r\n', '<p>x<sup>2</sup>&nbsp;+ y<sup>2</sup>&nbsp;-&nbsp;5x + 5y + 25 =0</p>\r\n', '<p>x<sup>2</sup>&nbsp;+ y<sup>2</sup>&nbsp;+&nbsp;5x + 10y + 25 =0</p>\r\n', '<p>x<sup>2</sup>&nbsp;+ y<sup>2</sup>&nbsp;-&nbsp;10x + 10y - 25 =0</p>\r\n', 'a', '<p>P(-5,5) dan r = 10/2 = 5</p>\r\n\r\n<p>persamaan lingkaran tersebut :</p>\r\n\r\n<p>(x +5)<sup>2</sup> + (y - 5)<sup>2</sup> =5<sup>2</sup></p>\r\n\r\n<p>x<sup>2</sup> + 10x +25 + y<sup>2</sup> - 10y + 25 = 25</p>\r\n\r\n<p>x<sup>2 </sup>+ y<sup>2</sup> + 10x - 10y + 25 = 0</p>\r\n'),
('mtk_006', '<p>Lima tahun yang akan datang, jumlah umur kakak dan adik adalah 6 kali selisihnya . sekarang umur kakak 6 tahun lebih dari umur adik , umur kaka sekarang adalah ...</p>\r\n', 'matematika', '<p>21 tahun</p>\r\n', '<p>16 tahun</p>\r\n', '<p>15 tahun</p>\r\n', '<p>10 tahun</p>\r\n', '<p>6 tahun</p>\r\n', 'c', '<p>Misal:</p>\r\n\r\n<p>Umur kakak sekarang = x</p>\r\n\r\n<p>Umur adik sekarang = y</p>\r\n\r\n<p>Umur kaka sekarang 6 tahun lebih dari umur adik : y = x -6</p>\r\n\r\n<p>Lima tahun yang akan datang jumlah umur kakak dan adik adalah 6 kali selisihnya :</p>\r\n\r\n<p>(x +5) + (y + 5) = 6{(x +5 ) - (y +5 )}</p>\r\n\r\n<p>x+ y + 10 = 6 (x&nbsp;- y)</p>\r\n\r\n<p>x + y + 10 = 6x - 6y</p>\r\n\r\n<p>5x -7y = 10</p>\r\n\r\n<p>5x - 7 (x-6) = 10</p>\r\n\r\n<p>-2x + 42 = 10</p>\r\n\r\n<p>-2x = -32</p>\r\n\r\n<p>x = 16</p>\r\n\r\n<p>Jadi, umur kaka sekarang adalah 16 tahun</p>\r\n'),
('mtk_007', '<p>Diberikan premis-premis sebagai berikut.</p>\r\n\r\n<p><strong>Premis 1:&nbsp;</strong>jika siswa ingin belajar ,maka siswa akan mendapat nilai yang baik</p>\r\n\r\n<p><strong>Premis 2:</strong>Jika siswa mendapat nilai baik, maka siswa tidak mengikuti kegiatan remedial.</p>\r\n\r\n<p><strong>Premis 3:</strong>siswa rajin belajar.</p>\r\n\r\n<p>Kesimpulan dari ketiga premis tersebut adalah .........</p>\r\n', 'matematika', '<p>Siswa mengikuti kegiatan remedial</p>\r\n', '<p>siswa tidak mengikuti kegiatan remedial</p>\r\n', '<p>siswa mendapat nilai yang baik</p>\r\n', '<p>siswa tidak mendapat nilai yang baik</p>\r\n', '<p>siswa tidak mengikuti kegiatan remedial dan nilainya tidak baik</p>\r\n', 'b', '<p>Misal :</p>\r\n\r\n<p>p = siswa rajin belajar</p>\r\n\r\n<p>q = siswa akan mendapat nilai yang baik.</p>\r\n\r\n<p>r= siswa tidak mengikuti kegiatan remedial.</p>\r\n\r\n<p>ketiga premis tersebut apabila dinyatakan dalam simbol logika menjadi:</p>\r\n\r\n<p>P1: p&rArr;q</p>\r\n\r\n<p>P2:q&rArr;r</p>\r\n\r\n<p>P3 : p</p>\r\n\r\n<p>Penarikan kesimpulan dari ketiga premis tersebut adalah....</p>\r\n\r\n<p>p&rArr;q</p>\r\n\r\n<p><u>q&rArr;r</u></p>\r\n\r\n<p>p&rArr;r</p>\r\n\r\n<p><u>&nbsp; &nbsp; r&nbsp;</u></p>\r\n\r\n<p>:. r</p>\r\n\r\n<p>jadi kesimpulannya adalah siswa tidak mengikuti kegiatan remedial.</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('mtk_008', '<p>Pernyataan yang setara dengan&quot;Jika Budin sarapan pagi , maka ia tidak mengantuk di kelas &quot; adalah ....</p>\r\n', 'matematika', '<p>Jika Budin sarapan pagi , maka ia mengantuk dikelas</p>\r\n', '<p>Jika Budin mengantuk di kelas , maka ia sarapan pagi</p>\r\n', '<p>Jika Budin mengantuk di kelas , maka ia tidak sarapan pagi</p>\r\n', '<p>Jika Budin tidak sarapan pagi , maka ia mengantuk dikelas&nbsp;</p>\r\n', '<p>Jika Budin tidak sarapan pagi , maka ia tidak mengantuk dikelas</p>\r\n', 'c', '<p>Misal</p>\r\n\r\n<p>p= Budin sarapan pagi</p>\r\n\r\n<p>q= Budin tidak mengantuk dikelas</p>\r\n\r\n<p>pernyataan tersebut apabila ditulis dalam simbol logika menjadi : p&rArr;q.</p>\r\n\r\n<p>pernyataan &nbsp;p&rArr;q setara dengan&nbsp;~q&nbsp;&rArr;~p.</p>\r\n\r\n<p>Jadi pernyataan yang setara dengan pernyataan tersebut adalah&quot;jika Budin mengantuk di kelas , maka ia tidak sarapan pagi&quot;</p>\r\n'),
('mtk_009', '<p>Diketahui (x + 2) adalah faktor banyak &nbsp;f(x) = 2x<sup>3</sup> - 3x<sup>2</sup> - 11x +p. salah satu faktor linear lainnya dari suku banyak tersebut adalah ......</p>', 'matematika', '<p>(2x +1)</p>', '<p>(2x - 3)</p>', '<p>(2x + 3)</p>', '<p>(x+3)</p>', '<p>(x-3)</p>', 'e', '<p>f(x)= &nbsp;2x<sup>3</sup>&nbsp;- 3x<sup>2</sup>&nbsp;- 11x +p jika dibagi (x+2) sisanya 0.</p>\r\n<p>f(-2) =2(-2)<sup>3</sup>&nbsp;- 3(-2)<sup>2</sup>&nbsp;- 11(-2) +p</p>\r\n<p>0 = -16 - 12 + 22 + p</p>\r\n<p>p = 6</p>\r\n<p>Diperoleh:</p>\r\n<p>f(x) = 2x<sup>3</sup> - 3x<sup>2</sup> - 11x + 6</p>\r\n<p>&nbsp; &nbsp; &nbsp; =(x+2) (2x<sup>2</sup> - 7x +3)</p>\r\n<p>&nbsp; &nbsp; &nbsp; =(x + 2)(2x - 1)(x - 3)</p>\r\n<p>jadi salah satu faktor linear suku banyak tersebut adalah (x - 3).</p>'),
('mtk_011', '<p>Diketahui fungsi f(x) = 2x -1 dan g(x) = 3x<sup>2</sup> - x +5. Fungsi komposisi (g&nbsp;&ordm; f)(x)=....</p>\r\n', 'matematika', '<p>6x<sup>2</sup> - 4x - 11</p>\r\n', '<p>6x<sup>2</sup> - 4x + 9</p>\r\n', '<p>12x<sup>2 </sup>- 14x +9</p>\r\n', '<p>12x<sup>2&nbsp;</sup>- 10x +9</p>\r\n', '<p>12x<sup>2&nbsp;</sup>- 10x +3</p>\r\n', 'c', '<p>(g &ordm; f)(x) = g(f(x))</p>\r\n\r\n<p>= 3(2x - 1)<sup>2</sup> - (2x-1)+5</p>\r\n\r\n<p>=3(4x<sup>2</sup> - 4x +1)- (2x-1)+5</p>\r\n\r\n<p>=12x<sup>2</sup> - 14x +9</p>\r\n'),
('mtk_012', '<p>Diketahui suku ke -3 dan suku ke 8 suatu barisan aritmetika berturut-turut adalah 2 dan - 13. jumlah 20 suku &nbsp;pertama deret tersebut adalah ...........</p>\r\n', 'matematika', '<p>-580</p>\r\n', '<p>-490</p>\r\n', '<p>-440</p>\r\n', '<p>-410</p>\r\n', '<p>-380</p>\r\n', 'd', '<p>U<sub>3</sub> = a+2b = 2</p>\r\n\r\n<p>U<sub>8</sub>= a+ 7b= -13</p>\r\n\r\n<p>a+2b=2</p>\r\n\r\n<p><u>a+7b =-13</u>&nbsp;-&nbsp;</p>\r\n\r\n<p>-5b = 15</p>\r\n\r\n<p>b =-3</p>\r\n\r\n<p>a =8</p>\r\n\r\n<p>S<sub>20</sub> = 20/2 (2 x 8 + (20 -1)(-3))</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp;= 10(16-57) = -410</p>\r\n'),
('mtk_013', '<p>Sepuluh titik terletak pada bidang datar &nbsp;sehingga tidak ada tiga titik yang segaris. Banyak garis<br />\r\nyang dapat dibuat dengan cara menghubungkan dua titik dipilih dari sepuluh titik tersebut adalah....</p>\r\n', 'matematika', '<p>10</p>\r\n', '<p>30</p>\r\n', '<p>45</p>\r\n', '<p>60</p>\r\n', '<p>90</p>\r\n', 'c', '<p>C<sup>10</sup><sub>2</sub>&nbsp;= 10!/ 8!.3! = 10 x 9 x 8! / &nbsp;8! x 2 x 1 =45</p>\r\n'),
('mtk_014', '<p>Koordinat bayangan titik A(-1,3) jika dicerminkan terhadap garis x=4 dan dilanjutkan pencerminan terhadap sumbu Y adalah .........</p>\r\n', 'matematika', '<p>(9,-3)</p>\r\n', '<p>(-9,3)</p>\r\n', '<p>(9,3)</p>\r\n', '<p>(-9,-3)</p>\r\n', '<p>(-3,-9)</p>\r\n', 'b', '<p>A(-1,3) ------- x= 4-------&gt; A&#39; (9,3)</p>\r\n\r\n<p>A&#39;(9,3) ------sumbu Y---------&gt; A&quot; (-9,3)</p>\r\n'),
('mtk_015', '<p>Sebuah film dokumenter menayangkan perihal gempa bumi dan seberapa sering gempa bumi terjadi. Film itu mencakup diskusi tentang keterkiraan gempa bumi . Seorang ahli geologi menyatakan :&quot;Dalam dua puluh tahun ke depan , peluang bahwa sebuah gempa bumi &nbsp;akan terjadi di kota Zadia adalah dua per tiga &quot;.</p>\r\n\r\n<p>Manakah dibawah ini yang paing mencerminkan maksud pernyataan ahli geologi tersebut?</p>\r\n\r\n<p><span style="line-height:1.6em">&nbsp;</span></p>\r\n', 'matematika', '<p>2//3 x 20 = 13,3; sehingga antara 13 dan 14 tahun dari sekarang akan terjadi sebuah gempa bumi di kota Zadia.</p>\r\n', '<p>2/3 lebih besar dari pada 1/2 , sehingga kita dapat menyakini bahwa kan terjadi sebuah gempa bumi &nbsp;di kota Zadia pada suatu saat dalam 20 tahun ke depan.</p>\r\n', '<p>peluang terjadinya sebuah gempa bumi di kota zadia pada suatu saat dalam 20 tahun ke depan lebih tinggi dari pada peluang tidak terjadinya &nbsp;gempa bumi</p>\r\n', '<p>kita tak dapat mengatakan apa yang akan terjadi , karena tidak seorang pun dapat meyakinkan kapan sebuah gempa bumi akan terjadi</p>\r\n', '<p>Pasti akan terjadi gempa bumi 20 tahun yang akan datang , karena sudah diperkirakan oleh ahli geologi.&nbsp;</p>\r\n', 'c', '<p>Makna yang paling mencerminkan adalah peluang terjadinya sebuah gempa bumi di kota zadia pada suatu saat dalam 20 tahun ke depan lebih tinggi daripada peluang tidak terjadinya gempa bumi.&nbsp;</p>\r\n'),
('mtk_016', '<p>jkkkk</p>\r\n', 'matematika', '<p>kkkk</p>\r\n', '<p>jjj</p>\r\n', '<p>kkk</p>\r\n', '<p>kkkk</p>\r\n', '<p>llll</p>\r\n', 'b', '<p>kkkk</p>\r\n');
INSERT INTO `try_soal` (`id_soal`, `soal`, `mata_pelajaran`, `plh_a`, `plh_b`, `plh_c`, `plh_d`, `plh_e`, `jwb_soal`, `penjelasan`) VALUES
('mtk_017', '<p><img src="data:image/jpeg;base64,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" alt="" width="122" height="96" />ffffff</p>', 'matematika', '<p>dddddddddd</p>', '<p>ddddddddddddddd</p>', '<p>ffffffffffffffffffffffffffff</p>', '<p>fffffffffffffffffffff</p>', '<p>ffffffffffffffffffff</p>', 'a', '<p>ffffffffffffffffffffffffffffff</p>');
INSERT INTO `try_soal` (`id_soal`, `soal`, `mata_pelajaran`, `plh_a`, `plh_b`, `plh_c`, `plh_d`, `plh_e`, `jwb_soal`, `penjelasan`) VALUES
('sej_000', '<p>Phitecanthropus erectus merupakan pendukung kebudayaan Pacitan dan kebudayaan Ngandong.<br />\r\nKebudayaan ini berasal dari zaman &hellip;.</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sejarah', '<p>&nbsp;perundagian&nbsp;</p>\r\n', '<p>megalithikum&nbsp;</p>\r\n', '<p>neolithikum&nbsp;</p>\r\n', '<p>mesolithikum</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>&nbsp;paleolithikum</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'e', '<p>Phitecanthropus erectus merupakan pendukung kebudayaan Pacitan dan kebudayaan Ngandong. &nbsp;Kebudayaan ini berasal dari zaman paleolithikum.&nbsp;</p>\r\n'),
('sej_001', '<p>Raja Kertanegara yang merupakan raja terbesar dari Kerajaan Singasari pada tahun 1275 melakukan&nbsp;Ekspedisi Pamalayu. Tujuan dari Eskpedisi Pamalayu tersebut adalah &hellip;</p>\r\n', 'sejarah', '<p>menjalin hubungan dengan Sriwijaya untuk menghadapi serangan Ku Bilai Khan</p>\r\n', '<p>menjalin hubungan dengan Sriwijaya untuk menghadapi serangan Kerajaan Majapahit</p>\r\n', '<p>menjalin hubungan dengan Sriwijaya untuk menghadapi serangan Kerajaan Bali</p>\r\n', '<p>menjalin hubungan dengan Sriwijaya untuk menguasai Selat Malaka</p>\r\n', '<p>menjalin hubungan dengan Sriwijaya untuk menguasai Selat Sunda</p>\r\n', 'a', '<p>Tujuan dari Ekspedisi Pamalayu adalah menjalin hubungan dengan Sriwijaya untuk menghadapi&nbsp;<br />\r\nserangan Kubilai Khan. &nbsp;</p>\r\n'),
('sej_002', '<p>Partai politik pertama yang menegaskan tentang nasionalisme Hindia dan menuntut kemerdekaan<br />\r\nbagi Hindia Belanda adalah &hellip;.</p>\r\n', 'sejarah', '<p>Perhimpunan Indonesia</p>\r\n', '<p>Indische Partij</p>\r\n', '<p>Partai Nasional Indonesia</p>\r\n', '<p>Gabungan Politik Indonesia</p>\r\n', '<p>Partai Sarekat Islam Indonesia</p>\r\n', 'b', '<p>Partai politik pertama yang menegaskan tentang nasionalisme Hindia dan menuntut kemerdekaan &nbsp;bagi Hindia Belanda adalah Indische Partij.&nbsp;</p>\r\n'),
('sej_003', '<p>Berdasarkan Perjanjian Versailles (28 Juni 1919) Jerman harus menyerahkan wilayah Elsas-<br />\r\nLotharingen pada &hellip;</p>\r\n', 'sejarah', '<p>Inggris</p>\r\n', '<p>Perancis</p>\r\n', '<p>Amerika Serikat</p>\r\n', '<p>Belanda</p>\r\n', '<p>Uni Soviet</p>\r\n', 'b', '<p>Berdasarkan Perjanjian Versailles (28 Juni 1919) Jerman harus menyerahkan wilayah Elsas-<br />\r\nLotharingen pada Perancis.&nbsp;</p>\r\n'),
('sej_004', '<p>Kabinet Natsir (1950-1951) menghadapi perekonomian yang paling menguntungkan dibandingkan<br />\r\ndengan kabinet lainnya di masa Demokrasi Liberal. Hal ini diakibatkan oleh &hellip;.</p>\r\n', 'sejarah', '<p>harga minyak dunia melambung tinggi</p>\r\n', '<p>banyaknya bantuan dari negara-negara blok barat</p>\r\n', '<p>diterimanya dana hibah dari IMF</p>\r\n', '<p>blokade Indonesia oleh Belanda di buka</p>\r\n', '<p>perang Korea meningkatkan pendapatan ekspor dan bea impor pemerintah</p>\r\n', 'e', '<p style="text-align: justify;">Kabinet Natsir (1950-1951) menghadapi perekonomian yang paling menguntungkan dibandingkan&nbsp;<br />\r\ndengan kabinet lainnya di masa Demokrasi Liberal. Hal ini diakibatkan oleh perang Korea&nbsp;meningkatkan pendapatan ekspor dan bea impor pemerintah.&nbsp;</p>\r\n'),
('sej_005', '<p>Warisan terbesar bangsa Babilonia Baru yang ada di Mesopotamia adalah &hellip;.</p>\r\n', 'sejarah', '<p>Codex Hammurabi</p>\r\n', '<p>Ziggurat</p>\r\n', '<p>Hitungan Sixmagemmal</p>\r\n', '<p>Perpustakaan</p>\r\n', '<p>Taman Gantung Babilonia</p>\r\n', 'e', '<p>Warisan terbesar bangsa Babilonia Baru yang ada di Mesopotamia adalah Taman Gantung Babilonia.&nbsp;</p>\r\n'),
('sej_006', '<p>Konflik yang terjadi antara bangsa Yahudi dan Palestina diakibatkan oleh adanya &hellip;.</p>\r\n', 'sejarah', '<p>Perjanjian Versailes</p>\r\n', '<p>Perjanjian Sevres</p>\r\n', '<p>Perjanjian Lausane</p>\r\n', '<p>Balfour Declaration</p>\r\n', '<p>Monroe Doctrine</p>\r\n', 'd', '<p>Konflik yang terjadi antara bangsa Yahudi dan Palestina diakibatkan oleh adanya Balfour Declaration &nbsp;(1817) yang dikeluarkan oleh Inggris.&nbsp;</p>\r\n'),
('sej_007', '<p>Gerakan zionisme yang semakin meluas mendorong terbentuknya Liga Arab.Apa yang menjadi sebabnya?</p>\r\n', 'sejarah', '<p>untuk&nbsp;melindungi tempat-tempat suci agama Islam&nbsp;seperti Masjidil Aqsha&nbsp;</p>\r\n', '<p>Untuk melindungi pemerintah arab</p>\r\n', '<p>untuk menjalin hubungan bilateral dengan bangsa lain</p>\r\n', '<p>Liga Arab berusaha untuk mengembalikan hak-hak orang Palestina atas wilayah Palestina.</p>\r\n', '<p>untuk membangun pemerintahan yang lebih kuat</p>\r\n', 'd', '<p style="text-align: justify;">pilihan a salah karena Melindungi tempat-tempat suci merupakan tujuan dari&nbsp;organisasi Konferensi Islam (OKI) agar tidak terulang dibakarnya tempat suci seperti Masjidil Aqsha&nbsp;oleh bangsa Yahudi (zionis). begitupula dengan pilihan b,c dan e</p>\r\n'),
('sej_008', '<p>Kerajaan Demak mencapai masa keemasan pada masa pemerintahan &nbsp;?</p>\r\n', 'sejarah', '<p>Raden patah</p>\r\n', '<p>Raden Wijaya</p>\r\n', '<p>Sri Rajasa</p>\r\n', '<p>Sri Baduga Maharaja</p>\r\n', '<p>Sultan Trenggono</p>\r\n', 'e', '<p style="text-align: justify;"><strong>Raden Patah</strong> adalah raja pertama demak tetapi demak tidak mencapai masa keemasannya pada saat dia memerintah.<strong>Raden Wijaya&nbsp;</strong>merupakan raja dari kerajaan Majapahit di Delta Brantas.<strong>Sri Rajasa </strong>merupakan raja dari&nbsp;kerajaan singasari di jawa timur<strong>.Sri Baduga Maharaja&nbsp;</strong>adalah raja dari kerajaan Priangan di Padjajaran(Jawa Barat)<strong>.</strong></p>\r\n\r\n<p style="text-align: justify;"><strong>Sultan Trenggono&nbsp;</strong>adalah raja terakhir demak yang berhasil &nbsp;membuat kerajaan Demak mencapai masa keemasannya.Hal ini ditandai dengan berhasilnya sultan Trenggono&nbsp;&nbsp;mengutus Faleteha untuk mengusir portugis di SUnda Kelapa. Usaha ini berhasil,pada tanggal 22 juni 1527 portugis dapat dikalahkan oleh Faletehan.</p>\r\n'),
('sej_009', '<p>Manusia Purba yang ditemukan pada masa &nbsp;pleistosen awal dan dikenal sebagai<br />\r\nmanusia paling cerdas yang ditemukan di&nbsp;lembah bengawan Solo adalah ... .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sejarah', '<p>Homo sapiens</p>\r\n', '<p>Megantropus paleojavanicus</p>\r\n', '<p>Pithecantropus erectus</p>\r\n', '<p>Pithecantropus mojokertensis</p>\r\n', '<p>Homo soloensis&nbsp;</p>\r\n', 'a', '<p>Homo sapiens merupakan Manusia purba yang paling cerdas yang ditemukan di bengawan solo</p>\r\n'),
('sej_011', '<p>Bangunan &nbsp;prasejarah yang termasuk hasil&nbsp;kebudayaan Megalitikum dan berfungsi<br />\r\nsebagai tempat pemujaan terhadap roh&nbsp;leluhur mereka dikenal dengan ... .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sejarah', '<p>Waruga</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Punden berundak</p>\r\n', '<p>Kubur Batu</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Sarcofagus</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Dolmen</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'b', '<p>Punden berundak merupakan tempat pemujaan roh leluhur dari kebudayaan Megalitikum</p>\r\n'),
('sej_012', '<p>&nbsp;Bukti bahwa keberadaan Islam pada masa&nbsp;awal masih dipengaruhi oleh kebudayaan<br />\r\nHindu dapat kita lihat pada &hellip; .&nbsp;</p>\r\n', 'sejarah', '<p>bangunan masjid yang selalu &nbsp;menghadap ke timur</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>bedug dijadikan alat untuk memberi &nbsp;tanda waktu sholat</p>\r\n', '<p>upacara selamatan kematian seseorang</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>atap masjid yang berbentuk meru</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>letak masjid di dekat alun-alun&nbsp;</p>\r\n', 'd', '<p>Atap masjid yang berbentuk meru masih merupakan pengaruh dari kebudayaan Hindu</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('sej_013', '<p>Akibat kekalahan Jepang dalam Perang&nbsp;Dunia II, maka langkah yang diambil<br />\r\npemerintah pendudukan Jepang terhadap&nbsp;bangsa Indonesia untuk segera<br />\r\nmempersiapkan kemerdekaan adalah ... .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sejarah', '<p>Membentuk Dokuritsu Junbi Cosakai</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>membentuk Keimin Bunka Sidhoso</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>membentuk Cuo Sangi In</p>\r\n', '<p>Membentuk Ken Peitei</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>Membentuk PUTERA</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'a', '<p>Membentuk Dokuritsu Junbi Cosakai</p>\r\n\r\n<p>&nbsp;</p>\r\n'),
('sej_014', '<p>Salah satu keputusan penting yang diambil&nbsp;pada sidang kedua PPKI pada tanggal 19<br />\r\nAgustus 1945 adalah&hellip; .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sejarah', '<p>membentuk Komite Nasional Indonesia</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>dijadikannya PNI sebagai satu-satunya&nbsp;partai politik di Indonesia</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>menetapkan wilayah Indonesia terbagi &nbsp;dalam 8 propinsi</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>mengesahkan UUD 1945</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>membentuk Badan Keamanan Rakyat&nbsp;</p>\r\n', 'c', '<p>salah satu Keputusan yang diambil pada sidang kedua PKKI pada tanggal 19 agustus 1945 adalah menetapkan wilayah Indonesia terbagi &nbsp;dalam 8 propinsi</p>\r\n'),
('sej_015', '<p>Penyebab utama yang mendorong bangsa&nbsp;Belanda datang ke Indonesia adalah ... .</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'sejarah', '<p>melanjutkan Perang Salib</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>pelarangan pembelian rempah-rempah&nbsp;di Lissabon</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>ditutupnya Konstantinopel oleh &nbsp;Kesultanan Turki tahun 1453</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>semangat Reconquesta pada abad XIV&nbsp;di Eropa</p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p>ditaklukkannya benteng Granada oleh &nbsp;Spanyol</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'c', '<p>ditutupnya Konstantinopel oleh &nbsp;Kesultanan Turki tahun 1453</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `try_tambahan`
--

CREATE TABLE IF NOT EXISTS `try_tambahan` (
  `id_user` int(11) NOT NULL,
  `id_mtk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_tambahan`
--

INSERT INTO `try_tambahan` (`id_user`, `id_mtk`) VALUES
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_fis'),
(9, 'kd_kim'),
(9, 'kd_geo'),
(9, 'kd_eko'),
(9, 'kd_sej'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_fis'),
(3, 'kd_kim'),
(3, 'kd_geo'),
(3, 'kd_eko'),
(3, 'kd_sej'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_kim'),
(3, 'kd_fis'),
(19, 'kd_mtk'),
(19, 'kd_ind'),
(19, 'kd_ing'),
(19, 'kd_bio'),
(19, 'kd_fis'),
(19, 'kd_kim'),
(19, 'kd_geo'),
(19, 'kd_eko'),
(19, 'kd_sej'),
(4, 'kd_mtk'),
(4, 'kd_ind'),
(4, 'kd_ing'),
(19, 'kd_mtk'),
(19, 'kd_ind'),
(19, 'kd_ing'),
(19, 'kd_bio'),
(19, 'kd_kim'),
(19, 'kd_fis'),
(4, 'kd_mtk'),
(4, 'kd_ind'),
(4, 'kd_ing'),
(4, 'kd_bio'),
(4, 'kd_kim'),
(4, 'kd_fis'),
(4, 'kd_geo'),
(4, 'kd_sej'),
(4, 'kd_eko'),
(20, 'kd_mtk'),
(20, 'kd_ind'),
(20, 'kd_ing'),
(20, 'kd_bio'),
(20, 'kd_fis'),
(20, 'kd_kim'),
(20, 'kd_geo'),
(20, 'kd_eko'),
(20, 'kd_sej'),
(20, 'kd_mtk'),
(20, 'kd_ind'),
(20, 'kd_ing'),
(20, 'kd_bio'),
(20, 'kd_kim'),
(20, 'kd_fis'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_fis'),
(9, 'kd_kim'),
(9, 'kd_geo'),
(9, 'kd_eko'),
(9, 'kd_sej'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(9, 'kd_geo'),
(9, 'kd_sej'),
(9, 'kd_eko'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(9, 'kd_geo'),
(9, 'kd_sej'),
(9, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_fis'),
(3, 'kd_kim'),
(3, 'kd_geo'),
(3, 'kd_eko'),
(3, 'kd_sej'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_fis'),
(9, 'kd_kim'),
(9, 'kd_geo'),
(9, 'kd_eko'),
(9, 'kd_sej'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_kim'),
(3, 'kd_fis'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_fis'),
(3, 'kd_kim'),
(3, 'kd_geo'),
(3, 'kd_eko'),
(3, 'kd_sej'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_kim'),
(3, 'kd_fis'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_bio'),
(3, 'kd_fis'),
(3, 'kd_kim'),
(3, 'kd_geo'),
(3, 'kd_eko'),
(3, 'kd_sej'),
(3, 'kd_mtk'),
(3, 'kd_ind'),
(3, 'kd_ing'),
(3, 'kd_geo'),
(3, 'kd_sej'),
(3, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(3, 'kd_bio'),
(3, 'kd_fis'),
(3, 'kd_kim'),
(3, 'kd_eko'),
(3, 'kd_eko'),
(0, 'kd_ing'),
(0, 'kd_bio'),
(0, 'kd_fis'),
(0, 'kd_kim'),
(0, 'kd_geo'),
(0, 'kd_eko'),
(12, 'kd_bio'),
(12, 'kd_fis'),
(12, 'kd_kim'),
(0, 'kd_ing'),
(0, 'kd_geo'),
(0, 'kd_eko'),
(12, 'kd_eko'),
(10, 'kd_mtk'),
(10, 'kd_ind'),
(10, 'kd_ing'),
(10, 'kd_geo'),
(10, 'kd_eko'),
(10, 'kd_sej'),
(10, 'kd_mtk'),
(10, 'kd_ind'),
(10, 'kd_ing'),
(17, 'kd_ind'),
(17, 'kd_ing'),
(17, 'kd_bio'),
(17, 'kd_fis'),
(17, 'kd_kim'),
(17, 'kd_geo'),
(17, 'kd_eko'),
(17, 'kd_sej'),
(17, 'kd_ind'),
(17, 'kd_ing'),
(17, 'kd_geo'),
(17, 'kd_sej'),
(17, 'kd_eko'),
(17, 'kd_mtk'),
(17, 'kd_ind'),
(17, 'kd_ing'),
(17, 'kd_bio'),
(17, 'kd_fis'),
(17, 'kd_kim'),
(17, 'kd_geo'),
(17, 'kd_eko'),
(17, 'kd_sej'),
(17, 'kd_mtk'),
(17, 'kd_ind'),
(17, 'kd_ing'),
(17, 'kd_bio'),
(17, 'kd_kim'),
(17, 'kd_fis'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_fis'),
(13, 'kd_kim'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_kim'),
(13, 'kd_fis'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_kim'),
(13, 'kd_fis'),
(13, 'kd_geo'),
(13, 'kd_sej'),
(13, 'kd_eko'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_fis'),
(13, 'kd_kim'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(13, 'kd_bio'),
(13, 'kd_fis'),
(13, 'kd_kim'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_kim'),
(13, 'kd_fis'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_kim'),
(13, 'kd_fis'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_fis'),
(13, 'kd_kim'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_geo'),
(13, 'kd_sej'),
(13, 'kd_eko'),
(6, 'kd_mtk'),
(6, 'kd_ind'),
(6, 'kd_ing'),
(6, 'kd_bio'),
(6, 'kd_fis'),
(6, 'kd_kim'),
(6, 'kd_geo'),
(6, 'kd_eko'),
(6, 'kd_sej'),
(6, 'kd_mtk'),
(6, 'kd_ind'),
(6, 'kd_ing'),
(6, 'kd_bio'),
(6, 'kd_kim'),
(6, 'kd_fis'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_fis'),
(13, 'kd_kim'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(9, 'kd_bio'),
(9, 'kd_fis'),
(9, 'kd_kim'),
(9, 'kd_geo'),
(9, 'kd_eko'),
(9, 'kd_sej'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(13, 'kd_mtk'),
(13, 'kd_ind'),
(13, 'kd_ing'),
(13, 'kd_bio'),
(13, 'kd_kim'),
(13, 'kd_fis'),
(6, 'kd_fis'),
(6, 'kd_kim'),
(6, 'kd_geo'),
(6, 'kd_eko'),
(6, 'kd_sej'),
(6, 'kd_kim'),
(6, 'kd_fis'),
(2, 'kd_ing'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(3, 'kd_kim'),
(3, 'kd_geo'),
(3, 'kd_eko'),
(3, 'kd_sej'),
(4, 'kd_ind'),
(13, 'kd_kim'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(13, 'kd_kim'),
(2, 'kd_ing'),
(2, 'kd_kim'),
(3, 'kd_kim'),
(4, 'kd_ind'),
(4, 'kd_bio'),
(4, 'kd_kim'),
(4, 'kd_fis'),
(4, 'kd_geo'),
(4, 'kd_sej'),
(4, 'kd_eko'),
(2, 'kd_ind'),
(2, 'kd_ind'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(6, 'kd_bio'),
(6, 'kd_fis'),
(6, 'kd_kim'),
(3, 'kd_geo'),
(3, 'kd_eko'),
(3, 'kd_sej'),
(13, 'kd_geo'),
(13, 'kd_eko'),
(13, 'kd_sej'),
(4, 'kd_bio'),
(4, 'kd_fis'),
(4, 'kd_kim'),
(7, 'kd_mtk'),
(7, 'kd_ind'),
(7, 'kd_ing'),
(7, 'kd_bio'),
(7, 'kd_fis'),
(7, 'kd_kim'),
(7, 'kd_geo'),
(7, 'kd_eko'),
(7, 'kd_sej'),
(8, 'kd_mtk'),
(8, 'kd_ind'),
(8, 'kd_ing'),
(8, 'kd_bio'),
(8, 'kd_fis'),
(8, 'kd_kim'),
(8, 'kd_geo'),
(8, 'kd_eko'),
(8, 'kd_sej'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_fis'),
(9, 'kd_kim'),
(9, 'kd_geo'),
(9, 'kd_eko'),
(9, 'kd_sej'),
(10, 'kd_mtk'),
(10, 'kd_ind'),
(10, 'kd_ing'),
(10, 'kd_bio'),
(10, 'kd_fis'),
(10, 'kd_kim'),
(10, 'kd_geo'),
(10, 'kd_eko'),
(10, 'kd_sej'),
(6, 'kd_eko'),
(4, 'kd_eko'),
(7, 'kd_mtk'),
(7, 'kd_ind'),
(7, 'kd_ing'),
(7, 'kd_bio'),
(7, 'kd_kim'),
(7, 'kd_fis'),
(8, 'kd_mtk'),
(8, 'kd_ind'),
(8, 'kd_ing'),
(8, 'kd_bio'),
(8, 'kd_kim'),
(8, 'kd_fis'),
(9, 'kd_mtk'),
(9, 'kd_ind'),
(9, 'kd_ing'),
(9, 'kd_bio'),
(9, 'kd_kim'),
(9, 'kd_fis'),
(10, 'kd_mtk'),
(10, 'kd_ind'),
(10, 'kd_ing'),
(10, 'kd_bio'),
(10, 'kd_kim'),
(10, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_fis'),
(2, 'kd_kim'),
(2, 'kd_geo'),
(2, 'kd_eko'),
(2, 'kd_sej'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(0, 'kd_mtk'),
(0, 'kd_ind'),
(0, 'kd_ing'),
(0, 'kd_mtk'),
(0, 'kd_ind'),
(0, 'kd_ing'),
(0, 'kd_bio'),
(0, 'kd_kim'),
(0, 'kd_fis'),
(0, 'kd_geo'),
(0, 'kd_sej'),
(0, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_mtk'),
(2, 'kd_ind'),
(2, 'kd_ing'),
(2, 'kd_bio'),
(2, 'kd_kim'),
(2, 'kd_fis'),
(2, 'kd_geo'),
(2, 'kd_sej'),
(2, 'kd_eko');

-- --------------------------------------------------------

--
-- Table structure for table `try_target`
--

CREATE TABLE IF NOT EXISTS `try_target` (
  `id_usr` int(11) NOT NULL,
  `id_universitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `try_target`
--

INSERT INTO `try_target` (`id_usr`, `id_universitas`) VALUES
(9, 7),
(9, 10),
(2, 9),
(3, 9),
(19, 7),
(19, 9),
(20, 6),
(20, 8),
(13, 5),
(13, 8),
(3, 5),
(18, 7),
(18, 10),
(0, 11),
(0, 9),
(12, 11),
(12, 10),
(12, 11),
(10, 11),
(10, 10),
(17, 5),
(17, 9),
(6, 7),
(6, 5),
(4, 7),
(4, 11),
(7, 7),
(7, 9),
(8, 5),
(8, 6),
(2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `try_tentor`
--

CREATE TABLE IF NOT EXISTS `try_tentor` (
  `id_tentor` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `matapelajaran` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `password` text NOT NULL,
  `status` enum('aprove','ignore') NOT NULL,
  PRIMARY KEY (`id_tentor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `try_tentor`
--

INSERT INTO `try_tentor` (`id_tentor`, `nama`, `username`, `matapelajaran`, `pendidikan`, `no_hp`, `password`, `status`) VALUES
(13, 'Neni Hamdiana', 'neni', 'matematika', 'S1', '081234888888', '21232f297a57a5a743894a0e4a801fc3', 'aprove'),
(15, 'Risky Anjani', 'riski', 'bahasa indonesia', 'SMK', '086797654', '0', 'aprove'),
(17, 'Heni Kusnadi', 'heni', 'kimia', 'SMK', '0985943033', '21232f297a57a5a743894a0e4a801fc3', 'aprove'),
(18, 'Heni Cahyani', 'heni', 'fisika', 'S1', '08565656567', 'cd07a63af5f14ac0d51b5bbbf6e93ae9', 'aprove'),
(19, 'Ernawati', 'erna', 'bahasa indonesia', 'SMK', '093847757', '035b3c6377652bd7d49b5d2e9a53ef40', 'aprove');

-- --------------------------------------------------------

--
-- Table structure for table `try_tryout`
--

CREATE TABLE IF NOT EXISTS `try_tryout` (
  `id_user` varchar(30) NOT NULL,
  `tgl` datetime NOT NULL,
  `benar_mtk` int(11) NOT NULL,
  `salah_mtk` int(11) NOT NULL,
  `kosong_mtk` int(11) NOT NULL,
  `benar_ind` int(11) NOT NULL,
  `salah_ind` int(11) NOT NULL,
  `kosong_ind` int(11) NOT NULL,
  `benar_ing` int(11) NOT NULL,
  `salah_ing` int(11) NOT NULL,
  `kosong_ing` int(11) NOT NULL,
  `benar_bio` int(11) NOT NULL,
  `salah_bio` int(11) NOT NULL,
  `kosong_bio` int(11) NOT NULL,
  `benar_kim` int(11) NOT NULL,
  `salah_kim` int(11) NOT NULL,
  `kosong_kim` int(11) NOT NULL,
  `benar_fis` int(11) NOT NULL,
  `salah_fis` int(11) NOT NULL,
  `kosong_fis` int(11) NOT NULL,
  `benar_eko` int(11) NOT NULL,
  `salah_eko` int(11) NOT NULL,
  `kosong_eko` int(11) NOT NULL,
  `benar_geo` int(11) NOT NULL,
  `salah_geo` int(11) NOT NULL,
  `kosong_geo` int(11) NOT NULL,
  `benar_sej` int(11) NOT NULL,
  `salah_sej` int(11) NOT NULL,
  `kosong_sej` int(11) NOT NULL,
  `jml_benar` int(11) NOT NULL,
  `jml_salah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `try_tryout`
--
DROP TRIGGER IF EXISTS `nilai_delete`;
DELIMITER //
CREATE TRIGGER `nilai_delete` BEFORE DELETE ON `try_tryout`
 FOR EACH ROW BEGIN
INSERT INTO try_nilai
(id_user,tgl,benar_mtk,salah_mtk,kosong_mtk,benar_ind,salah_ind,kosong_ind,benar_ing,salah_ing,kosong_ing,
benar_bio,salah_bio,kosong_bio,benar_kim,salah_kim,kosong_kim,benar_fis,salah_fis,kosong_fis,
benar_eko,salah_eko,kosong_eko,benar_sej,salah_sej,kosong_sej,benar_geo,salah_geo,kosong_geo)
VALUES
(OLD.id_user,OLD.tgl,
old.benar_mtk,old.salah_mtk,old.kosong_mtk,old.benar_ind,old.salah_ind,old.kosong_ind,old.benar_ing,old.salah_ing,old.kosong_ing,
old.benar_bio,old.salah_bio,old.kosong_bio,old.benar_kim,old.salah_kim,old.kosong_kim,old.benar_fis,old.salah_fis,old.kosong_fis,
old.benar_eko,old.salah_eko,old.kosong_eko,old.benar_sej,old.salah_sej,old.kosong_sej,old.benar_geo,old.salah_geo,old.kosong_geo);
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `nilai_insert`;
DELIMITER //
CREATE TRIGGER `nilai_insert` BEFORE INSERT ON `try_tryout`
 FOR EACH ROW BEGIN
IF ((NEW.benar_mtk*4)-(NEW.salah_mtk*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_mtk');
END IF;
IF ((NEW.benar_ind*4)-(NEW.salah_ind*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_ind');
END IF;
IF ((NEW.benar_ing*4)-(NEW.salah_ing*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_ing');
END IF;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `nilai_update`;
DELIMITER //
CREATE TRIGGER `nilai_update` BEFORE UPDATE ON `try_tryout`
 FOR EACH ROW BEGIN
IF ((NEW.benar_bio*4)-(NEW.salah_bio*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_bio');
END IF;
IF ((NEW.benar_fis*4)-(NEW.salah_fis*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_fis');
END IF;
IF ((NEW.benar_kim*4)-(NEW.salah_kim*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_kim');
END IF;
IF ((NEW.benar_geo*4)-(NEW.salah_geo*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_geo');
END IF;
IF ((NEW.benar_eko*4)-(NEW.salah_eko*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_eko');
END IF;
IF ((NEW.benar_sej*4)-(NEW.salah_sej*1) <= 22)
THEN
INSERT INTO try_tambahan(id_user,id_mtk)
VALUES (NEW.id_user,'kd_sej');
END IF;
END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `try_universitas`
--

CREATE TABLE IF NOT EXISTS `try_universitas` (
  `id_universitas` int(11) NOT NULL AUTO_INCREMENT,
  `universitas` text NOT NULL,
  `jurusan` enum('ipa','ips') NOT NULL,
  `program_studi` text NOT NULL,
  `point` int(11) NOT NULL,
  `kursi` int(11) NOT NULL,
  `jml_tdk_lulus` int(4) NOT NULL,
  `jml_peminat` int(4) NOT NULL,
  PRIMARY KEY (`id_universitas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `try_universitas`
--

INSERT INTO `try_universitas` (`id_universitas`, `universitas`, `jurusan`, `program_studi`, `point`, `kursi`, `jml_tdk_lulus`, `jml_peminat`) VALUES
(5, 'universitas Indonesia(UI)', 'ipa', 'Jurusan ilmu keperawatan', 45, 38, 2200, 2358),
(6, 'Universitas Gadjah Mada (UGM)', 'ipa', 'Jurusan Farmasi', 45, 120, 1000, 1200),
(7, 'Universitas Gadjah Mada (UGM)', 'ips', 'jurusan Akuntansi', 52, 75, 1700, 2000),
(8, 'universitas Indonesia(UI)', 'ips', 'Jurusan SASTRA INGGRIS', 41, 18, 50, 1000),
(9, 'Universitas Haluoleo (UHO)', 'ipa', 'jurusan Pendidikan Dokter', 35, 25, 1090, 2000),
(10, 'Universitas Haluoleo (UHO)', 'ips', 'jurusan Ekonomi', 33, 65, 800, 900),
(12, 'Universitas Hasanudin Makasar (UNHAS)', 'ipa', 'Teknik Mesin', 39, 40, 160, 200),
(13, 'Universitas Padjajaran', 'ips', 'Bahasa dan sastra Inggris', 45, 45, 255, 300);

-- --------------------------------------------------------

--
-- Table structure for table `try_user`
--

CREATE TABLE IF NOT EXISTS `try_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` text NOT NULL,
  `username` varchar(30) NOT NULL,
  `sekolah` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `kelas` int(11) NOT NULL,
  `password` text NOT NULL,
  `status` enum('aprove','ignore') NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `try_user`
--

INSERT INTO `try_user` (`id_user`, `nama`, `username`, `sekolah`, `no_hp`, `kelas`, `password`, `status`, `gambar`) VALUES
(2, 'ary', 'ary', 'SMA 2 Kendari', '087665555663', 3, '9ac7ff63ea6f3d3607d20f6f4e900547', 'aprove', '13.jpg'),
(3, 'Muhammad Fauzan', 'fauzan', 'SMA 4 Kendari', '085756882300', 3, 'eacaf53cb2b533a68baa765faedf7e59', 'aprove', ''),
(4, 'Ragil', 'ragil', 'SMA 4 Kendari', '082134500897', 3, '67153c4ffb77b9d03276cad142a84e79', 'aprove', '1.jpg'),
(5, 'Nur Annisa', 'annisa', 'SMA 1Kendari', '082177898999', 3, 'c9d2cce909ea37234be8af1a1f958805', 'aprove', ''),
(6, 'Sawal Zul', 'sawal', 'SMA 4 Kendari', '082103466578', 3, '333054eb11308fed23a2012080efce71', 'aprove', '21.jpg'),
(7, 'surya', 'surya', 'SMA 4 Kendari', '085677785432', 3, 'aff8fbcbf1363cd7edc85a1e11391173', 'aprove', ''),
(8, 'Rahmi Dwi Mulya Kasih', 'rahmi', 'SMA 4 Kendari', '082346678456', 3, 'c32db2518dd88102218004e8f9a69d6d', 'aprove', ''),
(9, 'Selena Tular', 'selena', 'SMA 4 Kendari', '085759986757', 3, '1dbb36285f8dd70721b245b98fbaf4f4', 'aprove', 'bg.jpg'),
(10, 'Muhammad Alfarid', 'alfarid', 'SMA 4 Kendari', '082178844910', 3, '14b6cf12524ff3d46ebce228c14066df', 'aprove', 'genetika.jpg'),
(11, 'Yuvael Bedri', 'yuvael', 'SMA 4 Kendari', '082366675718', 3, 'b095712247a0d1c1e31db6b7ed2ad70b', 'aprove', ''),
(12, 'Ahmad Gazali', 'ahmad', 'SMA 2 Kendari', '085806627227', 3, '61243c7b9a4022cb3f8dc3106767ed12', 'aprove', ''),
(13, 'Nur Aprilia', 'nur', 'SMA 4 Kendari', '085866702023', 3, 'b55178b011bfb206965f2638d0f87047', 'aprove', 'DSC08513.JPG'),
(14, 'Steffany natasha ', 'steffany', 'SMA 4 Kendari', '085756889100', 3, 'd725e7e0e8ae622f6f4e882ba0cdfffb', 'aprove', ''),
(15, 'Enka Pradityar', 'enka', 'SMA 4 Kendari', '082121822213', 3, '6e15a0ea14fed5e6efd884af66d82356', 'aprove', ''),
(16, 'Ahmad Almunawar', 'munawar', 'SMA 1 Kendari', '082133456557', 3, '423e7b95091a391ae83131e9b5e8a2bd', 'aprove', ''),
(17, 'Ardian Sahputra', 'ardian', 'SMA 1 Kendari', '082345678912', 2, '46632a526b980b41478ca6078fb02c28', 'aprove', ''),
(18, 'Adryan', 'adryan', 'SMA 1 Kendari', '00398273645', 3, '3c49c0d0ec6b29f6db5522d276ddab7e', 'aprove', ''),
(20, 'yusuf', 'yusuf', 'SMA 4 Kendari', '09765444', 3, 'dd2eb170076a5dec97cdbbbbff9a4405', 'aprove', 'Foto-anjing-tidur.jpg');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
