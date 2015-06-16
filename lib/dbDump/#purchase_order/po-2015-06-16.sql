-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jun 2015 pada 10.57
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sister_siadu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_alur_stok`
--

DROP TABLE IF EXISTS `po_alur_stok`;
CREATE TABLE IF NOT EXISTS `po_alur_stok` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `tgl` date NOT NULL,
  `transaksi` varchar(50) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data untuk tabel `po_alur_stok`
--

INSERT INTO `po_alur_stok` (`id`, `tgl`, `transaksi`, `kode`, `kodebarang`, `jumlah`) VALUES
(1, '2015-05-18', 'Saldo Awal', '-', 'KD001', '50'),
(2, '2015-05-18', 'Pembelian', 'INV1805150001', 'KD001', '5'),
(3, '2015-05-18', 'Pembelian', 'INV1805150001', 'KD001', '5'),
(4, '2015-05-18', 'Pembelian', 'INV1805150002', 'KD001', '1'),
(5, '2015-05-19', 'Retur Pembelian', 'RTB1905150001', 'KD001', '5'),
(9, '2015-05-01', 'Saldo Awal', '-', 'B01', '50'),
(10, '2015-05-07', 'Mutasi Masuk', '-', 'B01', '2'),
(11, '2015-05-25', 'Pembelian', 'INV2505150003', 'B01', '5'),
(12, '2015-06-01', 'Pembelian', 'INV0106150004', 'KD001', '5'),
(13, '2015-06-01', 'Pembelian', 'INV0106150004', 'B01', '4'),
(14, '2015-06-01', 'Retur Pembelian', 'RTB0106150002', 'KD001', '2'),
(15, '2015-06-05', 'Pembelian', 'INV0506150005', 'KD001', '3'),
(16, '2015-06-05', 'Pembelian', 'INV0506150005', 'B01', '1'),
(17, '2015-06-12', 'Pembelian', 'INV1206150006', '123', '1'),
(18, '2015-06-12', 'Pembelian', 'INV1206150007', '123', '1'),
(19, '2015-06-12', 'Pembelian', 'INV1206150007', '14', '2'),
(20, '2015-06-12', 'Retur Pembelian', 'RTB1206150003', '123', '1'),
(21, '2015-06-12', 'Retur Pembelian', 'RTB1206150003', '14', '2'),
(22, '2015-06-12', 'Retur Pembelian', 'RTB1206150004', '123', '0'),
(23, '2015-06-12', 'Retur Pembelian', 'RTB1206150004', '14', '0'),
(24, '2015-06-16', 'Pembelian', 'INV1606150008', 'LO', '1'),
(25, '2015-06-16', 'Pembelian', 'INV1606150009', 'LO', '1'),
(26, '2015-06-16', 'Pembelian', 'INV1606150009', '123', '1'),
(27, '2015-06-16', 'Pembelian', 'INV1606150009', '123', '1'),
(28, '2015-06-16', 'Pembelian', 'INV1606150009', '123', '1'),
(29, '2015-06-16', 'Pembelian', 'INV1606150009', '123', '1'),
(30, '2015-06-16', 'Pembelian', 'INV1606150009', '123', '1'),
(31, '2015-06-16', 'Pembelian', 'INV1606150010', '123', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_bulan`
--

DROP TABLE IF EXISTS `po_bulan`;
CREATE TABLE IF NOT EXISTS `po_bulan` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `bulan` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `po_bulan`
--

