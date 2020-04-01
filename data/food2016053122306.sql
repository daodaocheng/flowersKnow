-- MySQL dump 10.13  Distrib 5.5.47, for Win32 (x86)
--
-- Host: localhost    Database: food
-- ------------------------------------------------------
-- Server version	5.5.47

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) NOT NULL,
  `cintro` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'甜品','让人又爱又恨的美味'),(2,'面包、蛋糕','营养早餐'),(3,'私房小炒','意想不到的美味！'),(4,'火锅大全','火锅，古称“古董羹”，因食物投入沸水时发出的“咕咚”声而得名，它是中国独创的美食。');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `fdescript` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'测试教程','测试教程测试教程测试教程测试教程'),(2,'æµè¯','<img src=\"/food/attached/image/20160531/20160531204631_682.jpg\" alt=\"\" width=\"355\" height=\"222\" title=\"\" align=\"left\" /><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span><span style=\"font-size:24px;\">æµè¯</span>'),(3,'æµè¯','dddddddddddddddddddd'),(4,'测试','VVVV'),(5,'测试','æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯æµè¯'),(6,'??','测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试'),(7,'测试','测试测试测试测试测试测试测试测试<img src=\"/food/attached/image/20160531/20160531210831_837.jpg\" alt=\"\" />测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `userpassword` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'992663599@qq.com','123456','admin','123'),(3,'test@qq.com','123456','user','110'),(4,'test@qq.com','123456','user','110'),(5,'test@qq.com','123456','user','110'),(6,'test@qq.com','123456','user','110'),(7,'test@qq.com','123456','user','110'),(8,'test@qq.com','123456','user','110'),(9,'test@qq.com','123456','user','110'),(10,'test@qq.com','123456','user','110'),(11,'test@qq.com','123456','user','110'),(12,'test@qq.com','123456','user','110'),(14,'test@qq.com','123456','user','110'),(15,'test@qq.com','123456','user','110'),(16,'test@qq.com','123456','user','110'),(17,'test@qq.com','123456','user','110'),(18,'test@qq.com','123456','user','110'),(19,'test@qq.com','123456','user','110'),(20,'test@qq.com','123456','user','110'),(21,'test@qq.com','123456','user','110'),(22,'test@qq.com','123456','user','110'),(23,'test@qq.com','123456','user','110'),(24,'test@qq.com','123456','user','110'),(25,'test@qq.com','123456','user','110'),(26,'test@qq.com','123456','user','110'),(27,'test@qq.com','123456','user','110'),(28,'test@qq.com','123456','user','110'),(29,'test@qq.com','123456','user','110'),(31,'test@qq.com','123456','user','110'),(32,'test@qq.com','123456','user','110'),(33,'test@qq.com','123456','user','110'),(34,'test@qq.com','123456','user','110'),(35,'test@qq.com','123456','user','110'),(36,'test@qq.com','123456','user','110'),(37,'test@qq.com','123456','user','110'),(38,'test@qq.com','123456','user','110'),(39,'test@qq.com','123456','user','110'),(40,'test@qq.com','123456','user','110'),(41,'test@qq.com','123456','user','110'),(42,'test@qq.com','123456','user','110'),(43,'test@qq.com','123456','user','110');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-05-31 22:30:07
