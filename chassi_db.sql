# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.15)
# Database: chassi_db
# Generation Time: 2018-07-11 06:14:50 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table atm
# ------------------------------------------------------------
DROP DATABASE IF EXISTS `chassi_db`;
CREATE DATABASE `chassi_db`;
USE `chassi_db`;

DROP TABLE IF EXISTS `atm`;

CREATE TABLE `atm` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  `icon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `atm` WRITE;
/*!40000 ALTER TABLE `atm` DISABLE KEYS */;

INSERT INTO `atm` (`id`, `name`, `address`, `latitude`, `longitude`, `icon`)
VALUES
	(1,'168 Shopping Mall','3F Food Court, 168 Mall, Sta. Elena St., Binondo Manila',14.605054,120.972087,'images/cbc-atm .png'),
	(2,'2 Mango Avenue','2 Mango Ave. - Solara Bldg., General Maxilom Ave Cebu City, Cebu',10.309945,123.896029,'images/cbc-atm .png'),
	(3,'7-11 Imus Bayan Luma','Aguinaldo Highway cor. Patindig Araw Road, Bayan Luma VIII Imus, Cavite',14.406424,120.940418,'images/cbc-atm .png'),
	(4,'7-11 Imus Tanzang Luma','Aguinaldo Highway cor. Captain B. Paredes St., Tanzang Luma 1 Imus, Cavite',14.423123,120.942305,'images/cbc-atm .png'),
	(5,'999 Shopping Mall','Basement Lobby 999 Shopping Mall, 1002-1062 Soler St., Brgy. 293, Zone 28, District 3, Binondo Manila',14.605186,120.972637,'images/cbc-atm .png'),
	(6,'999 Shopping Mall 2','Basement, 999 Shopping Mall Bldg. 2, Recto - Soler Sts., Binondo Manila',14.605331,120.973385,'images/cbc-atm .png'),
	(7,'A. Bonifacio - McDonald\'s Baguio','Villanueva Bldg., Lower Bonifacio St. Baguio City',16.418825,120.596671,'images/cbc-atm .png'),
	(8,'Abreeza Mall','Abreeza Mall, J.P. Laurel Ave. Bajada, Davao City',7.09122,125.611421,'images/cbc-atm .png'),
	(9,'ACC Hypermart San Andres','San Andres Catanduanes',13.597418,124.097628,'images/cbc-atm .png'),
	(10,'Adventist University of the Philippines','Adventist University of the Philippines, Sta. Rosa - Tagaytay Road, Puting Kahoy Silang, Cavite',14.217533,121.03935,'images/cbc-atm .png'),
	(11,'AG&P','Atlantic Gulf & Pacific Company of Manila Inc., Brgy. San Roque Bauan, Batangas',13.789907,120.988076,'images/cbc-atm .png'),
	(12,'Alabang Mall','Alabang Town Center, Alabang - Zapote Road cor. Madrigal Ave. Muntinlupa City',14.423969,121.030331,'images/cbc-atm .png'),
	(13,'Alfamart - Lumina','Alfamart Lumina, Aguinaldo Highway cor. Nueno Ave. Imus, Cavite',14.422676,120.942493,'images/cbc-atm .png'),
	(14,'Alfamart - Trece Martires','CPC Bldg., Governor\'s Drive cor. Hugo Perez Trece Martires, Cavite',14.282563,120.890727,'images/cbc-atm .png'),
	(15,'Alfamart A. Mabini Manggahan','A. Mabini Street, Manggahan Pasig City',14.601326,121.09361,'images/cbc-atm .png'),
	(16,'Alfamart Daez Camarin Caloocan','Daez Commercial Bldg., Susano Road, Bagumbong Kaloocan City',14.744611,121.035088,'images/cbc-atm .png'),
	(17,'Alfamart F.B. Harrison','GF F.B. Harrison St., Brgy. San Rafael Pasay City',14.546547,120.993647,'images/cbc-atm .png'),
	(18,'Alfamart Filinvest Tanza','Filinvest Ave., Westwood Place Subd., Ph.2, Brgy.Paradahan Tanza, Cavite',14.320983,120.861949,'images/cbc-atm .png'),
	(19,'Alfamart Golden City','Molino-Paliparan Road, Salawag Dasmariñas Cavite',14.349245,120.981142,'images/cbc-atm .png'),
	(20,'Alfamart Ilang-Ilang Tanza','Alfamart Ilang-Ilang Tanza, Ilang-ilang St., De Roman Subd., Daang Amaya 1 Tanza, Cavite',14.391303,120.852797,'images/cbc-atm .png'),
	(21,'Alfamart Jhocson Sampaloc','534-548 M.F. Jhocson St., Zone 042, Brgy. 408, Sampaloc Manila',14.60424,120.994837,'images/cbc-atm .png'),
	(22,'Alfamart L\'Paseo Arcade Indang','LGF \'Paseo Building, Indang-Trece Martires Road Indang, Cavite',14.196126,120.87801,'images/cbc-atm .png'),
	(23,'Alfamart Lancaster','Alfamart Lancaster, MCS Bldg., Advincula Ave., Alapan II-A Imus, Cavite',14.407437,120.903295,'images/cbc-atm .png'),
	(24,'Alfamart MAAX','Unit 111 Mall of Asia Annex Bldg. (MAAX) Seaside Blvd., San Rafael Pasay City',14.531019,120.983464,'images/cbc-atm .png'),
	(25,'Alfamart Naga Road Las Piñas','Alfamart, Naga Road, Pulang Lupa 2 Las Piñas City',14.467724,120.981257,'images/cbc-atm .png'),
	(26,'Alfamart Pacita Complex','Alfamart, Block 3 Phase 3A Pacita Complex San Pedro, Laguna',14.343414,121.057624,'images/cbc-atm .png'),
	(27,'Alfamart Poblacion 4 Calaca','#149 Marasigan St., Poblacion 4, Calaca Batangas',13.92894,120.813125,'images/cbc-atm .png'),
	(28,'Alfamart Poblacion Rosario','Ground floor, 153 Gen. Trias Drive, Rosario, Brgy. Poblacion Rosario, Cavite',14.416498,120.854693,'images/cbc-atm .png'),
	(29,'Alfamart San Lazaro','Units 108B-113B SM City San Lazaro, A.H. Lacson Ext., Sta. Cruz Manila',14.617292,120.986804,'images/cbc-atm .png'),
	(30,'Alfamart Villa Catalina Dasmariñas','Lot 6123 Don Placido Campos Avenue, San Agustin Dasmariñas City, Cavite',14.319873,120.940723,'images/cbc-atm .png'),
	(31,'Alfamart Yakal Silang Cavite','G/F Alfamart Yakal Silang Cavite, 137 Pedro Montoya St. cor. Yakal Silang, Cavite',14.224214,120.971663,'images/cbc-atm .png'),
	(32,'Ali Mall','ATM  Booth #1 UGF Ali Mall, P.Tuazon Blvd., Araneta Center Quezon City',14.619294,121.056303,'images/cbc-atm .png'),
	(33,'Ali Mall 2','LGF Times Square Entrance, Ali Mall, P. Tuazon Blvd., Araneta Center Quezon City',14.619583,121.057266,'images/cbc-atm .png'),
	(34,'Allen Avenue Catbalogan','Centro Mall, Allen Ave., Brgy. 04 Catbalogan City',11.776154,124.882056,'images/cbc-atm .png'),
	(35,'Alwana Business Park','National Highway, Brgy. Cugman Cagayan De Oro City',8.470089,124.701704,'images/cbc-atm .png'),
	(36,'Angeles University Foundation Medical Center','Basement, Angeles University Foundation Medical Center, McArthur Highway cor. Diego Silang St. Angeles City, Pampanga',15.145044,120.595111,'images/cbc-atm .png'),
	(37,'Araullo University','Araullo University, Maharlika Highway, Brgy. Bitas Cabanatuan City',15.495315,120.975976,'images/cbc-atm .png'),
	(38,'Ateneo De Davao University','Ateneo De Davao University, Roxas Ave, Poblacion District Davao City',7.072305,125.612198,'images/cbc-atm .png'),
	(39,'Ateneo De Manila University','G/F Kostka Hall, Ateneo De Manila University, Katipunan Ave., Loyola Heights Quezon City',14.639683,121.078213,'images/cbc-atm .png'),
	(40,'Avenue Hotel Bacolod','Avenue Suites Hotel and Spa, 12th St. cor Lacson St. Bacolod City',10.678377,122.954141,'images/cbc-atm .png'),
	(41,'Ayala Center Cebu','Level 3 ATM  1 Ayala Center Cebu, Cebu Business Park Cebu City',10.318656,123.904817,'images/cbc-atm .png'),
	(42,'Brent International School Manila','Brentville Subdivision, Mamplasan Binan, Laguna',14.302981,121.082128,'images/cbc-atm .png'),
	(43,'Budget Wise Supermarket','Budget Wise Supermarket, Veterans Ave. Zamboanga City',6.909613,122.079883,'images/cbc-atm .png'),
	(44,'Caltex - SLEX 1','South Luzon Expressway - Northbound, Brgy. San Antonio San Pedro, Laguna',14.355886,121.04584,'images/cbc-atm .png'),
	(45,'Cash And Carry','2/F Cash and Carry Mall, between South Super Highway & Filmore St., Brgy. Palanan Makati City',14.558765,121.006106,'images/cbc-atm .png'),
	(46,'CB Mall Urdaneta','CB Mall, McArthur Highway, Brgy. Nancayasan Urdaneta City, Pangasinan',15.970892,120.571063,'images/cbc-atm .png'),
	(47,'CBS Head Office Lobby','CBS Lobby, 314 Sen. Gil J. Puyat Avenue Makati City',14.561264,121.018173,'images/cbc-atm .png'),
	(48,'CDO Medical Center','CDO Medical Center Bldg. 2, Tiano Brothers cor. Nacalaban St. Cagayan De Oro City',8.485844,124.646911,'images/cbc-atm .png'),
	(49,'Cebu Doctors\' Hospital','Cebu Doctors\' University Hospital, Osmeña Blvd. Cebu City, Cebu',10.314354,123.891944,'images/cbc-atm .png'),
	(50,'Cebu Doctors\' University','Cebu Doctors\' University Hospital, #1 Potenciano Larrazabal Ave., North Reclamation Area Mandaue City, Cebu',10.31979,123.933252,'images/cbc-atm .png'),
	(51,'Celebes Coconut Butuan','Km 9, Brgy. Taguibo Butuan City, Agusan Del Norte',8.983609,125.547397,'images/cbc-atm .png'),
	(52,'Centrio Mall','G/F  Centrio Mall, CM Recto cor. Corrales St. Cagayan De Oro City',8.485282,124.651782,'images/cbc-atm .png'),
	(53,'Chiang Kai Shek','Chiang Kai Shek College, 1274 P. Algue St. Tondo Manila',14.607591,120.976695,'images/cbc-atm .png'),
	(54,'Clark gateway','Clark Gateway Commercial Complex, Gil Puyat Ave., Brgy. San Francisco Mabalacat, Pampanga',15.222627,120.573264,'images/cbc-atm .png'),
	(55,'Comembo Commercial Complex','Comembo Commercial Complex, J.P. Rizal Ext. cor. Sampaguita St., Comembo Makati City',14.54873,121.063724,'images/cbc-atm .png'),
	(56,'Commerce Center','Commerce Ave. cor. Filinvest Ave., Alabang Muntinlupa City',14.419108,121.034596,'images/cbc-atm .png'),
	(57,'Conrad S Maison Mall','2F Conrad Hotel, Coral Ave., SM MOA Complex Pasay City',14.53264,120.980668,'images/cbc-atm .png'),
	(58,'Corpus Christi','Corpus Christi School, Tomas Saco St., Macasandig Cagayan De Oro City',8.464908,124.644625,'images/cbc-atm .png'),
	(59,'Dagupan - Nepo Mall','G/F Nepo Mall Dagupan, Arellano St. Dagupan City, Pangasinan',16.051192,120.341819,'images/cbc-atm .png'),
	(60,'Dasmariñas Village Association Office','1417 Campanilla St., Brgy. Dasmariñas Village Makati City',14.537155,121.030659,'images/cbc-atm .png'),
	(61,'Davao Adventist Hospital','Km. 7 McArthur Highway, Bangkal St. Davao City',7.060146,125.555428,'images/cbc-atm .png'),
	(62,'Davao Metro Shuttle','Pereyras Terminal 1, Magugpo West Tagum City',7.448158,125.808097,'images/cbc-atm .png'),
	(63,'Dipolog Center Mall','Dipolog Center Mall, 138 Rizal Avenue Dipolog City, Zamboanga del Norte',8.586998,123.341212,'images/cbc-atm .png'),
	(64,'DIPSSCOR','Davao Integrated Port And Stevedoring Services Corporation Bldg., International Port of Davao, Sasa Wharf Davao City',7.130108,125.662357,'images/cbc-atm .png'),
	(65,'DLSU - Dasmariñas','College of Engineering De La Salle University Dasmariñas, Cavite',14.322384,120.963507,'images/cbc-atm .png'),
	(66,'DLSU - Health Science Campus','De La Salle University Health Science Campus Inc., Congressional Road Dasmariñas, Cavite',14.327093,120.94281,'images/cbc-atm .png'),
	(67,'DLSU MAC','G/F Medical Arts Centre Bldg., DLSU Medical Center Compound, Congressional Road Dasmariñas, Cavite',14.327721,120.943175,'images/cbc-atm .png'),
	(68,'Eagle Ridge Country Club','Club House, Eagle Ridge and Country Club, Brgy. Javalera Gen. Trias, Cavite',14.256674,120.909024,'images/cbc-atm .png'),
	(69,'Eastwood City Walk 2','G/F ATM  1 Eastwood City Walk Ph. 2, Eastwood City Cyberpark, 188 E. Rodriguez Jr. Ave., Bagumbayan Quezon City',14.609776,121.081105,'images/cbc-atm .png'),
	(70,'Eastwood Cybermall','2F Eastwood Cybermall, Eastwood Ave., Eastwood City Cyberpark, Bagumbayan Quezon City',14.607882,121.080241,'images/cbc-atm .png'),
	(71,'Eastwood Mall','Level 1 ATM  2 Ph.2, Eastwood Mall, E. Rodriguez Jr. Ave., Bagumbayan Quezon City',14.610436,121.079805,'images/cbc-atm .png'),
	(72,'ECCO Building','G/F ECCO Bldg. (beside unit A) Fil-Am Friendship Highway, Brgy. Anunas Angeles City, Pampanga',15.160469,120.556313,'images/cbc-atm .png'),
	(73,'Friendship Supermarket Muñoz NE','D. Delos Santos St., Science City of Muñoz Nueva Ecija',15.712199,120.904735,'images/cbc-atm .png'),
	(74,'Gaisano - Bulua','Gaisano Bulua Mall, Bulua St. Cagayan De Oro City',8.503871,124.612898,'images/cbc-atm .png'),
	(75,'Gaisano - Iligan','G/F Gaisano Citi Super Mall Iligan City, Lanao del Norte',8.231177,124.241612,'images/cbc-atm .png'),
	(76,'Gaisano - Lapu-Lapu City','Gaisano Mactan Island Mall, Pusok Lapu-Lapu City, Cebu',10.31746,123.962875,'images/cbc-atm .png'),
	(77,'Gaisano - Masbate','Gaisano Capital Masbate, Quezon St., Crossing Masbate City',12.359444,123.625927,'images/cbc-atm .png'),
	(78,'Gaisano - Puerto','Unit #1 ATM  - 2nd Level Gaisano Puerto, Sayre Highway, Puerto Cagayan De Oro City',8.500152,124.751536,'images/cbc-atm .png'),
	(79,'Gaisano Mall - Bajada Davao','Gaisano Mall of Davao, J.P. Laurel Ave. Bajada, Davao City',7.078076,125.613873,'images/cbc-atm .png'),
	(80,'Gaisano Mall - Cagayan De Oro','Unit #3 Level 2 Atrium Gaisano Mall, Corrales Extension cor. CM Recto Ave. Cagayan De Oro City',8.486261,124.651294,'images/cbc-atm .png'),
	(81,'Galeria Victoria','Galeria Victoria Mall, J. P. Rizal St, Poblacion, City of Balanga Bataan',14.679119,120.541401,'images/cbc-atm .png'),
	(82,'Gateway Mall','Booth 4 Level 2 Gateway Mall, Cubao Quezon City',14.622801,121.052907,'images/cbc-atm .png'),
	(83,'Glorietta 4','Glorietta 4, Ayala Center Makati City',14.550635,121.026435,'images/cbc-atm .png'),
	(84,'Golden Prince Hotel','Golden Prince Hotel & Suites, Acacia St. cor. Archbishop Reyes Ave. Cebu City',10.31675,123.901692,'images/cbc-atm .png'),
	(85,'Good Samaritan Hospital','Good Samaritan Compound, Burgos Avenue Cabanatuan City',15.491703,120.973189,'images/cbc-atm .png'),
	(86,'Greenbelt 3','Greenbelt 3 Drop-off Area, Makati Ave. Makati City',14.551842,121.021334,'images/cbc-atm .png'),
	(87,'Greenhills Theatre Mall','Main Entrance Greenhills Theater Mall San Juan City',14.602571,121.050617,'images/cbc-atm .png'),
	(88,'Greenmeadows Clubhouse','Lovebird St., Green Meadows Subdivision, Brgy. Ugong Norte Quezon City',14.597404,121.076063,'images/cbc-atm .png'),
	(89,'Grosvenor Square','Grosvenor Square, Josefa St. Angeles City, Pampanga',15.162558,120.582813,'images/cbc-atm .png'),
	(90,'High Pointe Medical Hub','241 Shaw Blvd.  Mandaluyong City',14.591047,121.033295,'images/cbc-atm .png'),
	(91,'Holy Angel University 2','G/F Holy Angel University Student\'s Center, Sto. Rosario St. Angeles City, Pampanga',15.133136,120.590203,'images/cbc-atm .png'),
	(92,'iAcademy Buendia','G/F iAcademy Plaza, H.V. Dela Costa St. Makati City',14.561376,121.019482,'images/cbc-atm .png'),
	(93,'Jackman Emporium','Jackman Emporium Department Store Bldg., Grace Park Kalookan City',14.654167,120.984157,'images/cbc-atm .png'),
	(94,'Jackman Plaza - Muñoz','Jackman Plaza Muñoz, EDSA, Muñoz Quezon City',14.657963,121.020973,'images/cbc-atm .png'),
	(95,'Jenra Jumbo Dolores','Olongapo-Gapan Road, Dolores San Fernando, Pampanga',15.040788,120.681788,'images/cbc-atm .png'),
	(96,'Jenra Mall','JENRA Grand Mall, Sto. Rosario St. Angeles City, Pampanga',15.135954,120.588171,'images/cbc-atm .png'),
	(97,'JGC Alabang','JGC PHILS. Bldg., 2109 Prime St., Madrigal Business Park Ph III, Ayala Alabang Muntinlupa City',14.428455,121.026847,'images/cbc-atm .png'),
	(98,'Jollibee Floridablanca','Macabulos St., Floridablanca Pampanga',14.974027,120.529071,'images/cbc-atm .png'),
	(99,'Jollibee Guagua','Jollibee Compound, Jose Abad Santos Avenue Guagua, Pampanga',14.985752,120.62444,'images/cbc-atm .png'),
	(100,'Jollibee Mabalacat','ATM  2 ATM  Center (beside Jollibee) McArthur Highway, Brgy. San Francisco Mabalacat City, Pampanga',15.221361,120.575345,'images/cbc-atm .png'),
	(101,'Katarungan Village','Katarungan Village Admin Office, F. Reria cor. University Road Muntinlupa City',14.388212,121.028345,'images/cbc-atm .png'),
	(102,'KCC Mall - GenSan','G/F KCC Mall GenSan, J. Catolico Sr. Ave. General Santos City, South Cotabato',6.116206,125.187512,'images/cbc-atm .png'),
	(103,'KCC Mall de Zamboanga','KCC Mall de Zamboanga, Gov. Camins Rd., Camino Nuevo Zamboanga City',6.920848,122.073383,'images/cbc-atm .png'),
	(104,'Kimston Plaza','Kimston Plaza, P. Victor St. cor. P. Burgos St., Guadalupe Nuevo Makati City',14.565766,121.046314,'images/cbc-atm .png'),
	(105,'KMSCI','Kidapawan Medical Specialist Center Inc., Sudapin Kidapawan City, Cotabato',7.022065,125.093295,'images/cbc-atm .png'),
	(106,'La Nueva Minglanilla','La Nueva Supermart, Poblacion, Minglanilla Cebu City',10.244808,123.795067,'images/cbc-atm .png'),
	(107,'La Nueva Supermart','La Nueva Supermart Inc., G.Y. Dela Serna St. Lapu-Lapu City',10.310544,123.952063,'images/cbc-atm .png'),
	(108,'Landmark - Makati','G/F The Landmark Bldg., Makati Ave., Ayala Center Makati City',14.5523,121.023474,'images/cbc-atm .png'),
	(109,'Landmark - Trinoma','ATM  Slot 4, 2F Landmark Trinoma, North Ave. cor. EDSA Quezon City',14.653082,121.033157,'images/cbc-atm .png'),
	(110,'LB Supermarket - Zamboanga','LB Realty Complex, Veteran\'s Ave. Extension Zamboanga City',6.928069,122.077718,'images/cbc-atm .png'),
	(111,'LCC Peñaranda','LCC Supermarket, Peñaranda cor. Rizal St. Legazpi City',13.147657,123.753659,'images/cbc-atm .png'),
	(112,'LCC Supermarket Ayala Legazpi','Liberty Center, Quezon Ave., Capantawan Legazpi City, Albay',13.147303,123.752039,'images/cbc-atm .png'),
	(113,'Lee Hypermarket','G/F Lee Plaza Hypermart, Jose E. Romero Sr. Ave., Bagacay Dumaguete City',9.30155,123.297649,'images/cbc-atm .png'),
	(114,'Lee Super Plaza','G/F Lee Super Plaza, M. Perdices cor. San Jose St. Dumaguete City',9.308068,123.307472,'images/cbc-atm .png'),
	(115,'Liana\'s Sampaloc','537 Earnshaw St. Sampaloc Manila',14.603668,120.992513,'images/cbc-atm .png'),
	(116,'Lim Ket Kai Mall','M4-193B LIMKETKAI Mall, Lim Ket Kai Drive Cagayan De Oro City',8.481444,124.656951,'images/cbc-atm .png'),
	(117,'Lopue\'s East Centre','Lopue\'s East Centre, Burgos St. cor. Carlos Hilado National Highway Bacolod City',10.663795,122.967061,'images/cbc-atm .png'),
	(118,'Lorma Hospital','Lorma Medical Center San Fernando City, La Union',16.631488,120.317974,'images/cbc-atm .png'),
	(119,'Lotus Central Mall','G/F Lotus Central Mall, Nueno Ave. Imus, Cavite',14.423464,120.940063,'images/cbc-atm .png'),
	(120,'LRT 2 Katipunan','Westbound, LRT 2 Katipunan Station, Aurora Blvd., Loyola Heights Quezon City',14.631007,121.072631,'images/cbc-atm .png'),
	(121,'LRT 2 Pureza','Westbound, LRT 2 Pureza Station, R. Magsaysay Blvd., Sta. Mesa Manila',14.601826,121.005068,'images/cbc-atm .png'),
	(122,'LRT 2 Recto East','East Side, LRT 2 Recto Station, Recto Avenue, Sta. Cruz Manila',14.603766,120.983433,'images/cbc-atm .png'),
	(123,'LRT 2 Recto West','West Side, LRT 2 Recto Station, Recto Avenue, Sta. Cruz Manila',14.603154,120.983341,'images/cbc-atm .png'),
	(124,'LRT 2 Santolan','Westbound, LRT 2 Santolan Station, Marcos Highway, Santolan Pasig City',14.622041,121.086038,'images/cbc-atm .png'),
	(125,'LRT 2 V. Mapa','Westbound, LRT 2 V. Mapa Station, R. Magsaysay Blvd., Sta. Mesa Manila',14.604193,121.017183,'images/cbc-atm .png'),
	(126,'MAAP','Maritime Academy of Asia and the Pacific, Kamaya Point Road, Mariveles Bataan',14.445719,120.550243,'images/cbc-atm .png'),
	(127,'Mactan Isla Resort','Agus Road, Ibabao, Marigondon Lapu Lapu City',10.28097,123.979762,'images/cbc-atm .png'),
	(128,'Mactan Marina Mall','G/F Mactan Marina Mall, MEPZ 1 Lapu-Lapu City',10.325766,123.977149,'images/cbc-atm .png'),
	(129,'Magic Mall','G/F Magic Mall, Alexander St., Poblacion Urdaneta City, Pangasinan',15.975514,120.567849,'images/cbc-atm .png'),
	(130,'Magic Starmall','UGF Magic Star Mall, Romulo Blvd., Brgy. Cut-Cut 1 Tarlac City',15.486777,120.587403,'images/cbc-atm .png'),
	(131,'Malabon Citisquare','G/F Malabon Citisquare, C-4 Road cor. Dagat-dagatan Ave. Malabon City',14.658319,120.961167,'images/cbc-atm .png'),
	(132,'Malolos Off-branch','G/F Graceland Mall, Bulacan State University Grounds, McArthur Highway, Guinhawa Malolos City, Bulacan',14.857071,120.812821,'images/cbc-atm .png'),
	(133,'Malta Hospital Toril','Malta Hospital Toril, McArthur Highway Toril, Davao',7.023581,125.501662,'images/cbc-atm .png'),
	(134,'Maria Reyna Hospital','Beside Hospital Entrance/Exit, Maria Reyna Hospital, T.J. Hayes St. Cagayan De Oro City',8.475266,124.654987,'images/cbc-atm .png'),
	(135,'Mariton Grocery Don Domingo','Mariton Grocery, Don Domingo Tuguegarao City, Cagayan',17.625018,121.734175,'images/cbc-atm .png'),
	(136,'Market City','Market City Bldg., Bus Terminal, Agora Cagayan De Oro City',8.488792,124.658315,'images/cbc-atm .png'),
	(137,'Market! Market! 1','Market! Market!, Fort Bonifacio Global City Taguig City',14.549837,121.056472,'images/cbc-atm .png'),
	(138,'Market! Market! 2','2F Market! Market!, Fort Bonifacio Global City Taguig City',14.549943,121.055543,'images/cbc-atm .png'),
	(139,'Market! Market! 3','G/F ATM  Center in Fiesta Market, Market! Market!, Fort Bonifacio Global City Taguig City',14.549755,121.055333,'images/cbc-atm .png'),
	(140,'Marquee Mall 1','G/F Activity Center, Marquee Mall, Aniceto Gueco St. Angeles City, Pampanga',15.163024,120.610102,'images/cbc-atm .png'),
	(141,'Matina Town Square','G/F Strip Bldg., Matina Town Center, along McArthur Highway Matina, Davao',7.063628,125.596704,'images/cbc-atm .png'),
	(142,'MCIA - Domestic Check in area','Mactan Cebu International Airport, Lapu-Lapu Airport Road Lapu Lapu City',10.316044,123.978845,'images/cbc-atm .png'),
	(143,'MCIA - Domestic Departure hall','Mactan Cebu International Airport, Lapu-Lapu Airport Road Lapu Lapu City',10.315907,123.978705,'images/cbc-atm .png'),
	(144,'MCIA Departure Check-in Southwing','Mactan Cebu International Airport, Lapu Lapu Airport Road Lapu Lapu City, Cebu',10.315884,123.979121,'images/cbc-atm .png'),
	(145,'MCIA Domestic Arrival','Mactan Cebu International Airport, Lapu Lapu Airport Road Lapu Lapu City, Cebu',10.316449,123.979139,'images/cbc-atm .png'),
	(146,'Medical City','Medical City, Ortigas Ave. Pasig City',14.589819,121.06916,'images/cbc-atm .png'),
	(147,'Metro Point Mall','3F Metro Point Mall, EDSA cor. Taft Ave. Pasay City',14.538106,121.001148,'images/cbc-atm .png'),
	(148,'Metrowalk','ATM  1 Bldg C, G/F Metrowalk Commercial Complex, Meralco Ave. Pasig City',14.58743,121.06493,'images/cbc-atm .png'),
	(149,'Midas Hotel','Midas Hotel, 2702 Roxas Blvd. Pasay City',14.539757,120.993226,'images/cbc-atm .png'),
	(150,'Mindanao Sanitarium and Hospital','Mindanao Sanitarium and Hospital, Tibanga Highway Iligan City, Lanao del Norte',8.240641,124.247425,'images/cbc-atm .png'),
	(151,'MJS Hospital','Manuel J. Santos Hospital, 554 Montilla Blvd. Butuan City',8.947101,125.540853,'images/cbc-atm .png'),
	(152,'Mother Teresa Hospital','Mother Teresa of Calcutta Medical Center, McArthur Highway, Brgy. Maimpis City of San Fernando, Pampanga',15.065005,120.652801,'images/cbc-atm .png'),
	(153,'MRT - Boni Station','MRT - Boni Station, EDSA Mandaluyong City',14.573497,121.047749,'images/cbc-atm .png'),
	(154,'MRT - Cubao Station','MRT - Cubao Station, EDSA Quezon City',14.61933,121.051336,'images/cbc-atm .png'),
	(155,'Multinational Clubhouse','Clubhouse, Nazareth cor. Judea St., Multinational Village Parañaque City',14.490621,121.006423,'images/cbc-atm .png'),
	(156,'Muzon Uptown','G/F Muzon Uptown, Brgy. Muzon San Jose Del Monte, Bulacan',14.802021,121.035509,'images/cbc-atm .png'),
	(157,'Nagaland E-mall','P.Diaz cor. Elias Angeles St., San Francisco Naga City, Cebu',13.625048,123.1864,'images/cbc-atm .png'),
	(158,'Nepo Mall - Angeles','Nepo Mall Angeles, Doña Teresa Ave. cor. St. Joseph St., Nepo Mart Complex Angeles City, Pampanga',15.134864,120.588583,'images/cbc-atm .png'),
	(159,'Newport Mall 4F','4F Newport Mall, Resorts World, Newport City Pasay City',14.518759,121.020256,'images/cbc-atm .png'),
	(160,'Northside Doctors Hospital','Northside Doctors Hospital, Guimod, Bantay Vigan City, Ilocos Sur',17.603354,120.394024,'images/cbc-atm .png'),
	(161,'Notre Dame de Chartres Hospital','Notre Dame De Chartres Hospital, #25 Gen. Luna Road Baguio City',16.415321,120.598372,'images/cbc-atm .png'),
	(162,'Nova Square','G/F Nova Square, Quirino Highway, Brgy. San Bartolome, Novaliches Quezon City',14.701541,121.035237,'images/cbc-atm .png'),
	(163,'Nueva Ecija Doctors Hospital','Nueva Ecija Doctors Hospital, Maharlika Highway Cabanatuan City',15.458009,120.94888,'images/cbc-atm .png'),
	(164,'Nuvali Solenad 2','G/F Solenad 2 Nuvali, Sta. Rosa-Tagaytay Road, Don Jose Sta. Rosa, Laguna',14.238462,121.056828,'images/cbc-atm .png'),
	(165,'Nuvali Solenad 3 Bldg. B','G/F Bldg. B Solenad 3 Nuvali, Sta. Rosa-Tagaytay Road, Don Jose Sta. Rosa, Laguna',14.237405,121.057834,'images/cbc-atm .png'),
	(166,'Nuvali Solenad Hawkers Market','Hawkers Market, Solenad 3 Nuvali, Sta. Rosa-Tagaytay Road, Don Jose Sta. Rosa, Laguna',14.236275,121.055716,'images/cbc-atm .png'),
	(167,'Ocean Adventure','Ocean Adventure, Camayan Wharf, West Ilalin Forest Area, Subic Bay Freezone Angeles City, Pampanga',14.764562,120.253309,'images/cbc-atm .png'),
	(168,'One E-Com Center','G/F One E-Com Center, Palm Coast Ave., SM MOA Complex Pasay City',14.538476,120.981334,'images/cbc-atm .png'),
	(169,'One Mall Valenzuela','Gen. T. De Leon Valenzuela City',14.687088,121.000224,'images/cbc-atm .png'),
	(170,'Orchard Golf and Country Club','Gate 2, The Orchard Golf and Country Club Inc., Jose Abad Santos Dasmariñas City, Cavite',14.350805,120.961452,'images/cbc-atm .png'),
	(171,'OSPA - Farmers\' Medical Center','Ormoc Sugarcane Planters Association - Farmers Medical Center, Carlota Hills, Brgy. Can-Adieng Ormoc City, Leyte',11.004251,124.614821,'images/cbc-atm .png'),
	(172,'Our Lady of the Pillar','G/F Our Lady of the Pillar Medical Center (near Emergency Room) Tamsui Ave., Bayan Luma II Imus, Cavite',14.419276,120.939196,'images/cbc-atm .png'),
	(173,'Pacific Mall 2','Pacific Mall Bldg., Landco Business Park, F. Imperial St., Legazpi Port District Legazpi City',13.145886,123.749922,'images/cbc-atm .png'),
	(174,'Pangasinan Medical Center','Pangasinan Medical Center, Nable St. Dagupan City',16.046261,120.340412,'images/cbc-atm .png'),
	(175,'Pavillion Mall','G/F Bldg. A, Pavilion Mall, KM. 35 Brgy. San Antonio Biñan, Laguna',14.328259,121.0885,'images/cbc-atm .png'),
	(176,'PELCO III Apalit','PELCO III, Mc Arthur Highway, Sampaloc Apalit, Pampanga',14.961653,120.759104,'images/cbc-atm .png'),
	(177,'Plaza Fina Magalang','Plaza Fina, Don Andres Luciano St. Magalang, Pampanga',15.213715,120.661899,'images/cbc-atm .png'),
	(178,'Porta Vaga Mall','Porta Vaga Mall, Along Session Road Baguio City',16.412222,120.598123,'images/cbc-atm .png'),
	(179,'PPL McDonald\'s Ormoc','G/F IAL Building, Burgos St. cor. Rizal St. Ormoc City',11.005295,124.607478,'images/cbc-atm .png'),
	(180,'Prince Hypermart Daanbantayan','Prince Hypermart, Poblacion Daanbantayan, Cebu',11.249653,124.001632,'images/cbc-atm .png'),
	(181,'Prince Mall of Baybay','Prince Town Baybay, Andres Bonifacio & Manuel L. Quezon St. Leyte',10.676534,124.800211,'images/cbc-atm .png'),
	(182,'Puregold - Blumentritt','286 Blumentritt St., Sta Cruz Manila',14.622997,120.982693,'images/cbc-atm .png'),
	(183,'Puregold - Dau','Lot 9 Blk 19 Cosco Building, McArthur Highway, Dau Mabalacat, Pampanga',15.174623,120.589333,'images/cbc-atm .png'),
	(184,'Puregold - E. Rodriguez','ATM  #1 Puregold E. Rodriguez, Cosco Bldg., E. Rodriguez Ave. cor. G. Araneta Ave. Quezon City',14.618219,121.014162,'images/cbc-atm .png'),
	(185,'Puregold - Lakefront','Puregold Lakefront, Presidio Subdivision, Lakefront Muntinlupa City',14.466117,121.055104,'images/cbc-atm .png'),
	(186,'Puregold - Maypajo Kalookan','Puregold Maypajo, J.P. Rizal St., Brgy. Maypajo Kaloocan City',14.637772,120.974834,'images/cbc-atm .png'),
	(187,'Puregold - Obando','Puregold Obando, P. Sevilla St., Brgy. Catanghalan Obando, Bulacan',14.705439,120.941381,'images/cbc-atm .png'),
	(188,'Puregold - Paso De Blas','LGF Puregold Plaso de Blas, Plaso de Blas cor. Gen. Luis St., Malinta Exit Valenzuela City',14.708247,120.993908,'images/cbc-atm .png'),
	(189,'Puregold Jr. - Pandacan','Puregold Jr. Pandacan, West J. Zamora St., Pandacan Manila',14.585724,121.001535,'images/cbc-atm .png'),
	(190,'Quicklean Maybunga','369 Dr. Sixto Antonio Avenue, Maybunga Pasig City',14.58103,121.083108,'images/cbc-atm .png'),
	(191,'Quickmart Daraga','Quickmart Bldg., Rizal St. Daraga, Albay',13.149033,123.714911,'images/cbc-atm .png'),
	(192,'Resorts World Gaming Area','G/F Casino Gaming Area, Resorts World Pasay City',14.518587,121.019777,'images/cbc-atm .png'),
	(193,'Rivera Hospital Panabo','Rivera Medical Center, National Highway, 7302 Brgy. San Francisco Panabo City',7.313069,125.685764,'images/cbc-atm .png'),
	(194,'Robinsons Calasiao','Robinsons Place Pangasinan, Brgy. San Miguel Calasiao, Pangasinan',16.022236,120.358615,'images/cbc-atm .png'),
	(195,'Robinsons Forum Pioneer','ATM  Center Pioneer Side, Forum Robinsons,Pioneer St. cor. EDSA Mandaluyong City',14.571878,121.047748,'images/cbc-atm .png'),
	(196,'Robinsons Galleria','Robinsons Galleria, EDSA cor. Ortigas Ave. Pasig City',14.591096,121.059546,'images/cbc-atm .png'),
	(197,'Robinsons Galleria 2','Robinsons Galleria, EDSA cor. Ortigas Ave. Pasig City',14.591097,121.059547,'images/cbc-atm .png'),
	(198,'Robinsons Galleria 3','West Wing, Robinsons Galleria, EDSA cor. Ortigas Ave. Pasig City',14.591579,121.05896,'images/cbc-atm .png'),
	(199,'Robinsons GenSan','G/F Robinsons Gensan, Jose Catolico Sr. Ave., Brgy. Lagao General Santos City, South Cotabato',6.12082,125.190716,'images/cbc-atm .png'),
	(200,'Robinsons Place - Manila','G/F Padre Faura Entrance, Robinsons Place Manila, Pedro Gil cor. Adriatico St., Ermita Manila',14.578259,120.98343,'images/cbc-atm .png'),
	(201,'Robinsons Tagum','National hway, Brgy. Magugpo Tagum, Davao del Norte',7.429273,125.79756,'images/cbc-atm .png'),
	(202,'Rockwell Business Center','Rockwell Business Center, Ortigas Ave. Pasig City',14.589582,121.067702,'images/cbc-atm .png'),
	(203,'Rockwell Power Plant','Stall No. 060 Ground Level, Power Plant Mall Makati City',14.56527,121.036456,'images/cbc-atm .png'),
	(204,'Royce Hotel','Royce Hotel, Manuel A. Roxas Highway cor. Ninoy Aquino Avenue, Clark Freeport Zone Mabalacat, Pampanga',15.180761,120.53012,'images/cbc-atm .png'),
	(205,'Royce Hotel 2','Royce Hotel, Manuel A. Roxas Highway cor. Ninoy Aquino Avenue, Clark Freeport Zone Mabalacat, Pampanga',15.180666,120.530077,'images/cbc-atm .png'),
	(206,'Royce Hotel 3','Royce Hotel, Manuel A. Roxas Highway cor. Ninoy Aquino Avenue, Clark Freeport Zone Mabalacat, Pampanga',15.180262,120.529931,'images/cbc-atm .png'),
	(207,'RPGMC Tuguegarao','Ronald P. Guzman Medical Center, Enrile Blvd., Carig Tuguegarao City, Cagayan',17.649552,121.75604,'images/cbc-atm .png'),
	(208,'SAMULCO','Sta. Ana Multi-Purpose Cooperative, Bldg. 1, Monteverde St. Davao City',7.050289,125.541016,'images/cbc-atm .png'),
	(209,'San Fernando Hospital','San Fernandino Hospital, McArthur Highway, Bo. Dolores San Fernando, Pampanga',15.043545,120.674924,'images/cbc-atm .png'),
	(210,'Savers Center','G/F Savers Center (right side of Main Entrance) along EDSA cor. Taft Ave. Pasay City',14.537873,121.000012,'images/cbc-atm .png'),
	(211,'Savewise - Pozorrubio','Savewise Bldg., Caballero St., Brgy. Cablong Pozorrubio, Pangasinan',16.114821,120.543434,'images/cbc-atm .png'),
	(212,'Shop And Ride','248 Gen. Luis St., Brgy. Nova Proper, Novaliches Quezon City',14.721571,121.037394,'images/cbc-atm .png'),
	(213,'Shop and Ride 2','ATM  2, 248 Gen. Luis St., Brgy. Nova Proper, Novaliches Quezon City',14.72167,121.037082,'images/cbc-atm .png'),
	(214,'Shopwise - Antipolo','Shopwise Bldg., M.L. Quezon St. cor. Circumferential Road, San Roque Antipolo City, Rizal',14.581422,121.175561,'images/cbc-atm .png'),
	(215,'Shopwise - Cebu','Shopwise Bldg., N. Bacalso Ave., Basak, San Nicolas Cebu City, Cebu',10.289132,123.870887,'images/cbc-atm .png'),
	(216,'Shopwise - Commonwealth','Shopwise, Blk 17, Commonwealth Ave. Quezon City',14.677027,121.08188,'images/cbc-atm .png'),
	(217,'Shopwise - San Pedro','Shopwise, National Highway, Brgy. Landayan San Pedro, Laguna',14.348585,121.065713,'images/cbc-atm .png'),
	(218,'Sibalom Municipal Antique','G/F Sibalom Municipal hall Sibalom, Antique',10.789378,122.018127,'images/cbc-atm .png'),
	(219,'Skyrise Realty','G/F Skyrise IT Bldg., Gorordo Ave. cor. N.Escario St. Cebu City, Cebu',10.331714,123.907981,'images/cbc-atm .png'),
	(220,'SM Center Angono','SM Center Angono, Quezon Ave. Angono, Rizal',14.530951,121.15368,'images/cbc-atm .png'),
	(221,'SM Center Imus','N.I.A. Road, Barangay Bucandala III Imus, Cavite',14.408854,120.924656,'images/cbc-atm .png'),
	(222,'SM Center Las Piñas','G/F SM Center Las Piñas, Alabang - Zapote Road Las Piñas City',14.448674,120.980603,'images/cbc-atm .png'),
	(223,'SM Center Tuguegarao','2F SM Center Tuguegarao Downtown, Luna St. cor Mabinit St. Tuguegarao City',17.612705,121.723615,'images/cbc-atm .png'),
	(224,'SM City Bacolod','G/F Bldg. A, ATM  #3 SM City Bacolod, Reclamation Area Bacolod City',10.672738,122.944297,'images/cbc-atm .png'),
	(225,'SM City Baliwag','G/F SM City Baliwag, Doña Remedios Trinidad Highway, Brgy. Pagala Baliwag, Bulacan',14.961144,120.892032,'images/cbc-atm .png'),
	(226,'SM City Batangas','SM City Batangas, M.Pastor Ave., Pastor Village, Brgy. Pallocan Kanluran Batangas City',13.75564,121.068233,'images/cbc-atm .png'),
	(227,'SM City Batangas 2','SM City Batangas, M.Pastor Ave, Pastor Village, Brgy. Pallocan Kanluran Batangas City, Batangas',13.755621,121.070385,'images/cbc-atm .png'),
	(228,'SM City Cabanatuan','ATM  Center, SM City Cabanatuan, Maharlika Highway, Brgy. H. Concepcion Cabanatuan City',15.466909,120.954152,'images/cbc-atm .png'),
	(229,'SM City Cagayan De Oro','ATM  Center 2, Main Entrance, SM City Cagayan de Oro, Masterson Ave. Cagayan De Oro City',8.455255,124.623723,'images/cbc-atm .png'),
	(230,'SM City Calamba','G/F SM City Calamba, National Road, Brgy. Real Calamba City, Laguna',14.203224,121.155286,'images/cbc-atm .png'),
	(231,'SM City Calamba 2','2F SM City Calamba, National Road, Brgy. Real Calamba City, Laguna',14.203285,121.155263,'images/cbc-atm .png'),
	(232,'SM City Calamba 3','SM City Calamba, National Road, Brgy. Real Calamba City, Laguna',14.204319,121.154448,'images/cbc-atm .png'),
	(233,'SM City Cauayan','Maharlika Highway, Brgy. District II Cauayan City, Isabela',16.9369,121.769041,'images/cbc-atm .png'),
	(234,'SM City Clark Off-Branch','ATM  #1 SM City Clark (in-front of transport terminal) M. Roxas Highway, CSEZ Angeles City, Pampanga',15.168215,120.581879,'images/cbc-atm .png'),
	(235,'SM City Dasmariñas 2','G/F SM City Dasmariñas, Governor\'s Drive cor. Aguinaldo Highway, Brgy. Sampaloc 1 Dasmariñas, Cavite',14.301924,120.955206,'images/cbc-atm .png'),
	(236,'SM City General Santos','SM City General Santos, Santiago Blvd. cor. San Miguel St., Brgy. Lagao General Santos City, South Cotabato',6.115901,125.179693,'images/cbc-atm .png'),
	(237,'SM City Lipa Off-Branch','ATM  2, SM City Lipa, Ayala Highway, Brgy. Maraouy Lipa City, Batangas',13.954267,121.163571,'images/cbc-atm .png'),
	(238,'SM City Rosales','SM City Rosales, MacArthur Highway, Carmen East Rosales, Pangasinan',15.878973,120.602565,'images/cbc-atm .png'),
	(239,'SM City Tarlac','G/F SM City Tarlac, McArthur Highway, Brgy. San Roque Tarlac City',15.477583,120.595134,'images/cbc-atm .png'),
	(240,'SM Davao','ATM  Center 1, SM City Davao, Quimpo Blvd. cor. Tulip Drive, Brgy. Matina Davao City',7.050021,125.589549,'images/cbc-atm .png'),
	(241,'SM Hyeprmarket - Mandaluyong','SM Hypermarket Mandaluyong, 121 Shaw Blvd. cor. E.Magalona St., Brgy. Bagong Silang Mandaluyong City',14.592651,121.029725,'images/cbc-atm .png'),
	(242,'SM Lanang Premier Off-branch','UGF SM Lanang Premier, J.P. Laurel Ave., Brgy. San Antonio Davao City',7.099664,125.631182,'images/cbc-atm .png'),
	(243,'SM Lemery','SM Center Lemery, Ilustre Avenue Lemery, Batangas',13.886862,120.912265,'images/cbc-atm .png'),
	(244,'SM Manila','UGF SM Manila Main Entrance, Natividad A. Lopez cor. Antonio Villegas St., Ermita Manila',14.589812,120.982534,'images/cbc-atm .png'),
	(245,'SM Marilao Off-branch','G/F SM City Marilao, MacArthur Highway Marilao, Bulacan',14.753696,120.955128,'images/cbc-atm .png'),
	(246,'SM Market Mall','ATM  3 SM Market Mall Dasmariñas, Congressional Ave., Dasmariñas Bagong Bayan Dasmariñas, Cavite',14.328043,120.95995,'images/cbc-atm .png'),
	(247,'SM Megamall Bldg. B','Level 2 Bldg. B, SM Megamall, EDSA cor. Julia Vargas St. Mandaluyong City',14.583377,121.057165,'images/cbc-atm .png'),
	(248,'SM MOA Hypermarket','G/F SM Hypermarket, SM Mall of Asia Pasay City',14.536845,120.981708,'images/cbc-atm .png'),
	(249,'SM MOA Seaside Ferry Terminal','SM MOA Seaside Blvd. near Esplanade Pasay City',14.541569,120.980282,'images/cbc-atm .png'),
	(250,'SM Muntinlupa','ATM  2 G/F (beside Rear Entrance) SM Muntinlupa, National Road, Brgy. Tunasan Muntinlupa City',14.377316,121.044305,'images/cbc-atm .png'),
	(251,'SM Supercenter Molino','G/F SM Supercenter Molino, Molino Road,  Brgy. Molino 4 Bacoor, Cavite',14.383571,120.976766,'images/cbc-atm .png'),
	(252,'SM Taytay Off-branch','2F Bldg. A, SM Taytay, Manila East Road, Brgy. Dolores Taytay, Rizal',14.565297,121.141481,'images/cbc-atm .png'),
	(253,'Socsargen County Hospital','Socsargen County Hospital, Arradaza St. General Santos City, South Cotabato',6.11834,125.189866,'images/cbc-atm .png'),
	(254,'Solaire Manila 2','Entertainment City, Aseana Ave., Tambo Parañaque',14.523765,120.981836,'images/cbc-atm .png'),
	(255,'Solaire Resort & Casino','Entertainment City, Aseana Ave., Tambo Parañaque City',14.523029,120.981655,'images/cbc-atm .png'),
	(256,'South Town Centre Talisay','South Gate Mall, Tabunok Talisay, Cebu',10.267043,123.842985,'images/cbc-atm .png'),
	(257,'Southgate Mall','Alphaland Southgate Mall, EDSA cor. Chino Roces Ave. Makati City',14.541125,121.019283,'images/cbc-atm .png'),
	(258,'Southway Mall','The Southway Square Mall, Gov. Lim Ave. cor. La Purisima St. Zamboanga City',6.905858,122.076661,'images/cbc-atm .png'),
	(259,'St. Francis Square','Basement 1 St. Francis Square, Doña Julia Vargas Ave. cor. Bank Drive, Ortigas Center Mandaluyong City',14.585134,121.05825,'images/cbc-atm .png'),
	(260,'St. Jude College','Dimasalang St. cor. Don Quijote St., Sampaloc Manila',14.616009,120.98891,'images/cbc-atm .png'),
	(261,'St. Luke\'s - The Fort','Basement, St. Luke\'s Medical Center, 5th Ave., Fort Bonifacio Global City Taguig City',14.555291,121.048232,'images/cbc-atm .png'),
	(262,'St. Luke\'s - The Fort 2','Basement, St. Luke\'s Medical Center, 5th Ave., Fort Bonifacio Global City Taguig City',14.554773,121.048644,'images/cbc-atm .png'),
	(263,'Sta. Rosa Hospital','Sta. Rosa Hospital and Medical Center, San Lorenzo Road, Brgy. Balibago Sta. Rosa, Laguna',14.287327,121.095528,'images/cbc-atm .png'),
	(264,'STI - Delos Santos Medical Center','201 E.Rodriguez Sr. Blvd. Quezon City',14.620066,121.017373,'images/cbc-atm .png'),
	(265,'Super Metro Carcar','Natalio B. Bacalso National Highway Carcar City',10.109136,123.65142,'images/cbc-atm .png'),
	(266,'Superl Phils Bacolor','Angeles Industrial Park, PEZA, Brgy. Calibutbut, Bacolor Pampanga',15.111704,120.597242,'images/cbc-atm .png'),
	(267,'Taft U.N.','G/F Times Plaza, T.M Kalaw cor. Gen. Luna St., Ermita Manila',14.582402,120.984181,'images/cbc-atm .png'),
	(268,'Target Mall 1','G/F Target Mall, Sta. Rosa Commercial Complex, Brgy. Balibago Sta. Rosa, Laguna',14.29437,121.103874,'images/cbc-atm .png'),
	(269,'Target Mall 2','ATM  4 Canopy Area, Target Mall, Sta. Rosa Commercial Complex, Brgy. Balibago Sta. Rosa, Laguna',14.293887,121.103663,'images/cbc-atm .png'),
	(270,'The A Venue','G/F Valdez Site, The A Venue, 7829 Makati Ave. Makati City',14.566332,121.029872,'images/cbc-atm .png'),
	(271,'The District - Dasmariñas','G/F The District - Dasmariñas, Molino-Paliparan Road Dasmariñas, Cavite',14.359499,120.982048,'images/cbc-atm .png'),
	(272,'The District - Imus','The District Imus, Aguinaldo Highway cor. Daang Hari Road, Brgy. Anabu II-D Imus, Cavite',14.371067,120.939663,'images/cbc-atm .png'),
	(273,'Tiendesitas','Tiendesitas, Ortigas Ave. cor E. Rodriquez Ave. Pasig City',14.585584,121.077846,'images/cbc-atm .png'),
	(274,'Toyota San Nicolas','Brgy.16 San Marcos, San Nicolas Ilocos Norte',18.154421,120.586333,'images/cbc-atm .png'),
	(275,'Trinoma Off-branch 1','Level 1 Trinoma, North Ave. cor. EDSA Quezon City',14.652863,121.033138,'images/cbc-atm .png'),
	(276,'Trinoma Off-branch 2','Level 1 Trinoma, North Ave. cor. EDSA Quezon City',14.652607,121.033508,'images/cbc-atm .png'),
	(277,'Two Shopping Center','Two Shopping Center, Taft Ave. Ext., 026 Zone 10 Pasay City',14.536351,120.999492,'images/cbc-atm .png'),
	(278,'Unimart Greenhills','B1 Unimart Greenhills Shopping Center, Ortigas Ave. San Juan City',14.602384,121.048131,'images/cbc-atm .png'),
	(279,'Union Christian College','Union Christian College, Widdoes St., Brgy. II San Fernando City, La Union',16.613377,120.317154,'images/cbc-atm .png'),
	(280,'University of Baguio','University of Baguio, Assumption Road Baguio City',16.41582,120.597677,'images/cbc-atm .png'),
	(281,'University of Bohol','University of Bohol, Ma. Clara St. Tagbilaran City, Bohol',9.648667,123.854015,'images/cbc-atm .png'),
	(282,'University of Perpetual Help - Biñan','Dr. Jose Tamayo Medical Bldg., University of Perpetual Help System Laguna, Brgy. Sto. Niño Biñan, Laguna',14.330919,121.084795,'images/cbc-atm .png'),
	(283,'University of San Carlos','University of San Carlos Main University Bldg., Pantaleon del Rosario St. Cebu City',10.299514,123.89886,'images/cbc-atm .png'),
	(284,'UP Town Center','2F UP Town Center, Katipunan Ave., Brgy. UP Campus Diliman Quezon City',14.648891,121.075143,'images/cbc-atm .png'),
	(285,'UPM - PGH','Faculty Medical Arts Bldg., PGH Compound, Taft Ave., Ermita Manila',14.57727,120.987103,'images/cbc-atm .png'),
	(286,'USC - Talamban','USC Talamban Campus, Gov. M. Cuenco Ave., Brgy. Nasipit, Talamban Cebu City',10.352012,123.913529,'images/cbc-atm .png'),
	(287,'USJR Basak cebu','University of San Jose Recoletos Basak, N.Bacalso Ave., Basak Pardo Cebu City',10.289686,123.861659,'images/cbc-atm .png'),
	(288,'UST - Doctor\'s Clinic','University of Sto. Tomas Hospital, Vestibule and New Doctor\'s Clinic, A.H. Lacson Ave., Sampaloc Manila',14.610871,120.990374,'images/cbc-atm .png'),
	(289,'UST Hospital','University of Sto. Tomas Hospital, A.H. Lacson Ave., Sampaloc Manila',14.61157,120.990079,'images/cbc-atm .png'),
	(290,'UST Hospital 3','G/F Clinical Division, University of Sto. Tomas Hospital, A.H. Lacson Ave., Sampaloc Manila',14.611464,120.990153,'images/cbc-atm .png'),
	(291,'Victory Center Mall','ATM  2 G/F Victory Central Mall, #717 Old Victory Compound, Rizal Ave., Monumento Kalookan City',14.655487,120.983274,'images/cbc-atm .png'),
	(292,'Victory Food Market Baclaran','Victory Food Market, Redemptorist Road, Baclaran Parañaque City',14.532064,120.9946,'images/cbc-atm .png'),
	(293,'Victory Pasay Mall','Victory Pasay Mall, Antonio S. Arnaiz Ave Pasay City',14.546709,120.998404,'images/cbc-atm .png'),
	(294,'Virac Town Center','Catanduanes Circumferencial Road Virac, Catanduanes',13.579351,124.228506,'images/cbc-atm .png'),
	(295,'Wack Wack Golf & Country Club','Main Lobby Clubhouse, Wack Wack Golf & Country Club, Shaw Blvd. Mandaluyong City',14.589283,121.049172,'images/cbc-atm .png'),
	(296,'Walter Mart - Cabanatuan','Maharlika Highway, Brgy. Dicarma Cabanatuan City, Nueva Ecija',15.48621,120.972035,'images/cbc-atm .png'),
	(297,'Walter Mart - Calamba','Waltermart Calamba, Real St., Brgy. Real Calamba City, Laguna',14.202336,121.153339,'images/cbc-atm .png'),
	(298,'Walter Mart - Carmona','G/F Walter Mart Carmona, Macaria Business Center, Governor\'s Drive Carmona, Cavite',14.313974,121.050323,'images/cbc-atm .png'),
	(299,'Walter Mart - Dasmariñas','G/F Walter Mart Dasmariñas, Barrio Burol Aguinaldo Highway Dasmariñas, Cavite',14.325722,120.94117,'images/cbc-atm .png'),
	(300,'Walter Mart - Gen. Trias','Waltermart General Trias, Governors Drive, Barrio Mangahan General Trias, Cavite',14.291272,120.908403,'images/cbc-atm .png'),
	(301,'Walter Mart - Makati','G/F Waltermart Makati, 790 Chino Roces Ave. cor. Antonio Arnaiz Makati City',14.550784,121.012565,'images/cbc-atm .png'),
	(302,'Walter Mart - North EDSA','Walter Mart Bldg., EDSA Quezon City',14.656966,121.020714,'images/cbc-atm .png'),
	(303,'Walter Mart - San Fernando','Walter Mart San Fernando, McArthur Highway, Brgy. San Agustin San Fernando, Pampanga',15.04851,120.66578,'images/cbc-atm .png'),
	(304,'Walter Mart - Sta. Rosa 1','UGF Waltermart Sta. Rosa, Balibago Road, Brgy. Balibago Sta. Rosa, Laguna',14.2881,121.09447,'images/cbc-atm .png'),
	(305,'Walter Mart - Sta. Rosa 2','UGF Waltermart Sta. Rosa, Balibago Road, Brgy. Balibago Sta. Rosa, Laguna',14.288321,121.094211,'images/cbc-atm .png'),
	(306,'Walter Mart - Sta. Rosa Bel-Air','Walter Mart Bel-Air, Sta. Rosa-Tagaytay Road, Pulong Sta. Cruz Sta. Rosa, Laguna',14.267877,121.077913,'images/cbc-atm .png'),
	(307,'Walter Mart - Sucat','Walter Mart Sucat, Dr. A. Santos Ave., Brgy. San Isidro, Sucat Parañaque City',14.472061,121.007713,'images/cbc-atm .png'),
	(308,'Walter Mart - Tagaytay','G/F Ayala Mall Serin, Tagaytay-Nasugbu Highway, Silang Junction South Tagaytay City',14.113197,120.959322,'images/cbc-atm .png'),
	(309,'Waltermart - Tanauan','Walter Mart Tanauan, J. P. Laurel National Highway, Brgy. Darasa Tanauan, Batangas',14.074527,121.150912,'images/cbc-atm .png'),
	(310,'Wesleyan University','Wesleyan University  of the Philippines, Mabini St. Extension Cabanatuan City',15.484851,120.974814,'images/cbc-atm .png'),
	(311,'WNU STI University','STI West Negros University, Burgos cor. Hilado St., Bacolod City Bacolod City, Negros Occidental',10.668948,122.957001,'images/cbc-atm .png'),
	(312,'Xavier University','G/F Library Annex, Xavier University, Corrales Ave. Cagayan De Oro City',8.477082,124.646964,'images/cbc-atm .png'),
	(313,'Yashano Mall Legazpi','Yashano Mall, F. Imperial St. Cor. Terminal Rd. 1, Legazpi Port District Legazpi City, Albay',13.146086,123.746171,'images/cbc-atm .png'),
	(314,'Yu-Yu Café & Dessert Shoppe Tagum','National Highway cor. Quirante II St., Magugpo Poblacion Tagum City, Davao',7.449135,125.810525,'images/cbc-atm .png'),
	(315,'Yubenco Starmall','Yubenco Starmall, Maria Clara Lorenzo Lobregat Highway, Putik Zamboanga City',6.935706,122.092365,'images/cbc-atm .png'),
	(316,'Zabarte Town Center','Basement Zabarte Town Center, 588 Camarin Road corner Zabarte Road Kalookan City',14.75636,121.043512,'images/cbc-atm .png'),
	(317,'Zamboanga Peninsula Medical Center','Zamboanga Peninsula Medical Center, Maria Clara Lorenzo Lobregat Highway, Putik Zamboanga City',6.939927,122.092546,'images/cbc-atm .png');

/*!40000 ALTER TABLE `atm` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table branch
# ------------------------------------------------------------

DROP TABLE IF EXISTS `branch`;

CREATE TABLE `branch` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `contactno` varchar(250) DEFAULT NULL,
  `faxno` varchar(250) DEFAULT NULL,
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  `icon` varchar(50) DEFAULT NULL,
  `opening` varchar(15) DEFAULT NULL,
  `closing` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;

INSERT INTO `branch` (`id`, `name`, `address`, `contactno`, `faxno`, `latitude`, `longitude`, `icon`, `opening`, `closing`)
VALUES
	(1,'999 Mall','Unit 3D-5; 3D-7, 999 Shopping Mall Bldg. 2, Recto - Soler Sts., Binondo Manila','523-1216/ 1217/ 1218/ 1219','523-1215',14.6054234,120.973055,'images/cbc-icon.png','9 AM','5:30 PM'),
	(2,'A. Bonifacio - Mauban','G/F Urban Oasis Residences, 423-431 A. Bonifacio Ave., Brgy. San Jose Quezon City','282-1991/94','282-1994',14.641201,120.992394,'images/cbc-icon.png','9 AM','5:30 PM'),
	(3,'Alabang Hills','G/F RBC-MDC Corporate Center, Don Jesus Blvd., Alabang Hills Village Muntinlupa City','877-8567; 877-8604','877-8604',14.434423,121.040555,'images/cbc-icon.png','9 AM','5:30 PM'),
	(4,'Albay','Rizal St. corner Gov. Pascual St. Old Albay District Legazpi City','(052)742-0893; (052)742-0894','N/A',13.139144,123.732353,'images/cbc-icon.png','9 AM','5:30 PM'),
	(5,'Alvarado','Alvarado St. Binondo, Manila','562-3863; 562-3866','NA',14.602874,120.974533,'images/cbc-icon.png','9 AM','5:30 PM'),
	(6,'Angeles - McArthur Highway','CBC Bldg., San Pablo street corner McArthur Highway, Brgy. CM Recto Angeles City, Pampanga','(045) 3(045) 323-5793; 887-6028; 625-9362','(045) 887-6029',15.147741,120.593673,'images/cbc-icon.png','9 AM','5:30 PM'),
	(7,'Angeles City','CBC-Building, 949 Henson Street.  Angeles City, Pampanga','(045) 887-1549;323-5343','(045) 625-8661',15.144069,120.588638,'images/cbc-icon.png','9 AM','5:30 PM'),
	(8,'Angeles City - Balibago','Diamond Square Bldg., Service Road McArthur Highway corner Charlotte St., Balibago Angeles City, Pampanga','(045) 892-5136; 892-5144','(045) 892-5136',15.164671,120.590798,'images/cbc-icon.png','9 AM','5:30 PM'),
	(9,'Angeles City - Marquee Mall','G/F Marquee Mall Angeles City, Pampanga','(045) 436-4013; 304-0850; 889-0975','(045) 304-0850',15.16328,120.609674,'images/cbc-icon.png','9 AM','5:30 PM'),
	(10,'Angeles City - Sto. Rosario','Angeles Business Center Bldg., Teresa Avenue, Nepo Mart Complex Angeles City, Pampanga','(045) 888-5175; 322-9596','(045) 888-5175',15.133672,120.586892,'images/cbc-icon.png','9 AM','5:30 PM'),
	(11,'Antipolo - Sumulong Highway','No. 219, Sumulong Highway, Brgy. Mambugan Antipolo City, Rizal','632-7309; 632-7573; 655-8087','632-7309',14.622473,121.125529,'images/cbc-icon.png','9 AM','5:30 PM'),
	(12,'Antipolo City','G/F BudgetLane Arcade, No. 6, Provincial Road Brgy. San Jose Antipolo City, Rizal','650-3277; 650-2087; 695-1509','650-2640',14.58077,121.181557,'images/cbc-icon.png','9 AM','5:30 PM'),
	(13,'Antipolo City - Taktak','Sumulong Highway corner Taktak Road, Brgy. Dela Paz Antipolo City, Rizal','721-6320; 721-6316','N/A',14.596455,121.171656,'images/cbc-icon.png','9 AM','5:30 PM'),
	(14,'Antique - San Jose','Felrosa Building, Gen. Fullon St. corner Cerdena St.  San Jose, Antique','(036) 540-7095; 540-7097','(034) 540-7096',10.743567,121.943843,'images/cbc-icon.png','9 AM','5:30 PM'),
	(15,'Apalit','CBC Building, McArthur Highway, San Vicente, Apalit Apalit, Pampanga','(045) 652-1131','(045) 302-9560',14.953331,120.758874,'images/cbc-icon.png','9 AM','5:30 PM'),
	(16,'Araneta Ave.','Philippine Whithasco Building. 420 Araneta Avenue, cor.  Bayani Street Quezon City','731-2252; 731-2261; 732-4153; 731-2179; 731-2216; 410-6753','410-3026',14.615191,121.016951,'images/cbc-icon.png','9 AM','5:30 PM'),
	(17,'Arnaiz Ave.','837 United Life Assurance Building, A. Arnaiz Ave., Legaspi Village Makati City','541-1506','N/A',14.551172,121.0182,'images/cbc-icon.png','9 AM','5:30 PM'),
	(18,'Arranque','Don Felipe Building, 675 Tomas Mapua St., Sta. Cruz Manila','733-3477; 734-4777; 733-7704; 733-8335 to 40; 734-4497; 734-4501/06','733-3481',14.602425,120.980107,'images/cbc-icon.png','9 AM','5:30 PM'),
	(19,'Asuncion','Units G6 and G7 Chinatown Steel Towers, Asuncion Street, San Nicolas Manila','241-2311/52/59/61','241-2352',14.599422,120.970067,'images/cbc-icon.png','9 AM','5:30 PM'),
	(20,'Aurora Blvd. New Manila','Aurora Blvd., Brgy. Valencia Quezon City','727-4192; 727-4171','N/A',14.613485,121.0337,'images/cbc-icon.png','9 AM','5:30 PM'),
	(21,'Ayala - Alabang','G/F, CBC-Building Acacia Ave., Madrigal Business Park, Ayala Alabang Muntinlupa City','807-0673-74; 850-3785/9640/8888','850-8670',14.425942,121.023443,'images/cbc-icon.png','9 AM','5:30 PM'),
	(22,'Ayala - Columns','G/F The Columns Tower 3, Ayala Avenue corner Sen. Gil Puyat Ave., Brgy. Bel-Air Makati City','915-3672 to 75','915-3672',14.561871,121.016584,'images/cbc-icon.png','9 AM','5:30 PM'),
	(23,'Ayala Ave. - Amorsolo','G/F Teleperformance Bldg., Ayala Ave., Legazpi Village Makati City','541- 7348; 541- 5958','N/A',14.560516,121.01522,'images/cbc-icon.png','9 AM','5:30 PM'),
	(24,'Baclaran-F.B. Harrison','BAGPI Main Bldg., 2935 Ortigas St. near cor. F.B. Harrison St. Pasay City','838-6187; 838-5038','N/A',14.535047,120.996017,'images/cbc-icon.png','9 AM','5:30 PM'),
	(25,'Bacolod - Araneta','CBC Bldg., Araneta cor. San Sebastian Sts. Bacolod City','(034) 435-0247/48; 433-3818/19; 433-7152/53; 709-1618','(034) 435-0247',10.665795,122.944779,'images/cbc-icon.png','9 AM','5:30 PM'),
	(26,'Bacolod - Lacson','G/F Soliman Bldg., Lacson cor. Luzuriaga Sts., Brgy. 29 Bacolod City, Negros Occidental','(034) 474-2451; 474-2452','N/A',10.666037,122.949046,'images/cbc-icon.png','9 AM','5:30 PM'),
	(27,'Bacolod - Libertad','Libertad Street, Brgy. 40 Bacolod City','(034) 435-1645; 435-1646','(034) 435-1645',10.659885,122.951484,'images/cbc-icon.png','9 AM','5:30 PM'),
	(28,'Bacolod - Mandalagan','Azotea Bldg., Lacson St., Mandalagan Bacolod City','(034) 441-0500; 441-0388; 709-0067','(034) 709-0067',10.700097,122.961993,'images/cbc-icon.png','9 AM','5:30 PM'),
	(29,'Bacolod - North Drive','Unit 1, Anesa Bldg., B.S. Aquino Drive, Brgy. Villamonte Bacolod City','(034) 435-0063 to 65; 709-1658','(034) 435-0065',10.675954,122.961199,'images/cbc-icon.png','9 AM','5:30 PM'),
	(30,'Baguio City','G/F Juniper Bldg., A. Bonifacio Rd. Baguio City','(074) 442-9581; 443-5908; 443-8659 to 60; 442-9663','(074) 442-9663',16.417852,120.596337,'images/cbc-icon.png','9 AM','5:30 PM'),
	(31,'Baguio City - Abanao','G/F Paladin Hotel, No. 136 Abanao Ext. corner Cariño St. Baguio City','(074) 424-4837; 424-4838','(074) 424-4838',16.411826,120.591131,'images/cbc-icon.png','9 AM','5:30 PM'),
	(32,'Balanga City','G/F Dilig Building, Don Manuel Banzon Street Balanga City, Bataan','(047) 237-9388/89; 791-1779','(047) 791-1779',14.683152,120.54065,'images/cbc-icon.png','9 AM','5:30 PM'),
	(33,'Baler','Uy Bldg., Quezon St., Barrio Suklayin Baler, Aurora','(042) 724-0026; 703-3331-(manila line)','(042) 724-0026',15.757092,121.551445,'images/cbc-icon.png','9 AM','5:30 PM'),
	(34,'Balintawak - Bonifacio','657 A. Bonifacio Avenue, Balintawak Quezon City','361-3449; 361-7825; 362-3660; 361-0450','361-0199',14.645881,120.994452,'images/cbc-icon.png','9 AM','5:30 PM'),
	(35,'Baliwag','KM. 51, Doña Remedios Trinidad (DRT) Highway Baliwag, Bulacan','(044) 766-1066/5257; 673-5338','(044) 766-5257',14.966195,120.902217,'images/cbc-icon.png','9 AM','5:30 PM'),
	(36,'Balut','North Bay Shopping Center, Honorio Lopez Boulevard, Balut, Tondo Manila','253-9921/29; 253-9620; 251-1182/86','253-9917',14.622827,120.971196,'images/cbc-icon.png','9 AM','5:30 PM'),
	(37,'Banawe','CBC Bldg., 680 Banawe Avenue, Sta. Mesa Heights Quezon City','743-7486/88; 416-7028/7030/711-8694','743-7487',14.633747,121.001784,'images/cbc-icon.png','9 AM','5:30 PM'),
	(38,'Banawe - Calamba','GF One Banawe Complex Bldg., 119 Banawe St. corner Calamba St., Brgy. Sto. Domingo Quezon City','732-1060','N/A',14.630377,121.002981,'images/cbc-icon.png','9 AM','5:30 PM'),
	(39,'Bataan - Dinalupihan','GNI Building, San Ramon Highway corner Dona Rosa Street and Mabini Ext. Dinalupihan, Bataan','N/A','N/A',14.866347,120.466633,'images/cbc-icon.png','9 AM','5:30 PM'),
	(40,'Batangas - Balayan','CBC Bldg., Barrio Ermita Balayan, Batangas','(043)741-5028; (043)741-5180','N/A',13.94588,120.730143,'images/cbc-icon.png','9 AM','5:30 PM'),
	(41,'Batangas - Bauan','62 Kapitan Ponso St. Bauan, Batangas','(043) 702-4481; 702-5383','(043) 702-4481',13.790566,121.009065,'images/cbc-icon.png','9 AM','5:30 PM'),
	(42,'Batangas - Lemery','Miranda Bldg., Ilustre Avenue Lemery, Batangas','(043) 409-3467; 984-0206 (mla line)','(043) 409-3467',13.884839,120.913045,'images/cbc-icon.png','9 AM','5:30 PM'),
	(43,'Batangas - Rosario','Dr. Gualberto Avenue, Brgy. B Poblacion Rosario, Batangas','(043) 312-3748; 312-3776','N/A',13.845138,121.205787,'images/cbc-icon.png','9 AM','5:30 PM'),
	(44,'Batangas - Tanauan','J.P. Laurel Highway Tanauan City, Batangas','(043) 702-8956; 702-8957','(043) 702-8956',14.085681,121.149719,'images/cbc-icon.png','9 AM','5:30 PM'),
	(45,'Batangas City','P. Burgos Street, Brgy. 10 Batangas City, Batangas','(043) 723-0953; 520-6118 (Mla-direct)','520-6118 (Mla-direct); (043) 402-9157',13.759576,121.057816,'images/cbc-icon.png','9 AM','5:30 PM'),
	(46,'Batangas City - Kumintang Ilaya','CBC Building, Brgy. Kumintang Ilaya Batangas City, Batangas','(043) 702-6823','N/A',13.776724,121.066753,'images/cbc-icon.png','9 AM','5:30 PM'),
	(47,'Baybay City','Magsaysay Avenue Baybay City, Leyte','(053) 335-2899/98; 563-9228','(053) 563-9228',10.674291,124.80012,'images/cbc-icon.png','9 AM','5:30 PM'),
	(48,'Bel-Air','2/F Saville Bldg., Gil Puyat Ave. cor. Paseo de Roxas St. Makati City','897-2212; 899-4186/0685','890-4062',14.560646,121.031148,'images/cbc-icon.png','9 AM','5:30 PM'),
	(49,'Better Living Subdivision','128 Doña Soledad Ave., Better Living, Brgy. Don Bosco Parañaque City','556-3467; 556-3468; 556-3470','556-3470',14.484412,121.031017,'images/cbc-icon.png','9 AM','5:30 PM'),
	(50,'BF Homes','Aguirre cor. El Grande Avenues, United BF Homes Parañaque City','825-6138/6891/6828','825-5979',14.456415,121.007714,'images/cbc-icon.png','9 AM','5:30 PM'),
	(51,'BF Homes - Aguirre','Margarita Centre, Aguirre Avenue corner Elsie Gaches St., BF Homes Parañaque City','799-4707/4942; 659-3359/3360; 556-5845','659-3359',14.444891,121.027106,'images/cbc-icon.png','9 AM','5:30 PM'),
	(52,'BF Resort Village','BF Resort Drive cor. Gloria Diaz St., BF Resort Village, Talon Dos Las Piñas City','873-4540 to 42','873-4543',14.441788,120.991268,'images/cbc-icon.png','9 AM','5:30 PM'),
	(53,'BGC - Icon Plaza','G/F Icon Plaza Building, 25th cor. 5th Sts., Bonifacio South, Fort Bonifacio Global City Taguig City','777-1943; 800-1474','N/A',14.548068,121.04779,'images/cbc-icon.png','9 AM','5:30 PM'),
	(54,'BGC - One World Place','G/F One World Place, 32nd Avenue, Fort Bonifacio Global City Taguig City','869-6309; 843-2448','843-2448',14.55312,121.053223,'images/cbc-icon.png','9 AM','5:30 PM'),
	(55,'BGC - W Tower','G/F W Tower, 39th Street, North Bonifacio Triangle, Fort Bonifacio Global City Taguig City','552-3311; 551-9072','N/A',14.558943,121.057076,'images/cbc-icon.png','9 AM','5:30 PM'),
	(56,'BGC - World Plaza','G/F (Unit 5) World Plaza, L4B5 E-Square Information Technology Park, Crescent Park West, 5th Avenue, Bonifacio Global City Taguig City','541-3447; 541-4220','N/A',14.553022,121.04807,'images/cbc-icon.png','9 AM','5:30 PM'),
	(57,'Binangonan','National Highway, Bo. Tagpos Binangonan, Rizal','669-1530; 669-1659','N/A',14.503932,121.169172,'images/cbc-icon.png','9 AM','5:30 PM'),
	(58,'Binondo Business Center','Unit 161-163, CBC Bldg., Dasmariñas cor. Juan Luna St., Brgy. 287, Zone 27, District III, Binondo Manila','247-5388; 8855-222','241-7058; 242-7225',14.597369,120.975439,'images/cbc-icon.png','9 AM','5:30 PM'),
	(59,'Blumentritt','1777-1781 Cavite cor. Leonora Rivera St., Blumentritt, Sta. Cruz Manila','742-0254;711-8589','711-8541',14.624204,120.98645,'images/cbc-icon.png','9 AM','5:30 PM'),
	(60,'BO. Kapitolyo','G/F P&E Bldg., 12 United cor. First Sts., Bo. Kapitolyo Pasig City','634-8370/8915/3697','634-7504',14.573239,121.059854,'images/cbc-icon.png','9 AM','5:30 PM'),
	(61,'Bonny Serrano','G/F Greenhills Garden Square, 297 Col. Bonny Serrano Ave., Bagong Lipunan ng Crame Quezon City','410-0677; 997-8043; 997-8031','410-0677',14.609328,121.048102,'images/cbc-icon.png','9 AM','5:30 PM'),
	(62,'Borongan','E. Daza cor. Cardona St., Balud II Borongan, Eastern Samar','(055) 560-9948; 560-9938; 261-5888','(055) 560-9938',11.609059,125.431743,'images/cbc-icon.png','9 AM','5:30 PM'),
	(63,'Bulacan - Balagtas','G/F RES Bldg., MacArthur Highway, Brgy. San Juan Balagatas, Bulacan','(044) 769-4376; 769-0359','(044) 769-4376',14.813339,120.9124,'images/cbc-icon.png','9 AM','5:30 PM'),
	(64,'Bulacan - Plaridel','CBC Bldg., Cagayan Valley Road, Brgy. Banga I Plaridel, Bulacan','(044) 931-2332; 325-0069','(044) 931-2293',14.885302,120.867531,'images/cbc-icon.png','9 AM','5:30 PM'),
	(65,'Bulacan - Sta. Maria','J. P. Rizal corner C. De Guzman Streets, Poblacion Sta. Maria, Bulacan','(044) 288-2006; 815-2951; 913-0334','(044) 288-2006',14.822452,120.961708,'images/cbc-icon.png','9 AM','5:30 PM'),
	(66,'Butuan City','CBC Bldg., J.C. Aquino Avenue, Brgy. Imadejas Butuan City, Agusan del Norte','(085) 341-5159; 341-7445; 815-3454/55; 225-2081','(085) 815-3455',8.945742,125.531114,'images/cbc-icon.png','9 AM','5:30 PM'),
	(67,'Cabanatuan - Maharlika','CBC Bldg., Maharlika Highway, Brgy. Dicarma Cabanatuan City, Nueva Ecija','(044) 463-8586/87; 463-7964; 600-3590 9402395','(044) 463-8587',15.48445,120.968919,'images/cbc-icon.png','9 AM','5:30 PM'),
	(68,'Cabanatuan City','Melencio cor. Sanciangco Streets Cabanatuan City, Nueva Ecija','(044) 600-4265; 463-0935 to 36','(044) 463-0936',15.486676,120.962871,'images/cbc-icon.png','9 AM','5:30 PM'),
	(69,'Cagayan de Oro - Carmen','G/F GT Realty Bldg., Max Suniel St. Corner Yakal St., Carmen Cagayan de Oro City','(08822) 723-091; 724-372; (088) 858-3902/03','(088) 858-3903/ (08822) 724-372',8.481584,124.637317,'images/cbc-icon.png','9 AM','5:30 PM'),
	(70,'Cagayan de Oro - Divisoria','RN Abejuela St., South Divisoria Cagayan de Oro City','(08822) 722-641; (088) 857-5759','(088) 857-4200',8.477808,124.642736,'images/cbc-icon.png','9 AM','5:30 PM'),
	(71,'Cagayan de Oro - Gaisano City Mall','G/F Gaisano City Mall, C.M. Recto Ave. cor. Corrales Extension Cagayan de Oro City, Misamis Oriental','(08822) 745-877; 745-880; (088) 880-1051; 880-1052','(08822) 745-880',8.486476,124.650549,'images/cbc-icon.png','9 AM','5:30 PM'),
	(72,'Cagayan de Oro - Lapasan','CBC Bldg., Claro M. Recto Avenue, Lapasan Cagayan de Oro City','(08822) 722-240; 724-540; 726-242; (088) 856-1325/1326','(088) 856-1325/1326',8.484025,124.658138,'images/cbc-icon.png','9 AM','5:30 PM'),
	(73,'Cagayan de Oro - Puerto','Luis A.S. Yap Bldg., Sayre Highway, Zone 6, Brgy. Puerto Cagayan de Oro City, Misamis Oriental','(088) 880-7183; 880-7185','(088) 880-7185',8.500339,124.750703,'images/cbc-icon.png','9 AM','5:30 PM'),
	(74,'Cainta','CBC Bldg (Beside Sta. Lucia East Mall) Felix Ave. (Imelda Ave.) Cainta, Rizal','646-0691/93; 645-9974; 682-1795','646-0050',14.618406,121.101366,'images/cbc-icon.png','9 AM','5:30 PM'),
	(75,'Cainta - Poblacion','A. Bonifacio Ave., Poblacion, Brgy. Sto. Domingo Cainta, Rizal','637-1935; 637-6634','N/A',14.579528,121.115899,'images/cbc-icon.png','9 AM','5:30 PM'),
	(76,'Calapan City','G/F Gliceria Concepcion Bldg., J. P. Rizal St., San Vicente Calapan City, Oriental Mindoro','(043) 288-8978/8508; 441-0382','(043) 441-0382',13.41074,121.179108,'images/cbc-icon.png','9 AM','5:30 PM'),
	(77,'Calbayog City','Cajurao cor. Gomez Sts., Balud, Calbayog Dist. Calbayog City','(055) 209-1358; 533-8842','(055) 533-8842',12.070078,124.594334,'images/cbc-icon.png','9 AM','5:30 PM'),
	(78,'Camalaniugan','CBC Bldg., National Highway, Brgy. Dugo Camalaniugan, Cagayan','(078) 377-2836; 377-2837','N/A',18.258267,121.68811,'images/cbc-icon.png','9 AM','5:30 PM'),
	(79,'Candon City','CBC Bldg., National Road, San Isidro Candon City, Ilocos Sur','(077) 674-0574; 674-0554','(077) 674-0574',17.189182,120.447006,'images/cbc-icon.png','9 AM','5:30 PM'),
	(80,'Capitol Hills','G/F Design Pro Bldg., Capitol Hills, Old Balara Quezon City','952-7776/7805/7804','952-7806',14.664663,121.079258,'images/cbc-icon.png','9 AM','5:30 PM'),
	(81,'Carmona','CBC Bldg., Paseo de Carmona, Brgy. Maduya Carmona, Cavite','(046) 430-1969/1277/3568; 4753941 (Manila line)','(046)430-1277',14.324822,121.06548,'images/cbc-icon.png','9 AM','5:30 PM'),
	(82,'Catarman','Cor. Rizal and Quirino Sts., Brgy. Jose P. Rizal Catarman, Northern Samar','(055)251-8802/8821;500-9921','(055) 500-9921',12.499129,124.639209,'images/cbc-icon.png','9 AM','5:30 PM'),
	(83,'Catbalogan','CBC Bldg., Del Rosario Street cor. Taft Ave. Catbalogan City, Samar','(055) 251-2897/98; 543-8121','(055) 543-8279',11.77297,124.88221,'images/cbc-icon.png','9 AM','5:30 PM'),
	(84,'Cauayan City','G/F Prince Christopher Bldg., Maharlika Highway Cauayan City, Isabela','(078) 652-1849; 897-1338; 652-0061','(078) 652-1849',16.93933,121.768498,'images/cbc-icon.png','9 AM','5:30 PM'),
	(85,'Cavite - Dasmariñas','G/F CBC-Bldg., Gen. Emilio Aguinaldo Highway Dasmariñas, Cavite','(046) 416-5036/39/40; 584-40-83 (Manila line)','(046) 416-5036',14.327644,120.939811,'images/cbc-icon.png','9 AM','5:30 PM'),
	(86,'Cavite - Imus','G/F CBC Bldg., Nueno Avenue, Tanzang Luma Imus, Cavite','(046) 970-8726/64; 471-2637; 471-7094','(046) 471-2637',14.424246,120.9407,'images/cbc-icon.png','9 AM','5:30 PM'),
	(87,'Cavite - Molino','Patio Jacinto, Molino Road, Molino 3 Bacoor, Cavite','(046) 431-0632 ; 484-6295','(046) 431-0901',14.394906,120.977186,'images/cbc-icon.png','9 AM','5:30 PM'),
	(88,'Cavite - Rosario','G/F CBC-Building, Gen Trias Drive Rosario, Cavite','(046) 437-0057 to 59','(046) 437-0058',14.406167,120.859433,'images/cbc-icon.png','9 AM','5:30 PM'),
	(89,'Cavite - Silang','CBC Building, J.P Rizal St. Poblacion Silang, Cavite','(046) 413-5095; 413-4826; 413-5500; 413-5417','(046) 413-5095',14.224595,120.974037,'images/cbc-icon.png','9 AM','5:30 PM'),
	(90,'Cebu - Ayala','Unit 101 G/F Insular Life Cebu Business  Center, Mindanao Ave. cor. Biliran Road, Cebu Business Park Cebu City, Cebu','(032) 262-1839; 260-6524','(032) 260-6524',10.31981,123.905116,'images/cbc-icon.png','9 AM','5:30 PM'),
	(91,'Cebu - Banawa','G/F The J Block, Duterte St., Guadalupe Cebu City, Cebu','(032) 340-9561; 416-3827','(032) 416-3827',10.310727,123.876667,'images/cbc-icon.png','9 AM','5:30 PM'),
	(92,'Cebu - Banilad','CBC Bldg., A.S. Fortuna Street,  Banilad Cebu City, Cebu','(032) 346-5870/81; 416-1001','(032) 344-0087',10.343354,123.913174,'images/cbc-icon.png','9 AM','5:30 PM'),
	(93,'Cebu - Basak San Nicolas','Bai Center, N. Bacalso Ave., Brgy. Basak San Nicolas Cebu City, Cebu','(032) 340-8113; 414-4742','(032) 414-4742',10.289348,123.872237,'images/cbc-icon.png','9 AM','5:30 PM'),
	(94,'Cebu - Bogo','G/F SIM Building, P. Rodriguez Street Bogo City, Cebu','(032) 434-7119; 266-3251','(032) 434-7119',11.048758,124.004253,'images/cbc-icon.png','9 AM','5:30 PM'),
	(95,'Cebu - Business Center','G/F Chinabank Corporate Center, Samar Loop corner Panay Road, Cebu Business Park Cebu City, Cebu','(032) 239-3760 to 239-3764','(032) 238-1438',10.316171,123.908609,'images/cbc-icon.png','9 AM','5:30 PM'),
	(96,'Cebu - Carcar','Dr. Jose Rizal St., Poblacion I Carcar City, Cebu','(032)487-8103; 487-8209; 266-7093','(032) 487-8103',10.102503,123.639736,'images/cbc-icon.png','9 AM','5:30 PM'),
	(97,'Cebu - Consolacion','G/F SM City Consolacion, Brgy. Lamac Consolacion, Cebu','(032) 260-0024; 260-0025','(032) 423-9253',10.38023,123.964273,'images/cbc-icon.png','9 AM','5:30 PM'),
	(98,'Cebu - Escario','Unit 3 & 5, Escario Central, Escario Road Cebu City, Cebu','(032) 416-5860; 520-9229','(032) 520-9229',10.317635,123.893909,'images/cbc-icon.png','9 AM','5:30 PM'),
	(99,'Cebu - F. Ramos','G/F Cebu Velez Hospital, 41-3 F. Ramos Street, Brgy. Cogon Cebu City, Cebu','(032) 253-9463; 254-4867; 412-5858','(032) 253-9461',10.307691,123.896127,'images/cbc-icon.png','9 AM','5:30 PM'),
	(100,'Cebu - Gorordo','No 424. Gorordo Ave., Bo. Camputhaw, Lahug District Cebu City, Cebu','(032) 414-0509; 239-8654','(032) 239-8654',10.319505,123.899306,'images/cbc-icon.png','9 AM','5:30 PM'),
	(101,'Cebu - Guadalupe','CBC Bldg., M. Velez Street cor. V. Rama Ave., Guadalupe Cebu City, Cebu','(032) 254-7964; 254-8495; 254-1916','(032) 416-5988',10.315654,123.885715,'images/cbc-icon.png','9 AM','5:30 PM'),
	(102,'Cebu - IT Park','G/F The Link, Cebu IT Park, Apas Cebu City, Cebu','(032) 266-2559; 262-0982','(032) 266-2559',10.327274,123.906459,'images/cbc-icon.png','9 AM','5:30 PM'),
	(103,'Cebu - Lahug','JY Square Mall, No. 1 Salinas Drive, Lahug Cebu City, Cebu','(032) 417-2122; 233-0977; 234-2062','(032) 234-2062',10.330499,123.899003,'images/cbc-icon.png','9 AM','5:30 PM'),
	(104,'Cebu - Lapu Lapu Centro','G.Y dela Serna St., Opon, Poblacion Lapu Lapu City, Cebu','(032) 231-3247; 493-5078','(032) 231-3247',10.311357,123.95306,'images/cbc-icon.png','9 AM','5:30 PM'),
	(105,'Cebu - Lapu Lapu Pusok','G/F Goldberry Suites, President Quezon National Highway, Pusok Lapu-Lapu City, Cebu','(032) 340-2098; 494-0631; 340-2099','(032) 340-2098/ 494-0631',10.311357,123.95306,'images/cbc-icon.png','9 AM','5:30 PM'),
	(106,'Cebu - Magallanes (Main)','CBC Bldg., Magallanes cor. Jakosalem Sts., Brgy. Sto. Niño Cebu City, Cebu','(032) 255-0022/23/25/28; 253-0348; 255-6093; 255-0266; 412-1877','(032) 255-0026',10.293765,123.901147,'images/cbc-icon.png','9 AM','5:30 PM'),
	(107,'Cebu - Mandaue','SV Cabahug Bldg., 155-B SB Cabahug Street, Brgy. Centro Mandaue City, Cebu','(032) 346-5636/37; 346-2083; 344-4335; 422-8188','(032) 346-2083',10.32977,123.943011,'images/cbc-icon.png','9 AM','5:30 PM'),
	(108,'Cebu - Mandaue - Cabancalan','G/F A. Genson Bldg., M.L. Quezon St., Cabancalan Mandaue City, Cebu','(032) 421-1364; 505-9908','(032) 421-1364',10.347997,123.927162,'images/cbc-icon.png','9 AM','5:30 PM'),
	(109,'Cebu - Mandaue - J Centre Mall','LGF J Centre Mall, A.S Fortuna Ave., Bakilid Mandaue City, Cebu','(032) 520-2898; 421-1567','(032) 520-2898',10.334956,123.934089,'images/cbc-icon.png','9 AM','5:30 PM'),
	(110,'Cebu - Mandaue North Road','G/F Units G1-G3, Basak Commercial Building (Kel-2) Basak Mandaue City, Cebu','(032) 345-8861; 345-8862; 420-6767','(032) 420-6767',10.351925,123.949348,'images/cbc-icon.png','9 AM','5:30 PM'),
	(111,'Cebu - Mandaue NRA','G/F Bai Hotel Cebu, Ouano Ave. cor. Seno Blvd., North Reclamation Area Mandaue City','(032) 272-6985','N/A',10.324789,123.936861,'images/cbc-icon.png','9 AM','5:30 PM'),
	(112,'Cebu - Minglanilla','Unit 9 Plaza Margarita, Linao-Lipata Minglanilla, Cebu','(032) 239-7234; 490-6025','(032) 239-7235',10.256169,123.811205,'images/cbc-icon.png','9 AM','5:30 PM'),
	(113,'Cebu - Naga','Leah?s Square, National South Highway, East Poblacion Naga City, Cebu','(032) 238-7623; 489-8218','(032) 489-8218',10.207924,123.758164,'images/cbc-icon.png','9 AM','5:30 PM'),
	(114,'Cebu - SM City','UGF SM City Cebu, Juan Luna cor. A. Soriano Ave., North Reclamation Area, Brgy. Mabolo Cebu City, Cebu','(032) 232-0754/55; 231-9140; 412-9699','(032) 232-1448',10.312542,123.918153,'images/cbc-icon.png','9 AM','5:30 PM'),
	(115,'Cebu - SM Seaside City','LGF SM Seaside City Cebu, SM Seaside Complex, South Road Properties, Mambalin Cebu City, Cebu','(032) 262-1772','(032) 262-1772',10.281932,123.880645,'images/cbc-icon.png','9 AM','5:30 PM'),
	(116,'Cebu - Subangdaku','G/F A.D. Gothong I.T. Center, Subangdaku Mandaue City, Cebu','(032) 344-6561; 422-3664; 344-6621','(032) 344-6621',10.320642,123.921536,'images/cbc-icon.png','9 AM','5:30 PM'),
	(117,'Cebu - Talamban','Unit UG-7, Gaisano Grand Mall Talamban, Gov. Cuenco Ave., Brgy. Talamban Cebu City, Cebu','(032) 236-8944; 418-0796','(032) 236-8944',10.366419,123.91375,'images/cbc-icon.png','9 AM','5:30 PM'),
	(118,'Cebu - Talisay','CBC Bldg., 1055 Cebu South National Road, Bulacao Talisay City, Cebu','(032) 272-3342/48; 491-8200','(032) 272-3346',10.26991,123.844905,'images/cbc-icon.png','9 AM','5:30 PM'),
	(119,'Century City - Knightsbridge','Unit 17 & 18 Knightsbridge Residences, Century City, Kalayaan Ave. Makati City','866-3937; 866-3803','N/A',14.567126,121.027632,'images/cbc-icon.png','9 AM','5:30 PM'),
	(120,'Clark Freeport Zone','G/F Stotsenberg Lifestyle Center, N. Aquino corner S. Osmeña & E. Jacinto Sts., Clark Freeport Zone Angeles City','(045) 499-8060; 499-8062; 499-8063','(045) 499-8063',15.181003,120.527422,'images/cbc-icon.png','9 AM','5:30 PM'),
	(121,'Commonwealth Ave. Ext. - Casa Milan','ALX Center Bldg., Commonwealth Ave. North Fairview Quezon City','463-5714','N/A',14.718416,121.054213,'images/cbc-icon.png','9 AM','5:30 PM'),
	(122,'Commonwealth Avenue','LGF Ever Gotesco Mall, Commonwealth Center Commonwealth Ave. cor. Don Antonio Road Quezon City','932-0818/0820; 431-5000/01','932-0822',14.677946,121.085481,'images/cbc-icon.png','9 AM','5:30 PM'),
	(123,'Congressional Ave.','G/F Unit C, The Arete Square, Congressional Ave., Project 8 Quezon City','351-8648; 351-8645; 351-8646','351-8645',14.666231,121.031705,'images/cbc-icon.png','9 AM','5:30 PM'),
	(124,'Congressional Ave. Ext. - Mira Nila','CBC Bldg., #71 Lot 28 Blk 2 Mira Nila Homes, Congressional Ave. Ext. Quezon City','932-2372; 932-2370','932-2370',14.673035,121.060964,'images/cbc-icon.png','9 AM','5:30 PM'),
	(125,'Corinthian Hills','G/F The Clubhouse, Corinthian Hills, Temple Drive, Brgy. Ugong Norte Quezon City','637-3170/3180/1915','637-1905',14.599983,121.069274,'images/cbc-icon.png','9 AM','5:30 PM'),
	(126,'Cotabato City','No. 76 BH Century Inc., S.K. Pendatun Avenue Cotabato City, Maguindanao','(064) 421-4685/4653','(064) 421-4686',7.222801,124.247977,'images/cbc-icon.png','9 AM','5:30 PM'),
	(127,'Cubao - Araneta','Unit 30-31, Shopwise Arcade Bldg., Times Square St., Araneta Shopping Center, Soccorro, Cubao Quezon City','911-2369/70; 438-3830-32; 911-2397','911-2432',14.620606,121.055315,'images/cbc-icon.png','9 AM','5:30 PM'),
	(128,'Cubao - Aurora','911 Aurora Boulevard Extension corner Miami St., Cubao Quezon City','912-5164/57; 913-4675/76; 911-3524','912-5167',14.625303,121.057629,'images/cbc-icon.png','9 AM','5:30 PM'),
	(129,'Cubao - P. Tuazon','No. 287 P. Tuazon Ave. near corner 18th Avenue, Brgy. San Roque, Cubao Quezon City','911-5896; 911-8416','911-8416',14.62074,121.060948,'images/cbc-icon.png','9 AM','5:30 PM'),
	(130,'Culiat - Tandang Sora','G/F Royal Midway Plaza, No. 419 Tandang Sora Ave., Brgy. Culiat Quezon City','288-2575; 288-5114','288-2575',14.668887,121.054703,'images/cbc-icon.png','9 AM','5:30 PM'),
	(131,'D. Tuazon','148 D. Tuazon St., Brgy. Lourdes, Sta. Mesa Heights Quezon City','731-2516/2508','731-0592',14.629489,120.999988,'images/cbc-icon.png','9 AM','5:30 PM'),
	(132,'Daet','Vinzons Avenue Daet, Camarines Norte','(054) 440-0066; 440-0067','(054) 472-1358',14.118167,122.95227,'images/cbc-icon.png','9 AM','5:30 PM'),
	(133,'Dagupan - M.H. Del Pilar','Carried Realty Bldg., No. 28 M.H. del Pilar Street Dagupan City, Pangasinan','(075) 523-5606; 522-8929 632-0430; 632-0583','(075) 523-5606',16.045344,120.343602,'images/cbc-icon.png','9 AM','5:30 PM'),
	(134,'Dagupan - Perez','G/F Siapno Bldg., Perez Boulevard, Brgy. Pogo Chico Dagupan City, Pangasinan','(075) 522-2562 to 64','(075) 522-8303',16.040877,120.339032,'images/cbc-icon.png','9 AM','5:30 PM'),
	(135,'Damar Village','The Clubhouse, Damar Loop, Damar Village Quezon City','442-3581; 367-5517','367-5517',14.645474,121.002039,'images/cbc-icon.png','9 AM','5:30 PM'),
	(136,'Dasmariñas Village','G/F Manila Memorial Park Building, 2283 Pasong Tamo Extension cor. Lumbang St. Makati City','894-2392/93; 813-2958','894-2355',14.537207,121.020941,'images/cbc-icon.png','9 AM','5:30 PM'),
	(137,'Davao - Bajada','B.I. Zone Bldg., J.P. Laurel Avenue, Bajada Davao City','(082) 221-0184; 221-0319','(082) 221-0568',7.087987,125.610046,'images/cbc-icon.png','9 AM','5:30 PM'),
	(138,'Davao - Buhangin','Km. 5 Buhangin Road Davao City','(082) 300-8335; 227-9764; 221-5970','(082) 221-5970',7.10201,125.614356,'images/cbc-icon.png','9 AM','5:30 PM'),
	(139,'Davao - Calinan','G/F TNE Building, Davao-Bukidnon National Highway - Riverside, Calinan Proper Davao City','(082) 224 ? 9229;  (082) 224-9135','N/A',7.190515,125.45573,'images/cbc-icon.png','9 AM','5:30 PM'),
	(140,'Davao - Insular Village','Km. 8, Insular Village I, Lanang Davao City','(082)300-1892; 234-7166; 234-7165','(082)300-1892',7.107089,125.647031,'images/cbc-icon.png','9 AM','5:30 PM'),
	(141,'Davao - Ma-a','G/F R.T. Lapena Bldg., Mac Arthur Highway, Matina Davao City','(082) 295-0472; 295-1072','N/A',7.061216,125.591304,'images/cbc-icon.png','9 AM','5:30 PM'),
	(142,'Davao - Matina','Comglasco Bldg., Km. 4 McArthur Highway, Matina Davao City','(082) 297-4288; 297-4455; 297-5880/81','(082) 297-5880',7.05634,125.573865,'images/cbc-icon.png','9 AM','5:30 PM'),
	(143,'Davao - Monteverde','Doors 1 & 2, Sunbright Bldg., Monteverde St., Brgy. 27-C, Poblacion District Davao City','(082) 225-3680','N/A',7.075244,125.619389,'images/cbc-icon.png','9 AM','5:30 PM'),
	(144,'Davao - Panabo','PJ Realty Bldg., Quezon St., Brgy. New Pandan Panabo City, Davao del Norte','(084)628-4057; 628-4065','(084)628-4053',7.299603,125.683218,'images/cbc-icon.png','9 AM','5:30 PM'),
	(145,'Davao - Recto','CBC Bldg., C.M. Recto Avenue cor. J. Rizal St. Davao City','(082) 221-4481/7028/6021/6921/4163; 226-3851; 226-2103','(082) 221-8814',7.066085,125.610058,'images/cbc-icon.png','9 AM','5:30 PM'),
	(146,'Davao - SM Lanang','G/F SM Lanang Premier, J.P. Laurel Avenue Davao City','(082) 285-1064; 285-1053','(082) 285-1520',7.098215,125.630636,'images/cbc-icon.png','9 AM','5:30 PM'),
	(147,'Davao - Sta. Ana','R. Magsaysay Avenue cor. F. Bangoy St., Sta. Ana District Davao City','(082) 227-9501/51; 227-9601; 221-1054/55; 221-6672','(082) 226-4902',7.074436,125.623104,'images/cbc-icon.png','9 AM','5:30 PM'),
	(148,'Davao - Tagum','153 Pioneer Avenue Tagum, Davao del Norte','(084) 655-6307/08; 400-2289/90','(084) 400-2289',7.44868,125.807224,'images/cbc-icon.png','9 AM','5:30 PM'),
	(149,'Davao - Toril','JFI Building, Mc Arthur Highway corner St. Peter Street, Crossing Bayabas, Toril Davao City','(082) 303-3068; 295-2334; 295-2332','(082) 295-2332',7.02195,125.498457,'images/cbc-icon.png','9 AM','5:30 PM'),
	(150,'Del Monte - Matumtum','No. 202 Del Monte Avenue near corner Matutum St., Brgy St. Peter Quezon City','731-2535; 731-2571; 413-2118; 416-7791','416-7791',14.637859,120.998054,'images/cbc-icon.png','9 AM','5:30 PM'),
	(151,'Del Monte Avenue','G/F FRS Bldg., No. 497 Del Monte Ave., Brgy. Manresa Quezon City','413-2826; 413-2825; 961-8828; 871-2745','361-1101',14.638978,121.004519,'images/cbc-icon.png','9 AM','5:30 PM'),
	(152,'Diliman - Matalino','J&L Building, #23 Matalino Street, Brgy. Central, Diliman Quezon City','936-8729','N/A',14.645015,121.051044,'images/cbc-icon.png','9 AM','5:30 PM'),
	(153,'Dipolog City','CBC Building, Gen Luna corner Gonzales Streets Dipolog City, Zamboanga del Norte','(065) 212-6768 to 69; 908-2008','(065) 212-6769',8.58501,123.343712,'images/cbc-icon.png','9 AM','5:30 PM'),
	(154,'Divisoria - Sta. Elena','New Divisoria Condominium Center 632 Sta. Elena St. Binondo Manila','247-1435/36/37','247-1436',14.603319,120.971353,'images/cbc-icon.png','9 AM','5:30 PM'),
	(155,'Dolores','CBC Bldg., McArthur Highway, Dolores San Fernando City, Pampanga','(045) 963-3413 to 15; 860-1780/81','(045) 963-1014',15.043358,120.674252,'images/cbc-icon.png','9 AM','5:30 PM'),
	(156,'Don Antonio','G/F Royale Place, Don Antonio Ave., Old Balara Quezon City','932-9477; 952-9678/9354','952-9344',14.67708,121.085448,'images/cbc-icon.png','9 AM','5:30 PM'),
	(157,'Dumaguete City','CBC Bldg., Real Street Dumaguete City, Negros Oriental','(035) 422-8058; 225-5442; 225-5441; 225-4284; 225-5460','(035) 422-5442',9.307413,123.305742,'images/cbc-icon.png','9 AM','5:30 PM'),
	(158,'E. Rodriguez - Acropolis','G/F Suncrest Bldg., 82 E. Rodriguez Jr. Ave., Bagumbayan Quezon City','654-3607; 654-3586','654-3586',14.604784,121.078907,'images/cbc-icon.png','9 AM','5:30 PM'),
	(159,'E. Rodriguez - Cordillera','No. 291 (G/F Units 285 & 287) E. Rodriguez Sr. Blvd., Brgy. Doña Josefa Quezon City','257-1512; 256-5292','257-1512',14.61831,121.006799,'images/cbc-icon.png','9 AM','5:30 PM'),
	(160,'E. Rodriguez - Hillcrest','No. 402 RCR Bldg., E. Rodriguez Sr. Blvd., Brgy. Immaculate Concepcion, Cubao Quezon City','571-8927; 571-8928; 571-8929','571-8927',14.624432,121.042,'images/cbc-icon.png','9 AM','5:30 PM'),
	(161,'E. Rodriguez Sr. Blvd.','CBC Bldg., No. 286 E. Rodriguez Sr. Blvd., Brgy. Damayang Lagi Quezon City','416-3166; 722-5860; 722-5893; 725-9641 (MCB)','726-2865',14.620905,121.021858,'images/cbc-icon.png','9 AM','5:30 PM'),
	(162,'Eastwood City','Unit D, Techno Plaza One, Eastwood City Cyberpark E. Rodriguez Jr. Ave., Bagumbayan Quezon City','706-3491/3493/1979/3320/3448','438-5531',14.611022,121.080431,'images/cbc-icon.png','9 AM','5:30 PM'),
	(163,'EDSA - Kalookan','No. 531 EDSA near corner Biglang Awa Street Kalookan City','442-4338; 442-4339; 442-4340','442-4339',14.656987,120.993714,'images/cbc-icon.png','9 AM','5:30 PM'),
	(164,'EDSA - Philam','917 EDSA, Brgy. Philam Quezon City','374-2345; 374-2362; 287-3106','287-3106',14.64929,121.033925,'images/cbc-icon.png','9 AM','5:30 PM'),
	(165,'EDSA - Timog Ave.','G/F Richwell Corporate Center, 102 Timog Ave., Brgy. Sacred Heart Quezon City','441-5225, 441-5226, 441-5227','441-5228',14.633465,121.040859,'images/cbc-icon.png','9 AM','5:30 PM'),
	(166,'Elcano','G/F Elcano Tower, Elcano Street, Binondo Manila','244-6760; 244-6765; 244-6779','244-6760',14.601421,120.969852,'images/cbc-icon.png','9 AM','5:30 PM'),
	(167,'Ermita','Ground Floor A, Ma. Natividad Bldg., #470 T. M. Kalaw cor. Cortada Sts., Ermita Manila','525-6477;536-7794; 525-6544;523-0074; 523-9862','525-8137',14.580616,120.979221,'images/cbc-icon.png','9 AM','5:30 PM'),
	(168,'España','878 España corner Valencia Sts., Sampaloc Manila','741-9572/6209/6208/9565','741-6207',14.609345,120.992683,'images/cbc-icon.png','9 AM','5:30 PM'),
	(169,'Evangelista','1748 AMV Building, Evangelista corner Gen. Estrella Sts., Bangkal Makati City','759-5095; 759-5096; 856-0434; 856-0433','795-5096',14.545287,121.011051,'images/cbc-icon.png','9 AM','5:30 PM'),
	(170,'Examiner','No. 1525 Quezon Ave. cor. Examiner St., West Triangle Quezon City','376-3313/3314/3317/3318','376-3315',14.641464,121.032515,'images/cbc-icon.png','9 AM','5:30 PM'),
	(171,'Fairview','G/F Angelenix House, Commonwealth Avenue cor. Camaro St., Fairview Park Subdivision, Fairview Quezon City','937-5597; 938-9636; 937-8086; 461-3004','937-8086',14.705755,121.071707,'images/cbc-icon.png','9 AM','5:30 PM'),
	(172,'Fairview Terraces','LGF Fairview Terraces, Quirino Highway corner Maligaya Drive, Brgy. Pasong Putik, Novaliches Quezon City','285-5956; 285-6058','285-5956',14.736287,121.059387,'images/cbc-icon.png','9 AM','5:30 PM'),
	(173,'Filinvest Corp City - Commercenter','G/F Commercenter Bldg., Commerce Ave. cor. Filinvest Ave., Filinvest Corporate City, Alabang Muntinlupa City','805-0824; 805-0827','805-0146',14.419924,121.035022,'images/cbc-icon.png','9 AM','5:30 PM'),
	(174,'Filinvest Corp City - Northgate','G/F Aeon Centre Bldg., Northgate Cyberzone, Filinvest Corporate City, Alabang Muntinlupa City','776-1985; 551-5569','776-1985',14.423161,121.039722,'images/cbc-icon.png','9 AM','5:30 PM'),
	(175,'Filinvest Corporate City','G/F Wilcon Depot, Alabang-Zapote Road cor. Bridgeway Ave., Filinvest Corporate City, Alabang Muntinlupa City','775-0097/0126; 842-1993/2198','775-0322',14.421845,121.040018,'images/cbc-icon.png','9 AM','5:30 PM'),
	(176,'Five E-Com Center','G/F Five E-com Center, Harbor Drive MOA Complex Pasay City','815-1883; 815-1884; 815-1887','815-1883',14.539246,120.982757,'images/cbc-icon.png','9 AM','5:30 PM'),
	(177,'Fort Bonifacio Global City','G/F Marajo Tower, 26th Street cor. 4th Avenue, Fort Bonifacio Global City Taguig City','799-9072/9074;  856-4416/4891/5196; 403-1558 (MCB)','856-4416',14.549418,121.045939,'images/cbc-icon.png','9 AM','5:30 PM'),
	(178,'Gapan','G/F Waltermart Center - Gapan, Maharlika Highway, Brgy. Bayanihan Gapan, Nueva Ecija','(044) 486-0217; 486-0434; 486-0695','(044) 486-0434',15.303344,120.946164,'images/cbc-icon.png','9 AM','5:30 PM'),
	(179,'Gen. Luis - Katipunan','CBC Bldg., Gen. Luis St. cor. Katipunan SB Road, Brgy. Nagkaisang Nayon, Novaliches Quezon City','285-5664; 285-5665','285-5665',14.719513,121.021264,'images/cbc-icon.png','9 AM','5:30 PM'),
	(180,'Gen. Santos City','CBC Bldg., I. Santiago Boulevard General Santos City, South Cotabato','(083) 553-1618; 552-8288','(083) 553-2300',6.114043,125.179703,'images/cbc-icon.png','9 AM','5:30 PM'),
	(181,'Gen. Santos City - Dadiangas','M. Roxas Ave. corner Lapu-Lapu Street, Brgy. Dadiangas East Gen. Santos City, South Cotabato','(083) 552-8576','(083) 552-8290',6.113733,125.173319,'images/cbc-icon.png','9 AM','5:30 PM'),
	(182,'Gil Puyat Avenue','Mitsu Building, No. 65 Sen. Gil Puyat Avenue, Brgy. Palanan Makati City','844-0492/94; 844-0688/90','844-0497',14.556772,121.005034,'images/cbc-icon.png','9 AM','5:30 PM'),
	(183,'Gil Puyat Avenue - Elizabeth Place','G/F Elizabeth Place Condominium, 332 H.V. dela Costa St., Brgy. Bel-Air Makati City','776-0502; 776-3234','776-0502',14.561575,121.020835,'images/cbc-icon.png','9 AM','5:30 PM'),
	(184,'Gil Puyat Avenue - Reposo','G/F 331 Bldg., Sen. Gil Puyat Ave., Brgy. Bel-Air Makati City','541-3739; 541-3735','N/A',14.562397,121.024422,'images/cbc-icon.png','9 AM','5:30 PM'),
	(185,'Greenbelt 1','G/F Greenbelt 1, Legaspi Street near corner Paseo de Roxas, San Lorenzo Makati City','836-1387; 836-1405; 836-1406','836-1406',14.553578,121.020742,'images/cbc-icon.png','9 AM','5:30 PM'),
	(186,'Greenhills','G/F Gift Gate Bldg., Greenhills Shopping Center San Juan City','721-0543/56; 721-3189; 727-9520; 724-5078; 724-6173; 727-2798','726-7661',14.601421,121.050764,'images/cbc-icon.png','9 AM','5:30 PM'),
	(187,'Greenhills - Connecticut','101 Missouri Square Bldg., Missouri cor. Connecticut St., Northeast Greenhills San Juan City','997-3452; 997-3455','997-3452',14.601363,121.053039,'images/cbc-icon.png','9 AM','5:30 PM'),
	(188,'Greenhills - Ortigas','CBC Bldg., 14 Ortigas Avenue, Greenhills San Juan City','723-0530/01; 723-0502/04; 726-1492','723-0556; 725-9025',14.605003,121.041961,'images/cbc-icon.png','9 AM','5:30 PM'),
	(189,'Guagua','Yabut Bldg., Plaza Burgos Guagua, Pampanga','(045) 458-1043; 458-1045; 458-1046','(045) 458-1043',14.965926,120.633463,'images/cbc-icon.png','9 AM','5:30 PM'),
	(190,'Heroes Hills','Quezon Avenue corner J. Abad Santos Street, Heroes Hills, Brgy. Sta.Cruz Quezon City','351-4359/5121; 411-3375; 412-5697','351-5121',14.636953,121.025115,'images/cbc-icon.png','9 AM','5:30 PM'),
	(191,'Holy Spirit Drive','CBC Bldg., Lot 18 Block 6, Holy Spirit Drive, Don Antonio Heights, Brgy. Holy Spirit Quezon City','355-8665','355-8665',14.679269,121.081014,'images/cbc-icon.png','9 AM','5:30 PM'),
	(192,'Ilaya','#947 APL-YSL Building, Ilaya, Tondo Manila','245-2416; 245-2548; 245-2557','245-2545',14.60563,120.968912,'images/cbc-icon.png','9 AM','5:30 PM'),
	(193,'Iligan City','Lai Bldg., Quezon Avenue Extension, Pala-o Iligan City, Lanao del Norte','(063) 221-5477/79; 492-3009; 221-3009','(063) 492-3010',8.228316,124.243666,'images/cbc-icon.png','9 AM','5:30 PM'),
	(194,'Iligan City - Solana District','G/F Andres Bonifacio Highway, Brgy. San Miguel Iligan City, Lanao Del Norte','(063) 224-7664; 224-7665','N/A',8.236679,124.243784,'images/cbc-icon.png','9 AM','5:30 PM'),
	(195,'Ilocos Norte - San Nicolas','National Highway, Brgy. 2, San Baltazar San Nicolas, Ilocos Norte','(077) 600-0994; 600-0995','(077) 600-0995',18.175086,120.593019,'images/cbc-icon.png','9 AM','5:30 PM'),
	(196,'Iloilo - Iznart','G/F John A. Tan Bldg., Iznart Street, Brgy. Magsaysay Iloilo City','(033) 337-9477;  509-9868; 300-0644','(033) 337-9566',10.69427,122.569181,'images/cbc-icon.png','9 AM','5:30 PM'),
	(197,'Iloilo - Jaro','CBC Bldg., E. Lopez Street, Jaro Iloilo City','(033) 320-3738; 320-3791','(033) 503-2955',10.718237,122.56084,'images/cbc-icon.png','9 AM','5:30 PM'),
	(198,'Iloilo - Mabini','Tomas Sun Bldg., A. Mabini Street Iloilo City','(033) 335-0295; 335-0370; 509-0599','(033) 335-0370',10.695628,122.564628,'images/cbc-icon.png','9 AM','5:30 PM'),
	(199,'Iloilo - Mandurriao','G/F Injap Bldg., Benigno Aquino Ave., Brgy. San Rafael, Mandurriao Iloilo City','(033) 333-3988; 333-4088','(033) 501-6078',10.703985,122.553517,'images/cbc-icon.png','9 AM','5:30 PM'),
	(200,'Iloilo - Rizal','CBC Bldg., Rizal cor. Gomez Sts., Brgy. Ortiz Iloilo City','(033) 336-0947; 338-2136; 509-8838','(033) 338-2144',10.69171,122.572296,'images/cbc-icon.png','9 AM','5:30 PM'),
	(201,'Intramuros','Sitio Grande, # 409 A. Soriano Avenue, Intramuros Manila','528-4241; 536-1044; 536-5971; 310-5122','536-1044',14.593473,120.973795,'images/cbc-icon.png','9 AM','5:30 PM'),
	(202,'Iriga','JP Rizal St., Highway 1, San Roque Iriga City, Camarines Sur','(054) 299-7000; 456-1498','(054) 456-1498',13.420734,123.410308,'images/cbc-icon.png','9 AM','5:30 PM'),
	(203,'Isabela - Ilagan','G/F North Star Mall, Maharlika Highway, Brgy. Alibagu Ilagan, Isabela','(078) 323-0179; 323-0178','(078) 323-0179',17.098317,121.855061,'images/cbc-icon.png','9 AM','5:30 PM'),
	(204,'Isabela - Roxas','National Road, Brgy. Bantug Roxas, Isabela','(078) 376-0422; 376-0434','(078) 642-0022',17.119812,121.61512,'images/cbc-icon.png','9 AM','5:30 PM'),
	(205,'J. Abad Santos Ave. - Quiricada','#1714 J. Abad Santos Ave. near corner Quiricada Street, Brgy. 252, Tondo Manila','253-6803; 253-6804','253-0603',14.614159,120.976927,'images/cbc-icon.png','9 AM','5:30 PM'),
	(206,'J. Abad Santos Avenue','2159 J. Abad Santos Ave., cor. Batangas Street, Tondo Manila','255-1201 to 02; 255-1204','255-1203',14.620683,120.977649,'images/cbc-icon.png','9 AM','5:30 PM'),
	(207,'Juan Luna','G/F Aclem Bldg., 501 Juan Luna St., Binondo Manila','247-3570/3795/3786; 480-0211','247-3795',14.601003,120.973007,'images/cbc-icon.png','9 AM','5:30 PM'),
	(208,'Kalayaan Ave.','G/F PPS Building, Kalayaan Avenue Quezon City','332-3858; 332-3859; 332-3860','332-3859',14.638441,121.055137,'images/cbc-icon.png','9 AM','5:30 PM'),
	(209,'Kalibo','Waldolf Garcia Building, Osmeña Avenue Kalibo, Aklan','(036) 500-8088; 500-8188; 268-2988','(036) 500-8188',11.71,122.362992,'images/cbc-icon.png','9 AM','5:30 PM'),
	(210,'Kalookan','CBC Bldg., 167 Rizal Avenue Extension, Grace Park Kalookan City','364-0515/35; 364-0717/31; 364-0494; 364-9948; 366-9457','364-9864',14.645012,120.983397,'images/cbc-icon.png','9 AM','5:30 PM'),
	(211,'Kalookan - 10th Ave.','No. 275 10th Avenue corner 3rd Street, Grace Park Kalookan City','287-5484; 287-5489','287-5489',14.651597,120.986817,'images/cbc-icon.png','9 AM','5:30 PM'),
	(212,'Kalookan - 8th Ave.','No. 279 Rizal Ave. cor. 8th Ave., Grace Park Kalookan City','287-0001; 287-0262','287-0262',14.648625,120.983504,'images/cbc-icon.png','9 AM','5:30 PM'),
	(213,'Kalookan - Camarin','Space No.3, Zabarte Town Center, No. 588 Camarin Road corner Zabarte Road Kalookan City','442-6830; 442-7541','442-6825',14.756163,121.042706,'images/cbc-icon.png','9 AM','5:30 PM'),
	(214,'Kalookan - Monumento','CBC Bldg., 779 McArthur Highway, District 2, Brgy. 78 Kalookan City','364-2571; 361-3270; 921-3043','361-3270',14.658376,120.983733,'images/cbc-icon.png','9 AM','5:30 PM'),
	(215,'Kamias','G/F CRM Bldg. II, 116 Kamias Road cor. Kasing - Kasing St. Quezon City','433-6007; 920-7367; 920-8770','920-5723',14.633744,121.056723,'images/cbc-icon.png','9 AM','5:30 PM'),
	(216,'Kamuning','SKY47 Bldg., #47 Kamuning Road Quezon City','287-3369; 287-3368','N/A',14.628534,121.037793,'images/cbc-icon.png','9 AM','5:30 PM'),
	(217,'Karuhatan','No. 248 McArthur Highway, Karuhatan Valenzuela City','291-0431/0175; 440-0033','440-0033',14.688456,120.974956,'images/cbc-icon.png','9 AM','5:30 PM'),
	(218,'Katipunan Ave. - Loyola Heights','G/F Elizabeth Hall Bldg., Katipunan Ave., Loyola Heights Quezon City','287-9218; 287-9221','N/A',14.646658,121.073998,'images/cbc-icon.png','9 AM','5:30 PM'),
	(219,'Katipunan Ave. ? St. Ignatius','CBC Bldg., No.121 Katipunan Ave., Brgy. St. Ignatius Quezon City','913-5532; 912-5003; 913-3226','913-5532',14.611265,121.070663,'images/cbc-icon.png','9 AM','5:30 PM'),
	(220,'Kidapawan City','G/F Eva Bldg., Quezon Boulevard cor. Tomas Claudio St., National Highway Kidapawan City, Cotabato','(064) 278-3509; 278-3510','(064) 278-3509',7.009258,125.089601,'images/cbc-icon.png','9 AM','5:30 PM'),
	(221,'Koronadal City','G/F LBU Bldg., Gen. Santos Drive corner Aquino St. Koronadal City, South Cotabato','(083) 228-7838; 228-7839; 520-1788','(083) 228-7839',6.498247,124.846691,'images/cbc-icon.png','9 AM','5:30 PM'),
	(222,'La Trinidad','G/F SJV Bulasao Bldg., Halsema Highway, Km. 4 La Trinidad, Benguet','(074) 422-2065/2590; 309-1663','(074) 422-2065',16.442802,120.592362,'images/cbc-icon.png','9 AM','5:30 PM'),
	(223,'La Union - Agoo','National Highway, San Jose Norte Agoo, La Union','(072) 682-0350; 682-0391','(072) 682-0350',16.318775,120.368054,'images/cbc-icon.png','9 AM','5:30 PM'),
	(224,'La Union - San Fernando','Roger Pua Phee Building, National Highway, Brgy. 3 San Fernando, La Union','(072) 607-8931/8932/8933/8934','(072) 607-8934',16.620091,120.316695,'images/cbc-icon.png','9 AM','5:30 PM'),
	(225,'Lagro','CBC Bldg., Lot 32 Blk 125, Quirino Highway, Greater Lagro Quezon City','372-8226; 372-8223','372-8223',14.735285,121.065795,'images/cbc-icon.png','9 AM','5:30 PM'),
	(226,'Laguna - Biñan','G/F Raja Cordell Bldg., National Highway, Brgy. San Vicente Biñan, Laguna','(049) 511-3196; 245-0440 (manila line)','(049) 511-3196',14.334506,121.079591,'images/cbc-icon.png','9 AM','5:30 PM'),
	(227,'Laguna - Cabuyao','G/F Centro Mall, Pulo Cabuyao City','(049) 544-2287; 544-2289','(049) 544-2287 (telefax)',14.242421,121.131094,'images/cbc-icon.png','9 AM','5:30 PM'),
	(228,'Laguna - Calamba','CBC Bldg., National Highway, Crossing Calamba, Laguna','(049) 545-7134 to 38','(049)545-7138',14.20432,121.156764,'images/cbc-icon.png','9 AM','5:30 PM'),
	(229,'Laguna - Los Baños','JM Place, National Road, San Antonio Los Baños, Laguna','(049) 557-3223 / 557-3224','N/A',14.178337,121.243005,'images/cbc-icon.png','9 AM','5:30 PM'),
	(230,'Laguna - San Pedro','No. 365 National Highway, Brgy. Nueva San Pedro City, Laguna','816-3864; 816-4862','N/A',14.358753,121.059335,'images/cbc-icon.png','9 AM','5:30 PM'),
	(231,'Laguna - Sta. Cruz','A. Regidor St., Poblacion IV Sta. Cruz, Laguna','(049) 501-4977; 501-4107; 501-4085','(049) 501-4107',14.283031,121.413881,'images/cbc-icon.png','9 AM','5:30 PM'),
	(232,'Laoag City','Liberato Abadilla Street, Brgy. 17, San Francisco Laoag City, Ilocos Norte','(077) 772-1024/27; 771-4688; 771-4417','(077) 772-1035',18.193941,120.596286,'images/cbc-icon.png','9 AM','5:30 PM'),
	(233,'Las Piñas','CBC Bldg., Alabang-Zapote Road cor. Aries St., Pamplona Park Subdivision Las Piñas City','874-6204; 874-6210','874-6414',14.453428,120.974995,'images/cbc-icon.png','9 AM','5:30 PM'),
	(234,'Las Piñas - Manuela','CBC Bldg., Alabang - Zapote Road cor. Philamlife Ave., Pamplona Dos Las Piñas City','872-9801/9572/9533; 871-0770','871-0771',14.451283,120.97815,'images/cbc-icon.png','9 AM','5:30 PM'),
	(235,'Las Piñas - Marcos Alvarez','G/F Metro Towne Center, 2020 Marcos Alavarez Ave., Talon 5 Las Piñas City','370-9724','N/A',14.425396,121.001606,'images/cbc-icon.png','9 AM','5:30 PM'),
	(236,'Las Piñas - Naga Road','Lot 3, Naga Road, Pulanglupa 2 Las Piñas City','541-1671; 541-1674','N/A',14.464093,120.987131,'images/cbc-icon.png','9 AM','5:30 PM'),
	(237,'Lavezares','412 Lavezares Street, San Nicolas Manila','521-6978; 521-7132; 521-7128','521-6978',14.600439,120.969854,'images/cbc-icon.png','9 AM','5:30 PM'),
	(238,'Legaspi Village - AIM','G/F Cacho-Gonzales Bldg., 101 Aguirre cor. Trasierra Sts., Legaspi Village, San Lorenzo Makati City','818-8156; 818-0734; 818-9649; 894-5882 to 85','818-0240',14.552367,121.017993,'images/cbc-icon.png','9 AM','5:30 PM'),
	(239,'Legaspi Village - Amorsolo','G/F CAP Bldg., Herrera cor. Amorsolo Sts., Legaspi Village, San Lorenzo Makati City','832-6871; 833-5668','833-5668',14.555493,121.014874,'images/cbc-icon.png','9 AM','5:30 PM'),
	(240,'Legaspi Village - C. Palanca','Suite A, G/F Basic Petroleum Bldg., 104 Carlos Palanca Jr. Street, Legaspi Village Makati City','894-5915/18; 810-1464','894-5868',14.555563,121.019328,'images/cbc-icon.png','9 AM','5:30 PM'),
	(241,'Legaspi Village - Esteban','G/F PPI Bldg., No. 109 Esteban St., Legaspi Village, Brgy. San Lorenzo Makati City','800-6147; 805-4820','N/A',14.55707,121.01698,'images/cbc-icon.png','9 AM','5:30 PM'),
	(242,'Legaspi Village - Perea','G/F Greenbelt Mansion, 106 Perea St., Legaspi Village, Brgy. San Lorenzo Makati City','893-2273/2272/2827','893-2272',14.554706,121.020678,'images/cbc-icon.png','9 AM','5:30 PM'),
	(243,'Legaspi Village - Salcedo','G/F Fedman Suites, 199 Salcedo Street, Legaspi Village, San Lorenzo Makati City','893-7680; 893-2618; 759-2462; 893-1503; 816-0905','893-3746',14.55663,121.015308,'images/cbc-icon.png','9 AM','5:30 PM'),
	(244,'Legazpi City','G/F Emma Chan Bldg., F. Imperial Street, Brgy. Capantawan Legazpi City, Albay','(052) 480-6048; 480-6519; 214-3077','429-1813 (Direct-Mla line)',13.146403,123.751112,'images/cbc-icon.png','9 AM','5:30 PM'),
	(245,'Lipa City - Tambo','President Jose P. Laurel Highway, Tambo Lipa City, Batangas','(043)757-6331; 757-6332','N/A',13.940324,121.142592,'images/cbc-icon.png','9 AM','5:30 PM'),
	(246,'Lucena City','Georkimart Bldg., 233 Quezon Avenue Lucena City, Quezon','(042) 373-2317; 373-3872/80/87; 660-7861','(042) 373-3879',13.93161,121.612773,'images/cbc-icon.png','9 AM','5:30 PM'),
	(247,'Maasin City','G/F SJC Bldg., Tomas Oppus St., Brgy. Tunga - Tunga Maasin City, Southern Leyte','(053) 381-2287; 381-2288; 570-8488','(053) 570-8488',10.133228,124.837643,'images/cbc-icon.png','9 AM','5:30 PM'),
	(248,'Mabalacat - Dau','R.D. Policarpio Bldg., McArthur Highway, Dau Mabalacat City, Pampanga','(045) 892-4969; 892-6040','(045) 892-6040',15.175404,120.587534,'images/cbc-icon.png','9 AM','5:30 PM'),
	(249,'Macapagal Ave. - Aseana Square','Aseana Square (Caltex Area) D. Macapagal Avenue, Aseana City, Brgy. Tambo Parañaque City','881-5124; 881-5179','N/A',14.520549,120.990279,'images/cbc-icon.png','9 AM','5:30 PM'),
	(250,'Macapagal Ave. - Biopolis','G/F The Biopolis, Central Business Park, 1-A Diosdado Macapagal Avenue Pasay City','785-643 / 02-785-6434','N/A',14.533733,120.988765,'images/cbc-icon.png','9 AM','5:30 PM'),
	(251,'Macapagal Ave. - Doubledragon','G/F Phase 1, DD Meridian Park Plaza, Macapagal Ave. cor. EDSA Ext. Pasay City','838-3805; 838-3804','838-3804',14.535686,120.989384,'images/cbc-icon.png','9 AM','5:30 PM'),
	(252,'Magallanes Village','G/F DHI Bldg., No. 2 Lapu-Lapu Ave. corner EDSA, Magallanes Village, Magallanes Makati City','757-0272/0240; 852-1290; 852-1245','852-1245',14.539523,121.015461,'images/cbc-icon.png','9 AM','5:30 PM'),
	(253,'Makati - Comembo','F & V Bldg., No. 46 JP Rizal Ext., Brgy. Comembo Makati City','802-2616; 802-2614; 802-2613','N/A',14.546893,121.064199,'images/cbc-icon.png','9 AM','5:30 PM'),
	(254,'Makati - JP Rizal','G/F Casa Catalina Bldg., JP Rizal corner Honradez Streets, Brgy. Olimpia Makati City','815-6036 to 38','815-6038',14.570851,121.021054,'images/cbc-icon.png','9 AM','5:30 PM'),
	(255,'Makati - Kalayaan Ave.','G/F Zentro Bldg., 8445 Mercedes St. cor. Buntal St., Brgy. Poblacion Makati City','838-7253; 838-7252','N/A',14.563961,121.030113,'images/cbc-icon.png','9 AM','5:30 PM'),
	(256,'Makati Avenue','G/F CBC Bldg., Makati Avenue cor. Hercules St., Bel-Air Village, Brgy. Bel-Air Makati City','890-6971 to 74','890-6975',14.563177,121.028426,'images/cbc-icon.png','9 AM','5:30 PM'),
	(257,'Makati Main (Head Office)','CBC Bldg., 8745 Paseo de Roxas cor Villar St. Makati City','885-5555','892-0220; 817-1325',14.558161,121.024677,'images/cbc-icon.png','9 AM','5:30 PM'),
	(258,'Malabon - Concepcion','Gen. Luna cor. Paez Sts., Concepcion Malabon City','281-0102/03/04/05; 281-0293','281-0106',14.668229,120.947269,'images/cbc-icon.png','9 AM','5:30 PM'),
	(259,'Malabon - Gov. Pascual','CBC Bldg., Gov. Pascual Avenue, Brgy. Acacia Malabon City','352-1816;352-1817; 352-1822; 961-2147','352-1822',14.669207,120.969546,'images/cbc-icon.png','9 AM','5:30 PM'),
	(260,'Malabon - Potrero','CBC Bldg., McArthur Highway, Potrero Malabon City','448-0524/25; 361-8671/7056','448-0525',14.663104,120.984383,'images/cbc-icon.png','9 AM','5:30 PM'),
	(261,'Malanday','Km 614 McArthur Highway, Malanday Valenzuela City','432-9787; 292-6956/57; 445-3201; 432-9785','292-6956',14.717069,120.957045,'images/cbc-icon.png','9 AM','5:30 PM'),
	(262,'Malaybalay City','G/F Bethelda Bldg., Sayre Highway Malaybalay City, Bukidnon','(088) 813-3372','813-3373',8.152182,125.129774,'images/cbc-icon.png','9 AM','5:30 PM'),
	(263,'Malolos City','G/F Graceland Mall, BSU Grounds, McArthur Highway, Guinhawa Malolos City, Bulacan','(044) 794-5840; 662-2013','(044) 794-5840',14.856963,120.812508,'images/cbc-icon.png','9 AM','5:30 PM'),
	(264,'Mandaluyong - Boni Ave.','G/F VOS Bldg., Boni Avenue cor. San Rafael St., Plain View Mandaluyong City','746-6283/85; 534-2289','534-1968',14.580733,121.030255,'images/cbc-icon.png','9 AM','5:30 PM'),
	(265,'Mandaluyong - D. Guevara','G/F 19 Libertad Plaza, Domingo Guevara St., Highway Hills Mandaluyong City','534-5528; 534-5529','534-5529',14.578834,121.050565,'images/cbc-icon.png','9 AM','5:30 PM'),
	(266,'Mandaluyong - Pioneer','UG-05 Globe Telecom Plaza Tower I, Pioneer Street, Brgy. Ilaya Mandaluyong City','746-6949; 635-4198; 632-1399','746-6948',14.57161,121.049588,'images/cbc-icon.png','9 AM','5:30 PM'),
	(267,'Manila - Maceda','M. Daguman Bldg., A. Maceda St., Sampaloc Manila','521-6644; 521-6643','521-6644',14.619544,120.993021,'images/cbc-icon.png','9 AM','5:30 PM'),
	(268,'Marikina - Fairlane','G/F E & L Patricio Bldg., No. 809 J.P. Rizal Ave., Concepcion Uno Marikina City','997-0684; 997-0897; 998-1817; 948-6120 (MCB)','997-0897',14.66337,121.106177,'images/cbc-icon.png','9 AM','5:30 PM'),
	(269,'Marikina - Gil Fernando','Block 9, Lot 14 Gil Fernando Ave. Marikina City','646-0780; 646-8032; 358-2138','646-8032',14.630849,121.101547,'images/cbc-icon.png','9 AM','5:30 PM'),
	(270,'Marikina - SSS Village','Lilac corner Rainbow Streets, Rancho Estate IV, Concepcion Dos Marikina City','948-5135; 941-7709; 997-3343','942-0048',14.640671,121.1218,'images/cbc-icon.png','9 AM','5:30 PM'),
	(271,'Marikina - Sta. Elena','250 J.P. Rizal Street, Sta. Elena Marikina City','646-4281; 646-4277; 646-4279; 646-1807','646-1807',14.663381,121.106207,'images/cbc-icon.png','9 AM','5:30 PM'),
	(272,'Marilao','G/F SM City Marilao, KM. 21, Brgy. Ibayo Marilao, Bulacan','(044) 815-8956/8957','(044) 815-8956',14.754805,120.95487,'images/cbc-icon.png','9 AM','5:30 PM'),
	(273,'Mariveles - FAB','GF Tamayo\'s Building, Avenue of the Phils., Brgy. Malaya, Freeport Area of Bataan (FAB) Mariveles, Bataan','(047) 633-9569; 633-9699','N/A',14.438421,120.497778,'images/cbc-icon.png','9 AM','5:30 PM'),
	(274,'Masangkay','959-961 G. Masangkay Street, Binondo Manila','244-1828/35/48/56/59','244-1833',14.603622,120.976258,'images/cbc-icon.png','9 AM','5:30 PM'),
	(275,'Masangkay - Luzon','1192 G. Masangkay St., Sta. Cruz Manila','255-0739; 254-9974; 254-9335','254-9974',14.606911,120.97784,'images/cbc-icon.png','9 AM','5:30 PM'),
	(276,'Masbate','G/F Espinosa Bldg., Zurbito St., Brgy Pating Masbate City','(056) 333-2363/65','(056) 333-2365',12.367709,123.618551,'images/cbc-icon.png','9 AM','5:30 PM'),
	(277,'Mayon','480 Mayon St. Maharlika Sta. Mesa Heights Quezon City','731-9054/2766; 741-2409','731-2766',14.630812,120.995456,'images/cbc-icon.png','9 AM','5:30 PM'),
	(278,'Meycauayan','CBC Bldg., Malhacan Road Meycauayan, Bulacan','(044) 815-6889; 815-6961; 815-6958','(044) 815-6961',14.739437,120.967052,'images/cbc-icon.png','9 AM','5:30 PM'),
	(279,'Midsayap','CBC Building, Quezon Ave., Poblacion 2 Midsayap, Cotabato','(064) 229-9700','(064) 229-9750',7.18868,124.53324,'images/cbc-icon.png','9 AM','5:30 PM'),
	(280,'Mindanao Ave.','G/F LJC Building, 189 Mindanao Ave. Bahay Toro Quezon City','277-4768; 277-4782','277-4768',14.674561,121.032008,'images/cbc-icon.png','9 AM','5:30 PM'),
	(281,'Muntinlupa- Putatan','G/F Teknikos Bldg., National Highway, Brgy. Putatan Muntinlupa City','511-0980; 808-1817','808-1819',14.399532,121.046358,'images/cbc-icon.png','9 AM','5:30 PM'),
	(282,'N. Domingo','G/F The Main Place Bldg., No. 1 Pinaglabanan cor. N. Domingo Sts. San Juan City','470-2915; 470-2916; 470-2917','470-2916',14.607806,121.027253,'images/cbc-icon.png','9 AM','5:30 PM'),
	(283,'Naga City','Centro- Peñafrancia Street Naga City','(054) 472-1359; 472-1358; 473-7920','250-8169 (Manila line)',13.623539,123.185768,'images/cbc-icon.png','9 AM','5:30 PM'),
	(284,'Navotas','No. 500 M. Naval St. near corner Lacson St. Brgy. North Bay Boulevard North (NBBN) Navotas City','283-0752 to 54','283-0752',14.648461,120.951321,'images/cbc-icon.png','9 AM','5:30 PM'),
	(285,'Negros Occidental - Kabankalan','CBC Building, National Highway, Brgy. 1 Kabankalan, Negros Occidental','(034) 471-3349; 471-3364; 471-3738','(034) 471-3349',9.99408,122.817812,'images/cbc-icon.png','9 AM','5:30 PM'),
	(286,'Negros Occidental - San Carlos','Rizal corner Carmona Streets San Carlos, Negros Occidental','(034) 312-5818; 312-5819; 729-3276','(034) 729-3276',10.482498,123.421563,'images/cbc-icon.png','9 AM','5:30 PM'),
	(287,'Novaliches','954 Quirino Highway, Novaliches Proper, Novaliches Quezon City','936-3512; 937-1133/35/36','936-1037',14.72048,121.039878,'images/cbc-icon.png','9 AM','5:30 PM'),
	(288,'Novaliches - Sangandaan','CBC Bldg., Quirino Highway corner Tandang Sora Ave., Brgy. Sangandaan, Novaliches Quezon City','935-3049; 935-3491','935-2130',14.679578,121.018837,'images/cbc-icon.png','9 AM','5:30 PM'),
	(289,'Novaliches - Sta. Monica','G/F E & V Building, Quirino Highway corner Dumalay Street, Novaliches Quezon City','288-3683; 288-2302','N/A',14.725974,121.041037,'images/cbc-icon.png','9 AM','5:30 PM'),
	(290,'Novaliches - Talipapa','528 Copengco Bldg., Quirino Highway, Talipapa, Novaliches Quezon City','936-2202; 936-3311; 936-7765','936-2202',14.689031,121.026777,'images/cbc-icon.png','9 AM','5:30 PM'),
	(291,'Novaliches - Zabarte','G/F C.I. Bldg., 1151 Quirino Highway corner Zabarte Road, Brgy. Kaligayahan, Novaliches Quezon City','461-7691; 461-7694; 461-7698','461-7691',14.731913,121.048484,'images/cbc-icon.png','9 AM','5:30 PM'),
	(292,'Nueva','Unit Nos. 557 and 559 G/F Ayson Building, Yuchengco St., Binondo Manila','247-6374; 247-6396; 247-0493; 480-00-66','247-6396',14.600196,120.975732,'images/cbc-icon.png','9 AM','5:30 PM'),
	(293,'Nueva Ecija - Sta. Rosa','CBC Building, Maharlika Highway, Poblacion Sta. Rosa, Nueva Ecija','(044) 333-6215; 940-1407','(044) 333-6215',15.424453,120.938173,'images/cbc-icon.png','9 AM','5:30 PM'),
	(294,'Occ. Mindoro - San Jose','Liboro corner Rizal Street San Jose, Occidental Mindoro','(043) 491-0095; 491-0096','(043) 491-0095',12.35133,121.063951,'images/cbc-icon.png','9 AM','5:30 PM'),
	(295,'Olongapo - Downtown','No. 2 corner 20th St. East Bajac-Bajac Olongapo City, Zambales','(047) 610-9826','N/A',14.840124,120.286063,'images/cbc-icon.png','9 AM','5:30 PM'),
	(296,'Ongpin','G/F Se Jo Tong Building, 808 Ongpin Street, Sta. Cruz Manila','733-8962 to 66; 735-5362','733-8964',14.601622,120.977645,'images/cbc-icon.png','9 AM','5:30 PM'),
	(297,'Ormoc City','CBC Building, Real cor. Lopez Jaena Sts. Ormoc City, Leyte','(053) 255-3651 to 53','(053) 561-8348',11.007851,124.607331,'images/cbc-icon.png','9 AM','5:30 PM'),
	(298,'Oroquieta','1225-1227, Oroquieta St., Sta. Cruz Manila','521-6648; 521-6650','521-6648',14.609154,120.983075,'images/cbc-icon.png','9 AM','5:30 PM'),
	(299,'Ortigas - ADB Avenue','LGF City and Land Mega Plaza ADB Ave. cor. Garnet Rd. Ortigas Ctr. Pasig City','687-2457/58; 687-2226/3263','687-2457',14.589364,121.060494,'images/cbc-icon.png','9 AM','5:30 PM'),
	(300,'Ortigas - Complex','G/F Padilla Building, F. Ortigas Jr. Road formerly Emerald Avenue cor. Ruby Road, Ortigas Center Pasig City','634-3469; 631-2772','633-9039',14.587461,121.061395,'images/cbc-icon.png','9 AM','5:30 PM'),
	(301,'Ortigas - Jade Drive','Unit G-03, Antel Global Corporate Center Jade Drive, Ortigas Center Pasig City','638-4489; 638-4490; 638-4510; 638-4540','638-4540',14.583795,121.062937,'images/cbc-icon.png','9 AM','5:30 PM'),
	(302,'Ortigas - Tektite','Unit EC-06B PSE Center (Tektite) Ortigas Center Pasig City','637-0231; 637-0238','N/A',14.582745,121.061312,'images/cbc-icon.png','9 AM','5:30 PM'),
	(303,'Ortigas Ave. Ext. - Riverside','Unit 2-3 Riverside Arcade Ortigas Avenue Extension corner Riverside Drive, Brgy. Sta. Lucia Pasig City','748-18-08; 748-4426; 655-7403; 655-8350','655-8350',14.588669,121.103863,'images/cbc-icon.png','9 AM','5:30 PM'),
	(304,'Ortigas Center','Unit 101 Parc Chateau Condominium Onyx corner Sapphire Streets, Ortigas Center Pasig City','633-7960/70/53/54; 634-0178','633-7971',14.586556,121.062892,'images/cbc-icon.png','9 AM','5:30 PM'),
	(305,'Ozamiz City','Gomez corner Kaamiño Streets Ozamiz City, Misamis Occidental','(088) 521-2658 to 60','(088) 521-2659',8.145415,123.842438,'images/cbc-icon.png','9 AM','5:30 PM'),
	(306,'Paco','Gen. Luna corner Escoda Street, Paco Manila','526-6492; 536-6630/31/72','536-6657',14.579067,120.990654,'images/cbc-icon.png','9 AM','5:30 PM'),
	(307,'Paco - Angel Linao','Unit 1636 & 1638 Angel Linao St. Paco Manila','242-2849; 242-3416','242-2849',14.577587,120.993665,'images/cbc-icon.png','9 AM','5:30 PM'),
	(308,'Paco - Otis','G/F Union Motor Corporation Bldg., 1760 Dra. Paz Guazon St., Paco Manila','561-6902; 561-6981; 564-2247','561-6981',14.589321,120.997451,'images/cbc-icon.png','9 AM','5:30 PM'),
	(309,'Padre Faura','G/F Regal Shopping Center, A. Mabini cor. P. Faura Sts., Ermita Manila','526-0586; 527-3202; 527-7865','527-3202',14.577359,120.981472,'images/cbc-icon.png','9 AM','5:30 PM'),
	(310,'Pagadian City','G/F Marasigan Bldg., F.S. Pajares Avenue Pagadian City,  Zamboanga','(062) 215-2781/82; 925-1116','(062) 214-3877',7.824261,123.437606,'images/cbc-icon.png','9 AM','5:30 PM'),
	(311,'Pangasinan - Alaminos City','Montemayor Building, Marcos Avenue, Brgy. Palamis Alaminos City, Pangasinan','(075) 551-3859; 654-0286','654-0296',16.154246,119.97941,'images/cbc-icon.png','9 AM','5:30 PM'),
	(312,'Pangasinan - Bayambang','CBC Building, No. 91, Poblacion Sur Bayambang, Pangasinan','(075) 632-5776; 632-5775','(075) 632-5776',15.807312,120.458016,'images/cbc-icon.png','9 AM','5:30 PM'),
	(313,'Pangasinan - Rosales','CBC Building, Calle Dewey Rosales, Pangasinan','(075) 633-3852; 633-3853','(075) 633-3852',15.894042,120.631402,'images/cbc-icon.png','9 AM','5:30 PM'),
	(314,'Pangasinan - Urdaneta','G/F EF Square Bldg., Poblacion St., MacArthur Highway Urdaneta City, Pangasinan','(075) 632-2637; 632-0541; 656-2022; 656-2618','(075) 656-2618',15.973397,120.571249,'images/cbc-icon.png','9 AM','5:30 PM'),
	(315,'Parañaque - Baclaran','Quirino Avenue cor. Aragon St., Baclaran Parañaque City','581-1057; 663-0435','N/A',14.527666,120.997335,'images/cbc-icon.png','9 AM','5:30 PM'),
	(316,'Parañaque - Moonwalk','G/F JDLA Bldg., Milky Way St. cor Armstrong Avenue, Moonwalk Village, Brgy. Moonwalk Parañaque City','846-9729; 846-9739; 846-9771','846-9739',14.497936,121.0133,'images/cbc-icon.png','9 AM','5:30 PM'),
	(317,'Parañaque - NAIA','G/F AFCI Building, 4988 Ninoy Aquino Avenue corner Kabihasnan St., Brgy. San Dionisio Parañaque City','541-8857; 541-8858','N/A',14.490897,120.992068,'images/cbc-icon.png','9 AM','5:30 PM'),
	(318,'Parañaque - San Antonio Valley','San Antonio Shopping Center, San Antonio Road, Brgy. San Antonio Valley 1 Parañaque City','816-2448; 816-2451','N/A',14.467029,121.020717,'images/cbc-icon.png','9 AM','5:30 PM'),
	(319,'Parañaque - Sucat','No. 8260 (between AMA Computer School and PLDT) Dr. A. Santos Avenue, Brgy. San Isidro Parañaque City','820-8951/52; 820-2044; 825-2501','825-9517',14.471612,121.006483,'images/cbc-icon.png','9 AM','5:30 PM'),
	(320,'Pasay - Libertad','CBC-Building, 184 Libertad Street, Antonio Arnaiz Ave. Pasay City','551-7159; 834-8978; 831-0306; 831-0498','551-7160',14.546693,120.995982,'images/cbc-icon.png','9 AM','5:30 PM'),
	(321,'Pasay - Roxas Blvd.','GF Unit G-01 Antel Seaview Towers 2626 Roxas Blvd. Pasay City','551-9067/68/69; 833-5048','551-1768',14.540808,120.992413,'images/cbc-icon.png','9 AM','5:30 PM'),
	(322,'Paseo de Sta. Rosa','Unit 3, Paseo 5, Paseo de Sta. Rosa Sta. Rosa City, Laguna','(049) 837-1831; 502-3016; 502-2859; 827-8178; 420-8042 (Manila line)','420-8042 (Manila line)',14.247392,121.063099,'images/cbc-icon.png','9 AM','5:30 PM'),
	(323,'Pasig - A. Mabini','A. Mabini Street, Brgy. Kapasigan Pasig City','534-5178; 634-4028','N/A',14.563575,121.076011,'images/cbc-icon.png','9 AM','5:30 PM'),
	(324,'Pasig - C. Raymundo','G/F MicMar Apartments No. 6353 C. Raymundo Avenue Brgy. Rosario Pasig City','642-3652; 628-3912; 628-3922','576- 4134',14.584519,121.087938,'images/cbc-icon.png','9 AM','5:30 PM'),
	(325,'Pasig - Dela Paz','Amang Rodriguez Avenue, Brgy. Dela Paz Pasig City','637-7874; 637-7876','N/A',14.620899,121.092818,'images/cbc-icon.png','9 AM','5:30 PM'),
	(326,'Pasig - Mercedes','Commercial Motors Corp. Compound, Mercedes Ave., Brgy. San Miguel Pasig City','628-0197/0209/0201','628-0211',14.567375,121.093605,'images/cbc-icon.png','9 AM','5:30 PM'),
	(327,'Pasig - San Joaquin','No. 43 M. Concepcion Ave., San Joaquin Pasig City','997-2815; 997-2816; 997-2817','997-2815',14.552696,121.073171,'images/cbc-icon.png','9 AM','5:30 PM'),
	(328,'Pasig - Santolan','G/F Felmarc Business Center, Amang Rodriguez Avenue, Santolan Pasig City','646-0635; 682-3474; 682-3514; 681-4575','646-0514',14.609433,121.091818,'images/cbc-icon.png','9 AM','5:30 PM'),
	(329,'Pasig - SM Supercenter','G/F SM Supercenter Pasig, Frontera Drive, C-5, Ortigas Pasig City','706-3207/3208/3209','706-3208',14.5847,121.077,'images/cbc-icon.png','9 AM','5:30 PM'),
	(330,'Pasig Valle Verde','G/F Reliance IT Center, E. Rodriguez Jr. Ave., Ugong Pasig City','706-9242; 706-9243','706-9243',14.577693,121.073832,'images/cbc-icon.png','9 AM','5:30 PM'),
	(331,'Paso De Blas','G/F CYT Bldg., No. 178 Paso de Blas Valenzuela City','292-3215/3213/3216','444-8850',14.706046,120.989791,'images/cbc-icon.png','9 AM','5:30 PM'),
	(332,'Pasong Tamo - Bagtikan','G/F Trans-Phil House 1177 Chino Roces Ave. cor. Bagtikan St. Makati City','403-4820; 403-4821; 403-4822; 738-7591','403-4821',14.562714,121.01108,'images/cbc-icon.png','9 AM','5:30 PM'),
	(333,'Pasong Tamo - Cityland','Units UG30-UG32 Cityland Pasong Tamo Tower 2210 Pasong Tamo St. Makati City','817-9337/47/51/60/82','817-9351',14.549709,121.0133,'images/cbc-icon.png','9 AM','5:30 PM'),
	(334,'Pasong Tamo - La Fuerza Plaza','La Fuerza Plaza 1, Chino Roces Ave. Makati City','541-8850; 541-8851','NA',14.54478,121.016592,'images/cbc-icon.png','9 AM','5:30 PM'),
	(335,'Pateros','G/F Adela Building, M. Almeda St., Brgy. San Roque Pateros','531-6929; 531-6810; 654-3079','654-3079',14.541888,121.06699,'images/cbc-icon.png','9 AM','5:30 PM'),
	(336,'Philam','#8 East Lawin Drive, Philam Homes Quezon City','927-9841; 924-2872; 929-5734','929-3115',14.650405,121.030112,'images/cbc-icon.png','9 AM','5:30 PM'),
	(337,'Project 8 - Shorthorn','Shorthorn Street, Project 8 Quezon City','373-3363; 373-3369','373-3363',14.66713,121.020765,'images/cbc-icon.png','9 AM','5:30 PM'),
	(338,'Puerto Princesa City','Malvar Street near corner Valencia Street Puerto Princesa City, Palawan','(048) 434-9891-93','(048) 434-9892',9.742579,118.73648,'images/cbc-icon.png','9 AM','5:30 PM'),
	(339,'Quezon - Candelaria','Pan Philippine Highway cor. Del Valle Street, Poblacion Candelaria, Quezon','797-4298; 797-4299','N/A',13.928828,121.423339,'images/cbc-icon.png','9 AM','5:30 PM'),
	(340,'Quezon Avenue','No. 18 G & D Bldg., Quezon Ave. cor. D. Tuazon St. Quezon City','712-3676; 712-0424; 740-7779/80; 712-1105; 416-8891; 732-2137 (MCB)','712-3006',14.620038,121.004567,'images/cbc-icon.png','9 AM','5:30 PM'),
	(341,'Quiapo','216-220 Villalobos Street, Quiapo Manila','733-2052/59/61; 733-6282/86','733-6282',14.597204,120.983129,'images/cbc-icon.png','9 AM','5:30 PM'),
	(342,'Regalado Ave. - West Fairview','CBC Building, Regalado Ave. corner Bulova St. Quezon City','936-2554','N/A',14.69532,121.067832,'images/cbc-icon.png','9 AM','5:30 PM'),
	(343,'Regalado Avenue','CBC Building, Regalado Ave., North Fairview Quezon City','921-5678; 921-5359','921-5359',14.719777,121.060992,'images/cbc-icon.png','9 AM','5:30 PM'),
	(344,'Rizal - Angono','Lot 3 Blk. 4 M.L Quezob Ave. Richmond Subd. Angono, Rizal','633-5198; 633-7513','N/A',14.535039,121.150464,'images/cbc-icon.png','9 AM','5:30 PM'),
	(345,'Rizal - San Mateo','#63 Gen. Luna corner Simon St.,  Banaba San Mateo, Rizal','650-2230; 650-1837','650-1837',14.678989,121.112473,'images/cbc-icon.png','9 AM','5:30 PM'),
	(346,'Rockwell - Ortigas','G/F Tower 1 Rockwell Business Center, Ortigas Avenue Pasig City','470-4704; 470-2984','N/A',14.589945,121.067425,'images/cbc-icon.png','9 AM','5:30 PM'),
	(347,'Roosevelt Ave. - Frisco','G/F Norita Bldg., # 51 H. Francisco St. corner Roosevelt Ave., Brgy. Paraiso Quezon City','709-7552; 921-0866','921-0866',14.638599,121.017026,'images/cbc-icon.png','9 AM','5:30 PM'),
	(348,'Roosevelt Avenue','CBC Bldg., #293 Roosevelt Ave., San Francisco Del Monte Quezon City','371-5133 to 35; 410-2160; 410-1957; 371-2766','371-2765',14.652005,121.018059,'images/cbc-icon.png','9 AM','5:30 PM'),
	(349,'Roxas City','1063 Roxas Ave. cor. Bayot Drive Roxas City, Capiz','(036) 621-3203; 621-1780; 522-5775','(036) 621-3203',11.579044,122.752847,'images/cbc-icon.png','9 AM','5:30 PM'),
	(350,'Salcedo Village - LP Leviste','Unit 1-B G/F The Athenaeum San Agustin ? LP Leviste St., Salcedo Village Makati City','869-3128; 869-3132; 869-3134','869-3132',14.560158,121.025342,'images/cbc-icon.png','9 AM','5:30 PM'),
	(351,'Salcedo Village - Tordesillas','G/F Prince Tower Condominium 14  Tordesillas St., Salcedo Village Makati City','813-4901/32/33; 813-4944/52','813-4933',14.560584,121.020933,'images/cbc-icon.png','9 AM','5:30 PM'),
	(352,'Salcedo Village - Valero','G/F Valero Tower, 122 Valero Street Salcedo Village Makati City','892-7768/69; 812-9207; 893-8188/96','892-7769',14.558992,121.020273,'images/cbc-icon.png','9 AM','5:30 PM'),
	(353,'Sales - Raon','611 Sales St., Quiapo Manila','734-5806; 734-7427; 734-6959','734-6959',14.601075,120.982732,'images/cbc-icon.png','9 AM','5:30 PM'),
	(354,'San Antonio Village - Kamagong','Kamagong near corner St. Paul Streets, San Antonio Village Makati City','777-4950; 777-4951','NA',14.566007,121.012003,'images/cbc-icon.png','9 AM','5:30 PM'),
	(355,'San Antonio Village - P. Ocampo','JM Macalino Auto Center, P. Ocampo Street cor. Dungon St., San Antonio Village Makati City','869-5648; 869-5649','N/A',14.567048,121.006488,'images/cbc-icon.png','9 AM','5:30 PM'),
	(356,'San Fernando','CBC Building, V. Tiomico Street San Fernando City, Pampanga','(045) 961-3542/49; 963-5458 to 60; 961-5651; 860-1925; 892-3211','(045) 961-8352',15.079929,120.638163,'images/cbc-icon.png','9 AM','5:30 PM'),
	(357,'San Fernando - Sindalan','Jumbo Jenra Sindalan, Brgy. Sindalan San Fernando City, Pampanga','(045) 866-5464; 455-0569','(045) 861-3081',15.079953,120.638225,'images/cbc-icon.png','9 AM','5:30 PM'),
	(358,'San Jose City','Maharlika Highway, Brgy. Malasin San Jose City, Nueva Ecija','(044) 958-9094; 958-9096; 511-2898','(044) 958-9094',15.796686,120.993962,'images/cbc-icon.png','9 AM','5:30 PM'),
	(359,'San Juan','17 (new) F. Blumentritt Street San Juan City','724-8263; 726-4826; 744-5616 to 18; 723-7333','723-4998',14.604332,121.024105,'images/cbc-icon.png','9 AM','5:30 PM'),
	(360,'San Juan - J. Abad Santos','Unit 3 Citiplace Bldg., 8001 Jose Abad Santos Street, Little Baguio San Juan City','470-8292; 656-8329','656-8329',14.598493,121.03842,'images/cbc-icon.png','9 AM','5:30 PM'),
	(361,'San Pablo City','M. Paulino Street San Pablo City, Laguna','(049) 562-5481 to 84','(049) 562-5485',14.067763,121.325277,'images/cbc-icon.png','9 AM','5:30 PM'),
	(362,'Santiago City','Navarro Building, Maharlika Highway near corner Bayaua Street Santiago City, Isabela','(078) 682-7024 to 26','(078) 305-2445',16.688431,121.55019,'images/cbc-icon.png','9 AM','5:30 PM'),
	(363,'Sct. Borromeo','G/F The Forum Building, 71- A Sct. Borromeo St., Diliman Quezon City','426-1431; 426-1340','N/A',14.636899,121.041211,'images/cbc-icon.png','9 AM','5:30 PM'),
	(364,'Shaw - Haig','G/F First of Shaw Bldg.; Shaw Blvd.; cor. Haig St. Mandaluyong City','534-1073; 534-0744; 718-0218; 621-6459; 531-0795 (MCB)','576-3841 (telefax)',14.593947,121.026641,'images/cbc-icon.png','9 AM','5:30 PM'),
	(365,'Shaw - Pasig','G/F RCC Center, No. 104  Shaw Boulevard Pasig City','634-5018/19; 634-3343/44; 747-7812; 634-3340; 638-2751 (MCB)','634-3344',14.571039,121.065319,'images/cbc-icon.png','9 AM','5:30 PM'),
	(366,'Shaw - Summit One','Unit 102 Summit One Office Tower 530 Shaw Boulevard Mandaluyong City','531-3970;  531-5736; 531-4058; 531-1304;  533-8723; 533-4948','531-9469',14.586859,121.046631,'images/cbc-icon.png','9 AM','5:30 PM'),
	(367,'Silay City','Margarita Bldg., Rizal St. Silay City, Negros Occidental','(034) 714-6400; 495-5452; 495-0480','(034) 495-0480',10.789633,122.971545,'images/cbc-icon.png','9 AM','5:30 PM'),
	(368,'SM Aura Premier','LGF SM Aura Premier, McKinley Parkway, Fort Bonifacio Global City Taguig City','808-9727; 808-9701','808-9701',14.546673,121.054192,'images/cbc-icon.png','9 AM','5:30 PM'),
	(369,'SM CDO Downtown Premier','G/F SM CDO Downtown Premier, Claro M. Recto St., Lapasan Cagayan de Oro City','(088) 857-2212; 857-3742; 859-1053; 859-1054','(088) 857-2212',8.484376,124.654414,'images/cbc-icon.png','9 AM','5:30 PM'),
	(370,'SM City Bacoor','LGF SM City Bacoor Tirona Highway corner Aguinaldo Highway Bacoor, Cavite','(046) 417-0572/0746','(046) 417-0583',14.4446,120.9508,'images/cbc-icon.png','9 AM','5:30 PM'),
	(371,'SM City BF Parañaque','G/F SM City BF Parañaque, Dr. A. Santos Ave. corner President?s Avenue Parañaque City','825-3201; 825-2990; 825-3095; 820-0911','825-1062',14.458342,121.031943,'images/cbc-icon.png','9 AM','5:30 PM'),
	(372,'SM City Bicutan','LGF, Building B, SM City Bicutan Doña Soledad Ave. cor. West Service Rd. Parañaque City','821-0600/0700; 777-9347','821-0500',14.486968,121.043307,'images/cbc-icon.png','9 AM','5:30 PM'),
	(373,'SM City Cabanatuan','UGF SM City Cabanatuan, Maharlika Highway, Brgy. H. Concepcion Cabanatuan City, Nueva Ecija','N/A','N/A',15.466699,120.955362,'images/cbc-icon.png','9 AM','5:30 PM'),
	(374,'SM City Clark','G/F (Units 172-173) SM City-Clark M Roxas Street, CSEZ Angeles City, Pampanga','(045) 499-0252 to 54','(045)499-0254',15.167899,120.578449,'images/cbc-icon.png','9 AM','5:30 PM'),
	(375,'SM City Dasmariñas','LGF SM City Dasmariñas, Governor?s Drive, Pala-pala Dasmariñas, Cavite','(046) 424-1134','(046) 424-1133',14.302374,120.9558,'images/cbc-icon.png','9 AM','5:30 PM'),
	(376,'SM City Fairview','LGF, SM City Fairview Quirino Avenue corner Regalado Avenue Fairview Quezon City','417-2878; 939-3105','418-8228',14.734678,121.059776,'images/cbc-icon.png','9 AM','5:30 PM'),
	(377,'SM City Lipa','G/F (Units 1111-1113) SM City Lipa, J.P. Laurel Highway, Barangay Maraouy Lipa City, Batangas','(043) 784-0212; 784-0213','(043)784-0212',13.954466,121.163417,'images/cbc-icon.png','9 AM','5:30 PM'),
	(378,'SM City Marikina','G/F SM City Marikina, Marcos Highway, Brgy. Calumpang Marikina City','477-1845/46/47; 799-6105','477-1847',14.626187,121.084203,'images/cbc-icon.png','9 AM','5:30 PM'),
	(379,'SM City Masinag','SM City Masinag, Marcos Highway, Brgy. Mayamot Antipolo City, Rizal','655-8764; 655-9124; 655-8771','655-9124',14.625174,121.120834,'images/cbc-icon.png','9 AM','5:30 PM'),
	(380,'SM City Naga','SM City Naga, CBD II, Brgy. Triangulo Naga City','(054) 472-1366; 472-1367','250-8183 (Manila Line)',13.621881,123.190255,'images/cbc-icon.png','9 AM','5:30 PM'),
	(381,'SM City North EDSA','G/F Cyberzone Carpark Bldg., SM City, North Avenue cor. EDSA, Brgy. Sto. Cristo, Bago Bantay Quezon City','456-6633; 454-8108/21; 925-4273','927-2234',14.657229,121.030498,'images/cbc-icon.png','9 AM','5:30 PM'),
	(382,'SM City Olongapo','SM City Olongapo, Magsaysay Drive cor Gordon Ave., Brgy. Pag-asa Olongapo City, Zambales','(047) 602-0039; 602-0040','(047) 602-0038',14.826184,120.282714,'images/cbc-icon.png','9 AM','5:30 PM'),
	(383,'SM City Pampanga','Unit AX3 102, Building 4, SM City Pampanga Mexico, Pampanga','(045) 455-0304/0305/0306/0307','(045) 455-0307',15.052812,120.698805,'images/cbc-icon.png','9 AM','5:30 PM'),
	(384,'SM City San Jose Del Monte','UGF SM City San Jose Del Monte, Quirino Highway, Brgy. Tungkong Mangga San Jose Del Monte City','(044) 913-1562; (Manila Line) 985-3067','(044) 913-1562',14.787465,121.075265,'images/cbc-icon.png','9 AM','5:30 PM'),
	(385,'SM City San Lazaro','UGF (Units 164-166) SM City San Lazaro, Felix Huertas Street cor. A.H. Lacson Ext. Sta. Cruz, Manila','742-1572; 742-2330; 493-7115','732-7935',14.619004,120.985547,'images/cbc-icon.png','9 AM','5:30 PM'),
	(386,'SM City San Pablo','G/F SM City San Pablo National Highway, Brgy. San Rafael San Pablo City, Laguna','(049) 521-0071 to 72','(049) 521-0072',14.0712,121.302077,'images/cbc-icon.png','9 AM','5:30 PM'),
	(387,'SM City Sta. Rosa','G/F SM City Sta. Rosa, Barrio Tagapo Sta. Rosa, Laguna','(049) 534-4640/4813','901-1632 (Manila Direct L',14.313101,121.098765,'images/cbc-icon.png','9 AM','5:30 PM'),
	(388,'SM City Taytay','Unit 147 Bldg. B, SM City Taytay, Manila East Road, Brgy. Dolores Taytay, Rizal','286-5844; 286-5979; 661-2276, 661-2277','661-2235',14.565067,121.138713,'images/cbc-icon.png','9 AM','5:30 PM'),
	(389,'SM Mall of Asia','G/F Main Mall Arcade, SM Mall of Asia, Bay Boulevard Pasay City','556-0100/0102/0099/ 625-2246','556-0099',14.53513,120.982261,'images/cbc-icon.png','9 AM','5:30 PM'),
	(390,'SM Megamall','LGF Bldg. A, SM Megamall, EDSA cor. Julia Vargas St. Mandaluyong City','633-1611/12; 633-1788/89; 638-7213 to 15','633-4971 or 633-1788',14.5856,121.057,'images/cbc-icon.png','9 AM','5:30 PM'),
	(391,'SM Southmall','UGF SM Southmall, Alabang-Zapote Road, Almanza Uno Las Piñas City','806-6116/19; 806-3536; 806-3547','806-3548',14.432872,121.011888,'images/cbc-icon.png','9 AM','5:30 PM'),
	(392,'Solano','National Highway Brgy. Quirino, Solano Nueva Vizcaya','(078) 326-6559/60/61','(078) 326-6561',16.515901,121.179474,'images/cbc-icon.png','9 AM','5:30 PM'),
	(393,'Solemare','G-11 Solemare Parksuites, 5A Bradco Avenue, Aseana Business Park Parañaque City','366-3237; 366-3219; 366-3199','366-3199',14.529356,120.988334,'images/cbc-icon.png','9 AM','5:30 PM'),
	(394,'Soler - 168','G/F R&S Bldg, Soler St. Manila','242-1041; 242-1674; 242-1685','242-1041',14.605652,120.972083,'images/cbc-icon.png','9 AM','5:30 PM'),
	(395,'Sorsogon','CBC Bldg., Ramon Magsaysay Avenue, Brgy. Sirangan Sorsogon City, Sorsogon','(056) 211-1610; 421-5105','429-1124 (Manila line)',12.97001,124.00624,'images/cbc-icon.png','9 AM','5:30 PM'),
	(396,'South Triangle','G/F Sunshine Blvd. Plaza, Quezon Ave. cor. Sct. Santiago and Panay Ave., Bgry. South Triangle Quezon City','227-7947; 227-7948','277-7947',14.637731,121.027727,'images/cbc-icon.png','9 AM','5:30 PM'),
	(397,'Sta. Mesa','1-B G. Araneta Avenue, Brgy. Doña Imelda Quezon City','516-0764; 516-0765; 516-0766','516-0765',14.605965,121.018141,'images/cbc-icon.png','9 AM','5:30 PM'),
	(398,'Sto. Cristo','E-SQUARE  Bldg., 622 Sto. Cristo St. Binondo, Manila','242-4668/73; 242-5361; 241-1243; 242-5449; 242-3670','242-4672; 242-4761',14.601206,120.971177,'images/cbc-icon.png','9 AM','5:30 PM'),
	(399,'Sto. Cristo - CM Recto','858 Sto. Cristo Street, San Nicolas Manila','562-9651','N/A',14.603524,120.968668,'images/cbc-icon.png','9 AM','5:30 PM'),
	(400,'Sto. Domingo Ave.','G/F JRich Holdings Bldg., Sto. Domingo Ave., Brgy. Sto. Domingo Quezon City','251-6005; 251-5852','N/A',14.627629,121.010452,'images/cbc-icon.png','9 AM','5:30 PM'),
	(401,'Subic Bay Freeport Zone','CBC Bldg., Rizal Highway, Subic Bay Gateway Park Subic Bay Freeport Zone, Zambales','(047) 252-1568; 252-1575; 252-1591','(047) 252-1575',14.823775,120.298171,'images/cbc-icon.png','9 AM','5:30 PM'),
	(402,'Surigao City','CBC Bldg., Amat St., Barrio Washington Surigao City','(086) 826-3958, 826-3968','(086) 826-3958',9.788832,125.49398,'images/cbc-icon.png','9 AM','5:30 PM'),
	(403,'T. Alonzo','Anttan Residences, 908 T. Alonzo corner Espeleta Sts., Brgy. 298 Sta. Cruz, Manila','733-9581/82; 734-3231 to 33','733-9582',14.600512,120.978074,'images/cbc-icon.png','9 AM','5:30 PM'),
	(404,'Tabaco City','G/F Ang Building, Ziga Avenue cor. Berces Street Tabaco City, Albay','(052) 487-7150; 830-4178','429-1811 (Manila line)',13.357865,123.729819,'images/cbc-icon.png','9 AM','5:30 PM'),
	(405,'Tacloban City','Uytingkoc Bldg., Avenida Veteranos Tacloban City, Leyte','(053) 325-7706 to 08; 523-7700/7800','(053) 523-7700',11.241436,125.001103,'images/cbc-icon.png','9 AM','5:30 PM'),
	(406,'Taft Ave. - Quirino','The Gregorian Bldg., 2178 Taft Avenue near corner Quirino Avenue Malate, Manila','521-7825; 527-3285; 527-6747','527-3285',14.568746,120.992535,'images/cbc-icon.png','9 AM','5:30 PM'),
	(407,'Tagaytay City','Foggy Heights Subdivision, E. Aguinaldo Highway Tagaytay City','(046) 483-0609, 483-0608','(046) 483-0609',14.119569,120.961087,'images/cbc-icon.png','9 AM','5:30 PM'),
	(408,'Tagbilaran City','G/F BQ Builderware Bldg., Carlos P. Garcia Avenue, Pob. 2 Tagbilaran City, Bohol','(038) 501-0688; 501-0677 411-2484','(038) 501-0677',9.6457,123.855461,'images/cbc-icon.png','9 AM','5:30 PM'),
	(409,'Talavera','CBC Bldg., Maharlika Highway, Marcos District Talavera, Nueva Ecija','(044) 940-2620; 940-2621','(044) 940-2620',15.587807,120.919522,'images/cbc-icon.png','9 AM','5:30 PM'),
	(410,'Tandang Sora - Visayas Ave','#250 Tandang Sora Avenue, Brgy. Tandang Sora Quezon City','426-3818; 426-3541','N/A',14.676379,121.042102,'images/cbc-icon.png','9 AM','5:30 PM'),
	(411,'Tarlac','CBC Bldg., Panganiban near cor. F. Tañedo St., Brgy. San Nicolas Tarlac City','(045) 982-7771 to 75','(045) 982-7772',15.491452,120.592981,'images/cbc-icon.png','9 AM','5:30 PM'),
	(412,'Tarlac - Bamban','National Road, Bgry. Anupul Bamban, Tarlac','(045) 925-0402','N/A',15.284243,120.56858,'images/cbc-icon.png','9 AM','5:30 PM'),
	(413,'Tarlac - Camiling','Savewise Bldg., Romulo St., Poblacion Camiling, Tarlac','(045) 491-6445; 934-5085; 934-5086','(045) 934-5085',15.686578,120.416795,'images/cbc-icon.png','9 AM','5:30 PM'),
	(414,'Tarlac - Concepcion','G/F Descanzo Bldg., F. Timbol St. San Nicolas Poblacion Concepcion, Tarlac','(045) 491-2987; 491-3028','(045) 491-3113',15.323849,120.652632,'images/cbc-icon.png','9 AM','5:30 PM'),
	(415,'Tarlac - Paniqui','G/F Cedasco Bldg., M.H. del Pilar St., Poblacion Paniqui, Tarlac','(045) 491-8465; 491-8464','(045) 491-8465',15.669384,120.580115,'images/cbc-icon.png','9 AM','5:30 PM'),
	(416,'Tarlac - San Rafael','CBC Bldg., MacArthur Highway, San Rafael Tarlac City, Tarlac','(045) 456-0150; 456-0121;','(045) 456-0121',15.455489,120.600138,'images/cbc-icon.png','9 AM','5:30 PM'),
	(417,'Taytay - Ortigas Ave. Ext.','The Gate, Baltao Compound, Ortigas Ave. Ext., San Isidro Taytay Rizal','727-1667','N/A',14.579194,121.139096,'images/cbc-icon.png','9 AM','5:30 PM'),
	(418,'Taytay - San Juan','Velasquez St., Sitio Bangiad, Brgy. San Juan Taytay, Rizal','998-6649','N/A',14.543215,121.126601,'images/cbc-icon.png','9 AM','5:30 PM'),
	(419,'The District Imus','G/F The District Imus, Anabu II Imus, Cavite','(046) 416-1417; 416-4294','(046) 416-4212',14.370857,120.939115,'images/cbc-icon.png','9 AM','5:30 PM'),
	(420,'Timog Avenue','G/F Prince Jun Condominium, #42 Timog Avenue, Brgy. Laging Handa Quezon City','371-4523/24; 371-4522/06','371-4503',14.635286,121.032694,'images/cbc-icon.png','9 AM','5:30 PM'),
	(421,'Tomas Mapua - Laguna','CBC Building, Tomas Mapua St. Sta. Cruz, Manila','495-0302; 495-0294','495-0302',14.621314,120.982128,'images/cbc-icon.png','9 AM','5:30 PM'),
	(422,'Tomas Morato - E. Rodriguez','#42 Metrofocus Bldg., Tomas Morato Avenue, Brgy. Kristong Hari Quezon City','470-3037; 477-1472','N/A',14.62516,121.033321,'images/cbc-icon.png','9 AM','5:30 PM'),
	(423,'Tomas Morato Ext.','G/F QY Bldg., Tomas Morato Avenue, Brgy. South Triangle Quezon City','373-4960; 373-4961','373-4961',14.638449,121.036028,'images/cbc-icon.png','9 AM','5:30 PM'),
	(424,'Trece Martires','G/F Waltermart, Governor\'s Drive cor. City Hall Road, Brgy. San Agustin Trece Martires City, Cavite','(046) 460-4897; 460-4898; 460-4899','(046) 460-4898',14.280496,120.870778,'images/cbc-icon.png','9 AM','5:30 PM'),
	(425,'Trinoma','Unit P002, Level P1, Triangle North of Manila, North Avenue cor. EDSA, Brgy. Pag-asa Quezon City','901-5570/5573','901-5573',14.654126,121.034467,'images/cbc-icon.png','9 AM','5:30 PM'),
	(426,'Tuguegarao - Balzain','Editha Bldg., Balzain Highway Tuguegarao City, Cagayan','(078) 396-2207; 396-2208','(078) 396-2207',17.624008,121.731291,'images/cbc-icon.png','9 AM','5:30 PM'),
	(427,'Tuguegarao City','A. Bonifacio Street, Brgy. Centro 6 Tuguegarao, Cagayan','(078) 844-0175; 844-0831; 846-1709','(078) 844-0836',17.612267,121.728231,'images/cbc-icon.png','9 AM','5:30 PM'),
	(428,'Tutuban Prime Block','Rivera Shophouse, Podium Area, Tutuban Center Prime Block, C.M. Recto Avenue cor. Rivera St. Manila','255-1414/15','255-5441',14.606901,120.973083,'images/cbc-icon.png','9 AM','5:30 PM'),
	(429,'UP Techno Hub','UP - AyalaLand Techno Hub, Commonwealth Avenue Quezon City','441-1331/1332/1334','441-1334',14.656947,121.056121,'images/cbc-icon.png','9 AM','5:30 PM'),
	(430,'UP Village - Maginhawa','LTR Bldg., No. 46 Maginhawa St., UP Village Quezon City','373-3349; 373-3354','N/A',14.649257,121.056642,'images/cbc-icon.png','9 AM','5:30 PM'),
	(431,'V. Luna','G/F AGGCT Bldg., No. 32 V. Luna cor. Matapat Sts., Brgy. Pinyahan Quezon City','772-8992; 772-8564','772-8564',14.636736,121.052767,'images/cbc-icon.png','9 AM','5:30 PM'),
	(432,'Valencia','Tamay Lang Bldg., A. Mabini Street, Brgy. Poblacion, Valencia Bukidnon','(088) 828-2048/49; 222-2356; 222-2417','(088) 828-2048',7.9047,125.090396,'images/cbc-icon.png','9 AM','5:30 PM'),
	(433,'Valenzuela','CBC Bldg., McArthur Highway cor. V. Cordero St., Marulas Valenzuela City','293-8920; 293-6160; 293-5088 to 90; 293-8919','293-5091',14.679487,120.979675,'images/cbc-icon.png','9 AM','5:30 PM'),
	(434,'Valenzuela - Gen. Luis','AGT Bldg., 425 Gen. Luis Street, Paso de Blas Valenzuela City','443-6160/61; 983-3861/62','443-6161',14.710163,120.994831,'images/cbc-icon.png','9 AM','5:30 PM'),
	(435,'Valenzuela - Malinta','Jeep Center Bldg., MacArthur Highway, Brgy. Malinta Valenzuela City','282-2160; 282-2013','282-2013',14.694914,120.963989,'images/cbc-icon.png','9 AM','5:30 PM'),
	(436,'Vigan City','Burgos Street near corner Rizal Street Vigan City, Ilocos Sur','(077) 722-6968, 674-2272','(077) 722-6948',17.5755,120.385302,'images/cbc-icon.png','9 AM','5:30 PM'),
	(437,'Virac','Gogon, Virac Catanduanes','(052)811-4321; 811-4322','(052)811-4321',13.581259,124.232075,'images/cbc-icon.png','9 AM','5:30 PM'),
	(438,'Visayas Avenue','CBC-Building, Visayas Avenue corner Congressional Ave. Ext. Quezon City','454-0189; 925-2173; 455-4334/35','925-2155',14.671728,121.043759,'images/cbc-icon.png','9 AM','5:30 PM'),
	(439,'West Avenue','82 West Avenue, Brgy. Philam Quezon City','924-3131/3143/6363; 920-6258; 411-6010/6011; 928-3270','924-6364',14.646475,121.028179,'images/cbc-icon.png','9 AM','5:30 PM'),
	(440,'Xavierville','G/F Pamintuan Bldg., 65 Xavierville Ave., Loyola Heights Quezon City','433-8696; 929-1265; 927-9826','929-3343',14.635144,121.069949,'images/cbc-icon.png','9 AM','5:30 PM'),
	(441,'Zambales - Botolan','National Highway, Brgy. Batonlapoc Botolan, Zambales','(047) 811-1322; 811-1372','(047) 811-1322',15.288749,120.027155,'images/cbc-icon.png','9 AM','5:30 PM'),
	(442,'Zamboanga - Guiwan','G/F Yang\'s Tower, Ma. Clara Lorenzo Lobregat Highway, Guiwan Zamboanga City, Zamboanga del Sur','(062) 984-1751; 984-1754','(062) 984-1751',6.930012,122.088152,'images/cbc-icon.png','9 AM','5:30 PM'),
	(443,'Zamboanga - San Jose Gusu','Yubenco Supermarket, San Jose Gusu Zamboanga City, Zamboanga del Sur','(062) 995-6154; 955-6155','(062) 955-6154',6.920787,122.047749,'images/cbc-icon.png','9 AM','5:30 PM'),
	(444,'Zamboanga City','CBC Bldg., Gov. Lim Avenue cor. Nuñez St., Zone III Zamboanga City, Zamboanga del Sur','(062) 991-2978/79; 991-1266','(062) 991-1266',6.906869,122.077854,'images/cbc-icon.png','9 AM','5:30 PM');

/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table credcards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `credcards`;

CREATE TABLE `credcards` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `definition` varchar(250) DEFAULT NULL,
  `imgSrc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `credcards` WRITE;
