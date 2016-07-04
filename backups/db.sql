-- MySQL dump 10.13  Distrib 5.6.27, for osx10.10 (x86_64)
--
-- Host: localhost    Database: pm
-- ------------------------------------------------------
-- Server version	5.6.27

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
-- Dumping data for table `propel_migration`
--

LOCK TABLES `propel_migration` WRITE;
/*!40000 ALTER TABLE `propel_migration` DISABLE KEYS */;
INSERT INTO `propel_migration` VALUES (1467613790),(1467613966),(1467614130);
/*!40000 ALTER TABLE `propel_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `task`
--

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;
INSERT INTO `task` VALUES ('dark_green','Shop blocks','Niko',8,NULL,1.00,1),('dark_green','Promo blocks','Niko',2,NULL,1.00,3),('dark_green','Success pages','Niko',3,NULL,3.00,4),('yellow','Payments: Endpoints','Niko',12,NULL,2.25,5),('dark_green','Address completion','Niko',12,NULL,4.00,6),('dark_green','Account: Dashboard','Niko',2,NULL,5.00,8),('dark_green','Account: Orders','Niko',2,NULL,5.00,9),('dark_green','Account: Order','Niko',3,NULL,5.00,10),('dark_green','Payments: Integrations','Arneau',30,NULL,2.00,11),('yellow','Payments: Database design','Niko',12,NULL,2.00,12),('yellow','Subscriptions: Database design','Niko',1,NULL,6.00,13),('dark_green','Subscriptions: Popup','Niko',4,NULL,6.00,14),('dark_green','Contact Us: Popup','Niko',2,NULL,7.00,15),('dark_green','Contact Us: Integration','Niko',2,NULL,7.00,16),('dark_green','Subscriptions: Integration','Niko',2,NULL,6.00,17),('yellow','Testimonials: Database design','Niko',1,NULL,8.00,18),('dark_green','Testimonials: Integration','Niko',1,NULL,8.00,19),('dark_green','Products: Variations','Niko',2,NULL,9.00,20),('dark_green','Products: Sold out','Niko',2,NULL,9.00,21),('dark_green','Products: Previous deal','Niko',2,NULL,9.00,22),('dark_green','Checkout: Recommend integration','Niko',2,NULL,10.00,23),('dark_green','Payments: Pay page','Niko',2,NULL,11.00,24),('dark_green','Payments: Retry page','Niko',2,NULL,11.00,25),('dark_green','Account: Details page forms','Niko',1,NULL,12.00,26),('yellow','VAT: Database design','Niko',12,NULL,13.00,27),('dark_green','VAT: Integration','Niko',6,NULL,13.00,28),('red','Mailing: Generation','Niko',24,NULL,14.00,29),('red','Mailing: Queuing','Niko',6,NULL,14.00,30);
/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-04  9:43:37
