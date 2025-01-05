-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (arm64)
--
-- Host: localhost    Database: apple_project
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Temporary view structure for view `awaiting_transaction`
--

DROP TABLE IF EXISTS `awaiting_transaction`;
/*!50001 DROP VIEW IF EXISTS `awaiting_transaction`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `awaiting_transaction` AS SELECT 
 1 AS `order_id`,
 1 AS `order_created`,
 1 AS `item_id`,
 1 AS `customer_id`,
 1 AS `to_pay`,
 1 AS `delivery_fee`,
 1 AS `transaction_id`,
 1 AS `transaction_method`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `c_address`
--

DROP TABLE IF EXISTS `c_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `c_address` (
  `address_id` int NOT NULL,
  `Delivery_address` varchar(40) DEFAULT NULL,
  `Post_code` varchar(7) DEFAULT NULL,
  `Town` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `c_address`
--

LOCK TABLES `c_address` WRITE;
/*!40000 ALTER TABLE `c_address` DISABLE KEYS */;
INSERT INTO `c_address` VALUES (1,'Broad street','B15 2JF','Birmingham'),(2,'Broad street','B15 2KL','Birmingham'),(3,'Broad street','B15 32K','Birmingham'),(4,'Harborne','B16 1NJ','Birmingham'),(5,'Harborne','B16 3NS','Birmingham'),(6,'Selly Oak','B2 3JD','Birmingham'),(7,'Hagley','B5 5LK','Birmingham'),(8,'Edgebaston','B17 1J3','Birmingham'),(9,'Edgebaston','B17 4HJ','Birmingham'),(10,'Jewellery Quarter','B1 2HG','Birmingham'),(11,'Jewellery Quarter','B1 2HW','Birmingham'),(12,'Five Ways','B14 2BH','Birmingham'),(13,'New Street','B1 7HA','Birmingham'),(14,'New Street','B1 5JA','Birmingham'),(15,'Edenfield','B4 2HJ','Birmingham'),(16,'Edenfield','B4 5GJ','Birmingham'),(17,'Edgebaston','B17 2HI','Birmingham'),(18,'Hurst','B6 2B1','Birmingham'),(19,'Moore','B8 4NJ','Birmingham'),(20,'Bristol','B3 4KJ','Birmingham');
/*!40000 ALTER TABLE `c_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `company_gained_sales`
--

DROP TABLE IF EXISTS `company_gained_sales`;
/*!50001 DROP VIEW IF EXISTS `company_gained_sales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `company_gained_sales` AS SELECT 
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `item_model`,
 1 AS `storage_size`,
 1 AS `item_price`,
 1 AS `order_quantity`,
 1 AS `money_gained`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(60) DEFAULT NULL,
  `telephone_number` varchar(20) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Bruno','Mendez','07792-231,331','b.mendez@gmail.com'),(2,'Helen','Thompson','07792-341,342','h.thompson@gmail.com'),(3,'Jade','Friend','07792-213-111','jade.fr@hotmail.com'),(4,'Natasha','Binks','07792-321-213','binks.natasha@gmail.co.uk'),(5,'Jim','Curry','07792-521-233','j.curry1@outlook.com'),(6,'Natasha','Binks','07792-321-213','binks.natasha@gmail.co.uk'),(7,'Natasha','Smith','07792-421-467','natasha.smith@yahoo.co.uk'),(8,'Charlene','Bowley','07792-234-098','cb@gmail.co.uk'),(9,'Mike','Jordan','07792-356-450','jm@hotmail.co.uk'),(10,'Charlotte','Gill','07792-555-991','cs.gill@gmail.co.uk'),(11,'May','Day','07792-423-915','mayday@hotmail.co.uk'),(12,'Philip','Burton','07792-451-713','burton.phi@yahoo.co.uk'),(13,'Justin','Blieber','07792-555-234','bieliver@yahoo.com'),(14,'Olivia','Rodri','07792-841-654','purple_oli@outlook.com'),(15,'Shawn','Monday','07792-987-654','senio_mendes@yahoo.com'),(16,'James','Bond','07721-321-321','jamesb@gmail.com'),(17,'Chris','Ronaldo','07721-321-320','cr_01@hotmail.co.uk'),(18,'Fiona','Davis','07721-321-319','fiona.davis02@gmail.com'),(19,'Ash','Ketchum','07721-321-318','ash.ketchum@hotmail.com'),(20,'Harry','Potter','07721-321-317','harry_potter@yahoo.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `discount_eligible_function`
--

DROP TABLE IF EXISTS `discount_eligible_function`;
/*!50001 DROP VIEW IF EXISTS `discount_eligible_function`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `discount_eligible_function` AS SELECT 
 1 AS `order_id`,
 1 AS `customer_id`,
 1 AS `transaction_id`,
 1 AS `to_pay`,
 1 AS `discount_eligible(to_pay)`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!50001 DROP VIEW IF EXISTS `inventory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `inventory` AS SELECT 
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `item_model`,
 1 AS `item_color`,
 1 AS `storage_size`,
 1 AS `item_price`,
 1 AS `quantity`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` varchar(20) NOT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_model` varchar(55) DEFAULT NULL,
  `item_color` varchar(20) DEFAULT NULL,
  `storage_size` varchar(10) DEFAULT NULL,
  `item_price` decimal(6,2) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('A1','iphone','14','red','128gb',990.00),('A10','ipad','13-inch pro','space black','1tb',1899.00),('A11','ipad','11-inch pro','silver','256gb',1299.00),('A12','ipad','13-inch air','red','128gb',699.00),('A13','macbook','14-inch M3 pro','space grey','512gb',1699.00),('A14','macbook','16-inch M3 max','space black','512gb',4099.00),('A15','macbook','15-inch air','starlight','512gb',1699.00),('A16','apple watch','series 10','jet black','42mm',399.00),('A17','apple watch','hermes','gold','46mm',1199.00),('A18','apple watch','ultra 2','blue','49mm',799.00),('A19','airpods','max','orange',NULL,499.00),('A2','iphone','15plus','pink','256gb',799.00),('A20','airpods','pro2','white',NULL,229.00),('A3','iphone','16pro max','black titanium','1tb',1599.00),('A4','ipad','13-inch pro','space black','1tb',1899.00),('A5','ipad','11-inch pro','solver','256gb',1299.00),('A6','iphone','14plus','red','128gb',699.00),('A7','iphone','15plus','green','256gb',799.00),('A8','iphone','SE','red','256gb',579.00),('A9','iphone','15plus','yellow','256gb',799.00);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `order_created` datetime DEFAULT NULL,
  `item_id` varchar(20) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `delivery` tinyint(1) DEFAULT NULL,
  `delivery_fee` decimal(4,2) DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `address_id` (`address_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`address_id`) REFERENCES `c_address` (`address_id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (111,'2024-10-01 07:00:05','A1',2,1,1,2.00,1),(112,'2024-10-01 08:00:20','A10',3,2,0,NULL,2),(113,'2024-10-01 09:00:10','A11',4,3,1,2.00,3),(114,'2024-10-01 09:30:00','A11',2,4,1,2.00,4),(115,'2024-10-01 10:20:20','A14',3,5,0,NULL,5),(116,'2024-10-01 10:15:00','A15',1,6,1,2.00,6),(117,'2024-10-01 11:00:10','A18',2,7,0,NULL,7),(118,'2024-10-01 11:30:05','A17',3,8,0,NULL,8),(119,'2024-10-01 09:00:05','A19',1,9,1,2.00,9),(120,'2024-10-01 13:40:50','A9',5,10,1,2.00,10),(121,'2024-10-01 14:00:25','A4',2,11,0,NULL,11),(122,'2024-10-01 15:30:55','A16',3,12,1,2.00,12),(123,'2024-10-01 15:30:15','A2',1,13,1,2.00,13),(124,'2024-10-01 16:00:44','A1',2,14,1,2.00,14),(125,'2024-10-01 12:30:30','A3',1,15,1,2.00,15),(126,'2024-10-01 16:55:20','A18',3,16,1,2.00,16),(127,'2024-10-01 18:00:00','A13',1,17,0,NULL,17),(128,'2024-10-01 20:30:20','A10',3,18,1,2.00,18),(129,'2024-10-01 19:45:55','A11',2,19,1,2.00,19),(130,'2024-10-01 23:44:15','A12',1,20,0,NULL,20);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `before_fee` BEFORE INSERT ON `orders` FOR EACH ROW SET new.delivery_fee = (new.delivery_fee = 2.00) */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `orders_made`