INSERT INTO `po_bulan` (`id`, `nama`, `bulan`) VALUES
(1, 'Januari', '01'),
(2, 'Februari', '02'),
(3, 'Maret', '03'),
(4, 'April', '04'),
(5, 'Mei', '05'),
(6, 'Juni', '06'),
(7, 'Juli', '07'),
(8, 'Agustus', '08'),
(9, 'September', '09'),
(10, 'Oktober', '10'),
(11, 'Nopember', '11'),
(12, 'Desember', '12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_jenisproduk`
--

DROP TABLE IF EXISTS `po_jenisproduk`;
CREATE TABLE IF NOT EXISTS `po_jenisproduk` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `po_jenisproduk`
--

INSERT INTO `po_jenisproduk` (`id`, `nama`) VALUES
(4, 'ALAT SEKOLAH');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pembelian`
--

DROP TABLE IF EXISTS `po_pembelian`;
CREATE TABLE IF NOT EXISTS `po_pembelian` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noinvoice` varchar(50) NOT NULL,
  `nopo` varchar(50) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `kodesupplier` varchar(50) NOT NULL,
  `notasupplier` varchar(100) NOT NULL,
  `carabayar` enum('Tunai','Debet Card','Hutang') NOT NULL DEFAULT 'Tunai',
  `total` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `netto` varchar(50) NOT NULL,
  `bayar` varchar(50) NOT NULL,
  `hutang` varchar(50) NOT NULL DEFAULT '0',
  `termin` enum('0','14','21','30','60','90','120') NOT NULL DEFAULT '0',
  `tgltermin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `po_pembelian`
--

INSERT INTO `po_pembelian` (`id`, `noinvoice`, `nopo`, `tgl`, `kodesupplier`, `notasupplier`, `carabayar`, `total`, `discount`, `netto`, `bayar`, `hutang`, `termin`, `tgltermin`, `user`) VALUES
(1, 'INV1805150001', 'PO1805150001', '2015-05-18', 'SUP01', '', 'Tunai', '750000', '0', '750000', '750000', '0', '0', '', 'superadmin'),
(2, 'INV1805150002', 'PO1805150004', '2015-05-18', 'SUP01', '', 'Tunai', '50000', '0', '50000', '50000', '0', '0', '', 'superadmin'),
(3, 'INV2505150003', 'PO2505150006', '2015-05-25', 'SUP01', '', 'Tunai', '300000', '0', '300000', '300000', '0', '0', '', 'admin'),
(4, 'INV0106150004', 'PO0106150008', '2015-06-01', 'SUP01', '', 'Tunai', '490000', '0', '490000', '490000', '0', '0', '', 'admin'),
(5, 'INV0506150005', 'PO0106150007', '2015-06-05', 'SUP01', '', 'Tunai', '420000', '0', '420000', '420000', '0', '30', '2015-07-5', 'admin'),
(6, 'INV1206150006', 'PO1206150012', '2015-06-12', 'SUP01', '', 'Tunai', '55000', '0', '55000', '55000', '0', '0', '', 'admin'),
(7, 'INV1206150007', 'PO1206150011', '2015-06-12', 'SUP01', '', 'Tunai', '20500000', '0', '20500000', '20500000', '0', '0', '', 'admin'),
(8, 'INV1606150008', 'PO1106150010', '2015-06-16', 'SUP01', '', 'Tunai', '600000', '0', '600000', '600000', '0', '0', '', 'admin'),
(9, 'INV1606150009', 'PO1206150012', '2015-06-16', 'SUP01', 'xxx', 'Tunai', '500000', '0', '500000', '500000', '0', '0', '', 'admin'),
(10, 'INV1606150010', 'PO1206150012', '2015-06-16', 'SUP01', 'ghjgjgjgjg', 'Tunai', '500000', '0', '500000', '500000', '0', '0', '', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pembeliandetail`
--

DROP TABLE IF EXISTS `po_pembeliandetail`;
CREATE TABLE IF NOT EXISTS `po_pembeliandetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `noinvoice` varchar(50) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `jenis` int(3) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `subdiscount` varchar(50) NOT NULL,
  `subtotal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data untuk tabel `po_pembeliandetail`
--

INSERT INTO `po_pembeliandetail` (`id`, `noinvoice`, `kodebarang`, `jenis`, `jumlah`, `harga`, `subdiscount`, `subtotal`) VALUES
(1, 'INV1805150001', 'KD001', 0, '5', '50000', '0', '250000'),
(2, 'INV1805150002', 'KD001', 0, '1', '50000', '0', '50000'),
(3, 'INV2505150003', 'B01', 0, '5', '60000', '0', '300000'),
(4, 'INV0106150004', 'KD001', 0, '5', '50000', '0', '250000'),
(5, 'INV0106150004', 'B01', 0, '4', '60000', '0', '240000'),
(6, 'INV0506150005', 'KD001', 0, '3', '50000', '0', '150000'),
(7, 'INV0506150005', 'B01', 0, '1', '60000', '0', '60000'),
(8, 'INV1206150006', '123', 0, '1', '55000', '0', '55000'),
(9, 'INV1206150007', '123', 0, '1', '500000', '0', '500000'),
(10, 'INV1206150007', '14', 0, '2', '10000000', '0', '20000000'),
(11, 'INV1606150008', 'LO', 0, '1', '600000', '0', '600000'),
(12, 'INV1606150009', 'LO', 0, '1', '600000', '0', '600000'),
(13, 'INV1606150009', '123', 0, '1', '500000', '0', '500000'),
(14, 'INV1606150009', '123', 0, '1', '500000', '0', '500000'),
(15, 'INV1606150009', '123', 0, '1', '500000', '0', '500000'),
(16, 'INV1606150009', '123', 0, '1', '500000', '0', '500000'),
(17, 'INV1606150009', '123', 0, '1', '500000', '0', '500000'),
(18, 'INV1606150010', '123', 0, '1', '500000', '0', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pembelianretur`
--

DROP TABLE IF EXISTS `po_pembelianretur`;
CREATE TABLE IF NOT EXISTS `po_pembelianretur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noretur` varchar(50) NOT NULL,
  `noinvoice` varchar(50) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `kodesupplier` varchar(50) NOT NULL,
  `carabayar` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `po_pembelianretur`
--

INSERT INTO `po_pembelianretur` (`id`, `noretur`, `noinvoice`, `tgl`, `kodesupplier`, `carabayar`, `total`, `user`) VALUES
(1, 'RTB1905150001', 'INV1805150001', '2015-05-19', 'SUP01', 'Tunai', '250000', 'superadmin'),
(2, 'RTB0106150002', 'INV0106150004', '2015-06-01', 'SUP01', 'Tunai', '100000', 'admin'),
(3, 'RTB1206150003', 'INV1206150007', '2015-06-12', 'SUP01', 'Tunai', '20500000', 'admin'),
(4, 'RTB1206150004', 'INV1206150007', '2015-06-12', 'SUP01', 'Tunai', '20500000', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pembelianreturdetail`
--

DROP TABLE IF EXISTS `po_pembelianreturdetail`;
CREATE TABLE IF NOT EXISTS `po_pembelianreturdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `noretur` varchar(50) NOT NULL,
  `noinvoice` varchar(50) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `subdiscount` varchar(50) NOT NULL,
  `subtotal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data untuk tabel `po_pembelianreturdetail`
--

INSERT INTO `po_pembelianreturdetail` (`id`, `noretur`, `noinvoice`, `kodebarang`, `jumlah`, `harga`, `subdiscount`, `subtotal`) VALUES
(1, 'RTB1905150001', 'INV1805150001', 'KD001', '5', '50000', '0', '250000'),
(2, 'RTB0106150002', 'INV0106150004', 'KD001', '2', '50000', '0', '100000'),
(3, 'RTB1206150003', 'INV1206150007', '123', '1', '500000', '0', '500000'),
(4, 'RTB1206150003', 'INV1206150007', '14', '2', '10000000', '0', '20000000'),
(5, 'RTB1206150004', 'INV1206150007', '123', '0', '500000', '0', '500000'),
(6, 'RTB1206150004', 'INV1206150007', '14', '0', '10000000', '0', '20000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pn`
--

DROP TABLE IF EXISTS `po_pn`;
CREATE TABLE IF NOT EXISTS `po_pn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nopn` varchar(50) NOT NULL,
  `nopr` varchar(50) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data untuk tabel `po_pn`
--

INSERT INTO `po_pn` (`id`, `nopn`, `nopr`, `tgl`, `user`) VALUES
(3, 'NPN1606150001', 'PR1606150008', '2015-06-16', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pndetail`
--

DROP TABLE IF EXISTS `po_pndetail`;
CREATE TABLE IF NOT EXISTS `po_pndetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nopn` varchar(50) NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `po_pndetail`
--

INSERT INTO `po_pndetail` (`id`, `nopn`, `supplier`, `kodebarang`, `harga`) VALUES
(7, 'NPN1606150001', '', '9', ''),
(8, 'NPN1606150001', '', '18', ''),
(9, 'NPN1606150001', '', '9', ''),
(10, 'NPN1606150001', '', '18', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_po`
--

DROP TABLE IF EXISTS `po_po`;
CREATE TABLE IF NOT EXISTS `po_po` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nopo` varchar(50) NOT NULL,
  `nopr` varchar(50) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `kodesupplier` varchar(50) NOT NULL,
  `carabayar` varchar(50) NOT NULL,
  `termin` varchar(50) NOT NULL,
  `total` varchar(50) NOT NULL,
  `discount` varchar(50) NOT NULL,
  `netto` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `po_po`
--

INSERT INTO `po_po` (`id`, `nopo`, `nopr`, `tgl`, `kodesupplier`, `carabayar`, `termin`, `total`, `discount`, `netto`, `user`) VALUES
(1, 'PO1805150001', '', '2015-05-18', 'SUP01', '', '', '250000', '0', '250000', 'superadmin'),
(2, 'PO1805150002', '', '2015-05-18', 'SUP01', '', '', '500000', '0', '500000', 'superadmin'),
(3, 'PO1805150003', '', '2015-05-18', 'SUP01', '', '', '50000', '0', '50000', 'superadmin'),
(4, 'PO1805150004', '', '2015-05-18', 'SUP01', '', '', '50000', '0', '50000', 'superadmin'),
(6, 'PO2505150006', '', '2015-05-25', 'SUP01', '', '', '300000', '0', '300000', 'admin'),
(7, 'PO0106150007', '', '2015-06-01', 'SUP01', '', '', '210000', '0', '210000', 'admin'),
(8, 'PO0106150008', '', '2015-06-01', 'SUP01', '', '', '490000', '0', '490000', 'admin'),
(9, 'PO1106150009', '', '2015-06-11', 'SUP01', '', '', '200000', '0', '200000', 'admin'),
(10, 'PO1106150010', 'PR1106150005', '2015-06-11', 'SUP01', '', '', '600000', '0', '600000', 'admin'),
(11, 'PO1206150011', 'PR1106150004', '2015-06-12', 'SUP01', '', '', '500000', '0', '500000', 'admin'),
(12, 'PO1206150012', 'PR1006150003', '2015-06-12', 'SUP01', 'Tunai', '0', '500000', '0', '500000', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_podetail`
--

DROP TABLE IF EXISTS `po_podetail`;
CREATE TABLE IF NOT EXISTS `po_podetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nopo` varchar(50) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `subdiscount` varchar(50) NOT NULL,
  `subtotal` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `po_podetail`
--

INSERT INTO `po_podetail` (`id`, `nopo`, `kodebarang`, `jumlah`, `harga`, `subdiscount`, `subtotal`) VALUES
(1, 'PO1805150001', 'KD001', '5', '50000', '0', '250000'),
(2, 'PO1805150002', 'KD001', '10', '50000', '0', '500000'),
(3, 'PO1805150003', 'KD001', '1', '50000', '0', '50000'),
(4, 'PO1805150004', 'KD001', '1', '50000', '0', '50000'),
(6, 'PO2505150006', 'B01', '5', '60000', '0', '300000'),
(7, 'PO0106150007', 'KD001', '3', '50000', '0', '150000'),
(8, 'PO0106150007', 'B01', '1', '60000', '0', '60000'),
(9, 'PO0106150008', 'KD001', '5', '50000', '0', '250000'),
(10, 'PO0106150008', 'B01', '4', '60000', '0', '240000'),
(11, 'PO1106150009', 'LO', '1', '100000', '0', '100000'),
(12, 'PO1106150010', 'LO', '1', '600000', '0', '600000'),
(13, 'PO1206150011', '123', '1', '500000', '0', '500000'),
(14, 'PO1206150012', '123', '1', '500000', '0', '500000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_pr`
--

DROP TABLE IF EXISTS `po_pr`;
CREATE TABLE IF NOT EXISTS `po_pr` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nopr` varchar(50) NOT NULL,
  `tgl` varchar(10) NOT NULL,
  `namapr` varchar(512) NOT NULL,
  `departemenpr` varchar(512) NOT NULL,
  `tujuanpr` varchar(512) NOT NULL,
  `kategorianggaran` varchar(5) NOT NULL,
  `user` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data untuk tabel `po_pr`
--

INSERT INTO `po_pr` (`id`, `nopr`, `tgl`, `namapr`, `departemenpr`, `tujuanpr`, `kategorianggaran`, `user`) VALUES
(4, 'PR1006150002', '2015-06-10', 'asd', '8', '234', '16', 'admin'),
(5, 'PR1006150003', '2015-06-10', '123', '8', '456', '16', 'admin'),
(6, 'PR1106150004', '2015-06-11', 'asdasd', '8', 'asdasd', '16', 'admin'),
(8, 'PR1206150005', '2015-06-12', 'Derri', '8', 'asdad', '16', 'admin'),
(9, 'PR1206150006', '2015-06-12', 'asdassd', '13', 'asdad', '16', 'admin'),
(10, 'PR1206150007', '2015-06-12', 'asdasd', '15', 'asdad', '20', 'admin'),
(11, 'PR1606150008', '2015-06-16', 'hgfhhgf', '13', 'fhgfhg', '16', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_prdetail`
--

DROP TABLE IF EXISTS `po_prdetail`;
CREATE TABLE IF NOT EXISTS `po_prdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nopr` varchar(50) NOT NULL,
  `kodebarang` varchar(50) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `spesifikasi` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `po_prdetail`
--

INSERT INTO `po_prdetail` (`id`, `nopr`, `kodebarang`, `jumlah`, `spesifikasi`) VALUES
(5, 'PR1006150002', '123', '1', 'sss'),
(6, 'PR1006150003', '123', '1', ''),
(7, 'PR1106150004', '123', '1', 'asdsfsdfsfd'),
(8, 'PR1106150005', 'LO', '1', ''),
(9, 'PR1206150005', 'MJ', '1', 'meja biasa'),
(10, 'PR1206150006', '2', '1', ''),
(11, 'PR1206150007', '3', '1', ''),
(12, 'PR1606150008', '9', '1', ''),
(13, 'PR1606150008', '18', '1', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_produk`
--

DROP TABLE IF EXISTS `po_produk`;
CREATE TABLE IF NOT EXISTS `po_produk` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `jenis` int(5) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `hargabeli` varchar(50) NOT NULL,
  `hargajual` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`),
  UNIQUE KEY `kode_2` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data untuk tabel `po_produk`
--

INSERT INTO `po_produk` (`id`, `jenis`, `kode`, `nama`, `jumlah`, `hargabeli`, `hargajual`) VALUES
(1, 4, 'KD001', 'KURSI 2', '62', '50000', '0'),
(2, 4, 'B01', 'BANGKU', '62', '60000', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_situs`
--

DROP TABLE IF EXISTS `po_situs`;
CREATE TABLE IF NOT EXISTS `po_situs` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `email_master` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `judul_situs` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url_situs` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `slogan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `description` text COLLATE latin1_general_ci NOT NULL,
  `keywords` text COLLATE latin1_general_ci NOT NULL,
  `maxkonten` int(2) NOT NULL DEFAULT '5',
  `maxadmindata` int(2) NOT NULL DEFAULT '5',
  `maxdata` int(2) NOT NULL DEFAULT '5',
  `maxgalleri` int(2) NOT NULL DEFAULT '4',
  `widgetshare` int(2) NOT NULL DEFAULT '0',
  `theme` varchar(50) COLLATE latin1_general_ci NOT NULL DEFAULT 'tcms',
  `author` text COLLATE latin1_general_ci NOT NULL,
  `alamatkantor` text COLLATE latin1_general_ci NOT NULL,
  `publishwebsite` int(1) NOT NULL DEFAULT '1',
  `publishnews` int(2) NOT NULL,
  `maxgalleridata` int(11) NOT NULL,
  `widgetkomentar` int(2) NOT NULL DEFAULT '1',
  `widgetpenulis` int(2) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `po_situs`
--

INSERT INTO `po_situs` (`id`, `email_master`, `judul_situs`, `url_situs`, `slogan`, `description`, `keywords`, `maxkonten`, `maxadmindata`, `maxdata`, `maxgalleri`, `widgetshare`, `theme`, `author`, `alamatkantor`, `publishwebsite`, `publishnews`, `maxgalleridata`, `widgetkomentar`, `widgetpenulis`) VALUES
(1, 'rekysda@gmail.com', 'PO & Pembelian', 'http://localhost/sister/purchaseorder/', 'Purchase Order', 'WebDesign dengan sistem Responsive', 'po,surabaya,indonesia', 5, 50, 5, 4, 3, 'pos', 'Elyon Christian School', 'Surabaya', 1, 1, 12, 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_supplier`
--

DROP TABLE IF EXISTS `po_supplier`;
CREATE TABLE IF NOT EXISTS `po_supplier` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `telepon` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `po_supplier`
--

INSERT INTO `po_supplier` (`id`, `kode`, `nama`, `alamat`, `telepon`) VALUES
(1, 'SUP01', 'CV. MEDIA MANDIRI2', 'SURABAYA', 'SURABAYA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po_useraura`
--

DROP TABLE IF EXISTS `po_useraura`;
CREATE TABLE IF NOT EXISTS `po_useraura` (
  `UserId` int(15) NOT NULL AUTO_INCREMENT,
  `user` varchar(250) NOT NULL DEFAULT '',
  `password` text NOT NULL,
  `email` varchar(250) NOT NULL DEFAULT '',
  `avatar` varchar(250) NOT NULL DEFAULT '',
  `level` enum('Administrator','Payroll','HRD') NOT NULL DEFAULT 'Administrator',
  `tipe` varchar(250) NOT NULL DEFAULT '',
  `is_online` int(5) NOT NULL DEFAULT '0',
  `last_ping` text NOT NULL,
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `exp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `biodata` text NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data untuk tabel `po_useraura`
--

INSERT INTO `po_useraura` (`UserId`, `user`, `password`, `email`, `avatar`, `level`, `tipe`, `is_online`, `last_ping`, `start`, `exp`, `biodata`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@elyon.sch.id', 'af0675a9e843c6c8f78163a9118efc78.jpg', 'Administrator', 'aktif', 1, '2015-05-12 09:15:46', '2010-08-27 00:00:00', '2034-08-27 00:00:00', '<p><b>none</b></p>'),
(28, 'superadmin', 'b11d5ece6353d17f85c5ad30e0a02360', 'rekysda@gmail.com', '', 'Administrator', 'aktif', 1, '2015-03-21 23:05:28', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
