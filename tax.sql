-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: tax_db
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acc_users`
--

DROP TABLE IF EXISTS `acc_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acc_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tax_number` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acc_users`
--

LOCK TABLES `acc_users` WRITE;
/*!40000 ALTER TABLE `acc_users` DISABLE KEYS */;
INSERT INTO `acc_users` VALUES (1,'0000000004','vandat09','a@gmail.com','032323232'),(2,'0000000005','vandat09','a@gmail.com','43543534');
/*!40000 ALTER TABLE `acc_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `streetNumber` varchar(255) NOT NULL,
  `nation` varchar(255) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `residentialAddress` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,4,'nbn','gfg','rtr','rte','sdafs'),(2,5,'vnvnv','nvnv','nvnvn','vnvnvn','gfgfdgf'),(3,6,'b','n','m','y','rt'),(4,7,'2','5443','4336','4435','34534'),(5,8,'glgyu','hglh','hjkl78','hjklgft7','jklgj'),(6,9,'glgyu','hglh','hjkl78','hjklgft7','jklgj'),(7,10,'glgyu','hglh','hjkl78','hjklgft7','jklgj'),(8,11,'glgyu','hglh','hjkl78','hjklgft7',' jklgj');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactinfo`
--

DROP TABLE IF EXISTS `contactinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `phoneNum` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `contactinfo_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactinfo`
--

LOCK TABLES `contactinfo` WRITE;
/*!40000 ALTER TABLE `contactinfo` DISABLE KEYS */;
INSERT INTO `contactinfo` VALUES (2,4,'0332413036','a@gmail.com'),(3,5,'0332413036','v@gmail.com'),(4,6,'0332413036','cc@gmail.com'),(5,7,'l;sgsd','k@mail.com'),(6,8,'tidyidyi','k@k.com'),(7,9,'tidyidyi','k@k.com'),(8,10,'tidyidyi','k@k.com'),(9,11,'tidyidyi','k@k.com');
/*!40000 ALTER TABLE `contactinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `document`
--

DROP TABLE IF EXISTS `document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `document` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `docType` varchar(255) NOT NULL,
  `dateOfIssue` date NOT NULL,
  `numDoc` varchar(255) NOT NULL,
  `issuingAuthority` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `document_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `document`
--

LOCK TABLES `document` WRITE;
/*!40000 ALTER TABLE `document` DISABLE KEYS */;
INSERT INTO `document` VALUES (2,4,'CCCD','2011-11-21','111111111','bn'),(3,5,'CMND','2011-12-21','113344442','nvn'),(4,6,'CCCD','2011-11-09','111111111','bn'),(5,7,'CCCD','2019-01-22','1234567890','Kin'),(6,8,'CMND','2000-11-11','1234567899','jkgj'),(7,9,'CMND','2000-11-11','1234567899',' jkgj'),(8,10,'CMND','2000-11-11','1234567899',' jkgj#'),(9,11,'CMND','2000-11-11','1234567899',' jkgj#');
/*!40000 ALTER TABLE `document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income_declaration`
--

DROP TABLE IF EXISTS `income_declaration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income_declaration` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `tien_luong_or_tien_cong` double NOT NULL,
  `tien_thu_tu_dau_tu` double NOT NULL,
  `tien_thu_tu_kinh_doanh` double NOT NULL,
  `tien_thu_tu_chuyen_nhuong_bat_dong_san` double NOT NULL,
  `tien_thu_tu_trung_thuong` double NOT NULL,
  `so_nguoi_phu_thuoc` int NOT NULL,
  `tien_nhan_dao_tu_thien` double NOT NULL,
  `tien_dong_bao_hiem` double NOT NULL,
  `tien_dong_quy_huu_tri_tu_nguyen` double NOT NULL,
  `time_type` varchar(255) NOT NULL,
  `object_type` varchar(255) NOT NULL,
  `datesb` date NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `income_declaration_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `user` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income_declaration`
--

LOCK TABLES `income_declaration` WRITE;
/*!40000 ALTER TABLE `income_declaration` DISABLE KEYS */;
INSERT INTO `income_declaration` VALUES (1,4,56456456,0,0,0,0,2,0,3395565,0,'Theo tháng','Cư trú có hợp đồng >= 3 tháng','2021-04-07','none'),(2,4,433354543543,34543534,0,0,0,2,0,76876,0,'Theo năm','Không cư trú','2024-04-01','none');
/*!40000 ALTER TABLE `income_declaration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxinfo`
--

DROP TABLE IF EXISTS `taxinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taxinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `taxId` varchar(255) NOT NULL,
  `declarationDate` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxinfo`
--

LOCK TABLES `taxinfo` WRITE;
/*!40000 ALTER TABLE `taxinfo` DISABLE KEYS */;
INSERT INTO `taxinfo` VALUES (2,4,'0000000004','2024-04-08'),(3,5,'0000000005','2024-04-08'),(4,6,'0000000006','2024-04-08'),(5,7,'0000000007','2024-04-10'),(6,8,'0000000008','2024-04-10'),(7,9,'0000000009','2024-04-10'),(8,10,'0000000010','2024-04-10'),(9,11,'0000000011','2024-04-10');
/*!40000 ALTER TABLE `taxinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `dateOfBirth` date NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `nationality` varchar(255) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (4,'a','2024-04-11','Female','vn'),(5,'b','2024-04-10','Male','vn'),(6,'ấ','2024-04-03','Female','vn'),(7,'hfhfhh07087','2002-04-17','Male','Cái bang'),(8,'kh','2024-04-23','Male','kghvfh'),(9,'kh','2024-04-23','Male','kghvfh'),(10,'kh','2024-04-23','Male','kghvfh'),(11,'kh','2024-04-23','Male','kghvfh');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-21 23:09:49