--

DROP TABLE IF EXISTS `orders_made`;
/*!50001 DROP VIEW IF EXISTS `orders_made`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `orders_made` AS SELECT 
 1 AS `order_id`,
 1 AS `item_id`,
 1 AS `item_type`,
 1 AS `item_model`,
 1 AS `item_price`,
 1 AS `quantity`,
 1 AS `order_created`,
 1 AS `delivery`,
 1 AS `customer_id`,
 1 AS `delivery_address`,
 1 AS `post_code`,
 1 AS `town`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `stocks`
--

DROP TABLE IF EXISTS `stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stocks` (
  `stock_id` int NOT NULL,
  `item_id` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`stock_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `stocks_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stocks`
--

LOCK TABLES `stocks` WRITE;
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
INSERT INTO `stocks` VALUES (11,'A1',48),(12,'A2',49),(13,'A3',49),(14,'A4',48),(15,'A5',50),(16,'A6',50),(17,'A7',50),(18,'A8',50),(19,'A9',45),(20,'A10',47),(21,'A11',46),(22,'A12',49),(23,'A13',49),(24,'A14',47),(25,'A15',49),(26,'A16',47),(27,'A17',47),(28,'A18',48),(29,'A19',49),(30,'A20',50);
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `transaction_id` int NOT NULL,
  `transaction_method` varchar(20) DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_id` int DEFAULT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `customer_id` (`customer_id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'card',1,111),(2,'cash',2,112),(3,'card',3,113),(4,'card',4,114),(5,'card',5,115),(6,'card',6,116),(7,'card',7,117),(8,'card',8,118),(9,'card',9,119),(10,'card',10,120),(11,'card',11,121),(12,'card',12,122),(13,'card',13,123),(14,'card',14,124),(15,'card',15,125),(16,'card',16,126),(17,'card',17,127),(18,'card',18,128),(19,'card',19,129),(20,'card',20,130);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'apple_project'
--

--
-- Dumping routines for database 'apple_project'
--
/*!50003 DROP FUNCTION IF EXISTS `discount_eligible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `discount_eligible`(to_pay DECIMAL) RETURNS varchar(50) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
	DECLARE discount_status VARCHAR(50);
    IF to_pay >1000.00 THEN 
		SET discount_status = 'Eligible for 20% discount';
	ELSEIF to_pay <=900.00 THEN
		SET discount_status = 'Not eligible';
	END IF;
    RETURN (discount_status);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_address` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_address`(IN d_address VARCHAR(40),
								 IN p_code VARCHAR(7))
BEGIN
	SELECT *
    FROM c_addres
    WHERE deliver_address = d_address AND post_code = p_code;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_customers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_customers`(IN f_name VARCHAR(50),
								 IN l_name VARCHAR(60))
BEGIN
	SELECT *
    FROM customers
    WHERE first_name = f_name AND last_name = l_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `awaiting_transaction`
--

/*!50001 DROP VIEW IF EXISTS `awaiting_transaction`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `awaiting_transaction` AS select `o`.`order_id` AS `order_id`,`o`.`order_created` AS `order_created`,`o`.`item_id` AS `item_id`,`o`.`customer_id` AS `customer_id`,(`o`.`quantity` * `i`.`item_price`) AS `to_pay`,`o`.`delivery_fee` AS `delivery_fee`,`t`.`transaction_id` AS `transaction_id`,`t`.`transaction_method` AS `transaction_method` from ((`orders` `o` left join `item` `i` on((`i`.`item_id` = `o`.`item_id`))) left join `transaction` `t` on((`t`.`order_id` = `o`.`order_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `company_gained_sales`
--

/*!50001 DROP VIEW IF EXISTS `company_gained_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `company_gained_sales` AS select `apple`.`item_id` AS `item_id`,`apple`.`item_type` AS `item_type`,`apple`.`item_model` AS `item_model`,`apple`.`storage_size` AS `storage_size`,`apple`.`item_price` AS `item_price`,`apple`.`order_quantity` AS `order_quantity`,(`apple`.`order_quantity` * `apple`.`item_price`) AS `money_gained` from (select `o`.`item_id` AS `item_id`,`i`.`item_type` AS `item_type`,`i`.`item_model` AS `item_model`,`i`.`storage_size` AS `storage_size`,`i`.`item_price` AS `item_price`,sum(`o`.`quantity`) AS `order_quantity` from (`orders` `o` left join `item` `i` on((`o`.`item_id` = `i`.`item_id`))) group by `o`.`item_id`,`i`.`item_type`,`i`.`item_model`,`i`.`storage_size`,`i`.`item_price` order by `order_quantity` desc) `Apple` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `discount_eligible_function`
--

/*!50001 DROP VIEW IF EXISTS `discount_eligible_function`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `discount_eligible_function` AS select `awaiting_transaction`.`order_id` AS `order_id`,`awaiting_transaction`.`customer_id` AS `customer_id`,`awaiting_transaction`.`transaction_id` AS `transaction_id`,`awaiting_transaction`.`to_pay` AS `to_pay`,`discount_eligible`(`awaiting_transaction`.`to_pay`) AS `discount_eligible(to_pay)` from `awaiting_transaction` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `inventory`
--

/*!50001 DROP VIEW IF EXISTS `inventory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `inventory` AS select `i`.`item_id` AS `item_id`,`i`.`item_type` AS `item_type`,`i`.`item_model` AS `item_model`,`i`.`item_color` AS `item_color`,`i`.`storage_size` AS `storage_size`,`i`.`item_price` AS `item_price`,`s`.`quantity` AS `quantity` from (`item` `i` join `stocks` `s` on((`s`.`item_id` = `i`.`item_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `orders_made`
--

/*!50001 DROP VIEW IF EXISTS `orders_made`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `orders_made` AS select `o`.`order_id` AS `order_id`,`i`.`item_id` AS `item_id`,`i`.`item_type` AS `item_type`,`i`.`item_model` AS `item_model`,`i`.`item_price` AS `item_price`,`o`.`quantity` AS `quantity`,`o`.`order_created` AS `order_created`,`o`.`delivery` AS `delivery`,`o`.`customer_id` AS `customer_id`,`a`.`Delivery_address` AS `delivery_address`,`a`.`Post_code` AS `post_code`,`a`.`Town` AS `town` from ((`orders` `o` left join `item` `i` on((`o`.`item_id` = `i`.`item_id`))) left join `c_address` `a` on((`o`.`address_id` = `a`.`address_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-31 21:26:24
