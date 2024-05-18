-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: httuyensinhdb
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'Tuyển sinh tất cả các ngành Khóa k24','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694504662/lchxpyuqubxpetkzlxp2.jpg','Tuyển sinh đào tạo từ xa ',1),(2,'Đây là chương trình đào tạo thạc sĩ','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694502996/wpw2zvix10ed4wvonvuk.png\n','Tuyển sinh thạc sĩ',1),(3,'sss','http://res.cloudinary.com/dtt23w3fy/image/upload/v1696861952/edui6x5qflw2e9ej0bkl.png','asd 222',0);
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_news` int NOT NULL,
  `id_user` int NOT NULL,
  `ngaybinhluan` datetime NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbexljf4qq5kq3tbluqmto5de3` (`id_news`),
  KEY `FKod8g1wfpogniwedl24xakxnuj` (`id_user`),
  CONSTRAINT `FKbexljf4qq5kq3tbluqmto5de3` FOREIGN KEY (`id_news`) REFERENCES `news` (`id`),
  CONSTRAINT `FKod8g1wfpogniwedl24xakxnuj` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (22,9,4,'2023-09-27 12:40:45.087000','test'),(23,8,4,'2023-10-03 14:27:32.913000','Chào!!\n'),(24,2,3,'2023-10-09 20:46:17.480000','Chào trường!!\n'),(25,2,3,'2023-10-09 21:05:50.359000','Test'),(26,9,3,'2023-10-10 19:21:03.582000','sss'),(27,9,3,'2023-10-10 19:21:03.842000','sss'),(28,8,4,'2023-10-14 21:47:51.304000','ok'),(29,8,4,'2023-10-14 21:49:46.237000','ok');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `trungbinhdiem` double NOT NULL,
  `mota` varchar(9999) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `motactdt` varchar(9999) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `tenkhoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,24,'Khoa Công Nghệ Thông Tin (CNTT) được thành lập từ tháng 09/1990 và là một trong những Khoa được thành lập đầu tiên của trường Đại Học Mở Tp. Hồ Chí Minh. Trải qua hơn 30 năm xây dựng và phát triển, hiện nay Khoa có đội ngũ giảng viên cơ hữu giàu kinh nghiệm và tận tâm gồm các Tiến sĩ, Thạc sĩ tốt nghiệp từ các trường danh tiếng trong và ngoài nước cùng với các giảng viên thỉnh giảng đến từ các trường Đại học, viện nghiên cứu uy tín ở TP HCM. Khoa đã đào tạo và cung cấp nguồn nhân lực có chất lượng cho xã hội với số lượng xấp xỉ 5.500 cử nhân khoa học hệ chính quy khối ngành Công nghệ thông tin (Khoa học máy tính, Tin học, Hệ thống thông tin quản lý) và hàng ngàn cử nhân Tin học hệ không chính quy.','Khoa hiện đang đào tạo bậc học Đại Học (4 năm) với 5 chương trình: Khoa học máy tính, Công nghệ thông tin, Công nghệ thông tin tăng cường tiếng Nhật,  Hệ thống thông tin quản lý  thuộc chương trình hệ đào tạo đại trà và ngành Khoa học máy tính (chất lượng cao).','Khoa CNTT','https://file.hstatic.net/1000376681/file/1920x900_d8d881b358674809a162eb6b6069ff10.mp4','it.ou.edu.vn',1),(4,24,'  Khoa Luật được thành lập theo Quyết định 1328/QĐ-ĐHM ngày 09 tháng 10 năm 2015 của Hiệu trưởng Trường Đại học Mở Thành phố Hồ Chí Minh trên cơ sở tách ra từ Khoa Kinh tế và Luật (được thành lập vào năm 2009).\r\n\r\n          Khoa Luật đào tạo hai ngành: ngành Luật và ngành Luật Kinh tế với mục tiêu đào tạo cử nhân Luật và cử nhân Luật Kinh tế có trình độ vững vàng về kiến thức luật học và kiến thức bổ trợ khác để có thể thích ứng với tất cả các công việc liên quan đến pháp lý, đồng thời được chuyên sâu theo lựa chọn các chuyên ngành: chuyên ngành pháp luật thương mại, chuyên ngành pháp luật dân sự, chuyên ngành pháp luật hành chính. Bên cạnh đó, Khoa chú trọng rèn luyện các kỹ năng chuyên môn và các kỹ năng mềm, hình thành thái độ đúng đắn đối với nghề nghiệp, cộng đồng, xã hội. Những điều này được lồng ghép trong các buổi học tại giảng đường, sinh hoạt ngoại khóa, cuộc thi học thuật, hoạt động của các câu lạc bộ sinh viên, các buổi học tập thực tế tại Tòa án, công ty Luật v.v… Sinh viên sẽ được học tập và làm việc với đội ngũ giảng viên, luật sư, thẩm phán có trình độ chuyên môn cao, nhiệt tình. Điểm khác biệt nổi bật của chương trình đào tạo là tính ứng dụng thực tiễn cao được lồng ghép trong từng môn học và chương trình huấn luyện kỹ năng nghề nghiệp trong suốt quá trình học. ','Hiện này, Trường Đại học Mở Thành phố Hồ Chí Minh đào tạo ngành Luật ở hai bậc: Đại học và Sau Đại học. Trong đó, ở Bậc Đại học bao gồm đào tạo cử nhân ngành Luật và cử nhân ngành Luật Kinh tế. Ở Bậc Sau Đại học đào tạo cao học Luật Kinh tế.','Luật',NULL,'khoaluat.ou.edu.vn',1);
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faquestion`
--

