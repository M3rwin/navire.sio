-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: naviresymfo
-- ------------------------------------------------------
-- Server version	5.7.26
use naviresymfo;
UNLOCK TABLES;
SET FOREIGN_KEY_CHECKS=0;
truncate table navire;
truncate table aisshiptype;
truncate table port;
truncate table pays;
truncate table porttypecompatible;
truncate table escale ;

--
-- Table aisshiptype
--

LOCK TABLES aisshiptype WRITE;

INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (1,1,'Reserved');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (2,2,'Wing In Ground');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (3,3,'Special Category');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (4,4,'High-Speed Craft');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (5,5,'Special Category');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (6,6,'Passenger');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (7,7,'Cargo');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (8,8,'Tanker');
INSERT INTO aisshiptype (id, aisshiptype, libelle) VALUES (9,9,'Reserved');

UNLOCK TABLES;


--
-- Table escale
--


LOCK TABLES escale WRITE;

INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (1,1,3,'2020-06-15 09:19:00','2020-07-31 14:30:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (2,1,3,'2020-08-08 06:14:00','2020-10-03 10:15:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (3,1,7,'2020-10-07 09:56:00','2020-10-30 16:00:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (4,1,6,'2020-10-31 08:04:00','2020-10-31 20:06:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (5,2,10,'2020-10-18 11:10:00','2020-10-18 21:32:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (6,2,10,'2020-11-14 11:59:00','2020-11-14 22:30:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (7,2,10,'2020-11-22 12:16:00','2020-11-29 22:59:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (8,2,9,'2020-11-25 13:35:00','2020-11-26 03:10:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (9,2,8,'2020-11-28 20:00:00','2020-12-09 10:00:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (10,3,15,'2020-11-30 06:22:00','2020-11-30 23:22:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (11,3,14,'2020-12-01 08:48:00','2020-12-02 09:51:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (12,3,13,'2020-12-02 17:06:00','2020-12-04 08:12:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (13,3,12,'2020-12-04 16:05:00','2020-12-05 01:03:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (14,3,11,'2020-12-09 14:12:00','2020-12-10 17:54:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (15,4,19,'2020-11-09 05:42:00','2020-11-09 22:18:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (16,4,18,'2020-11-10 16:20:00','2020-11-11 15:21:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (17,4,17,'2020-11-15 07:47:00','2020-11-16 16:45:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (18,4,17,'2020-11-16 17:55:00','2020-11-18 06:43:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (19,4,16,'2020-12-08 14:36:00','2020-12-09 09:55:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (23,5,25,'2020-11-26 04:47:00','2020-11-28 16:50:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (24,5,21,'2020-12-01 14:38:00','2020-12-02 18:40:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (25,5,20,'2020-12-06 00:03:00','2020-12-07 10:02:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (26,5,20,'2020-12-08 12:47:00','2020-12-09 10:10:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (31,6,24,'2020-10-19 08:00:00','2020-10-21 12:09:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (32,6,24,'2020-10-24 00:05:00','2020-10-24 22:39:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (33,6,24,'2020-10-25 02:03:00','2020-10-25 11:24:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (34,6,23,'2020-11-30 06:03:00','2020-12-01 18:07:00');
INSERT INTO escale (id, idnavire, idPort, dateheurearrivee, dateheuredepart) VALUES (35,6,23,'2020-12-01 21:37:00','2020-12-02 16:14:00');

UNLOCK TABLES;

--
-- Table navire
--


LOCK TABLES navire WRITE;

INSERT INTO navire (id, imo, nom, mmsi, indicatif, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (1,'9007491','CLUB MED 2','227194000','FNIR','2020-11-05 07:00:00',6,60,4,187,20,5.2);
INSERT INTO navire (id, imo, nom, mmsi, indicatif, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (2,'9744001','SYMPHONY OF THE SEAS','311000660','C6DF6','2020-12-05 13:30:00',6,133,2,362,66,9);
INSERT INTO navire (id, imo, nom, mmsi, indicatif, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (3,'9193680','MSC TIA','255806080','CQIV6','2020-12-09 13:00:00',7,136,12,194,28,11.1);
INSERT INTO navire (id, imo, nom, mmsi, indicatif, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (4,'9502910','MAERSK EMERALD','563090400','9V6464','2020-11-29 12:00:00',7,151,16,366,48,14.9);
INSERT INTO navire (id, imo, nom, mmsi, indicatif, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (5,'9755933','MSC DIANA','636017433','D5KX8','2020-12-07 22:00:00',7,102,17,400,59,13.6);
INSERT INTO navire (id, imo, nom, mmsi, indicatif, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (6,'9280366','CONFIDENCE','636012164','A8DU7','2020-12-14 23:00:00',8,102,22,229,32,7.5);
-- INSERT INTO navire (id, imo, nom, mmsi, indicatifappel, eta, idAisShipType, idpays, idport, longueur, largeur, tirantdeau) VALUES (8,'9263899','PRINSDER NEDER','123456789','5BGF2','2020-01-01 00:00:00',7,11,14,206,30,5.9);
UNLOCK TABLES;

--
-- Table structure for table pays
--


LOCK TABLES pays WRITE;

INSERT INTO pays (id, nom, indicatif) VALUES (1,'Aruba (Ile d\')','ABW');
INSERT INTO pays (id, nom, indicatif) VALUES (2,'Angola','AGO');
INSERT INTO pays (id, nom, indicatif) VALUES (3,'Anguilla (Ile d\')','AIA');
INSERT INTO pays (id, nom, indicatif) VALUES (4,'Albanie','ALB');
INSERT INTO pays (id, nom, indicatif) VALUES (5,'Aland (Iles d\')','ALD');
INSERT INTO pays (id, nom, indicatif) VALUES (6,'Antilles Néerlandaises','ANT');
INSERT INTO pays (id, nom, indicatif) VALUES (7,'Emirats Arabes Unis','ARE');
INSERT INTO pays (id, nom, indicatif) VALUES (8,'Argentine','ARG');
INSERT INTO pays (id, nom, indicatif) VALUES (9,'Kerguelen (Iles)','ATF');
INSERT INTO pays (id, nom, indicatif) VALUES (10,'Antigua et Barbuda','ATG');
INSERT INTO pays (id, nom, indicatif) VALUES (11,'Australie','AUS');
INSERT INTO pays (id, nom, indicatif) VALUES (12,'Autriche','AUT');
INSERT INTO pays (id, nom, indicatif) VALUES (13,'Azerbaidjan','AZE');
INSERT INTO pays (id, nom, indicatif) VALUES (14,'Belgique','BEL');
INSERT INTO pays (id, nom, indicatif) VALUES (15,'Benin','BEN');
INSERT INTO pays (id, nom, indicatif) VALUES (16,'Bangladesh','BGO');
INSERT INTO pays (id, nom, indicatif) VALUES (17,'Bulgarie','BGR');
INSERT INTO pays (id, nom, indicatif) VALUES (18,'Bahrein','BHR');
INSERT INTO pays (id, nom, indicatif) VALUES (19,'Bahamas','BHS');
INSERT INTO pays (id, nom, indicatif) VALUES (20,'Belize','BLZ');
INSERT INTO pays (id, nom, indicatif) VALUES (21,'Bermudes (Iles)','BMU');
INSERT INTO pays (id, nom, indicatif) VALUES (22,'Bolivie','BOL');
INSERT INTO pays (id, nom, indicatif) VALUES (23,'Brésil','BRA');
INSERT INTO pays (id, nom, indicatif) VALUES (24,'Barbade (Ile de La)','BRB');
INSERT INTO pays (id, nom, indicatif) VALUES (25,'Brunei','BRN');
INSERT INTO pays (id, nom, indicatif) VALUES (26,'Canada','CAN');
INSERT INTO pays (id, nom, indicatif) VALUES (27,'Suisse','CHE');
INSERT INTO pays (id, nom, indicatif) VALUES (28,'Chili','CHL');
INSERT INTO pays (id, nom, indicatif) VALUES (29,'Chine','CHN');
INSERT INTO pays (id, nom, indicatif) VALUES (30,'Côte d\'Ivoire','CIV');
INSERT INTO pays (id, nom, indicatif) VALUES (31,'Cameroun','CMR');
INSERT INTO pays (id, nom, indicatif) VALUES (32,'Canaries (Iles)','CNI');
INSERT INTO pays (id, nom, indicatif) VALUES (33,'Congo (Rép. Dem. du)','COD');
INSERT INTO pays (id, nom, indicatif) VALUES (34,'Congo','COG');
INSERT INTO pays (id, nom, indicatif) VALUES (35,'Cook (Iles)','COK');
INSERT INTO pays (id, nom, indicatif) VALUES (36,'Colombie','COL');
INSERT INTO pays (id, nom, indicatif) VALUES (37,'Comores (Iles des)','COM');
INSERT INTO pays (id, nom, indicatif) VALUES (38,'Cap Vert (Iles du)','CPV');
INSERT INTO pays (id, nom, indicatif) VALUES (39,'Costa Rica','CRI');
INSERT INTO pays (id, nom, indicatif) VALUES (40,'Cuba','CUB');
INSERT INTO pays (id, nom, indicatif) VALUES (41,'Curaçao','CUR');
INSERT INTO pays (id, nom, indicatif) VALUES (42,'Cayman (Iles)','CYM');
INSERT INTO pays (id, nom, indicatif) VALUES (43,'Chypre','CYP');
INSERT INTO pays (id, nom, indicatif) VALUES (44,'Tchèque (République)','CZE');
INSERT INTO pays (id, nom, indicatif) VALUES (45,'Allemagne','DEU');
INSERT INTO pays (id, nom, indicatif) VALUES (46,'Djibouti','DJI');
INSERT INTO pays (id, nom, indicatif) VALUES (47,'Dominique','DMA');
INSERT INTO pays (id, nom, indicatif) VALUES (48,'Danemark','DNK');
INSERT INTO pays (id, nom, indicatif) VALUES (49,'Dominicaine (République)','DOM');
INSERT INTO pays (id, nom, indicatif) VALUES (50,'Algérie','DZA');
INSERT INTO pays (id, nom, indicatif) VALUES (51,'Equateur','ECU');
INSERT INTO pays (id, nom, indicatif) VALUES (52,'Egypte','EGY');
INSERT INTO pays (id, nom, indicatif) VALUES (53,'Erythrée','ERI');
INSERT INTO pays (id, nom, indicatif) VALUES (54,'Espagne','ESP');
INSERT INTO pays (id, nom, indicatif) VALUES (55,'Estonie','EST');
INSERT INTO pays (id, nom, indicatif) VALUES (56,'Ethiopie','ETH');
INSERT INTO pays (id, nom, indicatif) VALUES (57,'Finlande','FIN');
INSERT INTO pays (id, nom, indicatif) VALUES (58,'Fiji (Iles)','FJI');
INSERT INTO pays (id, nom, indicatif) VALUES (59,'Falkland (Iles)','FLK');
INSERT INTO pays (id, nom, indicatif) VALUES (60,'France','FRA');
INSERT INTO pays (id, nom, indicatif) VALUES (61,'Feroe (Iles)','FRO');
INSERT INTO pays (id, nom, indicatif) VALUES (62,'Micronésie','FSM');
INSERT INTO pays (id, nom, indicatif) VALUES (63,'Gabon','GAB');
INSERT INTO pays (id, nom, indicatif) VALUES (64,'Royaume-Uni','GBR');
INSERT INTO pays (id, nom, indicatif) VALUES (65,'Georgie','GEO');
INSERT INTO pays (id, nom, indicatif) VALUES (66,'Ghana','GHA');
INSERT INTO pays (id, nom, indicatif) VALUES (67,'Gibraltar','GIB');
INSERT INTO pays (id, nom, indicatif) VALUES (68,'Guinée','GIN');
INSERT INTO pays (id, nom, indicatif) VALUES (69,'Guadeloupe','GLP');
INSERT INTO pays (id, nom, indicatif) VALUES (70,'Gambie','GMB');
INSERT INTO pays (id, nom, indicatif) VALUES (71,'Guinée-Bissau','GNB');
INSERT INTO pays (id, nom, indicatif) VALUES (72,'Guinée Equatoriale','GNQ');
INSERT INTO pays (id, nom, indicatif) VALUES (73,'Grèce','GRC');
INSERT INTO pays (id, nom, indicatif) VALUES (74,'Grenade','GRD');
INSERT INTO pays (id, nom, indicatif) VALUES (75,'Groenland','GRL');
INSERT INTO pays (id, nom, indicatif) VALUES (76,'Guatemala','GTM');
INSERT INTO pays (id, nom, indicatif) VALUES (77,'Guam','GUM');
INSERT INTO pays (id, nom, indicatif) VALUES (78,'Honduras','HND');
INSERT INTO pays (id, nom, indicatif) VALUES (79,'Croatie','HRV');
INSERT INTO pays (id, nom, indicatif) VALUES (80,'Haiti','HTI');
INSERT INTO pays (id, nom, indicatif) VALUES (81,'Hongrie','HUN');
INSERT INTO pays (id, nom, indicatif) VALUES (82,'Indonésie','IDN');
INSERT INTO pays (id, nom, indicatif) VALUES (83,'Inde','IND');
INSERT INTO pays (id, nom, indicatif) VALUES (84,'Ile de Man','IOM');
INSERT INTO pays (id, nom, indicatif) VALUES (85,'Irlande (Rép. d\')','IRL');
INSERT INTO pays (id, nom, indicatif) VALUES (86,'Iran','IRN');
INSERT INTO pays (id, nom, indicatif) VALUES (87,'Iraq','IRQ');
INSERT INTO pays (id, nom, indicatif) VALUES (88,'Iceland','ISL');
INSERT INTO pays (id, nom, indicatif) VALUES (89,'Israël','ISR');
INSERT INTO pays (id, nom, indicatif) VALUES (90,'Italie','ITA');
INSERT INTO pays (id, nom, indicatif) VALUES (91,'Jamaïque','JAM');
INSERT INTO pays (id, nom, indicatif) VALUES (92,'Jordanie','JOR');
INSERT INTO pays (id, nom, indicatif) VALUES (93,'Japon','JPN');
INSERT INTO pays (id, nom, indicatif) VALUES (94,'Kenya','KEN');
INSERT INTO pays (id, nom, indicatif) VALUES (95,'Cambodge','KHM');
INSERT INTO pays (id, nom, indicatif) VALUES (96,'Kiribati','KIR');
INSERT INTO pays (id, nom, indicatif) VALUES (97,'Corée du Sud','KOR');
INSERT INTO pays (id, nom, indicatif) VALUES (98,'Koweit','KWT');
INSERT INTO pays (id, nom, indicatif) VALUES (99,'Kazakhstan','KZA');
INSERT INTO pays (id, nom, indicatif) VALUES (100,'Laos','LAO');
INSERT INTO pays (id, nom, indicatif) VALUES (101,'Liban','LBN');
INSERT INTO pays (id, nom, indicatif) VALUES (102,'Liberia','LBR');
INSERT INTO pays (id, nom, indicatif) VALUES (103,'Libye','LBY');
INSERT INTO pays (id, nom, indicatif) VALUES (104,'Sainte Lucie','LCA');
INSERT INTO pays (id, nom, indicatif) VALUES (105,'Sri Lanka','LKA');
INSERT INTO pays (id, nom, indicatif) VALUES (106,'Lituanie','LTU');
INSERT INTO pays (id, nom, indicatif) VALUES (107,'Luxembourg','LUX');
INSERT INTO pays (id, nom, indicatif) VALUES (108,'Lettonie','LVA');
INSERT INTO pays (id, nom, indicatif) VALUES (109,'Maroc','MAR');
INSERT INTO pays (id, nom, indicatif) VALUES (110,'Monaco','MCO');
INSERT INTO pays (id, nom, indicatif) VALUES (111,'Madagascar','MDG');
INSERT INTO pays (id, nom, indicatif) VALUES (112,'Maldives (Iles)','MDV');
INSERT INTO pays (id, nom, indicatif) VALUES (113,'Mexique','MEX');
INSERT INTO pays (id, nom, indicatif) VALUES (114,'Marshall (Iles)','MHL');
INSERT INTO pays (id, nom, indicatif) VALUES (115,'Malte ','MLT');
INSERT INTO pays (id, nom, indicatif) VALUES (116,'Myanmar','MMR');
INSERT INTO pays (id, nom, indicatif) VALUES (117,'Mozambique','MOZ');
INSERT INTO pays (id, nom, indicatif) VALUES (118,'Mauritanie','MRT');
INSERT INTO pays (id, nom, indicatif) VALUES (119,'Montenegro','MTG');
INSERT INTO pays (id, nom, indicatif) VALUES (120,'Maurice (Ile)','MUS');
INSERT INTO pays (id, nom, indicatif) VALUES (121,'Malaisie','MYS');
INSERT INTO pays (id, nom, indicatif) VALUES (122,'Namibie','NAM');
INSERT INTO pays (id, nom, indicatif) VALUES (123,'Nouvelle-Calédonie','NCL');
INSERT INTO pays (id, nom, indicatif) VALUES (124,'Nigéria','NGA');
INSERT INTO pays (id, nom, indicatif) VALUES (125,'Nicaragua','NIC');
INSERT INTO pays (id, nom, indicatif) VALUES (126,'Norvège (Reg. Intern.)','NIS');
INSERT INTO pays (id, nom, indicatif) VALUES (127,'Pays-Bas','NLD');
INSERT INTO pays (id, nom, indicatif) VALUES (128,'Norvège','NOR');
INSERT INTO pays (id, nom, indicatif) VALUES (129,'Nauru (Rép. de)','NRU');
INSERT INTO pays (id, nom, indicatif) VALUES (130,'Nouvelle-Zélande','NZL');
INSERT INTO pays (id, nom, indicatif) VALUES (131,'Oman','OMN');
INSERT INTO pays (id, nom, indicatif) VALUES (132,'Pakistan','PAK');
INSERT INTO pays (id, nom, indicatif) VALUES (133,'Panama','PAN');
INSERT INTO pays (id, nom, indicatif) VALUES (134,'Pérou','PER');
INSERT INTO pays (id, nom, indicatif) VALUES (135,'Philippines','PHL');
INSERT INTO pays (id, nom, indicatif) VALUES (136,'Madère','PMD');
INSERT INTO pays (id, nom, indicatif) VALUES (137,'Papouasie-Nlle Guinée','PNG');
INSERT INTO pays (id, nom, indicatif) VALUES (138,'Pologne','POL');
INSERT INTO pays (id, nom, indicatif) VALUES (139,'Porto Rico','PRI');
INSERT INTO pays (id, nom, indicatif) VALUES (140,'Corée du Nord','PRK');
INSERT INTO pays (id, nom, indicatif) VALUES (141,'Portugal','PRT');
INSERT INTO pays (id, nom, indicatif) VALUES (142,'Paraguay','PRY');
INSERT INTO pays (id, nom, indicatif) VALUES (143,'Polynésie Française','PYF');
INSERT INTO pays (id, nom, indicatif) VALUES (144,'Qatar','QAT');
INSERT INTO pays (id, nom, indicatif) VALUES (145,'Réunion (Ile de La)','REU');
INSERT INTO pays (id, nom, indicatif) VALUES (146,'Roumanie','ROM');
INSERT INTO pays (id, nom, indicatif) VALUES (147,'Russie (Fédér. de)','RUS');
INSERT INTO pays (id, nom, indicatif) VALUES (148,'Arabie Saoudite (Roy. d\')','SAU');
INSERT INTO pays (id, nom, indicatif) VALUES (149,'Soudan','SDN');
INSERT INTO pays (id, nom, indicatif) VALUES (150,'Sénégal','SEN');
INSERT INTO pays (id, nom, indicatif) VALUES (151,'Singapour','SGP');
INSERT INTO pays (id, nom, indicatif) VALUES (152,'Salomon (Iles)','SLB');
INSERT INTO pays (id, nom, indicatif) VALUES (153,'Sierra Leone','SLE');
INSERT INTO pays (id, nom, indicatif) VALUES (154,'Salvador','SLV');
INSERT INTO pays (id, nom, indicatif) VALUES (155,'Somalie','SOM');
INSERT INTO pays (id, nom, indicatif) VALUES (156,'St Pierre et Miquelon','SPM');
INSERT INTO pays (id, nom, indicatif) VALUES (157,'Sao Tome & Principe','STP');
INSERT INTO pays (id, nom, indicatif) VALUES (158,'Suriname','SUR');
INSERT INTO pays (id, nom, indicatif) VALUES (159,'Slovaquie','SVK');
INSERT INTO pays (id, nom, indicatif) VALUES (160,'Slovénie','SVN');
INSERT INTO pays (id, nom, indicatif) VALUES (161,'Suède','SWE');
INSERT INTO pays (id, nom, indicatif) VALUES (162,'Seychelles','SYC');
INSERT INTO pays (id, nom, indicatif) VALUES (163,'Syrie','SYR');
INSERT INTO pays (id, nom, indicatif) VALUES (164,'Tahiti','TAH');
INSERT INTO pays (id, nom, indicatif) VALUES (165,'Togo','TGO');
INSERT INTO pays (id, nom, indicatif) VALUES (166,'Thaïlande','THA');
INSERT INTO pays (id, nom, indicatif) VALUES (167,'Turkménistan','TKM');
INSERT INTO pays (id, nom, indicatif) VALUES (168,'Tonga','TON');
INSERT INTO pays (id, nom, indicatif) VALUES (169,'Trinité et Tobago','TTO');
INSERT INTO pays (id, nom, indicatif) VALUES (170,'Tunisie','TUN');
INSERT INTO pays (id, nom, indicatif) VALUES (171,'Turquie','TUR');
INSERT INTO pays (id, nom, indicatif) VALUES (172,'Tuvalu','TUV');
INSERT INTO pays (id, nom, indicatif) VALUES (173,'Taiwan','TWN');
INSERT INTO pays (id, nom, indicatif) VALUES (174,'Tanzanie','TZA');
INSERT INTO pays (id, nom, indicatif) VALUES (175,'Ouganda','UGA');
INSERT INTO pays (id, nom, indicatif) VALUES (176,'Ukraine','UKR');
INSERT INTO pays (id, nom, indicatif) VALUES (177,'Uruguay','URY');
INSERT INTO pays (id, nom, indicatif) VALUES (178,'Etats-Unis','USA');
INSERT INTO pays (id, nom, indicatif) VALUES (179,'St Vincent et Grenadines','VCT');
INSERT INTO pays (id, nom, indicatif) VALUES (180,'Venezuela','VEN');
INSERT INTO pays (id, nom, indicatif) VALUES (181,'Vierges (Iles)','VGB');
INSERT INTO pays (id, nom, indicatif) VALUES (182,'Vietnam','VNM');
INSERT INTO pays (id, nom, indicatif) VALUES (183,'Vanuatu','VUT');
INSERT INTO pays (id, nom, indicatif) VALUES (184,'Samoa (Iles)','WSM');
INSERT INTO pays (id, nom, indicatif) VALUES (185,'Yemen','YEM');
INSERT INTO pays (id, nom, indicatif) VALUES (186,'Afrique du Sud','ZAF');

UNLOCK TABLES;

--
-- Table port
--


LOCK TABLES port WRITE;

INSERT INTO port (id, idpays, nom, indicatif) VALUES (2,40,'Cayo Coco','CUCCC');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (3,60,'La Seyne Sur Mer','FRYNE');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (4,60,'Toulon','FRTLN');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (5,60,'Le Havre','FRLEH');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (6,141,'Lisboa','PTLIS');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (7,141,'Setubal','PTSET');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (8,19,'Little Stirrup Cay','BSCOC');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (9,19,'Port de NASSAU','BSNAS');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (10,178,'Miami','USMIA');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (11,171,'istanbul','TRIST');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (12,160,'Koper','SIKOP');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (13,90,'Venezia','ITVCE');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (14,90,'Ravenna','ITRAN');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (15,90,'Trieste','ITTRS');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (16,178,'Long Beach','USLGB');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (17,29,'Shangaï','CNSHG');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (18,29,'Yantian','CNYTN');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (19,29,'Nansha','CNNSA');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (20,29,'Ningbo','CNNGB');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (21,97,'Busan New Port','KRBNP');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (22,124,'Port Harcourt','NGPHC');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (23,67,'Gibraltar','GIGIB');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (24,178,'New York','USNYC');
INSERT INTO port (id, idpays, nom, indicatif) VALUES (25,29,'Qingdao','CNQDG');

UNLOCK TABLES;

--
-- Table porttypecompatible
--

LOCK TABLES porttypecompatible WRITE;
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (2,24);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,1);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,3);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,4);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,5);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,6);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,17);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,23);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (3,24);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,1);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,3);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,4);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,5);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,6);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,7);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,8);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,17);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,18);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,19);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,20);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,23);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (4,24);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,1);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,5);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,6);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,17);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,18);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,19);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,20);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,22);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,23);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (5,24);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,1);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,2);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,3);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,4);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,5);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,6);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,7);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,8);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,9);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,10);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,11);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,12);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,13);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,15);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,16);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,21);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,23);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (6,24);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,1);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,2);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,5);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,9);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,10);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,11);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,12);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,13);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,14);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,15);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,16);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,17);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,18);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,19);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,20);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,21);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,22);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,23);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (7,24);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,1);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,2);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,5);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,9);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,10);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,11);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,12);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,13);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,14);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,15);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,16);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,17);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,18);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,19);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,20);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,21);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,22);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,23);
INSERT INTO porttypecompatible (idaisshiptype, idport) VALUES (8,24);
commit;
UNLOCK TABLES;

