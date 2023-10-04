-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Agu 2023 pada 16.43
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_posyandu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_anak`
--

CREATE TABLE `t_anak` (
  `no_bpjs` varchar(50) NOT NULL,
  `no_kk` varchar(16) NOT NULL,
  `nama_depan` varchar(25) NOT NULL,
  `nama_belakang` varchar(25) NOT NULL,
  `jenis_kelamin` enum('','L','P') NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_anak`
--

INSERT INTO `t_anak` (`no_bpjs`, `no_kk`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `tgl_lahir`) VALUES
('123456789', '2346575648448474', 'Aceng', 'Donat', 'L', '2023-05-23'),
('21321654666', '2346575648448474', 'Kuro', 'aceng', 'L', '2023-07-23'),
('2312312312321', '3454353452212122', 'Nuril', 'Kilam', 'L', '2019-07-10'),
('2348238472394', '3287472387423847', 'ggigi', 'gigi', 'L', '2019-07-01'),
('2394723947329', '2374637438793839', 'Arsya', ' ', 'L', '2019-07-15'),
('2398483948394', '2343243434343343', 'Nurils', 'koko', 'P', '2017-06-07'),
('2987283748234', '2343243434343343', 'Amien', 'mien', 'P', '2018-12-11'),
('32424324243243', '3534534534534534', 'b', 'Fadly', 'L', '2019-01-19'),
('3284782347834', '3287472387423847', 'hula', 'jalu', 'L', '2019-07-10'),
('34234234234324', '3534534534534534', 'a', 'Fadly', 'P', '2018-12-24'),
('3454353453453', '4565465464564564', 'Irsan', 'Aham', 'L', '2019-01-20'),
('34792374927433', '3344874837493742', 'Gio', 'Stevani', 'P', '2019-03-15'),
('3947239847329', '3287472387423847', 'gugu', 'gugu', 'P', '2019-07-02'),
('4757485748594', '3298473847384739', 'Gio', 'M', 'L', '2019-07-08'),
('5546334251425', '2346575648448474', 'Vivin', 'Duryani', 'P', '2019-06-06'),
('6655447363526', '2346575648448474', 'Zuhri', 'Mulyani', 'L', '2019-07-03'),
('8324782374238', '3287472387423847', 'hulu', 'hulu', 'P', '2019-07-01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_cek_imunisasi`
--

CREATE TABLE `t_cek_imunisasi` (
  `no_cek_imunisasi` varchar(30) NOT NULL,
  `id_imunisasi` int(11) NOT NULL,
  `no_kunjungan` varchar(30) NOT NULL,
  `umur` varchar(25) NOT NULL,
  `tgl_cek_imunisasi` date NOT NULL,
  `catatan` text NOT NULL,
  `kode_panitia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_cek_imunisasi`
--

INSERT INTO `t_cek_imunisasi` (`no_cek_imunisasi`, `id_imunisasi`, `no_kunjungan`, `umur`, `tgl_cek_imunisasi`, `catatan`, `kode_panitia`) VALUES
('CEK_0010', 15, 'KJG_0023', '2 Bulan ', '2023-07-22', 'suntik aja', 'slipi0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_cek_pertumbuhan`
--

CREATE TABLE `t_cek_pertumbuhan` (
  `no_cek_pertumbuhan` varchar(30) NOT NULL,
  `no_kunjungan` varchar(20) NOT NULL,
  `umur` varchar(25) NOT NULL,
  `tb` float NOT NULL,
  `bb` float NOT NULL,
  `tgl_cek_pertumbuhan` date NOT NULL,
  `hasil` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `kode_panitia` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_cek_pertumbuhan`
--

INSERT INTO `t_cek_pertumbuhan` (`no_cek_pertumbuhan`, `no_kunjungan`, `umur`, `tb`, `bb`, `tgl_cek_pertumbuhan`, `hasil`, `catatan`, `kode_panitia`) VALUES
('CEK_0012', 'KJG_0023', '2 Bulan ', 70, 5.6, '2023-07-23', 'Kurus', 'Kasih makan', 'slipi0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_imunisasi`
--

CREATE TABLE `t_imunisasi` (
  `id_imunisasi` int(11) NOT NULL,
  `nama_imunisasi` varchar(30) NOT NULL,
  `dari_usia` int(5) NOT NULL,
  `sampai_usia` int(5) NOT NULL,
  `catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_imunisasi`
--

INSERT INTO `t_imunisasi` (`id_imunisasi`, `nama_imunisasi`, `dari_usia`, `sampai_usia`, `catatan`) VALUES
(1, 'HB', 1, 2, '   '),
(2, 'BCG', 0, 11, ''),
(3, 'POLIO', 0, 12, ''),
(4, 'DPT 1', 2, 12, ''),
(5, 'HB 1', 2, 12, ''),
(6, 'HiB 1', 2, 12, ''),
(7, 'POLIO 2', 2, 12, ''),
(8, 'DPT 2', 3, 12, ''),
(9, 'HB 2', 3, 12, ''),
(10, 'HiB 2', 3, 12, ''),
(11, 'POLIO 3', 3, 12, ''),
(12, 'DPT 3', 4, 12, ''),
(13, 'HB 3', 4, 12, ''),
(14, 'HiB 3', 4, 12, ''),
(15, 'POLIO 4', 4, 12, ''),
(16, 'IPV', 4, 12, ''),
(17, 'CAMPAK', 9, 12, ''),
(18, 'DPT LANJUTAN', 18, 24, ''),
(19, 'HB', 18, 24, ''),
(20, 'HiB LANJUTAN', 18, 24, ''),
(21, 'CAMPAK LANJUTAN', 18, 24, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_jadwal_kegiatan`
--

CREATE TABLE `t_jadwal_kegiatan` (
  `no_kegiatan` varchar(30) NOT NULL,
  `nama_kegiatan` varchar(50) NOT NULL,
  `tanggal_kegiatan` date NOT NULL,
  `lokasi` text NOT NULL,
  `kode_panitia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_jadwal_kegiatan`
--

INSERT INTO `t_jadwal_kegiatan` (`no_kegiatan`, `nama_kegiatan`, `tanggal_kegiatan`, `lokasi`, `kode_panitia`) VALUES
('20230716-41', 'testing kegiatan baru', '2023-07-16', 'dimanaman', 'slipi0002'),
('20230723-150', 'record', '2023-07-23', 'Dirumah', 'slipi0002'),
('20230724-166', 'tester3', '2023-07-24', 'dirumah pak jamal', 'slipi0002'),
('20230727-138', 'test 4', '2023-07-27', 'asdasd', 'slipi0002');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kms`
--

CREATE TABLE `t_kms` (
  `no_kms` varchar(50) NOT NULL,
  `no_bpjs` varchar(50) NOT NULL,
  `tanggal_terdaftar` date NOT NULL,
  `berat_badan_lahir` float NOT NULL,
  `panjang_badan_lahir` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_kms`
--

INSERT INTO `t_kms` (`no_kms`, `no_bpjs`, `tanggal_terdaftar`, `berat_badan_lahir`, `panjang_badan_lahir`) VALUES
('kms_0003', '32424324243243', '2019-07-06', 5.4, 4.4),
('kms_0005', '3454353453453', '2019-07-06', 3, 3),
('kms_0007', '34792374927433', '2019-07-06', 3, 3),
('kms_0008', '34234234234324', '2019-07-06', 4, 4),
('kms_0009', '2398483948394', '2019-07-11', 3.5, 50),
('kms_0010', '2987283748234', '2019-07-11', 3.4, 4.3),
('kms_0011', '2312312312321', '2019-07-11', 5, 2),
('kms_0012', '6655447363526', '2019-07-22', 5, 68),
('kms_0013', '4757485748594', '2019-07-22', 5, 46),
('kms_0014', '2348238472394', '2023-07-15', 3.4, 3.4),
('kms_0015', '21321654666', '2023-07-22', 4.6, 60),
('kms_0016', '123456789', '2023-07-22', 5.6, 70);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_kunjungan`
--

CREATE TABLE `t_kunjungan` (
  `no_kunjungan` varchar(20) NOT NULL,
  `id_kegiatan` varchar(20) NOT NULL,
  `no_antri` int(11) NOT NULL,
  `tanggal_kunjungan` date NOT NULL,
  `no_kms` varchar(30) NOT NULL,
  `status` enum('','selesai','proses','terlewat','antri') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_kunjungan`
--

INSERT INTO `t_kunjungan` (`no_kunjungan`, `id_kegiatan`, `no_antri`, `tanggal_kunjungan`, `no_kms`, `status`) VALUES
('KJG_0023', '20230723-150', 23, '2023-07-23', 'kms_0016', 'selesai'),
('KJG_0024', '20230724-166', 24, '2023-07-24', 'KMS_0012', 'antri'),
('KJG_0025', '20230724-166', 25, '2023-07-24', 'KMS_0003', 'antri'),
('KJG_0026', '20230724-166', 26, '2023-07-24', 'KMS_0013', 'antri');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_panitia`
--

CREATE TABLE `t_panitia` (
  `kode_panitia` varchar(30) NOT NULL,
  `username` varchar(25) NOT NULL,
  `nama_panitia` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `akses` varchar(10) NOT NULL,
  `login_terakhir` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_panitia`
--

INSERT INTO `t_panitia` (`kode_panitia`, `username`, `nama_panitia`, `password`, `akses`, `login_terakhir`) VALUES
('slipi0001', 'admin', 'administrator', 'admin1234', 'admin', '2023-07-23 21:47:51'),
('slipi0002', 'kader', 'Kader Posyandu', '12345678', 'kader', '2023-07-23 21:52:13'),
('slipi0003', 'ketua', 'Junior Prabowo', '12345678', 'ketua', '2023-07-16 13:45:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_warga`
--

CREATE TABLE `t_warga` (
  `no_kk` varchar(16) NOT NULL,
  `email` varchar(25) NOT NULL,
  `nama_ayah` varchar(25) NOT NULL,
  `nama_ibu` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `tanggal_terdaftar` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `t_warga`
--

INSERT INTO `t_warga` (`no_kk`, `email`, `nama_ayah`, `nama_ibu`, `password`, `alamat`, `no_telp`, `tanggal_terdaftar`) VALUES
('2343243434343343', 'bagio@gmail.com', 'Gio', 'Mush', '1234', 'Jakarta', '081727822827', '2023-07-16'),
('2346575648448474', 'Endah@gmail.com', 'Sugeng', 'Murni', '1234', 'Jakarta', '081317726873', '2023-07-16'),
('2374637438793839', 'devtoolind@gmail.com', 'gakuh', 'widya', 'wahyuais', 'jakarta', '08131772687', '2023-07-16'),
('3287472387423847', 'fufu@gmail.com', 'fufu', 'mumu', '1234', 'jakarta', '081317726873', '2023-07-16'),
('3298473847384739', 'wahyualfarisi30@gmail.com', 'John', 'Jennie', '12345678', 'Jakarta', '081317726873', '2023-07-16'),
('3344874837493742', 'dede@gmail.com', 'dede', 'didi', '1234', 'jakarta pusat', '081317726873', '2023-07-16'),
('3454353452212122', 'Hilam@gmail.com', 'jojo', 'kiki', '1234', 'Jakarta', '08712227276726', '2023-07-16'),
('3534534534534534', 'qwe@gmail.com', 'Fadly', 'Mumu', '1234', 'Jakarta', '081317726973', '2023-07-16'),
('4565465464564564', 'wahyu@gmail.com', 'wahyu', 'alfarisi', '1234', 'jakarta', '081317726873', '2023-07-16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `t_anak`
--
ALTER TABLE `t_anak`
  ADD PRIMARY KEY (`no_bpjs`),
  ADD KEY `no_kk` (`no_kk`);

--
-- Indeks untuk tabel `t_cek_imunisasi`
--
ALTER TABLE `t_cek_imunisasi`
  ADD PRIMARY KEY (`no_cek_imunisasi`),
  ADD KEY `kode_panitia` (`kode_panitia`),
  ADD KEY `id_imunisasi` (`id_imunisasi`),
  ADD KEY `no_kunjungan` (`no_kunjungan`);

--
-- Indeks untuk tabel `t_cek_pertumbuhan`
--
ALTER TABLE `t_cek_pertumbuhan`
  ADD PRIMARY KEY (`no_cek_pertumbuhan`),
  ADD KEY `kode_panitia` (`kode_panitia`),
  ADD KEY `no_kunjungan` (`no_kunjungan`);

--
-- Indeks untuk tabel `t_imunisasi`
--
ALTER TABLE `t_imunisasi`
  ADD PRIMARY KEY (`id_imunisasi`),
  ADD KEY `dari usia` (`dari_usia`,`sampai_usia`);

--
-- Indeks untuk tabel `t_jadwal_kegiatan`
--
ALTER TABLE `t_jadwal_kegiatan`
  ADD PRIMARY KEY (`no_kegiatan`),
  ADD KEY `kode_panitia` (`kode_panitia`);

--
-- Indeks untuk tabel `t_kms`
--
ALTER TABLE `t_kms`
  ADD PRIMARY KEY (`no_kms`),
  ADD KEY `no_bpjs` (`no_bpjs`);

--
-- Indeks untuk tabel `t_kunjungan`
--
ALTER TABLE `t_kunjungan`
  ADD PRIMARY KEY (`no_kunjungan`),
  ADD KEY `no_kms` (`no_kms`),
  ADD KEY `id_kegiatan` (`id_kegiatan`);

--
-- Indeks untuk tabel `t_panitia`
--
ALTER TABLE `t_panitia`
  ADD PRIMARY KEY (`kode_panitia`);

--
-- Indeks untuk tabel `t_warga`
--
ALTER TABLE `t_warga`
  ADD PRIMARY KEY (`no_kk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `t_imunisasi`
--
ALTER TABLE `t_imunisasi`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `t_anak`
--
ALTER TABLE `t_anak`
  ADD CONSTRAINT `t_anak_ibfk_1` FOREIGN KEY (`no_kk`) REFERENCES `t_warga` (`no_kk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_cek_imunisasi`
--
ALTER TABLE `t_cek_imunisasi`
  ADD CONSTRAINT `t_cek_imunisasi_ibfk_1` FOREIGN KEY (`no_kunjungan`) REFERENCES `t_kunjungan` (`no_kunjungan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cek_imunisasi_ibfk_2` FOREIGN KEY (`id_imunisasi`) REFERENCES `t_imunisasi` (`id_imunisasi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cek_imunisasi_ibfk_3` FOREIGN KEY (`kode_panitia`) REFERENCES `t_panitia` (`kode_panitia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_cek_pertumbuhan`
--
ALTER TABLE `t_cek_pertumbuhan`
  ADD CONSTRAINT `t_cek_pertumbuhan_ibfk_1` FOREIGN KEY (`no_kunjungan`) REFERENCES `t_kunjungan` (`no_kunjungan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_cek_pertumbuhan_ibfk_2` FOREIGN KEY (`kode_panitia`) REFERENCES `t_panitia` (`kode_panitia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_jadwal_kegiatan`
--
ALTER TABLE `t_jadwal_kegiatan`
  ADD CONSTRAINT `t_jadwal_kegiatan_ibfk_1` FOREIGN KEY (`kode_panitia`) REFERENCES `t_panitia` (`kode_panitia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_kms`
--
ALTER TABLE `t_kms`
  ADD CONSTRAINT `t_kms_ibfk_1` FOREIGN KEY (`no_bpjs`) REFERENCES `t_anak` (`no_bpjs`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `t_kunjungan`
--
ALTER TABLE `t_kunjungan`
  ADD CONSTRAINT `t_kunjungan_ibfk_1` FOREIGN KEY (`no_kms`) REFERENCES `t_kms` (`no_kms`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `t_kunjungan_ibfk_2` FOREIGN KEY (`id_kegiatan`) REFERENCES `t_jadwal_kegiatan` (`no_kegiatan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
