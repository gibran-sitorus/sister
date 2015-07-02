# Host: localhost  (Version: 5.6.20)
# Date: 2015-01-28 15:40:36
# Generator: MySQL-Front 5.3  (Build 4.187)

/*!40101 SET NAMES latin1 */;

#
# Structure for table "pus_buku"
#

DROP TABLE IF EXISTS `pus_buku`;
CREATE TABLE `pus_buku` (
  `replid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `katalog` int(10) unsigned NOT NULL,
  `idbuku` varchar(50) NOT NULL,
  `barkode` varchar(50) NOT NULL,
  `urut` int(11) NOT NULL DEFAULT '0',
  `callnumber` varchar(50) NOT NULL,
  `tingkatbuku` int(10) unsigned NOT NULL,
  `lokasi` int(10) unsigned NOT NULL DEFAULT '0',
  `sumber` tinyint(4) NOT NULL DEFAULT '0',
  `harga` decimal(10,2) NOT NULL DEFAULT '0.00',
  `satuan` varchar(4) NOT NULL,
  `tanggal` date NOT NULL DEFAULT '0000-00-00',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `tahun` year(4) NOT NULL DEFAULT '0000',
  PRIMARY KEY (`replid`)
) ENGINE=MyISAM AUTO_INCREMENT=396 DEFAULT CHARSET=latin1;

#
# Data for table "pus_buku"
#

/*!40000 ALTER TABLE `pus_buku` DISABLE KEYS */;
INSERT INTO `pus_buku` VALUES (1,1,'001/B/SIADU/2014','001002201400001',1,'',2,1,0,45000.00,'IDR','2013-02-04',0,2014),(2,2,'002/B/SIADU/2014','001002201400002',2,'',2,1,0,0.00,'IDR','2013-02-04',1,2014),(3,3,'003/B/SIADU/2014','001002201400003',3,'',2,1,0,0.00,'IDR','2013-02-04',1,2014),(4,4,'004/B/SIADU/2014','001002201400004',4,'',2,1,0,65.00,'IDR','2013-02-04',1,2014),(5,5,'005/B/SIADU/2014','001002201400005',5,'',2,1,0,0.00,'IDR','2013-02-04',1,2014),(6,6,'006/B/SIADU/2014','001002201400006',6,'',2,1,0,0.00,'IDR','2013-02-04',0,2014),(7,7,'007/B/SIADU/2014','001002201400007',7,'',2,1,0,65.00,'IDR','2013-02-04',0,2014),(8,8,'008/B/SIADU/2014','001002201400008',8,'',2,1,0,0.00,'USD','2014-01-02',0,2014),(9,9,'009/B/SIADU/2014','001002201400009',9,'',2,1,0,0.00,'USD','2014-01-02',0,2014),(10,10,'010/B/SIADU/2014','001002201400010',10,'',2,1,0,0.00,'IDR','2014-01-02',0,2014),(11,11,'011/B/SIADU/2014','001002201400011',11,'',2,1,0,0.00,'IDR','2014-01-02',0,2014),(12,12,'012/B/SIADU/2014','001002201400012',12,'',2,1,0,0.00,'IDR','2014-01-02',1,2014),(13,13,'013/B/SIADU/2014','001002201400013',13,'',2,1,0,0.00,'USD','2014-01-02',1,2014),(14,14,'014/B/SIADU/2014','001002201400014',14,'',2,1,0,24.00,'USD','2014-01-02',1,2014),(15,15,'015/B/SIADU/2014','001002201400015',15,'',2,1,0,24.00,'USD','2014-01-02',1,2014),(16,16,'016/B/SIADU/2014','001002201400016',16,'823 Est d',2,1,0,38.00,'IDR','2014-02-25',1,2014),(17,17,'017/B/SIADU/2014','001002201400017',17,'813 Sam r',2,1,0,0.00,'IDR','2014-02-27',1,2014),(18,18,'018/B/SIADU/2014','001002201400018',18,'813 Ann t',2,1,0,0.00,'IDR','2014-02-27',1,2014),(32,19,'019/B/SIADU/2014','001002201400019',19,'813 Eve e',2,1,0,0.00,'IDR','2014-02-27',1,2014),(33,20,'020/B/SIADU/2014','001002201400020',20,'813 Mat j',2,1,0,0.00,'IDR','2014-02-27',1,2014),(34,24,'021/B/SIADU/2014','001001201400021',21,'220.95 RIK 1',1,3,0,0.00,'IDR','2014-03-14',1,2014),(35,23,'022/B/SIADU/2014','001001201400022',22,'813.23 A,  l',1,3,0,0.00,'IDR','2014-03-14',1,2014),(36,22,'023/B/SIADU/2014','001001201400023',23,'FIC Can t',1,3,0,0.00,'IDR','2014-03-14',0,2014),(37,25,'024/B/SIADU/2014','001002201400024',24,'823 Rad m',2,3,0,39.50,'IDR','2014-03-19',1,2014),(38,26,'025/B/SIADU/2014','001002201400025',25,'813 Gav s',2,3,0,0.00,'IDR','2014-03-19',1,2014),(41,27,'028/B/SIADU/2014','001002201400028',28,'920 Mel p',2,3,0,0.00,'IDR','2014-03-19',1,2014),(42,28,'029/B/SIADU/2014','001002201400029',29,'813 Cla t',2,3,0,5.90,'SGD','2014-03-24',1,2014),(43,29,'030/B/SIADU/2014','001002201400030',30,'813 Mar c',2,3,0,16.00,'SGD','2014-03-24',1,2014),(44,30,'031/B/SIADU/2014','001002201400031',31,'813 Gus i',2,3,0,0.00,'IDR','2014-03-24',1,2014),(45,31,'032/B/SIADU/2014','001002201400032',32,'611.78 Lis m',2,3,0,13.90,'SGD','2014-03-24',1,2014),(46,32,'033/B/SIADU/2014','001002201400033',33,'741.5 Mar t',2,3,0,0.00,'IDR','2014-03-24',1,2014),(47,33,'034/B/SIADU/2014','001002201400034',34,'741.5 Nel t',2,3,0,0.00,'IDR','2014-03-24',1,2014),(48,34,'035/B/SIADU/2014','001002201400035',35,'813 Jun l',2,3,0,0.00,'IDR','2014-03-24',1,2014),(49,35,'036/B/SIADU/2014','001002201400036',36,'595.7 Joh w',2,3,0,13.90,'SGD','2014-03-24',1,2014),(50,36,'037/B/SIADU/2014','001002201400037',37,'821 Jud n',2,3,0,0.00,'IDR','2014-03-24',1,2014),(51,37,'038/B/SIADU/2014','001002201400038',38,'595.7 Joh w',2,3,0,13.90,'SGD','2014-03-24',1,2014),(52,38,'039/B/SIADU/2014','001002201400039',39,'813.23 Dwi c',2,3,0,0.00,'IDR','2014-03-25',1,2014),(53,39,'040/B/SIADU/2014','001002201400040',40,'813.23 Dwi c',2,3,0,0.00,'IDR','2014-03-25',1,2014),(54,40,'041/B/SIADU/2014','001002201400041',41,'813 SUs s',2,3,0,0.00,'IDR','2014-03-25',1,2014),(55,41,'042/B/SIADU/2014','001002201400042',42,'813 BER t',2,3,0,0.00,'IDR','2014-03-25',1,2014),(56,42,'043/B/SIADU/2014','001002201400043',43,'813 Car r',2,3,0,0.00,'IDR','2014-03-25',1,2014),(57,43,'044/B/SIADU/2014','001002201400044',44,'813 Ken t',2,3,0,0.00,'IDR','2014-03-25',1,2014),(58,44,'045/B/SIADU/2014','001002201400045',45,'813 Ian t',2,3,0,0.00,'IDR','2014-03-25',1,2014),(59,45,'046/B/SIADU/2014','001002201400046',46,'813 Lou j',2,3,0,0.00,'IDR','2014-03-25',1,2014),(60,46,'047/B/SIADU/2014','001002201400047',47,'813 Chr b',2,3,0,5.90,'SGD','2014-03-25',1,2014),(61,47,'048/B/SIADU/2014','001002201400048',48,'813 Hol t',2,3,0,0.00,'IDR','2014-03-25',1,2014),(62,48,'049/B/SIADU/2014','001002201400049',49,'813 Sta t',2,3,0,5.14,'SGD','2014-03-26',1,2014),(63,49,'050/B/SIADU/2014','001002201400050',50,'741.5 Mar a',2,3,0,0.00,'IDR','2014-03-26',1,2014),(64,50,'051/B/SIADU/2014','001002201400051',51,'813 Nic o',2,3,0,0.00,'IDR','2014-03-26',1,2014),(65,51,'052/B/SIADU/2014','001002201400052',52,'598 Sar b',2,3,0,0.00,'IDR','2014-03-26',1,2014),(66,52,'053/B/SIADU/2014','001002201400053',53,'741.5 Aar r',2,3,0,0.00,'IDR','2014-03-26',1,2014),(67,53,'054/B/SIADU/2014','001001201400054',54,'813 Jon f',1,3,0,0.00,'IDR','2014-03-27',1,2014),(68,54,'055/B/SIADU/2014','001001201400055',55,'813.23 Pau n',1,3,0,0.00,'IDR','2014-03-27',1,2014),(69,55,'056/B/SIADU/2014','001002201400056',56,'813 SEU t',2,3,0,8.99,'USD','2014-04-02',1,2014),(70,56,'057/B/SIADU/2014','001001201400057',57,'813 Ado n',1,3,0,0.00,'IDR','2014-04-02',1,2014),(71,57,'058/B/SIADU/2014','001002201400058',58,'813 Tra s',2,3,0,7.50,'SGD','2014-04-03',1,2014),(72,58,'059/B/SIADU/2014','001001201400059',59,'FIC Pat g',1,3,0,0.00,'IDR','2014-04-03',1,2014),(73,59,'060/B/SIADU/2014','001001201400060',60,'305.2 Jes o',1,3,0,0.00,'IDR','2014-04-04',1,2014),(74,60,'061/B/SIADU/2014','001001201400061',61,'FIC Awa h',1,3,0,0.00,'IDR','2014-04-04',1,2014),(75,61,'062/B/SIADU/2014','001001201400062',62,'FIC A,  a',1,3,0,0.00,'IDR','2014-04-04',1,2014),(76,62,'063/B/SIADU/2014','001001201400063',63,'FIC A,  m',1,3,0,0.00,'IDR','2014-04-04',1,2014),(77,63,'064/B/SIADU/2014','001001201400064',64,'FIC Deb p',1,3,0,0.00,'IDR','2014-04-04',1,2014),(78,63,'065/B/SIADU/2014','001001201400065',65,'FIC Deb p',1,3,0,44.50,'IDR','2014-04-04',1,2014),(79,64,'066/B/SIADU/2014','001001201400066',66,'FIC Cat w',1,3,0,0.00,'IDR','2014-04-04',1,2014),(80,66,'067/B/SIADU/2014','001001201400067',67,'FIC Ell p',1,3,0,0.00,'IDR','2014-04-04',1,2014),(81,66,'068/B/SIADU/2014','001001201400068',68,'FIC Ell p',1,3,0,0.00,'IDR','2014-04-04',1,2014),(82,67,'069/B/SIADU/2014','001001201400069',69,'FIC Can t',1,3,0,0.00,'IDR','2014-04-04',1,2014),(83,65,'070/B/SIADU/2014','001001201400070',70,'FIC Can t',1,3,0,0.00,'IDR','2014-04-04',1,2014),(84,68,'071/B/SIADU/2014','001001201400071',71,'FIC  c',1,3,0,6.00,'IDR','2014-04-04',1,2014),(85,69,'072/B/SIADU/2014','001001201400072',72,'FIC Sus a',1,3,0,0.00,'IDR','2014-04-04',1,2014),(86,70,'073/B/SIADU/2014','001001201400073',73,'FIC Tam h',1,3,0,0.00,'IDR','2014-04-04',1,2014),(87,71,'074/B/SIADU/2014','001001201400074',74,'FIC Ank f',1,3,0,0.00,'IDR','2014-04-04',1,2014),(88,72,'075/B/SIADU/2014','001001201400075',75,'FIC Sig d',1,3,0,9.20,'IDR','2014-04-04',1,2014),(89,73,'076/B/SIADU/2014','001001201400076',76,'FIC Sig m',1,3,0,9.20,'IDR','2014-04-04',1,2014),(90,74,'077/B/SIADU/2014','001001201400077',77,'FIC Nol s',1,3,0,0.00,'IDR','2014-04-04',1,2014),(91,74,'078/B/SIADU/2014','001001201400078',78,'FIC Nol s',1,3,0,0.00,'IDR','2014-04-04',1,2014),(92,75,'079/B/SIADU/2014','001002201400079',79,'813 Van a',2,3,0,0.00,'IDR','2014-04-04',1,2014),(93,65,'080/B/SIADU/2014','001001201400080',80,'FIC Can t',1,3,0,0.00,'IDR','2014-04-04',1,2014),(95,76,'081/B/SIADU/2014','001001201400081',81,'FIC w,  f',1,3,0,0.00,'IDR','2014-04-07',1,2014),(96,77,'082/B/SIADU/2014','001001201400082',82,'FIC a,  y',1,3,0,0.00,'IDR','2014-04-07',1,2014),(97,78,'083/B/SIADU/2014','001001201400083',83,'FIC Kei k',1,3,0,0.00,'IDR','2014-04-07',1,2014),(98,80,'084/B/SIADU/2014','001001201400084',84,'FIC Cry m',1,3,0,48000.00,'IDR','2014-04-07',1,2014),(99,79,'085/B/SIADU/2014','001002201400085',85,'813 Ter a',2,3,0,0.00,'IDR','2014-04-07',1,2014),(100,79,'086/B/SIADU/2014','001002201400086',86,'813 Ter a',2,3,0,0.00,'IDR','2014-04-07',1,2014),(101,81,'087/B/SIADU/2014','001001201400087',87,'FIC Kei s',1,3,0,0.00,'IDR','2014-04-07',1,2014),(102,82,'088/B/SIADU/2014','001001201400088',88,'FIC Sue m',1,3,0,48000.00,'IDR','2014-04-07',1,2014),(103,83,'089/B/SIADU/2014','001001201400089',89,'FIC Cry l',1,3,0,48000.00,'IDR','2014-04-07',1,2014),(104,84,'090/B/SIADU/2014','001001201400090',90,'FIC Pau f',1,3,0,0.00,'IDR','2014-04-07',1,2014),(105,86,'091/B/SIADU/2014','001001201400091',91,'FIC Tri a',1,3,0,6.00,'IDR','2014-04-08',1,2014),(106,87,'092/B/SIADU/2014','001001201400092',92,'FIC Mar d',1,3,0,0.00,'IDR','2014-04-08',1,2014),(107,88,'093/B/SIADU/2014','001001201400093',93,'FIC Wen g',1,3,0,24000.00,'IDR','2014-04-08',1,2014),(108,89,'094/B/SIADU/2014','001001201400094',94,'FIC Tho d',1,3,0,0.00,'IDR','2014-04-08',1,2014),(109,90,'095/B/SIADU/2014','001001201400095',95,'FIC Cry m',1,3,0,0.00,'IDR','2014-04-08',1,2014),(110,91,'096/B/SIADU/2014','001001201400096',96,'FIC Mar a',1,3,0,0.00,'IDR','2014-04-08',1,2014),(111,92,'097/B/SIADU/2014','001001201400097',97,'FIC H,  i',1,3,0,0.00,'IDR','2014-04-08',1,2014),(112,93,'098/B/SIADU/2014','001001201400098',98,'FIC Mar a',1,3,0,0.00,'IDR','2014-04-08',1,2014),(113,94,'099/B/SIADU/2014','001001201400099',99,'FIC Dor g',1,3,0,0.00,'IDR','2014-04-08',1,2014),(114,95,'100/B/SIADU/2014','001001201400100',100,'FIC A,  m',1,3,0,0.00,'IDR','2014-04-08',1,2014),(115,96,'101/B/SIADU/2014','001001201400101',101,'FIC Bec w',1,3,0,0.00,'IDR','2014-04-08',1,2014),(117,98,'102/B/SIADU/2014','001001201400102',102,'FIC Ben e',1,3,0,0.00,'IDR','2014-04-10',1,2014),(118,99,'103/B/SIADU/2014','001001201400103',103,'FIC BEN b',1,3,0,0.00,'IDR','2014-04-10',1,2014),(119,100,'104/B/SIADU/2014','001001201400104',104,'FIC BEN g',1,3,0,0.00,'IDR','2014-04-10',1,2014),(120,101,'105/B/SIADU/2014','001001201400105',105,'FIC  h',1,3,0,0.00,'IDR','2014-04-10',1,2014),(121,102,'106/B/SIADU/2014','001001201400106',106,'FIC Deb p',1,3,0,6.90,'IDR','2014-04-10',1,2014),(122,103,'107/B/SIADU/2014','001001201400107',107,'FIC Sat b',1,3,0,0.00,'IDR','2014-04-10',1,2014),(123,104,'108/B/SIADU/2014','001001201400108',108,'FIC Chi i',1,3,0,0.00,'IDR','2014-04-10',1,2014),(124,105,'109/B/SIADU/2014','001001201400109',109,'FIC Chi w',1,3,0,0.00,'IDR','2014-04-10',1,2014),(125,106,'110/B/SIADU/2014','001001201400110',110,'FIC F,  p',1,3,0,0.00,'IDR','2014-04-10',1,2014),(126,107,'111/B/SIADU/2014','001001201400111',111,'FIC Mar p',1,3,0,0.00,'IDR','2014-04-10',1,2014),(127,108,'112/B/SIADU/2014','001001201400112',112,'FIC Ali g',1,3,0,0.00,'IDR','2014-04-10',1,2014),(128,109,'113/B/SIADU/2014','001001201400113',113,'FIC Ros w',1,3,0,0.00,'IDR','2014-04-10',1,2014),(129,109,'114/B/SIADU/2014','001001201400114',114,'FIC Ros w',1,3,0,0.00,'IDR','2014-04-10',1,2014),(130,110,'115/B/SIADU/2014','001001201400115',115,'FIC F,  w',1,3,0,0.00,'IDR','2014-04-10',1,2014),(131,110,'116/B/SIADU/2014','001001201400116',116,'FIC F,  w',1,3,0,0.00,'IDR','2014-04-10',1,2014),(132,111,'117/B/SIADU/2014','001001201400117',117,'FIC kat o',1,3,0,0.00,'IDR','2014-04-10',1,2014),(133,111,'118/B/SIADU/2014','001001201400118',118,'FIC kat o',1,3,0,0.00,'IDR','2014-04-10',1,2014),(134,112,'119/B/SIADU/2014','001001201400119',119,'FIC Rob r',1,3,0,0.00,'IDR','2014-04-10',1,2014),(135,113,'120/B/SIADU/2014','001001201400120',120,'FIC Kat h',1,3,0,0.00,'IDR','2014-04-10',1,2014),(136,114,'121/B/SIADU/2014','001001201400121',121,'FIC F,  y',1,3,0,0.00,'IDR','2014-04-10',1,2014),(137,115,'122/B/SIADU/2014','001001201400122',122,'FIC kat t',1,3,0,0.00,'IDR','2014-04-10',1,2014),(138,116,'123/B/SIADU/2014','001001201400123',123,'FIC Dan r',1,3,0,0.00,'IDR','2014-04-10',1,2014),(139,117,'124/B/SIADU/2014','001001201400124',124,'FIC Oi, m',1,3,0,0.00,'IDR','2014-04-11',1,2014),(140,118,'125/B/SIADU/2014','001001201400125',125,'FIC Amy t',1,3,0,0.00,'IDR','2014-04-11',1,2014),(141,119,'126/B/SIADU/2014','001001201400126',126,'823.13 Toe a',1,3,0,0.00,'IDR','2014-04-11',1,2014),(142,120,'127/B/SIADU/2014','001001201400127',127,'FIC Joy d',1,3,0,0.00,'IDR','2014-04-11',1,2014),(143,121,'128/B/SIADU/2014','001001201400128',128,'510 Bet t',1,3,0,0.00,'IDR','2014-04-11',1,2014),(144,122,'129/B/SIADU/2014','001001201400129',129,'590 Man m',1,3,0,8.90,'IDR','2014-04-22',1,2014),(146,123,'130/B/SIADU/2014','001001201400130',130,'FIC Luc t',1,3,0,15.52,'IDR','2014-04-22',1,2014),(147,124,'131/B/SIADU/2014','001001201400131',131,'FIC Ann m',1,3,0,0.00,'IDR','2014-04-22',1,2014),(148,125,'132/B/SIADU/2014','001001201400132',132,'611.8 Jan m',1,3,0,6.95,'USD','2014-04-22',1,2014),(149,126,'133/B/SIADU/2014','001001201400133',133,'FIC Ros w',1,3,0,0.00,'IDR','2014-04-22',1,2014),(150,126,'134/B/SIADU/2014','001001201400134',134,'FIC Ros w',1,3,0,0.00,'IDR','2014-04-22',1,2014),(151,127,'135/B/SIADU/2014','001001201400135',135,'FIC Cla y',1,3,0,6.90,'IDR','2014-04-22',1,2014),(152,128,'136/B/SIADU/2014','001001201400136',136,'FIC Luc t',1,3,0,15.52,'IDR','2014-04-22',1,2014),(153,129,'137/B/SIADU/2014','001001201400137',137,'FIC Lau h',1,3,0,0.00,'IDR','2014-04-23',1,2014),(154,130,'138/B/SIADU/2014','001001201400138',138,'FIC Lou p',1,3,0,6.90,'USD','2014-04-23',1,2014),(155,131,'139/B/SIADU/2014','001001201400139',139,'FIC Cla i',1,3,0,0.00,'IDR','2014-04-24',1,2014),(156,131,'140/B/SIADU/2014','001001201400140',140,'FIC Cla i',1,3,0,0.00,'IDR','2014-04-24',1,2014),(157,132,'141/B/SIADU/2014','001001201400141',141,'FIC Rob m',1,3,0,0.00,'IDR','2014-04-24',1,2014),(158,133,'142/B/SIADU/2014','001001201400142',142,'FIC Cla s',1,3,0,0.00,'IDR','2014-04-24',1,2014),(159,133,'143/B/SIADU/2014','001001201400143',143,'FIC Cla s',1,3,0,0.00,'IDR','2014-04-24',1,2014),(160,134,'144/B/SIADU/2014','001001201400144',144,'FIC Rob m',1,3,0,0.00,'IDR','2014-04-24',1,2014),(161,135,'145/B/SIADU/2014','001001201400145',145,'FIC Rob a',1,3,0,0.00,'IDR','2014-04-24',1,2014),(162,136,'146/B/SIADU/2014','001001201400146',146,'FIC Jan j',1,3,0,0.00,'IDR','2014-04-30',1,2014),(163,136,'147/B/SIADU/2014','001001201400147',147,'FIC Jan j',1,3,0,0.00,'IDR','2014-04-30',1,2014),(164,137,'148/B/SIADU/2014','001001201400148',148,'FIC Chi b',1,3,0,14.40,'IDR','2014-04-30',1,2014),(165,138,'149/B/SIADU/2014','001001201400149',149,'FIC HER c',1,3,0,0.00,'IDR','2014-04-30',1,2014),(166,139,'150/B/SIADU/2014','001001201400150',150,'FIC Jan j',1,3,0,0.00,'IDR','2014-04-30',1,2014),(167,140,'151/B/SIADU/2014','001001201400151',151,'FIC Reb j',1,3,0,0.00,'IDR','2014-04-30',1,2014),(168,141,'152/B/SIADU/2014','001001201400152',152,'FIC Reb j',1,3,0,0.00,'IDR','2014-04-30',1,2014),(169,142,'153/B/SIADU/2014','001001201400153',153,'FIC Enr a',1,3,0,0.00,'IDR','2014-04-30',1,2014),(170,142,'154/B/SIADU/2014','001001201400154',154,'FIC Enr a',1,3,0,0.00,'IDR','2014-04-30',1,2014),(171,143,'155/B/SIADU/2014','001001201400155',155,'FIC Shi s',1,3,0,0.00,'IDR','2014-04-30',1,2014),(172,144,'156/B/SIADU/2014','001001201400156',156,'FIC Shi s',1,3,0,0.00,'IDR','2014-04-30',1,2014),(173,144,'157/B/SIADU/2014','001001201400157',157,'FIC Shi s',1,3,0,0.00,'IDR','2014-04-30',1,2014),(174,145,'158/B/SIADU/2014','001001201400158',158,'FIC Luc p',1,3,0,0.00,'IDR','2014-05-02',1,2014),(175,146,'159/B/SIADU/2014','001001201400159',159,'FIC Bar d',1,3,0,0.00,'IDR','2014-05-02',1,2014),(176,147,'160/B/SIADU/2014','001001201400160',160,'FIC Chi c',1,3,0,15000.00,'IDR','2014-05-02',1,2014),(178,148,'161/B/SIADU/2014','001001201400161',161,'FIC Shi b',1,3,0,0.00,'IDR','2014-05-02',1,2014),(179,148,'162/B/SIADU/2014','001001201400162',162,'FIC Shi b',1,3,0,0.00,'IDR','2014-05-02',1,2014),(180,149,'163/B/SIADU/2014','001001201400163',163,'FIC Mar a',1,3,0,0.00,'IDR','2014-05-02',1,2014),(181,149,'164/B/SIADU/2014','001001201400164',164,'FIC Mar a',1,3,0,0.00,'IDR','2014-05-02',1,2014),(182,150,'165/B/SIADU/2014','001001201400165',165,'FIC Son c',1,3,0,6.99,'USD','2014-05-05',1,2014),(183,151,'166/B/SIADU/2014','001001201400166',166,'FIC Leo m',1,3,0,0.00,'IDR','2014-05-05',1,2014),(184,151,'167/B/SIADU/2014','001001201400167',167,'FIC Leo m',1,3,0,0.00,'IDR','2014-05-05',1,2014),(185,152,'168/B/SIADU/2014','001001201400168',168,'FIC Bel s',1,3,0,0.00,'IDR','2014-05-05',1,2014),(186,152,'169/B/SIADU/2014','001001201400169',169,'FIC Bel s',1,3,0,0.00,'IDR','2014-05-05',1,2014),(187,153,'170/B/SIADU/2014','001001201400170',170,'FIC Bel f',1,3,0,0.00,'IDR','2014-05-05',1,2014),(188,154,'171/B/SIADU/2014','001001201400171',171,'FIC Kev j',1,3,0,0.00,'IDR','2014-05-05',1,2014),(189,155,'172/B/SIADU/2014','001001201400172',172,'FIC Mei h',1,3,0,0.00,'IDR','2014-05-05',1,2014),(190,156,'173/B/SIADU/2014','001001201400173',173,'FIC Mar l',1,3,0,0.00,'IDR','2014-05-05',1,2014),(191,157,'174/B/SIADU/2014','001001201400174',174,'FIC Ani s',1,3,0,0.00,'IDR','2014-05-05',1,2014),(192,158,'175/B/SIADU/2014','001001201400175',175,'FIC INT t',1,3,0,0.00,'IDR','2014-05-05',1,2014),(193,159,'176/B/SIADU/2014','001001201400176',176,'FIC Eri p',1,3,0,0.00,'IDR','2014-05-05',1,2014),(194,160,'177/B/SIADU/2014','001001201400177',177,'FIC Sar h',1,3,0,3.99,'USD','2014-05-05',1,2014),(195,161,'178/B/SIADU/2014','001001201400178',178,'FIC Ali b',1,3,0,0.00,'IDR','2014-05-05',1,2014),(196,162,'179/B/SIADU/2014','001001201400179',179,'FIC Jim i',1,3,0,0.00,'IDR','2014-05-05',1,2014),(197,163,'180/B/SIADU/2014','001001201400180',180,'FIC Jim m',1,3,0,0.00,'IDR','2014-05-05',1,2014),(198,164,'181/B/SIADU/2014','001001201400181',181,'FIC Kei d',1,3,0,0.00,'IDR','2014-05-05',1,2014),(199,165,'182/B/SIADU/2014','001001201400182',182,'FIC Pat m',1,3,0,0.00,'IDR','2014-05-05',1,2014),(200,166,'183/B/SIADU/2014','001001201400183',183,'FIC Car m',1,3,0,0.00,'IDR','2014-05-06',1,2014),(201,167,'184/B/SIADU/2014','001001201400184',184,'FIC Jim m',1,3,0,0.00,'IDR','2014-05-06',1,2014),(202,168,'185/B/SIADU/2014','001001201400185',185,'FIC Boo w',1,3,0,0.00,'IDR','2014-05-06',1,2014),(203,169,'186/B/SIADU/2014','001001201400186',186,'FIC Mel c',1,3,0,0.00,'IDR','2014-05-06',1,2014),(204,169,'187/B/SIADU/2014','001001201400187',187,'FIC Mel c',1,3,0,0.00,'IDR','2014-05-06',1,2014),(205,170,'188/B/SIADU/2014','001001201400188',188,'FIC Ste j',1,3,0,0.00,'IDR','2014-05-06',1,2014),(206,170,'189/B/SIADU/2014','001001201400189',189,'FIC Ste j',1,3,0,0.00,'IDR','2014-05-06',1,2014),(207,171,'190/B/SIADU/2014','001001201400190',190,'FIC Ani i',1,3,0,0.00,'IDR','2014-05-07',1,2014),(208,172,'191/B/SIADU/2014','001001201400191',191,'FIC Man y',1,3,0,0.00,'IDR','2014-05-07',1,2014),(209,173,'192/B/SIADU/2014','001001201400192',192,'FIC Ani k',1,3,0,0.00,'IDR','2014-05-07',1,2014),(210,174,'193/B/SIADU/2014','001001201400193',193,'FIC Ani n',1,3,0,0.00,'IDR','2014-05-07',1,2014),(211,176,'194/B/SIADU/2014','001001201400194',194,'FIC Roy h',1,3,0,0.00,'IDR','2014-05-07',1,2014),(212,177,'195/B/SIADU/2014','001001201400195',195,'FIC Roy b',1,3,0,3.99,'USD','2014-05-07',1,2014),(213,178,'196/B/SIADU/2014','001001201400196',196,'FIC Chr j',1,3,0,0.00,'IDR','2014-05-07',1,2014),(214,179,'197/B/SIADU/2014','001001201400197',197,'FIC Jes a',1,3,0,0.00,'IDR','2014-05-07',1,2014),(215,180,'198/B/SIADU/2014','001001201400198',198,'FIC E,  i',1,3,0,0.00,'IDR','2014-05-07',1,2014),(216,181,'199/B/SIADU/2014','001001201400199',199,'FIC Shi c',1,3,0,0.00,'IDR','2014-05-08',1,2014),(217,182,'200/B/SIADU/2014','001001201400200',200,'FIC Cla i',1,3,0,0.00,'IDR','2014-05-08',1,2014),(218,183,'201/B/SIADU/2014','001001201400201',201,'FIC Mic m',1,3,0,0.00,'IDR','2014-05-08',1,2014),(219,184,'202/B/SIADU/2014','001001201400202',202,'FIC Jea c',1,3,0,3.50,'USD','2014-05-08',1,2014),(220,185,'203/B/SIADU/2014','001001201400203',203,'FIC Rob m',1,3,0,0.00,'IDR','2014-05-08',1,2014),(221,186,'204/B/SIADU/2014','001001201400204',204,'FIC Rob a',1,3,0,0.00,'IDR','2014-05-08',1,2014),(222,187,'205/B/SIADU/2014','001001201400205',205,'FIC Gus p',1,3,0,0.00,'IDR','2014-05-08',1,2014),(223,188,'206/B/SIADU/2014','001001201400206',206,'FIC Ros w',1,3,0,0.00,'IDR','2014-05-08',1,2014),(224,189,'207/B/SIADU/2014','001001201400207',207,'FIC Dal l',1,3,0,0.00,'IDR','2014-05-08',1,2014),(225,191,'208/B/SIADU/2014','001001201400208',208,'FIC Jan b',1,3,0,0.00,'IDR','2014-05-09',1,2014),(226,191,'209/B/SIADU/2014','001001201400209',209,'FIC Jan b',1,3,0,0.00,'IDR','2014-05-09',1,2014),(227,192,'210/B/SIADU/2014','001001201400210',210,'FIC Mir t',1,3,0,0.00,'IDR','2014-05-09',1,2014),(228,193,'211/B/SIADU/2014','001001201400211',211,'FIC Kee c',1,3,0,0.00,'IDR','2014-05-09',1,2014),(229,194,'212/B/SIADU/2014','001001201400212',212,'FIC Atm l',1,3,0,24.00,'IDR','2014-05-09',1,2014),(230,195,'213/B/SIADU/2014','001001201400213',213,'FIC Ton f',1,3,0,1.99,'USD','2014-05-09',1,2014),(231,195,'214/B/SIADU/2014','001001201400214',214,'FIC Ton f',1,3,0,1.99,'USD','2014-05-09',1,2014),(232,196,'215/B/SIADU/2014','001001201400215',215,'FIC Ann w',1,3,0,1.99,'USD','2014-05-09',1,2014),(233,197,'216/B/SIADU/2014','001001201400216',216,'FIC Ann s',1,3,0,1.99,'USD','2014-05-12',1,2014),(234,198,'217/B/SIADU/2014','001001201400217',217,'FIC Ann m',1,3,0,1.99,'USD','2014-05-12',1,2014),(235,199,'218/B/SIADU/2014','001001201400218',218,'FIC Ela w',1,3,0,1.99,'USD','2014-05-12',1,2014),(236,199,'219/B/SIADU/2014','001001201400219',219,'FIC Ela w',1,3,0,1.99,'USD','2014-05-12',1,2014),(237,200,'220/B/SIADU/2014','001001201400220',220,'FIC Ann a',1,3,0,1.99,'IDR','2014-05-12',1,2014),(238,200,'221/B/SIADU/2014','001001201400221',221,'FIC Ann a',1,3,0,1.99,'IDR','2014-05-12',1,2014),(239,201,'222/B/SIADU/2014','001001201400222',222,'FIC Kim b',1,3,0,0.00,'IDR','2014-05-12',1,2014),(240,202,'223/B/SIADU/2014','001001201400223',223,'FIC Jud r',1,3,0,0.00,'IDR','2014-05-12',1,2014),(241,202,'224/B/SIADU/2014','001001201400224',224,'FIC Jud r',1,3,0,0.00,'IDR','2014-05-12',1,2014),(242,203,'225/B/SIADU/2014','001001201400225',225,'FIC Mur j',1,3,0,24.00,'IDR','2014-05-12',1,2014),(243,204,'226/B/SIADU/2014','001001201400226',226,'FIC Ilo a',1,3,0,0.00,'IDR','2014-05-12',1,2014),(244,205,'227/B/SIADU/2014','001001201400227',227,'FIC pub b',1,3,0,6.00,'IDR','2014-05-13',1,2014),(245,206,'228/B/SIADU/2014','001001201400228',228,'FIC pub r',1,3,0,6.00,'IDR','2014-05-13',1,2014),(246,207,'229/B/SIADU/2014','001002201400229',229,'813 Man l',2,3,0,24.56,'SGD','2014-05-13',1,2014),(247,208,'230/B/SIADU/2014','001002201400230',230,'813 Ler g',2,3,0,0.00,'IDR','2014-05-13',1,2014),(248,209,'231/B/SIADU/2014','001002201400231',231,'813 Ler l',2,3,0,0.00,'IDR','2014-05-13',1,2014),(249,210,'232/B/SIADU/2014','001002201400232',232,'813 Ler s',2,3,0,0.00,'IDR','2014-05-13',1,2014),(250,211,'233/B/SIADU/2014','001001201400233',233,'FIC Jud f',1,3,0,0.00,'IDR','2014-05-13',1,2014),(251,212,'234/B/SIADU/2014','001001201400234',234,'FIC Cha a',1,3,0,0.00,'IDR','2014-05-13',1,2014),(252,213,'234/B/SIADU/2014','001002201400234',235,'813 Ler a',2,3,0,0.00,'IDR','2014-05-13',1,2014),(253,214,'236/B/SIADU/2014','001002201400236',236,'813 Ler w',2,3,0,0.00,'IDR','2014-05-13',1,2014),(254,215,'237/B/SIADU/2014','001001201400237',237,'FIC Car w',1,3,0,0.00,'IDR','2014-05-13',1,2014),(255,215,'238/B/SIADU/2014','001001201400238',238,'FIC Car w',1,3,0,0.00,'IDR','2014-05-13',1,2014),(256,216,'239/B/SIADU/2014','001001201400239',239,'FIC Min o',1,3,0,0.00,'IDR','2014-05-13',1,2014),(257,216,'240/B/SIADU/2014','001001201400240',240,'FIC Min o',1,3,0,0.00,'IDR','2014-05-13',1,2014),(258,217,'241/B/SIADU/2014','001001201400241',241,'FIC Jan m',1,3,0,0.00,'IDR','2014-05-13',1,2014),(259,218,'242/B/SIADU/2014','001001201400242',242,'FIC Dav b',1,3,0,0.00,'IDR','2014-05-13',1,2014),(260,218,'243/B/SIADU/2014','001001201400243',243,'FIC Dav b',1,3,0,0.00,'IDR','2014-05-13',1,2014),(261,198,'244/B/SIADU/2014','001001201400244',244,'FIC Ann m',1,3,0,1.99,'IDR','2014-05-13',1,2014),(262,219,'245/B/SIADU/2014','001001201400245',245,'FIC Sus s',1,3,0,0.00,'IDR','2014-05-13',1,2014),(263,220,'246/B/SIADU/2014','001001201400246',246,'FIC Jan m',1,3,0,0.00,'IDR','2014-05-13',1,2014),(264,220,'247/B/SIADU/2014','001001201400247',247,'FIC Jan m',1,3,0,0.00,'IDR','2014-05-13',1,2014),(265,221,'248/B/SIADU/2014','001001201400248',248,'FIC Min r',1,3,0,0.00,'IDR','2014-05-13',1,2014),(266,221,'249/B/SIADU/2014','001001201400249',249,'FIC Min r',1,3,0,0.00,'IDR','2014-05-13',1,2014),(267,222,'250/B/SIADU/2014','001001201400250',250,'FIC Jan a',1,3,0,0.00,'IDR','2014-05-13',1,2014),(268,222,'251/B/SIADU/2014','001001201400251',251,'FIC Jan a',1,3,0,0.00,'IDR','2014-05-13',1,2014),(269,223,'252/B/SIADU/2014','001001201400252',252,'FIC Min t',1,3,0,0.00,'IDR','2014-05-13',1,2014),(270,192,'253/B/SIADU/2014','001001201400253',253,'FIC Mir t',1,3,0,0.00,'IDR','2014-05-13',1,2014),(271,225,'254/B/SIADU/2014','001001201400254',254,'FIC Jan p',1,3,0,0.00,'IDR','2014-05-13',1,2014),(272,226,'255/B/SIADU/2014','001001201400255',255,'FIC Jan a',1,3,0,0.00,'IDR','2014-05-13',1,2014),(273,227,'256/B/SIADU/2014','001001201400256',256,'FIC Dav r',1,3,0,0.00,'IDR','2014-05-13',1,2014),(274,228,'257/B/SIADU/2014','001001201400257',257,'FIC Dia m',1,3,0,0.00,'IDR','2014-05-14',1,2014),(275,229,'258/B/SIADU/2014','001001201400258',258,'FIC Had g',1,3,0,0.00,'IDR','2014-05-14',1,2014),(276,230,'259/B/SIADU/2014','001001201400259',259,'FIC Arn h',1,3,0,5.95,'USD','2014-05-14',1,2014),(277,231,'260/B/SIADU/2014','001001201400260',260,'FIC Pub c',1,3,0,0.00,'IDR','2014-05-14',1,2014),(278,232,'261/B/SIADU/2014','001001201400261',261,'FIC Oi, m',1,3,0,0.00,'IDR','2014-05-14',1,2014),(279,233,'262/B/SIADU/2014','001001201400262',262,'FIC Jas d',1,3,0,0.00,'IDR','2014-05-14',1,2014),(280,234,'263/B/SIADU/2014','001002201400263',263,'813 Ler r',2,3,0,0.00,'IDR','2014-05-14',1,2014),(281,236,'264/B/SIADU/2014','001002201400264',264,'813 Ler x',2,3,0,0.00,'IDR','2014-05-14',1,2014),(282,235,'264/B/SIADU/2014','001001201400264',265,'FIC Nan l',1,3,0,0.00,'IDR','2014-05-14',1,2014),(283,237,'266/B/SIADU/2014','001002201400266',266,'813 Ler h',2,3,0,0.00,'IDR','2014-05-14',1,2014),(284,238,'267/B/SIADU/2014','001001201400267',267,'FIC Pub s',1,3,0,0.00,'IDR','2014-05-14',1,2014),(285,239,'268/B/SIADU/2014','001001201400268',268,'FIC Pol s',1,3,0,0.00,'IDR','2014-05-14',1,2014),(286,240,'269/B/SIADU/2014','001002201400269',269,'813 Max j',2,3,0,0.00,'IDR','2014-05-14',1,2014),(287,241,'270/B/SIADU/2014','001001201400270',270,'FIC And w',1,3,0,0.00,'IDR','2014-05-14',1,2014),(288,242,'271/B/SIADU/2014','001002201400271',271,'813 Ler b',2,3,0,0.00,'IDR','2014-05-14',1,2014),(289,243,'272/B/SIADU/2014','001002201400272',272,'813 Ler d',2,3,0,0.00,'IDR','2014-05-14',1,2014),(290,244,'273/B/SIADU/2014','001002201400273',273,'813 Ler c',2,3,0,0.00,'IDR','2014-05-14',1,2014),(291,245,'274/B/SIADU/2014','001001201400274',274,'FIC Nan l',1,3,0,3.90,'IDR','2014-05-14',1,2014),(292,246,'275/B/SIADU/2014','001002201400275',275,'813 Ler u',2,3,0,0.00,'IDR','2014-05-14',1,2014),(294,248,'276/B/SIADU/2014','001002201400276',276,'813 Ler f',2,3,0,0.00,'IDR','2014-05-14',1,2014),(295,249,'277/B/SIADU/2014','001002201400277',277,'813 Ler t',2,3,0,0.00,'IDR','2014-05-14',1,2014),(296,250,'278/B/SIADU/2014','001002201400278',278,'813 Ler v',2,3,0,0.00,'IDR','2014-05-14',1,2014),(297,251,'279/B/SIADU/2014','001002201400279',279,'813 Ler q',2,3,0,0.00,'IDR','2014-05-14',1,2014),(298,252,'280/B/SIADU/2014','001002201400280',280,'813 Ler k',2,3,0,0.00,'IDR','2014-05-14',1,2014),(299,253,'281/B/SIADU/2014','001002201400281',281,'813 Ler o',2,3,0,0.00,'IDR','2014-05-14',1,2014),(300,254,'282/B/SIADU/2014','001002201400282',282,'813 Ler m',2,3,0,0.00,'IDR','2014-05-14',1,2014),(301,255,'283/B/SIADU/2014','001002201400283',283,'813 Ler i',2,3,0,0.00,'IDR','2014-05-14',1,2014),(302,257,'284/B/SIADU/2014','001001201400284',284,'FIC Nan p',1,3,0,3.90,'USD','2014-05-16',1,2014),(303,258,'285/B/SIADU/2014','001001201400285',285,'FIC Ric p',1,3,0,9.90,'USD','2014-05-16',1,2014),(304,259,'286/B/SIADU/2014','001001201400286',286,'FIC Mar s',1,3,0,0.00,'IDR','2014-05-16',1,2014),(305,260,'287/B/SIADU/2014','001001201400287',287,'FIC Inc l',1,3,0,4.02,'USD','2014-05-16',1,2014),(306,261,'288/B/SIADU/2014','001001201400288',288,'FIC Pub v',1,3,0,0.00,'IDR','2014-05-16',1,2014),(307,262,'289/B/SIADU/2014','001001201400289',289,'FIC Pub w',1,3,0,0.00,'IDR','2014-05-16',1,2014),(308,263,'290/B/SIADU/2014','001001201400290',290,'FIC Pub t',1,3,0,0.00,'IDR','2014-05-16',1,2014),(309,264,'291/B/SIADU/2014','001001201400291',291,'FIC Dav c',1,3,0,5.99,'USD','2014-05-16',1,2014),(310,265,'292/B/SIADU/2014','001001201400292',292,'FIC Ten b',1,3,0,0.00,'IDR','2014-05-16',1,2014),(311,266,'293/B/SIADU/2014','001001201400293',293,'FIC B,  t',1,3,0,0.00,'IDR','2014-05-16',1,2014),(312,266,'294/B/SIADU/2014','001001201400294',294,'FIC B,  t',1,3,0,0.00,'IDR','2014-05-16',1,2014),(313,267,'295/B/SIADU/2014','001001201400295',295,'FIC Jul c',1,3,0,0.00,'IDR','2014-05-16',1,2014),(314,267,'296/B/SIADU/2014','001001201400296',296,'FIC Jul c',1,3,0,0.00,'IDR','2014-05-16',1,2014),(315,268,'297/B/SIADU/2014','001001201400297',297,'FIC Coc t',1,3,0,0.00,'IDR','2014-05-16',1,2014),(316,269,'298/B/SIADU/2014','001001201400298',298,'FIC Pam l',1,3,0,1.99,'IDR','2014-05-16',1,2014),(317,270,'299/B/SIADU/2014','001001201400299',299,'FIC Jul t',1,3,0,1.99,'IDR','2014-05-16',1,2014),(318,270,'300/B/SIADU/2014','001001201400300',300,'FIC Jul t',1,3,0,1.99,'IDR','2014-05-16',1,2014),(319,271,'301/B/SIADU/2014','001001201400301',301,'FIC Jul w',1,3,0,1.99,'IDR','2014-05-16',1,2014),(320,272,'302/B/SIADU/2014','001001201400302',302,'FIC Deb l',1,3,0,3.90,'IDR','2014-05-16',1,2014),(321,273,'303/B/SIADU/2014','001001201400303',303,'FIC Kar g',1,3,0,0.00,'IDR','2014-05-16',1,2014),(322,274,'304/B/SIADU/2014','001001201400304',304,'FIC Kar s',1,3,0,0.00,'IDR','2014-05-16',1,2014),(323,275,'305/B/SIADU/2014','001001201400305',305,'FIC Ton i',1,3,0,0.00,'IDR','2014-05-16',1,2014),(324,276,'306/B/SIADU/2014','001001201400306',306,'FIC Ron d',1,3,0,7.99,'IDR','2014-05-16',1,2014),(325,277,'307/B/SIADU/2014','001001201400307',307,'FIC Fre c',1,3,0,6.00,'IDR','2014-05-16',1,2014),(326,278,'308/B/SIADU/2014','001001201400308',308,'FIC Jac k',1,3,0,10.95,'USD','2014-05-19',1,2014),(327,279,'309/B/SIADU/2014','001001201400309',309,'FIC Sar f',1,3,0,0.00,'IDR','2014-05-19',1,2014),(328,280,'310/B/SIADU/2014','001001201400310',310,'FIC She i',1,3,0,5.99,'IDR','2014-05-19',1,2014),(329,281,'311/B/SIADU/2014','001001201400311',311,'FIC Lin a',1,3,0,0.00,'IDR','2014-05-19',1,2014),(330,282,'312/B/SIADU/2014','001001201400312',312,'FIC Hel r',1,3,0,0.00,'IDR','2014-05-19',1,2014),(331,283,'313/B/SIADU/2014','001001201400313',313,'FIC Hel r',1,3,0,0.00,'IDR','2014-05-19',1,2014),(332,284,'314/B/SIADU/2014','001001201400314',314,'FIC STE l',1,3,0,12.90,'USD','2014-05-19',1,2014),(333,285,'315/B/SIADU/2014','001001201400315',315,'FIC Jul w',1,3,0,0.00,'IDR','2014-05-19',1,2014),(334,286,'316/B/SIADU/2014','001001201400316',316,'FIC Jul w',1,3,0,0.00,'IDR','2014-05-19',1,2014),(335,287,'317/B/SIADU/2014','001001201400317',317,'FIC Jul w',1,3,0,0.00,'IDR','2014-05-19',1,2014),(336,288,'318/B/SIADU/2014','001001201400318',318,'FIC Jul w',1,3,0,0.00,'IDR','2014-05-19',1,2014),(337,289,'319/B/SIADU/2014','001001201400319',319,'FIC Cou k',1,3,0,0.00,'IDR','2014-05-26',1,2014),(338,290,'320/B/SIADU/2014','001001201400320',320,'FIC Cou b',1,3,0,0.00,'IDR','2014-05-26',1,2014),(339,291,'321/B/SIADU/2014','001001201400321',321,'FIC Pet k',1,3,0,0.00,'IDR','2007-04-23',1,2014),(340,292,'322/B/SIADU/2014','001001201400322',322,'FIC Mar b',1,3,0,0.00,'IDR','2014-05-26',1,2014),(341,292,'323/B/SIADU/2014','001001201400323',323,'FIC Mar b',1,3,0,0.00,'IDR','2014-05-26',1,2014),(342,293,'324/B/SIADU/2014','001001201400324',324,'FIC Koo c',1,3,0,0.00,'IDR','2014-05-26',1,2014),(343,294,'325/B/SIADU/2014','001001201400325',325,'222 De, r',1,3,0,0.00,'IDR','2014-05-26',1,2014),(344,295,'326/B/SIADU/2014','001001201400326',326,'FIC Koo m',1,3,0,0.00,'IDR','2014-05-26',1,2014),(345,296,'327/B/SIADU/2014','001001201400327',327,'FIC Jan m',1,3,0,1.99,'IDR','2014-05-26',1,2014),(346,297,'328/B/SIADU/2014','001001201400328',328,'FIC Lin r',1,3,0,0.00,'IDR','2014-05-26',1,2014),(347,298,'329/B/SIADU/2014','001001201400329',329,'FIC Lyn n',1,3,0,0.00,'IDR','2014-05-26',1,2014),(348,299,'330/B/SIADU/2014','001001201400330',330,'FIC Lyn g',1,3,0,0.00,'IDR','2014-05-26',1,2014),(349,299,'331/B/SIADU/2014','001001201400331',331,'FIC Lyn g',1,3,0,0.00,'IDR','2014-05-26',1,2014),(350,300,'332/B/SIADU/2014','001001201400332',332,'FIC Lyn g',1,3,0,0.00,'IDR','2014-05-26',1,2014),(351,300,'333/B/SIADU/2014','001001201400333',333,'FIC Lyn g',1,3,0,0.00,'IDR','2014-05-26',1,2014),(352,301,'334/B/SIADU/2014','001001201400334',334,'FIC Nan s',1,3,0,11.99,'IDR','2014-05-26',1,2014),(353,301,'335/B/SIADU/2014','001001201400335',335,'FIC Nan s',1,3,0,11.99,'IDR','2014-05-26',1,2014),(354,302,'336/B/SIADU/2014','001001201400336',336,'FIC Non p',1,3,0,13.00,'IDR','2014-05-26',1,2014),(355,303,'337/B/SIADU/2014','001001201400337',337,'FIC Non n',1,3,0,13.00,'IDR','2014-05-26',1,2014),(356,304,'338/B/SIADU/2014','001001201400338',338,'FIC Roy b',1,3,0,48.00,'IDR','2014-05-26',1,2014),(357,305,'339/B/SIADU/2014','001001201400339',339,'FIC Ale j',1,3,0,0.00,'IDR','2014-05-26',1,2014),(358,306,'340/B/SIADU/2014','001001201400340',340,'FIC Jul b',1,3,0,0.00,'IDR','2014-05-28',1,2014),(359,307,'341/B/SIADU/2014','001001201400341',341,'FIC Fra a',1,3,0,0.00,'IDR','2014-05-28',1,2014),(360,308,'342/B/SIADU/2014','001001201400342',342,'590 Kat l',1,3,0,0.00,'IDR','2014-05-28',1,2014),(361,309,'343/B/SIADU/2014','001001201400343',343,'FIC Mo, d',1,3,0,16.00,'USD','2014-05-28',1,2014),(362,310,'344/B/SIADU/2014','001001201400344',344,'FIC Mo, n',1,3,0,0.00,'IDR','2014-05-28',1,2014),(363,311,'345/B/SIADU/2014','001001201400345',345,'FIC Mar l',1,3,0,0.00,'IDR','2014-05-30',1,2014),(364,312,'346/B/SIADU/2014','001001201400346',346,'FIC Mel a',1,3,0,0.00,'IDR','2014-05-30',1,2014),(365,313,'347/B/SIADU/2014','001001201400347',347,'FIC Ian b',1,3,0,5.90,'IDR','2014-05-30',1,2014),(366,314,'348/B/SIADU/2014','001001201400348',348,'FIC Mar l',1,3,0,0.00,'IDR','2014-05-30',1,2014),(367,315,'349/B/SIADU/2014','001001201400349',349,'FIC Ros t',1,3,0,0.00,'IDR','2014-05-30',1,2014),(368,316,'350/B/SIADU/2014','001001201400350',350,'FIC Kat t',1,3,0,0.00,'IDR','2014-05-30',1,2014),(369,317,'351/B/SIADU/2014','001001201400351',351,'FIC All a',1,3,0,0.00,'IDR','2014-05-30',1,2014),(370,317,'352/B/SIADU/2014','001001201400352',352,'FIC All a',1,3,0,0.00,'IDR','2014-05-30',1,2014),(371,318,'353/B/SIADU/2014','001001201400353',353,'FIC Ali m',1,3,0,0.00,'IDR','2014-05-30',1,2014),(372,318,'354/B/SIADU/2014','001001201400354',354,'FIC Ali m',1,3,0,0.00,'IDR','2014-05-30',1,2014),(373,319,'355/B/SIADU/2014','001001201400355',355,'FIC San j',1,3,0,0.00,'IDR','2014-05-30',1,2014),(374,320,'356/B/SIADU/2014','001001201400356',356,'FIC Roz t',1,3,0,0.00,'IDR','2014-05-30',1,2014),(375,320,'357/B/SIADU/2014','001001201400357',357,'FIC Roz t',1,3,0,0.00,'IDR','2014-05-30',1,2014),(376,321,'358/B/SIADU/2014','001001201400358',358,'FIC Kat s',1,3,0,0.00,'IDR','2014-05-30',1,2014),(377,322,'359/B/SIADU/2014','001001201400359',359,'FIC Deb l',1,3,0,0.00,'IDR','2014-05-30',1,2014),(378,323,'360/B/SIADU/2014','001001201400360',360,'FIC Boo g',1,3,0,0.00,'IDR','2014-05-30',1,2014),(379,324,'361/B/SIADU/2014','001001201400361',361,'FIC Boo g',1,3,0,2.99,'IDR','2014-05-30',1,2014),(380,325,'362/B/SIADU/2014','001001201400362',362,'FIC Kat h',1,3,0,0.00,'IDR','2014-06-02',1,2014),(381,325,'362/B/SIADU/2014','001001201400362',363,'FIC Kat h',1,3,0,0.00,'IDR','2014-06-02',1,2014),(382,326,'364/B/SIADU/2014','001001201400364',364,'FIC Ali m',1,3,0,0.00,'IDR','2014-06-02',1,2014),(383,327,'365/B/SIADU/2014','001001201400365',365,'FIC Com a',1,3,0,0.00,'IDR','2014-06-02',1,2014),(384,328,'366/B/SIADU/2014','001001201400366',366,'FIC Com a',1,3,0,0.00,'IDR','2014-06-02',1,2014),(385,330,'367/B/SIADU/2014','001001201400367',367,'FIC Kei d',1,3,0,0.00,'IDR','2014-06-03',1,2014),(386,331,'368/B/SIADU/2014','001001201400368',368,'FIC Mir e',1,3,0,9.90,'USD','2014-06-09',1,2014),(387,332,'369/B/SIADU/2014','001001201400369',369,'FIC Cla f',1,3,0,5.99,'IDR','2014-06-09',1,2014),(388,333,'370/B/SIADU/2014','001001201400370',370,'FIC Lyn p',1,3,0,15000.00,'IDR','2014-06-09',1,2014),(389,334,'371/B/SIADU/2014','001001201400371',371,'FIC Ire s',1,3,0,0.00,'IDR','2014-06-09',1,2014),(390,335,'372/B/SIADU/2014','001001201400372',372,'FIC Pre r',1,3,0,5.90,'IDR','2014-06-09',1,2014),(391,336,'373/B/SIADU/2014','001001201400373',373,'FIC Kat g',1,3,0,5.90,'IDR','2014-06-10',1,2014),(392,337,'374/B/SIADU/2014','001001201400374',374,'222 Cla d',1,3,0,3.95,'IDR','2014-06-10',1,2014),(393,338,'375/B/SIADU/2014','001001201400375',375,'823 Ant s',1,3,0,0.00,'IDR','2014-06-10',1,2014),(394,339,'376/B/SIADU/2014','001001201400376',376,'811 Kat n',1,3,0,0.00,'IDR','2014-06-10',1,2014),(395,340,'377/B/SIADU/2014','001001201400377',377,'FIC Man l',1,3,0,0.00,'IDR','2014-06-10',1,2014);
/*!40000 ALTER TABLE `pus_buku` ENABLE KEYS */;
