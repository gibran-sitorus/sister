-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2015 at 05:10 AM
-- Server version: 5.6.16
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
-- Table structure for table `pos_produk`
--

DROP TABLE IF EXISTS `pos_produk`;
CREATE TABLE IF NOT EXISTS `pos_produk` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `jenis` int(5) NOT NULL,
  `jenjang` varchar(50) NOT NULL,
  `kode` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `hargabeli` varchar(50) NOT NULL,
  `hargajual` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kode` (`kode`),
  UNIQUE KEY `kode_2` (`kode`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=206 ;

--
-- Dumping data for table `pos_produk`
--

INSERT INTO `pos_produk` (`id`, `jenis`, `jenjang`, `kode`, `nama`, `jumlah`, `hargabeli`, `hargajual`) VALUES
(1, 1, '1', 'BAJUPG01', 'HEM LAKI - LAKI PG XS', '34', '0', '0'),
(2, 1, '1', 'BAJUPG02', 'HEM LAKI - LAKI PG S', '26', '0', '0'),
(3, 1, '1', 'BAJUPG03', 'HEM LAKI - LAKI PG M', '15', '0', '0'),
(4, 1, '1', 'BAJUPG04', 'HEM LAKI - LAKI PG L', '4', '0', '0'),
(5, 1, '1', 'BAJUPG05', 'HEM LAKI - LAKI PG XL', '9', '0', '0'),
(6, 1, '1', 'BAJUPG06', 'CELANA LAKI - LAKI PG XS', '39', '0', '0'),
(7, 1, '1', 'BAJUPG07', 'CELANA LAKI - LAKI PG S', '9', '0', '0'),
(8, 1, '1', 'BAJUPG08', 'CELANA LAKI - LAKI PG M', '20', '0', '0'),
(9, 1, '1', 'BAJUPG09', 'CELANA LAKI - LAKI PG L', '17', '0', '0'),
(10, 1, '1', 'BAJUPG10', 'CELANA LAKI - LAKI PG XL', '4', '0', '0'),
(11, 1, '1', 'BAJUPG11', 'DRESS WANITA PG XS', '5', '0', '0'),
(12, 1, '1', 'BAJUPG12', 'DRESS WANITA PG S', '5', '0', '0'),
(13, 1, '1', 'BAJUPG13', 'DRESS WANITA PG M', '18', '0', '0'),
(14, 1, '1', 'BAJUPG14', 'DRESS WANITA PG L', '20', '0', '0'),
(15, 1, '1', 'BAJUPG15', 'DRESS WANITA PG XL', '22', '0', '0'),
(16, 1, '1', 'BAJUPG16', 'KAOS OLAH RAGA PG S', '24', '0', '0'),
(17, 1, '1', 'BAJUPG17', 'KAOS OLAH RAGA PG M', '21', '0', '0'),
(18, 1, '1', 'BAJUPG18', 'KAOS OLAH RAGA PG L', '11', '0', '0'),
(19, 1, '1', 'BAJUPG19', 'KAOS OLAH RAGA PG XL', '13', '0', '0'),
(20, 1, '1', 'BAJUPG20', 'KAOS OLAH RAGA PG XXL', '20', '0', '0'),
(21, 1, '1', 'BAJUPG21', 'KAOS OLAH RAGA PG 4L', '10', '0', '0'),
(22, 1, '1', 'BAJUPG22', 'CELANA OLAH RAGA PG S', '17', '0', '0'),
(23, 1, '1', 'BAJUPG23', 'CELANA OLAH RAGA PG M', '14', '0', '0'),
(24, 1, '1', 'BAJUPG24', 'CELANA OLAH RAGA PG L', '40', '0', '0'),
(25, 1, '1', 'BAJUPG25', 'CELANA OLAH RAGA PG XL', '25', '0', '0'),
(26, 1, '1', 'BAJUPG26', 'CELANA OLAH RAGA PG XXL', '13', '0', '0'),
(27, 1, '1', 'BAJUPG27', 'CELANA OLAH RAGA PG 4L', '10', '0', '0'),
(28, 1, '1', 'BAJUPG28', 'TOPI PG  ', '6', '0', '0'),
(29, 1, '2', 'BAJUKG01', 'HEM LAKI - LAKI KG XS', '0', '0', '0'),
(30, 1, '2', 'BAJUKG02', 'HEM LAKI - LAKI KG S', '17', '0', '0'),
(31, 1, '2', 'BAJUKG03', 'HEM LAKI - LAKI KG M', '9', '0', '0'),
(32, 1, '2', 'BAJUKG04', 'HEM LAKI - LAKI KG L', '6', '0', '0'),
(33, 1, '2', 'BAJUKG05', 'HEM LAKI - LAKI KG XL', '4', '0', '0'),
(34, 1, '2', 'BAJUKG06', 'HEM LAKI - LAKI KG XXL', '25', '0', '0'),
(35, 1, '2', 'BAJUKG07', 'CELANA LAKI - LAKI KG XS', '0', '0', '0'),
(36, 1, '2', 'BAJUKG08', 'CELANA LAKI - LAKI KG S', '36', '0', '0'),
(37, 1, '2', 'BAJUKG09', 'CELANA LAKI - LAKI KG M', '37', '0', '0'),
(38, 1, '2', 'BAJUKG10', 'CELANA LAKI - LAKI KG L', '9', '0', '0'),
(39, 1, '2', 'BAJUKG11', 'CELANA LAKI - LAKI KG XL', '15', '0', '0'),
(40, 1, '2', 'BAJUKG12', 'CELANA LAKI - LAKI KG XXL', '9', '0', '0'),
(41, 1, '2', 'BAJUKG13', 'HEM WANITA KG XS', '0', '0', '0'),
(42, 1, '2', 'BAJUKG14', 'HEM WANITA KG S', '28', '0', '0'),
(43, 1, '2', 'BAJUKG15', 'HEM WANITA KG M', '21', '0', '0'),
(44, 1, '2', 'BAJUKG16', 'HEM WANITA KG L', '8', '0', '0'),
(45, 1, '2', 'BAJUKG17', 'HEM WANITA KG XL', '9', '0', '0'),
(46, 1, '2', 'BAJUKG18', 'HEM WANITA KG XXL', '15', '0', '0'),
(47, 1, '2', 'BAJUKG19', 'ROK WANITA KG XS', '0', '0', '0'),
(48, 1, '2', 'BAJUKG20', 'ROK WANITA KG S', '19', '0', '0'),
(49, 1, '2', 'BAJUKG21', 'ROK WANITA KG M', '7', '0', '0'),
(50, 1, '2', 'BAJUKG22', 'ROK WANITA KG L', '6', '0', '0'),
(51, 1, '2', 'BAJUKG23', 'ROK WANITA KG XL', '18', '0', '0'),
(52, 1, '2', 'BAJUKG24', 'ROK WANITA KG XXL', '26', '0', '0'),
(53, 1, '2', 'BAJUKG25', 'KAOS OLAH RAGA KG S', '3', '0', '0'),
(54, 1, '2', 'BAJUKG26', 'KAOS OLAH RAGA KG M', '17', '0', '0'),
(55, 1, '2', 'BAJUKG27', 'KAOS OLAH RAGA KG L', '27', '0', '0'),
(56, 1, '2', 'BAJUKG28', 'KAOS OLAH RAGA KG XL', '34', '0', '0'),
(57, 1, '2', 'BAJUKG29', 'KAOS OLAH RAGA KG XXL', '33', '0', '0'),
(58, 1, '2', 'BAJUKG30', 'KAOS OLAH RAGA KG 4L', '10', '0', '0'),
(59, 1, '2', 'BAJUKG31', 'CELANA OLAH RAGA KG S', '23', '0', '0'),
(60, 1, '2', 'BAJUKG32', 'CELANA OLAH RAGA KG M', '24', '0', '0'),
(61, 1, '2', 'BAJUKG33', 'CELANA OLAH RAGA KG L', '0', '0', '0'),
(62, 1, '2', 'BAJUKG34', 'CELANA OLAH RAGA KG XL', '34', '0', '0'),
(63, 1, '2', 'BAJUKG35', 'CELANA OLAH RAGA KG XXL', '40', '0', '0'),
(64, 1, '2', 'BAJUKG36', 'CELANA OLAH RAGA KG 4L', '8', '0', '0'),
(65, 1, '2', 'BAJUKG37', 'TOPI KG ', '2', '0', '0'),
(66, 1, '3', 'BAJUSD01', 'HEM LAKI - LAKI SD XS', '0', '0', '0'),
(67, 1, '3', 'BAJUSD02', 'HEM LAKI - LAKI SD S', '25', '0', '0'),
(68, 1, '3', 'BAJUSD03', 'HEM LAKI - LAKI SD M', '35', '0', '0'),
(69, 1, '3', 'BAJUSD04', 'HEM LAKI - LAKI SD L', '16', '0', '0'),
(70, 1, '3', 'BAJUSD05', 'HEM LAKI - LAKI SD XL', '13', '0', '0'),
(71, 1, '3', 'BAJUSD06', 'HEM LAKI - LAKI SD XXL', '26', '0', '0'),
(72, 1, '3', 'BAJUSD07', 'HEM LAKI - LAKI SD 4L', '29', '0', '0'),
(73, 1, '3', 'BAJUSD08', 'HEM LAKI - LAKI SD 5L', '10', '0', '0'),
(74, 1, '3', 'BAJUSD09', 'CELANA LAKI - LAKI SD XS', '0', '0', '0'),
(75, 1, '3', 'BAJUSD10', 'CELANA LAKI - LAKI SD S', '47', '0', '0'),
(76, 1, '3', 'BAJUSD11', 'CELANA LAKI - LAKI SD M', '33', '0', '0'),
(77, 1, '3', 'BAJUSD12', 'CELANA LAKI - LAKI SD L', '24', '0', '0'),
(78, 1, '3', 'BAJUSD13', 'CELANA LAKI - LAKI SD XL', '1', '0', '0'),
(79, 1, '3', 'BAJUSD14', 'CELANA LAKI - LAKI SD XXL', '11', '0', '0'),
(80, 1, '3', 'BAJUSD15', 'CELANA LAKI - LAKI SD 4L', '28', '0', '0'),
(81, 1, '3', 'BAJUSD16', 'CELANA LAKI - LAKI SD 5L', '4', '0', '0'),
(82, 1, '3', 'BAJUSD17', 'HEM WANITA SD XS', '0', '0', '0'),
(83, 1, '3', 'BAJUSD18', 'HEM WANITA SD S', '10', '0', '0'),
(84, 1, '3', 'BAJUSD19', 'HEM WANITA SD M', '18', '0', '0'),
(85, 1, '3', 'BAJUSD20', 'HEM WANITA SD L', '24', '0', '0'),
(86, 1, '3', 'BAJUSD21', 'HEM WANITA SD XL', '30', '0', '0'),
(87, 1, '3', 'BAJUSD22', 'HEM WANITA SD XXL', '54', '0', '0'),
(88, 1, '3', 'BAJUSD23', 'HEM WANITA SD 4L', '14', '0', '0'),
(89, 1, '3', 'BAJUSD24', 'HEM WANITA SD 5L', '11', '0', '0'),
(90, 1, '3', 'BAJUSD25', 'ROK WANITA SD XS', '0', '0', '0'),
(91, 1, '3', 'BAJUSD26', 'ROK WANITA SD S', '8', '0', '0'),
(92, 1, '3', 'BAJUSD27', 'ROK WANITA SD M', '38', '0', '0'),
(93, 1, '3', 'BAJUSD28', 'ROK WANITA SD L', '31', '0', '0'),
(94, 1, '3', 'BAJUSD29', 'ROK WANITA SD XL', '35', '0', '0'),
(95, 1, '3', 'BAJUSD30', 'ROK WANITA SD XXL', '48', '0', '0'),
(96, 1, '3', 'BAJUSD31', 'ROK WANITA SD 4L', '18', '0', '0'),
(97, 1, '3', 'BAJUSD32', 'ROK WANITA SD 5L', '30', '0', '0'),
(98, 1, '3', 'BAJUSD33', 'KAOS OLAH RAGA SD S', '20', '0', '0'),
(99, 1, '3', 'BAJUSD34', 'KAOS OLAH RAGA SD M', '28', '0', '0'),
(100, 1, '3', 'BAJUSD35', 'KAOS OLAH RAGA SD L', '31', '0', '0'),
(101, 1, '3', 'BAJUSD36', 'KAOS OLAH RAGA SD XL', '61', '0', '0'),
(102, 1, '3', 'BAJUSD37', 'KAOS OLAH RAGA SD XXL', '18', '0', '0'),
(103, 1, '3', 'BAJUSD38', 'CELANA OLAH RAGA SD S', '40', '0', '0'),
(104, 1, '3', 'BAJUSD39', 'CELANA OLAH RAGA SD M', '24', '0', '0'),
(105, 1, '3', 'BAJUSD40', 'CELANA OLAH RAGA SD L', '29', '0', '0'),
(106, 1, '3', 'BAJUSD41', 'CELANA OLAH RAGA SD XL', '60', '0', '0'),
(107, 1, '3', 'BAJUSD42', 'CELANA OLAH RAGA SD XXL', '21', '0', '0'),
(108, 1, '3', 'BAJUSD43', 'TOPI SD LAKI / WANITA ', '2', '0', '0'),
(109, 1, '3', 'BAJUSD44', 'KAIN BIRU KOTAK-KOTAK SD 79075', '1', '0', '0'),
(110, 1, '3', 'BAJUSD45', 'KAIN BIRU KOTAK KOTAK  SD 80', '1', '0', '0'),
(111, 1, '3', 'BAJUSD46', 'KAIN BIRU KOTAK-KOTAK  SD 81,5', '2', '0', '0'),
(112, 1, '3', 'BAJUSD47', 'KAIN BIRU KOTAK-KOTAK  SD 82,5', '1', '0', '0'),
(113, 1, '3', 'BAJUSD48', 'KAIN PUTIH  SD ', '11', '0', '0'),
(114, 1, '3', 'BAJUSD49', 'KAIN CAMPUR PUTIH & KOTAK-KOTAK SD ', '20', '0', '0'),
(115, 1, '4', 'BAJUSMP01', 'HEM LAKI - LAKI SMP XS', '22', '0', '0'),
(116, 1, '4', 'BAJUSMP02', 'HEM LAKI - LAKI SMP S', '11', '0', '0'),
(117, 1, '4', 'BAJUSMP03', 'HEM LAKI - LAKI SMP M', '19', '0', '0'),
(118, 1, '4', 'BAJUSMP04', 'HEM LAKI - LAKI SMP L', '24', '0', '0'),
(119, 1, '4', 'BAJUSMP05', 'HEM LAKI - LAKI SMP XL', '26', '0', '0'),
(120, 1, '4', 'BAJUSMP06', 'HEM LAKI - LAKI SMP XXL', '23', '0', '0'),
(121, 1, '4', 'BAJUSMP07', 'HEM LAKI - LAKI SMP 4L', '15', '0', '0'),
(122, 1, '4', 'BAJUSMP08', 'HEM LAKI - LAKI SMP 5L', '9', '0', '0'),
(123, 1, '4', 'BAJUSMP09', 'DASI LAKI-LAKI  SMP ', '29', '0', '0'),
(124, 1, '4', 'BAJUSMP10', 'CELANA LAKI - LAKI  SMP XS', '4', '0', '0'),
(125, 1, '4', 'BAJUSMP11', 'CELANA LAKI - LAKI  SMP S', '10', '0', '0'),
(126, 1, '4', 'BAJUSMP12', 'CELANA LAKI - LAKI  SMP M', '6', '0', '0'),
(127, 1, '4', 'BAJUSMP13', 'CELANA LAKI - LAKI  SMP L', '2', '0', '0'),
(128, 1, '4', 'BAJUSMP14', 'CELANA LAKI - LAKI  SMP XL', '50', '0', '0'),
(129, 1, '4', 'BAJUSMP15', 'CELANA LAKI - LAKI  SMP XXL', '10', '0', '0'),
(130, 1, '4', 'BAJUSMP16', 'CELANA LAKI - LAKI  SMP 4L', '26', '0', '0'),
(131, 1, '4', 'BAJUSMP17', 'CELANA LAKI - LAKI  SMP 5L', '11', '0', '0'),
(132, 1, '4', 'BAJUSMP18', 'BLOUSE WANITA  SMP XS', '14', '0', '0'),
(133, 1, '4', 'BAJUSMP19', 'BLOUSE WANITA  SMP S', '12', '0', '0'),
(134, 1, '4', 'BAJUSMP20', 'BLOUSE WANITA  SMP M', '10', '0', '0'),
(135, 1, '4', 'BAJUSMP21', 'BLOUSE WANITA  SMP L', '5', '0', '0'),
(136, 1, '4', 'BAJUSMP22', 'BLOUSE WANITA  SMP XL', '19', '0', '0'),
(137, 1, '4', 'BAJUSMP23', 'BLOUSE WANITA  SMP XXL', '23', '0', '0'),
(138, 1, '4', 'BAJUSMP24', 'BLOUSE WANITA  SMP 5L', '14', '0', '0'),
(139, 1, '4', 'BAJUSMP25', 'DASI WANITA  SMP ', '10', '0', '0'),
(140, 1, '4', 'BAJUSMP26', 'JUMPER WANITA  SMP XS', '5', '0', '0'),
(141, 1, '4', 'BAJUSMP27', 'JUMPER WANITA  SMP S', '8', '0', '0'),
(142, 1, '4', 'BAJUSMP28', 'JUMPER WANITA  SMP M', '19', '0', '0'),
(143, 1, '4', 'BAJUSMP29', 'JUMPER WANITA  SMP L', '1', '0', '0'),
(144, 1, '4', 'BAJUSMP30', 'JUMPER WANITA  SMP XL', '2', '0', '0'),
(145, 1, '4', 'BAJUSMP31', 'JUMPER WANITA  SMP XXL', '20', '0', '0'),
(146, 1, '4', 'BAJUSMP32', 'JUMPER WANITA  SMP 5L', '16', '0', '0'),
(147, 1, '4', 'BAJUSMP33', 'KAOS OLAH RAGA  SMP S', '8', '0', '0'),
(148, 1, '4', 'BAJUSMP34', 'KAOS OLAH RAGA  SMP M', '14', '0', '0'),
(149, 1, '4', 'BAJUSMP35', 'KAOS OLAH RAGA  SMP L', '21', '0', '0'),
(150, 1, '4', 'BAJUSMP36', 'KAOS OLAH RAGA  SMP XL', '23', '0', '0'),
(151, 1, '4', 'BAJUSMP37', 'KAOS OLAH RAGA  SMP XXL', '18', '0', '0'),
(152, 1, '4', 'BAJUSMP38', 'KAOS OLAH RAGA  SMP 3L', '7', '0', '0'),
(153, 1, '4', 'BAJUSMP39', 'KAOS OLAH RAGA  SMP 4L', '10', '0', '0'),
(154, 1, '4', 'BAJUSMP40', 'CELANA OLAH RAGA  SMP S', '17', '0', '0'),
(155, 1, '4', 'BAJUSMP41', 'CELANA OLAH RAGA  SMP M', '21', '0', '0'),
(156, 1, '4', 'BAJUSMP42', 'CELANA OLAH RAGA  SMP L', '11', '0', '0'),
(157, 1, '4', 'BAJUSMP43', 'CELANA OLAH RAGA  SMP XL', '14', '0', '0'),
(158, 1, '4', 'BAJUSMP44', 'CELANA OLAH RAGA  SMP XXL', '18', '0', '0'),
(159, 1, '4', 'BAJUSMP45', 'CELANA OLAH RAGA  SMP 4L', '9', '0', '0'),
(160, 1, '4', 'BAJUSMP46', 'TOPI  SMP ', '6', '0', '0'),
(161, 1, '5', 'BAJUSMA01', 'HEM LAKI - LAKI SMA XS', '0', '0', '0'),
(162, 1, '5', 'BAJUSMA02', 'HEM LAKI - LAKI SMA S', '0', '0', '0'),
(163, 1, '5', 'BAJUSMA03', 'HEM LAKI - LAKI SMA M', '0', '0', '0'),
(164, 1, '5', 'BAJUSMA04', 'HEM LAKI - LAKI SMA L', '0', '0', '0'),
(165, 1, '5', 'BAJUSMA05', 'HEM LAKI - LAKI SMA XL', '3', '0', '0'),
(166, 1, '5', 'BAJUSMA06', 'HEM LAKI - LAKI SMA XXL', '5', '0', '0'),
(167, 1, '5', 'BAJUSMA07', 'HEM LAKI - LAKI SMA 4L', '0', '0', '0'),
(168, 1, '5', 'BAJUSMA08', 'HEM LAKI - LAKI SMA 5L', '0', '0', '0'),
(169, 1, '5', 'BAJUSMA09', 'DASI LAKI-LAKI  SMA ', '6', '0', '0'),
(170, 1, '5', 'BAJUSMA10', 'CELANA LAKI - LAKI  SMA XS', '0', '0', '0'),
(171, 1, '5', 'BAJUSMA11', 'CELANA LAKI - LAKI  SMA S', '0', '0', '0'),
(172, 1, '5', 'BAJUSMA12', 'CELANA LAKI - LAKI  SMA M', '0', '0', '0'),
(173, 1, '5', 'BAJUSMA13', 'CELANA LAKI - LAKI  SMA L', '0', '0', '0'),
(174, 1, '5', 'BAJUSMA14', 'CELANA LAKI - LAKI  SMA XL', '0', '0', '0'),
(175, 1, '5', 'BAJUSMA15', 'CELANA LAKI - LAKI  SMA XXL', '0', '0', '0'),
(176, 1, '5', 'BAJUSMA16', 'CELANA LAKI - LAKI  SMA 4L', '0', '0', '0'),
(177, 1, '5', 'BAJUSMA17', 'CELANA LAKI - LAKI  SMA 5L', '0', '0', '0'),
(178, 1, '5', 'BAJUSMA18', 'HEM WANITA  SMA XS', '0', '0', '0'),
(179, 1, '5', 'BAJUSMA19', 'HEM WANITA  SMA S', '2', '0', '0'),
(180, 1, '5', 'BAJUSMA20', 'HEM WANITA  SMA M', '4', '0', '0'),
(181, 1, '5', 'BAJUSMA21', 'HEM WANITA  SMA L', '2', '0', '0'),
(182, 1, '5', 'BAJUSMA22', 'HEM WANITA  SMA XL', '2', '0', '0'),
(183, 1, '5', 'BAJUSMA23', 'HEM WANITA  SMA XXL', '2', '0', '0'),
(184, 1, '5', 'BAJUSMA24', 'HEM WANITA  SMA 5L', '0', '0', '0'),
(185, 1, '5', 'BAJUSMA25', 'DASI WANITA  SMA ', '10', '0', '0'),
(186, 1, '5', 'BAJUSMA26', 'ROK WANITA  SMA XS', '0', '0', '0'),
(187, 1, '5', 'BAJUSMA27', 'ROK WANITA  SMA S', '0', '0', '0'),
(188, 1, '5', 'BAJUSMA28', 'ROK WANITA  SMA M', '0', '0', '0'),
(189, 1, '5', 'BAJUSMA29', 'ROK WANITA  SMA L', '1', '0', '0'),
(190, 1, '5', 'BAJUSMA30', 'ROK WANITA  SMA XL', '1', '0', '0'),
(191, 1, '5', 'BAJUSMA31', 'ROK WANITA  SMA XXL', '2', '0', '0'),
(192, 1, '5', 'BAJUSMA32', 'ROK WANITA  SMA 5L', '0', '0', '0'),
(193, 1, '5', 'BAJUSMA33', 'ROMPI LAKI-LAKI  SMA S', '0', '0', '0'),
(194, 1, '5', 'BAJUSMA34', 'ROMPI LAKI-LAKI  SMA M', '1', '0', '0'),
(195, 1, '5', 'BAJUSMA35', 'ROMPI LAKI-LAKI  SMA L', '0', '0', '0'),
(196, 1, '5', 'BAJUSMA36', 'ROMPI LAKI-LAKI  SMA XL', '0', '0', '0'),
(197, 1, '5', 'BAJUSMA37', 'ROMPI LAKI-LAKI  SMA XXL', '0', '0', '0'),
(198, 1, '5', 'BAJUSMA38', 'ROMPI LAKI-LAKI  SMA 3L', '0', '0', '0'),
(199, 1, '5', 'BAJUSMA39', 'ROMPI LAKI-LAKI  SMA 4L', '0', '0', '0'),
(200, 1, '5', 'BAJUSMA40', 'ROMPI WANITA  SMA S', '0', '0', '0'),
(201, 1, '5', 'BAJUSMA41', 'ROMPI WANITA  SMA M', '0', '0', '0'),
(202, 1, '5', 'BAJUSMA42', 'ROMPI WANITA  SMA L', '0', '0', '0'),
(203, 1, '5', 'BAJUSMA43', 'ROMPI WANITA  SMA XL', '0', '0', '0'),
(204, 1, '5', 'BAJUSMA44', 'ROMPI WANITA  SMA XXL', '0', '0', '0'),
(205, 1, '5', 'BAJUSMA45', 'ROMPI WANITA  SMA 4L', '0', '0', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
