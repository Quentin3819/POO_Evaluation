-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: Agenda_db
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.16.04.2

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
-- Table structure for table `agenda`
--

DROP TABLE IF EXISTS `agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  `color` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agenda`
--

LOCK TABLES `agenda` WRITE;
/*!40000 ALTER TABLE `agenda` DISABLE KEYS */;
INSERT INTO `agenda` VALUES (1,'Quentin','red'),(2,'Ruben','green'),(3,'Nicolas','bleu'),(4,'Gabriel','grey'),(5,'Charles','pink');
/*!40000 ALTER TABLE `agenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idAgenda` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '1',
  `titre` longtext COLLATE utf8_bin NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `dure` tinytext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`,`idAgenda`),
  KEY `fk_idEvent_idx` (`idAgenda`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'1','Rdv','2020-02-07 12:50:40','1h'),(2,'1','Rdv 2 ','2020-02-07 12:51:37','30min'),(3,'1','Rdv 3','2020-02-07 12:51:37','25min'),(4,'1','Rdv 4','2020-02-07 12:51:37','1h30'),(5,'2','Rdv 5','2020-02-07 12:51:37','50min'),(6,'2','Rdv 6','2020-02-07 12:51:37','15min'),(7,'2','Rdv 6','2020-02-07 13:36:08','1h20'),(10,'3','Rdv 7','2020-02-07 14:37:47','50min'),(11,'3','Rdv 8','2020-02-07 14:37:47','1h10'),(12,'4','Rdv 9','2020-02-07 14:37:47','90min'),(13,'4','Rdv 10','2020-02-07 14:37:47','10min'),(14,'5','Rdv11','2020-02-07 14:37:47','50min'),(15,'5','Rdv 12','2020-02-07 14:37:47','2h'),(16,'5','Rdv 13','2020-02-07 14:37:47','1h35'),(17,'4','Rdv 14','2020-02-07 14:37:47','55min');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_people`
--

DROP TABLE IF EXISTS `event_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_people` (
  `idEvent` int(11) NOT NULL AUTO_INCREMENT,
  `idPleople` int(11) NOT NULL,
  PRIMARY KEY (`idEvent`,`idPleople`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_people`
--

LOCK TABLES `event_people` WRITE;
/*!40000 ALTER TABLE `event_people` DISABLE KEYS */;
INSERT INTO `event_people` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `event_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,'Quentin'),(2,'Nicolas'),(3,'Ruben'),(4,'Gabriel'),(5,'Charles');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 14:53:24