/*!40000 ALTER TABLE `credcards` DISABLE KEYS */;

INSERT INTO `credcards` (`id`, `code`, `name`, `definition`, `imgSrc`)
VALUES
	(1,'Prime', 'CHINA BANK PRIME MASTERCARD','The China Bank Prime Mastercard is your ?go-to? card. It?s the card that is flexible to your needs, giving the extra boost to manage your finances and more value to your spending.  It makes your day to day more exciting and extraordinary.','https://www.chinabank.ph/images/cc/2016/Prime.png'),
	(2,'Platinum', 'CHINA BANK PLATINUM MASTERCARD','The China Bank Platinum Mastercard is your ultimate privilege lifestyle card. It?s the card that allows you to experience life?s wonderful surprises, to shop, dine, and travel to your heart?s content.','https://www.chinabank.ph/images/cc/2016/Platinum.png'),
	(3,'World', 'CHINA BANK WORLD MASTERCARD','The China Bank World Mastercard is the card that gives you world-class privileges, taking luxury to a whole new level. It provides the widest spectrum and access to highly exclusive lifestyle and events, global perks, VIP lounges, and your own person','https://www.chinabank.ph/images/cc/2016/World.png');

/*!40000 ALTER TABLE `credcards` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of card app requirements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cardreqs`;

CREATE TABLE `cardreqs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `definition` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `cardreqs` WRITE;

INSERT INTO `cardreqs` (`id`, `definition`)
VALUES
	(1, 'Fully accomplished and signed China Bank Mastercard application form.'),
	(2, 'Proof of Identification - At least one (1) valid photo-bearing government-issued ID'),
	(3, 'Proof of Income'),
	(4, 'Latest Income Tax Return - BIR form 2316 or 1700 (Additional Regulatory Requirement)Latest Income Tax Return - BIR form 2316 or 1700 (Additional Regulatory Requirement)'),
	(5, 'Proof of current and permanent address (Additional Regulatory Requirement)'),
	(6, 'Proof of birthdate, birthplace, and nationality (Additional Regulatory Requirement)'),
	(7, 'Additional documents for non-immigrants and embassy employees: Photocopy of unexpired passport/visa'),
	(8, 'Additional documents for non-immigrants and embassy employees: Alien Certificate of Registration/I-Card (ACR/ICR)'),
	(9, 'Valid credit card/s with tenure of at least one (1) year and issued in the Philippines');

/*!40000 ALTER TABLE `cardreqs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table loan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `loan`;

CREATE TABLE `loan` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `loan_id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;

INSERT INTO `loan` (`id`, `loan_id`, `name`)
VALUES
	(1, 01, 'HomePlus'),
	(2, 02, 'AutoPlus');
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of loan requirements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `loanreqs`;

CREATE TABLE `loanreqs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `loanreqs_id` int(11) unsigned NOT NULL,
  `definition` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `loanreqs` WRITE;

INSERT INTO `loanreqs` (`id`, `loanreqs_id`, `definition`)
VALUES
	(1, 01, 'HomePlus Application Form'),
	(2, 02, 'AutoPlus Application Form'),
	(3, 02, 'Certificate of Employment stating length of service and monthly compensation package (for employed individuals).'),
	(4, 02, 'Latest Income Tax Return (ITR) with Statement of Assets and Liabilities (if self-employed)'),
	(5, 02, 'Photocopy of Business Registration Papers (if applicable)'),
	(6, 02, 'Community Tax Certificate of the principal borrower and all co-borrowers'),
	(7, 02, 'Alien Certificate of Residence (if applicable)');

/*!40000 ALTER TABLE `loanreqs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of Account Reqs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `accountreqs`;

CREATE TABLE `accountreqs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `definition` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `accountreqs` WRITE;
/*!40000 ALTER TABLE `accountreqs` DISABLE KEYS */;

