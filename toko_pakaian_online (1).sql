-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Apr 2025 pada 08.00
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
-- Database: `toko_pakaian_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(4) NOT NULL,
  `Nama_Barang` varchar(100) DEFAULT NULL,
  `Ukuran` varchar(4) DEFAULT NULL,
  `Harga_Barang` int(10) DEFAULT NULL,
  `Stok` int(4) DEFAULT NULL,
  `ID_kategori` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Ukuran`, `Harga_Barang`, `Stok`, `ID_kategori`) VALUES
('B001', 'Sauvana top', 'M', 85000, 10, 1),
('B002', 'Arvey jeans', 'XL', 159999, 5, 2),
('B003', 'Fraxi top', 'S', 95000, 15, 3),
('B004', 'Shivali skirt', 'L', 100000, 30, 4),
('B005', 'Flora cardi', 'M', 75000, 11, 5),
('B006', 'Bow crop tie', 'S', 125000, 25, 6),
('B007', 'Hara skirt', 'M', 175000, 19, 4),
('B008', 'Cargo pants', 'S', 250000, 12, 2),
('B009', 'Polo knit', 'M', 95000, 17, 3),
('B010', 'Cora crop tie', 'XL', 145000, 2, 6),
('B011', 'Lace skirt', 'L', 130000, 24, 4),
('B012', 'Sunny cardi', 'XS', 99000, 15, 5),
('B013', 'Alice dress', 'M', 185000, 12, 7),
('B014', 'Noe jeans', 'XS', 150000, 3, 2),
('B015', 'Raya skirt', 'S', 275000, 25, 4),
('B016', 'Soka off shoulder', 'M', 285000, 29, 3),
('B017', 'Katarina dress', 'XS', 350000, 5, 7),
('B018', 'Aeri jeans', 'L', 115000, 20, 4),
('B019', 'Chizu loose pants', 'XS', 89000, 22, 2),
('B020', 'Sza knit', 'S', 195000, 7, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `ID_Kategori` int(11) NOT NULL,
  `Nama_Kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`ID_Kategori`, `Nama_Kategori`) VALUES
(1, 'Kemeja'),
(2, 'Celana'),
(3, 'Kaos'),
(4, 'Rok'),
(5, 'Kardigan'),
(6, 'Crop Top'),
(7, 'Dress');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `ID_Pegawai` varchar(5) NOT NULL,
  `Nama_Pegawai` varchar(50) DEFAULT NULL,
  `Jenis_Kelamin` char(3) DEFAULT NULL,
  `Tanggal_Lahir` date DEFAULT NULL,
  `No_Hp` varchar(15) DEFAULT NULL,
  `Gaji` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`ID_Pegawai`, `Nama_Pegawai`, `Jenis_Kelamin`, `Tanggal_Lahir`, `No_Hp`, `Gaji`) VALUES
('E001', 'Ahmad Riyadi', 'L', '1980-01-15', '081234567890', 4500000),
('E002', 'Budi Santoso', 'L', '1981-07-23', '081212345678', 5500000),
('E003', 'Citra Lestari', 'P', '1982-03-14', '081322334455', 5000000),
('E004', 'Dewi Anggraini', 'P', '1983-05-19', '081987654321', 4700000),
('E005', 'Eka Putra', 'L', '1984-09-09', '081244556677', 5200000),
('E006', 'Fajar Hidayat', 'L', '1985-12-25', '081144332211', 4800000),
('E007', 'Gita Savitri', 'P', '1986-08-08', '081366554433', 4950000),
('E008', 'Hendra Pratama', 'L', '1987-11-11', '081277889900', 5300000),
('E009', 'Indah Permata', 'P', '1988-06-06', '081344556677', 4600000),
('E010', 'Joko Widodo', 'L', '1989-02-28', '081422334455', 6000000),
('E011', 'Kartika Sari', 'P', '1990-04-17', '081311223344', 4700000),
('E012', 'Lukman Hakim', 'L', '1991-01-01', '081355667788', 5900000),
('E013', 'Maya Anggraini', 'P', '1992-07-07', '081388776655', 5100000),
('E014', 'Nanda Putri', 'P', '1993-10-10', '081299887766', 4500000),
('E015', 'Oscar Pradana', 'L', '1994-03-03', '081200112233', 5050000),
('E016', 'Putri Amanda', 'P', '1995-12-12', '081344332211', 4800000),
('E017', 'Rizky Kurniawan', 'L', '1996-08-18', '081466778899', 5300000),
('E018', 'Siti Nurhaliza', 'P', '1997-09-22', '081399887766', 4550000),
('E019', 'Tommy Wijaya', 'L', '1998-11-19', '081577889900', 6000000),
('E020', 'Utami Kartika', 'P', '2005-06-15', '081600112233', 4900000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_Pelanggan` varchar(4) NOT NULL,
  `Nama_Pelanggan` varchar(50) DEFAULT NULL,
  `Alamat_Pelanggan` varchar(50) DEFAULT NULL,
  `No_Hp` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`ID_Pelanggan`, `Nama_Pelanggan`, `Alamat_Pelanggan`, `No_Hp`) VALUES
