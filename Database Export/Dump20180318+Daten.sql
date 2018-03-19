-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: kassensystem
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `itemdeliveries`
--

DROP TABLE IF EXISTS `itemdeliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemdeliveries` (
  `itemdeliveryID` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`itemdeliveryID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemdeliveries`
--

LOCK TABLES `itemdeliveries` WRITE;
/*!40000 ALTER TABLE `itemdeliveries` DISABLE KEYS */;
INSERT INTO `itemdeliveries` VALUES (1,1,20),(2,2,120),(3,3,35),(4,2,50),(5,3,26),(6,4,50),(7,5,162),(8,6,57),(9,6,54),(10,7,109),(11,8,109),(12,9,58),(13,10,161),(14,11,58),(15,12,109),(16,13,109),(17,14,47),(18,15,109),(19,16,33),(20,17,10),(21,18,161),(22,19,161),(23,20,161),(24,20,9),(25,21,47),(26,22,47),(27,23,30),(29,16,20),(30,17,5),(31,17,10),(32,1,50),(33,1,-3),(34,24,30),(35,20,5),(36,20,5),(37,20,10);
/*!40000 ALTER TABLE `itemdeliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `retailprice` float DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Brot',5,1),(2,'Cola',2.5,1),(3,'Burger',4.5,0),(4,'Käseauflauf',7.6,0),(5,'Cola',2.5,0),(6,'VeggieBurger',6.5,0),(7,'VeggieBurger',6.5,0),(8,'VeggieBurger',6.5,0),(9,'Burger',4.5,0),(10,'Cola',2.5,0),(11,'Burger',4.5,1),(12,'VeggieBurger',6.5,0),(13,'Burger',6.5,0),(14,'Auflauf',7.6,0),(15,'V-Burger',6.5,0),(16,'Pizza',7.99,1),(17,'Fanta',2.5,1),(18,'Cola',2.5,0),(19,'Cola',2.5,0),(20,'ColaZero',2.5,1),(21,'Käse-Auflauf',7.6,0),(22,'Käse-Auflauf',7.99,1),(23,'Calzone',8.5,1),(24,'Pizza Veggie',9.8,1);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logindata`
--

DROP TABLE IF EXISTS `logindata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logindata` (
  `waiterID` int(11) NOT NULL,
  `loginname` char(20) NOT NULL,
  `passwordhash` char(200) NOT NULL,
  UNIQUE KEY `logindata_waiterID_uindex` (`waiterID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logindata`
--

LOCK TABLES `logindata` WRITE;
/*!40000 ALTER TABLE `logindata` DISABLE KEYS */;
INSERT INTO `logindata` VALUES (1,'hans.müller','3329'),(2,'marie.maier','3003444'),(4,'oliver.paulus','1216985755'),(7,'jan.jodel','99043158'),(8,'bernd.quer','-1217363389'),(9,'harald.brecht','3556498');
/*!40000 ALTER TABLE `logindata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordereditems`
--

DROP TABLE IF EXISTS `ordereditems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ordereditems` (
  `orderedItemID` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `itemPaid` tinyint(1) DEFAULT '0',
  `itemProduced` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`orderedItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordereditems`
--

LOCK TABLES `ordereditems` WRITE;
/*!40000 ALTER TABLE `ordereditems` DISABLE KEYS */;
INSERT INTO `ordereditems` VALUES (1,4,1,1,1),(2,4,5,1,1),(3,6,6,1,1),(4,6,1,1,1),(5,10,16,1,1),(6,10,11,1,1),(9,10,20,1,1),(12,11,11,1,0),(13,38,1,1,0),(14,38,1,1,0),(15,38,1,1,0),(16,38,1,1,0),(17,38,1,1,0),(18,38,1,1,0),(19,38,2,1,0),(20,38,2,1,0),(21,38,2,1,0),(22,38,11,1,0),(23,38,16,1,0),(24,38,17,1,0),(34,10,16,1,0),(35,10,1,1,0),(36,10,2,1,0),(37,10,11,1,0),(38,10,16,1,0),(39,10,1,1,0),(40,10,1,1,0),(41,10,1,1,0),(42,10,1,1,0),(43,48,1,1,1),(44,48,2,1,1),(45,48,11,1,1),(46,48,16,1,1),(47,48,17,1,1),(48,48,17,1,1),(49,48,17,1,1),(50,48,20,1,1),(51,48,20,1,1),(52,48,20,1,1),(53,48,20,1,1),(54,48,20,1,1),(55,48,20,1,1),(56,48,20,1,1),(57,48,20,1,1),(58,48,20,1,1),(59,48,20,1,1),(60,48,22,1,1),(87,65,1,1,0),(88,65,1,1,0),(89,65,1,1,0),(90,65,1,1,0),(91,73,1,1,0),(92,73,1,1,0),(93,73,2,1,0),(94,73,2,1,0),(95,74,1,0,0),(96,74,2,0,0),(97,74,1,0,0),(98,75,1,1,0),(99,75,1,1,0),(100,76,1,1,0),(101,76,1,1,0),(102,77,1,1,0),(103,77,2,1,0),(104,78,23,0,0),(105,78,22,0,0),(106,78,22,0,0),(107,78,22,0,0),(108,78,23,0,0),(109,78,23,0,0),(110,78,20,0,0),(111,78,20,0,0),(112,78,20,0,0),(113,78,17,0,0);
/*!40000 ALTER TABLE `ordereditems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `date` datetime DEFAULT NULL,
  `tableID` int(11) NOT NULL,
  `waiterID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderID`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4,'2017-12-04 17:38:19',1,1),(6,'2017-12-03 19:51:12',1,2),(10,'2017-12-14 13:07:19',2,3),(11,'2017-12-14 13:35:39',4,4),(38,'2018-03-09 11:04:36',1,1),(48,'2018-03-15 11:41:26',5,2),(65,'2018-03-15 12:36:08',5,4),(72,'2018-03-15 17:33:57',5,4),(73,'2018-03-15 17:35:50',5,1),(74,'2018-03-15 17:38:08',5,1),(75,'2018-03-15 17:40:17',2,2),(76,'2018-03-15 17:42:06',2,2),(77,'2018-03-15 17:44:50',2,2),(78,'2018-03-15 18:04:12',2,3);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tables`
--

DROP TABLE IF EXISTS `tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tables` (
  `tableID` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(30) NOT NULL,
  `seats` int(11) DEFAULT '0',
  `available` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tableID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tables`
--

LOCK TABLES `tables` WRITE;
/*!40000 ALTER TABLE `tables` DISABLE KEYS */;
INSERT INTO `tables` VALUES (1,'A1',5,1),(2,'A2',4,1),(3,'A3',10,0),(4,'B1',2,1),(5,'B2',2,1),(6,'B3',4,1),(7,'B66',6,1),(8,'B36',8,1),(9,'B33',8,1);
/*!40000 ALTER TABLE `tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `waiters`
--

DROP TABLE IF EXISTS `waiters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `waiters` (
  `waiterID` int(11) NOT NULL AUTO_INCREMENT,
  `lastname` char(20) DEFAULT NULL,
  `prename` char(20) DEFAULT NULL,
  `employed` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`waiterID`),
  UNIQUE KEY `waiters_waiterID_uindex` (`waiterID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `waiters`
--

LOCK TABLES `waiters` WRITE;
/*!40000 ALTER TABLE `waiters` DISABLE KEYS */;
INSERT INTO `waiters` VALUES (1,'Müller','Hans',1),(2,'Maier','Max',1),(3,'Hohenhaus','Leila',1),(4,'Paulus','Oliver',1),(7,'Jodel','Jan',1),(8,'Quer','Bernd',1),(9,'Brecht','Harald',1);
/*!40000 ALTER TABLE `waiters` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-18  1:57:04
