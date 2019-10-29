-- MySQL dump 10.13  Distrib 8.0.18, for osx10.15 (x86_64)
--
-- Host: localhost    Database: lab-mysql
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
  `VIN` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Manufacturer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Model` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Year` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`VIN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cars`
--

LOCK TABLES `Cars` WRITE;
/*!40000 ALTER TABLE `Cars` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Costumers`
--

DROP TABLE IF EXISTS `Costumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Costumers` (
  `Costumer ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci NOT NULL,
  `Phone Number` int(10) unsigned NOT NULL,
  `Email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `City` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `State/Province` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Country` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Zip/Postal Code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Costumer ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Costumers`
--

LOCK TABLES `Costumers` WRITE;
/*!40000 ALTER TABLE `Costumers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Costumers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoices`
--

DROP TABLE IF EXISTS `Invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Invoices` (
  `Invoice Number` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Date` date DEFAULT NULL,
  `Car` text COLLATE utf8mb4_general_ci,
  `Customer` text COLLATE utf8mb4_general_ci,
  `Salesperson` text COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`Invoice Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoices`
--

LOCK TABLES `Invoices` WRITE;
/*!40000 ALTER TABLE `Invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `Invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salespersons`
--

DROP TABLE IF EXISTS `Salespersons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Salespersons` (
  `Staff ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` text COLLATE utf8mb4_general_ci NOT NULL,
  `Store` text COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Staff ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salespersons`
--

LOCK TABLES `Salespersons` WRITE;
/*!40000 ALTER TABLE `Salespersons` DISABLE KEYS */;
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

-- Dump completed on 2019-10-28 15:58:59