('C001', 'Ahmad Fadli', 'Jl. Melati No. 45', '081234567890'),
('C002', 'Rina Suryani', 'Jl. Kenanga Raya No. 12', '081345678901'),
('C003', 'Budi Prasetyo', 'Jl. Jendral Sudirman No. 7', '081456789012'),
('C004', 'Siti Rahmah', 'Jl. Anggrek Merah No. 89', '081567890123'),
('C005', 'Toni Saputra', 'Jl. Mawar Indah No. 21', '081678901234'),
('C006', 'Indah Permata', 'Jl. Ahmad Yani No. 34', '081789012345'),
('C007', 'Kenang Arnel', 'Jl. Diponegoro No. 56', '081890123456'),
('C008', 'Desi Andriani', 'Jl. Bambu Kuning No. 10', '081901234567'),
('C009', 'Dimas Santoso', 'Jl. Pandan Wangi No. 78', '082012345678'),
('C010', 'Maya Larasati', 'Jl. Kartini No. 22', '082123456789'),
('C011', 'Arif Kurniawan', 'Jl. Merpati Putih No. 15', '082234567890'),
('C012', 'Ayu Wulandari', 'Jl. Pahlawan No. 5', '082345678901'),
('C013', 'Syafiq Yamin', 'Jl. Sultan Agung No. 9', '082456789012'),
('C014', 'Lina Kusuma', 'Jl. Rajawali No. 36', '082567890123'),
('C015', 'Eko Purnomo', 'Jl. Flamboyan No. 88', '082678901234'),
('C016', 'Nisa Maharani', 'Jl. Mangga Dua No. 50', '082789012345'),
('C017', 'Aldi Gunawan', 'Jl. K.H. Hasyim Ashari No. 8', '082890123456'),
('C018', 'Tia Kartika', 'Jl. Cemara Indah No. 3', '082901234567'),
('C019', 'Bayu Firmansyah', 'Jl. Kebon Jeruk No. 19', '083012345678'),
('C020', 'Devi Amalia', 'Jl. Taman Sari No. 77', '083123456789');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `Nomor_Transaksi` varchar(6) NOT NULL,
  `Kode_Barang` varchar(4) DEFAULT NULL,
  `ID_Pelanggan` varchar(4) DEFAULT NULL,
  `ID_Pegawai` varchar(5) DEFAULT NULL,
  `Tanggal_Transaksi` date DEFAULT NULL,
  `Harga_Barang` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`Nomor_Transaksi`, `Kode_Barang`, `ID_Pelanggan`, `ID_Pegawai`, `Tanggal_Transaksi`, `Harga_Barang`) VALUES
('T0001', 'B001', 'C001', 'E001', '2024-01-01', 85000),
('T0002', 'B002', 'C002', 'E002', '2024-01-02', 159999),
('T0003', 'B003', 'C003', 'E003', '2024-01-03', 95000),
('T0004', 'B004', 'C004', 'E004', '2024-01-04', 100000),
('T0005', 'B005', 'C005', 'E005', '2024-01-05', 75000),
('T0006', 'B006', 'C006', 'E006', '2024-01-06', 125000),
('T0007', 'B007', 'C007', 'E007', '2024-01-07', 175000),
('T0008', 'B008', 'C008', 'E008', '2024-01-08', 250000),
('T0009', 'B009', 'C009', 'E009', '2024-01-09', 95000),
('T0010', 'B010', 'C010', 'E010', '2024-01-10', 125000),
('T0011', 'B011', 'C011', 'E012', '2024-01-11', 115000),
('T0012', 'B012', 'C012', 'E012', '2024-01-12', 250000),
('T0013', 'B013', 'C013', 'E013', '2024-01-13', 275000),
('T0014', 'B014', 'C014', 'E014', '2024-01-14', 159999),
('T0015', 'B015', 'C015', 'E015', '2024-01-15', 285000),
('T0016', 'B016', 'C016', 'E016', '2024-01-16', 75000),
('T0017', 'B017', 'C017', 'E017', '2024-01-17', 130000),
('T0018', 'B018', 'C018', 'E018', '2024-01-18', 99000),
('T0019', 'B019', 'C019', 'E019', '2024-01-19', 350000),
('T0020', 'B020', 'C020', 'E020', '2024-01-20', 195000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_Kategori`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`ID_Pegawai`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Nomor_Transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
