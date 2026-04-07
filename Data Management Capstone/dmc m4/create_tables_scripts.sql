CREATE DATABASE  IF NOT EXISTS `finpro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `finpro`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: finpro
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account_type` (
  `ID` int DEFAULT NULL,
  `AccountType` varchar(100) DEFAULT NULL,
  UNIQUE KEY `AccountType_UNIQUE` (`AccountType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `branches`
--

DROP TABLE IF EXISTS `branches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branches` (
  `BranchCode` varchar(100) DEFAULT NULL,
  `BranchName` text,
  UNIQUE KEY `BranchCode_UNIQUE` (`BranchCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `CountryID` int DEFAULT NULL,
  `CountryName` varchar(100) DEFAULT NULL,
  `CountryCode` text,
  `Continent` text,
  UNIQUE KEY `CountryName_UNIQUE` (`CountryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer_data`
--

DROP TABLE IF EXISTS `customer_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_data` (
  `CustomerID` int DEFAULT NULL,
  `CustomerName` text,
  `Email` text,
  `DateOfBirth` text,
  `AccountId` varchar(100) DEFAULT NULL,
  `AccountType` varchar(100) DEFAULT NULL,
  `BranchCode` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `DateJoined` text,
  `Balance` int DEFAULT NULL,
  UNIQUE KEY `AccountId_UNIQUE` (`AccountId`),
  KEY `actype_idx` (`AccountType`),
  KEY `bcode_idx` (`BranchCode`),
  KEY `ctry_idx` (`Country`),
  CONSTRAINT `actype` FOREIGN KEY (`AccountType`) REFERENCES `account_type` (`AccountType`),
  CONSTRAINT `bcode` FOREIGN KEY (`BranchCode`) REFERENCES `branches` (`BranchCode`),
  CONSTRAINT `ctry` FOREIGN KEY (`Country`) REFERENCES `countries` (`CountryName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `transaction_data`
--

DROP TABLE IF EXISTS `transaction_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction_data` (
  `TransactionID` int DEFAULT NULL,
  `AccountId` varchar(100) DEFAULT NULL,
  `TransactionDate` text,
  `TransactionType` text,
  `TransactionAmount` int DEFAULT NULL,
  `TransactionLocation` varchar(100) DEFAULT NULL,
  KEY `LOC_idx` (`TransactionLocation`),
  KEY `acct_idx` (`AccountId`),
  CONSTRAINT `acct` FOREIGN KEY (`AccountId`) REFERENCES `customer_data` (`AccountId`),
  CONSTRAINT `LOC` FOREIGN KEY (`TransactionLocation`) REFERENCES `us_cities` (`CityName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `us_cities`
--

DROP TABLE IF EXISTS `us_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `us_cities` (
  `Id` int DEFAULT NULL,
  `CityCode` text,
  `CityName` varchar(100) DEFAULT NULL,
  UNIQUE KEY `CityName_UNIQUE` (`CityName`),
  KEY `idx` (`CityName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-05 15:49:53
