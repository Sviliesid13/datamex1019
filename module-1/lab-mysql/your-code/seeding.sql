-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: lab_mysql
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Cars`
--

DROP TABLE IF EXISTS `Cars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Cars` (
  `VIN` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manufacturer` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `model` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `year` year(4) DEFAULT NULL,
  `color` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
INSERT INTO `Cars` VALUES ('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),('DAM41UDN3CHU2WVF6','Volvo','V60CrossCountry',2019,'Gray');
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `customer_ID` int(20) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `address` varchar(40) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `state_province` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `zip_postal` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (0,'10001','Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera 14','Madrid','Madrid','Spain',28045),(1,'20001','Abraham Lincoln','+1 305 907 7086','120 SW 8th St','Miami','Florida','United States',33130),(2,'30001','Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France',75008);
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoices`
--

DROP TABLE IF EXISTS `Invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoices` (
  `invoice_no` int(20) DEFAULT NULL,
  `date` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `car` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `customer` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `salesperson` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoices`
--

LOCK TABLES `Invoices` WRITE;
/*!40000 ALTER TABLE `Invoices` DISABLE KEYS */;
INSERT INTO `Invoices` VALUES (852399038,'-2004','0','1','3'),(731166526,'-1999','3','0','5'),(271135104,'-1998','2','2','7');
/*!40000 ALTER TABLE `Invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salespersons`
--

DROP TABLE IF EXISTS `Salespersons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salespersons` (
  `staff_ID` int(20) DEFAULT NULL,
  `name` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `store` varchar(20) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salespersons`
--

LOCK TABLES `Salespersons` WRITE;
/*!40000 ALTER TABLE `Salespersons` DISABLE KEYS */;
INSERT INTO `Salespersons` VALUES (1,'Petey Cruiser','Madrid'),(2,'Anna Sthesia','Barcelona'),(3,'Paul Molive','Berlin'),(4,'Gail Forcewind','Paris'),(5,'Paige Turner','Miami'),(6,'Bob Frapples','Mexico City'),(7,'Walter Melon','Amsterdam'),(8,'Shonda Leer','São Paulo');
/*!40000 ALTER TABLE `Salespersons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29  7:23:47
