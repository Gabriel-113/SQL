-- MySQL dump 10.13  Distrib 8.0.32, for Linux (x86_64)
--
-- Host: localhost    Database: db_mmorpg
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.04.2

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
-- Dumping data for table `AUCTION`
--
/*Tabla que contiene informacion sobre las subastas que realizan los usuarios, con la moneda, el precio y los id correspondientes*/
LOCK TABLES `AUCTION` WRITE;
/*!40000 ALTER TABLE `AUCTION` DISABLE KEYS */;
INSERT INTO `AUCTION` VALUES (1,23,5,14,'Rubies',300),(2,4,6,30,'Oro',10000000),(3,10,4,23,'Oro',15000000),(4,37,3,5,'Rubies',50),(5,11,1,23,'Oro',10500000),(6,96,2,19,'Rubies',1000),(7,71,1,24,'Oro',20000000),(8,66,2,23,'Rubies',250),(9,38,4,5,'Rubies',400),(10,53,5,30,'Oro',20100000),(11,15,1,19,'Oro',10000000),(12,22,3,24,'Rubies',100),(13,44,6,24,'Rubies',200),(14,82,3,5,'Oro',150000000);
/*!40000 ALTER TABLE `AUCTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `BANS`
--

/*Tabla que contiene la informacion sobre los bans realizados por los moderadores, con la fecha, el motivo y los id correspondientes*/
LOCK TABLES `BANS` WRITE;
/*!40000 ALTER TABLE `BANS` DISABLE KEYS */;
INSERT INTO `BANS` VALUES (1,3,1,'2023-01-18','2023-04-18','Lenguaje inapropiado'),(2,9,15,'2022-11-08','2023-06-08','Lenguaje ofensivo'),(3,2,12,'2023-01-15','2030-01-15','Cheat'),(4,5,5,'2023-01-02','2023-03-02','Lenguaje inapropiado'),(5,8,10,'2022-09-29','2023-05-29','Lenguaje inapropiado, spam'),(6,25,1,'2022-08-29','2023-03-29','Lenguaje inapropiado'),(7,32,5,'2022-08-29','2023-03-29','Lenguaje inapropiado'),(8,52,3,'2022-01-30','2022-12-29','Lenguaje inapropiado');
/*!40000 ALTER TABLE `BANS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `BOSS`
--
/*Tabla con la informacion de cada Boss*/
LOCK TABLES `BOSS` WRITE;
/*!40000 ALTER TABLE `BOSS` DISABLE KEYS */;
INSERT INTO `BOSS` VALUES (1,'Senatus',30,'Magico','10+'),(2,'Enchantress',80,'Magico','20+'),(3,'Malus',70,'Maldicion','20+'),(4,'Mundus',20,'Fisico','5+'),(5,'Malganis',40,'Maldicion','10+'),(6,'Kinglear',30,'Fisico','10+'),(7,'Archantus',80,'Magico','20+'),(8,'Alextraza',80,'Magico','30+'),(9,'Mutanus',20,'Maldicion','5+'),(10,'Velanter',60,'Fisico','15+'),(11,'Rakduss',40,'Magico','10+'),(12,'Velatores',30,'Magico','5+'),(13,'Valus',70,'Maldicion','15+'),(14,'Akador',50,'Fisico','15+'),(15,'Chezaris',40,'Maldicion','10+'),(16,'Vinglear',30,'Fisico','10+'),(17,'varhaktus',80,'Magico','20+'),(18,'latseraza',80,'Magico','30+'),(19,'Mloytis',20,'Maldicion','5+'),(20,'Zelatore',0,'Fisico','5+'),(21,'Kleatys',40,'Magico','10+'),(22,'Aknuriatres',30,'Magico','5+'),(23,'tylus',70,'Maldicion','20+'),(24,'Kuntys',70,'Fisico','15+'),(25,'Ralganis',40,'Maldicion','10+'),(26,'Kingsyon',30,'Fisico','10+'),(27,'Varchatus',80,'Magico','20+'),(28,'Ploxtraza',80,'Magico','30+'),(29,'Jyrioks',20,'Maldicion','5+'),(30,'Helanter',60,'Fisico','15+');
/*!40000 ALTER TABLE `BOSS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CLASS`
--
/* Tabla con el nombre de las clases*/
LOCK TABLES `CLASS` WRITE;
/*!40000 ALTER TABLE `CLASS` DISABLE KEYS */;
INSERT INTO `CLASS` VALUES (1,'Guerrero'),(2,'Mago'),(3,'Tirador'),(4,'Asesino'),(5,'Sacerdote'),(6,'Brujo'),(7,'Paladin'),(8,'Nigromante'),(9,'Monje'),(10,'Druida');
/*!40000 ALTER TABLE `CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSICION_SERVIDOR`
--

/*Tabla con los id del servidor y el id de la composicion de la zonas*/
LOCK TABLES `COMPOSICION_SERVIDOR` WRITE;
/*!40000 ALTER TABLE `COMPOSICION_SERVIDOR` DISABLE KEYS */;
INSERT INTO `COMPOSICION_SERVIDOR` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(7,1),(9,1),(10,1),(13,1),(16,1),(17,1),(18,1),(19,1),(21,1),(22,1),(25,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(9,2),(10,2),(11,2),(12,2),(13,2),(14,2),(15,2),(16,2),(17,2),(18,2),(19,2),(20,2),(21,2),(24,2),(25,2),(26,2),(30,2),(31,2),(32,2),(1,3),(2,3),(3,3),(4,3),(6,3),(8,3),(9,3),(12,3),(13,3),(14,3),(15,3),(16,3),(17,3),(20,3),(21,3),(22,3),(23,3),(24,3),(25,3),(26,3),(27,3),(28,3),(29,3),(30,3),(32,3),(1,4),(2,4),(3,4),(4,4),(5,4),(6,4),(7,4),(8,4),(9,4),(10,4),(11,4),(12,4),(13,4),(14,4),(15,4),(16,4),(17,4),(18,4),(19,4),(20,4),(21,4),(22,4),(23,4),(24,4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),(31,4),(32,4),(1,5),(2,5),(3,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5),(11,5),(12,5),(13,5),(14,5),(15,5),(20,5),(21,5),(22,5),(23,5),(24,5),(25,5),(26,5),(28,5),(29,5),(31,5),(32,5),(1,6),(2,6),(3,6),(4,6),(5,6),(6,6),(7,6),(8,6),(9,6),(10,6),(11,6),(12,6),(13,6),(14,6),(15,6),(16,6),(17,6),(18,6),(19,6),(20,6),(30,6),(31,6),(32,6);
/*!40000 ALTER TABLE `COMPOSICION_SERVIDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `COMPOSICION_ZONA`
--

/*Tabla con que contiene la informacion de como se compone cada zona, con los id correspondiente*/
LOCK TABLES `COMPOSICION_ZONA` WRITE;
/*!40000 ALTER TABLE `COMPOSICION_ZONA` DISABLE KEYS */;
INSERT INTO `COMPOSICION_ZONA` VALUES (1,1,1,NULL,NULL),(2,2,2,NULL,NULL),(3,3,13,15,21),(4,4,NULL,9,18),(5,5,23,30,13),(6,6,16,4,14),(7,7,NULL,7,28),(8,8,9,3,22),(9,9,12,2,11),(10,10,16,17,5),(11,11,3,1,29),(12,12,4,8,9),(13,13,15,13,24),(14,14,NULL,22,27),(15,15,21,23,23),(16,16,17,12,16),(17,17,NULL,21,10),(18,18,8,11,12),(19,19,11,19,26),(20,20,19,25,6),(21,21,14,27,15),(22,22,6,5,19),(23,23,12,18,1),(24,24,NULL,29,17),(25,25,22,6,3),(26,26,10,20,4),(27,27,24,10,7),(28,28,7,14,20),(29,29,11,28,8),(30,30,20,16,30),(31,31,25,24,2),(32,32,NULL,NULL,NULL);
/*!40000 ALTER TABLE `COMPOSICION_ZONA` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DATOS_USUARIO`
--

/*Tabla que contiene Los datos de cada usuario*/
LOCK TABLES `DATOS_USUARIO` WRITE;
/*!40000 ALTER TABLE `DATOS_USUARIO` DISABLE KEYS */;
INSERT INTO `DATOS_USUARIO` VALUES (1,'Kain','Passingham','kpassingham0@google.pl','1993-12-07','China','4109 Sommers Lane','2147','2022-08-01'),(2,'Dalenna','Haselgrove','dhaselgrove1@ebay.com','1992-01-20','Philippines','3 Luster Junction','1215','2021-02-02'),(3,'Edwin','Burg','eburg2@vinaora.com','1996-10-09','France','4729 Anthes Alley',NULL,'2021-10-08'),(4,'Starlin','Gartshore','sgartshore3@technorati.com','1992-10-14','Brazil','31958 Lindbergh Center','69470-000','2021-08-26'),(5,'Ginnifer','Semmence','gsemmence4@booking.com','1994-07-31','Georgia','93898 Northview Road',NULL,'2022-05-13'),(6,'Reider','McRill','rmcrill5@biblegateway.com','1990-04-07','China','3 Graceland Park',NULL,'2022-12-08'),(7,'Glenden','Eddicott','geddicott6@theglobeandmail.com','1998-02-25','Portugal','9909 Springs Park','2970-833','2022-04-02'),(8,'Christina','Coleborn','ccoleborn7@ucoz.com','1995-12-11','Kazakhstan',NULL,NULL,'2021-04-06'),(9,'Lowe','Andriss','landriss8@bing.com','1999-12-21','Brazil',NULL,'76170-000','2021-11-10'),(10,'Vittoria','Potten','vpotten9@tripadvisor.com','1997-12-06','Tajikistan','93 Victoria Plaza',NULL,'2021-12-21'),(11,'Robert','Elms','relmsa@diigo.com','1991-02-21','Yemen','752 3rd Plaza',NULL,'2021-08-15'),(12,'Nappy','Larrington','nlarringtonb@sohu.com','1998-06-04','Sweden','00975 Banding Place',NULL,'2021-08-31'),(13,'Von','Niblock','vniblockc@skyrock.com','1991-03-27','China','6453 Pawling Place',NULL,'2021-02-18'),(14,'Washington','Vye','wvyed@4shared.com','2003-08-18','Indonesia','37 Holy Cross Crossing',NULL,'2021-10-05'),(15,'Porter','Maleham','pmalehame@army.mil','1994-06-29','China',NULL,NULL,'2021-07-19'),(16,'Drake','Fothergill','dfothergillf@mlb.com','1990-01-04','China','33202 Goodland Parkway',NULL,'2022-02-24'),(17,'Odele','Tomasek','otomasekg@taobao.com','1996-08-29','Slovenia','9 Pawling Trail',NULL,'2022-10-09'),(18,'Roderic','Kleinmann','rkleinmannh@drupal.org','1994-05-04','Thailand',NULL,'45220','2022-09-14'),(19,'Kasey','Bissell','kbisselli@bandcamp.com','1995-05-30','Botswana','048 Duke Circle',NULL,'2021-06-29'),(20,'Catlaina','Dransfield','cdransfieldj@oakley.com','1994-01-05','China','6013 Paget Point',NULL,'2022-08-07'),(21,'Lester','Liver','lliverk@jugem.jp','2000-02-11','Czech Republic','71 Tennyson Avenue',NULL,'2022-06-18'),(22,'Lanette','Birth','lbirthl@hud.gov','2002-12-31','Indonesia','623 Straubel Plaza',NULL,'2022-09-04'),(23,'Neel','Tuxill','ntuxillm@studiopress.com','1993-11-25','China',NULL,NULL,'2022-08-09'),(24,'Barbaraanne','Dewdney','bdewdneyn@gnu.org','1999-04-16','Brazil','890 Mcbride Drive',NULL,'2022-04-20'),(25,'Broderick','Paternoster','bpaternostero@netvibes.com','1992-03-26','Vietnam','52365 Drewry Avenue',NULL,'2022-06-29'),(26,'Kellen','Annatt','kannattp@bbc.co.uk','1995-08-27','Philippines','98181 Homewood Way',NULL,'2021-11-22'),(27,'Alexa','Leynham','aleynhamq@ucla.edu','2002-06-25','Cameroon','21 Springview Park',NULL,'2021-08-07'),(28,'Binky','Gatecliffe','bgatecliffer@com.com','2000-11-09','China','29529 Delaware Point',NULL,'2022-04-26'),(29,'Abran','oockovici','aoockovicis@upenn.edu','2001-12-22','Peru',NULL,NULL,'2022-06-04'),(30,'Anthe','Bluett','abluettt@biblegateway.com','2000-04-09','Brazil',NULL,'65715-000','2022-08-11'),(31,'Donnie','Sullly','dsulllyu@columbia.edu','1999-10-11','Colombia','9 Clemons Point',NULL,'2021-01-14'),(32,'Rudolph','Castaneda','rcastanedav@boston.com','1993-09-10','Peru','5762 Maryland Junction',NULL,'2021-09-17'),(33,'Letizia','Koopman','lkoopmanw@godaddy.com','1998-06-24','Poland','07593 Nelson Street','32-825','2022-02-20'),(34,'Virginia','McGeoch','vmcgeochx@elegantthemes.com','1990-11-15','Poland',NULL,NULL,'2022-05-14'),(35,'Morgana','Adriaens','madriaensy@feedburner.com','2003-10-29','Indonesia','8446 Pearson Parkway',NULL,'2021-12-29'),(36,'Berry','Cockaday','bcockadayz@elegantthemes.com','1995-02-05','Indonesia','56 Artisan Avenue',NULL,'2021-07-24'),(37,'Trey','Shivlin','tshivlin10@google.ru','2001-04-22','China',NULL,NULL,'2021-07-25'),(38,'Britta','Alflatt','balflatt11@alibaba.com','1995-06-25','Ireland','49972 Old Gate Trail','A45','2022-08-02'),(39,'Samara','Byng','sbyng12@drupal.org','1995-05-25','Sweden','90046 Del Sol Circle','791 55','2021-09-09'),(40,'Christalle','Grenshiels','cgrenshiels13@shinystat.com','1994-11-23','Russia','442 Holmberg Hill','392999','2021-04-23'),(41,'Pall','Rasper','prasper14@slideshare.net','1990-05-06','Sweden','06 West Plaza',NULL,'2022-03-08'),(42,'Benito','Vallantine','bvallantine15@skyrock.com','1992-08-24','France','53237 Sunfield Center',NULL,'2021-01-23'),(43,'Umberto','Klaes','uklaes16@bravesites.com','1995-10-08','China','8 Clemons Drive',NULL,'2021-12-05'),(44,'Trumann','Manifield','tmanifield17@imageshack.us','2001-02-20','Peru','20 Stone Corner Center',NULL,'2022-01-16'),(45,'Karisa','Welch','kwelch18@cnn.com','1991-11-07','China','7 Southridge Point',NULL,'2022-05-28'),(46,'Tessa','Lea Anglois','tlanglois19@delicious.com','1993-08-25','Armenia','85475 Hanson Park',NULL,'2022-02-13'),(47,'Teddy','Kase','tkase1a@uiuc.edu','1998-12-26','Indonesia','1330 Loeprich Drive',NULL,'2022-05-22'),(48,'Tedda','Muris','tmuris1b@hao123.com','2001-12-08','Indonesia','78231 Kim Crossing',NULL,'2022-07-08'),(49,'Rudolfo','Gwioneth','rgwioneth1c@nationalgeographic.com','1993-08-26','Indonesia','234 Center Circle',NULL,'2021-07-26'),(50,'Celinda','Haslen','chaslen1d@hc360.com','1991-06-21','China',NULL,NULL,'2021-07-13'),(51,'Birgitta','Mullarkey','bmullarkey1e@youtu.be','2000-12-17','Indonesia',NULL,NULL,'2022-05-18'),(52,'Kellen','Hutchinges','khutchinges1f@theglobeandmail.com','2000-11-11','Indonesia','1723 Anthes Hill',NULL,'2021-11-22'),(53,'Ogdon','Mayze','omayze1g@google.com.hk','1996-06-17','China',NULL,NULL,'2022-12-20'),(54,'Sheelagh','Stathor','sstathor1h@epa.gov','1991-04-24','China',NULL,NULL,'2021-09-15'),(55,'Gisella','Fallen','gfallen1i@wp.com','1999-07-19','Indonesia','99374 Sutteridge Way',NULL,'2021-08-23'),(56,'Darrell','Aimable','daimable1j@privacy.gov.au','1996-09-05','China','460 Hooker Pass',NULL,'2021-03-03'),(57,'Mellisent','Lynam','mlynam1k@example.com','1993-03-09','Peru','122 John Wall Lane',NULL,'2021-10-01'),(58,'Collin','Losemann','closemann1l@nifty.com','1990-06-24','Slovenia','9200 Northland Parkway','2367','2021-06-15'),(59,'Dionysus','Malkinson','dmalkinson1m@merriam-webster.com','1990-10-14','United Kingdom','40715 Arkansas Place','NN4','2021-08-25'),(60,'Crista','Kondrachenko','ckondrachenko1n@shinystat.com','2003-04-11','Brazil','6339 Scoville Center',NULL,'2021-05-25'),(61,'Maiga','Ox','mox1o@ow.ly','1996-07-07','Indonesia','69217 Schmedeman Plaza',NULL,'2021-12-26'),(62,'Danica','Tarply','dtarply1p@unesco.org','1997-10-05','Russia','8950 Farwell Place','652380','2022-11-05'),(63,'Jerrome','Kinker','jkinker1q@blogs.com','2003-12-31','China','5 Mallory Place',NULL,'2021-09-23'),(64,'Katlin','Gladebeck','kgladebeck1r@booking.com','1993-05-21','Russia','7 Bashford Trail','141850','2022-03-18'),(65,'Prescott','Tullett','ptullett1s@nps.gov','1994-09-03','Colombia',NULL,'151247','2022-10-17'),(66,'Elspeth','Darlaston','edarlaston1t@geocities.com','1996-06-24','Thailand','9 Helena Crossing','55130','2021-06-29'),(67,'Jorey','Foan','jfoan1u@ezinearticles.com','1999-03-09','Argentina',NULL,'5833','2022-05-04'),(68,'Rab','Martijn','rmartijn1v@elpais.com','1994-06-21','Serbia','077 Coolidge Drive',NULL,'2021-06-20'),(69,'Cher','Brearty','cbrearty1w@mit.edu','1998-08-20','Colombia','6016 Green Ridge Crossing',NULL,'2022-04-05'),(70,'Allissa','Hovert','ahovert1x@unblog.fr','1996-06-19','China','26 Clarendon Lane',NULL,'2021-12-07'),(71,'Morlee','Vasyuchov','mvasyuchov1y@shareasale.com','1991-05-06','Mongolia','386 Victoria Terrace',NULL,'2021-04-24'),(72,'Esmeralda','Parmby','eparmby1z@wired.com','1990-06-25','Indonesia','5 Lakewood Gardens Junction',NULL,'2021-06-24'),(73,'Cahra','Rotham','crotham20@forbes.com','1994-05-10','Indonesia','64904 Reindahl Parkway',NULL,'2022-07-05'),(74,'Randall','Edgeson','redgeson21@elpais.com','2001-02-20','China','04298 Hooker Crossing',NULL,'2022-02-19'),(75,'Dulsea','O Cosgra','docosgra22@flickr.com','1992-07-06','Niger','637 Red Cloud Road',NULL,'2022-01-21'),(76,'Link','Wolfarth','lwolfarth23@last.fm','1991-05-20','Togo',NULL,NULL,'2022-11-02'),(77,'Rosella','Drewet','rdrewet24@youtube.com','2000-02-07','China','7984 Debra Lane',NULL,'2022-05-17'),(78,'Lombard','Rattry','lrattry25@bigcartel.com','1991-10-23','Brazil',NULL,'99460-000','2022-10-27'),(79,'Annecorinne','Aitken','aaitken26@ustream.tv','1999-12-22','Belarus','4231 Porter Junction',NULL,'2021-11-27'),(80,'Marwin','Ubsdall','mubsdall27@typepad.com','1991-12-26','China',NULL,NULL,'2022-08-26'),(81,'Ogdon','Lindelof','olindelof28@theglobeandmail.com','1997-12-24','China',NULL,NULL,'2022-07-09'),(82,'Lorens','Orriss','lorriss29@opera.com','1994-06-15','China','84516 Eastlawn Park',NULL,'2022-02-22'),(83,'Iggie','Tritten','itritten2a@uol.com.br','2000-03-16','Yemen','612 Kensington Way',NULL,'2022-11-03'),(84,'Harri','Hasney','hhasney2b@unicef.org','1990-01-21','China','0042 Jana Alley',NULL,'2022-01-24'),(85,'Glyn','Burgwyn','gburgwyn2c@freewebs.com','1999-09-13','Thailand',NULL,NULL,'2021-04-13'),(86,'Nobie','Fulton','nfulton2d@pagesperso-orange.fr','2000-12-21','Brazil',NULL,'39880-000','2021-11-25'),(87,'Vivyanne','Luckings','vluckings2e@tinyurl.com','2003-01-07','North Korea','976 Kinsman Way',NULL,'2021-06-06'),(88,'Ninnetta','Houson','nhouson2f@goo.ne.jp','1990-04-19','Finland','3 Mosinee Pass',NULL,'2021-10-10'),(89,'Lurline','Darey','ldarey2g@cbslocal.com','1998-02-25','Tajikistan','57924 Crownhardt Park',NULL,'2021-03-18'),(90,'Udall','Howsley','uhowsley2h@wired.com','1992-07-09','Ecuador','04820 Briar Crest Place',NULL,'2021-02-18'),(91,'Alia','Lahrs','alahrs2i@craigslist.org','2001-11-29','Ecuador','9574 Pennsylvania Avenue',NULL,'2022-07-26'),(92,'Aharon','Barbara','abarbara2j@phpbb.com','1999-03-07','United States','1 High Crossing Trail','80291','2021-05-08'),(93,'Farra','Stansby','fstansby2k@odnoklassniki.ru','2002-10-01','China',NULL,NULL,'2022-08-20'),(94,'Celine','Kinghorne','ckinghorne2l@opensource.org','2003-01-15','Mayotte',NULL,NULL,'2022-03-18'),(95,'Valery','Cuesta','vcuesta2m@slideshare.net','1996-12-02','Indonesia','5724 Summit Terrace',NULL,'2022-12-13'),(96,'Thacher','Fifield','tfifield2n@earthlink.net','1998-08-14','Serbia','8623 Beilfuss Place',NULL,'2022-04-30'),(97,'Marina','ooethebridge','mooethebridge2o@free.fr','1995-12-17','Ukraine','5 Sunnyside Parkway',NULL,'2021-02-25'),(98,'Merlina','Raisher','mraisher2p@ed.gov','1996-08-23','Philippines','2 Lake View Street','4421','2022-08-30'),(99,'Law','Chamberlen','lchamberlen2q@sphinn.com','1995-06-20','Serbia','6 Hovde Street',NULL,'2022-06-15'),(100,'Wilma','Ilem','wilem2r@about.com','1998-02-24','Czech Republic','53960 Packers Drive',NULL,'2021-04-02'),(103,'Klesa','Passinger','klesa_p@google.pl','1993-12-08','Taiwan','4109 Sommers Age',NULL,'2022-09-01'),(104,'Jeleno','Haselgrove','dhaselgrove1@ebay.com','1992-01-20','Philippines','3 Luster Junction','1215','2021-02-02');
/*!40000 ALTER TABLE `DATOS_USUARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `DUNGEONS`
--

LOCK TABLES `DUNGEONS` WRITE;
/*!40000 ALTER TABLE `DUNGEONS` DISABLE KEYS */;
INSERT INTO `DUNGEONS` VALUES (1,'Cueva de los Lamentos',20,'Facil','2+'),(2,'Minas de la Muerte',40,'Media','5+'),(3,'Monasterio Escarlata',30,'Facil','2+'),(4,'Templo de Maraudon',50,'Dificil','10+'),(5,'Ruinas de Atalhakkar',60,'Media','10+'),(6,'Naxxramas',70,'Dificil','15+'),(7,'ZulFarrak',80,'Extrema','30+'),(8,'Guarida Nocturna',30,'Facil','10+'),(9,'Ciudadela Oscura',80,'Imposible','30+'),(10,'Templo Oscuro',70,'Dificil','20+'),(11,'Cumbres  Empinadas',20,'Facil','+1'),(12,'Cementerio Blanco',30,'Media','+2'),(13,'Catacumbas',50,'Dificil','10+'),(14,'LLanuras Inhospitas',10,'Facil','2+'),(15,'Guarida del Caido',50,'Dificil','10+'),(16,'Castillo de la Doncella',80,'Extrema','15+'),(17,'Tierras desoladas',60,'Facil','5+'),(18,'Bastion Derrumbado',30,'Media','5+'),(19,'Templo Ilidari',40,'Dificil','5+'),(20,'Bosque Embrujado',20,'Facil','2+'),(21,'Oasis Congelado',60,'Media','5+'),(22,'Valle del Dolor',80,'Imposible','40+'),(23,'Arenas Zaludak',70,'Dificil','15+'),(24,'Cuenca de Arathi',20,'Imposible','20+'),(25,'Islas Perdidas',30,'Facil','5+'),(26,'Cumbres Gemelas',70,'Dificil','10+'),(27,'Academia Hechizada',40,'Media','5+'),(28,'Aguas Profundas',80,'Imposible','20+'),(29,'Fixura Vil',60,'Extrema','15+'),(30,'Trono del Rey Hundido',70,'Dificil','15+');
/*!40000 ALTER TABLE `DUNGEONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `EQUILIBRIOS`
--

/*Tabla log que registra los cambios realizados en otras tablas*/
LOCK TABLES `EQUILIBRIOS` WRITE;
/*!40000 ALTER TABLE `EQUILIBRIOS` DISABLE KEYS */;
/*!40000 ALTER TABLE `EQUILIBRIOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ITEMS`
--

/*Tabla con la informacion de cada item*/
LOCK TABLES `ITEMS` WRITE;
/*!40000 ALTER TABLE `ITEMS` DISABLE KEYS */;
INSERT INTO `ITEMS` VALUES (1,'Pechera Oxidada','Mediano',0,10,1,'','Comun','%60'),(2,'Casco Ebano','Pesado',0,1500,70,'Resistencia %30','Mitico','%10'),(3,'Tunica de Seda','Liviano',0,300,40,'Mana %5','Raro','40%'),(4,'Botas de Cuero','Mediano',0,150,10,'','Comun','%60'),(5,'Hombreras de Legionario','Mediano',0,700,80,'Defensa %50','Legendario','%3'),(6,'Guantes de Hilo','Liviano',0,50,10,'','Comun','%60'),(7,'Cota de Malla','Pesado',0,500,40,'Bloqueo %5','Raro','%40'),(8,'Tunica Bendecida','Liviano',0,1000,80,'Mana %30 Velocidad %10','Inusual','%1'),(9,'Capucha de Algodon','Liviano',0,30,5,'','Comun','%60'),(10,'Escudo de Plata','Una Mano',0,150,20,'Bloqueo %5','Raro','%40'),(11,'Daga Maldita','Una Mano',300,0,50,'Veneno +5','Mitico','%10'),(12,'Arco Curvo','Dos Manos',500,0,40,'Velocidad atk %5','Raro','%40'),(13,'Mandoble','Dos Manos',800,0,60,'Daño %1','Raro','%40'),(14,'Baculo Exanime','Dos Manos',2000,0,80,'Daño mgc %15 Mana %30','Legendario','%3'),(15,'Espada Corva','Una Mano',700,0,40,'Velocidad atk %3','Raro','%40'),(16,'Baston Aprendiz','Dos Manos',100,0,10,'','Comun','%60'),(17,'Hacha Doble Filo','Dos Manos',500,0,30,'Daño %5','Raro','%40'),(18,'Espada Corta','Una Mano',400,0,30,'','Comun','%60'),(19,'Tomo Necronomicon','Una Mano',2500,0,80,'Velocidad cast %50 Mana %40','Legendario','%3'),(20,'Ballesta Pesada','Dos Manos',700,0,30,'Penetracion %10','Raro','%40'),(21,'Anillo de Sangre','Mano',0,0,60,'Daño Magico %30','Mitico','%10'),(22,'Collar Brillante','Cuello',0,0,30,'Suerte +5','Raro','%40'),(23,'Collar Invisible','Cuello',0,0,80,'Mana %40 Velocidad atk %12','Legendario','%3'),(24,'Aro Perlado','Oreja',0,0,80,'Velocidad cast %70 Daño Magico %15','Inusual','%1'),(25,'Anillo Estropeado','Mano',0,0,20,'Velocidad %5','Comun','%60'),(26,'Anillo de Ambar','Mano',0,0,60,'Penetracion %20 Suerte +12','Mitico','%10'),(27,'Aro de Plata','Oreja',0,0,50,'Daño %7','Raro','%40'),(28,'Aro Maldito','Oreja',0,0,80,'Velocidad atk %15 Daño %10','Mitico','%10'),(29,'Anillo Leviatan','Mano',0,0,60,'Velocidad cast %30 Mana %10','Mitico','%10'),(30,'Anillo Bendecido','Mano',0,0,80,'Penetracion %30 Velocidad atk %15','Legendario','%3'),(31,'Flechas','Consumible',0,0,0,'0','Comun',''),(32,'Pocion Mana','Consumible',0,0,0,'Restaura 400 Mana','',''),(33,'Pocion Vida','Consumible',0,0,0,'Restaura 500 Puntos Vida','',''),(34,'Pocion Velocidad','Consumible',0,0,0,'+10 Velocidad por 60 Segundos','',''),(35,'Pocion Resistencia','Consumible',0,0,0,'+50 Resistencia por 180 Segundos','',''),(36,'Pocion Velocidad atk','Consumible',0,0,0,'+15 Velocidad Atk por 120 Sengundos','',''),(37,'Pocion Daño Magico','Consumible',0,0,0,'+5% de Daño Magico por 120 Segundos','',''),(38,'Super Pocion de Mana','Consumible',0,0,0,'Restaura 3000 Puntos vida en 180 Segundos','',''),(39,'Super Pocion de Vida','Consumible',0,0,0,'Restura 4500 Puntos Mana en 180 Segundos','',''),(40,'Pergamino Restauracion','Consumible',0,0,0,'Restaura tu Equipo','',''),(41,'Pechera Draconica','Pesado',0,1000,60,'','Mitico','%10'),(42,'Casco Draconico','Pesado',0,1000,70,'Resistencia %30','Mitico','%10'),(43,'Arco Elfico','Dos Manos',750,0,40,'Velocidad Atk %5','Mitico','%10');
/*!40000 ALTER TABLE `ITEMS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `MODERATOR`
--

/*Tabla que contiene la informacion de los moderadores con sus permisos y el id de usuario*/
LOCK TABLES `MODERATOR` WRITE;
/*!40000 ALTER TABLE `MODERATOR` DISABLE KEYS */;
INSERT INTO `MODERATOR` VALUES (1,12,'Admin'),(2,24,'Admin'),(3,35,'Intermedios'),(4,49,'Admin'),(5,28,'Inicial'),(6,2,'Admin'),(7,82,'Inicial'),(8,61,'Intermedios'),(9,9,'Intermedios'),(10,74,'Inicial'),(11,30,'Admin'),(12,80,'Intermedios'),(13,53,'Admin'),(14,17,'Inicial'),(15,47,'Admin'),(16,68,'Intermedios'),(17,92,'Inicial'),(18,15,'Admin'),(19,20,'Intermedios'),(20,70,'Intermedios');
/*!40000 ALTER TABLE `MODERATOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `MODERATOR_SERVIDOR`
--

/*Tabla que contiene la informacion de como se distribuye cada moderador en los servidores*/
LOCK TABLES `MODERATOR_SERVIDOR` WRITE;
/*!40000 ALTER TABLE `MODERATOR_SERVIDOR` DISABLE KEYS */;
INSERT INTO `MODERATOR_SERVIDOR` VALUES (1,1),(2,3),(3,5),(4,6),(5,1),(6,2),(7,3),(8,4),(9,4),(10,4),(11,2),(12,6),(13,5),(14,6),(15,1),(16,2),(17,3),(18,4),(19,5),(20,1);
/*!40000 ALTER TABLE `MODERATOR_SERVIDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `NPC`
--

/*Tabla con la informacion de cada NPC*/
LOCK TABLES `NPC` WRITE;
/*!40000 ALTER TABLE `NPC` DISABLE KEYS */;
INSERT INTO `NPC` VALUES (1,'Arañas','1-10','Fisico'),(2,'Murcielagos','2-10','Fisico'),(3,'Esqueletos','10-20','Fisico'),(4,'Nigromantes','10-20','Magico'),(5,'Escarlatas','10-20','Fisico'),(6,'Minotauros','20-30','Fisico'),(7,'Malformacion','20-30','Fisico'),(8,'Rakydos','20-30','Magico'),(9,'Zergs','30-40','Fisico'),(10,'Protos','30-40','Magico'),(11,'Zombies','30-40','Fisico'),(12,'Protectors','40-50','Fisico'),(13,'Gruls','40-50','Magico'),(14,'Warlocks','40-50','Maldicion'),(15,'Gargolas','50-60','Maldicion'),(16,'Quimeras','50-60','Magico'),(17,'Sombras','50-60','Maldicion'),(18,'Caidos','60-70','Fisico'),(19,'Viles','60-70','Fisico'),(20,'Zigurats','60-70','Magico'),(21,'Necroticos','70-80','Maldicion'),(22,'Blades','70-80','Fisico'),(23,'Demonios','70-80','Fisico'),(24,'Darkers','70-80','Maldicion'),(25,'Elementales','70-80','Magico');
/*!40000 ALTER TABLE `NPC` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PERSONAJE`
--

/*Informacion de cada personaje por usuario, con su composicion y los id correspondiente*/
LOCK TABLES `PERSONAJE` WRITE;
/*!40000 ALTER TABLE `PERSONAJE` DISABLE KEYS */;
INSERT INTO `PERSONAJE` VALUES (1,1,1,1,'Legolas_XX','Elfo',80,'Fisico','Cazador','Sindicato'),(2,2,3,4,'Rubstein','Drenai',80,'Fisico','Herrero','Justicia'),(3,3,5,2,'Wizardia','Elfo',50,'Magico','Alquimista','Letrado'),(4,4,6,4,'Bordeaux','Humano',80,'Fisico','Alquimista','Sindicato'),(5,5,1,5,'Arwen','Humano',80,'Magico','Escriba','Justicia'),(6,6,2,6,'Messias','Orco',47,'Maldicion','Alquimista','Sindicato'),(7,7,3,3,'Faq14','Humano',12,'Fisico','Cazador','Justicia'),(8,8,4,4,'Waffen','Elfo',72,'Fisico','Ladron','Sindicato'),(9,9,4,1,'Kuty','Orco',23,'Fisico','Minero','Sindicato'),(10,10,4,8,'Black','Drenai',35,'Magico','Alquimista','Letrado');
/*!40000 ALTER TABLE `PERSONAJE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `PETITIONS`
--

/*Tabla que contiene las peticiones realizadas por aquellos usuarios que fueron sancionados*/
LOCK TABLES `PETITIONS` WRITE;
/*!40000 ALTER TABLE `PETITIONS` DISABLE KEYS */;
INSERT INTO `PETITIONS` VALUES (1,1,3,'2023-01-18','Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(2,2,9,'2022-11-09','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt'),(3,4,5,'2023-01-03','Lorem ipsum dolor sit amet, consectetur adipiscing elit'),(4,5,8,'2022-10-01','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore');
/*!40000 ALTER TABLE `PETITIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `REGISTROS_USUARIOS`
--

/*Tabla log que registra cuando un usuario se registra o modifica sus datos*/
LOCK TABLES `REGISTROS_USUARIOS` WRITE;
/*!40000 ALTER TABLE `REGISTROS_USUARIOS` DISABLE KEYS */;
INSERT INTO `REGISTROS_USUARIOS` VALUES (1,'Nuevo usuario registrado','2023-02-22 20:25:57'),(2,'Se cargaron los datos correspondiente al usuario','2023-02-22 20:32:10'),(3,'Los datos del usuario se modificaron','2023-02-22 21:10:34'),(4,'Nuevo usuario registrado Jeleno','2023-02-22 21:27:46'),(5,'Se cargaron los datos correspondiente al usuario numero id: 104','2023-02-22 21:33:41');
/*!40000 ALTER TABLE `REGISTROS_USUARIOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SANCIONES`
--

/*Tabla log que registra cuando se realiza alguna modificacion en la tabla bans, sea un nuevo registro o una eliminacion*/
LOCK TABLES `SANCIONES` WRITE;
/*!40000 ALTER TABLE `SANCIONES` DISABLE KEYS */;
INSERT INTO `SANCIONES` VALUES (1,'Se registro la sancion con numero id: 0, Realizada por el moderador numero id: 1','2023-02-22 21:44:07'),(2,'Se registro la sancion con numero id: 0, Realizada por el moderador numero id: 5','2023-02-22 21:45:37'),(3,'Se registro la sancion con numero id: 0, Realizada por el moderador numero id: 3','2023-02-22 21:48:21'),(4,'Se registro la sancion con numero id: 9, Realizada por el moderador numero id: 3','2023-02-22 21:50:40'),(5,'Se elimino la sancion con numero id: 9, Realizada por el moderador numero id: 3','2023-02-22 22:08:52');
/*!40000 ALTER TABLE `SANCIONES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SERVIDOR`
--

/*Tabla de los servidores, con su nombre, region y capacidad*/
LOCK TABLES `SERVIDOR` WRITE;
/*!40000 ALTER TABLE `SERVIDOR` DISABLE KEYS */;
INSERT INTO `SERVIDOR` VALUES (1,'Morta','LAS',1000),(2,'Raskan','LAN',3000),(3,'Noria','LAS',1000),(4,'Felora','LAN',1500),(5,'Velario','BR',2000),(6,'Fortes','EU',1000);
/*!40000 ALTER TABLE `SERVIDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SHOP`
--

/*Tabla que contiene la informacion de cada venta de items realizada por el juego, con el id del item, venta y su precio*/
LOCK TABLES `SHOP` WRITE;
/*!40000 ALTER TABLE `SHOP` DISABLE KEYS */;
INSERT INTO `SHOP` VALUES (1,5,700),(2,11,1200),(3,14,1500),(4,19,1500),(5,23,2000),(6,24,2000),(7,30,1800),(8,38,300),(9,39,300),(10,40,500);
/*!40000 ALTER TABLE `SHOP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SPELLS`
--

/*Tabla que contiene la informacion de los spells del juego con sus caracteristicas*/
LOCK TABLES `SPELLS` WRITE;
/*!40000 ALTER TABLE `SPELLS` DISABLE KEYS */;
INSERT INTO `SPELLS` VALUES (1,'Garra Oscura','Maldicion',50),(2,'Embate','Fisico',30),(3,'Purificar','Magico',20),(4,'Daga Venenosa','Fisico',50),(5,'Tiro Certero','Fisico',10),(6,'Toque Helado','Magico',30),(7,'Silencio',' ',20),(8,'Exorcismo','Maldicion',80),(9,'Misiles Arcanos','Magico',70),(10,'Doble Filo','Fisico',30);
/*!40000 ALTER TABLE `SPELLS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SPELLS_CLASS`
--

/*Tabla que contiene que spell corresponde a que clase, con los id correspondientes*/
LOCK TABLES `SPELLS_CLASS` WRITE;
/*!40000 ALTER TABLE `SPELLS_CLASS` DISABLE KEYS */;
INSERT INTO `SPELLS_CLASS` VALUES (6,1),(1,2),(5,3),(4,4),(3,5),(2,6),(4,7),(6,8),(2,9),(1,10);
/*!40000 ALTER TABLE `SPELLS_CLASS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USUARIO`
--

/*Tabla de usuarios, con su id, nombre registrado y contraseña*/
LOCK TABLES `USUARIO` WRITE;
/*!40000 ALTER TABLE `USUARIO` DISABLE KEYS */;
INSERT INTO `USUARIO` VALUES (1,'Karalynn','**********'),(2,'Min','***********'),(3,'Barbe','************'),(4,'Amalie','**********'),(5,'My','************'),(6,'Farr','************'),(7,'Hubert','************'),(8,'Tierney','************'),(9,'Cecilla','************'),(10,'Bobbi','***********'),(11,'Dee','**************'),(12,'Darice','************'),(13,'Burch','**********'),(14,'Archibold','**********'),(15,'Amalie','***********'),(16,'Rachel','***********'),(17,'Eva','************'),(18,'Durant','***********'),(19,'Jamill','************'),(20,'Randa','***********'),(21,'Lise','***********'),(22,'Desiri','**********'),(23,'Ursulina','**********'),(24,'Ronica','***********'),(25,'Darrin','************'),(26,'Junie','***********'),(27,'Frederik','**********'),(28,'Cointon','**********'),(29,'Charlotta','*************'),(30,'Viola','**********'),(31,'Adriano','**********'),(32,'Regan','**********'),(33,'Alina','************'),(34,'Desirae','**********'),(35,'Coralyn','**********'),(36,'Rebecka','**********'),(37,'Pandora','**********'),(38,'Rosemonde','************'),(39,'Hiram','***********'),(40,'Stephenie','**********'),(41,'Sonnie','***********'),(42,'Roseanna','**********'),(43,'Agretha','**********'),(44,'Lanna','**********'),(45,'Darrelle','**********'),(46,'Darren','************'),(47,'Codie','**********'),(48,'Selia','**********'),(49,'Daphne','*************'),(50,'Lexie','************'),(51,'Corinna','**********'),(52,'Kristan','**********'),(53,'Carrissa','**********'),(54,'Humphrey','**********'),(55,'Bartholemy','***********'),(56,'Steven','***********'),(57,'Jordan','**********'),(58,'Rosaleen','***********'),(59,'Kris','**********'),(60,'Rosalinda','***********'),(61,'Any','**********'),(62,'Urban','**********'),(63,'Lena','***********'),(64,'Ty','**********'),(65,'Annabal','***********'),(66,'Crista','************'),(67,'Brandtr','**********'),(68,'Rosemonde','**********'),(69,'Manya','************'),(70,'Uriah','**********'),(71,'Grange','**********'),(72,'Carena','**********'),(73,'Trish','**********'),(74,'Eileen','*************'),(75,'Norene','**********'),(76,'Harwell','************'),(77,'Elbertine','**********'),(78,'Gilberte','***********'),(79,'Derk','***********'),(80,'Keven','**********'),(81,'Josee','**********'),(82,'Bethanne','**********'),(83,'Halette','**********'),(84,'Sid','***********'),(85,'Stafford','***********'),(86,'Jarrett','**********'),(87,'Yovonnda','**********'),(88,'Drucie','***********'),(89,'Luise','***********'),(90,'Enos','***********'),(91,'Othello','***********'),(92,'Larine','***********'),(93,'Thedric','**************'),(94,'Blakelee','***********'),(95,'Bondie','***********'),(96,'Hamilton','***********'),(97,'Tadd','***********'),(98,'Deane','************'),(99,'Humphrey','***********'),(100,'Marianna','************'),(103,'Merteli','*********'),(104,'Jeleno','*********');
/*!40000 ALTER TABLE `USUARIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `USUARIO_SERVIDOR`
--

LOCK TABLES `USUARIO_SERVIDOR` WRITE;
/*!40000 ALTER TABLE `USUARIO_SERVIDOR` DISABLE KEYS */;
INSERT INTO `USUARIO_SERVIDOR` VALUES (1,1),(2,3),(3,5),(4,6),(5,1),(6,2),(7,3),(8,4),(9,4),(10,4),(11,1),(12,3),(13,5),(14,6),(15,1),(16,2),(17,3),(18,4),(19,4),(20,4),(21,1),(22,3),(23,5),(24,6),(25,1),(26,2),(27,3),(28,4),(29,4),(30,4),(31,1),(32,3),(33,5),(34,6),(35,1),(36,2),(37,3),(38,4),(39,4),(40,4),(41,1),(42,3),(43,5),(44,6),(45,1),(46,2),(47,3),(48,4),(49,4),(50,4),(51,1),(52,3),(53,5),(54,6),(55,1),(56,2),(57,3),(58,4),(59,4),(60,4),(61,1),(62,3),(63,5),(64,6),(65,1),(66,2),(67,3),(68,4),(69,4),(70,4),(71,1),(72,3),(73,5),(74,6),(75,1),(76,2),(77,3),(78,4),(79,4),(80,4),(81,1),(82,3),(83,5),(84,6),(85,1),(86,2),(87,3),(88,4),(89,4),(90,4),(91,1),(92,3),(93,5),(94,6),(95,1),(96,2),(97,3),(98,4),(99,4),(100,4);
/*!40000 ALTER TABLE `USUARIO_SERVIDOR` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `VENTAS`
--

/*Tabla que registra las ventas con el id de la venta, el usuario que la compra y el item*/
LOCK TABLES `VENTAS` WRITE;
/*!40000 ALTER TABLE `VENTAS` DISABLE KEYS */;
INSERT INTO `VENTAS` VALUES (1,2,2),(2,21,8),(3,59,1),(4,43,3),(5,12,3),(6,92,5),(7,92,7),(8,1,10),(9,15,10),(10,12,10),(11,29,10),(12,23,10),(13,49,1),(14,93,10),(15,4,9),(16,83,10),(17,34,10),(18,55,10),(19,76,10),(20,30,8),(21,5,3),(22,94,4),(23,86,6),(24,34,7),(25,9,10);
/*!40000 ALTER TABLE `VENTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ZONAS`
--

/*Tabla de las zonas del juego con su informacion, id nombre, capacidad y nivel*/
LOCK TABLES `ZONAS` WRITE;
/*!40000 ALTER TABLE `ZONAS` DISABLE KEYS */;
INSERT INTO `ZONAS` VALUES (1,'Lorencia',1,500),(2,'Atlas',20,1000),(3,'Terraland',50,3000),(4,'Icarus',80,1),(5,'Infernus',70,5000),(6,'Othersland',50,3000),(7,'Arena',80,10),(8,'Verland',30,1500),(9,'Sirio',40,2500),(10,'Northland',60,4000),(11,'Noria',10,1000),(12,'Motes',20,1000),(13,'Iferaland',50,3000),(14,'Acarus',80,2),(15,'Plaralas',70,5000),(16,'Hexersland',50,3000),(17,'Nuvia',80,1),(18,'Terland',30,1500),(19,'Furio',40,2500),(20,'Korthland',60,4000),(21,'Darkland',50,2000),(22,'Green',20,1000),(23,'Zerrakand',50,3000),(24,'Ocarus',80,3),(25,'Imperium',70,5000),(26,'Moonsland',30,3000),(27,'Verko',80,10),(28,'Yerland',30,1500),(29,'Tario',40,2500),(30,'Korthland',60,4000),(31,'Vycarus',80,4),(32,'Tchecarus',80,5);
/*!40000 ALTER TABLE `ZONAS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-08 20:32:22
