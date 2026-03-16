-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: sistem_akademik
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `krs`
--

DROP TABLE IF EXISTS `krs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `krs` (
  `id_krs` int(11) NOT NULL AUTO_INCREMENT,
  `npm` varchar(10) DEFAULT NULL,
  `kode_mk` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_krs`),
  KEY `npm` (`npm`),
  KEY `kode_mk` (`kode_mk`),
  CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`),
  CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`)
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `krs`
--

LOCK TABLES `krs` WRITE;
/*!40000 ALTER TABLE `krs` DISABLE KEYS */;
INSERT INTO `krs` VALUES (146,'23001','MK01'),(147,'23001','MK02'),(148,'23002','MK01'),(149,'23002','MK03'),(150,'23003','MK02'),(151,'23003','MK04'),(152,'23004','MK01'),(153,'23004','MK05'),(154,'23005','MK03'),(155,'23005','MK02'),(156,'23006','MK02'),(157,'23006','MK08'),(158,'23007','MK03'),(159,'23007','MK08'),(160,'23008','MK04'),(161,'23008','MK02'),(162,'23009','MK02'),(163,'23009','MK03'),(164,'23010','MK08'),(165,'23010','MK04'),(166,'23011','MK06'),(167,'23011','MK07'),(168,'23012','MK07'),(169,'23012','MK06'),(170,'23013','MK06'),(171,'23013','MK04'),(172,'23014','MK07'),(173,'23014','MK01'),(174,'23015','MK06'),(175,'23015','MK05'),(176,'23016','MK05'),(177,'23016','MK02'),(178,'23017','MK05'),(179,'23017','MK03'),(180,'23018','MK05'),(181,'23018','MK04'),(182,'23019','MK02'),(183,'23019','MK06'),(184,'23020','MK03'),(185,'23020','MK07');
/*!40000 ALTER TABLE `krs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `npm` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`npm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('23001','Rizky Saputra','Informatika'),('23002','Dimas Pratama','Informatika'),('23003','Salsa Maharani','Informatika'),('23004','Fajar Hidayat','Informatika'),('23005','Nadia Puspita','Informatika'),('23006','Reza Maulana','Sistem Informasi'),('23007','Tania Oktavia','Sistem Informasi'),('23008','Bagas Ramadhan','Sistem Informasi'),('23009','Ardiansyah Putra','Sistem Informasi'),('23010','Laila Khairunnisa','Sistem Informasi'),('23011','Yusuf Prasetya','Teknik Komputer'),('23012','Rina Safitri','Teknik Komputer'),('23013','Hendra Wijaya','Teknik Komputer'),('23014','Zaki Mubarak','Teknik Komputer'),('23015','Rahma Wulandari','Teknik Komputer'),('23016','Dewi Anggraini','Data Science'),('23017','Ilham Fauzi','Data Science'),('23018','Siti Nurhaliza','Data Science'),('23019','Aldo Firmansyah','Data Science'),('23020','Putra Mahardika','Data Science');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(100) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_kuliah`
--

LOCK TABLES `mata_kuliah` WRITE;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
INSERT INTO `mata_kuliah` VALUES ('MK01','Algoritma',3),('MK02','Basis Data',3),('MK03','Pemrograman Web',3),('MK04','Struktur Data',3),('MK05','Jaringan Komputer',3),('MK06','Sistem Operasi',3),('MK07','Kecerdasan Buatan',3),('MK08','Statistika',3);
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nilai`
--

DROP TABLE IF EXISTS `nilai`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `npm` varchar(10) DEFAULT NULL,
  `kode_mk` varchar(10) DEFAULT NULL,
  `nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `npm` (`npm`),
  KEY `kode_mk` (`kode_mk`),
  CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`npm`) REFERENCES `mahasiswa` (`npm`),
  CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nilai`
--

LOCK TABLES `nilai` WRITE;
/*!40000 ALTER TABLE `nilai` DISABLE KEYS */;
INSERT INTO `nilai` VALUES (1,'23001','MK01',88),(2,'23001','MK02',85),(3,'23002','MK01',82),(4,'23002','MK03',90),(5,'23003','MK02',87),(6,'23003','MK04',80),(7,'23004','MK01',78),(8,'23004','MK05',92),(9,'23005','MK03',85),(10,'23005','MK02',89),(11,'23006','MK02',84),(12,'23006','MK08',86),(13,'23007','MK03',88),(14,'23007','MK08',81),(15,'23008','MK04',79),(16,'23008','MK02',83),(17,'23009','MK02',91),(18,'23009','MK03',87),(19,'23010','MK08',85),(20,'23010','MK04',82),(21,'23011','MK06',80),(22,'23011','MK07',84),(23,'23012','MK07',86),(24,'23012','MK06',81),(25,'23013','MK06',88),(26,'23013','MK04',83),(27,'23014','MK07',85),(28,'23014','MK01',79),(29,'23015','MK06',82),(30,'23015','MK05',87),(31,'23016','MK05',90),(32,'23016','MK02',84),(33,'23017','MK05',92),(34,'23017','MK03',88),(35,'23018','MK05',89),(36,'23018','MK04',85),(37,'23019','MK02',83),(38,'23019','MK06',81),(39,'23020','MK03',87),(40,'23020','MK07',86);
/*!40000 ALTER TABLE `nilai` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-03-17  3:32:39