DROP TABLE IF EXISTS `faquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faquestion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `answers` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faquestion`
--

LOCK TABLES `faquestion` WRITE;
/*!40000 ALTER TABLE `faquestion` DISABLE KEYS */;
INSERT INTO `faquestion` VALUES (1,'5 cơ sở','Trường có bao nhiêu cơ sở'),(2,'Võ Văn Tần, Quận 3, TP.HCM','Cơ sở chất lượng cao ở đâu?');
/*!40000 ALTER TABLE `faquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livestreams`
--

DROP TABLE IF EXISTS `livestreams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livestreams` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngay` datetime NOT NULL,
  `thoigian` datetime NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livestreams`
--

LOCK TABLES `livestreams` WRITE;
/*!40000 ALTER TABLE `livestreams` DISABLE KEYS */;
INSERT INTO `livestreams` VALUES (1,'2023-09-22 01:00:00','2023-09-21 00:00:00','LIVE tuyển sinh đại học','tuyển sinh 1112','test.com.vn',1),(2,'2023-09-22 01:00:00','2023-09-21 00:00:00','LIVE tuyển sinh đại học','tuyển sinh 111233','test.com.vn',1),(4,'2023-09-25 14:08:00','2023-09-25 14:08:00','hjabjda','Tuyển sinh đào tạo từ xa','test.com',1),(5,'2023-10-19 14:08:00','2023-09-15 14:08:00','asdasda 111','Tuyển sinh đào tạo từ xa 2222a','adada1',1);
/*!40000 ALTER TABLE `livestreams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaycapnhat` date NOT NULL,
  `ngaytao` date NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'2023-09-17','2023-09-12','Tuyển sinh thạc sĩ BMA','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694526899/jxiuiv9yzdei0sasgfgx.jpg','Tuyển sinh thạc sĩ','Tuyển sinh sau đại học',1),(2,'2023-09-20','2023-09-12','Tuyển sinh chính quy','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694528312/cpw65lxl6q4ompmecnq1.png','Tuyển sinh chính quy','Tuyển sinh đại học',1),(3,'2023-09-12','2023-09-12','test','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694528419/xyrsoztybft91ze2l9wa.png','test','Tuyển sinh hệ liên thông',1),(4,'2023-09-26','2023-09-17','test test test\r\n','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694958626/hx5jhou7vlsiv1vlgmwh.jpg','Tuyển sinh thạc sĩ 1','Tuyển sinh trực tuyến',1),(5,'2023-09-18','2023-09-17','testasasdsasadds','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694958671/grfpqbc2zgnjmnvuskhm.jpg','Tuyển sinh thạc sĩ 2','Tuyển sinh sau đại học',1),(6,'2023-09-20','2023-09-17','asdasdadssd','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694958691/jhf4kqnmkyza3s2axya8.jpg','Tuyển sinh thạc sĩ 3','Tuyển sinh đào tạo từ xa',1),(7,'2023-09-18','2023-09-17','asasddasadasd','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694958725/nvbpzfgthssz0iexysn1.jpg','Tuyển sinh thạc sĩ 4','Tuyển sinh sau đại học',1),(8,'2023-09-18','2023-09-17','asdasdadds','http://res.cloudinary.com/dtt23w3fy/image/upload/v1694958742/so4yafwzc5lwyp8lhzei.jpg','Tuyển sinh thạc sĩ 5','Tuyển sinh sau đại học',1),(9,'2023-10-09','2023-09-18','jaajshkasjdsljldkaldk  ddd222','http://res.cloudinary.com/dtt23w3fy/image/upload/v1695044027/wea0zasblesodowbym2e.jpg','Tuyển sinh thạc sĩ 6','Tuyển sinh sau đại học',1);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_live` int DEFAULT NULL,
  `id_user` int NOT NULL,
  `ngaytao` datetime NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK98ixuvtfp4gpjgtomldky1fxa` (`id_user`),
  KEY `FKqo2mq9jnvtx6go4yna3b4d6rh` (`id_live`),
  CONSTRAINT `FK98ixuvtfp4gpjgtomldky1fxa` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  CONSTRAINT `FKqo2mq9jnvtx6go4yna3b4d6rh` FOREIGN KEY (`id_live`) REFERENCES `livestreams` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,2,2,'2023-09-21 22:39:49','test'),(2,2,2,'2023-09-21 22:42:50','jajwdha\n'),(3,2,2,'2023-09-21 22:44:33','ajsnasjdnjkdkasd'),(4,2,2,'2023-09-21 22:45:24','test tttt\n'),(5,2,2,'2023-09-21 22:45:35','test tttt\n'),(6,1,2,'2023-09-21 22:46:26','asdsd'),(7,1,2,'2023-09-21 22:47:31','2222'),(8,1,2,'2023-09-21 23:12:02','hhhhhhh'),(9,1,2,'2023-09-21 23:12:39','hhhhhhh'),(10,1,2,'2023-09-21 23:18:28','hhh'),(11,1,2,'2023-09-21 23:21:19','jzshdasj'),(12,2,2,'2023-09-21 23:22:04','jzshdasj22'),(13,5,3,'2023-10-09 20:58:38','222'),(14,5,3,'2023-10-09 21:01:34','test\n'),(15,5,3,'2023-10-09 21:03:24','ok\n'),(16,5,3,'2023-10-09 21:04:34','haah'),(17,5,11,'2023-10-10 15:01:02','test');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reply` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_advisor` int NOT NULL,
  `id_comment` int NOT NULL,
  `ngayreply` datetime NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKa6j01t7gnsu8s6yx3pdn4vr9k` (`id_advisor`),
  KEY `FKm7mhdsmd5m25k0m54dy1e1s5p` (`id_comment`),
  CONSTRAINT `FKa6j01t7gnsu8s6yx3pdn4vr9k` FOREIGN KEY (`id_advisor`) REFERENCES `user` (`id`),
  CONSTRAINT `FKm7mhdsmd5m25k0m54dy1e1s5p` FOREIGN KEY (`id_comment`) REFERENCES `comments` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (26,3,22,'2023-09-27 12:41:06.900000','chào'),(27,5,22,'2023-09-27 12:41:34.652000','ok'),(28,5,22,'2023-09-27 12:44:47.539000','hahaah'),(29,5,22,'2023-09-27 12:45:04.454000','ok'),(30,5,22,'2023-09-27 12:45:17.757000','ok ok ok'),(31,2,23,'2023-10-03 14:27:58.502000','Chào bạn!'),(32,2,24,'2023-10-09 21:06:28.674000','Chào bạn!!\n'),(33,2,25,'2023-10-09 21:06:41.188000','ok!!!!1'),(34,1,26,'2023-10-12 15:14:50.558000','ok'),(35,1,26,'2023-10-12 15:18:39.294000','ok'),(36,4,28,'2023-10-14 21:47:56.505000','ok'),(37,4,28,'2023-10-14 21:48:03.200000','ok'),(38,1,25,'2024-01-20 10:00:22.953000','test'),(39,1,25,'2024-01-20 10:00:22.953000','test'),(40,1,25,'2024-01-20 10:00:35.197000','test');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ngaysinh` date DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,NULL,'https://res.cloudinary.com/dtt23w3fy/image/upload/v1694792169/dra7bpephm4mqfegxw5d.jpg','test@gmail.com',NULL,'Nguyen Van Test','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO',NULL,'ROLE_ADMIN','admin',1),(2,'2023-09-15','https://res.cloudinary.com/dtt23w3fy/image/upload/v1694792169/dra7bpephm4mqfegxw5d.jpg','at11110205@gmail.com','Nam','Nguyễn Nhân','$2a$10$.JSzMNijOkhcaaNzdcvugON4B3Pps4.8FnSWlOjDu4y/OHR5sjQs.','0123456789','ROLE_ADVISER','user',1),(3,'2002-07-16','https://res.cloudinary.com/dtt23w3fy/image/upload/v1695385004/jq3gwevq0p8q05kqzpyj.jpg','at11110205@gmail.com','','Phan Minh Quân','$2a$10$n4wptMBJOO/mnafETKa9K.9pjZIkQR3Oc8FL.mejAQDx7DoQ5NOzK','','ROLE_USER','user1',1),(4,'2002-04-29','https://res.cloudinary.com/dtt23w3fy/image/upload/v1695385287/u9dskctch5sup2kjruba.jpg','user2','','Nguyễn Hoàng Vũ','$2a$10$UW6Oz2hHQHjV1sKeeBZ9l.hRAuYgpL4aYhItsb9AUAHd0kSyXXPGm','','ROLE_USER','user2',1),(5,'2023-09-27','https://res.cloudinary.com/dtt23w3fy/image/upload/v1695386184/uzuzlinqhuo1vu5qttrp.jpg','test@gmail.com','','asdas asssdad','$2a$10$f7B0dZMYzTaoaR16e2M1SuYMjv5LLSzMKg7hatOKrxZ9DchacDYSm','','ROLE_USER','user3',0),(7,'2023-09-22','https://res.cloudinary.com/dtt23w3fy/image/upload/v1695392272/es0sdb0pzkidm1nnqzao.jpg','2051050314nhan@ou.edu.vn','Nam','Cao Tiến Hiếu','$2a$10$G09gVE5yCbJ789ibGfRBkuVnK.PBpu3.SoQ5PoiYFwaVvSbYp33um','11112231231','ROLE_ADVISER','user4',1),(11,'2023-10-18','https://res.cloudinary.com/dtt23w3fy/image/upload/v1696924749/kc20wbigacsx6cfrklia.jpg','2051050314nhan@ou.edu.vn','','jjj nhh','$2a$10$.7W4xtj1IqI0nxhk82qF..gHvfXpTaaNEBxRWF/MZJL/oV94vG9zy','','ROLE_USER','user99',1),(12,'2024-03-27','https://res.cloudinary.com/dtt23w3fy/image/upload/v1711889846/cirskgbrnuapbssxbo9m.png','asdasdasd@gmail.com','','Nguyen Van Test','$2a$10$jRs8jLIxhFmRA8XSKWwlpOzhCrje.05SX5rZZrZ/cSDVBZA.QsErC','','ROLE_USER','user8',1);
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

-- Dump completed on 2024-05-11 11:38:36
