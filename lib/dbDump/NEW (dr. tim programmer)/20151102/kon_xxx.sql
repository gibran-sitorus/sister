/*
Navicat MySQL Data Transfer

Source Server         : locale
Source Server Version : 50536
Source Host           : 127.0.0.1:3306
Source Database       : sister_siadu

Target Server Type    : MYSQL
Target Server Version : 50536
File Encoding         : 65001

Date: 2015-11-02 05:55:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kon_aksi
-- ----------------------------
DROP TABLE IF EXISTS `kon_aksi`;
CREATE TABLE `kon_aksi` (
  `id_aksi` int(11) NOT NULL AUTO_INCREMENT,
  `aksi` char(1) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_aksi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_aksi
-- ----------------------------
INSERT INTO `kon_aksi` VALUES ('1', 'r', 'read');
INSERT INTO `kon_aksi` VALUES ('2', 'c', 'create');
INSERT INTO `kon_aksi` VALUES ('3', 'u', 'update');
INSERT INTO `kon_aksi` VALUES ('4', 'd', 'delete');
INSERT INTO `kon_aksi` VALUES ('5', 'p', 'print/report');

-- ----------------------------
-- Table structure for kon_grupmenu
-- ----------------------------
DROP TABLE IF EXISTS `kon_grupmenu`;
CREATE TABLE `kon_grupmenu` (
  `id_grupmenu` int(11) NOT NULL AUTO_INCREMENT,
  `id_katgrupmenu` int(11) NOT NULL,
  `id_modul` int(11) NOT NULL,
  `grupmenu` varchar(50) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id_grupmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_grupmenu
-- ----------------------------
INSERT INTO `kon_grupmenu` VALUES ('1', '2', '1', 'Menu Kesiswaan', 'four');
INSERT INTO `kon_grupmenu` VALUES ('2', '2', '1', 'Menu Belajar - Mengajar', 'four');
INSERT INTO `kon_grupmenu` VALUES ('3', '1', '1', 'Menu Master', 'four');
INSERT INTO `kon_grupmenu` VALUES ('4', '2', '2', 'Menu Transaksi', 'four');
INSERT INTO `kon_grupmenu` VALUES ('5', '2', '6', 'Transaksi Keuangan Umum', '');
INSERT INTO `kon_grupmenu` VALUES ('6', '1', '6', 'Master Keuangan', 'four');
INSERT INTO `kon_grupmenu` VALUES ('7', '1', '9', 'Menu Sistem', 'double');
INSERT INTO `kon_grupmenu` VALUES ('8', '2', '9', 'Menu User', 'double');
INSERT INTO `kon_grupmenu` VALUES ('9', '1', '2', 'Menu Master', 'four');
INSERT INTO `kon_grupmenu` VALUES ('14', '1', '3', 'Menu Master ', 'double double-vertic');
INSERT INTO `kon_grupmenu` VALUES ('15', '2', '3', 'Menu Transaksi', 'double double-vertic');
INSERT INTO `kon_grupmenu` VALUES ('16', '1', '5', 'Master HRD', 'four');
INSERT INTO `kon_grupmenu` VALUES ('17', '2', '5', 'Transaksi HRD', 'four');
INSERT INTO `kon_grupmenu` VALUES ('18', '2', '5', 'Penggajian', 'four');
INSERT INTO `kon_grupmenu` VALUES ('19', '1', '7', 'Master Student Service', 'four');
INSERT INTO `kon_grupmenu` VALUES ('20', '2', '7', 'Pembelian', 'four');
INSERT INTO `kon_grupmenu` VALUES ('21', '2', '7', 'Penjualan', '');
INSERT INTO `kon_grupmenu` VALUES ('24', '2', '7', 'Jasa', 'four');
INSERT INTO `kon_grupmenu` VALUES ('25', '2', '7', 'Hutang / Piutang', 'four');
INSERT INTO `kon_grupmenu` VALUES ('26', '2', '7', 'biaya', 'four');
INSERT INTO `kon_grupmenu` VALUES ('27', '2', '7', 'Laporan', 'four');
INSERT INTO `kon_grupmenu` VALUES ('28', '2', '7', 'Setting', '');
INSERT INTO `kon_grupmenu` VALUES ('29', '1', '13', 'Master PO', 'four');
INSERT INTO `kon_grupmenu` VALUES ('30', '2', '13', 'Permintaan', 'four');
INSERT INTO `kon_grupmenu` VALUES ('31', '1', '13', 'Penawaran', 'four');
INSERT INTO `kon_grupmenu` VALUES ('32', '2', '13', 'Pemesanan', 'four');
INSERT INTO `kon_grupmenu` VALUES ('33', '2', '13', 'Pembelian', 'four');
INSERT INTO `kon_grupmenu` VALUES ('34', '2', '13', 'setting', '');
INSERT INTO `kon_grupmenu` VALUES ('35', '1', '4', 'Transaksi Sarpras', 'four');
INSERT INTO `kon_grupmenu` VALUES ('37', '1', '4', 'Master Sarpras', 'four');
INSERT INTO `kon_grupmenu` VALUES ('38', '1', '14', 'setting', 'four');
INSERT INTO `kon_grupmenu` VALUES ('39', '2', '14', 'transaksi', 'four');
INSERT INTO `kon_grupmenu` VALUES ('40', '2', '6', 'Transaksi Keuangan Siswa ', 'four');

-- ----------------------------
-- Table structure for kon_grupmodul
-- ----------------------------
DROP TABLE IF EXISTS `kon_grupmodul`;
CREATE TABLE `kon_grupmodul` (
  `id_grupmodul` int(11) NOT NULL AUTO_INCREMENT,
  `grupmodul` varchar(50) NOT NULL,
  `size` varchar(20) NOT NULL,
  PRIMARY KEY (`id_grupmodul`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_grupmodul
-- ----------------------------
INSERT INTO `kon_grupmodul` VALUES ('1', 'satu', 'four');
INSERT INTO `kon_grupmodul` VALUES ('2', 'dua', 'four');
INSERT INTO `kon_grupmodul` VALUES ('3', 'tiga', 'four');

-- ----------------------------
-- Table structure for kon_icon
-- ----------------------------
DROP TABLE IF EXISTS `kon_icon`;
CREATE TABLE `kon_icon` (
  `id_icon` int(11) NOT NULL AUTO_INCREMENT,
  `icon` varchar(25) NOT NULL,
  PRIMARY KEY (`id_icon`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_icon
-- ----------------------------
INSERT INTO `kon_icon` VALUES ('1', 'akademik');
INSERT INTO `kon_icon` VALUES ('2', 'sarpras');
INSERT INTO `kon_icon` VALUES ('3', 'hrd');
INSERT INTO `kon_icon` VALUES ('4', 'psb');
INSERT INTO `kon_icon` VALUES ('5', 'keuangan');
INSERT INTO `kon_icon` VALUES ('6', 'student');
INSERT INTO `kon_icon` VALUES ('7', 'perpus');
INSERT INTO `kon_icon` VALUES ('8', 'manajemen');
INSERT INTO `kon_icon` VALUES ('9', 'pencil');
INSERT INTO `kon_icon` VALUES ('10', 'address-book');
INSERT INTO `kon_icon` VALUES ('11', 'book');
INSERT INTO `kon_icon` VALUES ('12', 'copy');
INSERT INTO `kon_icon` VALUES ('13', 'user-3');
INSERT INTO `kon_icon` VALUES ('14', 'user');
INSERT INTO `kon_icon` VALUES ('15', 'grid-view');
INSERT INTO `kon_icon` VALUES ('16', 'tab');
INSERT INTO `kon_icon` VALUES ('17', 'cog');
INSERT INTO `kon_icon` VALUES ('18', 'user-2');
INSERT INTO `kon_icon` VALUES ('20', 'loop');

-- ----------------------------
-- Table structure for kon_katgrupmenu
-- ----------------------------
DROP TABLE IF EXISTS `kon_katgrupmenu`;
CREATE TABLE `kon_katgrupmenu` (
  `id_katgrupmenu` int(11) NOT NULL AUTO_INCREMENT,
  `katgrupmenu` char(1) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_katgrupmenu`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_katgrupmenu
-- ----------------------------
INSERT INTO `kon_katgrupmenu` VALUES ('1', 'M', 'Master');
INSERT INTO `kon_katgrupmenu` VALUES ('2', 'T', 'Transaksi');

-- ----------------------------
-- Table structure for kon_level
-- ----------------------------
DROP TABLE IF EXISTS `kon_level`;
CREATE TABLE `kon_level` (
  `id_level` int(11) NOT NULL AUTO_INCREMENT,
  `level` varchar(20) NOT NULL,
  `urutan` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_level
-- ----------------------------
INSERT INTO `kon_level` VALUES ('17', 'SA', '1', 'Super Admin');
INSERT INTO `kon_level` VALUES ('18', 'A+', '2', 'Admin Plus');
INSERT INTO `kon_level` VALUES ('19', 'A', '3', 'Admin');
INSERT INTO `kon_level` VALUES ('20', 'O', '4', 'Operator');
INSERT INTO `kon_level` VALUES ('21', 'G', '5', 'Guest');

-- ----------------------------
-- Table structure for kon_levelaksi
-- ----------------------------
DROP TABLE IF EXISTS `kon_levelaksi`;
CREATE TABLE `kon_levelaksi` (
  `id_levelaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_levelkatgrupmenu` int(11) NOT NULL,
  `id_aksi` int(11) NOT NULL,
  PRIMARY KEY (`id_levelaksi`),
  KEY `id_levelkatgrupmenu` (`id_levelkatgrupmenu`),
  KEY `id_aksi` (`id_aksi`),
  CONSTRAINT `kon_levelaksi_ibfk_1` FOREIGN KEY (`id_levelkatgrupmenu`) REFERENCES `kon_levelkatgrupmenu` (`id_levelkatgrupmenu`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kon_levelaksi_ibfk_2` FOREIGN KEY (`id_aksi`) REFERENCES `kon_aksi` (`id_aksi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=450 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_levelaksi
-- ----------------------------
INSERT INTO `kon_levelaksi` VALUES ('221', '53', '1');
INSERT INTO `kon_levelaksi` VALUES ('222', '54', '1');
INSERT INTO `kon_levelaksi` VALUES ('223', '53', '2');
INSERT INTO `kon_levelaksi` VALUES ('224', '54', '2');
INSERT INTO `kon_levelaksi` VALUES ('225', '53', '3');
INSERT INTO `kon_levelaksi` VALUES ('226', '54', '3');
INSERT INTO `kon_levelaksi` VALUES ('227', '53', '4');
INSERT INTO `kon_levelaksi` VALUES ('228', '54', '4');
INSERT INTO `kon_levelaksi` VALUES ('229', '53', '5');
INSERT INTO `kon_levelaksi` VALUES ('230', '54', '5');
INSERT INTO `kon_levelaksi` VALUES ('231', '55', '1');
INSERT INTO `kon_levelaksi` VALUES ('232', '56', '1');
INSERT INTO `kon_levelaksi` VALUES ('233', '55', '2');
INSERT INTO `kon_levelaksi` VALUES ('234', '56', '2');
INSERT INTO `kon_levelaksi` VALUES ('235', '55', '3');
INSERT INTO `kon_levelaksi` VALUES ('236', '56', '3');
INSERT INTO `kon_levelaksi` VALUES ('237', '55', '4');
INSERT INTO `kon_levelaksi` VALUES ('238', '56', '4');
INSERT INTO `kon_levelaksi` VALUES ('239', '55', '5');
INSERT INTO `kon_levelaksi` VALUES ('240', '56', '5');
INSERT INTO `kon_levelaksi` VALUES ('355', '57', '1');
INSERT INTO `kon_levelaksi` VALUES ('356', '58', '1');
INSERT INTO `kon_levelaksi` VALUES ('357', '57', '2');
INSERT INTO `kon_levelaksi` VALUES ('358', '57', '3');
INSERT INTO `kon_levelaksi` VALUES ('359', '57', '4');
INSERT INTO `kon_levelaksi` VALUES ('360', '57', '5');
INSERT INTO `kon_levelaksi` VALUES ('361', '58', '5');
INSERT INTO `kon_levelaksi` VALUES ('362', '59', '1');
INSERT INTO `kon_levelaksi` VALUES ('363', '60', '1');
INSERT INTO `kon_levelaksi` VALUES ('364', '59', '2');
INSERT INTO `kon_levelaksi` VALUES ('365', '59', '3');
INSERT INTO `kon_levelaksi` VALUES ('366', '59', '4');
INSERT INTO `kon_levelaksi` VALUES ('367', '59', '5');
INSERT INTO `kon_levelaksi` VALUES ('368', '60', '5');
INSERT INTO `kon_levelaksi` VALUES ('419', '61', '1');
INSERT INTO `kon_levelaksi` VALUES ('420', '61', '2');
INSERT INTO `kon_levelaksi` VALUES ('421', '61', '3');
INSERT INTO `kon_levelaksi` VALUES ('422', '61', '4');
INSERT INTO `kon_levelaksi` VALUES ('423', '61', '5');
INSERT INTO `kon_levelaksi` VALUES ('424', '63', '1');
INSERT INTO `kon_levelaksi` VALUES ('425', '63', '2');
INSERT INTO `kon_levelaksi` VALUES ('426', '63', '3');
INSERT INTO `kon_levelaksi` VALUES ('427', '63', '4');
INSERT INTO `kon_levelaksi` VALUES ('428', '63', '5');
INSERT INTO `kon_levelaksi` VALUES ('442', '67', '1');
INSERT INTO `kon_levelaksi` VALUES ('443', '67', '2');
INSERT INTO `kon_levelaksi` VALUES ('444', '67', '3');
INSERT INTO `kon_levelaksi` VALUES ('445', '67', '4');
INSERT INTO `kon_levelaksi` VALUES ('446', '67', '5');
INSERT INTO `kon_levelaksi` VALUES ('448', '71', '1');
INSERT INTO `kon_levelaksi` VALUES ('449', '71', '5');

-- ----------------------------
-- Table structure for kon_levelkatgrupmenu
-- ----------------------------
DROP TABLE IF EXISTS `kon_levelkatgrupmenu`;
CREATE TABLE `kon_levelkatgrupmenu` (
  `id_levelkatgrupmenu` int(11) NOT NULL AUTO_INCREMENT,
  `id_level` int(11) NOT NULL,
  `id_katgrupmenu` int(11) NOT NULL,
  `isDefault` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_levelkatgrupmenu`),
  KEY `id_level` (`id_level`),
  KEY `id_katgrupmenu` (`id_katgrupmenu`),
  CONSTRAINT `kon_levelkatgrupmenu_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `kon_level` (`id_level`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `kon_levelkatgrupmenu_ibfk_2` FOREIGN KEY (`id_katgrupmenu`) REFERENCES `kon_katgrupmenu` (`id_katgrupmenu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_levelkatgrupmenu
-- ----------------------------
INSERT INTO `kon_levelkatgrupmenu` VALUES ('53', '17', '1', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('54', '17', '1', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('55', '17', '2', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('56', '17', '2', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('57', '18', '1', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('58', '18', '1', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('59', '18', '2', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('60', '18', '2', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('61', '19', '1', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('62', '19', '1', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('63', '19', '2', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('64', '19', '2', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('65', '20', '1', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('66', '20', '1', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('67', '20', '2', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('68', '20', '2', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('69', '21', '1', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('70', '21', '1', '0');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('71', '21', '2', '1');
INSERT INTO `kon_levelkatgrupmenu` VALUES ('72', '21', '2', '0');

-- ----------------------------
-- Table structure for kon_login
-- ----------------------------
DROP TABLE IF EXISTS `kon_login`;
CREATE TABLE `kon_login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `id_level` int(11) NOT NULL,
  `pegawai` int(10) unsigned NOT NULL DEFAULT '0',
  `aktif` enum('1','0') NOT NULL DEFAULT '1',
  `bahasa` varchar(2) NOT NULL DEFAULT '',
  `tlogin` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_login`),
  KEY `id_level` (`id_level`),
  CONSTRAINT `kon_login_ibfk_1` FOREIGN KEY (`id_level`) REFERENCES `kon_level` (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_login
-- ----------------------------
INSERT INTO `kon_login` VALUES ('13', 'Mr. Super Admin', 'admin', 'MjEyMzJmMjk3YTU3YTVhNzQzODk0YTBlNGE4MDFmYzM=', '17', '0', '1', '', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for kon_logindepartemen
-- ----------------------------
DROP TABLE IF EXISTS `kon_logindepartemen`;
CREATE TABLE `kon_logindepartemen` (
  `id_logindepartemen` int(11) NOT NULL AUTO_INCREMENT,
  `id_login` int(11) NOT NULL,
  `id_departemen` int(11) NOT NULL,
  PRIMARY KEY (`id_logindepartemen`),
  KEY `id_login` (`id_login`) USING BTREE,
  KEY `id_departemen` (`id_departemen`) USING BTREE,
  CONSTRAINT `id_login_FK2` FOREIGN KEY (`id_login`) REFERENCES `kon_login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_logindepartemen
-- ----------------------------
INSERT INTO `kon_logindepartemen` VALUES ('34', '13', '1');
INSERT INTO `kon_logindepartemen` VALUES ('35', '13', '2');
INSERT INTO `kon_logindepartemen` VALUES ('36', '13', '3');

-- ----------------------------
-- Table structure for kon_loginhistory
-- ----------------------------
DROP TABLE IF EXISTS `kon_loginhistory`;
CREATE TABLE `kon_loginhistory` (
  `id_loginhistory` int(11) NOT NULL AUTO_INCREMENT,
  `id_login` int(11) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_loginhistory`),
  KEY `id_login` (`id_login`) USING BTREE,
  CONSTRAINT `kon_loginhistory_ibfk_1` FOREIGN KEY (`id_login`) REFERENCES `kon_login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_loginhistory
-- ----------------------------
INSERT INTO `kon_loginhistory` VALUES ('195', '13', '2015-10-21 01:31:43');
INSERT INTO `kon_loginhistory` VALUES ('196', '13', '2015-10-21 01:31:43');
INSERT INTO `kon_loginhistory` VALUES ('197', '13', '2015-10-21 02:07:47');
INSERT INTO `kon_loginhistory` VALUES ('198', '13', '2015-10-21 02:07:47');
INSERT INTO `kon_loginhistory` VALUES ('199', '13', '2015-10-21 23:48:51');
INSERT INTO `kon_loginhistory` VALUES ('200', '13', '2015-10-21 23:48:51');
INSERT INTO `kon_loginhistory` VALUES ('201', '13', '2015-10-22 09:10:51');
INSERT INTO `kon_loginhistory` VALUES ('202', '13', '2015-10-22 09:10:51');
INSERT INTO `kon_loginhistory` VALUES ('203', '13', '2015-10-22 10:18:05');
INSERT INTO `kon_loginhistory` VALUES ('204', '13', '2015-10-22 10:18:05');

-- ----------------------------
-- Table structure for kon_menu
-- ----------------------------
DROP TABLE IF EXISTS `kon_menu`;
CREATE TABLE `kon_menu` (
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupmenu` int(11) NOT NULL,
  `menu` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `size` enum('','double','double double-vertical') NOT NULL DEFAULT '',
  `id_warna` int(11) NOT NULL,
  `id_icon` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_menu
-- ----------------------------
INSERT INTO `kon_menu` VALUES ('1', '4', 'Siswa', 'siswa', 'double', '7', '9', '');
INSERT INTO `kon_menu` VALUES ('2', '1', 'Presensi Siswa', 'presensi-siswa', 'double', '44', '10', '');
INSERT INTO `kon_menu` VALUES ('3', '1', 'Rapor Siswa', 'rapor-siswa', 'double', '3', '11', '');
INSERT INTO `kon_menu` VALUES ('4', '1', 'Pendataan Alumni', 'pendataan-alumni', 'double', '4', '12', '');
INSERT INTO `kon_menu` VALUES ('8', '5', 'Transaksi', 'transaksi', 'double', '8', '16', '');
INSERT INTO `kon_menu` VALUES ('10', '40', 'Penerimaan Siswa', 'penerimaan-siswa', 'double', '10', '18', '');
INSERT INTO `kon_menu` VALUES ('13', '6', 'Saldo Rekening', 'saldo-rekening', '', '13', '13', '');
INSERT INTO `kon_menu` VALUES ('14', '6', 'Kategori Rekening', 'kategori-rekening', '', '14', '14', '');
INSERT INTO `kon_menu` VALUES ('15', '6', 'Detil Rekening', 'detil-rekening', '', '15', '10', '');
INSERT INTO `kon_menu` VALUES ('16', '5', 'Anggaran Tahunan', 'anggaran-tahunan', 'double', '16', '16', '');
INSERT INTO `kon_menu` VALUES ('19', '7', 'Warna', 'warna', '', '4', '17', '');
INSERT INTO `kon_menu` VALUES ('20', '8', 'level', 'level', '', '5', '16', '');
INSERT INTO `kon_menu` VALUES ('21', '8', 'user', 'user', '', '7', '15', '');
INSERT INTO `kon_menu` VALUES ('22', '7', 'Icon', 'icon', '', '4', '13', '');
INSERT INTO `kon_menu` VALUES ('24', '2', 'Detail Kelas', 'detail-kelas', 'double', '11', '15', '');
INSERT INTO `kon_menu` VALUES ('25', '3', 'Departemen', 'departemen', '', '3', '11', '');
INSERT INTO `kon_menu` VALUES ('26', '3', 'Angkatan', 'angkatan', '', '11', '15', '');
INSERT INTO `kon_menu` VALUES ('27', '3', 'Tahun Ajaran', 'tahun-ajaran', '', '16', '17', '');
INSERT INTO `kon_menu` VALUES ('28', '3', 'Tingkat', 'tingkat', '', '12', '18', '');
INSERT INTO `kon_menu` VALUES ('29', '3', 'Sub Tingkat', 'subtingkat', '', '14', '14', '');
INSERT INTO `kon_menu` VALUES ('30', '3', 'Kelas', 'kelas', '', '15', '13', '');
INSERT INTO `kon_menu` VALUES ('31', '3', 'Semester', 'semester', '', '13', '12', '');
INSERT INTO `kon_menu` VALUES ('32', '3', 'Jenis Mutasi', 'jenis-mutasi', '', '11', '10', '');
INSERT INTO `kon_menu` VALUES ('33', '3', 'Guru', 'guru', '', '11', '14', '');
INSERT INTO `kon_menu` VALUES ('34', '3', 'Pelajaran', 'pelajaran', '', '12', '14', '');
INSERT INTO `kon_menu` VALUES ('35', '2', 'Jadwal Pelajaran', 'jadwal-pelajaran', 'double', '15', '15', '');
INSERT INTO `kon_menu` VALUES ('36', '2', 'Presensi Guru', 'presensi-guru', 'double', '18', '12', '');
INSERT INTO `kon_menu` VALUES ('37', '2', 'Kegiatan Akademik', 'kegiatan-akademik', 'double', '14', '14', '');
INSERT INTO `kon_menu` VALUES ('38', '1', 'Mutasi', 'mutasi', 'double', '6', '13', '');
INSERT INTO `kon_menu` VALUES ('39', '3', 'Detail Pelajaran', 'detail-pelajaran', '', '13', '15', '');
INSERT INTO `kon_menu` VALUES ('40', '1', 'Siswa Kelas', 'siswa-kelas', 'double', '13', '15', '');
INSERT INTO `kon_menu` VALUES ('41', '6', 'Biaya', 'biaya', '', '14', '15', '');
INSERT INTO `kon_menu` VALUES ('42', '6', 'Diskon', 'diskon', '', '14', '15', '');
INSERT INTO `kon_menu` VALUES ('43', '6', 'Angsuran', 'angsuran', '', '17', '13', '');
INSERT INTO `kon_menu` VALUES ('44', '9', 'golongan', 'golongan', '', '13', '16', '');
INSERT INTO `kon_menu` VALUES ('45', '7', 'menu', 'menu', '', '14', '16', '');
INSERT INTO `kon_menu` VALUES ('46', '7', 'Grup Modul', 'grup-modul', '', '13', '12', '');
INSERT INTO `kon_menu` VALUES ('47', '7', 'Modul', 'modul', '', '12', '11', '');
INSERT INTO `kon_menu` VALUES ('48', '7', 'Grup Menu', 'grup-menu', '', '16', '13', '');
INSERT INTO `kon_menu` VALUES ('52', '9', 'Gelombang', 'gelombang', '', '16', '10', 'kelompok pendaftaran  (gelombang)');
INSERT INTO `kon_menu` VALUES ('54', '14', 'Perangkat', 'perangkat', '', '16', '10', 'ok');
INSERT INTO `kon_menu` VALUES ('55', '14', 'Lokasi', 'lokasi', '', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('56', '14', 'Jenis Koleksi', 'jenis-koleksi', '', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('57', '14', 'Tingkat Koleksi', 'tingkat-koleksi', '', '13', '10', '');
INSERT INTO `kon_menu` VALUES ('58', '14', 'Klasifikasi', 'klasifikasi', '', '41', '10', '');
INSERT INTO `kon_menu` VALUES ('59', '14', 'Daftar Pengunjung', 'daftar-pengunjung', '', '17', '10', '\r\n');
INSERT INTO `kon_menu` VALUES ('60', '14', 'Daftar Penerbit', 'daftar-penerbit', '', '10', '10', '');
INSERT INTO `kon_menu` VALUES ('61', '14', 'Daftar-Bahasa', 'daftar-bahasa', '', '24', '10', '');
INSERT INTO `kon_menu` VALUES ('62', '14', 'Satuan Mata Uang', 'stuan-mata-uang', '', '8', '10', '\r\n');
INSERT INTO `kon_menu` VALUES ('63', '15', 'Katalog', 'katalog', 'double', '7', '10', '');
INSERT INTO `kon_menu` VALUES ('64', '15', 'Daftar Koleksi', 'daftar-koleksi', 'double', '7', '20', '');
INSERT INTO `kon_menu` VALUES ('65', '15', 'Data Anggota', 'data-anggota', 'double', '13', '10', '');
INSERT INTO `kon_menu` VALUES ('66', '15', 'Sirkulasi', 'sirkulasi', 'double', '18', '10', '');
INSERT INTO `kon_menu` VALUES ('67', '15', 'Stock Opname', 'stock-opname', 'double', '47', '17', '');
INSERT INTO `kon_menu` VALUES ('68', '15', 'OPAC', 'opac', 'double', '19', '12', '');
INSERT INTO `kon_menu` VALUES ('69', '16', 'Agama', 'agama', '', '16', '10', 'setting data master agama');
INSERT INTO `kon_menu` VALUES ('70', '16', 'Pendidikan', 'pendidikan', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('71', '16', 'Departemen', 'departemen', '', '13', '10', '');
INSERT INTO `kon_menu` VALUES ('72', '16', 'Jabatan', 'jabatan', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('73', '16', 'Status Karyawan', 'status-karyawan', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('74', '16', 'Golongan', 'golongan', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('75', '17', 'Berkas', 'berkas', 'double', '34', '10', '');
INSERT INTO `kon_menu` VALUES ('76', '17', 'Absensi', 'absensi', 'double', '16', '10', '\r\n');
INSERT INTO `kon_menu` VALUES ('77', '17', 'Cuti', 'cuti', 'double', '7', '10', '');
INSERT INTO `kon_menu` VALUES ('78', '17', 'Pinjaman', 'pinjaman', 'double', '17', '10', '');
INSERT INTO `kon_menu` VALUES ('79', '17', 'Karyawan', 'karyawan', 'double', '27', '12', '');
INSERT INTO `kon_menu` VALUES ('80', '18', 'Penggajian', 'penggajian', 'double', '8', '10', '');
INSERT INTO `kon_menu` VALUES ('81', '18', 'Laporan', 'laporan', '', '10', '12', '');
INSERT INTO `kon_menu` VALUES ('82', '18', 'Setting BPJS', 'setting-bpjs', 'double', '5', '17', '');
INSERT INTO `kon_menu` VALUES ('83', '18', 'Golongan', 'golongan ', 'double', '22', '11', '');
INSERT INTO `kon_menu` VALUES ('84', '18', 'struktural', 'struktural', '', '41', '17', '');
INSERT INTO `kon_menu` VALUES ('85', '18', 'Fungsional', 'Fungsional', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('86', '18', 'Pengabdian', 'Pengabdian', '', '24', '17', '');
INSERT INTO `kon_menu` VALUES ('87', '18', 'istri anak', 'istri-anak', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('88', '18', 'uang transport', 'uang-transport', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('89', '18', 'beban tugas', 'beban-tugas', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('90', '18', 'wali kelas', 'wali-kelas', 'double', '13', '11', '');
INSERT INTO `kon_menu` VALUES ('91', '19', 'Jenjang', 'jenjang', 'double', '8', '10', '');
INSERT INTO `kon_menu` VALUES ('92', '19', 'Kategori', 'kategori', 'double', '8', '1', '');
INSERT INTO `kon_menu` VALUES ('93', '19', 'produk', 'produk', 'double', '8', '10', '');
INSERT INTO `kon_menu` VALUES ('94', '19', 'produk jasa', 'produk-jasa', 'double', '1', '11', '');
INSERT INTO `kon_menu` VALUES ('95', '19', 'beban biaya', 'beban-biaya', 'double', '8', '10', '');
INSERT INTO `kon_menu` VALUES ('96', '19', 'supplier', 'supplier', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('97', '19', 'customer', 'customer', 'double', '8', '11', '');
INSERT INTO `kon_menu` VALUES ('98', '20', 'PO Pembelian', 'PO-Pembelian', 'double', '16', '14', '');
INSERT INTO `kon_menu` VALUES ('99', '20', 'Pembelian', 'Pembelian', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('100', '20', 'laporan pembelian', 'laporan-pembelian', 'double', '1', '12', '');
INSERT INTO `kon_menu` VALUES ('101', '20', 'retur pembelian', 'retur-pembelian', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('102', '20', 'laporan retur pembelian', 'laporan-retur-pembelian', 'double', '13', '10', '');
INSERT INTO `kon_menu` VALUES ('103', '21', 'PO Penjualan', 'PO-Penjualan', 'double', '27', '17', '');
INSERT INTO `kon_menu` VALUES ('104', '21', 'Penjualan', 'Penjualan', 'double', '20', '1', '');
INSERT INTO `kon_menu` VALUES ('105', '21', 'Retur Penjualaan', 'Retur-Penjualaan', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('106', '21', 'Laporan Penjualan', 'Laporan-Penjualan', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('107', '21', 'Laporan Retur Penjualan', 'Laporan-Retur-Penjualan', 'double', '18', '1', '');
INSERT INTO `kon_menu` VALUES ('108', '24', 'Penjualaan Jasa', 'Penjualaan-Jasa', 'double', '16', '1', '\r\n');
INSERT INTO `kon_menu` VALUES ('109', '24', 'Laporan Penjualaan Jasa', 'Laporan-Penjualaan-Jasa', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('110', '25', 'Hutang', 'hutang', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('111', '25', 'pembayaran', 'pembayaran', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('112', '25', 'laporan hutang', 'laporan-hutang', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('113', '25', 'laporan pembayaran', 'laporan-pembayaran', 'double', '16', '10', '\r\n');
INSERT INTO `kon_menu` VALUES ('114', '26', 'Transaksi Biaya', 'Transaksi-Biaya', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('115', '26', 'Laporan Biaya', 'Laporan-Biaya', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('116', '27', 'Laporan Stok', 'Laporan-Stok', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('117', '27', 'Laporan Laba/Rugi', 'Laporan-Laba/Rugi', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('119', '27', 'Laporan Pembelian', 'Laporan-Pembelian', 'double', '7', '10', '');
INSERT INTO `kon_menu` VALUES ('120', '27', 'Laporan Retur Pembelian', 'Laporan-Retur-Pembelian', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('121', '27', 'Laporan Retur Penjualan', 'Laporan-Retur-Penjualan', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('122', '27', 'Laporan Penjualan', 'Laporan-Penjualan', 'double', '16', '17', '');
INSERT INTO `kon_menu` VALUES ('123', '28', 'User', 'user', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('124', '28', 'password', 'password', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('125', '29', 'supplier', 'supplier', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('126', '30', 'Purchase Requisition', 'Purchase-Requisition', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('127', '30', 'Laporan Permintaan', 'Laporan-Perrmintaan', 'double', '18', '10', '');
INSERT INTO `kon_menu` VALUES ('128', '30', 'Batal Purchase Requisition', 'Batal-Purchase-Requisition', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('129', '31', 'Penawaran', 'Penawaran', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('130', '31', 'Laporan Penawaran', 'Laporan-Penawaran', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('131', '31', 'Formulir Fisik Penawaran ', 'Formulir-Fisik-Penawaran ', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('132', '32', 'Purchase Order', 'Purchase-Order', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('133', '32', 'Laporan Pemesanan', 'Laporan-Pemesanan', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('134', '32', 'Batal Purchase Order', 'Batal \\-Purchase-Order', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('135', '33', 'Pembelian', 'Pembelian', 'double', '1', '10', '');
INSERT INTO `kon_menu` VALUES ('136', '33', 'Laporan Pembelian', 'Laporan-Pembelian', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('137', '33', 'Retur Pembelian', 'Retur-Pembelian', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('138', '33', 'Laporan Retur PEmbelian', 'Laporan-Retur-PEmbelian', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('139', '34', 'User', 'User', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('140', '34', 'password', 'password', 'double', '16', '1', '');
INSERT INTO `kon_menu` VALUES ('141', '37', 'Lokasi', 'lokasi', 'double', '1', '10', '');
INSERT INTO `kon_menu` VALUES ('142', '37', 'Tempat', 'tempat', 'double', '13', '10', '');
INSERT INTO `kon_menu` VALUES ('143', '37', 'Tempat', 'tempat', 'double', '20', '12', '');
INSERT INTO `kon_menu` VALUES ('144', '35', 'Inventaris', 'inventaris', 'double', '8', '15', '');
INSERT INTO `kon_menu` VALUES ('145', '35', 'Peminjaman', 'peminjaman', 'double', '18', '17', '');
INSERT INTO `kon_menu` VALUES ('146', '35', 'aktivitas', 'aktivitas', 'double', '7', '12', '');
INSERT INTO `kon_menu` VALUES ('147', '38', 'user', 'user', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('148', '39', 'tahap2', 'tahap2', 'double', '16', '10', '\r\n');
INSERT INTO `kon_menu` VALUES ('149', '38', 'password', 'password', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('150', '39', 'tahap1', 'tahap1', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('151', '39', 'tahap3', 'tahap3', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('152', '40', 'Detail Diskon', 'detail-diskon', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('153', '4', 'Detail Gelombang', 'detail-gelombang', 'double', '8', '11', '');
INSERT INTO `kon_menu` VALUES ('154', '9', 'dokumen', 'dokumen', '', '8', '10', '');
INSERT INTO `kon_menu` VALUES ('155', '40', 'Detail Biaya', 'detail-biaya', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('156', '4', 'reminder ultah', 'reminder-ultah', '', '18', '14', '');
INSERT INTO `kon_menu` VALUES ('157', '4', 'Rekapitulasi Siswa', 'rekapitulasi-siswa', '', '10', '18', '');
INSERT INTO `kon_menu` VALUES ('158', '6', 'Kategori Anggaran', 'kategori-anggaran', '', '18', '11', '');
INSERT INTO `kon_menu` VALUES ('159', '6', 'Detil Anggaran', 'detil-anggaran', '', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('160', '40', 'Rekapitulasi Penerimaan Siswa', 'rekapitulasi-penerimaan-siswa', 'double', '8', '10', '');
INSERT INTO `kon_menu` VALUES ('161', '40', 'Pemutihan Penerimaan Siswa', 'pemutihan-penerimaan-siswa', 'double', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('162', '6', 'Via Bayar', 'via-bayar', '', '16', '10', '');
INSERT INTO `kon_menu` VALUES ('163', '40', 'Rekening Biaya', 'rekening-biaya', 'double', '31', '11', '');

-- ----------------------------
-- Table structure for kon_modul
-- ----------------------------
DROP TABLE IF EXISTS `kon_modul`;
CREATE TABLE `kon_modul` (
  `id_modul` int(11) NOT NULL AUTO_INCREMENT,
  `id_grupmodul` int(11) NOT NULL,
  `link` varchar(100) NOT NULL,
  `modul` varchar(100) NOT NULL,
  `id_warna` int(11) NOT NULL,
  `id_icon` int(11) NOT NULL,
  `size` enum('','double','double double-vertical') NOT NULL DEFAULT '',
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_modul
-- ----------------------------
INSERT INTO `kon_modul` VALUES ('1', '1', 'akademik', 'akademik', '13', '9', 'double', '');
INSERT INTO `kon_modul` VALUES ('2', '1', 'psb', 'penerimaan siswa baru', '14', '10', 'double', '');
INSERT INTO `kon_modul` VALUES ('3', '1', 'perpustakaan', 'perpustakaan', '3', '11', 'double double-vertical', '');
INSERT INTO `kon_modul` VALUES ('4', '1', 'sarpras', 'sarana dan prasarana', '4', '12', 'double double-vertical', '');
INSERT INTO `kon_modul` VALUES ('5', '2', 'hrd', 'kepegawaian', '5', '13', 'double double-vertical', '');
INSERT INTO `kon_modul` VALUES ('6', '2', 'keuangan', 'keuangan', '6', '14', 'double double-vertical', '');
INSERT INTO `kon_modul` VALUES ('7', '2', 'student', 'student services', '7', '15', 'double', '');
INSERT INTO `kon_modul` VALUES ('9', '3', 'konfigurasi', 'konfigurasi', '13', '14', 'double', '');
INSERT INTO `kon_modul` VALUES ('13', '2', 'purchaseorder', 'purchase order', '32', '20', 'double', '');
INSERT INTO `kon_modul` VALUES ('14', '3', 'marketingpsb', 'marketingpsb', '16', '10', 'double', '');

-- ----------------------------
-- Table structure for kon_privillege
-- ----------------------------
DROP TABLE IF EXISTS `kon_privillege`;
CREATE TABLE `kon_privillege` (
  `id_privillege` int(11) NOT NULL AUTO_INCREMENT,
  `id_login` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `isDefault` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_privillege`),
  KEY `id_login` (`id_login`) USING BTREE,
  KEY `id_menu` (`id_menu`) USING BTREE,
  CONSTRAINT `id_login_FK` FOREIGN KEY (`id_login`) REFERENCES `kon_login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `id_menu_FK` FOREIGN KEY (`id_menu`) REFERENCES `kon_menu` (`id_menu`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3739 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_privillege
-- ----------------------------
INSERT INTO `kon_privillege` VALUES ('3590', '13', '1', '1');
INSERT INTO `kon_privillege` VALUES ('3591', '13', '2', '1');
INSERT INTO `kon_privillege` VALUES ('3592', '13', '3', '1');
INSERT INTO `kon_privillege` VALUES ('3593', '13', '4', '1');
INSERT INTO `kon_privillege` VALUES ('3594', '13', '8', '1');
INSERT INTO `kon_privillege` VALUES ('3595', '13', '10', '1');
INSERT INTO `kon_privillege` VALUES ('3596', '13', '13', '1');
INSERT INTO `kon_privillege` VALUES ('3597', '13', '14', '1');
INSERT INTO `kon_privillege` VALUES ('3598', '13', '15', '1');
INSERT INTO `kon_privillege` VALUES ('3599', '13', '16', '1');
INSERT INTO `kon_privillege` VALUES ('3600', '13', '19', '1');
INSERT INTO `kon_privillege` VALUES ('3601', '13', '20', '1');
INSERT INTO `kon_privillege` VALUES ('3602', '13', '21', '1');
INSERT INTO `kon_privillege` VALUES ('3603', '13', '22', '1');
INSERT INTO `kon_privillege` VALUES ('3604', '13', '24', '1');
INSERT INTO `kon_privillege` VALUES ('3605', '13', '25', '1');
INSERT INTO `kon_privillege` VALUES ('3606', '13', '26', '1');
INSERT INTO `kon_privillege` VALUES ('3607', '13', '27', '1');
INSERT INTO `kon_privillege` VALUES ('3608', '13', '28', '1');
INSERT INTO `kon_privillege` VALUES ('3609', '13', '29', '1');
INSERT INTO `kon_privillege` VALUES ('3610', '13', '30', '1');
INSERT INTO `kon_privillege` VALUES ('3611', '13', '31', '1');
INSERT INTO `kon_privillege` VALUES ('3612', '13', '32', '1');
INSERT INTO `kon_privillege` VALUES ('3613', '13', '33', '1');
INSERT INTO `kon_privillege` VALUES ('3614', '13', '34', '1');
INSERT INTO `kon_privillege` VALUES ('3615', '13', '35', '1');
INSERT INTO `kon_privillege` VALUES ('3616', '13', '36', '1');
INSERT INTO `kon_privillege` VALUES ('3617', '13', '37', '1');
INSERT INTO `kon_privillege` VALUES ('3618', '13', '38', '1');
INSERT INTO `kon_privillege` VALUES ('3619', '13', '39', '1');
INSERT INTO `kon_privillege` VALUES ('3620', '13', '40', '1');
INSERT INTO `kon_privillege` VALUES ('3621', '13', '41', '1');
INSERT INTO `kon_privillege` VALUES ('3622', '13', '42', '1');
INSERT INTO `kon_privillege` VALUES ('3623', '13', '43', '1');
INSERT INTO `kon_privillege` VALUES ('3624', '13', '44', '1');
INSERT INTO `kon_privillege` VALUES ('3625', '13', '45', '1');
INSERT INTO `kon_privillege` VALUES ('3626', '13', '46', '1');
INSERT INTO `kon_privillege` VALUES ('3627', '13', '47', '1');
INSERT INTO `kon_privillege` VALUES ('3628', '13', '48', '1');
INSERT INTO `kon_privillege` VALUES ('3629', '13', '52', '1');
INSERT INTO `kon_privillege` VALUES ('3630', '13', '54', '1');
INSERT INTO `kon_privillege` VALUES ('3631', '13', '55', '1');
INSERT INTO `kon_privillege` VALUES ('3632', '13', '56', '1');
INSERT INTO `kon_privillege` VALUES ('3633', '13', '57', '1');
INSERT INTO `kon_privillege` VALUES ('3634', '13', '58', '1');
INSERT INTO `kon_privillege` VALUES ('3635', '13', '59', '1');
INSERT INTO `kon_privillege` VALUES ('3636', '13', '60', '1');
INSERT INTO `kon_privillege` VALUES ('3637', '13', '61', '1');
INSERT INTO `kon_privillege` VALUES ('3638', '13', '62', '1');
INSERT INTO `kon_privillege` VALUES ('3639', '13', '63', '1');
INSERT INTO `kon_privillege` VALUES ('3640', '13', '64', '1');
INSERT INTO `kon_privillege` VALUES ('3641', '13', '65', '1');
INSERT INTO `kon_privillege` VALUES ('3642', '13', '66', '1');
INSERT INTO `kon_privillege` VALUES ('3643', '13', '67', '1');
INSERT INTO `kon_privillege` VALUES ('3644', '13', '68', '1');
INSERT INTO `kon_privillege` VALUES ('3645', '13', '69', '1');
INSERT INTO `kon_privillege` VALUES ('3646', '13', '70', '1');
INSERT INTO `kon_privillege` VALUES ('3647', '13', '71', '1');
INSERT INTO `kon_privillege` VALUES ('3648', '13', '72', '1');
INSERT INTO `kon_privillege` VALUES ('3649', '13', '73', '1');
INSERT INTO `kon_privillege` VALUES ('3650', '13', '74', '1');
INSERT INTO `kon_privillege` VALUES ('3651', '13', '75', '1');
INSERT INTO `kon_privillege` VALUES ('3652', '13', '76', '1');
INSERT INTO `kon_privillege` VALUES ('3653', '13', '77', '1');
INSERT INTO `kon_privillege` VALUES ('3654', '13', '78', '1');
INSERT INTO `kon_privillege` VALUES ('3655', '13', '79', '1');
INSERT INTO `kon_privillege` VALUES ('3656', '13', '80', '1');
INSERT INTO `kon_privillege` VALUES ('3657', '13', '81', '1');
INSERT INTO `kon_privillege` VALUES ('3658', '13', '82', '1');
INSERT INTO `kon_privillege` VALUES ('3659', '13', '83', '1');
INSERT INTO `kon_privillege` VALUES ('3660', '13', '84', '1');
INSERT INTO `kon_privillege` VALUES ('3661', '13', '85', '1');
INSERT INTO `kon_privillege` VALUES ('3662', '13', '86', '1');
INSERT INTO `kon_privillege` VALUES ('3663', '13', '87', '1');
INSERT INTO `kon_privillege` VALUES ('3664', '13', '88', '1');
INSERT INTO `kon_privillege` VALUES ('3665', '13', '89', '1');
INSERT INTO `kon_privillege` VALUES ('3666', '13', '90', '1');
INSERT INTO `kon_privillege` VALUES ('3667', '13', '91', '1');
INSERT INTO `kon_privillege` VALUES ('3668', '13', '92', '1');
INSERT INTO `kon_privillege` VALUES ('3669', '13', '93', '1');
INSERT INTO `kon_privillege` VALUES ('3670', '13', '94', '1');
INSERT INTO `kon_privillege` VALUES ('3671', '13', '95', '1');
INSERT INTO `kon_privillege` VALUES ('3672', '13', '96', '1');
INSERT INTO `kon_privillege` VALUES ('3673', '13', '97', '1');
INSERT INTO `kon_privillege` VALUES ('3674', '13', '98', '1');
INSERT INTO `kon_privillege` VALUES ('3675', '13', '99', '1');
INSERT INTO `kon_privillege` VALUES ('3676', '13', '100', '1');
INSERT INTO `kon_privillege` VALUES ('3677', '13', '101', '1');
INSERT INTO `kon_privillege` VALUES ('3678', '13', '102', '1');
INSERT INTO `kon_privillege` VALUES ('3679', '13', '103', '1');
INSERT INTO `kon_privillege` VALUES ('3680', '13', '104', '1');
INSERT INTO `kon_privillege` VALUES ('3681', '13', '105', '1');
INSERT INTO `kon_privillege` VALUES ('3682', '13', '106', '1');
INSERT INTO `kon_privillege` VALUES ('3683', '13', '107', '1');
INSERT INTO `kon_privillege` VALUES ('3684', '13', '108', '1');
INSERT INTO `kon_privillege` VALUES ('3685', '13', '109', '1');
INSERT INTO `kon_privillege` VALUES ('3686', '13', '110', '1');
INSERT INTO `kon_privillege` VALUES ('3687', '13', '111', '1');
INSERT INTO `kon_privillege` VALUES ('3688', '13', '112', '1');
INSERT INTO `kon_privillege` VALUES ('3689', '13', '113', '1');
INSERT INTO `kon_privillege` VALUES ('3690', '13', '114', '1');
INSERT INTO `kon_privillege` VALUES ('3691', '13', '115', '1');
INSERT INTO `kon_privillege` VALUES ('3692', '13', '116', '1');
INSERT INTO `kon_privillege` VALUES ('3693', '13', '117', '1');
INSERT INTO `kon_privillege` VALUES ('3694', '13', '119', '1');
INSERT INTO `kon_privillege` VALUES ('3695', '13', '120', '1');
INSERT INTO `kon_privillege` VALUES ('3696', '13', '121', '1');
INSERT INTO `kon_privillege` VALUES ('3697', '13', '122', '1');
INSERT INTO `kon_privillege` VALUES ('3698', '13', '123', '1');
INSERT INTO `kon_privillege` VALUES ('3699', '13', '124', '1');
INSERT INTO `kon_privillege` VALUES ('3700', '13', '125', '1');
INSERT INTO `kon_privillege` VALUES ('3701', '13', '126', '1');
INSERT INTO `kon_privillege` VALUES ('3702', '13', '127', '1');
INSERT INTO `kon_privillege` VALUES ('3703', '13', '128', '1');
INSERT INTO `kon_privillege` VALUES ('3704', '13', '129', '1');
INSERT INTO `kon_privillege` VALUES ('3705', '13', '130', '1');
INSERT INTO `kon_privillege` VALUES ('3706', '13', '131', '1');
INSERT INTO `kon_privillege` VALUES ('3707', '13', '132', '1');
INSERT INTO `kon_privillege` VALUES ('3708', '13', '133', '1');
INSERT INTO `kon_privillege` VALUES ('3709', '13', '134', '1');
INSERT INTO `kon_privillege` VALUES ('3710', '13', '135', '1');
INSERT INTO `kon_privillege` VALUES ('3711', '13', '136', '1');
INSERT INTO `kon_privillege` VALUES ('3712', '13', '137', '1');
INSERT INTO `kon_privillege` VALUES ('3713', '13', '138', '1');
INSERT INTO `kon_privillege` VALUES ('3714', '13', '139', '1');
INSERT INTO `kon_privillege` VALUES ('3715', '13', '140', '1');
INSERT INTO `kon_privillege` VALUES ('3716', '13', '141', '1');
INSERT INTO `kon_privillege` VALUES ('3717', '13', '142', '1');
INSERT INTO `kon_privillege` VALUES ('3718', '13', '143', '1');
INSERT INTO `kon_privillege` VALUES ('3719', '13', '144', '1');
INSERT INTO `kon_privillege` VALUES ('3720', '13', '145', '1');
INSERT INTO `kon_privillege` VALUES ('3721', '13', '146', '1');
INSERT INTO `kon_privillege` VALUES ('3722', '13', '147', '1');
INSERT INTO `kon_privillege` VALUES ('3723', '13', '148', '1');
INSERT INTO `kon_privillege` VALUES ('3724', '13', '149', '1');
INSERT INTO `kon_privillege` VALUES ('3725', '13', '150', '1');
INSERT INTO `kon_privillege` VALUES ('3726', '13', '151', '1');
INSERT INTO `kon_privillege` VALUES ('3727', '13', '152', '1');
INSERT INTO `kon_privillege` VALUES ('3728', '13', '153', '1');
INSERT INTO `kon_privillege` VALUES ('3729', '13', '154', '1');
INSERT INTO `kon_privillege` VALUES ('3730', '13', '155', '1');
INSERT INTO `kon_privillege` VALUES ('3731', '13', '156', '1');
INSERT INTO `kon_privillege` VALUES ('3732', '13', '157', '1');
INSERT INTO `kon_privillege` VALUES ('3733', '13', '158', '1');
INSERT INTO `kon_privillege` VALUES ('3734', '13', '159', '1');
INSERT INTO `kon_privillege` VALUES ('3735', '13', '160', '1');
INSERT INTO `kon_privillege` VALUES ('3736', '13', '161', '1');
INSERT INTO `kon_privillege` VALUES ('3737', '13', '162', '1');
INSERT INTO `kon_privillege` VALUES ('3738', '13', '163', '1');

-- ----------------------------
-- Table structure for kon_warna
-- ----------------------------
DROP TABLE IF EXISTS `kon_warna`;
CREATE TABLE `kon_warna` (
  `id_warna` int(11) NOT NULL AUTO_INCREMENT,
  `warna` varchar(25) NOT NULL,
  PRIMARY KEY (`id_warna`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of kon_warna
-- ----------------------------
INSERT INTO `kon_warna` VALUES ('1', 'black');
INSERT INTO `kon_warna` VALUES ('2', 'white');
INSERT INTO `kon_warna` VALUES ('3', 'lime');
INSERT INTO `kon_warna` VALUES ('4', 'green');
INSERT INTO `kon_warna` VALUES ('5', 'emerald');
INSERT INTO `kon_warna` VALUES ('6', 'teal');
INSERT INTO `kon_warna` VALUES ('7', 'cyan');
INSERT INTO `kon_warna` VALUES ('8', 'cobalt');
INSERT INTO `kon_warna` VALUES ('9', 'indigo');
INSERT INTO `kon_warna` VALUES ('10', 'violet');
INSERT INTO `kon_warna` VALUES ('11', 'pink');
INSERT INTO `kon_warna` VALUES ('12', 'magenta');
INSERT INTO `kon_warna` VALUES ('13', 'crimson');
INSERT INTO `kon_warna` VALUES ('14', 'red');
INSERT INTO `kon_warna` VALUES ('15', 'orange');
INSERT INTO `kon_warna` VALUES ('16', 'amber');
INSERT INTO `kon_warna` VALUES ('17', 'yellow');
INSERT INTO `kon_warna` VALUES ('18', 'brown');
INSERT INTO `kon_warna` VALUES ('19', 'olive');
INSERT INTO `kon_warna` VALUES ('20', 'steel');
INSERT INTO `kon_warna` VALUES ('21', 'mauve');
INSERT INTO `kon_warna` VALUES ('22', 'taupe');
INSERT INTO `kon_warna` VALUES ('23', 'gray');
INSERT INTO `kon_warna` VALUES ('24', 'dark');
INSERT INTO `kon_warna` VALUES ('25', 'darker');
INSERT INTO `kon_warna` VALUES ('26', 'transparent');
INSERT INTO `kon_warna` VALUES ('27', 'darkBrown');
INSERT INTO `kon_warna` VALUES ('28', 'darkCrimson');
INSERT INTO `kon_warna` VALUES ('29', 'darkMagenta');
INSERT INTO `kon_warna` VALUES ('30', 'darkIndigo');
INSERT INTO `kon_warna` VALUES ('31', 'darkCyan');
INSERT INTO `kon_warna` VALUES ('32', 'darkCobalt');
INSERT INTO `kon_warna` VALUES ('33', 'darkTeal');
INSERT INTO `kon_warna` VALUES ('34', 'darkEmerald');
INSERT INTO `kon_warna` VALUES ('35', 'darkGreen');
INSERT INTO `kon_warna` VALUES ('36', 'darkOrange');
INSERT INTO `kon_warna` VALUES ('37', 'darkRed');
INSERT INTO `kon_warna` VALUES ('38', 'darkPink');
INSERT INTO `kon_warna` VALUES ('39', 'darkViolet');
INSERT INTO `kon_warna` VALUES ('40', 'darkBlue');
INSERT INTO `kon_warna` VALUES ('41', 'lightBlue');
INSERT INTO `kon_warna` VALUES ('42', 'lightTeal');
INSERT INTO `kon_warna` VALUES ('43', 'lightOlive');
INSERT INTO `kon_warna` VALUES ('44', 'lightOrange');
INSERT INTO `kon_warna` VALUES ('45', 'lightPink');
INSERT INTO `kon_warna` VALUES ('46', 'lightRed');
INSERT INTO `kon_warna` VALUES ('47', 'lightGreen');
