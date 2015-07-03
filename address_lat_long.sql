/*
SQLyog Community v12.12 (64 bit)
MySQL - 5.6.14 : Database - kontan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kontan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kontan`;

/*Table structure for table `address_lat_long` */

DROP TABLE IF EXISTS `address_lat_long`;

CREATE TABLE `address_lat_long` (
  `ADDRESS` text,
  `lat` double DEFAULT NULL,
  `LONG` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address_lat_long` */

insert  into `address_lat_long`(`ADDRESS`,`lat`,`LONG`) values ('Sutera Buana V No.39 Alam Sutera  Indonesia',37.52085,13.735536),('Banjar Wijaya Blok A3 no.46 Indonesia',-6.194159,106.656296),('Jl. H. Jian 25 Cipete utara Rt7/7 JakSel Indonesia',-6.262523,106.80439),('Jl. Dr. Semeru gg.Iv No.3 Grogol Indonesia',-5.985698,106.02894),('Kebon Jeruk Baru A6 NO.33 Jak Bar Indonesia',-6.1583395,106.82283),('Jl. Satria IV blok C no.57 Jelambar grogol Indonesia',-6.1652694,106.78721),('Jl. Mandala barat No.5 Tomang Indonesia',-6.175152,106.798836),('mahkota Mas Blok O2 no.8  Indonesia',-6.563168,106.8631),('Bandara Budiarto Curug tng Indonesia',-6.2864294,106.56452),('Sek 1B Blok BA6 No.2  Indonesia',2.9765675,101.79311),('Puri bintaro blok PB12 no.16 Indonesia',-6.278193,106.80929),('Jl. Sulawesi III blok G2 no.51 Indonesia',-7.276804,112.74462),('Komp. Puri Flamboyan Jl. Flamboyan Elok Blok C2 No. 9 , Rempoa Ciputat Timur Indonesia',-6.288537,106.7559),('Jl.Cendrawasih Raya No 14 Cengkareng Indonesia',-6.144816,106.72723),('Taman Palem Lestari Blok AA 2 No 7A Cengkareng Indonesia',-6.1308346,106.71643),('Taman Palem Lestari Blok F 7C No.2 Jakarta Indonesia',-6.1369047,106.72482),('Benua Indah Blok A2 No.15 Pabuaran Tumpeng Karawaci Indonesia',-6.1682496,106.61373),('Jl. Mandala Raya No.21 Tomang Jakarta Barat Indonesia',-6.175804,106.798584),('Ruko Pelangi F/23 Taman Palem Lestari Cengkareng Indonesia',-6.1410275,106.72373),('Jl. Gunung Atlantik No.108 Taman Diponegoro Lippo Karawaci Tangerang Indonesia',-6.2023935,106.65271),('komp. Ruko roxy mas blok C1 no.6 Indonesia',-6.1676893,106.80368),('Citra garden 2 Blok O no.7 No.15A pegadungan kalideres Indonesia',-6.1417317,106.70777),('Jl tanjung duren timur VI / 24  Indonesia',-6.17938,106.790436),('Komp. Kresek Indah Blok N / 46 Duri Kosambi  Indonesia',-6.1791334,106.70945),('Komp. Mutiara Taman Palem Blok C 9 / 50 Cengkareng Indonesia',-6.1422935,106.73114),('taman aries E12 no.11 Meruya utara Indonesia',-6.191206,106.753426),('Jl. Swadarma utara II No.2 komp. BNI Ulujami pesanggrahan  Indonesia',-6.2409897,106.763275),('Kav. Polri E no.1222 jelambar Indonesia',-6.1614995,106.78325),('bangun reksa indah I blok E no.15 karang tengah ciledug Indonesia',-6.217757,106.70337),('Metro Permata I Blok M3 no.11 karang tengah ciledug Indonesia',-6.202368,106.71189),('jl. Kav. Polri B1 no.605 B jelambar Indonesia',-6.1614995,106.78325),('kebon jeruk baru B2 no.11 Indonesia',-6.2410574,106.78134),('Komp. Metro Permata I Blok H 5 / 22 Ciledug  Indonesia',-6.203178,106.71404),('Griya kencana 1 Blok K no.6 ciledug Indonesia',-6.2265434,106.698875),('Komp. Mediterania Z / 02 Jakarta Utara Indonesia',-6.15801,106.89601),('Gading Serpong Blok DB3 No.18  Indonesia',-6.2928357,106.67824),('Jl.  Penerangan I/2ARt. 2 / 3 depan Lapangan Putsal  Jelambar Jakarta Barat 11460 Indonesia',-6.1598177,106.78539),('Griya Pesona Rama A8 JL. Legoso pisangan ciputat Indonesia',-6.307706,106.71757),('Jl. Karina sayang L no.10 Bojong Indah cengkareng Indonesia',-6.159824,106.73701),('taman Alfa indah C3 no.4 Joglo kembangan Indonesia',-6.217854,106.748405),('Tanjung gedong no.6 Rt1/16  Indonesia',-6.2980933,106.827675),('Jl. Bawang merah Raya No.10-11 bojong Indah Cengkareng Indonesia',-6.159824,106.73701),('Duta bandara permai FU1 no.31 Jati mulya kosambi Indonesia',-6.093695,106.68673),('Pulo gebang permai H14 no.23 Indonesia',-6.1850753,106.98841),('taman meruya ilir B10 No.33 Indonesia',-6.198567,106.73964),('Jl. Tanjung duren utara IV No.65 jak bar Indonesia',-6.169348,106.7838),('batan indah blok A4 serpong Indonesia',-6.330377,106.67103),('Puri kartika tengah B4 No.18 Rt3/8 ciledug Indonesia',-6.239239,106.69692),('Komp. Taman Ratu Indah Blok EE 5 / 17 Jak- bar  Indonesia',-6.179749,106.76742),('Banjar Wijaya B36 No.9 Indonesia',-6.193762,106.65561),('Jl. Kelapa Sawit XV Blok BJ1 No.10 Gading Serpong,Tangerang Indonesia',-6.2023935,106.65271),('Jl. Majelis No. 16 Srengseng   Indonesia',-6.196475,106.75776),('JL. Tanjung Duren Selatan I No.46 Rt4/2 Indonesia',-6.1826344,106.783844),('Graha  Bintaro GR8 no.108 Pd. Kacang Barat Indonesia',-6.251316,106.68527),('gading Serpong Blok AF15 no.2 Indonesia',-6.294418,106.6776),('Duta Gardenia Blok G 7 / 16 Rt.017/008 Indonesia',-6.1497774,106.68358),('Gedung Kontan Lantai 2 Jl. Kebayoran Lama No. 1119 Indonesia',-6.2919283,106.74498),('Taman Alfa Indah Blok B 2 / 14 Joglo Indonesia',-6.220206,106.74965),('Jl. Taman Cosmos Blok H / 27Rt.15/007 Indonesia',-6.1667957,106.76494),('Duri Utara Gang 6 No. 23 Rt.007/06 Jakarta Barat Indonesia',-6.177476,106.8078),('Komp. Metro Permata I blok H5 No.17 Karang Mulya Ciledug Indonesia',-6.203179,106.71446),('Jl. Pakis raya No.35 Rt11/6 Indonesia',-6.162787,106.74103),('Jl. Masjid rt1/4 no.22 Sudimara timur Indonesia',-6.2313933,106.71712),('jl. Taman surya III Fi no.10 cengkareng Indonesia',-6.133077,106.71184),('Taman Pabuaran A5 no.27 Indonesia',-6.179587,106.61746),('Sutera olivia 2 no.26 Indonesia',-6.2365775,106.65632),('Kencana baru II Blok L4 no.10 Indonesia',-6.552896,106.77279),('taman alfa indah H2 no.15 Indonesia',-6.222496,106.75576),('Jl. Pulau sebaru IX L8 No.23A Indonesia',-6.1755915,106.74519),('Alfa indah D3 no.16 Indonesia',-6.221925,106.75462),('Taman Kebon jeruk F1 no.10 Indonesia',-6.1610184,106.75815),('Blok A ext 1 no 42 Ruko Kosambi Baru dr. Kalideres msk Perum. Kosambi Ruko Baru samping Sekolah Narada diRumah Makan Padang Indonesia',-0.95,100.35306),('jl. surya mandala blok 3F no 6. Indonesia',-6.177039,106.76311),('Citra 3, Blok E1/14 Indonesia',-6.11682,106.7039),('Green garden B1 no.59 Indonesia',-6.163359,106.758224),('water point K10 No.30 Indonesia',-6.247202,106.52878),('Perum Kedoya garden 3 B no.9 Puri Kembangan Indonesia',-6.180471,106.74982),('Jl. Empu kanwa 2 No.7 Perum 2 Indonesia',-6.203717,106.602295),('Orchid no.20 Indonesia',-6.2892356,106.91752),('taman kedoya baru E8 no.15 Indonesia',-6.188126,106.76729),('Villa Kapuk 1 E2 no.9 Indonesia',-6.132099,106.76645),('Jl. Daan mogot KM 13,5 no.59 Indonesia',-6.1667957,106.647675),('Permata Mediterania No. 08 Indonesia',-6.221321,106.76281),('Taman Surya 5 Blok JJ 2 / 25 Pegadungan Jakarta Barat Indonesia',-6.1318355,106.70283),('Komp. Mahkota Mas Blok O 5 / 24 Indonesia',-6.562999,106.86299),('Plaza Kebon jeruk E no.15 jak bar Indonesia',-6.1701117,106.76804),('Jl. Sutera asri 2 no.6 alam serpong Indonesia',-6.2478504,106.652214),('Jl. Excalibur No.72 Indonesia',-6.218531,106.624176),('Gading Serpong Blok DA7 No.16 Indonesia',-6.2928133,106.67827),('Sutera Buana V No.39 Alam Sutera  Indonesia',37.52085,13.735536),('Banjar Wijaya Blok A3 no.46 Indonesia',-6.194159,106.656296),('Jl. H. Jian 25 Cipete utara Rt7/7 JakSel Indonesia',-6.262523,106.80439),('Jl. Dr. Semeru gg.Iv No.3 Grogol Indonesia',-5.985698,106.02894),('Kebon Jeruk Baru A6 NO.33 Jak Bar Indonesia',-6.1583395,106.82283),('Jl. Satria IV blok C no.57 Jelambar grogol Indonesia',-6.1652694,106.78721),('Jl. Mandala barat No.5 Tomang Indonesia',-6.175152,106.798836),('mahkota Mas Blok O2 no.8  Indonesia',-6.563168,106.8631),('Bandara Budiarto Curug tng Indonesia',-6.2864294,106.56452),('Sek 1B Blok BA6 No.2  Indonesia',2.9765675,101.79311),('Puri bintaro blok PB12 no.16 Indonesia',-6.278193,106.80929),('Jl. Sulawesi III blok G2 no.51 Indonesia',-7.276804,112.74462),('Komp. Puri Flamboyan Jl. Flamboyan Elok Blok C2 No. 9 , Rempoa Ciputat Timur Indonesia',-6.288537,106.7559),('Jl.Cendrawasih Raya No 14 Cengkareng Indonesia',-6.144816,106.72723),('Taman Palem Lestari Blok AA 2 No 7A Cengkareng Indonesia',-6.1308346,106.71643),('Taman Palem Lestari Blok F 7C No.2 Jakarta Indonesia',-6.1369047,106.72482),('Benua Indah Blok A2 No.15 Pabuaran Tumpeng Karawaci Indonesia',-6.1682496,106.61373),('Jl. Mandala Raya No.21 Tomang Jakarta Barat Indonesia',-6.175804,106.798584),('Ruko Pelangi F/23 Taman Palem Lestari Cengkareng Indonesia',-6.1410275,106.72373),('Jl. Gunung Atlantik No.108 Taman Diponegoro Lippo Karawaci Tangerang Indonesia',-6.2023935,106.65271),('komp. Ruko roxy mas blok C1 no.6 Indonesia',-6.1676893,106.80368),('Citra garden 2 Blok O no.7 No.15A pegadungan kalideres Indonesia',-6.1417317,106.70777),('Jl tanjung duren timur VI / 24  Indonesia',-6.17938,106.790436),('Komp. Kresek Indah Blok N / 46 Duri Kosambi  Indonesia',-6.1791334,106.70945),('Komp. Mutiara Taman Palem Blok C 9 / 50 Cengkareng Indonesia',-6.1422935,106.73114),('taman aries E12 no.11 Meruya utara Indonesia',-6.191206,106.753426),('Jl. Swadarma utara II No.2 komp. BNI Ulujami pesanggrahan  Indonesia',-6.2409897,106.763275),('Kav. Polri E no.1222 jelambar Indonesia',-6.1614995,106.78325),('bangun reksa indah I blok E no.15 karang tengah ciledug Indonesia',-6.217757,106.70337),('Metro Permata I Blok M3 no.11 karang tengah ciledug Indonesia',-6.202368,106.71189),('jl. Kav. Polri B1 no.605 B jelambar Indonesia',-6.1614995,106.78325),('kebon jeruk baru B2 no.11 Indonesia',-6.2410574,106.78134),('Komp. Metro Permata I Blok H 5 / 22 Ciledug  Indonesia',-6.203178,106.71404),('Griya kencana 1 Blok K no.6 ciledug Indonesia',-6.2265434,106.698875),('Komp. Mediterania Z / 02 Jakarta Utara Indonesia',-6.15801,106.89601),('Gading Serpong Blok DB3 No.18  Indonesia',-6.2928357,106.67824),('Jl.  Penerangan I/2ARt. 2 / 3 depan Lapangan Putsal  Jelambar Jakarta Barat 11460 Indonesia',-6.1598177,106.78539),('Griya Pesona Rama A8 JL. Legoso pisangan ciputat Indonesia',-6.307706,106.71757),('Jl. Karina sayang L no.10 Bojong Indah cengkareng Indonesia',-6.159824,106.73701),('taman Alfa indah C3 no.4 Joglo kembangan Indonesia',-6.217854,106.748405),('Tanjung gedong no.6 Rt1/16  Indonesia',-6.2980933,106.827675),('Jl. Bawang merah Raya No.10-11 bojong Indah Cengkareng Indonesia',-6.159824,106.73701),('Duta bandara permai FU1 no.31 Jati mulya kosambi Indonesia',-6.093695,106.68673),('Pulo gebang permai H14 no.23 Indonesia',-6.1850753,106.98841),('taman meruya ilir B10 No.33 Indonesia',-6.198567,106.73964),('Jl. Tanjung duren utara IV No.65 jak bar Indonesia',-6.169348,106.7838),('batan indah blok A4 serpong Indonesia',-6.330377,106.67103),('Puri kartika tengah B4 No.18 Rt3/8 ciledug Indonesia',-6.239239,106.69692),('Komp. Taman Ratu Indah Blok EE 5 / 17 Jak- bar  Indonesia',-6.179749,106.76742),('Banjar Wijaya B36 No.9 Indonesia',-6.193762,106.65561),('Jl. Kelapa Sawit XV Blok BJ1 No.10 Gading Serpong,Tangerang Indonesia',-6.2023935,106.65271),('Jl. Majelis No. 16 Srengseng   Indonesia',-6.196475,106.75776),('JL. Tanjung Duren Selatan I No.46 Rt4/2 Indonesia',-6.1826344,106.783844),('Graha  Bintaro GR8 no.108 Pd. Kacang Barat Indonesia',-6.251316,106.68527),('gading Serpong Blok AF15 no.2 Indonesia',-6.294418,106.6776),('Duta Gardenia Blok G 7 / 16 Rt.017/008 Indonesia',-6.1497774,106.68358),('Gedung Kontan Lantai 2 Jl. Kebayoran Lama No. 1119 Indonesia',-6.2919283,106.74498),('Taman Alfa Indah Blok B 2 / 14 Joglo Indonesia',-6.220206,106.74965),('Jl. Taman Cosmos Blok H / 27Rt.15/007 Indonesia',-6.1667957,106.76494),('Duri Utara Gang 6 No. 23 Rt.007/06 Jakarta Barat Indonesia',-6.177476,106.8078),('Komp. Metro Permata I blok H5 No.17 Karang Mulya Ciledug Indonesia',-6.203179,106.71446),('Jl. Pakis raya No.35 Rt11/6 Indonesia',-6.162787,106.74103),('Jl. Masjid rt1/4 no.22 Sudimara timur Indonesia',-6.2313933,106.71712),('jl. Taman surya III Fi no.10 cengkareng Indonesia',-6.133077,106.71184),('Taman Pabuaran A5 no.27 Indonesia',-6.179587,106.61746),('Sutera olivia 2 no.26 Indonesia',-6.2365775,106.65632),('Kencana baru II Blok L4 no.10 Indonesia',-6.552896,106.77279),('taman alfa indah H2 no.15 Indonesia',-6.222496,106.75576),('Jl. Pulau sebaru IX L8 No.23A Indonesia',-6.1755915,106.74519),('Alfa indah D3 no.16 Indonesia',-6.221925,106.75462),('Taman Kebon jeruk F1 no.10 Indonesia',-6.1610184,106.75815),('Blok A ext 1 no 42 Ruko Kosambi Baru dr. Kalideres msk Perum. Kosambi Ruko Baru samping Sekolah Narada diRumah Makan Padang Indonesia',-0.95,100.35306),('jl. surya mandala blok 3F no 6. Indonesia',-6.177039,106.76311),('Citra 3, Blok E1/14 Indonesia',-6.11682,106.7039),('Green garden B1 no.59 Indonesia',-6.163359,106.758224),('water point K10 No.30 Indonesia',-6.247202,106.52878),('Perum Kedoya garden 3 B no.9 Puri Kembangan Indonesia',-6.180471,106.74982),('Jl. Empu kanwa 2 No.7 Perum 2 Indonesia',-6.203717,106.602295),('Orchid no.20 Indonesia',-6.2892356,106.91752),('taman kedoya baru E8 no.15 Indonesia',-6.188126,106.76729),('Villa Kapuk 1 E2 no.9 Indonesia',-6.132099,106.76645),('Jl. Daan mogot KM 13,5 no.59 Indonesia',-6.1667957,106.647675),('Permata Mediterania No. 08 Indonesia',-6.221321,106.76281),('Taman Surya 5 Blok JJ 2 / 25 Pegadungan Jakarta Barat Indonesia',-6.1318355,106.70283),('Komp. Mahkota Mas Blok O 5 / 24 Indonesia',-6.562999,106.86299),('Plaza Kebon jeruk E no.15 jak bar Indonesia',-6.1701117,106.76804),('Jl. Sutera asri 2 no.6 alam serpong Indonesia',-6.2478504,106.652214),('Jl. Excalibur No.72 Indonesia',-6.218531,106.624176),('Gading Serpong Blok DA7 No.16 Indonesia',-6.2928133,106.67827),('Sutera Buana V No.39 Alam Sutera  Indonesia',37.52085,13.735536),('Banjar Wijaya Blok A3 no.46 Indonesia',-6.194159,106.656296),('Jl. H. Jian 25 Cipete utara Rt7/7 JakSel Indonesia',-6.262523,106.80439),('Jl. Dr. Semeru gg.Iv No.3 Grogol Indonesia',-5.985698,106.02894),('Kebon Jeruk Baru A6 NO.33 Jak Bar Indonesia',-6.1583395,106.82283),('Jl. Satria IV blok C no.57 Jelambar grogol Indonesia',-6.1652694,106.78721),('Jl. Mandala barat No.5 Tomang Indonesia',-6.175152,106.798836),('mahkota Mas Blok O2 no.8  Indonesia',-6.563168,106.8631),('Bandara Budiarto Curug tng Indonesia',-6.2864294,106.56452),('Sek 1B Blok BA6 No.2  Indonesia',2.9765675,101.79311),('Puri bintaro blok PB12 no.16 Indonesia',-6.278193,106.80929),('Jl. Sulawesi III blok G2 no.51 Indonesia',-7.276804,112.74462),('Komp. Puri Flamboyan Jl. Flamboyan Elok Blok C2 No. 9 , Rempoa Ciputat Timur Indonesia',-6.288537,106.7559),('Jl.Cendrawasih Raya No 14 Cengkareng Indonesia',-6.144816,106.72723),('Taman Palem Lestari Blok AA 2 No 7A Cengkareng Indonesia',-6.1308346,106.71643),('Taman Palem Lestari Blok F 7C No.2 Jakarta Indonesia',-6.1369047,106.72482),('Benua Indah Blok A2 No.15 Pabuaran Tumpeng Karawaci Indonesia',-6.1682496,106.61373),('Jl. Mandala Raya No.21 Tomang Jakarta Barat Indonesia',-6.175804,106.798584),('Ruko Pelangi F/23 Taman Palem Lestari Cengkareng Indonesia',-6.1410275,106.72373),('Jl. Gunung Atlantik No.108 Taman Diponegoro Lippo Karawaci Tangerang Indonesia',-6.2023935,106.65271),('komp. Ruko roxy mas blok C1 no.6 Indonesia',-6.1676893,106.80368),('Citra garden 2 Blok O no.7 No.15A pegadungan kalideres Indonesia',-6.1417317,106.70777),('Jl tanjung duren timur VI / 24  Indonesia',-6.17938,106.790436),('Komp. Kresek Indah Blok N / 46 Duri Kosambi  Indonesia',-6.1791334,106.70945),('Komp. Mutiara Taman Palem Blok C 9 / 50 Cengkareng Indonesia',-6.1422935,106.73114),('taman aries E12 no.11 Meruya utara Indonesia',-6.191206,106.753426),('Jl. Swadarma utara II No.2 komp. BNI Ulujami pesanggrahan  Indonesia',-6.2409897,106.763275),('Kav. Polri E no.1222 jelambar Indonesia',-6.1614995,106.78325),('bangun reksa indah I blok E no.15 karang tengah ciledug Indonesia',-6.217757,106.70337),('Metro Permata I Blok M3 no.11 karang tengah ciledug Indonesia',-6.202368,106.71189),('jl. Kav. Polri B1 no.605 B jelambar Indonesia',-6.1614995,106.78325),('kebon jeruk baru B2 no.11 Indonesia',-6.2410574,106.78134),('Komp. Metro Permata I Blok H 5 / 22 Ciledug  Indonesia',-6.203178,106.71404),('Griya kencana 1 Blok K no.6 ciledug Indonesia',-6.2265434,106.698875),('Komp. Mediterania Z / 02 Jakarta Utara Indonesia',-6.15801,106.89601),('Gading Serpong Blok DB3 No.18  Indonesia',-6.2928357,106.67824),('Jl.  Penerangan I/2ARt. 2 / 3 depan Lapangan Putsal  Jelambar Jakarta Barat 11460 Indonesia',-6.1598177,106.78539),('Griya Pesona Rama A8 JL. Legoso pisangan ciputat Indonesia',-6.307706,106.71757),('Jl. Karina sayang L no.10 Bojong Indah cengkareng Indonesia',-6.159824,106.73701),('taman Alfa indah C3 no.4 Joglo kembangan Indonesia',-6.217854,106.748405),('Tanjung gedong no.6 Rt1/16  Indonesia',-6.2980933,106.827675),('Jl. Bawang merah Raya No.10-11 bojong Indah Cengkareng Indonesia',-6.159824,106.73701),('Duta bandara permai FU1 no.31 Jati mulya kosambi Indonesia',-6.093695,106.68673),('Pulo gebang permai H14 no.23 Indonesia',-6.1850753,106.98841),('taman meruya ilir B10 No.33 Indonesia',-6.198567,106.73964),('Jl. Tanjung duren utara IV No.65 jak bar Indonesia',-6.169348,106.7838),('batan indah blok A4 serpong Indonesia',-6.330377,106.67103),('Puri kartika tengah B4 No.18 Rt3/8 ciledug Indonesia',-6.239239,106.69692),('Komp. Taman Ratu Indah Blok EE 5 / 17 Jak- bar  Indonesia',-6.179749,106.76742),('Banjar Wijaya B36 No.9 Indonesia',-6.193762,106.65561),('Jl. Kelapa Sawit XV Blok BJ1 No.10 Gading Serpong,Tangerang Indonesia',-6.2023935,106.65271),('Jl. Majelis No. 16 Srengseng   Indonesia',-6.196475,106.75776),('JL. Tanjung Duren Selatan I No.46 Rt4/2 Indonesia',-6.1826344,106.783844),('Graha  Bintaro GR8 no.108 Pd. Kacang Barat Indonesia',-6.251316,106.68527),('gading Serpong Blok AF15 no.2 Indonesia',-6.294418,106.6776),('Duta Gardenia Blok G 7 / 16 Rt.017/008 Indonesia',-6.1497774,106.68358),('Gedung Kontan Lantai 2 Jl. Kebayoran Lama No. 1119 Indonesia',-6.2919283,106.74498),('Taman Alfa Indah Blok B 2 / 14 Joglo Indonesia',-6.220206,106.74965),('Jl. Taman Cosmos Blok H / 27Rt.15/007 Indonesia',-6.1667957,106.76494),('Duri Utara Gang 6 No. 23 Rt.007/06 Jakarta Barat Indonesia',-6.177476,106.8078),('Komp. Metro Permata I blok H5 No.17 Karang Mulya Ciledug Indonesia',-6.203179,106.71446),('Jl. Pakis raya No.35 Rt11/6 Indonesia',-6.162787,106.74103),('Jl. Masjid rt1/4 no.22 Sudimara timur Indonesia',-6.2313933,106.71712),('jl. Taman surya III Fi no.10 cengkareng Indonesia',-6.133077,106.71184),('Taman Pabuaran A5 no.27 Indonesia',-6.179587,106.61746),('Sutera olivia 2 no.26 Indonesia',-6.2365775,106.65632),('Kencana baru II Blok L4 no.10 Indonesia',-6.552896,106.77279),('taman alfa indah H2 no.15 Indonesia',-6.222496,106.75576),('Jl. Pulau sebaru IX L8 No.23A Indonesia',-6.1755915,106.74519),('Alfa indah D3 no.16 Indonesia',-6.221925,106.75462),('Taman Kebon jeruk F1 no.10 Indonesia',-6.1610184,106.75815),('Blok A ext 1 no 42 Ruko Kosambi Baru dr. Kalideres msk Perum. Kosambi Ruko Baru samping Sekolah Narada diRumah Makan Padang Indonesia',-0.95,100.35306),('jl. surya mandala blok 3F no 6. Indonesia',-6.177039,106.76311),('Citra 3, Blok E1/14 Indonesia',-6.11682,106.7039),('Green garden B1 no.59 Indonesia',-6.163359,106.758224),('water point K10 No.30 Indonesia',-6.247202,106.52878),('Perum Kedoya garden 3 B no.9 Puri Kembangan Indonesia',-6.180471,106.74982),('Jl. Empu kanwa 2 No.7 Perum 2 Indonesia',-6.203717,106.602295),('Orchid no.20 Indonesia',-6.2892356,106.91752),('taman kedoya baru E8 no.15 Indonesia',-6.188126,106.76729),('Villa Kapuk 1 E2 no.9 Indonesia',-6.132099,106.76645),('Jl. Daan mogot KM 13,5 no.59 Indonesia',-6.1667957,106.647675),('Permata Mediterania No. 08 Indonesia',-6.221321,106.76281),('Taman Surya 5 Blok JJ 2 / 25 Pegadungan Jakarta Barat Indonesia',-6.1318355,106.70283),('Komp. Mahkota Mas Blok O 5 / 24 Indonesia',-6.562999,106.86299),('Plaza Kebon jeruk E no.15 jak bar Indonesia',-6.1701117,106.76804),('Jl. Sutera asri 2 no.6 alam serpong Indonesia',-6.2478504,106.652214),('Jl. Excalibur No.72 Indonesia',-6.218531,106.624176),('Gading Serpong Blok DA7 No.16 Indonesia',-6.2928133,106.67827),('Sutera Buana V No.39 Alam Sutera  Indonesia',37.52085,13.735536),('Banjar Wijaya Blok A3 no.46 Indonesia',-6.194159,106.656296),('Jl. H. Jian 25 Cipete utara Rt7/7 JakSel Indonesia',-6.262523,106.80439),('Jl. Dr. Semeru gg.Iv No.3 Grogol Indonesia',-5.985698,106.02894),('Kebon Jeruk Baru A6 NO.33 Jak Bar Indonesia',-6.1583395,106.82283),('Jl. Satria IV blok C no.57 Jelambar grogol Indonesia',-6.1652694,106.78721),('Jl. Mandala barat No.5 Tomang Indonesia',-6.175152,106.798836),('mahkota Mas Blok O2 no.8  Indonesia',-6.563168,106.8631),('Bandara Budiarto Curug tng Indonesia',-6.2864294,106.56452),('Sek 1B Blok BA6 No.2  Indonesia',2.9765675,101.79311),('Puri bintaro blok PB12 no.16 Indonesia',-6.278193,106.80929),('Jl. Sulawesi III blok G2 no.51 Indonesia',-7.276804,112.74462),('Komp. Puri Flamboyan Jl. Flamboyan Elok Blok C2 No. 9 , Rempoa Ciputat Timur Indonesia',-6.288537,106.7559),('Jl.Cendrawasih Raya No 14 Cengkareng Indonesia',-6.144816,106.72723),('Taman Palem Lestari Blok AA 2 No 7A Cengkareng Indonesia',-6.1308346,106.71643),('Taman Palem Lestari Blok F 7C No.2 Jakarta Indonesia',-6.1369047,106.72482),('Benua Indah Blok A2 No.15 Pabuaran Tumpeng Karawaci Indonesia',-6.1682496,106.61373),('Jl. Mandala Raya No.21 Tomang Jakarta Barat Indonesia',-6.175804,106.798584),('Ruko Pelangi F/23 Taman Palem Lestari Cengkareng Indonesia',-6.1410275,106.72373),('Jl. Gunung Atlantik No.108 Taman Diponegoro Lippo Karawaci Tangerang Indonesia',-6.2023935,106.65271),('komp. Ruko roxy mas blok C1 no.6 Indonesia',-6.1676893,106.80368),('Citra garden 2 Blok O no.7 No.15A pegadungan kalideres Indonesia',-6.1417317,106.70777),('Jl tanjung duren timur VI / 24  Indonesia',-6.17938,106.790436),('Komp. Kresek Indah Blok N / 46 Duri Kosambi  Indonesia',-6.1791334,106.70945),('Komp. Mutiara Taman Palem Blok C 9 / 50 Cengkareng Indonesia',-6.1422935,106.73114),('taman aries E12 no.11 Meruya utara Indonesia',-6.191206,106.753426),('Jl. Swadarma utara II No.2 komp. BNI Ulujami pesanggrahan  Indonesia',-6.2409897,106.763275),('Kav. Polri E no.1222 jelambar Indonesia',-6.1614995,106.78325),('bangun reksa indah I blok E no.15 karang tengah ciledug Indonesia',-6.217757,106.70337),('Metro Permata I Blok M3 no.11 karang tengah ciledug Indonesia',-6.202368,106.71189),('jl. Kav. Polri B1 no.605 B jelambar Indonesia',-6.1614995,106.78325),('kebon jeruk baru B2 no.11 Indonesia',-6.2410574,106.78134),('Komp. Metro Permata I Blok H 5 / 22 Ciledug  Indonesia',-6.203178,106.71404),('Griya kencana 1 Blok K no.6 ciledug Indonesia',-6.2265434,106.698875),('Komp. Mediterania Z / 02 Jakarta Utara Indonesia',-6.15801,106.89601),('Gading Serpong Blok DB3 No.18  Indonesia',-6.2928357,106.67824),('Jl.  Penerangan I/2ARt. 2 / 3 depan Lapangan Putsal  Jelambar Jakarta Barat 11460 Indonesia',-6.1598177,106.78539),('Griya Pesona Rama A8 JL. Legoso pisangan ciputat Indonesia',-6.307706,106.71757),('Jl. Karina sayang L no.10 Bojong Indah cengkareng Indonesia',-6.159824,106.73701),('taman Alfa indah C3 no.4 Joglo kembangan Indonesia',-6.217854,106.748405),('Tanjung gedong no.6 Rt1/16  Indonesia',-6.2980933,106.827675),('Jl. Bawang merah Raya No.10-11 bojong Indah Cengkareng Indonesia',-6.159824,106.73701),('Duta bandara permai FU1 no.31 Jati mulya kosambi Indonesia',-6.093695,106.68673),('Pulo gebang permai H14 no.23 Indonesia',-6.1850753,106.98841),('taman meruya ilir B10 No.33 Indonesia',-6.198567,106.73964),('Jl. Tanjung duren utara IV No.65 jak bar Indonesia',-6.169348,106.7838),('batan indah blok A4 serpong Indonesia',-6.330377,106.67103),('Puri kartika tengah B4 No.18 Rt3/8 ciledug Indonesia',-6.239239,106.69692),('Komp. Taman Ratu Indah Blok EE 5 / 17 Jak- bar  Indonesia',-6.179749,106.76742),('Banjar Wijaya B36 No.9 Indonesia',-6.193762,106.65561),('Jl. Kelapa Sawit XV Blok BJ1 No.10 Gading Serpong,Tangerang Indonesia',-6.2023935,106.65271),('Jl. Majelis No. 16 Srengseng   Indonesia',-6.196475,106.75776),('JL. Tanjung Duren Selatan I No.46 Rt4/2 Indonesia',-6.1826344,106.783844),('Graha  Bintaro GR8 no.108 Pd. Kacang Barat Indonesia',-6.251316,106.68527),('gading Serpong Blok AF15 no.2 Indonesia',-6.294418,106.6776),('Duta Gardenia Blok G 7 / 16 Rt.017/008 Indonesia',-6.1497774,106.68358),('Gedung Kontan Lantai 2 Jl. Kebayoran Lama No. 1119 Indonesia',-6.2919283,106.74498),('Taman Alfa Indah Blok B 2 / 14 Joglo Indonesia',-6.220206,106.74965),('Jl. Taman Cosmos Blok H / 27Rt.15/007 Indonesia',-6.1667957,106.76494),('Duri Utara Gang 6 No. 23 Rt.007/06 Jakarta Barat Indonesia',-6.177476,106.8078),('Komp. Metro Permata I blok H5 No.17 Karang Mulya Ciledug Indonesia',-6.203179,106.71446),('Jl. Pakis raya No.35 Rt11/6 Indonesia',-6.162787,106.74103),('Jl. Masjid rt1/4 no.22 Sudimara timur Indonesia',-6.2313933,106.71712),('jl. Taman surya III Fi no.10 cengkareng Indonesia',-6.133077,106.71184),('Taman Pabuaran A5 no.27 Indonesia',-6.179587,106.61746),('Sutera olivia 2 no.26 Indonesia',-6.2365775,106.65632),('Kencana baru II Blok L4 no.10 Indonesia',-6.552896,106.77279),('taman alfa indah H2 no.15 Indonesia',-6.222496,106.75576),('Jl. Pulau sebaru IX L8 No.23A Indonesia',-6.1755915,106.74519),('Alfa indah D3 no.16 Indonesia',-6.221925,106.75462),('Taman Kebon jeruk F1 no.10 Indonesia',-6.1610184,106.75815),('Blok A ext 1 no 42 Ruko Kosambi Baru dr. Kalideres msk Perum. Kosambi Ruko Baru samping Sekolah Narada diRumah Makan Padang Indonesia',-0.95,100.35306),('jl. surya mandala blok 3F no 6. Indonesia',-6.177039,106.76311),('Citra 3, Blok E1/14 Indonesia',-6.11682,106.7039),('Green garden B1 no.59 Indonesia',-6.163359,106.758224),('water point K10 No.30 Indonesia',-6.247202,106.52878),('Perum Kedoya garden 3 B no.9 Puri Kembangan Indonesia',-6.180471,106.74982),('Jl. Empu kanwa 2 No.7 Perum 2 Indonesia',-6.203717,106.602295),('Orchid no.20 Indonesia',-6.2892356,106.91752),('taman kedoya baru E8 no.15 Indonesia',-6.188126,106.76729),('Villa Kapuk 1 E2 no.9 Indonesia',-6.132099,106.76645),('Jl. Daan mogot KM 13,5 no.59 Indonesia',-6.1667957,106.647675),('Permata Mediterania No. 08 Indonesia',-6.221321,106.76281),('Taman Surya 5 Blok JJ 2 / 25 Pegadungan Jakarta Barat Indonesia',-6.1318355,106.70283),('Komp. Mahkota Mas Blok O 5 / 24 Indonesia',-6.562999,106.86299),('Plaza Kebon jeruk E no.15 jak bar Indonesia',-6.1701117,106.76804),('Jl. Sutera asri 2 no.6 alam serpong Indonesia',-6.2478504,106.652214),('Jl. Excalibur No.72 Indonesia',-6.218531,106.624176),('Gading Serpong Blok DA7 No.16 Indonesia',-6.2928133,106.67827);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;