INSERT INTO `accountreqs` (`id`, `definition`)
VALUES
	(1, 'Two (2) 1x1 ID Pictures'),
	(2, 'Original/s and clear copy/ies of at least one valid ID');	

/*!40000 ALTER TABLE `accountreqs` ENABLE KEYS */;
UNLOCK TABLES;
-- ===============


# Dump of Deposit Reqs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `depositreqs`;

CREATE TABLE `depositreqs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `definition` varchar(250) DEFAULT NULL,
  `imgSrc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `depositreqs` WRITE;
/*!40000 ALTER TABLE `depositreqs` DISABLE KEYS */;

INSERT INTO `depositreqs` (`id`, `name`, `definition`, `imgSrc`)
VALUES
	(1, 'Account Number', 'The 10-digit number of the account you are going to deposit funds to.', 'https://i.imgur.com/7CB8Ebb.jpg'),
	(2, 'Account Name', 'The name of the account you are going to deposit funds to. This may be a person\'s name or the name of the company or business', 'https://i.imgur.com/ELOOyJj.jpg'),
	(3, 'Cash to be deposited', 'You must have your cash on hand and make sure to know the exact amount you are going to deposit.', 'https://i.imgur.com/XMt01zc.png');

/*!40000 ALTER TABLE `depositreqs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of chassi commands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chassicommands`;

CREATE TABLE `chassicommands` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `chassicommands` WRITE;

INSERT INTO `chassicommands` (`id`, `name`)
VALUES
	(1, 'Find Nearest ATM'),
	(2, 'Find Nearest Branch'),
	(3, 'View current Foreign Exchange'),
	(4, 'Customer Service Hotline'),
	(5, 'Who is Chassi?');

/*!40000 ALTER TABLE `chassicommands` ENABLE KEYS */;
UNLOCK TABLES;







/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
