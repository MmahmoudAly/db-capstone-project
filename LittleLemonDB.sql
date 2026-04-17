CREATE DATABASE  IF NOT EXISTS `LittleLemonDB` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `LittleLemonDB`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: LittleLemonDB
-- ------------------------------------------------------
-- Server version	8.4.8-cluster

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
-- Table structure for table `Bookings`
--

DROP TABLE IF EXISTS `Bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Bookings` (
  `BookingID` int NOT NULL,
  `TableNo` int NOT NULL,
  `BookingDate` date NOT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `fk_Bookings_Customer` (`CustomerID`),
  CONSTRAINT `fk_Bookings_Customer` FOREIGN KEY (`CustomerID`) REFERENCES `CustomerDetails` (`CustomerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bookings`
--

LOCK TABLES `Bookings` WRITE;
/*!40000 ALTER TABLE `Bookings` DISABLE KEYS */;
INSERT INTO `Bookings` VALUES (1,5,'2022-10-10',1),(2,3,'2022-11-12',3),(3,2,'2022-10-11',2),(4,2,'2022-10-13',1),(5,3,'2022-11-11',4);
/*!40000 ALTER TABLE `Bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CustomerDetails`
--

DROP TABLE IF EXISTS `CustomerDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CustomerDetails` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `GuestFirstName` varchar(100) NOT NULL,
  `GuestLastName` varchar(100) NOT NULL,
  `mail` varchar(45) DEFAULT NULL,
  `CustomerPhone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `CustomerID_UNIQUE` (`CustomerID`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CustomerDetails`
--

LOCK TABLES `CustomerDetails` WRITE;
/*!40000 ALTER TABLE `CustomerDetails` DISABLE KEYS */;
INSERT INTO `CustomerDetails` VALUES (1,'Kathleen','Sims','emilyjames@example.org','+1-452-851-'),(2,'Christopher','Smith','cynthia84@example.org','681.619.190'),(3,'Betty','Navarro','bolson@example.net','(316)971-00'),(4,'Michael','Scott','bgriffin@example.com','(230)366-39'),(5,'Leah','Howard','armstrongpenny@example.org','639-977-655'),(6,'William','Dyer','wclark@example.net','201.765.655'),(7,'Daniel','Smith','stevechandler@example.com','724-471-799'),(8,'Christopher','Medina','kimberly08@example.com','(423)776-00'),(9,'Elizabeth','Bell','kara92@example.com','590-813-609'),(10,'Robert','Chaney','johnsonscott@example.com','341-316-766'),(11,'Richard','Hill','tpowers@example.com','775-876-080'),(12,'Christina','Levine','joshua33@example.com','+1-630-456-'),(13,'Peter','Martinez','griffindennis@example.com','6316125493'),(14,'Linda','Lynch','pfleming@example.net','001-950-489'),(15,'Nicholas','Brock','reedmaria@example.com','(786)296-52'),(16,'Jennifer','Becker','smithkent@example.com','+1-701-482-'),(17,'Tony','Jones','arellanomatthew@example.com','838.848.112'),(18,'Mark','Williams','vaughncarol@example.com','001-488-929'),(19,'Elizabeth','Kennedy','sharon31@example.com','369.640.430'),(20,'Erin','James','mkelley@example.net','(631)867-68'),(21,'Mary','Chen','harmonbradley@example.com','001-770-721'),(22,'Jonathan','Hall','kayla33@example.com','+1-901-256-'),(23,'Veronica','Valencia','julienoble@example.org','610-386-463'),(24,'Vincent','Shepherd','dwayneosborne@example.org','957.290.783'),(25,'Christopher','Lee','reesewilliam@example.org','865.697.528'),(26,'Joshua','Martinez','reynoldsalexander@example.org','910-292-639'),(27,'Matthew','Ross','edwardparker@example.org','916-421-371'),(28,'Susan','Freeman','dmedina@example.net','988-361-314'),(29,'Charles','Thomas','dustin01@example.com','001-577-952'),(30,'Isaiah','Huber','erivera@example.org','707-964-299'),(31,'Raymond','Torres','dianabush@example.org','+1-960-947-'),(32,'Heather','Lyons','oliverbrian@example.org','261.727.985'),(33,'Charles','Miller','theresarobinson@example.com','9576694510'),(34,'Tiffany','Nichols','danderson@example.net','892.628.239'),(35,'Carolyn','Kim','lmason@example.com','817-489-391'),(36,'Jon','Pena','pnguyen@example.net','994.670.211'),(37,'Linda','Freeman','latashamartin@example.org','(787)402-91'),(38,'Dana','Atkinson','kathyedwards@example.net','(370)246-56'),(39,'Patricia','Olson','williamspamela@example.com','885.920.043'),(40,'Bradley','Gould','ashleygreen@example.org','(435)541-75'),(41,'Daniel','Barajas','isanders@example.org','324.298.512'),(42,'Spencer','Liu','chavezjill@example.org','(686)955-76'),(43,'Ann','Lopez','julia69@example.net','+1-221-628-'),(44,'George','Arnold','yodonnell@example.net','001-209-240'),(45,'Jeffrey','Blake','brentrivera@example.net','636-351-496'),(46,'Courtney','Thomas','teresa67@example.com','413.490.855'),(47,'Melissa','Yang','kweiss@example.org','(453)380-65'),(48,'Deborah','Jenkins','erin18@example.org','(502)737-16'),(49,'Melissa','Hall','tylerthomas@example.net','(824)264-67'),(50,'Michelle','Thomas','carmen34@example.net','519.277.192'),(51,'Aaron','Harmon','emilymitchell@example.net','+1-709-346-'),(52,'David','Hinton','jamesfitzpatrick@example.org','001-277-497'),(53,'Michael','Taylor','mroberts@example.org','579-893-784'),(54,'Jennifer','Johnson','jessicaaguirre@example.com','(837)440-04'),(55,'Cory','Ward','dlozano@example.com','(567)842-81'),(56,'Brendan','Nixon','fbaker@example.com','001-518-206'),(57,'Nancy','Carter','hbridges@example.net','+1-621-819-'),(58,'Monica','Robertson','hharrison@example.com','440-577-276'),(59,'Samantha','Stein','fieldsamanda@example.org','905-441-054'),(60,'Amy','Deleon','erin04@example.org','937.297.726'),(61,'Ashley','Flores','markyoung@example.net','001-540-395'),(62,'Jose','Jackson','thompsonkimberly@example.org','(634)729-90'),(63,'Keith','Villarreal','sarah77@example.com','+1-758-921-'),(64,'Daniel','Green','lauren47@example.net','(445)277-02'),(65,'Richard','Palmer','nalexander@example.net','488-731-804'),(66,'Kathleen','Cox','glasstracey@example.org','001-990-636'),(67,'Samuel','Hall','johnphillips@example.org','666.844.389'),(68,'Brian','Garner','petervillanueva@example.com','+1-805-622-'),(69,'Christopher','Stone','hollythompson@example.net','001-372-404'),(70,'Kayla','Cox','wshaw@example.org','269.442.434'),(71,'Michael','Daniels','westbrandy@example.org','+1-665-547-'),(72,'Mackenzie','Hartman','fnichols@example.com','(888)757-38'),(73,'David','Fleming','hmartinez@example.com','+1-677-451-'),(74,'Sean','Allen','villajoseph@example.com','+1-977-865-'),(75,'Aaron','Munoz','mrowe@example.com','(531)361-41'),(76,'Mitchell','Moore','arose@example.net','816.898.286'),(77,'Steven','Hughes','eedwards@example.net','+1-392-506-'),(78,'Megan','Dawson','bstanley@example.org','+1-564-831-'),(79,'Michael','Evans','brookslatoya@example.com','+1-434-428-'),(80,'Edward','Pierce','tinawoodard@example.org','658.529.722'),(81,'Frank','Rush','tkelly@example.org','779.252.479'),(82,'Nicholas','Fields','tyrone51@example.net','940.498.515'),(83,'Lauren','Welch','clarkann@example.net','+1-517-579-'),(84,'Thomas','Rogers','mrodriguez@example.com','835.505.945'),(85,'Yolanda','Holden','amandaterrell@example.net','2527711496'),(86,'Robert','Gonzalez','owalters@example.net','286-605-180'),(87,'Michael','Walton','santiagokristen@example.org','+1-646-963-'),(88,'Linda','Ball','mhansen@example.org','+1-643-822-'),(89,'Christian','Howell','lindseyrodriguez@example.org','717.452.507'),(90,'Desiree','Young','proctorkristin@example.org','(745)834-72'),(91,'Matthew','Bright','xconrad@example.net','997.765.730'),(92,'Lori','Jenkins','david03@example.net','001-593-483'),(93,'Kayla','Cox','mwest@example.net','347.910.136'),(94,'Clayton','Clark','aprillogan@example.com','(404)454-53'),(95,'Benjamin','West','cervantesrita@example.net','671-944-596'),(96,'Deanna','Perez','lisa33@example.org','644-551-060'),(97,'Brianna','Taylor','victoriaenglish@example.org','329-735-101'),(98,'Paul','Watson','robin80@example.net','(722)709-03'),(99,'Shannon','Braun','linda15@example.com','658-475-782'),(100,'James','Huffman','jacksonmichael@example.org','(924)905-55'),(101,'Rachel','Brown','adampowers@example.org','(310)667-70'),(102,'Sarah','Jones','sheltonjames@example.org','588.741.281'),(103,'Margaret','Chan','moraleslori@example.net','687.599.802'),(104,'Robin','Morgan','gomezashley@example.com','+1-697-451-'),(105,'Elizabeth','Phillips','davischad@example.org','(510)853-58'),(106,'Brian','Adams','ashleefields@example.net','521-450-777'),(107,'Andrew','Gonzalez','johnmorris@example.com','632-676-200'),(108,'Michael','Duran','josephwilliams@example.net','(296)846-30'),(109,'Erica','Williams','rdickerson@example.net','974.560.266'),(110,'Michael','Vance','holly80@example.net','643-673-449'),(111,'Timothy','Griffin','jamespena@example.com','001-372-359'),(112,'Dustin','Downs','rkirk@example.net','+1-286-291-'),(113,'Richard','Parks','sheririchardson@example.net','(575)774-02'),(114,'Andrew','Butler','connie54@example.net','541.423.583'),(115,'Margaret','Kane','smithsusan@example.net','688.970.877'),(116,'John','Osborn','gonzalezdaniel@example.org','(295)912-19'),(117,'Dawn','Ward','dixonbethany@example.net','001-757-331'),(118,'Daniel','Williams','garrettjudy@example.net','(865)240-33'),(119,'Catherine','Williams','georgesmith@example.net','586-201-390'),(120,'Steven','Smith','vmcintyre@example.net','301.429.750'),(121,'Jason','Gray','andrew34@example.com','3348188845'),(122,'Norman','Jones','fhernandez@example.net','(398)570-95'),(123,'Daniel','Richards','lortiz@example.net','+1-306-766-'),(124,'Suzanne','Richardson','candice57@example.com','+1-231-977-'),(125,'Lisa','Vaughn','xmcdonald@example.net','001-379-972'),(126,'Kylie','Rodriguez','christopheringram@example.net','001-557-345'),(127,'Jacqueline','Smith','martin70@example.org','+1-525-596-'),(128,'Kristy','Johnson','barbaraholloway@example.com','287.802.213'),(129,'Andrew','Sullivan','michael87@example.net','607-666-717'),(130,'Tammy','Watson','cynthiadean@example.org','001-523-405'),(131,'William','Wright','mroman@example.net','(932)261-59'),(132,'Thomas','Pratt','cranejacqueline@example.org','001-779-533'),(133,'Ryan','Lopez','andreamiller@example.net','001-826-357'),(134,'Valerie','Martin','ahines@example.com','001-743-896'),(135,'Tamara','Brown','zjohnson@example.org','932-917-837'),(136,'Tyler','Snow','espinozaashley@example.org','(396)600-82'),(137,'Russell','Torres','lpowell@example.net','822-258-553'),(138,'Catherine','Davis','christopherriddle@example.org','(308)249-07'),(139,'Matthew','Lawrence','allenhernandez@example.net','001-530-770'),(140,'Charles','Mitchell','johnsonjessica@example.com','796.735.386'),(141,'Crystal','Payne','sarah83@example.net','001-840-559'),(142,'Kenneth','Sanchez','gonzalezjulia@example.net','(493)949-51'),(143,'Jason','Beck','jeffery23@example.com','001-201-903'),(144,'Howard','Sweeney','ramoskathy@example.com','+1-472-482-'),(145,'Melissa','Hess','nicolegutierrez@example.net','001-246-628'),(146,'Henry','Henderson','schneiderbianca@example.org','+1-939-532-'),(147,'Amanda','Baker','andrew64@example.org','930-786-317'),(148,'Brad','Day','alan07@example.net','206.482.022'),(149,'Gary','Foster','mark23@example.com','376-306-362'),(150,'Anthony','Richardson','williamserin@example.com','(846)880-73'),(151,'Paige','Cordova','david05@example.org','001-720-895'),(152,'Loretta','Fleming','cynthia39@example.net','(708)416-41'),(153,'Shannon','Bailey','christopherjones@example.org','(323)929-17'),(154,'Michael','Kelly','barryjohns@example.net','001-324-509'),(155,'David','Walker','diazjessica@example.org','+1-711-874-'),(156,'Jose','Nichols','jillleonard@example.net','6584165209'),(157,'Brittany','Chen','fhopkins@example.net','(231)437-02'),(158,'Stephen','Kirby','justinmerritt@example.net','981.484.595'),(159,'Wesley','Greene','danielledaugherty@example.org','(345)210-93'),(160,'Joseph','Chang','jasmineholt@example.net','001-835-234'),(161,'Kenneth','Watts','tamara03@example.net','+1-434-990-'),(162,'Michael','Long','zachary07@example.net','273.767.732'),(163,'Christopher','Russell','jamesdominguez@example.org','396-374-514'),(164,'Gregory','Calderon','jenniferbrandt@example.org','(939)610-51'),(165,'Joseph','Moreno','georgewu@example.com','759.425.443'),(166,'Tanner','James','murphyvalerie@example.org','+1-593-743-'),(167,'Mark','Davidson','jason70@example.net','553-956-567'),(168,'Curtis','Ayala','joel51@example.org','001-214-981'),(169,'Sarah','Houston','victoria39@example.com','001-267-771'),(170,'Robert','Williams','bridgespaul@example.org','285.208.035'),(171,'Robert','Martin','leonard31@example.com','(585)615-53'),(172,'Pamela','Phillips','therrera@example.com','+1-254-692-'),(173,'Cassandra','Church','tony80@example.net','383.301.503'),(174,'Lori','Gomez','psanders@example.org','001-879-223'),(175,'Lori','Gonzales','gabrielmoreno@example.net','765.731.019'),(176,'Robert','Hanson','frederickemily@example.net','+1-648-516-'),(177,'Susan','Key','sarah27@example.org','582-758-876'),(178,'Deborah','Johnson','pmcbride@example.com','001-371-388'),(179,'Kimberly','Woods','dixonclayton@example.net','+1-885-354-'),(180,'Jennifer','Jackson','xramirez@example.com','(429)751-50'),(181,'Michael','Morrison','james18@example.org','(787)251-14'),(182,'Joel','Larsen','dlewis@example.com','428.830.639'),(183,'Janice','Stokes','taylor24@example.net','+1-928-812-'),(184,'William','Contreras','cherylcervantes@example.org','001-332-556'),(185,'Timothy','Gibson','michaelmartinez@example.net','(433)685-99'),(186,'Stacy','Carter','fishermary@example.com','913.732.426'),(187,'James','Roberts','barronkristina@example.org','220-386-372'),(188,'Michael','Smith','nbrown@example.net','587.593.666'),(189,'Steven','Ramirez','jessica64@example.org','988.306.303'),(190,'Connie','Foley','melissaweaver@example.com','001-805-448'),(191,'Laura','Robertson','jilladams@example.org','454-474-892'),(192,'Michael','Mueller','shellyhall@example.net','001-491-398'),(193,'Elizabeth','Russo','carriepatterson@example.net','(475)716-39'),(194,'Brandon','Barnes','jonesdonald@example.net','001-826-832'),(195,'Timothy','Adams','wmurray@example.org','(509)202-21'),(196,'Thomas','Harrison','cohendaniel@example.net','001-402-573'),(197,'Gary','Fowler','danielbarnes@example.net','3936649690'),(198,'Ross','Cox','mjones@example.net','735.940.286'),(199,'Nicholas','Wright','isanders@example.com','001-218-741'),(200,'Kimberly','Logan','higginscarl@example.com','(223)378-02');
/*!40000 ALTER TABLE `CustomerDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DeliveryStatus`
--

DROP TABLE IF EXISTS `DeliveryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `DeliveryStatus` (
  `DeliveryStatusID` int NOT NULL AUTO_INCREMENT,
  `DeliveryStatus` varchar(45) NOT NULL,
  PRIMARY KEY (`DeliveryStatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DeliveryStatus`
--

LOCK TABLES `DeliveryStatus` WRITE;
/*!40000 ALTER TABLE `DeliveryStatus` DISABLE KEYS */;
INSERT INTO `DeliveryStatus` VALUES (1,'In Kitchen'),(2,'On the way'),(3,'Delivered');
/*!40000 ALTER TABLE `DeliveryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Menu`
--

DROP TABLE IF EXISTS `Menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Menu` (
  `MenuID` int NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(200) DEFAULT NULL,
  `MenuItemsID` int NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  PRIMARY KEY (`MenuID`),
  KEY `fk_Menu_FoodTypes_idx` (`MenuItemsID`),
  CONSTRAINT `fk_Menu_FoodTypes` FOREIGN KEY (`MenuItemsID`) REFERENCES `MenuItems` (`MenuItemsID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Menu`
--

LOCK TABLES `Menu` WRITE;
/*!40000 ALTER TABLE `Menu` DISABLE KEYS */;
INSERT INTO `Menu` VALUES (1,'Greek',1,125.00),(2,'Italian',2,235.00),(3,'Turkish',3,75.00);
/*!40000 ALTER TABLE `Menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MenuItems`
--

DROP TABLE IF EXISTS `MenuItems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `MenuItems` (
  `MenuItemsID` int NOT NULL AUTO_INCREMENT,
  `CourseName` varchar(45) NOT NULL,
  `StarterName` varchar(45) NOT NULL,
  `DesertName` varchar(45) NOT NULL,
  PRIMARY KEY (`MenuItemsID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='This Table Changed from Module 1 as per instructions in Module 2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MenuItems`
--

LOCK TABLES `MenuItems` WRITE;
/*!40000 ALTER TABLE `MenuItems` DISABLE KEYS */;
INSERT INTO `MenuItems` VALUES (1,'Greek salad','Olives','Greek yoghurt'),(2,'Bean soup','Flatbread','Ice cream'),(3,'Carbonara','Tomato bread','Affogato'),(4,'Carbonara','Tomato bread','Affogato');
/*!40000 ALTER TABLE `MenuItems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderDeliveryStatus`
--

DROP TABLE IF EXISTS `OrderDeliveryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDeliveryStatus` (
  `OrderDeliveryID` int NOT NULL AUTO_INCREMENT,
  `OrderID` int NOT NULL,
  `DeliveryDate` date NOT NULL,
  `DeliveryStatus` int NOT NULL,
  PRIMARY KEY (`OrderDeliveryID`),
  KEY `fk_OrderDeliveryStatus_DeliveryStatus_idx` (`DeliveryStatus`),
  KEY `fk_OrderDeliveryStatus_Orders_idx` (`OrderID`),
  CONSTRAINT `fk_OrderDeliveryStatus_DeliveryStatus` FOREIGN KEY (`DeliveryStatus`) REFERENCES `DeliveryStatus` (`DeliveryStatusID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_OrderDeliveryStatus_Orders` FOREIGN KEY (`OrderID`) REFERENCES `Orders` (`OrderID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDeliveryStatus`
--

LOCK TABLES `OrderDeliveryStatus` WRITE;
/*!40000 ALTER TABLE `OrderDeliveryStatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderDeliveryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `OrderDate` date NOT NULL,
  `Quantity` int NOT NULL,
  `Cost` int NOT NULL,
  `BookingID` int NOT NULL,
  `MenuID` int NOT NULL,
  `EmployeeID` int NOT NULL,
  `CustomerID` int DEFAULT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `fk_Orders_Bookings_idx` (`BookingID`),
  KEY `fk_Orders_Menu_idx` (`MenuID`),
  KEY `fk_Orders_Staff_idx` (`EmployeeID`),
  CONSTRAINT `fk_Orders_Bookings` FOREIGN KEY (`BookingID`) REFERENCES `Bookings` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_Orders_Menu` FOREIGN KEY (`MenuID`) REFERENCES `Menu` (`MenuID`),
  CONSTRAINT `fk_Orders_Staff` FOREIGN KEY (`EmployeeID`) REFERENCES `StaffInformation` (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1,'2020-06-15',2,188,1,2,1,1),(2,'2020-08-25',1,353,2,1,2,3),(3,'2021-08-17',3,113,3,3,4,4),(4,'2021-03-21',1,252,5,1,5,2),(5,'2022-07-16',5,252,4,3,3,5);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `OrdersOver150`
--

DROP TABLE IF EXISTS `OrdersOver150`;
/*!50001 DROP VIEW IF EXISTS `OrdersOver150`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrdersOver150` AS SELECT 
 1 AS `CustomerID`,
 1 AS `FullName`,
 1 AS `OrderID`,
 1 AS `Cost`,
 1 AS `MenuName`,
 1 AS `CourseName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `OrdersView`
--

DROP TABLE IF EXISTS `OrdersView`;
/*!50001 DROP VIEW IF EXISTS `OrdersView`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `OrdersView` AS SELECT 
 1 AS `OrderID`,
 1 AS `Quantity`,
 1 AS `Cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `QuantityMore2_SubQuery`
--

DROP TABLE IF EXISTS `QuantityMore2_SubQuery`;
/*!50001 DROP VIEW IF EXISTS `QuantityMore2_SubQuery`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `QuantityMore2_SubQuery` AS SELECT 
 1 AS `MenuName`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `StaffInformation`
--

DROP TABLE IF EXISTS `StaffInformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StaffInformation` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Role` varchar(100) NOT NULL,
  `Salary` decimal(7,2) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Contact_Number` int NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StaffInformation`
--

LOCK TABLES `StaffInformation` WRITE;
/*!40000 ALTER TABLE `StaffInformation` DISABLE KEYS */;
INSERT INTO `StaffInformation` VALUES (1,'Dustin Price','Manager',4968.00,'57544 Johnson Groves Apt. 878\nCrawfordstad, OR 73576',48828470,'gsmith@example.com'),(2,'Jonathan Morris','Server',6379.00,'241 Samuel Island Suite 045\nEast Deborah, WI 31780',23531142,'dtorres@example.org'),(3,'Michael Barnes','Server',4131.00,'5891 Jesse Fall Suite 428\nLake Kennethstad, RI 91395',48316033,'hesscrystal@example.com'),(4,'Clinton Macias','Assistant Chef',5880.00,'937 Jennifer Mission\nWest Dianamouth, OR 09561',55853951,'qjohns@example.com'),(5,'Jason Mathews','Receptionist',6082.00,'843 Williams Brook Apt. 953\nWest Thomas, IA 00527',35621970,'trush@example.org'),(6,'Brandon Davis','Server',6865.00,'055 Taylor Common\nWagnerhaven, MI 02064',29440995,'thompsonxavier@example.com'),(7,'Victoria Castaneda','Assistant Chef',7302.00,'2006 Taylor Way\nBoyerstad, SC 72990',84616526,'stevenholder@example.net'),(8,'Jacqueline Collins','Manager',6918.00,'888 Wyatt Greens\nPort Maria, NC 01179',82578842,'wdavid@example.org'),(9,'Carolyn Anderson','Head Chef',7699.00,'936 Foley Forge Suite 637\nBooneburgh, MD 27227',18295672,'carloswhite@example.net'),(10,'Larry Barber','Server',6293.00,'4057 Sarah Expressway\nNorth Thomaschester, SC 73827',55849811,'ltucker@example.org'),(11,'Robert Erickson','Manager',7903.00,'95763 Hannah Point Apt. 411\nWest Megantown, OR 74946',70412787,'christopher50@example.org'),(12,'Sonya Williams','Server',4776.00,'32613 Hart Locks\nThomasland, NV 32241',64544486,'sosadanielle@example.org'),(13,'Glenn Williams','Assistant Chef',3586.00,'505 Sarah Gateway\nNathanland, OK 68478',83121699,'hmartin@example.net'),(14,'Carolyn Casey','Receptionist',3694.00,'4213 Eric Street Apt. 635\nNicholasville, WV 67982',91523061,'jaime69@example.com'),(15,'Gina Reyes','Head Chef',7308.00,'228 James Trail Apt. 196\nAllisonbury, PR 64575',19392261,'whitesherry@example.net');
/*!40000 ALTER TABLE `StaffInformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `gatherAllBookings`
--

DROP TABLE IF EXISTS `gatherAllBookings`;
/*!50001 DROP VIEW IF EXISTS `gatherAllBookings`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `gatherAllBookings` AS SELECT 
 1 AS `BookingID`,
 1 AS `BookingDate`,
 1 AS `TableNo`,
 1 AS `CustomerID`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'LittleLemonDB'
--

--
-- Dumping routines for database 'LittleLemonDB'
--
/*!50003 DROP PROCEDURE IF EXISTS `AddBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddBooking`(IN BkID INT, IN CustID INT, IN TblNum INT, IN BkDate DATE)
BEGIN
    INSERT INTO Bookings (BookingID, CustomerID, TableNo, BookingDate)
    VALUES (BkID, CustID, TblNum, BkDate);
    
    SELECT CONCAT('Booking ', BkID, ' successfully added.') AS Status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `AddValidBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `AddValidBooking`(IN BkDate DATE, IN TblNum INT)
BEGIN
	START TRANSACTION;
	INSERT INTO Bookings (BookingDate, TableNo) 
	VALUES (BkDate, TblNum);
	
	SET @BookingCount = 0;
	SELECT COUNT(*) INTO @BookingCount 
	FROM Bookings
	WHERE BookingDate = BkDate AND TableNo = TblNum;
	
	IF @BookingCount > 1 THEN
		SELECT CONCAT('Table ', TblNum, ' is Already Booked - Booking Canceled') AS BookingStatus;
		ROLLBACK;
	ELSE SELECT CONCAT('Table ', TblNum , ' is reserved Succesfully') AS BookingStatus;
		COMMIT;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelBooking`(IN TblNum INT)
BEGIN
	DELETE FROM Bookings
	WHERE TableNo = TblNum;
	SELECT CONCAT('Table Number ', TblNum , ' Canceled') AS Confirmation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CancelOrder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CancelOrder`(IN id INT)
BEGIN
    -- 1. Perform the deletion
    DELETE FROM Orders WHERE OrderID = id;
    
    -- 2. "Print" the confirmation message
    SELECT CONCAT("Order ", id, " is cancelled") AS Confirmation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CheckBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CheckBooking`(IN BkDate DATE, IN TblNum INT )
BEGIN
	SET @ChkStatus = 0;
	SELECT COUNT(*) INTO @ChkStatus 
	FROM Bookings 
	WHERE BookingDate = BkDate AND TableNo = TblNum;
	IF @ChkStatus > 0 THEN
		SELECT CONCAT('Table ' , TblNum , ' is already booked') AS BookingStatus;
	ELSE 
		SELECT CONCAT('Table ' , TblNum , ' is available') AS BookingStatus;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMaxQuantity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMaxQuantity`()
BEGIN
    -- Get the maximum Quantity
    SELECT Max(Quantity) As 'Max Quantity in Order'
    From Orders;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `ManageBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `ManageBooking`(IN BkID INT, IN BkDate DATE, IN TblNum INT, IN CustID INT)
BEGIN
        -- Handler for duplicate BookingID (error code 1062) To ensure we catch the specific error of duplicate primary key and
        -- provide a clear message to the user without crashing the application.
        DECLARE EXIT HANDLER FOR 1062
        BEGIN
            SELECT CONCAT('Failure: Booking ID ', BkID, ' already exists.') AS BookingStatus;
            ROLLBACK;
        END;

        START TRANSACTION;
        INSERT INTO Bookings (BookingID, BookingDate, TableNo, CustomerID)
        VALUES (BkID, BkDate, TblNum, CustID);

        IF (SELECT COUNT(*) FROM Bookings WHERE BookingDate = BkDate AND TableNo = TblNum) > 1 THEN
            SELECT CONCAT('Failure: Table ', TblNum, ' is already reserved for ', BkDate) AS BookingStatus;
            ROLLBACK;
        ELSE
            SELECT CONCAT('Success: Table ', TblNum, ' reserved successfully.') AS BookingStatus;
            COMMIT;
        END IF;
    END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `UpdateBooking` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateBooking`(IN TblNum INT, IN BkDate DATE)
BEGIN
	UPDATE Bookings 
	SET BookingDate = BkDate 
	WHERE TableNo = TblNum;
	SELECT CONCAT('Table ' , TblNum , ' has been updated to ', BkDate ) AS Confirmation;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `OrdersOver150`
--

/*!50001 DROP VIEW IF EXISTS `OrdersOver150`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OrdersOver150` AS select `C`.`CustomerID` AS `CustomerID`,concat(`C`.`GuestFirstName`,' ',`C`.`GuestLastName`) AS `FullName`,`O`.`OrderID` AS `OrderID`,`O`.`Cost` AS `Cost`,`M`.`MenuName` AS `MenuName`,`MI`.`CourseName` AS `CourseName` from (((`Orders` `O` join `CustomerDetails` `C` on((`O`.`CustomerID` = `C`.`CustomerID`))) join `Menu` `M` on((`O`.`MenuID` = `M`.`MenuID`))) join `MenuItems` `MI` on((`M`.`MenuItemsID` = `MI`.`MenuItemsID`))) where (`O`.`Cost` >= 150) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `OrdersView`
--

/*!50001 DROP VIEW IF EXISTS `OrdersView`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `OrdersView` AS select `Orders`.`OrderID` AS `OrderID`,`Orders`.`Quantity` AS `Quantity`,`Orders`.`Cost` AS `Cost` from `Orders` where (`Orders`.`Quantity` >= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `QuantityMore2_SubQuery`
--

/*!50001 DROP VIEW IF EXISTS `QuantityMore2_SubQuery`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `QuantityMore2_SubQuery` AS select `M`.`MenuName` AS `MenuName` from `Menu` `M` where `M`.`MenuID` in (select `O`.`MenuID` from `Orders` `O` where (`O`.`Quantity` > 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `gatherAllBookings`
--

/*!50001 DROP VIEW IF EXISTS `gatherAllBookings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `gatherAllBookings` AS select `b`.`BookingID` AS `BookingID`,`b`.`BookingDate` AS `BookingDate`,`b`.`TableNo` AS `TableNo`,`o`.`CustomerID` AS `CustomerID` from (`Bookings` `b` join `Orders` `o` on((`b`.`BookingID` = `b`.`BookingID`))) */;
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

-- Dump completed on 2026-04-18  0:24:12
