-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hackathon
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `neighborhood`
--

DROP TABLE IF EXISTS `neighborhood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neighborhood` (
  `Neighborhood` varchar(100) NOT NULL,
  `GasStations` int DEFAULT NULL,
  `ChargingStations` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighborhood`
--

LOCK TABLES `neighborhood` WRITE;
/*!40000 ALTER TABLE `neighborhood` DISABLE KEYS */;
INSERT INTO `neighborhood` VALUES ('Allegheny Center',1,1),('Allegheny West',0,0),('Allentown',2,0),('Arlington',0,0),('Arlington Heights',0,0),('Banksville',1,0),('Bedford Dwellings',0,0),('Beechview',2,0),('Beltzhoover',0,0),('Bloomfield',3,2),('Bluff',1,0),('Bon air',0,0),('Brighton Heights',1,0),('Brookline',5,0),('California-Kirkbride',1,0),('Carrick',5,0),('Central Business District',0,7),('Central Lawrenceville',2,0),('Central Northside',0,1),('Central Oakland',0,0),('Chartiers City',0,0),('Chateau',0,1),('Crafton Heights',0,0),('Crawford-Roberts',1,1),('Duquesne Heights',1,0),('East Allegheny',1,0),('East Carnegie',0,0),('East Hills',0,0),('East Liberty',2,2),('Elliott',2,1),('Esplen',1,0),('Fairywood',0,0),('Fineview',0,0),('Friendship',0,0),('Garfield',2,0),('Glen Hazel',0,0),('Greenfield',2,0),('Hays',0,0),('Hazelwood',0,1),('Highland Park',1,1),('Homewood North',0,0),('Homewood South',0,0),('Homewood West',1,0),('Knoxville',0,0),('Larimer',2,3),('Lincoln Place',1,0),('Lincoln-Lemington-Belmar',0,0),('Lower Lawrenceville',1,0),('Manchester',0,0),('Marshall-Shadeland',1,1),('Middle Hill',1,0),('Morningside',0,0),('Mount Washington',3,0),('Mt. Oliver',0,0),('New Homestead',0,0),('North Oakland',3,1),('North Shore',0,2),('Northview Heights',0,0),('Oakwood',1,0),('Overbrook',1,0),('Perry North',1,0),('Perry South',1,0),('Point Breeze',2,0),('Point Breeze North',2,0),('Polish Hill',0,0),('Regent Square',3,1),('Ridgemont',0,0),('Shadyside',3,5),('Sheraden',2,0),('South Oakland',2,1),('South shore',1,1),('South Side Flats',4,4),('South Side Slopes',2,0),('Spring Garden',0,0),('Spring Hill-City View',1,0),('Squirrel Hill North',0,1),('Squirrel Hill South',3,1),('St. Clair',0,0),('Stanton Heights',0,0),('Strip District',1,5),('Summer Hill',1,0),('Swisshelm Park',0,0),('Terrace Village',1,0),('Troy Hill',1,0),('Upper Hill',0,0),('Upper Lawrenceville',1,0),('West End',0,0),('West Oakland',0,0),('Westwood',3,0),('Windgap',0,0);
/*!40000 ALTER TABLE `neighborhood` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-29  9:08:40
