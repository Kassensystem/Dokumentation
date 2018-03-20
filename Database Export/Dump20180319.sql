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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemdeliveries`
--

LOCK TABLES `itemdeliveries` WRITE;
/*!40000 ALTER TABLE `itemdeliveries` DISABLE KEYS */;
INSERT INTO `itemdeliveries` VALUES (1,1,20),(2,2,120),(3,3,35),(4,2,50),(5,3,26),(6,4,50),(7,5,162),(8,6,57),(9,6,54),(10,7,109),(11,8,109),(12,9,58),(13,10,161),(14,11,58),(15,12,109),(16,13,109),(17,14,47),(18,15,109),(19,16,33),(20,17,10),(21,18,161),(22,19,161),(23,20,161),(24,20,9),(25,21,47),(26,22,47),(27,23,30),(29,16,20),(30,17,5),(31,17,10),(32,1,50),(33,1,-3),(34,24,30),(35,20,5),(36,20,5),(37,20,10),(38,25,50),(39,17,-24);
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Brot',5,1),(2,'Cola',2.5,1),(3,'Burger',4.5,0),(4,'Käseauflauf',7.6,0),(5,'Cola',2.5,0),(6,'VeggieBurger',6.5,0),(7,'VeggieBurger',6.5,0),(8,'VeggieBurger',6.5,0),(9,'Burger',4.5,0),(10,'Cola',2.5,0),(11,'Burger',4.5,1),(12,'VeggieBurger',6.5,0),(13,'Burger',6.5,0),(14,'Auflauf',7.6,0),(15,'V-Burger',6.5,0),(16,'Pizza',7.99,1),(17,'Fanta',2.5,1),(18,'Cola',2.5,0),(19,'Cola',2.5,0),(20,'ColaZero',2.5,1),(21,'Käse-Auflauf',7.6,0),(22,'Käse-Auflauf',7.99,1),(23,'Calzone',8.5,1),(24,'Pizza Veggie',9.8,1),(25,'Nudelsuppe mit Rindfleisch',11,1);
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
INSERT INTO `logindata` VALUES (2,'marie.maier','3003444'),(4,'oliver.paulus','3556498'),(7,'jan.jodel','99043158'),(8,'bernd.quer','3556498'),(9,'harald.brecht','3556498');
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
  `comment` char(30) DEFAULT NULL,
  PRIMARY KEY (`orderedItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=546 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordereditems`
--

LOCK TABLES `ordereditems` WRITE;
/*!40000 ALTER TABLE `ordereditems` DISABLE KEYS */;
INSERT INTO `ordereditems` VALUES (3,6,6,1,1,NULL),(4,6,1,1,1,NULL),(5,10,16,1,1,NULL),(6,10,11,1,1,NULL),(9,10,20,1,1,NULL),(12,11,11,1,1,NULL),(13,38,1,1,1,NULL),(14,38,1,1,1,NULL),(15,38,1,1,1,NULL),(16,38,1,1,1,NULL),(17,38,1,1,1,NULL),(18,38,1,1,1,NULL),(19,38,2,1,1,NULL),(20,38,2,1,1,NULL),(21,38,2,1,1,NULL),(22,38,11,1,1,NULL),(23,38,16,1,1,NULL),(24,38,17,1,1,NULL),(34,10,16,1,1,NULL),(35,10,1,1,1,NULL),(36,10,2,1,1,NULL),(37,10,11,1,1,NULL),(38,10,16,1,1,NULL),(39,10,1,1,1,NULL),(40,10,1,1,1,NULL),(41,10,1,1,1,NULL),(42,10,1,1,1,NULL),(43,48,1,1,1,NULL),(44,48,2,1,1,NULL),(45,48,11,1,1,NULL),(46,48,16,1,1,NULL),(47,48,17,1,1,NULL),(48,48,17,1,1,NULL),(49,48,17,1,1,NULL),(50,48,20,1,1,NULL),(51,48,20,1,1,NULL),(52,48,20,1,1,NULL),(53,48,20,1,1,NULL),(54,48,20,1,1,NULL),(55,48,20,1,1,NULL),(56,48,20,1,1,NULL),(57,48,20,1,1,NULL),(58,48,20,1,1,NULL),(59,48,20,1,1,NULL),(60,48,22,1,1,NULL),(87,65,1,1,1,NULL),(88,65,1,1,1,NULL),(89,65,1,1,1,NULL),(90,65,1,1,1,NULL),(91,73,1,1,1,NULL),(92,73,1,1,1,NULL),(93,73,2,1,1,NULL),(94,73,2,1,1,NULL),(95,74,1,1,1,NULL),(96,74,2,1,1,NULL),(97,74,1,1,1,NULL),(98,75,1,1,1,NULL),(99,75,1,1,1,NULL),(100,76,1,1,1,NULL),(101,76,1,1,1,NULL),(102,77,1,1,1,NULL),(103,77,2,1,1,NULL),(104,78,23,1,1,NULL),(105,78,22,1,1,NULL),(106,78,22,1,1,NULL),(107,78,22,1,1,NULL),(108,78,23,1,1,NULL),(109,78,23,1,1,NULL),(110,78,20,1,1,NULL),(111,78,20,1,1,NULL),(112,78,20,1,1,NULL),(113,78,17,1,1,NULL),(114,79,24,1,1,NULL),(115,79,24,1,1,NULL),(116,79,24,1,1,NULL),(117,79,16,1,1,NULL),(118,79,16,1,1,NULL),(119,79,16,1,1,NULL),(120,79,17,1,1,NULL),(121,79,17,1,1,NULL),(122,79,17,1,1,NULL),(123,79,20,1,1,NULL),(125,85,20,1,1,NULL),(126,85,20,1,1,NULL),(127,85,20,1,1,NULL),(128,85,20,1,1,NULL),(129,85,17,1,1,NULL),(130,85,17,1,1,NULL),(131,85,16,1,1,NULL),(132,85,11,1,1,NULL),(133,85,11,1,1,NULL),(134,85,2,1,1,NULL),(135,85,2,1,1,NULL),(136,85,20,1,1,NULL),(137,85,23,1,1,NULL),(141,93,16,1,1,NULL),(142,93,17,1,1,NULL),(143,93,20,1,1,NULL),(144,96,1,1,1,NULL),(145,96,2,1,1,NULL),(146,96,11,1,1,NULL),(147,96,16,1,1,NULL),(148,96,17,1,1,NULL),(149,96,20,1,1,NULL),(150,99,23,1,1,NULL),(151,99,23,1,1,NULL),(152,99,23,1,1,NULL),(153,100,1,1,1,NULL),(154,100,2,1,1,NULL),(155,100,16,1,1,NULL),(156,100,17,1,1,NULL),(157,100,20,1,1,NULL),(158,100,22,1,1,NULL),(159,100,23,1,1,NULL),(160,100,24,1,1,NULL),(415,103,22,0,1,NULL),(416,103,20,0,1,NULL),(417,103,20,0,1,NULL),(418,103,20,0,1,NULL),(419,103,20,0,1,NULL),(420,110,16,1,1,NULL),(421,110,16,1,1,NULL),(422,110,16,1,1,NULL),(423,109,1,1,1,NULL),(424,109,2,1,1,NULL),(425,109,2,1,1,NULL),(426,110,1,1,1,NULL),(427,113,1,0,0,NULL),(428,113,2,0,0,NULL),(429,113,11,0,0,NULL),(430,113,16,0,0,NULL),(431,113,16,0,0,NULL),(432,113,16,0,0,NULL),(433,113,16,0,0,NULL),(434,113,25,0,0,NULL),(435,113,25,0,0,NULL),(436,113,25,0,0,NULL),(437,113,25,0,0,NULL),(438,113,25,0,0,NULL),(439,113,25,0,0,NULL),(440,113,25,0,0,NULL),(441,113,25,0,0,NULL),(442,113,25,0,0,NULL),(443,113,25,0,0,NULL),(444,113,25,0,0,NULL),(445,114,25,1,1,NULL),(446,114,17,1,1,NULL),(447,114,17,1,1,NULL),(448,117,1,1,1,NULL),(449,118,1,0,1,NULL),(450,118,2,0,1,NULL),(451,118,11,0,1,NULL),(452,121,11,1,1,NULL),(453,121,23,1,1,NULL),(454,121,22,1,1,NULL),(455,121,17,1,1,NULL),(456,122,16,1,1,NULL),(457,122,16,1,1,NULL),(458,122,16,1,1,NULL),(459,123,16,1,1,NULL),(460,123,16,1,1,NULL),(461,123,20,1,1,NULL),(462,123,22,1,1,NULL),(463,123,23,1,1,NULL),(464,123,23,1,1,NULL),(465,123,25,1,1,NULL),(466,123,24,1,1,NULL),(467,123,23,1,1,NULL),(468,123,22,1,1,NULL),(469,123,16,1,1,NULL),(470,123,11,1,1,NULL),(471,123,11,1,1,NULL),(472,123,11,1,1,NULL),(473,123,11,1,1,NULL),(474,123,11,1,1,NULL),(475,123,16,1,1,NULL),(476,123,17,1,0,NULL),(477,123,1,1,1,NULL),(478,114,1,1,1,NULL),(479,114,17,1,1,NULL),(480,138,2,0,0,NULL),(481,138,11,0,0,NULL),(482,138,16,0,0,NULL),(483,138,11,0,0,NULL),(484,139,1,1,1,NULL),(485,139,2,1,1,NULL),(486,139,11,1,1,NULL),(487,139,11,1,1,NULL),(488,139,16,1,1,NULL),(489,139,16,1,1,NULL),(490,139,16,1,1,NULL),(491,140,1,0,1,NULL),(492,139,22,1,1,NULL),(493,139,22,1,1,NULL),(510,145,1,1,1,NULL),(511,145,2,1,1,NULL),(512,145,11,1,1,NULL),(524,147,1,0,1,NULL),(525,147,2,0,1,NULL),(526,147,11,0,1,NULL),(527,147,25,0,1,NULL),(528,147,25,0,1,NULL),(529,147,25,0,1,NULL),(533,6,1,1,1,NULL),(534,6,1,1,1,NULL),(535,6,1,1,1,NULL),(536,6,1,1,1,NULL),(537,6,2,1,1,NULL),(538,6,11,1,1,NULL),(539,148,1,1,1,NULL),(540,148,2,1,1,NULL),(541,148,11,1,1,NULL),(542,148,16,1,1,'mit Pepperoni'),(543,148,16,1,1,'mit Schinken'),(544,149,1,1,1,'asgj'),(545,150,1,0,1,'daaf');
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
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (6,'2017-12-03 19:51:12',1,2),(10,'2017-12-14 13:07:19',2,3),(11,'2017-12-14 13:35:39',4,4),(38,'2018-03-09 11:04:36',1,1),(48,'2018-03-15 11:41:26',5,2),(65,'2018-03-15 12:36:08',5,4),(73,'2018-03-15 17:35:50',5,1),(74,'2018-03-15 17:38:08',5,1),(75,'2018-03-15 17:40:17',2,2),(76,'2018-03-15 17:42:06',2,2),(77,'2018-03-15 17:44:50',2,2),(78,'2018-03-15 18:04:12',2,3),(79,'2018-03-18 16:39:47',2,1),(85,'2018-03-18 16:50:58',2,1),(93,'2018-03-18 17:00:57',2,1),(96,'2018-03-18 17:01:38',7,1),(99,'2018-03-18 17:11:40',5,1),(100,'2018-03-18 17:15:14',1,1),(103,'2018-03-18 17:19:44',7,1),(109,'2018-03-19 12:50:45',1,4),(110,'2018-03-19 12:51:14',1,4),(114,'2018-03-19 12:59:57',1,4),(117,'2018-03-19 13:05:36',4,4),(118,'2018-03-19 13:07:44',4,4),(119,'2018-03-19 13:08:12',5,4),(120,'2018-03-19 13:08:20',5,4),(121,'2018-03-19 13:08:40',2,4),(122,'2018-03-19 13:12:54',2,4),(123,'2018-03-19 13:13:34',2,4),(139,'2018-03-19 13:40:42',1,4),(140,'2018-03-19 13:44:19',2,4),(145,'2018-03-19 13:57:16',1,4),(147,'2018-03-19 14:08:17',6,4),(148,'2018-03-19 14:47:55',1,4),(149,'2018-03-19 14:52:20',1,4),(150,'2018-03-19 14:53:43',1,4);
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

-- Dump completed on 2018-03-19 15:09:49
