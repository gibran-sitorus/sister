/*
Navicat MySQL Data Transfer

Source Server         : lumba2
Source Server Version : 50616
Source Host           : 127.0.0.1:3306
Source Database       : sister_siadu_20150417

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2015-04-17 02:24:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for keu_katmodulpembayaran
-- ----------------------------
DROP TABLE IF EXISTS `keu_katmodulpembayaran`;
CREATE TABLE `keu_katmodulpembayaran` (
  `replid` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `siswa` enum('aktif','calon') DEFAULT NULL,
  `sifat` enum('wajib','sukarela') DEFAULT NULL,
  `keterangan` text NOT NULL,
  `detjenistrans` int(20) NOT NULL,
  PRIMARY KEY (`replid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of keu_katmodulpembayaran
-- ----------------------------
INSERT INTO `keu_katmodulpembayaran` VALUES ('1', 'SPP', 'aktif', 'wajib', 'sumbangan wajib tiap semester', '1');
INSERT INTO `keu_katmodulpembayaran` VALUES ('2', 'DPP', 'aktif', 'wajib', 'uang gedung ', '1');
INSERT INTO `keu_katmodulpembayaran` VALUES ('3', 'pendaftaran', 'calon', 'wajib', 'formulir pendaftaran', '1');
