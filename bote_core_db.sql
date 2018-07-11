# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.15)
# Database: bote_core_db
# Generation Time: 2018-06-10 21:45:45 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS bote_core_db;
CREATE DATABASE bote_core_db;

USE bote_core_db;

# Dump of table account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(30) NOT NULL DEFAULT '',
  `username` varchar(20) NOT NULL DEFAULT '',
  `userpass` text NOT NULL,
  `fn` varchar(30) DEFAULT NULL,
  `ln` varchar(30) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `status` int(2) DEFAULT '0' COMMENT '0=PENDING, 1=ACTIVATED, -1=LOCKED',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_activated` datetime DEFAULT NULL,
  `date_locked` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_EMAIL` (`email`),
  UNIQUE KEY `UNQ_USER` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table cart
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `date_created` int(11) DEFAULT NULL,
  `status` int(2) DEFAULT NULL COMMENT '0=PENDING,1=PURCHASED,-1=DELETED',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table friends
# ------------------------------------------------------------

DROP TABLE IF EXISTS `friends`;

CREATE TABLE `friends` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `friend_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table inventory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventory`;

CREATE TABLE `inventory` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `store_item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table inventory_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `inventory_history`;

CREATE TABLE `inventory_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `store_item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT '0',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `details` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table notifs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `notifs`;

CREATE TABLE `notifs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(250) DEFAULT NULL,
  `content` text,
  `is_read` int(1) DEFAULT '0',
  `date_read` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table store
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store`;

CREATE TABLE `store` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `tin` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `policy` text,
  `inclusion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table store_items     
# ------------------------------------------------------------

DROP TABLE IF EXISTS `store_items`;

CREATE TABLE `store_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `store_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table token
# ------------------------------------------------------------

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(250) DEFAULT '',
  `access_token` text,
  `metadata` text,
  `expires_in` datetime DEFAULT NULL,
  `date_expired` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table trans
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trans`;

CREATE TABLE `trans` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `amount` double DEFAULT '0',
  `paid` double DEFAULT '0',
  `payment_type` int(11) DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0=PENDING,1=PAID,-1=VOID',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table trans_details
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trans_details`;

CREATE TABLE `trans_details` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `trans_id` int(11) DEFAULT NULL,
  `store_item_id` int(11) DEFAULT NULL,
  `qty` int(11) NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `is_deleted` int(2) NOT NULL DEFAULT '0',
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


# Dump of ATM
# ------------------------------------------------------------

DROP TABLE IF EXISTS `atm`;

CREATE TABLE `atm` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dump of CC
# ------------------------------------------------------------

DROP TABLE IF EXISTS `credcards`;

