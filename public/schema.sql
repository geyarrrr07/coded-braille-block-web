-- MySQL dump 10.13  Distrib 5.7.42, for Linux (x86_64)---- 
Host: localhost    Database: tenji-- -------------------------------------------------------- Server version
5.7.42
0ubuntu0.18.04.1/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CH
ARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RES
ULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTI
ON */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHE
CKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, 
FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VA
LUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;---- Table structure for table `authorities`--DROP TABLE IF 
EXISTS `authorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authorities` (
`authority_id` int(11) NOT NULL,
`authority_name` varchar(16) NOT NULL,
PRIMARY KEY (`authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `blockdata`--DROP TABLE IF E
XISTS `blockdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockdata` (
`code` int(11) NOT NULL,
`category` varchar(256) DEFAULT NULL,
`latitude` double NOT NULL,
`longitude` double NOT NULL,
`install` int(11) NOT NULL,
`buildingfloor` int(11) DEFAULT NULL,
`name` varchar(256) DEFAULT NULL,
PRIMARY KEY (`code`),
KEY `fk_blockcategory` (`category`),
CONSTRAINT `blockdata_ibfk_1` FOREIGN KEY (`category`) RE
FERENCES `preset_blockcategory` (`category`) ON UPDATE CASC
ADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `blockmessage`--DROP TABLE I
F EXISTS `blockmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockmessage` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`code` int(11) NOT NULL,
`angle` int(11) NOT NULL,
`messagecategory` varchar(256) NOT NULL,
`message` varchar(1024) DEFAULT NULL,
`reading` varchar(1024) DEFAULT NULL,
`wav` varchar(256) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `fk_code` (`code`),
KEY `fk_messagecategory` (`messagecategory`),
CONSTRAINT `blockmessage_ibfk_1` FOREIGN KEY (`code`) REF
ERENCES `blockdata` (`code`) ON DELETE CASCADE ON UPDATE CA
SCADE,
CONSTRAINT `blockmessage_ibfk_2` FOREIGN KEY (`messagecat
egory`) REFERENCES `preset_messagecategory` (`messagecatego
ry`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5409 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `blockmessage_en`--DROP TABL
E IF EXISTS `blockmessage_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockmessage_en` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`code` int(11) NOT NULL,
`angle` int(11) NOT NULL,
`messagecategory` varchar(256) NOT NULL,
`message` varchar(1024) DEFAULT NULL,
`reading` varchar(1024) DEFAULT NULL,
`wav` varchar(256) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `fk_code` (`code`),
KEY `fk_messagecategory` (`messagecategory`),
CONSTRAINT `blockmessage_en_ibfk_1` FOREIGN KEY (`code`) 
REFERENCES `blockdata` (`code`) ON DELETE CASCADE ON UPDATE 
CASCADE,
CONSTRAINT `blockmessage_en_ibfk_2` FOREIGN KEY (`message
category`) REFERENCES `preset_messagecategory` (`messagecat
egory`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4902 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `blockmessage_hi`--DROP TABL
E IF EXISTS `blockmessage_hi`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockmessage_hi` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`code` int(11) NOT NULL,
`angle` int(11) NOT NULL,
`messagecategory` varchar(256) NOT NULL,
`message` varchar(1024) DEFAULT NULL,
`reading` varchar(1024) DEFAULT NULL,
`wav` varchar(256) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `fk_code` (`code`),
KEY `fk_messagecategory` (`messagecategory`)
) ENGINE=InnoDB AUTO_INCREMENT=2023 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `blockmessage_ko`--DROP TABL
E IF EXISTS `blockmessage_ko`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockmessage_ko` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`code` int(11) NOT NULL,
`angle` int(11) NOT NULL,
`messagecategory` varchar(256) NOT NULL,
`message` varchar(1024) DEFAULT NULL,
`reading` varchar(1024) DEFAULT NULL,
`wav` varchar(256) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `fk_code` (`code`),
KEY `fk_messagecategory` (`messagecategory`)
) ENGINE=InnoDB AUTO_INCREMENT=4498 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `blockmessage_zh`--DROP TABL
E IF EXISTS `blockmessage_zh`;
/*!40101 SET @saved_cs_client     = @@character_set_client
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blockmessage_zh` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`code` int(11) NOT NULL,
`angle` int(11) NOT NULL,
`messagecategory` varchar(256) NOT NULL,
`message` varchar(1024) DEFAULT NULL,
`reading` varchar(1024) DEFAULT NULL,
`wav` varchar(256) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `fk_code` (`code`),
KEY `fk_messagecategory` (`messagecategory`)
) ENGINE=InnoDB AUTO_INCREMENT=3552 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `mesT`--DROP TABLE IF EXISTS 
`mesT`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mesT` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`code` int(11) NOT NULL,
`angle` int(11) NOT NULL,
`latitude` double DEFAULT NULL,
`longitude` double DEFAULT NULL,
`name` varchar(256) DEFAULT NULL,
`message` varchar(512) DEFAULT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `placedata`--DROP TABLE IF E
XISTS `placedata`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placedata` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`category` varchar(256) DEFAULT NULL,
`latitude` double NOT NULL,
`longitude` double NOT NULL,
`address` varchar(1024) DEFAULT NULL,
`name` varchar(256) DEFAULT NULL,
`summary` varchar(1024) DEFAULT NULL,
PRIMARY KEY (`id`),
KEY `fk_placecategory` (`category`),
CONSTRAINT `placedata_ibfk_1` FOREIGN KEY (`category`) RE
FERENCES `preset_blockcategory` (`category`) ON UPDATE CASC
ADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `preset_blockcategory`--DROP 
TABLE IF EXISTS `preset_blockcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preset_blockcategory` (
`category` varchar(256) NOT NULL,
`category_jp` varchar(256) DEFAULT NULL,
PRIMARY KEY (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `preset_messagecategory`--DR
OP TABLE IF EXISTS `preset_messagecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `preset_messagecategory` (
`messagecategory` varchar(256) NOT NULL,
`messagecategory_jp` varchar(256) DEFAULT NULL,
PRIMARY KEY (`messagecategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;---- Table structure for table `users`--DROP TABLE IF EXIST
S `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client 
*/;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`email` varchar(1024) NOT NULL,
`code` int(11) NOT NULL DEFAULT '1',
`authority_id` int(11) NOT NULL DEFAULT '2',
PRIMARY KEY (`id`),
KEY `fk_code` (`code`),
CONSTRAINT `users_ibfk_1` FOREIGN KEY (`code`) REFERENCES 
`blockdata` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT 
*/;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESUL
TS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION 
*/;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;-- Dump completed on 2024-03-17 13:53:1
