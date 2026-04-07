
--

DROP TABLE IF EXISTS finproDimAccountTypes;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproDimAccountTypes (
  ID int DEFAULT NULL,
  AccountType text
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table finproDimBranches
--

DROP TABLE IF EXISTS finproDimBranches;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproDimBranches (
  Id int DEFAULT NULL,
  BranchCode text,
  BranchName text
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table finproDimCountries
--

DROP TABLE IF EXISTS finproDimCountries;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproDimCountries (
  CountryID int DEFAULT NULL,
  CountryName text,
  CountryCode text,
  Continent text
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table finproDimCustomers
--

DROP TABLE IF EXISTS finproDimCustomers;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproDimCustomers (
  CustomerID int DEFAULT NULL,
  CustomerName text,
  Email text,
  DateOfBirth text,
  AccountId text,
  AccountType text,
  BranchCode text,
  Country text,
  DateJoined text,
  Balance int DEFAULT NULL
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table finproDimCities
--

DROP TABLE IF EXISTS finproDimCities;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproDimCities (
  Id int DEFAULT NULL,
  CityCode text,
  CityName text
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table finproDimDate
--

DROP TABLE IF EXISTS finproDimDate;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproDimDate (
  Date text,
  DateKey text,
  Year int DEFAULT NULL,
  Quarter int DEFAULT NULL,
  Month int DEFAULT NULL,
  Day int DEFAULT NULL,
  DayOfWeek int DEFAULT NULL,
  DayName text,
  MonthName text,
  IsWeekend text,
  WeekOfYear int DEFAULT NULL,
  DayOfYear int DEFAULT NULL,
  IsLeapYear text,
  FiscalYear int DEFAULT NULL,
  FiscalQuarter int DEFAULT NULL
)  ;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table finproFactTransactions
--

DROP TABLE IF EXISTS finproFactTransactions;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE finproFactTransactions (
  TransactionID int DEFAULT NULL,
  AccountId text,
  TransactionDateId int DEFAULT NULL,
  TransactionType text,
  TransactionAmount int DEFAULT NULL,
  US_Cities_Id int DEFAULT NULL
)  ;