CREATE TABLE `credcards` (
  `id` varchar(11),
  `name` varchar(100) DEFAULT NULL,
  `definition` varchar(400) DEFAULT NULL,
  `imgSrc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dump of Deposit Reqs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `depositreqs`;

CREATE TABLE `depositreqs` (
  `id` varchar(11) ,
  `name` varchar(100) DEFAULT NULL,
  `definition` varchar(250) DEFAULT NULL,
  `imgSrc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


# Dump of chassi commands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `chassicommands`;

CREATE TABLE `chassicommands` (
  `id` varchar(20),
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

# Dump of Branch
# ------------------------------------------------------------

DROP TABLE IF EXISTS `branch`;

CREATE TABLE `branch` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` varchar(250) DEFAULT NULL,
  `latitude` double DEFAULT '0',
  `longitude` double DEFAULT '0',
  `contactno` varchar(250) DEFAULT NULL,
  `opening` varchar(15) DEFAULT NULL,
  `closing` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 


#CC data
#-----------------------------------------------------------------------
INSERT INTO credcards (id, name, definition, imgSrc) VALUES ('prime', 'CHINA BANK PRIME MASTERCARD', 'The China Bank Prime Mastercard is your “go-to” card. It’s the card that is flexible to your needs, giving the extra boost to manage your finances and more value to your spending.  It makes your day to day more exciting and extraordinary.', 'https://www.chinabank.ph/images/cc/2016/Prime.png');

INSERT INTO credcards (id, name, definition, imgSrc) VALUES ('platinum', 'CHINA BANK PLATINUM MASTERCARD', 'The China Bank Platinum Mastercard is your ultimate privilege lifestyle card. It’s the card that allows you to experience life’s wonderful surprises, to shop, dine, and travel to your heart’s content.', 'https://www.chinabank.ph/images/cc/2016/Platinum.png');

INSERT INTO credcards (id, name, definition, imgSrc) VALUES ('world', 'CHINA BANK WORLD MASTERCARD', 'The China Bank World Mastercard is the card that gives you world-class privileges, taking luxury to a whole new level. It provides the widest spectrum and access to highly exclusive lifestyle and events, global perks, VIP lounges, and your own personal concierge – The China Bank World Concierge.', 'https://www.chinabank.ph/images/cc/2016/World.png');


#Desposit Reqs data
#-----------------------------------------------------------------------
INSERT INTO depositreqs (id, name, definition, imgSrc) VALUES ('accnum', 'Account Number', 'The 10-digit number of the account you are going to deposit funds to.', 'https://wp-test.sencha.com/wp-content/uploads/2016/02/icon-sencha-test-studio-1.png');
INSERT INTO depositreqs (id, name, definition, imgSrc) VALUES ('accname', 'Account Name', 'The name of the account you are going to deposit funds to. This may be a person\'s name or the name of the company or business', 'https://wp-test.sencha.com/wp-content/uploads/2016/02/icon-sencha-test-studio-1.png');
INSERT INTO depositreqs (id, name, definition, imgSrc) VALUES ('cash', 'Cash to be deposited', 'You must have your cash on hand and make sure to know the exact amount you are going to deposit.', 'https://wp-test.sencha.com/wp-content/uploads/2016/02/icon-sencha-test-studio-1.png');

#chassi commands data
#-----------------------------------------------------------------------
INSERT INTO chassicommands (id, name) VALUES ('atmnear', 'Find Nearest ATM');
INSERT INTO chassicommands (id, name) VALUES ('branchnear', 'Find Nearest Branch');
INSERT INTO chassicommands (id, name) VALUES ('forex', 'View current Foreign Exchange');
INSERT INTO chassicommands (id, name) VALUES ('customerservice', 'Customer Service Hotline');
INSERT INTO chassicommands (id, name) VALUES ('infochassi', 'Who is Chassi?');



#Branch data
#-----------------------------------------------------------------------


INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (72,'ABS-CBN','West Wing G/F ELJ Communication Center, ABS-CBN Broadcast Center Sgt. Esguerra St. South Triangle, Quezon City (ATM: On-site)', 14.639863, 121.035255, '(02)929 7264; (02)929 1825; Mobile: 0917 8270294', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (73,'Acropolis','171 Bridgeview Bldg., E. Rodriguez Jr. Ave, Bagumbayan, Quezon City (ATM: On-site)', 14.611772, 121.075268, '(02)655 5796; (02)438 9332; Mobile: 0917 8270549', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (254,'ADB Avenue','Ground floor Unit 101 AIC Burgundy Empire Tower, ADB Ave., Ortigas Pasig City (ATM: On-site)', 14.589859, 121.060941, '(02)633-1097; (02)622-1031; (02)571-8394; Mobile: 0917-8275992', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (16,'Aguirre','BM Bldg., 116 Aguirre St, Legaspi Village, Makati City (ATM: On-site)', 14.552824, 121.01638, '(02)818-5470; (02)815- 8789; Local: 3105', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (137,'Alabang Town Center','Makati Supermart Alabang, Alabang Town Center, Muntinlupa City (ATM: On-site)', 14.424417, 121.030741, '(02)842-0488; (02)842-0496;(02) 623-2027; Mobile: 0917-8270970', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (255,'Ali Mall','Ali Mall Financial Center, Level 2, Ali Mall, Araneta Center, Cubao, Quezon City (ATM: On-site)', 14.619776, 121.056611, '(02)911-2677; (02)294-0100 (623-2042 globe); Mobile: 0917-8271095', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (172,'Angeles','Prudentialife Bldg., Sto. Rosario St., San Jose, Angeles City (ATM: On-site)', 15.133372, 120.59233, '(045)625 9858; (045)888 3862', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (62,'Annapolis','Gr. Floor, Mercedes I Condominium, No. 39 Annapolis St., Greenhills, San Juan City (ATM: On-site)', 14.604359, 121.052561, '(02)722-0938; (02)585-1005; Mobile: 0917-8270547', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (18,'Antel Residences','Ground Floor, Best Western Antel Hotel 7829, Makati Avenue cor. Salamanca St., Makati City (ATM: On-site)', 14.566814, 121.028966, '(02)846-9190; (02)623-8190 Mobile: 0917 8276545', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (74,'Araneta','Del Monte Building, 341 G. Araneta Ave., Quezon City (ATM: On-site)', 14.614777, 121.016474, '(02)714 4416; (02)217 0383 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (75,'Aurora','677 Aurora Blvd., near cor. Broadway St., Bgy. Mariana, New Manila , Quezon City (ATM: On-site)', 14.613148, 121.032921, '(02)412-3484; (02)416-5329; (02)725-1951; Mobile: 0917-8272506', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (76,'Aurora - Balete LRT2','G/F Marsk Building, Aurora Boulevard corner Balete Drive, Quezon City (ATM: On-site)', 14.616714, 121.039948, '(02)727-4157; (02)722-6327; (02)725-5716; Mobile: 0917-8270238', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (139,'Ayala Alabang (NOL)','G/F Nol Bldg. Commerce Ave., Madrigal Business Park, Alabang, Muntinlupa City (ATM: On-site)', 14.423508, 121.02443, '(02)809 0689-91; (02)585-1038; Mobile: 0917-8270361', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (19,'Ayala Avenue','G/F, Don Vicente Madrigal Building, 6793 Ayala Avenue, Makati City (ATM: On-site)', 14.558108, 121.019546, '(02)891-5852-53; Mobile: 0917 8270298', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (266,'Ayala Multinational Bancorp','G/F Multinational Bancorporation Center, Ayala Ave., Makati City (ATM: On-site)', 14.559312, 121.017684, '(02)511-1973; (02)966-9047; Mobile: 0917 8273317', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (20,'Ayala Rufino','Rufino Bldg., Ayala Avenue cor. Rufino St., Makati City (ATM: On-site)', 14.558045, 121.018451, '(02)585-103);ile: 0917 8270296', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (234,'Bacolod - Araneta','1st Provincial Finance Corp. Bldg., Corner Rosario-Araneta Sts., Bacolod City (ATM: On-site)', 10.664994, 122.943856, '(034)435 0664; (034)435 0665; (034)709 0253; Local: 3361', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (235,'Bacolod - Lacson','GF Philam Bldg., Lacson Street cor. Galo, Bacolod City (ATM: On-site)', 10.669981, 122.950776, '(034)434 5510; (034)709 6182', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (243,'Bacoor','Addio Bldg., Aguinaldo Highway, Talaba, Bacoor City, Cavite (ATM: On-site)', 14.459856, 120.960362, '(046)417-1606; (046)417-1705; Local: 3111', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (77,'Baesa','Dra. C.Pascual Bldg., 142 Quirino Highway, Baesa, Quezon City (ATM: On-site)', 14.666643, 121.007467, '(02)361-4459; (02)907-9450; Local: 3112; Mobile: 0917 8272511', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (163,'Baguio','Antipolo Bldg., Upper Session Road, Baguio City (ATM: On-site)', 16.412732, 120.597575, '(074)443 5660; Local: 3113', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (173,'Baliwag','G/F, 3006 St Augustine Square, Dona Remedios Trinidad Highway, Pinagbarilan Baliuag, Bulacan (ATM: On-site)', 14.953611, 120.888889, '(044)766 2442; Local: 3114', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (78,'Banaue','G/F Evergrowth Bldg., 420 Banawe cor. Quezon Ave., Quezon City (ATM: On-site)', 14.623223, 121.007997, '(02)743 4668-71; (02)740 0424; (02)217 0384; Mobile: 0917 8270291', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (244,'Batangas City','P. Burgos Street, near cor. D. Silang, Batangas City (ATM: On-site)', 13.757184, 121.057916, '(043)723 0182; (043)980 5284; Local: 3115', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (41,'BF Homes','55 President Avenue, BF Homes, Parañaque City (ATM: On-site)', 14.449515, 121.029879, '(02)807 4483-85; (02)585 1036; Mobile: 0917 8270465', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (289,'BGC - 26th Street','G/F, Unit C-28, South of Market North Tower, 26th St., Bonifacio Global City, Taguig City', 14.547347, 121.051689, '551-9815 / 511-7654', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (64,'BGC - 2nd Avenue ','G/F Blue Sapphire Building, 2nd Avenue corner 30th Street, Bonifacio Global City, Taguig (ATM: On-site)', 14.553738, 121.044547, '(02)519-0324; (02)585-0011; Mobile: 0917-8270378', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (65,'BGC - 32nd St. ','G/F The Trade  Financial Tower, 7th ave. cor. 32nd St., Fort Bonifacio, Taguig (ATM: On-site)', 14.553328, 121.050604, '(02)478-5878; (02)478-5876; (02)623-8576; Mobile: 0917-8271232', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (288,'BGC - 39th Street','G/F, Cocolight Bldg., 39th St. corner 11th Avenue, Bonifacio Global City, Taguig City', 14.559371, 121.056257, '8003903  Globe Duo 2168608 /09175428431 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (66,'BGC - 5th Avenue ','Unit 3 Ground Floor, One Global Place, 5th Avenue corner 25th Street, BGC, Taguig City (ATM: On-site)', 14.54853, 121.047111, '(02)836-4873; (02)836-4872; (02)907-8963; Mobile: 0917-8272502', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (284,'BGC - 7th Avenue','G/F, Twenty-Four Seven Mckinley Building, 7th Ave. cor. 24th St., Bonifacio Global City, Brgy Fort Bonifacio, Taguig City', 14.546902, 121.048032, '573-7281/573-7282/0917-8418767(duo)', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (256,'BGC - Bonifacio High Street','W Global Center cor 30th and 9th Ave. BGC, Taguig City (ATM: On-site)', 14.551118, 121.051723, '(02)808-1166; (02)808-2042; (02)211-8586; Mobile: 0917-8272918', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (68,'BGC - Mckinley Hills','Units 1A and 1B Two World Square, Upper Mckinley Road, Mckinley Hill Drive, Taguig City (ATM: On-site)', 14.534816, 121.050035, '(02)403-6522; (02)403-6519; (02)425-4817; Mobile: 0917-8270366', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (283,'BGC - McKinley Road','G/F, Unit 1, Fairways Towers, 5th Avenue, Bonifacio Global City, Taguig (ATM: On-site)', 14.545445, 121.045438, '(02)832-9386; (02)833-8145; Globe Duo: 0917-827-9072', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (282,'BGC - Panorama','G/F, Shop 2, Panorama Bldg., 34TH St. Corner Lane A, Bonifacio Global City, Taguig (ATM: On-site)', 14.555973, 121.049366, '(02)833-2116; (02)886-3338; Globe Duo: 426-9575; 09178279070', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (286,'BGC - The Luxe Residences','G/F, Shop 3, The Luxe Residences, 28th St. corner 4th Avenue, Bonifacio Global City, Taguig City', 14.550879, 121.046465, '865-6932 / 865-6869 0917-3094779 Globe Duo 504-7620 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (273,'BGC - Triangle Drive','Shop 3, G/F Philplans Building Corporate Center, 1012 North Triangle Drive, BGC, Taguig (ATM: On-site)', 14.560349, 121.056244, '(02)551-7240; (02)823-1449; (02)622-1063; Mobile: 0917-8275854', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (287,'BGC - Uptown Place Mall','Lower G/F Uptown Place Mall, 9th Avenue corner 36th Street, Bonifacio Global City, Taguig City', 14.558074, 121.05427, '776 2789 / 776 2790 Globe Duo :  219 1359 / 0917 8119802', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (42,'Bicutan','28 Doña Soledad Ave., Better Living, Parañaque City (ATM: On-site)', 14.484553, 121.03857, '(02)822-1515; (02)822-1517; (02)822-1519; (02)585-1035 Mobile: 0917-8270464', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (245,'Biñan - Carmona','National Highway, Brgy. Maduya, Carmona, Cavite (ATM: On-site)', 14.325754, 121.066684, '(046)430 3573; (046)430 3564; Local: 8809', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (46,'Boni','Boni Avenue cor. Ligaya St., Mandaluyong City (ATM: On-site)', 14.576489, 121.03856, '(02)532 8737; Mobile: 0917 8270987', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (2,'BSA Tower - Ortigas','Ground Floor of BSA Twin Tower, Bank Drive, Ortigas Center, Mandaluyong City (ATM: On-site)', 14.585906, 121.058085, '(02)623-4931; (02)477-9838; (02)477-8395; Mobile: 0917-827-1561', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (257,'Butuan','G/F CAP Bldg. J. Rosales Avenue corner JC Aquino St., Butuan City (ATM: On-site)', 8.946102, 125.532078, '(085)342 8981; (085)342 8982; Local: 3464', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (79,'C5 Libis','184-B E. Rodriguez Jr. Ave., Bagumbayan, Quezon City (ATM: On-site)', 14.608938, 121.077398, '(02)638 1689; Mobile: 0917 8270553', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (174,'Cabanatuan','P. Burgos St., Cabanatuan City (ATM: On-site)', 15.489141, 120.965736, '(044)463 0489; Local: 3118', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (259,'Cagayan de Oro - Lapasan','Lapasan National Highway, Cagayan de Oro City (ATM: On-site)', 8.486417, 124.650089, '(088)856 6847; Local: 3456 / 8879', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (246,'Cainta','F. Felix Ave. corner Karangalan Drive, Cainta, Rizal (ATM: On-site)', 14.610165, 121.103839, '(02)646 0295; Local: 3119; Mobile: 0917 8270991', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (247,'Calamba','Marcelita Bldg., National Highway, Brgy Real, Calamba City, Laguna (ATM: On-site)', 14.197282, 121.145938, ' (049)545 2614/2162; Local: 3122', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (248,'Calamba - Parian','Anderson Bldg. 1, Barangay Parian, Calamba City, Laguna (ATM: On-site)', 14.207893, 121.154074, '(049)545 7421-22 Local: 3175', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (12,'Caloocan','357 Rizal Ave. Ext. Grace Park, Kalookan City (ATM: On-site)', 14.656337, 120.983748, '(02)362-3829; (02)365-9320; Local: 3146', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (14,'Caloocan - 9th Avenue','9th Avenue near corner Rizal Avenue, Grace Park, Kalookan City (ATM: On-site)', 14.650265, 120.983383, '(02)361-1165; (02)366-9785; (02)623-6365;  Mobile: 0917-8270396; 0917-8270560', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (258,'Cardinal  Santos','Ground Floor Cardinal Santos Medical Center, 10 Wilson St., Greenhills West San Juan City (ATM: On-site)', 14.598014, 121.04569, '(02)234-0585; (02)966-7151; Mobile: 0917-8273092', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (164,'Cauayan - Isabela','G/F ITC Bldg., National Highway, Cauayan City, Isabela (ATM: On-site)', 16.937582, 121.767363, '(078) 652-4401; Local: 3137', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (218,'Cebu - Asiatown IT Park','G/F TGU Tower, Asiatown I.T. Park, Lahug, Cebu City (ATM: On-site)', 10.327799, 123.906029, '(032)479 9980; (032)236 7897; Local: 3366', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (225,'Cebu - Banilad','Gaisano Country Mall, Talamban Road, Banilad, Cebu City (ATM: On-site)', 10.338635, 123.911158, '(032)416 2883; (032)231 2734; Local: 3352', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (227,'Cebu - Borromeo','Door 8 Plaza Borromeo Bldg., Borromeo Street, Kalubihan, Cebu City (ATM: On-site)', 10.294578, 123.897311, '(032)253 0446; (032)412 3401; Local: 3353', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (221,'Cebu - Cebu-Insular Life','G/F Insular Bldg., Mindanao Ave., cor Biliran Road, Cebu Business Park, Cebu City (ATM: On-site)', 10.319669, 123.905334, '(032)417 1632; (032)266 1166; Local: 3354', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (230,'Cebu - Fuente','G/F Rajah Park Hotel, Fuente Osmeña Circle, Cebu City (ATM: On-site)', 10.310305, 123.893776, '(032)412 5133; (032)253 3865; Local: 3356', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (231,'Cebu - Lapu Lapu / Mepz','Lot 2, Block 1, Phase 1, MEPZ II, SEPZ, Lapu-Lapu City, Cebu (ATM: On-site)', 10.303625, 123.964874, '(032)340 0705; (032)495-9364; Local: 3357', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (222,'Cebu - Lapu-Lapu / Pusok','M.L Quezon National Highway Pusok, Lapu-Lapu City 6015', 10.319688, 123.994915, '(032)340 5064; (032)494 0172', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (232,'Cebu - Mandaue','Kentredder Bldg., A. Cortes St., Mandaue City, Cebu (ATM: On-site)', 10.334757, 123.941249, '(032)420 6288; (032)345 2703; Local: 3358', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (233,'Cebu - Mandaue North Road','Gr. Floor, Khuz''ns Bldg., North Hi-way, Estancia, Mandaue City (ATM: On-site)', 10.348365, 123.948003, '(032)420 5802; (032)343 7500', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (228,'Cebu - Maxilom','G/F Ong Tiak Bldg., Gen Maxilom Ave., Cebu City (ATM: On-site)', 10.311191, 123.897734, '(032)255 6225; (032)412 6419; (032)255 6224; Local: 8890', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (223,'Cebu - Plaridel','No. 104 Plaridel St., Brgy. Sto. Niño, Cebu City', 10.294692, 123.899928, '(032)412 3507; (032)255 0084', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (224,'Cebu - SM','Lower Ground Floor, SM City, North Reclamation Area, Cebu City 6000 (ATM: On-site)', 10.311702, 123.918056, '(032)412 8600; (032)232 0680; Local: 3360', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (281,'Century City','G/f Unit 3 The Gramercy Residences Century City, Salamanca St., cor Kalayaan Ave., Brgy. Poblacion, Makati City (ATM: On-site)', 14.565483, 121.028587, '(02)894-3144; (02)894-4700 Mobile: DUO 0917-827-8341 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (143,'Cityplace Square','3/F Lucky Chinatown-Cityplace Square, Calle Felipe corner La Chambre St., Binondo,Manila (ATM: On-site)', 14.603259, 120.973129, '(02)623-8191; (02)254-9775; (02)708-8016; Mobile: 0917-8276846', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (260,'Clark','M. Roxas Highway, Philexcel Business Park Clark Freeport zone, Pampanga (ATM: On-site)', 15.172917, 120.530091, 'Local: 3174 Mobile: 0917 8272916', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (80,'Commonwealth','12-13 Upper, G/F, Diliman Commercial Center; Commonwealth Ave., Diliman Quezon City (ATM: On-site)', 14.681734, 121.085535, '(02)931 9691; Mobile: 0917 8270446', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (81,'Congressional Extension','Congressional Ave. Ext near cor. Mindanao Avenue, Quezon City (ATM: On-site)', 14.668887, 121.033567, '(02)623 2030; (02)455 8561; Mobile: 0917 8270975', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (83,'Cubao P. Tuazon','7th Avenue cor P. Tuazon, Cubao, Quezon City (ATM: On-site)', 14.616968, 121.054578, '(02)912 1754; (02)912 1822; Mobile: 0917-8270292', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (165,'Dagupan','Insular Life Building, Arellano St., Dagupan City (ATM: On-site)', 16.044839, 120.343887, '(075)523 5575; Local: 3128', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (249,'Dasmariñas - Cavite','Congressional Road corner Gov. D Mangubat Ave. Aguinaldo Hi-way, Dasmariñas City, Cavite (ATM: On-site)', 14.326495, 120.940761, '(046)432-1719; (046)432-1718; Local: 8806', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (144,'Dasmariñas GACU','G.A.Cu-Unjieng Bldg., Q. Paredes St. corner Dasmarinas St., Binondo, Manila (ATM: On-site)', 14.597473, 120.976445, '(02)243-8204; (02)245-7191; (02)585-9839; Mobile: 0917-8270352', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (178,'Davao - Magsaysay','R. Magsaysay Ave. cor. E. Jacinto St., Davao City', 7.07345, 125.61307, '(082)221 6426; (082)221 6726; (082)222 3928; Local: 3461 / 3454', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (180,'Davao - Monteverde','G/F Mintrade Bldg. Monteverde Ave. cor. Sales St., Davao City (ATM: On-site)', 7.075465, 125.619271, '(082)222 3411-13; Local: 8838', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (181,'Davao - Quirino','Quirino Avenue cor San Pedro St., Davao City (ATM: On-site)', 7.068895, 125.603296, '(082)225 1701; Local: 8839', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (214,'Davao - Recto/Rizal','G/F Quibod Commercial Center, Rizal Avenue, Davao City (ATM: On-site)', 7.06658, 125.608628, '(082)221 6489; (082)225 3004; Local: 3453', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (217,'Davao - Victoria Plaza','Victoria Plaza Complex, J.P. Laurel Ave., Davao City (ATM: On-site)', 7.086695, 125.611522, '(082)221 4776; (082)222 2508; Local: 3455', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (119,'Del Monte Avenue','G/F 345 Del Monte Avenue corner Banawe Street, Brgy. Manresa, Quezon City (ATM: On-site)', 14.638047, 121.001415, '(PLDT) 3300227, 3300228, 3300232, 3300234(fax)  Globe Duo  2171176 / 09178270457', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (44,'Dr. A. Santos','G/F Lianas Supermarket, Dr. A Santos Avenue cor. Canaynay Ave. Sucat, Parañaque (ATM: On-site)', 14.475103, 121.000908, '(02)836-3730; (02)836-3674; (02)623-2026; Local: 3133; Mobile: 0917-8270899', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (236,'Dumaguete - Negros Oriental','UnionBank Building, Ramon Pastor Sr. Street corner San Juan Street Dumaguete City 6200, Negros Oriental (ATM: On-site)', 9.309231, 123.305667, '(035)422 5038; Local: 8298', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (120,'E. Rodriguez','G/F Megacenter Bldg., E. Rodriguez Ave., Quezon City (ATM: On-site)', 14.624418, 121.035541, '(02)712-1331; Local: 3139; Mobile: 0917-8270983', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (121,'Eastwood','G/F LGR1-6, Le Grand Tower 1, Palm Tree Avenue, Eastwood City, Brgy. Bagumbayan, Quezon City (ATM: On-site)', 14.610335, 121.07889, '(02)584-3638; (02)585-8128; Mobile: 0917-8270161', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (13,'EDSA Caloocan','512 Edsa corner Urbano Plata St., Caloocan City (ATM: On-site)', 14.65916, 120.992846, '(02)330 9924; (02)362 3008; (02)585-0998; Mobile: 0917-8270395', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (47,'EDSA Pioneer','Upper Ground Floor 07 Robinsons Cybergate Plaza, Pioneer St., Mandaluyong City', 14.569934, 121.046703, '(02)623 2044; (02)477 4163; Mobile: 0917-8271097 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (3,'Emerald','G/F Wynsum Corp. Plaza, Ortigas Center, Pasig City (ATM: On-site)', 14.585982, 121.061526, '(02)633-7604; (02)585-1008; Mobile: 0917-8270552', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (147,'Escolta','G/F Regina Building, Escolta, Manila (ATM: On-site)', 14.598727, 120.979702, '(02)242-4483; (02)241-8544; (02)245-8955; (02)623-9574; Mobile: 0917-8037946', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (4,'Exchange Regency','G/F, The Exchange Regency along Exchange Road cor. Meralco Avenue and Jade Drive, Ortigas Center, Pasig City (ATM: On-site)', 14.582984, 121.063594, '(02)310-5627; (02)623-9569; Mobile: 0917-827-1336', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (262,'Frontera Verde','G/F Transcom Bldg., Frontera Verde, E. Rodriguez Jr. Avenue., Brgy. Ugong Pasig City (ATM: On-site)', 14.587127, 121.078898, '(02)451-1590; (02)451-1001; (02)502-2476; Mobile: +63917-827-6172', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (123,'General Santos','G/F Laiz Building, Pioneer Avenue, General Santos City (ATM: On-site)', 6.109806, 125.171975, '(083)553 6026; (083)552 5076; (083)301 1168; Local: 8876 / 3457', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (263,'GMA Timog','Cabrera Bldg. 1, 103 Timog Avenue, Quezon City (ATM: On-site)', 14.632818, 121.043209, '(02)294-3281; (02)294-1738; (02)215-7261; Mobile: 0917-8276152', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (122,'Gotesco - Commonwealth','Ever Gotesco Commonwealth, Don Antonio St., corner Commonwealth Ave., Quezon City (ATM: On-site)', 14.678014, 121.085509, '(02)932 0942; Mobile: 0917 8270451', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (23,'Greenbelt','Twin Cities Condominium, 110 Legaspi St., Legaspi Village, Makati City (ATM: On-site)', 14.553821, 121.021734, '(02)812-9601; Mobile: 0917-8270376  duo 5850010', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (49,'Greenfield District','Level 1 Unit 5 Soho Central, Greenfield District, Mandaluyong City (ATM: On-site)', 14.579347, 121.05526, '(02)584-7538; (02)584-7540; (02)585-1904; Mobile: 0917-8270286', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (63,'Greenhills','Ortigas Ave near cor Wilson St., San Juan City (ATM: On-site)', 14.600746, 121.047932, '(02)726-1395; (02)623-2036; Mobile: 0917-8270992', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (56,'GSIS','GSIS Main Office Financial Center, Pasay City (ATM: On-site)', 14.547265, 120.984186, '(02)551-4327; Mobile: 0917-8270265', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (25,'H.V. Dela Costa','G/F Global Enterprise Bldg. No. 138 HV dela Costa Salcedo Village, Makati City (ATM: On-site)', 14.561132, 121.020927, '(02)813-1286; (02)813-1363; (02)585-0977 Mobile: 0917-8270380', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (148,'ICTSI Port Area','G/F ICTSI Administration Building, Manila International Container Terminal, MICT South Access Road, Manila (ATM: On-site)', 14.597984, 120.951703, '(02)244-1864; Mobile: 0917-8270281', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (138,'Iligan','Quezon Avenue, Iligan City (ATM: On-site)', 8.229341, 124.235183, '(063)221 5395; (063)221 3008; Local: 3458', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (242,'Iloilo - Gen. Luna','Brgy. Villa Anita General Luna St., Iloilo City (ATM: On-site)', 10.700288, 122.560765, '(033)336 1631; (033)336 1630; (033)509 0147', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (241,'Iloilo - Iznart','Villanueva Bldg., Iznart St.,Iloilo City (ATM: On-site)', 10.698194, 122.5692, '(033)335 0464; (033)500 5024; Local: 3362', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (250,'Imus - Cavite','G/F Melta Building, Aguinaldo Hi-way cor. Sampaguita Village, Imus City, Cavite (ATM: On-site)', 14.431833, 120.944087, '(046)471- 7770; (046)970- 6975; Local: 8805', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (149,'Intramuros','G/F BF Condo Bldg. A. Soriano Sr. Ave. Intramuros, Manila (ATM: On-site)', 14.593228, 120.974066, '(02)404 7120-21; (02)585 9836; Mobile: 0917 8270258', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (27,'J.P. Rizal','731 J.P. Rizal St., Makati City (ATM: On-site)', 14.57116, 121.021002, '(02)897 1085; Mobile: 0917 8270353', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (5,'Julia Vargas','Centerpoint Condominium, Doña Julia Vargas Ave. cor. Garnet St. Ortigas Center, Pasig City (ATM: On-site)', 14.584489, 121.062563, '(02)633 5597; (02)975 8398; Local: 3145; Mobile: 0917-8276165', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (124,'Kamias','Gr. Floor, TDS Bldg., No. 72 Kamias Road, Quezon City (ATM: On-site)', 14.632534, 121.052818, '(02)929 7667; (02)929 7909; (02)217 3784', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (125,'Katipunan','335 Agcor Bldg., Katipunan Ave.,Brgy.  Loyola Heights, Quezon City (ATM: On-site)', 14.640683, 121.074312, '(02)426 1258; Mobile: 0917 8270997', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (166,'Laoag','JP Rizal St. cor Guerrero St., Laoag City (ATM: On-site)', 18.193686, 120.597958, '(077)770-3771; Local: 3148', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (15,'Las Piñas - Pamplona','Alabang Zapote Rd. cor. Crispina Ave., Pamplona, Las Piñas City (ATM: On-site)', 14.449784, 120.981647, '(02)874-3696; (02)874-3698; Mobile: 0917-8270467', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (251,'Legaspi','Sia Ko Pio Bldg., Rizal St., Legaspi City (ATM: On-site)', 13.145412, 123.752707, '(052)820 0598; Local: 3152', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (54,'Libertad','Unit A2 Cluster El Dorado, California Garden Square, Libertad Street, Mandaluyong City (ATM: On-site)', 14.579222, 121.047183, '(02)623-9561; Mobile: 0917-8270765', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (252,'Lipa','B. Morada Avenue, Lipa City (ATM: On-site)', 13.941175, 121.155212, '(043)756-4370; (043)312-2622 Local: 8810', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (150,'Lourdes Hospital','G/F Medical Arts Building, Our Lady of Lourde Hospital, 46 P. Sanchez Street, Sta. Mesa, Manila (ATM: On-site)', 14.595171, 121.022493, '(02)713 8546; Mobile: 0927 8270879', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (280,'Lucena','G/F One People Square, M.L. Tagarao corner Granja Street, Lucena City (ATM On-site)', 13.936749, 121.612786, '(042)710-6538; (042) 660-4410 Local: 3154', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (28,'Magallanes','Ground Floor, Maga Center Building, Paseo de Magallanes, Makati City (ATM: On-site)', 14.539139, 121.016741, '(02)851-3803; (02)851-3802; (02)215 9251; Mobile: 0917-8276158', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (29,'Makati Ave','7824 Durban St. corner Makati Avenue, Makati City (ATM: On-site)', 14.563825, 121.029177, '(02)895-1774; (02)899-1542; (02)585-1043', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (264,'Makati Medical Center','Makati Medical Center, 2 Amorsolo St., Legaspi Village, Makati City (ATM: On-site)', 14.559003, 121.014217, '(02)812-8182; (02)585-83990; Mobile: 0917 8273172', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (43,'Malabon','Gov. Pascual Avenue cor. River St., Malabon City, Metro Manila (ATM: On-site)', 14.669651, 120.969775, '(02)288 7382; (02)288 7423; (02)623-9571; Mobile: 0917-827-0871', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (151,'Malate','G/F Marioco Bldg. 1945 M. Adriatico St. Malate, Manila (ATM: On-site)', 14.569597, 120.986321, '(02)585-9844; Mobile: 0917-8270354', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (70,'Malinta','No. 295, Mirjan Building, Maysan Road, Paso de Blas, Valenzuela City (ATM: On-site)', 14.707523, 120.992108, '(02)277 2921-22; (02)623 9570', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (60,'Marikina','WRC2 Bldg., No. 47 Gil Fernando Avenue (formerly A. Tuazon St), Midtown Subd. II Brgy. San Roque, Marikina City (ATM: On-site)', 14.623643, 121.102395, '(02)681 6184; (02)681 6274-75', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (152,'Masangkay','911-913 Masangkay St., Binondo, Manila (ATM: On-site)', 14.602952, 120.976177, '(02)241-5364; (02)243-7676; (02)623-9577; (02)241-4047; Mobile: 0917-8270883', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (153,'Mayhaligue','Ground Floor, One Masangkay Place, No. 1420 Masangkay near cor. Mayhaligue St., Sta. Cruz, Manila (ATM: On-site)', 14.609851, 120.979921, '(02)252-5446; (02)252-5457; (02)585-9845; Mobile: 0917-8270887', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (176,'Meycauayan','Gr. Floor, Marian Bldg., McArthur Hi-way, Calvario, Meycauayan City, Bulacan (ATM: On-site)', 14.736498, 120.96128, '(044)815 2346; (044)769 6072', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (126,'Muñoz','Muñoz Market, EDSA, Quezon City (ATM: On-site)', 14.657292, 121.020385, '(02)414 4767; (02)623 2033 Local: 3161 Mobile: 0917 8270986', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (140,'Muntinlupa','12 Jason''s Bldg., National Road Putatan, Muntinlupa (ATM: On-site)', 14.391682, 121.044766, '(02)862-4667; (02)623-2038; (02)862-1368; Mobile: 0917-8270971', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (277,'Naga','G/F Prime Days Hotel Bldg., Panganiban Drive, Naga City (ATM: On-site)', 13.621347, 123.184475, '054- 4737884, 054- 2382988 (Globeline)', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (61,'Navotas','807-817 M.Naval St., Navotas City (ATM: On-site)', 14.655984, 120.947864, '(02)282 7502-04 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (58,'Newport City','G/F Star Cruises Building, Newport City,  Andrews Avenue, Pasay City (ATM: On-site)', 14.519198, 121.017705, '(02)556-8955-56; (02)623-3845 Mobile: 0917-8271143', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (127,'Novaliches','854 Quirino Hiway, Gulod, Novaliches, Quezon City (ATM: On-site)', 14.712733, 121.040043, '(02)417 9463; (02)935 1819; (02)585 1882; Mobile: 0917 8270452', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (7,'Ortigas Center','21 San Miguel Ave., Ortigas Center, Pasig City (ATM: On-site)', 14.581019, 121.059642, '(02)633 6443; (02)635-9028; (02)585 1013; Local: 3168; Mobile: 0917-8270556', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (24,'Pagadian','Rizal Ave., Pagadian City (ATM: On-site)', 7.824421, 123.430394, '(062)214 1841; Local: 3459', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (179,'Pampanga','GF Mel-Vi Bldg., Olongapo-Gapan Road, Dolores, City of San Fernando, Pampanga (ATM: On-site)', 15.041585, 120.68314, '(045)961 6141; (045)961 6300; (045)961 6102; Local: 3183', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (155,'Pandacan','1763 Paz M. Guazon St., Paco,Manila (ATM: On-site)', 14.589471, 120.996872, '(02)564-0535; (02)564-0537; (02)585-9845; Mobile: 0917-8270355', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (48,'Parañaque','Quirino Ave. corner V. Medina St., La Huerta, Parañaque City (ATM: On-site)', 14.501162, 120.991606, '(02)826-7052; (02)829-9317; Mobile: 0917-8271449', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (59,'Pasay','2528 ERL Building, Taft Ave., Pasay City (ATM: On-site)', 14.558399, 120.995982, '(02)833-2959; (02)585-9837; Local: 3173; Mobile: 0917 8270349', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (30,'Pasay Road','Gemland Commercial Bldg., San Lorenzo Village, Makati City 1200 (ATM: On-site)', 14.550646, 121.020604, '(02)585-0978; (02)752-7120-21; Mobile: 0917 8270382', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (37,'Pascor Drive','G/F, SkyFreight Center, Ninoy Aquino Avenue, corner Pascor Drive, Paranaque City (ATM: On-site)', 14.507039, 121.001056, '02 855 77 48 /  02  855 77 47', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (69,'Paseo De Sta Rosa','G/F Southern Luzon Hospital and Medical Center, United Blvd., Sta. Rosa City, Laguna (ATM: On-site)', 14.248677, 121.067384, '(049) 502-7177; (049) 502-7170; Local: 3144; Mobile: 0917-8273098', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (32,'Pasong Tamo Ext','G/F BCS Building, 2297 Pasong Tamo Extension, Makati City (ATM: On-site)', 14.534476, 121.022074, '(02)892-0990; (02)092-0001; (02)892-6879; (02)585-1041; Mobile: 0917 8270365', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (31,'Pasong Tamo JTKC','G/F, JTKC Center 2155 Pasong Tamo street., Makati City (ATM: On-site)', 14.554503, 121.013921, '(02)840 4782-83; (02)585 1044; Mobile: 0917 827 0373', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (33,'Perea','G/F Greenbelt Mansion Bldg., 106 Perea St., Legaspi Village, Makati City (ATM: On-site)', 14.554641, 121.020656, '(02)818-6941; (02)894-3187; (02)585-1029; Local: 3134; Mobile: 0917 8270295', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (268,'Puerto Princesa','Rizal Avenue, Brgy. Maningning, Puerto Princesa City, Palawan (ATM: On-site)', 9.740168, 118.739773, '(048) 434-2009; (048) 434-2007; Local: 8893', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (34,'Rada','Prince Bldg., 117 Rada St, Legaspi Village, Makati City (ATM: On-site)', 14.55536, 121.017724, '(02)893-4318; (02)830-0630; (02)585-0979; Local: 3136; Mobile: 0917-8270389', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (269,'Reina Mercedes','National Highway Nappacu Paqueno Reina Mercedes, Isabela (ATM: On-site)', 16.990974, 121.807134, '(078) 944 8011; Local: 8835', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (8,'Renaissance Tower','G/F Renaissance Center, Meralco Ave., Pasig City (ATM: On-site)', 14.581495, 121.063993, '(02)584-8396; (02)217-7210; Mobile: 0917-8270461', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (129,'Retiro','Amoranto St., (formerly Retiro) near cor. Mayon Street, Quezon City (ATM: On-site)', 14.629934, 120.995193, '(02)742 2787; (02)742 2788; (02)217 4525; Mobile: 0917 8270459', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (141,'Richville','Upper G/F Richville Corporate Tower, Alabang-Zapote Rd.,  Madrigal Bus. Park, Muntinlupa City (ATM: On-site)', 14.42683, 121.025325, '(02)850-5280; (02)850-5164; (02)850-5636; Local: 3716', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (130,'Roosevelt','244 Roosevelt Avenue, San Francusco del Monte, Quezon City (ATM: On-site)', 14.647098, 121.017632, '(02)371 2024; (02)448 6630-31/33; Mobile: 0917 8270460', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (35,'Salcedo','G/F Golden Rock Bldg., 168 Salcedo St., Legaspi Vill., Makati City (ATM: On-site)', 14.557956, 121.015546, '(02)893-7056; (02)818-8075; (02)585-1040; Mobile: 0917-8270364', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (167,'San Fernando - La Union','Ground Floor of Shania Tower, Quezon Avenue, San Fernando City, La Union (ATM: On-site)', 16.612424, 120.316717, '(072)607 0612; Local: 3131; Mobile: 0917 827 9722', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (216,'San Fernando - Pampanga','3M Bldg., MacArthur Highway, San Agustin, San Fernando, Pampanga (ATM: On-site)', 14.980096, 120.752179, '(045)455 3479; (045)455 2518; Local: 3177', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (200,'San Pedro','National Highway, Brgy. Landayan, San Pedro, Laguna (ATM: On-site)', 14.356808, 121.059933, '(049)868-8186; (049)868-8085', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (169,'Santiago','Maharlika Highway, Santiago City, Isabela (ATM: On-site)', 16.696359, 121.584883, '(078)305 9940; Local: 3178', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (9,'Shaw Boulevard','131-133 Shaw Boulevard, Pasig City (ATM: On-site)', 14.572424, 121.06433, '(02)585-1017; (02)632-9817; (02)747-8088; Mobile: (0917)8270558', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (52,'Shaw Mandaluyong','PICPA Bldg., 700 Shaw Blvd., Mandaluyong City (ATM: On-site)', 14.584326, 121.050292, '(02)726 9469;(02)724 2561; Mobile: 0917-8270994', ' ');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (10,'Shaw Pasig','Chipeco Bldg., Shaw Blvd. corner Meralco Ave., Pasig City (ATM: On-site)', 14.575214, 121.060903, '(02)631 3957; (02)502 2669; Local: 3179; Mobile: 0917-8275832', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (156,'Soler','Topsco Building 1148 Soler Street Binondo, Manila (ATM: On-site)', 14.604188, 120.975227, '(02)247 1711; (02)245 7161; (02)623 9584; Mobile: 0917-8270892', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (131,'South Triangle','Quezon Ave. cor. Sct. Albano St., Quezon City (ATM: On-site)', 14.641, 121.033275, '(02)425 1101-02; Mobile: 0917 8270497', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (270,'SSS East Avenue','G/F SSS Main Bldg., East Ave., Quezon City (ATM: On-site)', 14.639789, 121.046995, '(02)624-7686; Mobile: 0917-8276221', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (55,'St. Francis Shangri-La Place','The St. Francis Shangri-La Place, Tower 1 G/F Retail Internal Road corner St. Francis Street, Mandaluyong City (ATM: On-site)', 14.580074, 121.056349, '(02)584-3634; (02)585-8126; Mobile: 0917-8270156', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (132,'St. Luke''s Medical Center','G/F St. Luke''s Medical City Center located at 279 E. Rodriguez, Sr. Boulevard, Quezon City (ATM: On-site)', 14.622704, 121.023404, '(02)661-4639; (02)661-4756; Mobile: 0917-8270872', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (226,'Sta Rosa','Rizal Blvd., Corner Zavalla Street, Brgy Malusak, Sta Rosa City, Laguna (ATM: On-site)', 14.307697, 121.110617, '(049)534 2548; (049)534 1524; Local: 3180', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (157,'Sto. Cristo','LG01 and LG02 Burke Plaza, Sto Cristo St., Binondo, Manila (ATM: On-site)', 14.599505, 120.973119, '(02)244 4282/84; (02)623 9579; Mobile: 0917 8270890', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (279,'Subic','19B Manila Avenue cor. Canal Street, Subic Bay Freeport Zone', 14.822933, 120.276932, '(047)252 9326 Local: 3166', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (50,'Sucat','8200 Dr A Santos Avenue Sucat, Parañaque City', 14.472123, 121.006998, '(02)820 2338-39; (02)820 4030', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (51,'Sucat Jaka','JAKA Plaza, Dr. A. Santos Ave., Parañaque City (ATM: On-site)', 14.465138, 121.019392, '(02)829-9315; (02)585-1039; (02)585-1003; Local: 3181', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (158,'T. Alonzo','625 T. Alonzo St., Sta Cruz,Manila (ATM: On-site)', 14.601873, 120.978371, '(02)736-9858; (02)736-9089', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (271,'Tacloban','Josmar Bldg., M.H. del Pilar St. corner Zamora St., Tacloban City (ATM: On-site)', 11.244519, 125.002457, '(053)832 7724; Local: 3363; Mobile: 0917 8275962', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (159,'Taft','2625 G/F Kassel Condominium, Taft Avenue near cor.P. Ocampo St., Malate, Manila (ATM: On-site)', 14.562017, 120.995026, '(02)404 1533-34; Mobile: 0917 8270358', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (285,'Tagaytay','G/F Tagaytay Prime Residences, Tagytay-Calamba Road, Tagaytay Prime Rotonda, Barangay San Jose, Tagaytay City', 14.117452, 120.964111, '(046)4231661 / (046)42316', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (272,'Tagbilaran','J.S. Torralba St. corner CPG Avenue, Tagbilaran City, Bohol (ATM: On-site)', 9.640406, 123.855705, '(038)501 9909; (038)412 3775; Local: 3364', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (220,'Tarlac','Jaral Bldg. McArthur Ave. cor. Juan Luna St., Tarlac City (ATM: On-site)', 15.487162, 120.595998, '(045)982 6485; Local: 3182', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (11,'Tektite','G/F PSE Center, Ortigas Complex, Pasig City (ATM: On-site)', 14.582875, 121.061316, '(02)637-3280; (02)636-3532; (02)636-3529; Mobile: 0917-8270996', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (6,'The Medical City','The New Medical City Hospital, MATI Bldg. B1, Ortigas, Pasig City', 14.59013, 121.069383, '(02)633 3863; (02)506 5061; (02)633 3862; Local: 3160; Mobile: 0917 8275826', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (133,'Timog','Cabrera Building II. 64 Timog Ave, Quezon City (ATM: On-site)', 14.634455, 121.035839, '(02)413 6304; (02)926 8636; (02)623 9567; Mobile: 0917 8271334 ', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (134,'Tomas Morato','Tomas Morato cor. Sct. Lozano, Quezon City (ATM: On-site)', 14.62954, 121.034241, '(02)928-5801; Mobile: 0917 8270498', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (170,'Tuguegarao','106 A.Bonifacio St., Tuguegarao City, Cagayan (ATM: On-site)', 17.612722, 121.728531, '(078)846 9179; Local: 3184', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (161,'U.N. Avenue','U.N. ave., Cor. M.H. Del Pilar and M. Guerrero Streets, Ermita Manila (ATM: On-site)', 14.579513, 120.978977, '(02)525-2692; Mobile: 0917-8270266', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (1,'UnionBank Plaza','UnionBank Plaza Bldg., Meralco Ave. corner Onyx St., Ortigas Center, Pasig City (ATM: On-site)', 14.587071, 121.063475, '(02)944 8041-43; (02)944 8128-29; (02)634 1602 / 7907; (02)585 1019; Local: 8129 / 8042 / 8128; Mobile: 0917 8270559', 'ubp.ubplaza@mercury.unionbankph.com');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (105,'Valenzuela','Km 12 McArthur Hi-way, Marulas, Valenzuela City (ATM: On-site)', 14.679489, 120.97934, '(02)292 9905; (02)291 8486; (02)443 7748-49; (02)585 0897; Mobile: 0917 8270393', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (36,'Valero','Ground Floor, Le Grand Condominium, 130 Valero St., Makati City (ATM: On-site)', 14.558569, 121.02108, '(02)819-5426; (02)585-1033; Local: 3102; Mobile: 0917 8270462', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (38,'Valero Antel','G/F Antel Platinum Tower, 154 Valero Street, Salcedo Village, Makati City (ATM: On-site)', 14.559169, 121.024038, '(02)752 4435-36; (02)585 1034; Mobile: 0917 8270463', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (162,'Vertex One','G/F Space 12  13 Vertex One Building, San Lazaro, Manila (ATM: On-site)', 14.61948, 120.98521, '(02)559-9792; (02)559-9781; (02)585-8127; Mobile: 0917-8270157', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (171,'Vigan','Jose Singson St., Vigan City, Ilocos Sur (ATM: On-site)', 17.569162, 120.385585, '(077)722-2369; Local: 3187', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (39,'Vito Cruz','G/F Kingswood Arcade Vito Cruz Ext. cor Pasong Tamo, Makati City (ATM: On-site)', 14.566954, 121.012242, '(02)899-2772; (02)585-0980; Mobile: 0917-8270391; Local: 3188', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (57,'Wack-Wack','6 Shaw Blvd. corner Laurel St., Mandaluyong City (ATM: On-site)', 14.588069, 121.044847, '(02)725-2919; Mobile: 0917-8271096', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (135,'West Avenue','27-A West Avenue, Quezon City (ATM: On-site)', 14.640476, 121.026312, '(02)372 7001/3; (02)623 9560; Mobile: 0917 8270762', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (136,'West Avenue Baler','91-A Barangay Bungad, West Avenue, Quezon City (ATM: On-site)', 14.648656, 121.028388, '(02)372 2581-83; (02)907 9408; Mobile: 0917-8272501', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (53,'West Service Road','Rodeo Bldg. Km 18 West Service Road South Luzon Expressway, Parañaque City (ATM: On-site)', 14.469879, 121.044978, '(02)821-4513; (02)821-4674; (02)623-20-29; Local: 3190; Mobile: 0917-8270974', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (40,'World Centre','330 The World Centre Bldg., Sen. Gil J. Puyat Ave., Makati City (ATM: On-site)', 14.561534, 121.021568, '(02)867-8377; (02)867-8560; Mobile: 0917 8270392; Local: 3169', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (274,'Zamboanga City - Jaldon','G/F ZAEC Bldg., Mayor Jaldon cor. Gov. Alavarez, Zamboanga City (ATM: On-site)', 6.910318, 122.073362, '(062)991 4899; (062)991 4499; Local: 8878 / 3460', '9 AM', '4:30 PM');
INSERT INTO branch (id, name, address, latitude, longitude, contactno, opening, closing) VALUES (276,'Zuellig','3rd Flr Zuellig Building Makati Ave. cor Paseo de Roxas, Makati City (ATM: On-site)', 14.557984, 121.026662, '(02)585-8239; (02)808-0465; (02)478-5509; Mobile: 0917 8273197', '9 AM', '4:30 PM');


#ATM data
#-----------------------------------------------------------------------------

INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1087,'MJC Winford','Winford Hotel & Casino Brgy. 350, Santa Cruz, Manila, Metro Manila',14.615278,120.985);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1095,'ABOITIZ NAC','8th floor NAC building 32nd street BGC near at the football field',14.552824,121.051813);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1096,'ABOITIZ OFFSITE','Aboitiz & Co. Building Archbishop Reyes Avenue Banilad, Cebu City',10.318107,123.902722);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1097,'AFPMBAI','AFPSLA Building, EDSA corner Colonel Bonny Serrano, Camp Aguinaldo, Quezon City, Metro Manila',14.610322,121.055859);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1108,'ALABANG COUNTRY CLUB','GF Alabang Country Club, Acacia Drive, Ayala Alabang Village, Muntinlupa City',14.402904,121.016641);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1129,'ASIA  INTERNATIONAL AUCTIONEERS INC','Subic Bay Metropolitan Authority Argonaut Hwy, Olongapo, Zambales',14.804167,120.2975);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1114,'C CUBE','Hinduja Cyberpark .,#86 E. Rodriguez Jr. Avenue.,Libis, Quezon City',14.595584,121.079812);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1120,'CEBU LEXMARK','Mactan Economic Zone II, Basak, Lapu-Lapu City',10.300407,123.962809);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1119,'CEBU LEXMARK 2','LRDC Plaza 2 Bldg,  Cebu Business Park, Cebu City',10.317442,123.908228);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1086,'CEBU VECO','Visayan Electric Company (VECO) J. Panis St., Banilad, Cebu City',10.343056,123.913305);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1102,'CEBU VELEZ','Cebu Velez General Hospital',10.30761,123.894444);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1132,'CLUB TROPICANA - LAS PINAS','VIP Arcade, Ltd. Alabang – Zapote Rd., Las Piñas',14.434444,121.011667);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1090,'CLUB TROPICANA - STA. MESA','CLUB TROPICANA - STA. MESA',14.603609,121.017338);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1089,'Davao Light Power Corporation','163 - 165 C. Bangoy Sr. St. Davao City, 8000',7.076389,125.611111);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1084,'DLSU Medical','G/F DLSUMC New Building, Governor D. Mangubat Avenue City of Dasmariñas Cavite',14.327179,120.94363);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1103,'DLSU-Dasmarinas','De La Salle University Dasmarinas Administration Bldg (Cashier''s Area); West Ave., Dasmarinas City, Cavite',14.3234,120.959432);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1106,'EXTREME BINGO','EXTREME BINGO  94 timog avenue, Quezon City.',14.634392,121.037086);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1093,'FOTON BALINTAWAK','728 A. Bonifacio Ave. Balintawak QC',14.647778,120.995556);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1113,'GSIS COMPLEX','GSIS financial Complex, Roxas Blvd.,Pasay City',14.54915,120.98914);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1109,'IBEX Davao','Ground Floor, Fountain Court, SM Lanang Premier JP Laurel Avenue, Brgy. San Antonio Davao City',7.097778,125.630556);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1092,'IBEX PARANAQUE','6th Floor (Pantry area) SM City, BF Parañaque Sucat Road corner President’s Avenue, Parañaque City',14.454167,121.033333);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1091,'IBEX SHAW','5/F Shaw IT Center 360 Shaw Blvd., cor. 9 de Pebrero St., Brgy. Addition Hills, Mandaluyong City',14.581667,121.039167);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1107,'LA SALLE ZOBEL','Gate 5, La Salle Zobel,University Avenue, Ayala-Alabang Village.,Muntinlupa City',14.409249,121.019423);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1121,'Medical Center Taguig','Medical Center Taguig Levi B. Mariano Ave, Taguig, Metro Manila',14.530679,121.065383);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1082,'MEDICAL CITY ILOILO','',10.703889,122.543333);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1127,'MJC CARMONA','San Lazaro Leasure Park, Governor Drive., Carmona Cavite',14.296196,121.03781);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1085,'MJC Carmona 2','San Lazaro Leasure Park, Governor Drive., Carmona Cavite',14.296196,121.03781);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1122,'Monocrete Construction Philippines','No. 888 Cayetano Ave. C5 Ext. Diversion Rd. Brgy, Palingon Tipas Taguig',14.5375,121.074167);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1123,'PELCO','Pampanga I Electric Coop Inc, Sto Domingo Mexico Pampanga',15.074237,120.748715);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1124,'PHILEX OFFSITE','Philex Mining Corp, Padcal, Tuba, Benquet',16.265833,120.638611);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1118,'QUALFON DUMAGUETE','LinkSy I.T. Park, North National Highway Bantayan, Dumaguete City 6200, Philippines.',9.325833,123.298889);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1101,'QUALFON OFFSITE','Cardinal Rosales Avenue., Cor. Samar Loop Cebu Business Park., Cebu City',10.318302,123.9079);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1126,'RESORTS WORLD','Resorts World  Manila, Newport Boulevard, Newport City  Pasay 1309, Metro Manila',14.518611,121.02);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1105,'SITEL ETON','Eton CyberPod, Corinthians Business Center, Along Ortigas Avenue (infront of Robinsons Galeria',14.592265,121.059824);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1098,'SITEL OFFSITE','Bldg. E, Ortigas Home Depot # 1 Doña Julia Vargas Avenue, Barangay Ugong Pasig City, 1604 Philippines',14.580278,121.066111);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1117,'SITEL TARLAC','Level 2 Robinsons Place Tarlac',15.430833,120.598889);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1116,'SOLAIRE ATM','Level 2 Casino Area Hallway (beside BDO ATM) Solaire Resort and Casino Hotel Macapagal Ave Bagong Nayon Pasay',14.525556,120.979722);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1104,'STARTEK ANGELES','Entec Bldg., Block 15, Lots 15, 16, 17 and 18 Don Juan Avenue, corner Teresa Avenue, Nepo Center, Angeles City',15.138611,120.588889);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1115,'STARTEK ILOILO','Iloilo Business Park  Airport Rd, Mandurriao, Iloilo City, 5000 Iloilo',10.713978,122.545394);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1110,'STARTEK MAKATI','Ground Floor, SM Makati CyberZone, Sen. Gil Puyat Ave., Makati City',14.561111,121.058056);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1128,'STARTEK ORTIGAS','Startek Ortigas Tiendesitas Ugong Pasig City',14.588333,121.075278);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1088,'SUTHERLAND BGC','12/F Philplans Corporate Center,Triangle Drive cor. Bonifacio Triangle, Bonifacio Global City, Taguig, Philippines',14.560349,121.056245);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1100,'SUTHERLAND CAMSUR','Camarines Sur IT Center, IT Park, Provincial Capitol Complex, Cadlan, Pili 4418 Camarines Sur',13.597626,123.245248);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1133,'SUTHERLAND CARMONA','Warehouse Phase 1 and Phase 2, lot 562-B-3, Governor''s Dr., Poblacion,Carmona, Cavite',14.313889,121.0525);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1131,'SUTHERLAND CLARK','The Plaza Building, Jose Abad Santos Avenue, Berthaphil II, Clarkfield Pampanga',15.177322,120.529059);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1094,'SUTHERLAND CUBAO','7th Floor Harvester Corporate Center 158 P.Tuazon Bouleverd corner 7th and 8th Ave., Cubao, Quezon City',14.6125,121.054722);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1099,'SUTHERLAND DAVAO','Building B, Luisa Complex, Jacinto Extension, Davao City',7.076389,125.610833);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1112,'SUTHERLAND LEGASPI','Ground Flr.Building ,Embarcadero de Legazpi,Legazpi port Site,Victory Village, Legaspi City',13.151944,123.729722);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1083,'SUTHERLAND SHAW','9F, Shaw IT Center 360 Shaw Blvd corner 9 de Pebrero Street, Barangay Addition Hills San Felipe Neri, Mandaluyong Cit',14.586667,121.036667);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1130,'SUTHERLAND TARLAC','Tarlac IT Park II, Ninoy Aquino Highway, San Isidro, Tarlac City',15.498638,120.576577);
INSERT INTO atm (id, name, address, latitude, longitude) VALUES (1111,'UST','Ground flr  Vestibule building, UST Hospital, Lacson Avenue, Sampaloc Manila',14.610833,120.993611)
