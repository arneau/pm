# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.50)
# Database: pm
# Generation Time: 2016-07-20 13:43:30 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `task`;

CREATE TABLE `task` (
  `colour` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `developer` varchar(255) NOT NULL,
  `hours_estimated` decimal(5,2) NOT NULL,
  `hours_spent` decimal(5,2) DEFAULT NULL,
  `priority` decimal(5,2) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `task` WRITE;
/*!40000 ALTER TABLE `task` DISABLE KEYS */;

INSERT INTO `task` (`colour`, `description`, `developer`, `hours_estimated`, `hours_spent`, `priority`, `id`)
VALUES
	('dark_green','Shop blocks','Niko',6.00,6.00,1.00,1),
	('dark_green','Promo blocks','Niko',2.00,3.00,1.20,3),
	('dark_green','Success pages','Niko',3.00,NULL,3.00,4),
	('red','Michal PC Setup','Niko',0.00,3.00,2.20,5),
	('dark_green','Checkout: Address completion','Niko',12.00,NULL,4.00,6),
	('dark_green','Account: Dashboard','Niko',2.00,NULL,5.00,8),
	('dark_green','Account: Orders','Niko',2.00,NULL,5.00,9),
	('dark_green','Account: Order','Niko',3.00,NULL,5.00,10),
	('yellow','Payments: Integrations','Arneau',30.00,NULL,7.00,11),
	('yellow','Payments: Database design','Niko',6.00,3.00,2.00,12),
	('yellow','Subscriptions: Database design','Niko',1.00,NULL,6.00,13),
	('dark_green','Subscriptions: Popup','Niko',4.00,NULL,6.00,14),
	('dark_green','Contact Us: Popup','Niko',2.00,NULL,7.00,15),
	('dark_green','Contact Us: Integration','Niko',2.00,NULL,7.00,16),
	('dark_green','Subscriptions: Integration','Niko',2.00,NULL,6.00,17),
	('yellow','Testimonials: Database design','Niko',1.00,NULL,8.00,18),
	('dark_green','Testimonials: Integration','Niko',1.00,NULL,8.00,19),
	('dark_green','Products: Variations','Niko',2.00,NULL,9.00,20),
	('dark_green','Products: Sold out','Niko',2.00,NULL,9.00,21),
	('dark_green','Products: Previous deal','Niko',2.00,NULL,9.00,22),
	('dark_green','Checkout: Recommend integration','Niko',2.00,NULL,10.00,23),
	('dark_green','Payments: Pay page','Niko',2.00,NULL,11.00,24),
	('dark_green','Payments: Retry page','Niko',2.00,NULL,11.00,25),
	('dark_green','Account: Details page forms','Niko',1.00,NULL,12.00,26),
	('yellow','VAT: Database design','Niko',12.00,NULL,13.00,27),
	('dark_green','VAT: Integration','Niko',6.00,NULL,13.00,28),
	('light_purple','Mailing: Generation','Niko',24.00,NULL,14.00,29),
	('light_purple','Mailing: Queuing','Niko',6.00,NULL,14.00,30),
	('yellow','Vouchers: Database design','Niko',6.00,NULL,2.50,32),
	('dark_green','Blog: Posts page','Niko',4.00,NULL,15.00,35),
	('dark_green','Blog: Post page','Niko',1.00,NULL,15.00,36),
	('dark_green','Home: Blog integration','Niko',1.00,NULL,15.00,37),
	('dark_green','Products: Gallery styling','Niko',3.00,NULL,16.00,38),
	('dark_green','Products: Gift popup','Niko',1.00,NULL,16.00,39),
	('dark_green','Checkout: Customer service integration','Niko',1.00,NULL,17.00,40),
	('dark_green','CMS: Markdown integration','Niko',12.00,NULL,17.00,41),
	('yellow','Shipping: Database design','Niko',6.00,NULL,4.00,42),
	('yellow','Shipping: Endpoints','Niko',3.00,NULL,18.00,43),
	('dark_blue','Suppliers: Table page','Julien',2.00,NULL,19.00,44),
	('dark_blue','Suppliers: Edit page','Niko',2.00,NULL,19.50,45),
	('dark_blue','Supplier orders: Table page','Julien',2.00,NULL,20.00,47),
	('dark_blue','Supplier orders: Edit page','Niko',6.00,NULL,20.50,48),
	('dark_blue','Supplier orders: Generate page','Niko',12.00,NULL,20.75,49),
	('dark_blue','Inventory: Various page','Niko',30.00,NULL,21.00,50),
	('dark_blue','Inventory: Various page','Arneau',30.00,NULL,21.00,51),
	('dark_blue','Dispatching: Picking page','Niko',30.00,NULL,22.00,52),
	('dark_blue','Dispatching: Packing page','Niko',30.00,NULL,22.50,53),
	('dark_blue','Dispatching: Reports pages','Niko',12.00,NULL,22.75,54),
	('dark_blue','Reporting: Various pages','Niko',30.00,NULL,23.00,55),
	('dark_blue','Marketing: Various pages','Niko',30.00,NULL,24.00,56),
	('dark_green','Checkout: Pargo points','Arneau',1.00,NULL,3.00,58),
	('dark_green','Previous deals: Headings','Arneau',1.00,NULL,4.00,60),
	('dark_green','Blog: Posts page','Arneau',1.00,NULL,5.00,61),
	('dark_green','Blog: Post page','Arneau',1.00,NULL,5.00,62),
	('dark_green','Shop blocks','Arneau',1.00,NULL,3.00,63),
	('dark_green','Promo blocks','Arneau',1.00,NULL,3.00,64),
	('dark_green','CMS: Various pages','Arneau',4.00,NULL,6.00,66),
	('red','PM development, tasks, discussion','Arneau',0.00,4.00,1.10,67),
	('dark_green','Dispatching: Picking page','Arneau',2.00,NULL,1.95,68),
	('dark_green','Success pages','Arneau',2.00,NULL,8.00,69),
	('dark_green','Account: Dashboard','Arneau',3.00,NULL,9.00,70),
	('dark_green','Account: Orders','Arneau',1.00,NULL,9.00,71),
	('dark_green','Account: Order','Arneau',2.00,NULL,9.00,72),
	('dark_green','Home: Products blocks','Arneau',4.00,NULL,10.00,73),
	('dark_green','Subscriptions: Popup','Arneau',1.00,NULL,11.00,74),
	('dark_green','Contact Us: Popup','Arneau',1.00,NULL,12.00,75),
	('yellow','Shipping: Integrations','Arneau',18.00,NULL,13.00,76),
	('dark_green','Products: Variations','Arneau',4.00,NULL,14.00,77),
	('dark_green','Home: Facebook','Arneau',1.00,NULL,15.00,78),
	('dark_green','Home: Twitter','Arneau',1.00,NULL,15.00,79),
	('dark_blue','Dispatching: Picking page','Arneau',30.00,NULL,22.00,80),
	('dark_blue','Dispatching: Packing page','Arneau',30.00,NULL,22.50,81),
	('dark_blue','Dispatching: Reports pages','Arneau',12.00,NULL,22.75,82),
	('dark_blue','Suppliers: Table page','Arneau',2.00,NULL,19.00,83),
	('dark_blue','Suppliers: Edit page','Arneau',2.00,NULL,19.50,84),
	('dark_blue','Supplier orders: Table page','Arneau',2.00,NULL,20.00,85),
	('dark_blue','Supplier orders: Edit page','Arneau',6.00,NULL,20.50,86),
	('dark_blue','Supplier orders: Generate page','Arneau',12.00,NULL,20.75,87),
	('pink','Table component','Alexis',6.00,NULL,1.00,88),
	('light_purple','Shipping service','Alexis',20.00,NULL,2.00,89),
	('dark_blue','Products: Table page','Julien',4.00,NULL,4.00,90),
	('dark_blue','Shops: Table page','Julien',2.00,NULL,5.00,91),
	('dark_blue','Shops: Edit page','Julien',4.00,NULL,5.00,92),
	('pink','Datepicker component','Julien',3.00,NULL,3.00,93),
	('pink','Tree component','Julien',12.00,NULL,3.00,94),
	('pink','Chart component','Julien',3.00,NULL,3.00,95),
	('','','Julien',18.00,NULL,0.50,96),
	('dark_blue','Groups: Edit page','Julien',4.00,NULL,1.00,97),
	('dark_blue','Categories: Tree page','Julien',6.00,NULL,6.00,98),
	('dark_blue','Deals: Table page','Julien',6.00,NULL,4.50,99),
	('dark_blue','Categories: Edit page','Julien',6.00,NULL,6.00,100),
	('dark_blue','Orders: Table page','Julien',2.00,NULL,7.00,101),
	('dark_blue','Customers: Table page','Julien',2.00,NULL,8.00,102),
	('dark_blue','Customers: View / edit page','Julien',6.00,NULL,8.00,103),
	('dark_blue','Vouchers: Table page','Julien',2.00,NULL,9.00,104),
	('dark_blue','Vouchers: Edit page','Julien',6.00,NULL,9.00,105),
	('dark_blue','Users: Table page','Julien',2.00,NULL,10.00,106),
	('dark_blue','Users: Add page','Julien',2.00,NULL,10.00,107),
	('dark_blue','Users: Role page','Julien',2.00,NULL,10.00,108),
	('dark_blue','CMS: Table page','Julien',2.00,NULL,11.00,109),
	('dark_blue','CMS: Edit page','Julien',6.00,NULL,11.00,110),
	('dark_blue','Blog: Posts page','Julien',2.00,NULL,12.00,111),
	('dark_blue','Blog: Post page','Julien',2.00,NULL,12.00,112),
	('dark_blue','Blog: Categories page','Julien',2.00,NULL,12.00,113),
	('dark_blue','Blog: Category page','Julien',2.00,NULL,12.00,114),
	('','','Arneau',62.00,NULL,19.75,115),
	('dark_blue','Reporting: Various pages','Arneau',30.00,NULL,23.00,116),
	('dark_blue','Marketing: Various pages','Arneau',30.00,NULL,24.00,117),
	('dark_green','Dispatching: Packing page','Arneau',4.00,NULL,1.50,118),
	('dark_green','Dispatching: Packing page','Arneau',2.00,NULL,1.00,119),
	('red','CourierIt investigation','Arneau',0.00,1.00,1.20,120),
	('red','DSV cost comparison','Arneau',0.00,1.00,1.20,121),
	('dark_green','Dispatching: Packing page','Arneau',2.00,NULL,1.70,122),
	('red','GA event investigation','Arneau',0.00,1.00,1.60,123),
	('red','JBL subscriber campaign','Arneau',0.00,3.00,1.60,124),
	('yellow','Union query','Niko',6.00,6.00,1.10,125),
	('dark_green','Shop blocks','Niko',2.00,3.00,1.10,126),
	('red','Sales meeting','Niko',0.00,2.00,1.00,127),
	('dark_blue','Groups: Table page','Julien',4.00,NULL,1.00,128),
	('red','Modified files script','Arneau',0.00,1.00,1.80,129),
	('red','Facebook share images','Arneau',0.00,1.00,1.80,130),
	('dark_green','Dispatching: Packing page','Arneau',4.00,NULL,1.85,131),
	('red','JBL subscriber campaign','Arneau',0.00,2.00,1.80,132),
	('light_orange','Vincents discussion','Niko',0.00,3.00,1.30,133),
	('','','Niko',0.00,7.00,1.50,134),
	('light_purple','Shipping service specification','Niko',0.00,4.00,1.80,135),
	('red','Sales meeting','Niko',0.00,1.00,1.60,136),
	('red','JBL subscriber campaign','Arneau',0.00,1.00,1.90,137),
	('red','Affiliate.co.za and Vouchercloud tracking pixel','Arneau',0.00,1.00,1.90,138),
	('','','Arneau',2.00,NULL,1.90,139),
	('red','Twitter sharing issues','Arneau',0.00,1.00,1.90,140),
	('red','MyGate payment issues','Arneau',0.00,1.00,1.90,141),
	('red','PM update','Arneau',0.00,1.00,1.90,142),
	('red','PM update','Niko',0.00,1.00,1.70,143),
	('red','CourierIt testing, correspondence','Arneau',0.00,1.00,1.90,144),
	('dark_green','Dispatching: Picking page','Arneau',3.00,NULL,2.20,145),
	('red','JBL subscriber campaign','Arneau',0.00,1.00,1.95,146),
	('red','CourierIt testing, correspondence','Arneau',0.00,1.50,1.95,147),
	('yellow','Payments: Database design','Arneau',0.00,0.50,1.95,148),
	('light_purple','Shipping service specification','Arneau',0.00,1.50,1.95,149),
	('red','Marketing meeting','Arneau',0.00,1.00,1.95,150),
	('red','Subscriber investigation','Arneau',0.00,0.50,1.95,151),
	('yellow','Payments: Queries','Niko',6.00,3.00,2.10,152),
	('red','CourierIt testing, correspondence','Arneau',0.00,1.00,2.00,153),
	('red','Pargo investigation','Arneau',0.00,0.50,2.00,154),
	('red','PM update','Arneau',0.00,1.00,2.00,155),
	('yellow','Payments: Endpoints','Niko',3.00,3.00,2.25,156),
	('red','MacBook migration','Arneau',0.00,0.50,2.00,157),
	('dark_green','Dispatching: Picking page','Arneau',7.00,4.00,2.35,158),
	('red','MacBook setup','Arneau',0.00,1.00,2.30,159),
	('light_purple','Payments: Discussion','Arneau',0.00,0.50,2.30,160),
	('dark_green','Dispatching: Batching page','Arneau',2.00,NULL,2.40,161),
	('','','Arneau',0.00,1.50,2.40,162),
	('red','CourierIt testing, correspondence','Arneau',0.00,2.00,2.35,163),
	('red','GA discussion','Arneau',0.00,0.50,2.30,164),
	('','','Niko',0.00,3.00,2.25,165),
	('yellow','Payments: Endpoints','Niko',9.00,NULL,2.25,166),
	('yellow','Payments: Integrations','Niko',0.00,4.00,2.40,167),
	('red','Xia iMac setup','Niko',0.00,1.50,2.25,168),
	('red','Mandela Day','Niko',0.00,0.50,2.25,169),
	('red','PM Update','Niko',0.00,1.00,2.25,170),
	('red','Newsletter investigation','Arneau',0.00,0.50,2.35,171),
	('dark_green','Dispatching: Batching page','Arneau',3.00,NULL,2.45,172),
	('red','Subscriber campaign updates','Arneau',0.00,0.50,2.40,173),
	('red','CourierIt testing, correspondence','Arneau',0.00,1.00,2.40,174),
	('red','PM Update','Arneau',0.00,1.00,2.40,175),
	('red','Alexis discussion, correspondence','Arneau',0.00,0.50,2.40,176),
	('red','DSV tracking investigation','Arneau',0.00,0.50,2.40,177),
	('dark_green','Dispatching: Pages discussion','Arneau',1.00,NULL,2.48,178),
	('red','MyGate meeting','Arneau',0.00,0.50,2.48,179),
	('red','PM update','Arneau',0.00,0.50,2.48,180),
	('red','JBL subscriber campaign','Arneau',0.00,0.50,2.47,181),
	('red','DOI follow ups','Arneau',0.00,1.50,2.48,182),
	('red','PM update','Arneau',0.00,1.00,2.47,183),
	('red','CourierIt testing, correspondence','Arneau',0.00,0.50,2.47,185),
	('red','Shop updates','Arneau',0.00,0.50,2.50,186),
	('red','CourierIt testing, correspondence','Arneau',0.00,0.50,2.50,187),
	('red','DSV cost comparison','Arneau',0.00,1.00,2.50,188),
	('red','PM update','Arneau',0.00,0.50,2.50,189),
	('red','Product tiles update','Arneau',0.00,1.00,2.50,190),
	('red','DSV cost comparison investigation','Arneau',0.00,1.00,2.50,191),
	('dark_green','Dispatching: Pages updates','Arneau',0.00,1.50,2.50,192);

/*!40000 ALTER TABLE `task` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
