CREATE DATABASE IF NOT EXISTS cities;

use cities;

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `uuid` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  PRIMARY KEY (`uuid`),
  KEY `region_idx` (`region`),
  KEY `c_code_idx` (`country_code`),
  FULLTEXT KEY `city_idx` (`city`)
) ENGINE=InnoDB AUTO_INCREMENT=6223666 DEFAULT CHARSET=latin1;

