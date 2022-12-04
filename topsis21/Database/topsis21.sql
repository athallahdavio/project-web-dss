-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Des 2022 pada 18.51
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `topsis21`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `idadmin` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `namalengkap` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` varchar(5) NOT NULL,
  `nm_alternatif` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`) VALUES
('al001', 'Kecamatan Sumedang Utara'),
('al002', 'Kecamatan Ganeas'),
('al003', 'Kecamatan Cimalaka'),
('al004', 'Kecamatan Wado'),
('al005', 'Kecamatan Tanjungsari'),
('al006', 'Kecamatan Tanjungkerta'),
('al007', 'Kecamatan Tanjungmedar'),
('al008', 'Kecamatan Ujungjaya'),
('al009', 'Kecamantan Jatinunggal'),
('al010', 'Kecamatan Darmaraja'),
('al011', 'Kecamatan Cibugel'),
('al012', 'Kecamatan Cisitu'),
('al013', 'Kecamatan Tomo'),
('al014', 'Kecamatan Situraja'),
('al015', 'Kecamatan Conggeang'),
('al016', 'Kecamatan Paseh'),
('al017', 'Kecamatan Buahdua'),
('al018', 'Kecamatan Sukasari'),
('al019', 'Kecamatan Pamulihan'),
('al020', 'Kecamatan Cimanggung'),
('al021', 'Kecamatan Jatinangor'),
('al022', 'Kecamatan Rancakalong'),
('al023', 'Kecamatan Sumedang Selatan'),
('al024', 'Kecamatan Cisarua'),
('al025', 'Kecamatan Jatigede');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` varchar(5) NOT NULL,
  `nama_kriteria` varchar(45) NOT NULL,
  `bobot` double NOT NULL,
  `sifat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `bobot`, `sifat`) VALUES
('kr001', 'K1', 1, 'benefit'),
('kr002', 'K2', 3, 'benefit'),
('kr003', 'K3', 5, 'benefit');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_matrik`
--

CREATE TABLE `nilai_matrik` (
  `id_matrik` int(7) NOT NULL,
  `id_alternatif` varchar(7) NOT NULL,
  `id_kriteria` varchar(7) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `nilai_matrik`
--

INSERT INTO `nilai_matrik` (`id_matrik`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(49, 'al001', 'kr001', 17696),
(50, 'al001', 'kr002', 113),
(51, 'al001', 'kr003', 53),
(52, 'al002', 'kr001', 8470),
(53, 'al002', 'kr002', 26),
(54, 'al002', 'kr003', 64),
(55, 'al003', 'kr001', 19052),
(56, 'al003', 'kr002', 70),
(57, 'al003', 'kr003', 38),
(58, 'al004', 'kr001', 11708),
(59, 'al004', 'kr002', 41),
(60, 'al004', 'kr003', 16),
(61, 'al005', 'kr001', 26837),
(62, 'al005', 'kr002', 59),
(63, 'al005', 'kr003', 16),
(64, 'al006', 'kr001', 7270),
(65, 'al006', 'kr002', 39),
(66, 'al006', 'kr003', 4),
(67, 'al007', 'kr001', 5063),
(68, 'al007', 'kr002', 11),
(69, 'al007', 'kr003', 11),
(70, 'al008', 'kr001', 6453),
(71, 'al008', 'kr002', 20),
(72, 'al008', 'kr003', 4),
(73, 'al009', 'kr001', 11937),
(74, 'al009', 'kr002', 78),
(75, 'al009', 'kr003', 11),
(76, 'al010', 'kr001', 12373),
(77, 'al010', 'kr002', 9),
(78, 'al010', 'kr003', 13),
(79, 'al011', 'kr001', 3415),
(80, 'al011', 'kr002', 10),
(81, 'al011', 'kr003', 3),
(82, 'al012', 'kr001', 4846),
(83, 'al012', 'kr002', 2),
(84, 'al012', 'kr003', 2),
(85, 'al013', 'kr001', 5257),
(86, 'al013', 'kr002', 5),
(87, 'al013', 'kr003', 2),
(88, 'al014', 'kr001', 7974),
(89, 'al014', 'kr002', 13),
(90, 'al014', 'kr003', 6),
(91, 'al015', 'kr001', 11660),
(92, 'al015', 'kr002', 91),
(93, 'al015', 'kr003', 4),
(94, 'al016', 'kr001', 8030),
(95, 'al016', 'kr002', 7),
(96, 'al016', 'kr003', 8),
(97, 'al017', 'kr001', 8919),
(98, 'al017', 'kr002', 11),
(99, 'al017', 'kr003', 13),
(100, 'al018', 'kr001', 10532),
(101, 'al018', 'kr002', 107),
(102, 'al018', 'kr003', 12),
(103, 'al019', 'kr001', 21480),
(104, 'al019', 'kr002', 58),
(105, 'al019', 'kr003', 17),
(106, 'al020', 'kr001', 25947),
(107, 'al020', 'kr002', 76),
(108, 'al020', 'kr003', 31),
(109, 'al021', 'kr001', 19731),
(110, 'al021', 'kr002', 167),
(111, 'al021', 'kr003', 11),
(112, 'al022', 'kr001', 13003),
(113, 'al022', 'kr002', 153),
(114, 'al022', 'kr003', 25),
(115, 'al023', 'kr001', 12991),
(116, 'al023', 'kr002', 50),
(117, 'al023', 'kr003', 21),
(118, 'al024', 'kr001', 5493),
(119, 'al024', 'kr002', 8),
(120, 'al024', 'kr003', 1),
(121, 'al025', 'kr001', 6520),
(122, 'al025', 'kr002', 6),
(123, 'al025', 'kr003', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai_preferensi`
--

CREATE TABLE `nilai_preferensi` (
  `nm_alternatif` varchar(35) NOT NULL,
  `nilai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idadmin`);

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  ADD PRIMARY KEY (`id_matrik`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `idadmin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `nilai_matrik`
--
ALTER TABLE `nilai_matrik`
  MODIFY `id_matrik` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
