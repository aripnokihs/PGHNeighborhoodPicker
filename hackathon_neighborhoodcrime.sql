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
-- Table structure for table `neighborhoodcrime`
--

DROP TABLE IF EXISTS `neighborhoodcrime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `neighborhoodcrime` (
  `Neighborhood` varchar(100) NOT NULL,
  `CrimeCount` int DEFAULT NULL,
  `Population` int DEFAULT NULL,
  `CrimeRate` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Neighborhood`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `neighborhoodcrime`
--

LOCK TABLES `neighborhoodcrime` WRITE;
/*!40000 ALTER TABLE `neighborhoodcrime` DISABLE KEYS */;
INSERT INTO `neighborhoodcrime` VALUES ('Allegheny Center',1244,1419,87.67),('Allegheny West',130,540,24.07),('Allentown',947,2305,41.08),('Arlington',312,1750,17.83),('Arlington Heights',155,290,53.45),('Banksville',291,4127,7.05),('Bedford Dwellings',665,1386,47.98),('Beechview',1201,7596,15.81),('Beltzhoover',496,1604,30.92),('Bloomfield',984,8665,11.36),('Bluff',1502,5882,25.54),('Bon Air',267,759,35.18),('Brighton Heights',1114,7105,15.68),('Brookline',1390,13063,10.64),('California-Kirkbride',315,709,44.43),('Carrick',2352,10290,22.86),('Central Business District',4440,5477,81.07),('Central Lawrenceville',431,4720,9.13),('Central Northside',853,2972,28.70),('Central Oakland',521,5835,8.93),('Chartiers City',46,492,9.35),('Chateau',454,19,2389.47),('Crafton Heights',601,3999,15.03),('Crawford-Roberts',839,2293,36.59),('Duquesne Heights',191,2397,7.97),('East Allegheny',2217,1903,116.50),('East Carnegie',48,491,9.78),('East Hills',1194,2892,41.29),('East Liberty',1889,6187,30.53),('Elliott',663,2193,30.23),('Esplen',200,322,62.11),('Fairywood',127,1092,11.63),('Fineview',796,1140,69.82),('Friendship',174,1963,8.86),('Garfield',722,3643,19.82),('Glen Hazel',169,659,25.64),('Greenfield',537,7261,7.40),('Hays',120,321,37.38),('Hazelwood',1396,3889,35.90),('Highland Park',558,6235,8.95),('Homewood North',1969,2617,75.24),('Homewood South',2090,2260,92.48),('Homewood West',764,642,119.00),('Knoxville',1336,3493,38.25),('Larimer',879,1545,56.89),('Lincoln Place',227,3636,6.24),('Lincoln-Lemington-Belmar',1362,3155,43.17),('Lower Lawrenceville',272,2641,10.30),('Manchester',471,2031,23.19),('Marshall-Shadeland',1516,4046,37.47),('Middle Hill',932,1757,53.04),('Morningside',188,3252,5.78),('Mount Washington',1434,8710,16.46),('Mt. Oliver',2,443,0.45),('New Homestead',39,917,4.25),('North Oakland',455,10691,4.26),('North Shore',814,301,270.43),('Northview Heights',713,1769,40.31),('Oakwood',82,1025,8.00),('Overbrook',331,3483,9.50),('Perry North',587,3758,15.62),('Perry South',1057,3765,28.07),('Point Breeze',301,5348,5.63),('Point Breeze North',289,1988,14.54),('Polish Hill',166,1201,13.82),('Regent Square',37,971,3.81),('Ridgemont',37,390,9.49),('Shadyside',971,15317,6.34),('Sheraden',1285,5147,24.97),('South Oakland',354,3329,10.63),('South Shore',301,29,1037.93),('South Side Flats',3497,7467,46.83),('South Side Slopes',801,4327,18.51),('Spring Garden',219,786,27.86),('Spring Hill-City',711,2364,30.08),('Squirrel Hill North',290,11879,2.44),('Squirrel Hill South',812,15317,5.30),('St. Clair',55,4427,1.24),('Stanton Heights',223,183,121.86),('Strip District',503,1845,27.26),('Summer Hill',76,998,7.62),('Swisshelm Park',43,1339,3.21),('Terrace Village',297,2320,12.80),('Troy Hill',437,2645,16.52),('Upper Hill',370,1723,21.47),('Upper Lawrenceville',189,2394,7.89),('West End',290,205,141.46),('West Oakland',325,2534,12.83),('Westwood',226,3332,6.78),('Windgap',124,1344,9.23);
/*!40000 ALTER TABLE `neighborhoodcrime` ENABLE KEYS */;
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