SET FOREIGN_KEY_CHECKS=1;

drop table if exists naviresymfo.dernieremodif;
create table if not exists naviresymfo.dernieremodif(id integer primary key auto_increment,
datedernieremodif datetime not null);
insert into naviresymfo.dernieremodif (datedernieremodif) values ('2020-12-01 18:45:56');
commit;
use naviresymfo;
drop procedure if exists naviresymfo.majdates;
DELIMITER //
CREATE PROCEDURE naviresymfo.majdates ()
  BEGIN
    DECLARE dernieremiseajour DATETIME ;    
    DECLARE nbsecondes bigint;
       SELECT dernieremodif.datedernieremodif INTO dernieremiseajour
      FROM naviresymfo.dernieremodif
      where id=1;  
     
	select UNIX_TIMESTAMP(now()) - UNIX_TIMESTAMP(dernieremiseajour) into nbsecondes from  dernieremodif where id=1;
    update naviresymfo.navire set navire.eta=date_add(navire.eta, interval nbsecondes second);
    update naviresymfo.escale set escale.dateHeureArrivee=date_add(escale.dateHeureArrivee , interval nbsecondes second),
									escale.dateHeureDepart=date_add(escale.dateHeureDepart , interval nbsecondes second);

    update dernieremodif set datedernieremodif = now();
  END //
  DELIMITER ;
  call naviresymfo.majdates();