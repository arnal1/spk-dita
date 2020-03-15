/*
SQLyog Community v13.1.5  (64 bit)
MySQL - 10.4.8-MariaDB : Database - spk-udin
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`spk-udin` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `spk-udin`;

/*Table structure for table `alternatif` */

DROP TABLE IF EXISTS `alternatif`;

CREATE TABLE `alternatif` (
  `alternatif_id` int(11) NOT NULL AUTO_INCREMENT,
  `alternatif_nik` varchar(20) DEFAULT NULL,
  `alternatif_nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`alternatif_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `alternatif` */

insert  into `alternatif`(`alternatif_id`,`alternatif_nik`,`alternatif_nama`) values 
(1,'5520115141','Ahmat Arnal Kastana'),
(4,'5520115143','Andrian Maulana'),
(6,'5520116568','Udin'),
(7,'5520118789','Yayat Ramadhan');

/*Table structure for table `konfigurasi` */

DROP TABLE IF EXISTS `konfigurasi`;

CREATE TABLE `konfigurasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_aplikasi` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `konfigurasi` */

insert  into `konfigurasi`(`id`,`nama_aplikasi`) values 
(1,'SPK-Udin');

/*Table structure for table `kriteria` */

DROP TABLE IF EXISTS `kriteria`;

CREATE TABLE `kriteria` (
  `kriteria_id` int(11) NOT NULL AUTO_INCREMENT,
  `kriteria_kode` varchar(5) DEFAULT NULL,
  `kriteria_nama` varchar(50) DEFAULT NULL,
  `kriteria_nilai` float DEFAULT NULL,
  PRIMARY KEY (`kriteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `kriteria` */

insert  into `kriteria`(`kriteria_id`,`kriteria_kode`,`kriteria_nama`,`kriteria_nilai`) values 
(1,'K1','Pekerjaan',0.3),
(2,'K2','Penghasilan',0.2),
(3,'K3','Rumah',0.2),
(4,'K4','Kendaraan',0.15),
(5,'K5','Tanggungan',0.15);

/*Table structure for table `penilaian` */

DROP TABLE IF EXISTS `penilaian`;

CREATE TABLE `penilaian` (
  `penilaian_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_alternatif` int(11) DEFAULT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `id_subkriteria` int(11) DEFAULT NULL,
  PRIMARY KEY (`penilaian_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

/*Data for the table `penilaian` */

insert  into `penilaian`(`penilaian_id`,`id_alternatif`,`id_kriteria`,`id_subkriteria`) values 
(1,1,1,1),
(2,1,2,6),
(3,1,3,11),
(4,1,4,16),
(5,1,5,19),
(11,4,1,5),
(12,4,2,10),
(13,4,3,15),
(14,4,4,18),
(15,4,5,23),
(16,6,1,3),
(17,6,2,10),
(18,6,3,13),
(19,6,4,18),
(20,6,5,23),
(21,7,1,3),
(22,7,2,8),
(23,7,3,13),
(24,7,4,18),
(25,7,5,22);

/*Table structure for table `subkriteria` */

DROP TABLE IF EXISTS `subkriteria`;

CREATE TABLE `subkriteria` (
  `subkriteria_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_kriteria` int(11) DEFAULT NULL,
  `subkriteria_nilai` float DEFAULT NULL,
  `subkriteria_keterangan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`subkriteria_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4;

/*Data for the table `subkriteria` */

insert  into `subkriteria`(`subkriteria_id`,`id_kriteria`,`subkriteria_nilai`,`subkriteria_keterangan`) values 
(1,1,1,'Pengangguran'),
(2,1,0.8,'Petani'),
(3,1,0.6,'Wiraswasta'),
(4,1,0.4,'Swasta'),
(5,1,0.2,'PNS'),
(6,2,1,'≤ Rp. 500.000'),
(7,2,0.8,'> Rp. 500.000 - Rp. 1.000.000'),
(8,2,0.6,'> Rp. 1.000.000 - Rp. 2.000.000'),
(9,2,0.4,'> Rp. 2.000.000 - Rp. 3.000.000'),
(10,2,0.2,'> Rp. 3.000.000'),
(11,3,1,'Tidak Layak'),
(12,3,0.8,'Kurang Layak'),
(13,3,0.6,'Cukup Layak'),
(14,3,0.4,'Layak'),
(15,3,0.2,'Sangat Layak'),
(16,4,1,'Tidak Punya'),
(17,4,0.7,'Motor'),
(18,4,0.4,'Mobil'),
(19,5,1,'≥ 5 Orang'),
(20,5,0.8,'4 Orang'),
(21,5,0.6,'3 Orang'),
(22,5,0.4,'2 Orang'),
(23,5,0.2,'1 Orang');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values 
(1,'admin','$2y$10$lJmSnBtucoM/Q5p7mkB2OuV6KfxkjeOel3V3aUWKZGrdnMbzotwIO');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
