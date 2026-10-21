-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Okt 2026 pada 04.49
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud-php`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data barang`
--

CREATE TABLE `data barang` (
  `id_barang` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah` int(50) NOT NULL,
  `harga` int(50) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data barang`
--

INSERT INTO `data barang` (`id_barang`, `nama`, `jumlah`, `harga`, `tanggal`) VALUES
(1, '0', 8, 15000, '2026-10-09 06:54:35'),
(2, 'spidol', 10, 50000, '2026-10-09 07:26:12'),
(3, 'pensil', 5, 20000, '2026-10-09 07:26:42'),
(4, 'kulkas', 5, 350000000, '2026-10-09 07:28:21');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data barang`
--
ALTER TABLE `data barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data barang`
--
ALTER TABLE `data barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
