-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2023 pada 08.46
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2106062_asyifa_fauziyah`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan_makanan`
--

CREATE TABLE `pemesanan_makanan` (
  `id` int(11) NOT NULL,
  `nama_pemesan` varchar(50) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `pemesanan_makanan`
--

INSERT INTO `pemesanan_makanan` (`id`, `nama_pemesan`, `nomor_telepon`, `alamat`, `menu`, `jumlah`, `harga`, `total_harga`) VALUES
(1, 'asd', '432', '32423', 'Soto Ayam', 9, 10000, 90000),
(2, 'asd', '432', '32423', 'Soto Ayam', 9, 10000, 90000),
(3, 'Asyifa', '08283712737', 'Jl. Garut', 'Nasi Goreng', 10, 20000, 200000),
(4, 'q', 'q', 'q', 'Nasi Goreng', 123, 123, 15129),
(5, 'q', 'q', 'q', 'Nasi Goreng', 123, 123, 15129),
(6, 'w', '1', 'ee', 'Nasi Goreng', 12, 1000, 12000),
(7, 'p', '123', 'P', 'Nasi Goreng', 7, 1000, 7000),
(8, '234', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000),
(9, '23431', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000),
(10, '23431', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000),
(11, '23431', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000),
(12, '23431', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000),
(13, '23431', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000),
(14, '23431', '4039240', 'sakjdkaj', 'Nasi Goreng', 10, 2000, 20000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pemesanan_makanan`
--
ALTER TABLE `pemesanan_makanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pemesanan_makanan`
--
ALTER TABLE `pemesanan_makanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
