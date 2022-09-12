-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Agu 2022 pada 17.03
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_spk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nama_alternatif` varchar(50) NOT NULL,
  `id_periode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nama_alternatif`, `id_periode`) VALUES
(1, 'Ahmad Chaibar', 1),
(2, 'Muhammad Refal', 1),
(3, 'Reza Delia', 1),
(4, 'Serly Marlina', 1),
(5, 'Isman Irsam Samopo', 1),
(6, 'Hasfira Laila Fadriza', 1),
(7, 'Habibullah Basirigep', 1),
(8, 'Raditia Warman', 1),
(9, 'Muhammad Fajar', 1),
(10, 'Ihlal Bidzahul Akbar', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil`
--

CREATE TABLE `hasil` (
  `id_hasil` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL,
  `hasil` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil`
--

INSERT INTO `hasil` (`id_hasil`, `id_alternatif`, `id_periode`, `hasil`) VALUES
(1, 1, 1, 0.7125),
(2, 2, 1, 0.55),
(3, 3, 1, 0.775),
(4, 4, 1, 0.6875),
(5, 5, 1, 0.583333),
(6, 6, 1, 0.708333),
(7, 7, 1, 0.745833),
(8, 8, 1, 0.583333),
(9, 9, 1, 0.75),
(10, 10, 1, 0.5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nama_kriteria` varchar(50) NOT NULL,
  `sifat` enum('Benefit','Cost') NOT NULL,
  `bobot_pref` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nama_kriteria`, `sifat`, `bobot_pref`) VALUES
(1, 'Status Keluarga', 'Benefit', 0.3),
(2, 'Jenis Program', 'Benefit', 0.25),
(3, 'Jumlah Penghasilan Keluarga', 'Cost', 0.2),
(4, 'Kelengkapan Berkas', 'Benefit', 0.15),
(5, 'Jumlah Tanggungan', 'Benefit', 0.1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penilaian`
--

CREATE TABLE `penilaian` (
  `id_penilaian` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_subkriteria` int(11) NOT NULL,
  `id_periode` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `penilaian`
--

INSERT INTO `penilaian` (`id_penilaian`, `id_alternatif`, `id_subkriteria`, `id_periode`) VALUES
(1, 1, 3, 1),
(2, 1, 12, 1),
(3, 1, 16, 1),
(4, 1, 19, 1),
(5, 1, 21, 1),
(6, 2, 1, 1),
(7, 2, 12, 1),
(8, 2, 16, 1),
(9, 2, 18, 1),
(10, 2, 22, 1),
(11, 3, 3, 1),
(12, 3, 10, 1),
(13, 3, 14, 1),
(14, 3, 20, 1),
(15, 3, 23, 1),
(66, 4, 2, 1),
(67, 4, 10, 1),
(68, 4, 14, 1),
(69, 4, 19, 1),
(70, 4, 24, 1),
(71, 5, 1, 1),
(72, 5, 11, 1),
(73, 5, 15, 1),
(74, 5, 19, 1),
(75, 5, 23, 1),
(76, 6, 3, 1),
(77, 6, 10, 1),
(78, 6, 15, 1),
(79, 6, 20, 1),
(80, 6, 23, 1),
(81, 7, 3, 1),
(82, 7, 11, 1),
(83, 7, 15, 1),
(84, 7, 20, 1),
(85, 7, 22, 1),
(86, 8, 1, 1),
(87, 8, 12, 1),
(88, 8, 15, 1),
(89, 8, 18, 1),
(90, 8, 22, 1),
(91, 9, 4, 1),
(92, 9, 12, 1),
(93, 9, 16, 1),
(94, 9, 18, 1),
(95, 9, 21, 1),
(111, 10, 1, 1),
(112, 10, 9, 1),
(113, 10, 14, 1),
(114, 10, 19, 1),
(115, 10, 22, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `periode`
--

CREATE TABLE `periode` (
  `id_periode` int(11) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periode`
--

INSERT INTO `periode` (`id_periode`, `keterangan`, `tanggal`) VALUES
(1, 'Periode 1', '2022-02-22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkriteria`
--

CREATE TABLE `subkriteria` (
  `id_subkriteria` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `bobot` float NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `subkriteria`
--

INSERT INTO `subkriteria` (`id_subkriteria`, `id_kriteria`, `bobot`, `keterangan`) VALUES
(1, 1, 0.25, 'Dhuafa'),
(2, 1, 0.5, 'Piatu'),
(3, 1, 0.75, 'Yatim'),
(4, 1, 1, 'Yatim Piatu'),
(9, 2, 0.25, 'Usaha'),
(10, 2, 0.5, 'Pembinaan Pekanan Non Program'),
(11, 2, 0.75, 'Rumah Qur\'an'),
(12, 2, 1, 'Pembinaan Pekanan Program'),
(13, 3, 0.25, '> 1.500.000'),
(14, 3, 0.5, '1.001.000 - 1.500.000'),
(15, 3, 0.75, '501.000 - 1.000.000'),
(16, 3, 1, '< 500.000'),
(17, 4, 0.25, 'Hanya 1'),
(18, 4, 0.5, 'Hanya 2'),
(19, 4, 0.75, 'Hanya 3'),
(20, 4, 1, 'Lengkap'),
(21, 5, 0.25, '< 2 Orang'),
(22, 5, 0.5, '2 - 3 Orang'),
(23, 5, 0.75, '4 - 5 Orang'),
(24, 5, 1, '> 5 Orang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Fhizra');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`id_hasil`),
  ADD KEY `id_periode` (`id_periode`),
  ADD KEY `id_alternatif` (`id_alternatif`) USING BTREE;

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`id_penilaian`),
  ADD KEY `id_alternatif` (`id_alternatif`),
  ADD KEY `id_subkriteria` (`id_subkriteria`),
  ADD KEY `id_periode` (`id_periode`);

--
-- Indeks untuk tabel `periode`
--
ALTER TABLE `periode`
  ADD PRIMARY KEY (`id_periode`);

--
-- Indeks untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD PRIMARY KEY (`id_subkriteria`),
  ADD KEY `id_kriteria` (`id_kriteria`) USING BTREE;

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `hasil`
--
ALTER TABLE `hasil`
  MODIFY `id_hasil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `id_penilaian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT untuk tabel `periode`
--
ALTER TABLE `periode`
  MODIFY `id_periode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  MODIFY `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD CONSTRAINT `alternatif_ibfk_1` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `hasil_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hasil_ibfk_2` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penilaian`
--
ALTER TABLE `penilaian`
  ADD CONSTRAINT `penilaian_ibfk_1` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_2` FOREIGN KEY (`id_subkriteria`) REFERENCES `subkriteria` (`id_subkriteria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_ibfk_3` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `subkriteria`
--
ALTER TABLE `subkriteria`
  ADD CONSTRAINT `subkriteria_ibfk_1` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
