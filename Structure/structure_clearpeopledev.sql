-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: clearpeopledevdb.c4cttcwhvxkm.sa-east-1.rds.amazonaws.com    Database: clearpeopledev
-- ------------------------------------------------------
-- Server version	5.6.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `clearpeopledev`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `clearpeopledev` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `clearpeopledev`;

--
-- Table structure for table `account_type`
--

DROP TABLE IF EXISTS `account_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_type` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_type`
--

LOCK TABLES `account_type` WRITE;
/*!40000 ALTER TABLE `account_type` DISABLE KEYS */;
INSERT INTO `account_type` VALUES (0,'No Informado'),(1,'Cuenta Corriente'),(2,'Cuenta Vista'),(3,'Cuenta Ahorro'),(4,'Chequera ElectrÃ³nica');
/*!40000 ALTER TABLE `account_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identificador',
  `address` varchar(255) DEFAULT NULL COMMENT 'Texto con la direcciÃ³n',
  `country` varchar(20) DEFAULT NULL,
  `region` varchar(30) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL COMMENT 'calle',
  `number` varchar(10) DEFAULT NULL COMMENT 'numeraciÃ³n',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=696 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `afp`
--

DROP TABLE IF EXISTS `afp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `afp`
--

LOCK TABLES `afp` WRITE;
/*!40000 ALTER TABLE `afp` DISABLE KEYS */;
INSERT INTO `afp` VALUES (1,'CAPITAL'),(2,'CUPRUM'),(3,'FONASA'),(4,'HABITAT'),(5,'ING CAPITAL'),(6,'JUBILADA'),(7,'MODELO'),(8,'PLAN VITAL'),(9,'JUBILADO'),(10,'PROVIDA'),(11,'SURA'),(12,'NO INFORMADA');
/*!40000 ALTER TABLE `afp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (1,'Banco de Chile'),(2,'Banco Estado de Chile'),(3,'Banco Internacional'),(4,'Scotiabank Chile'),(5,'Banco de CrÃ©dito e Inversiones (BCI)'),(6,'Corpbanca'),(7,'Banco Bice'),(8,'HSBC Bank'),(9,'Banco Santander'),(10,'Banco ItaÃº'),(11,'The Royal Bank of Scotland (Chile)'),(12,'Banco Security'),(13,'Banco Falabella'),(14,'Deutsche Bank (Chile)'),(15,'Banco Ripley'),(16,'Rabobank Chile'),(17,'Banco Consorcio'),(18,'Banco Penta'),(19,'Banco Paris'),(20,'BBVA â€“ Banco Bilbao Vizcaya Argentaria'),(21,'No Informado');
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `isapre`
--

DROP TABLE IF EXISTS `isapre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isapre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isapre`
--

LOCK TABLES `isapre` WRITE;
/*!40000 ALTER TABLE `isapre` DISABLE KEYS */;
INSERT INTO `isapre` VALUES (1,'BANMEDICA'),(2,'COLMENA'),(3,'CONSALUD'),(4,'CRUZ BLANCA'),(5,'CUPRUM'),(6,'FONASA'),(7,'MASVIDA'),(8,'NUEVA MASVIDA'),(9,'OPTIMA'),(10,'PRAIS'),(11,'VIDA TRES'),(12,'NO INFORMADA');
/*!40000 ALTER TABLE `isapre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `attachment` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
INSERT INTO `metadata` VALUES (11,'AlfredoLara GonzalezProfile.pdf','%PDF-1.4\n%ª«¬­\n1 0 obj\n<<\n/Creator (Apache FOP Version 2.1)\n/Producer (Apache FOP Version 2.1)\n/CreationDate (D:20180702053924Z)\n>>\nendobj\n2 0 obj\n<<\n  /N 3\n  /Length 3 0 R\n  /Filter /FlateDecode\n>>\nstream\nxœ–wXS\ç\Ç\ßsNö`$!l{†¥@\0‘¦€Ù¢’\0 $÷@T°¢¨\ÈR)ŠX°Z†Ô‰(Š\â\Ş\rR”Z¬\â\Â\ÑD§õöö\Ş\Û\Û\ï\ç|\ßûû½\çı÷y\0¤€L®0V@(’ˆ#ü½±qñ\ì\0€`€=\0nn¶WXX0+Ğ—\ÍÈ•;Ñ«›\0R¼¯1{ÿOª\Ül±\0(LÎ³xü\\®œ‹äœ™/\ÉV\Ø\'\åLK\ÎP0ŒR°X~@9k(8u†­?ûÌ°§‚yBOÎ‘r\Î\æ	y\n\î•ó†<)_Îˆ\"—\â<?_\Î\×\ålœ)\n\äüF+\äs\ä9 H\n»„\ÏM“³œI\â\È¶œ\ç\0€#¥~Á\É_°„_ Q$\Å\Î\Ê.R\Ó$s®\Ã\ŞÅ…\Å\à\çgò%f‡›Áó\ì,a6GTÀLÎŸEQÔ–!/²“½‹“\ÓÁ\Æş‹Bı\×Å¿)Eog\èEø\çAôş?l\å—\Õ\0\0kJ^›-Ø’«\0\è\\€\Æ\İ?l\Æ{\0P–÷­\ãòù\Ğó’&‘d»\Ú\Ú\æ\ç\ç\Ûø\\EA\×ÿtøú\â{6Š\í~/Ã‡ŸÂ‘fJŠºq³2³¤bFn6‡\Ëg0ÿ<\Äÿ8ğ¯\ÏaÁO\á‹ù\"yD´|\Ê¢Ty»E<D%bDÿ©‰ÿ0\ìOš™k¹¨-\Ñ¨\\¦\ä\ç~€¢’°[¾ıŞ·`|4PÜ¼ıÑ™¹ÿ,\è\ßw…\Ë\\A\ê\ç8vD$ƒ+\çÍ¬)®%@P4 	ô€0L\à\0œğ¾`‘ ,\\„@òÁ2°\ZƒR°\ì\0Õ 4‚f\Ğ\nƒNpœ\çÀ%p\Ü\0÷€Œ€§`¼\Óa!2D…4!}\È²‚ 4ò…‚¡(J‚R!$…–Ak¡R¨ª†\ê¡f\è[\è(t\Zº\0\rBw !húz#0	¦Áº°)l³`/8„Á©p¼.‚7Ã•p|\î€OÃ—\à°~\nO!\0!\"t\Ä\0a\",„„\"ñH\n\"FV %HÒ€´\"\İHr\r‘!\È[EE1PL”*\0…\â¢rP+P›PÕ¨ı¨T/\ê\Zj5‰úˆ&£u\ĞVhWt :Š\ÎG£+\ĞM\èvôYô\rôúƒ¡c\Ì0Î˜\0L&³³	³Ó†9…\Äc¦°X¬&\Ö\n\ë\r\År°l1¶\n{{{;‚}ƒ#\âôq8?\\<N„[ƒ«ÀÀÀ]Å\â¦ñ*x¼+>\Ï\Ã\â\Ëğønüeü~š J0#¸\"	\é„Õ„JB+\á,\á>\á‘H4$ºÃ‰\â*b%ññ<qˆø–D!Y’Ø¤’”´™´tŠt‡ô‚L&›’=\Éñd	y3¹™|†üüF‰ªd£¨\ÄSZ©T£Ô¡tU\é™2^\ÙD\ÙKy±ò\å\n\å#Ê—•\'Tğ*¦*l\Ê\n•\Z•£*·T¦T©ªöª¡ªB\ÕMªT/¨Q°SŠ/…G)¢ì¥œ¡Sª•M\åR\×R©g©#4ÍŒHK§•Ò¾¡\r\Ğ&\Õ(j³Õ¢\Õ\n\ÔjÔ«\É\èİ”HÏ¤—\Ñ\Óo\Òß©\ëª{©ó\Õ7ª·ª_U­¡­\á©Á\×(\ÑhÓ¸¡ñN“¡é«™¡¹U³SóJ\ËR+\\+_k·\ÖY­	mš¶›6W»Dû°ö]X\ÇR\'Bg©\Î^~)]=]\İl\İ*\İ3ºzt=O½t½\íz\'ô\Æõ©úsõú\ÛõO\ê?a¨1¼™ŒJF/c\Ò@\Ç À@jPo0`0mhfe¸Æ°\ÍğÁˆe”b´İ¨\Çh\ÒX\ß8\Äx™q‹ñ]¼	\Ë$\Íd§IŸ\ÉkS3\Ó\Óõ¦¦cf\ZffK\ÌZ\Ìî›“\Í=\Ìs\ÌÌ¯[`,X»,®XÂ––i–5–—­`+\'+\Õ.«Ak´µ‹µÈºÁú“\Äôb\æ1[˜C6t›`›566\Ïlm\ãm·\Úö\Ù~´s´Ë´k´»gO±Ÿg¿Æ¾\ÛşWK®C\ÃõY\äY~³V\Î\êšõ|¶\Õlş\ìİ³o;RC\×;ö8~prv;µ:;;\'9\×:\ßb\ÑXa¬M¬ó.ho—•.\Ç\\Şº:¹J\\»ş\â\Æt\Ëp;\à66\ÇlN\ãœawCw{½»l.cn\Ò\Ü=seGF<\Ï&\ÏQ/¯t¯ƒ^Ï¼\í¼\Å\Ş\íŞ¯Ù®\ì\å\ìS>ˆ¿O‰Ï€/\Å7Ê·\Ú÷¡Ÿ¡_ª_‹ß¤¿£ÿRÿSè€ €­·u¹Í“óœ\ç-Ÿ\×D\nZTô(\Ø2X\Ü‡\Ì\Ùr¾\É|\Ñü\ÎP\Zº-ôA˜YXN\Ø÷\á˜ğ°ğšğ\Çö\Ë\"úP$.8°\àU¤wdY\ä½(ó(iTO´rtBtsô\ëŸ˜òY¬m\ìò\ØKqZq‚¸®xl|t|Sü\ÔBß…;$8&\'\Ü\\d¶¨`Ñ…\ÅZ‹3OTN\ä$IB\'\Å$Hz\Ï	\å4p¦’“k“\'¹l\îN\îS\'o;oœ\ï\Î/ç¦¸§”§Œ¥º§nKOóH«H›°Õ‚\ç\é\éu\é¯3B3öe|ÊŒ\Él\â„IÂ£\"Š(CÔ›¥—U5˜m•]œ-\Ëq\ÍÙ‘3)7\åB¹‹r»$4ù\ÏT¿\Ô\\ºN:”77¯&\ïM~tş‘\ÕQA¡e\á\Æ\Â\Ñ%~K¾^ŠZ\Ê]Ú³\Ì`\Ù\êeCË½–×¯€V$¯\èYi´²h\å\È*ÿUûWVg¬şaİšò5/\×Æ¬\í.\Ò-ZU4¼\Î]K±R±¸ø\Öz·õuP6\Î\ÚXµñc	¯\äb©]iE\éûM\ÜM¿²ÿªò«O›S6”9•\íŞ‚\Ù\"\Úrs«\Ç\Öı\åª\åKÊ‡·…l\ë\Ø\Î\Ø^²ı\å\Ä*fW\Ô\í$\ì”\î”UWvUWm©z_V}£Æ»¦­V§vc\í\ë]¼]Ww{\în­Ó­+­{·G°\çv½}GƒiC\Å^\ÌŞ¼½£û¾f}\İÜ¤\ÕT\ÚôaŸhŸl\Äş\Şf\ç\æ\æ:\ÊZ\ài\ËøÁ„ƒW¾ñù¦«•\ÙZ\ßFo+=I=ù6\éÛ›‡ƒ÷aiı\Î\ä»\Úvj{I\ÔQ\Ø1Ù™\Ö)\ëŠ\ë\Z<:\ïhO·[wû÷6\ß\ï;fp¬\æ¸\Úñ²„E\'>\\rr\êTö©‰Ó©§‡{{î‰=s½7¼w\àl\Ğ\Ùó\çüÎ\éó\ê;y\Şıü±®^d]\ì¼\ät©£ß±¿ı\Ç\Úœ:.;_\îº\âr¥{p\Î\à‰«WO_ó¹v\îz\àõK7\æ\ß¼uóö­„[²Û¼\Ûcw2\ï<¿›wwúŞªû\èû%TT<\Ôy\Øğ£Åm2\'\Ùñ!Ÿ¡şG\İ\æ?ı)÷§÷#EÉ+FõG›\ÇÆû_y²ğ\É\È\Ó\ì§\Ó\Å?«ş\\û\Ìü\Ùw¿xş\Ò?;9ò\\üüÓ¯›^h¾\Ø÷röË©°©‡¯„¯¦_—¼\Ñ|³ÿ-\ëmß»˜w£\Óù\ï±\ï+?X|\èşôñş\'\á§O¿\É\âô\â\nendstream\nendobj\n3 0 obj\n2592\nendobj\n4 0 obj\n[/ICCBased 2 0 R]\nendobj\n5 0 obj\n<<\n  /Type /Metadata\n  /Subtype /XML\n  /Length 6 0 R\n>>\nstream\n<?xpacket begin=\"ï»¿\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>\n\n<x:xmpmeta xmlns:x=\"adobe:ns:meta/\">\n<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">\n<rdf:Description xmlns:dc=\"http://purl.org/dc/elements/1.1/\" rdf:about=\"\">\n<dc:format>application/pdf</dc:format>\n<dc:language>x-unknown</dc:language>\n<dc:date>2018-07-02T05:39:24Z</dc:date>\n</rdf:Description>\n<rdf:Description xmlns:pdf=\"http://ns.adobe.com/pdf/1.3/\" rdf:about=\"\">\n<pdf:Producer>Apache FOP Version 2.1</pdf:Producer>\n<pdf:PDFVersion>1.4</pdf:PDFVersion>\n</rdf:Description>\n<rdf:Description xmlns:xmp=\"http://ns.adobe.com/xap/1.0/\" rdf:about=\"\">\n<xmp:CreatorTool>Apache FOP Version 2.1</xmp:CreatorTool>\n<xmp:MetadataDate>2018-07-02T05:39:24Z</xmp:MetadataDate>\n<xmp:CreateDate>2018-07-02T05:39:24Z</xmp:CreateDate>\n</rdf:Description>\n</rdf:RDF>\n</x:xmpmeta>\n<?xpacket end=\"r\"?>\n\n\nendstream\nendobj\n6 0 obj\n854\nendobj\n7 0 obj\n[8 0 R 9 0 R 10 0 R 11 0 R 12 0 R 12 0 R 12 0 R 12 0 R 12 0 R 12 0 R 12 0 R 13 0 R 14 0 R 15 0 R 16 0 R 17 0 R 18 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 20 0 R 21 0 R]\nendobj\n22 0 obj\n<< /Length 23 0 R /Filter /FlateDecode >>\nstream\nxœ\ÕY\Ûn\Ü6}ß¯\ĞT\æğ*†kµ[´@€\Zñ[‡ iûR·5Ğ¢¿_’š¡†”(z‘ô¡q\íJ\çr\ærFûz‚Nø¿\ï\ÂÉ²ûürz\Åk\Ğ)şûKO{E/»_Ow?u÷÷w\ï\Î?Ìxx8Móù4=Ÿ\î®`:)º\ç_¸\0p=Œ\Âÿ3ª{~\é>\Üû\Ê:\\ò‡õ‡ó\Ç\à°üñ\è	\ïMx\íŒ÷g\\ğº\Æg/»\çO—\ç\Ó\åİ™k…v \n\í\ÔØƒ\ê(´»¢$³`\Ú8\ÔfX>ƒ\Äkzy~·\Ì‡\Ïù=Ğ¸\æ-ò\Üb9„5½\à\nY¸&\îM:9¶W¸N:®qM\æ=\Ñ\Ûa\Ùò¡½sr‡’	„c4\è\áh\×#\'¼f—ua= ú0eº¾zm\İ÷§½\"_|¤şsò1­û\Ñú§U÷\ÒÍ¿ÿÖ½÷qÍŒS¥q¶_½20N\r<B`^4%mƒ%Ç¡\Èı¨KQ²%½!*@[\×5€¥@ˆ»\è T˜>A5\n„\èHµœ\Ó3”F“\È\Ò.®Y@\éõ¹ø}Æ½)ğÙ½p;^?\ã\Şò¸€*a]/%X]\È.’$\é¯\İ\ãş8¥~,¤b\ß&>\ÌWI ”ş³\Ô\ÌQV­¼˜&¤Zn M®™û\Ô\na4\Ñ\á=¶&S• ¦\êˆ\êW\Çk3š‰•’Ì–\ï\äW\\‡{·I¬€\á¡\æ!‚ğ~Iªg®€„ .\ÃW0]\Åj[‚œ\êÆ¼\Ø\Î\í!K¿H›\ï?5øl>7g¤-Ô·\Ìüi\ÆC¸/\"e@.\É˜]”%´¥«÷*B\Ì&‚\í\0V)¸.Qö v³;\È–Y)«4\Ûû¼È—T\0\í#\n±fÚ€º^(\ÓkĞ¹&t£\İ\Ï<V$¨ól<{¢j’E6/ŒS\áÖ‰™…f\Æş\ĞÈºs#óö\Â&vVW)\êZ\äY80ˆ¸ı”aú\í¡\Ä3š\Â3…»eúiò[\rÂ¡¡„m?¼\Õ\r\Ôkx”I\ê‡,J3·„ıB+RoJ{šr]`b°\Ô\ÜS­Y÷>®V¨\Ó}\né¨ˆM7\Z±u#rNRŠ˜\Õ@\Ña÷İ”\n’Y³#¸ $zRŸ\ÚuQ\Ìÿû°~•ø´9\Å!ªrK1Ú‘ “D(KÖ£¢IDœ\á.)\Ô^Á®ùt¡D\ÕÉ¥¬¶¸\ÚmsÚ„ò\r³\Ì\×\â\ÒòóRı\Ş\Â\ß\å {\ã	; _¿/ü}3¢Àf\Î+i¼ŸÆ›Á³d\èJ‘‘š\ĞL\åòˆ\Ò\Ãf6*ARJö\Ô8Œr“|ÿ§S^—gbıº“ûo3~mü§ı€\î\re]òkg„P]¯vñ\Ã\ÙûS)ğ`“\Ä3\é\ÎùDTõo\ÎtÊ¹\Ş œq\Ù\ëÖ£¨g$Bô\ä-¼\ÖZyñ¡x¸Š¼Ø°{\Ê,¢c\Ü\Ïÿ¦Í¡HjËªiè¿ˆ\İbš\ág÷ñûq!¯{/C\Şÿù\é÷\ÕÀ\Æ\Ø\0£\éU\àÔ®­\Ê-r‰J*\Öû£N\Äh\ëY=ú\é¢\"5ˆ±/ƒAZ¨Æ¹\É- ¢\Î9È™5¿\nM\Ì^>5¦›İ¹»©ñL\"¯\É{{°©\"\Ë%\Çö\æ\r~§\î¥ûzG­¥:J´cµ\ÎÍ Áq34ô°u%6P%\ÑWÁ[s¾6Q\ZŠ sU\Û•Ì´µv[—\ÉñX\ßh\âK˜°‘‡ˆgÂ„ü‚À\í\Æ\Z\',T¯‘¯ó>^‹\ã—²A¼2/xbRó\ÑTrJ\Â\Ğ–3º\×Rg°+~i\ãİ¹ÀÿÀ¢\r;ª[\ä\ÙXÕ¢oR\ÎH\ÔÊ¯½7G\ï£\'j‘\ÎújFR™œ”Aô\æ¡mjÉ§|0ó´õ\Ø!K\ŞR¦JH ò¶5\Ö\Î\ìÊšö½b<Z‘^l\ÓX¤\èÇ–yœ\Ãgõx\è‰³\Ë<a¶µ¤6\ä\Õ,”\Ë2Â4Öµõ\ê\'\\.\Ó\Ø\Õó^\áK¤%b«\Ò\Z,)“6\Ös2J\è\rUI-º\Â$Y8ˆ\É\äµ*\é\îa\å¶Û¥d»Šô¾°n\Ë*—7ôX«\ë]K\Ò\ÏS\ì×†yº.ù†~im=b4õ±i\å ‰ŸÊ…ŸzVÍµ(~›ufùq6\ç‚j\Ó\Éò\ßf<Q\ÇÁú\Ùd\è\ÍbIn¨`z‘\Ï\îwOÿñ\×Ï«°M“)„)\İ\ë`˜\ÔzG˜’…}O§¾ ¾\nendstream\nendobj\n23 0 obj\n1610\nendobj\n24 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 0\n  /Tabs /S\n  /Contents 22 0 R\n>>\nendobj\n27 0 obj\n[19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 19 0 R 28 0 R 29 0 R 30 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 20 0 R 21 0 R]\nendobj\n32 0 obj\n<< /Length 33 0 R /Filter /FlateDecode >>\nstream\nxœ\ÕYÛ\ã6}\ÏWøš‘HI–€Á\0Iœ\0-°@·bŠb·O\Ûvöÿ+É¤E_\äDƒv\ÎL\àØ–\Å\Ë!I\Ï×ƒ\îTüı.ú\0İ¯__\éš\îĞ¥¿x\éu\ë¢:š\î·\ÃÓ\İóóÓ‡\Ë÷C§^^\ç\ár8¿n\Úv\Zº·\ÏE€VG¯Òñ\ÖQk¿c\\ó¥ûù9^M7\Ïñ\ã\â÷´*/t\ÄñŸƒ\çƒ\Zö\å{^\ï«¿_\Ç{ù5^E\ÏxzN“LS\Ö\ä}’\ÌóB®¼¯\Ê\ŞYv÷Hzi[tŸ\Öc±-5\İ7\ãZ¶÷e=³\r¤#|öA\Ş\Ç\×\í\âõ|\r®\ã9^^>vo?®o‡ë‡‹\ÄO?Ÿñ?Á\Íøešp4\ä7EzZÒ…ü\Ê>X\âğ\ß\Û\Û\è\Ü\ÊF 8\ÈLr¢©0~\àD6“şÊ‰\éE<u½u¨\ß±Ş>•9\Â>šä›¤W\ÍØ«\nşu°\ï\Z\ÃD {à¦…”\Ô]Ä“õ\Ìn5\ßY\Û`°]‡xF”=?¬)8£-(\n“q\Ã|-‡9¯«£\ã\Z”\íM5R^3\"2‚K§<ô¤¬\ä\ëZ‘<EyÕŒ˜5c\É\çz5\'ô;ôFˆzµYŒ2¡D#@’kÊ¡s)°SºªB¶\ç{¨ù…¡^)Ğ’\Ç\Óù¹&,43\ëxB\äV*yÊ¨5´†1¯³\"”8t¶\ÊøM„d+\ØN\æì€ô\ÂE\ÎYÚ»H¤\ë=ñ´jº¡Ggr“¦\Ñõ+Ş¿•,\×\Ä÷µÀ[UrCwª’÷ü…›\\y’´šª‘QU\í\Zú‚(¼ªa$˜\ÒIÃ©>öU\r\Z*2j¿‹L¦ºx4\É/§ªÄ†Òˆ\è\ê6k\áu*OœQ\×`\Ò\ÊVµh¨Wh\ë™X0\ëkÁ~\Ò$w%3\r\Ô|t\Ñw\n‘\ê0\Æ$&n±qúa\ÙXĞ•¥¶[\Ü\ÛbM_:¤t\rn\"Rh=¤g/”q(ö	\ã¹\å\Z3¿Ş©\Åì«‡Æ—¬W¹;u+ú,øc}\æŸ‘<\æEöğ\èÆ¾~K·¢\É8²\á6bŸ\\\á$/˜ı}0\á0g+ut)*~úó—ß‹‘÷j]€£K\âĞ¹M{\Ç’\Ïq\Éõ!W\Ù\ÓB‡\ÅP­\êŸ\Ñ\î\ÒX­û–cõ\Ò\Ïrüy¤¥\âşqÖUb!\ï5¨y‹%º›\Ùóµñº6–±gO91¨y}\ß\á«\ãgCı5hVhf¾õ”\íiaÉ®}bE\á	\Ù\ĞJ›úA\î:e#2M T}±ò¿mÊ¡\åmH¯VHµv\åz(ù¹ß•§EU­ú\ãı:¾€*\r·\å\ÙgUi\r=‹Ukn\Ê\íôs¦NC\ïba#\îI>Q<¡š:\ìŒ\\\İó\r}Œ5°©\Ñc4\ÍÖ­#s£9ûÃ¥ä’‘İ“x—£óZÕªaŠµıv\äDR®*¥aô´a;\â\Şß£CC-vz;\ê\Æ@\Ì8zµúŠ®¡V8»\Æ\ÙaŸ˜ŠV\\ø.ªj\İÀ›\Îm\ÇÁ^fW#\îYIóü\ÌP\"u\êùú±‡N±‹\Êdı\ä!\æhŠ|¬\ÎN\Øò\ÙW\âPpL®E(òPv?”«\Ù#fQ+\îòyo¦ı’7pf\Ñ\âÿ:½ÿ±3\ï@q\Åòjf«Uşˆ‚w¶\ïüÑ†„ô\Ë4˜Mš;õõ\ï?şúT„­ˆ}!,6E9°Á˜\ra\æx¿ÿ\0?Dfü\nendstream\nendobj\n33 0 obj\n1252\nendobj\n34 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 1\n  /Tabs /S\n  /Contents 32 0 R\n>>\nendobj\n35 0 obj\n[31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 31 0 R 36 0 R 37 0 R 38 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 39 0 R 20 0 R 21 0 R]\nendobj\n40 0 obj\n<< /Length 41 0 R /Filter /FlateDecode >>\nstream\nxœµZÛ\ã6}\ÏWøš‘¨‹m`0@\ìLŠX ƒ·\Å>½½t\ÚĞ¢¿_I&%Ê–k\Ñ\í6ˆc\ËyH’Ò¼Ÿd\'Ü¿oüW?B÷\Ó\Û\é\ï\ÉNYÿ¿»õRº)Îºû\íôğC÷øøğaş\îÚ‰§§\ÓtO\Ó\ë\é\á&M\'¡{ı5- \Åyş?9ºGg)µ»Vn\Ì[÷\é\Ñ]‚û\ån©›»\î\İgr#¯­\Í=s\×\Òÿv\ã¤\Åg\×ğh¹–i\åg¿<}\î^¿?=¿?\Ì\\Vy\\V%Š²‚“\Ü\"òšd\×^XÖ—£ûv¿µ­\É\Ç\åĞƒ“C\ã e†™A,\ì‚Y†\Ó\Èğ±ø[/c\äóò-oiùı\\r*\à;\âø!a\îO87\ÚvqW\Çõµ¶¨/\×Kô…+“uf¾\à¿ñ7 ø^/0øşJŸp=.s,¦>Û™Cª„uÀ¸\Çw\Ã}|ôq|]\Ä\'Ø“ğ!\Û Z³xB)\Ú\Zı.[‰º\0>ws\é9\r~…ö\ïª\Ü.üac\Â&øİ¼\ZG>J÷˜Ÿr§µ\Ã;s’/\è5\à\ï!\é\íÖ³x˜Ñ¦\Êb˜Ï›\\â›ºM\n(\ZR£\à\È\0¦Å…µ»¯U2lPz‡\×\ïs±+„VW\Ò6(©¶\ì\å$\ËGáŸE™W((mY¤2+†\ßh=Š\â\Èb\åÁò\ãbiÌ›ÖŒ€\ì\ãLJsŒH\"ÏŒı>P.­:²S\ãr+\ÂÃ‰\Ğ&Rƒ\Û,\Éü¸k\ÍV\Ã]8÷>\Ïi“ò\ÅÂœ\\K¢›D\Î_!ò.\å@$]¸-.¾%Zt\\¸\äK\æ\Õ\Ş3n9\âg\ë1ÿø×D\Ç} ¨u`JŠ|\'•B)0÷¦’\rE›\ï<úµ¥F—ô\Ñ\È}b\Äp\ÍX<Z†\ÈÇ©}ÀqV\Ä\ì,J Y\îNv\ßÄˆB\'SƒH\ß~ŒFOPúX<­\×\0rzƒœ!E.³ö\" ^FO€B¥{)h\Üª•bC©r\ØZ\Ôk/‘\Î†õe/TeCQFoVÔŒ³$ù\Ñ5aNÉ¤˜!ñ=òš+TZ=Ãµ\à+@œª\È9\Ù2frÊ¤\Ì³jE¯lO\Ùyb\ÙùZ÷’ª€0õ+\åî§¤Oˆ\ÊŠUA\Ób=ğk\İv}¦¡Ì…Š>\Ã#¿fE¡Å–+W6E\Z¡\ÍkXV?Ÿp¼Y\rw¨ND¬³j\Ì\ë=\Î>\È8”Ÿx}	pL‡T\ÛV­\ØPŒ;\î+[±‚N\ä³få‹¼Â¥Ø ø\Ø7+²Œ©–ŒI](}\î¡/i]›®K9B’,\ã{F$N)y\r«\Øi\\\ìD®e\êUµ`C®D™»‹½…M(dV\âş½S’ól5añ¸î»¨÷\á\Ş\"››\×Lµˆ¼„1$\ïõ2\æ\ì)!\Î{²¯÷\á÷¾Uú¶l\Õ!÷±\èwˆH\ì@!õ!/²\Ü«7›ƒ¬²\î|	=¯\és}¬º0&#\ë]E\Ú\Ã©1\çeH\ë\Ò<A¯k³ƒ\Ö?bI\É*]Ï‘wš¢ÌŠz[\å\Ğ*@}=÷{&\rP¥{MHò<A?«Z¹¿\ã;’üP\çó\n‘\ÇõKHª¨(\Î\ï²\\\îe‚ö\'lb\ç^\ç\Ó\'«À{¦WŸw:‹·V­w§ŸÌ¬g+\ë¿ó\å¬wal\Ë;Ñˆj	-Æª÷v\ã6}G„´e÷\ï\Ê\î\ß\ÄnmI\r~Ì­¼Ÿcµpi³&cw“,J8\å\ÓUk\Ş\é”3k\åJ\'ZfY.[³b´öNµOñBu_¨füój\Ü3\æÒ†0t÷¶Ä¾ ¶\\\íòğ}ü†¾_\ËmN‚!ù&í”ö§bd\Ò]a\ïŒ\ï¨¹*qC_«Õ–\é\ì!\ÓLÕ•Z9L+`Ù¹~­\Ä&_.V­®\ŞĞ‹\é¾\àÛ¨\'+\ÉúJ\rı‚\n\Õ&,µtX\íV]¥¡¦5¢Pıx4/\ÈJ\ÄóŸÀ>Àb80JUŠ†\Z\Ì@\Ù{Â¦´÷ \ËRƒ¾¿ğû\Õ\Õjc·6m9ù#®!gš¾\î\ë\Z“r\\\Üo\ãûrhM v\"ÏÈ¬’N8\ïõo\ë.ˆ˜`uÒµyo\È\åT•ù\ï\í÷\Õ% !—™ñ~|\ĞşĞ¹\"\ïµ\Ôò¬\Ø‘¯\Ğ\î–\Ü\ÆZœ/t\ë\Õ3Ó†\Übe9\Ö\è0i#\ÏÂ\ÚP%5¡|¥kÖƒ¬ªd\ê]\'V{\ĞATcR5\ä&k\êÙ¡t¿>±ü\Ê\'\ëMG\ëva»I$Ù†UjÇ;ki\Æüú­\èU}Q\Ë÷“8İ·§OŸ2?w²û÷$:\ë¢\×X3öc÷\Ö\İø½ûxzYÿ\İJo–?\\Él\Ô&m‹8#†³‚q¬\é»\álFOu\Ğg}(õwA\Ç\ÜB/ÿüù÷/i±Mö^-\æ*­@\ë\Âb:/@½†ÿ€#\Â\nendstream\nendobj\n41 0 obj\n1759\nendobj\n42 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 2\n  /Tabs /S\n  /Contents 40 0 R\n>>\nendobj\n43 0 obj\n[44 0 R 45 0 R 46 0 R 47 0 R 48 0 R 20 0 R 21 0 R]\nendobj\n49 0 obj\n<< /Length 50 0 R /Filter /FlateDecode >>\nstream\nxœT\Ûj\Ã0}÷Wø\æHò-†Ò‡$\íØ °²¼>\íö²2\nûıÉ\Û\ÚJ¢Ê–,K:G\ÍA ~n¢ò\äó^’\r¥vñe\Óö””“\ï¢x‹E±©\ï\Z	Ë¥¨šZT­(\Öh%:Ù¾ V\Şb¡d\Ï^>-\0¨€\0Yc\Í\ëŠ5+tüXš\åN¶÷bÕŠÕ¦•ÁÔ±^˜Vó*h^(&\æ\Ğ}Àh6± Oºœde K\È)‹šûfœb–u^»´Î½\â\à‹\ë6ùù2>Œ2fD,k–²‹\ËûcS˜Dw6˜û(\êI·\Û	\Ò•;´¾\éj\èi\èŸ2\çe\×\ÏQcÒ¾[Gf¨N\ç\âµşC\æ\n†´IU\ét{\è\Ğ\î«ù‡¡s¬¦øY\'°N÷\Ù\Äd>—b{öL\Ú\ÃÈŸ§\Åu^}ÿhLø3 ,¼O;†\ì…G\á‡G ğŸ\ØYFN\î¥5\ãı‡|\ä°Ù·\Â\ÛS£c\çÁ„ ¥\Ò¿\Ö\ËR\Ùñ%Ÿ©\Â4$=\ì\Ó\á-¶ßŸ_¯}.w!—6\ÊDÉ˜¹Œ›Á²¿ı~ƒ\nendstream\nendobj\n50 0 obj\n416\nendobj\n51 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 3\n  /Tabs /S\n  /Contents 49 0 R\n>>\nendobj\n52 0 obj\n<< /URI (https://www.linkedin.com/in/alfredo-lara-gonzalez-197ba958)\n/S /URI >>\nendobj\n53 0 obj\n<< /Type /Annot\n/Subtype /Link\n/Rect [ 36.0 587.794 183.984 599.038 ]\n/C [ 0 0 0 ]\n/Border [ 0 0 0 ]\n/A 52 0 R\n/H /I\n/StructParent 5\n\n>>\nendobj\n54 0 obj\n[55 0 R 56 0 R 57 0 R 58 0 R 59 0 R 60 0 R 61 0 R]\nendobj\n62 0 obj\n<< /Length 63 0 R /Filter /FlateDecode >>\nstream\nxœ¥š[·…\ßûWôs€´x¿\0‚\0¯.A‚ˆ½~šÄ’‘\Ù2b\ä\ï\ç;l\Î,\Ù\Ú+‘\íwxšdU±\êT{>/v5üû{ı/W·—\Ï}Ì®>\é?†\Ş?7h6·~\\^üe}ùò\Å÷¯ÿøf5¯^-o^/–\ïl\\Y?ü4n`óf«\áŸ\è\×\ë/ù\Óó	\Z\â“ød>…³|¾\ãóĞ±‡>öº\ãoø¼\í\ã¡\Ï}û\ê\ÇõÃŸ–·–·ß¿¥³\é¬?H\ç\ëf³\Äñ\á*İ»¾S\Ü7¶v&wi\Êş·u},\ìs¬\ï\ßÓ I\îóËŒ\ÙĞŸùšıò®¹\Õ3©[!ö\êÏ´µ/2\åa-_d¸\ÈÚ™¬g¶4Ÿ°û-&³\å\ìj-\Å^mx9gN¸yC˜O¸\éõ]ÿÿCKûsz\ŞöÓ·“¬Ÿ‘6\Z·şaù\áGùúŸŸ[M\Ìö\ë\ã\Z\Ãøı¼şµùõ‹w?üõ—¿_uô]G\ÃRõ/~oÖ’7÷Á÷¥R4ôğµGö\Ş3]\Ëx“·\êl­\Ù\ä•?½\È!ÒŒø-F\×\Âcõ\Ön1ñXHA®i\ÓffÍ¹jı%˜º\åjj‰V[—`2T=R„Ze\Ù\âª×\ÆIXqD¬q[N©}k‹OQb­\É\Ôõ²m*.­xë–ªf¥upNË¤\Ì—]mSs°n‚&;MA\î\ÓM»Ÿ\ï Ÿ–Ÿš[|\Å	§µŒ¯\ë/»\ÇTDp“À—·j¢òrœ·Ô(H\ì“ZD–|qf³Q«y!\æ‹\ïónß¨V‚Oz›\nH\0ñxC©:\Ì\è¶\è%lwY\Ì[û\ÜC>-°N	M\"³Š:Lm\Òa0\äRŒ\âZ Ë·\Üf2>/L\ãp\Ï-¤\n¾b=“”\Ø\Ü\æs\\÷\Åk\r/[\nN‹D‘`†?\Ã4|Zb\Ü\Ü\Å;G$\âõ¬Scp—µ§¡IEgq+ `\âQUQ²Gšh\Ë4~ºi¶ó?úİ·8RN[¯A÷Gª~Y´<\")l\Å\è€b:\"~ƒY„iP^‘ƒ¡s²[q<“\äla3£·3b‰ı8OK\å`\Ä<·Æ¼§0†ôŒ·¤-i\ßXC#™(ú\É\ÉMÀi±¦Àµòs\È8.«‰Usk¬¸ó#Yh¦.ˆ’y‚f‹X\\\"\æ\Ø\\\ì6‚­L’Ë†t@BÙ²)HPD³+òy\èúe­H…\']B.-o<˜«n¡¤ıG3F9~€Bz’“IaªPQ›Æ¬u†\ã€ù\\/\Ô9©ó\ä?$U,y:~\Øb½\åq·\ÆO7}ôÛ½\ß¼{\"\é:ö\ãb}\Øôåˆœ\'\äp\Ø\ãrw \"ú9\0[S¨2üb7§\Ô\'µüRT\ËgAh„eñFë™Œ\Å&\ß<ˆh{J\ç¶Ä­(\ÇHyV”\îbhS@.N÷Uˆ%i8\Åwt-‚®ş1i\Êö\Ùö9\İ6÷ùô©\ÒyOy#fwÍ¼6l£NNecU–‰ÕªÑ€Ü½¸\n¿\r®\Æün\×}›—C;/ÿœ \Ì–pD¸Q%•Õˆj•°úQŒ¥V\ã\×	ÀD\ĞZ6\ÌslQ)E\ÈDdô\ä€\î1ò“+±\Ø•qAK@\ÛPh;( ù;K{\Íq¶ùVI~Ğ’i\n\à§4\Ïqøov4\\O\ì\à<\'\á\Ù\âY«y\â(sYdŸJ\êÍ•p\è\Ö8¡œú·\ÊZ \Ü\Ú\Z0²¼ˆ±\Ø]€‚c]\ëqòlœÕŒ`…{„®uBø¾É€D!Ì£$q1s-­¤C\Û(oª\×\ç\é|côÓ¢…H({\Ê^õB³€\Ô\à\Ô\å9	..\ZqöSšJ	UÁ ·e·\Ğ\èTş\éúœ\ç9V\Ô!;’9\Ù%W©K\Õ:£d§›2Ÿ\ï \ßJÁ0R‡6\îš)x‚(\Ï]V\Z\Å	‚|35\Ø²øG\îmK 9òœ§¨§\Ô\Ã\î\'ıŒB+\È\ç°9\0Â–§8½˜W™«z|.\æøDe\ÚZh«\\I>P\Zp\å…\ã¥Ü•\r\á\è\åN­ƒ’³úpò¾B«\è¬|\Æ«-™\íù2,†6&\r!\ÌS²\ÛvjÁ2]\Õ=ˆ‹*ŸU8\ÊÑ¨…J+N¾¶(\ÉRFu+•óT0€‰¾g A©y>T•\Æd7!{H$’\êÊ„vÃ±\np\Ö\ìXL\Şe¨¬-4Fœ 93\Üô»Ğ§¤‘‰*tˆ¡£Ï‘Š\n\Ãe\n³õ$Ol|mxp¾\Ğ_€1\È**‡«)Í®ş‰\Ì\Ñ*\×^¥òü\æi#ù7\íd{la“`±¨\Ö3#[œ§¬*;UyœqĞ‘¨¸\0•f¯µÔ€D˜X\Ê{16{ˆ\nõ¡Z\"\Ãø`›\\­\ï-\Ğ÷\ÈIf%§9h\ïko©q‚\é\İ\Ğ¼\Èñğ,Q¼\Íb\ìcö¨jS\\-\ë4\Î\"ô\à\İ<®dg¯b\Èp\Ä\çÛ§ÿ¿™½\\%Á04R¾õ\ÎI\éV–xœ!j\ã¤j\Øˆwƒ9\ï@mÁ\Î8\çgöºu1¤“§-\Åóø^Z\×]z¿*=y¸\áÁMx(9UÅ¼\Ú\ÚKm6\ê„U\Èö‹$ r?ô\'©o¶Š9µ¹}\ß\ê.2p\Z\'w’ı\à2¬\ÅÒ\Ù\ç)T¤dHL¼©=¤¨9’K.™s[k€š.Qaõ­‘\Ç-s‰»ò\Z\×}:\ä\rp\Ş8~zÆ”:ß¶òÿ\åV¤ò \Ì\Å\İ*©±r{µ3õ±9ô\Ò\éAKj¤«¡rTQN²{¹~¡ti\Ï¾\å|‘Wm\í9†¤‡o\é*´şüBÏÜ«\"³-¦~»u2\Õ$\ÓO<,F‘J¹\É\é\Ğ(NsJ\Ğ\å#’\ãU®ú£P\ÉN€zt]!3m±j\Æq\"Š¢û=ª+•©\äÁzR—n€°\Ö\nº#\Â\İ\rñ,Q)£\Z…«\é†\İH\Âxú\Ğ	¨ºó€t0¢)\í½\Äùv›\Ö\ëqŠ6›õf\'\éÎC\ä)µ\äN	 %\íıD÷`D\Î3\"ryBš[\å.ÀPº”…T=œqU‚Xoº\âM\àt\Û}¿½^N\å+\Çbuƒ«:£ş#Z\'\Ö:\Ïó\îı©]¦Ó¥x:z\íø„kª™«0O[°·\â‚ü*‰\"ş©.\êyƒn¯ö{-•kl\r‚¼ld3¤\×m™¢•nºQd¼+€ô\ÔÂ–ŠOER\ÛÅ»½R jI\×q\Õ3¶—ypš­:B\ç\Û¿}:˜<R\Öô~ññ`òÚw7AN+\ÈùEÜ¡eÉ¦mT/G¯5«\î\åşi™!\ny\ÕÛ…3\Ú7\éo4š¤·š€\ÓA::×¬\ÎmH\nò\n]\Ûv«jh”Lg\Ë\Òo\í\×ôz*e\æÒ®O\Õ\ï‘&›\èQD\Ş\nõ\ØEm\éü¸^]t_\Ğ²“o¶€Q(­3B0µ´»ó–\Ü+ùbŸZ\ÕI¦9=¦9“Q†Mn\ëtÛ»‘\ãµs=\Úx@ZøP,*-ˆ1’İŠk—\Ô\î \Î\0\ì&vj\Ôrq‡9ò\áşP»\\ºƒ8\Øy€ª.\ÆE\ØÉ¯û.‰ñvÑ¢ş\Ã\å\Z\Æw+_Ugª·\r\Ö[f:\İ4\à•\Ê\ß\ï\ï¦\ÛKYHúÅŸş\ç?®oo\Ãñ\rµ;şj¿\Öî¯¨m\r\Ş^«+\'<ì¯™\Û\ß-€\Ìı)\\~Œ\Ğ_ó_^Ë·W(ıÙ–m\ŞL¯¬¿ª\Ğ+\r¥¡ù•{<*4ÿ¨úÙ¼^¸\']¹Aö‘^\î¢Y1×—\êû\æŸG¼ÿõ_ÿ~zõ~c/ß‡\Æÿá™½|:h÷~ù/\ê	Ï†\nendstream\nendobj\n63 0 obj\n2843\nendobj\n64 0 obj\n[\n53 0 R\n]\nendobj\n65 0 obj\n<<\n  /Resources 25 0 R\n  /Type /Page\n  /MediaBox [0 0 612 792]\n  /CropBox [0 0 612 792]\n  /BleedBox [0 0 612 792]\n  /TrimBox [0 0 612 792]\n  /Parent 26 0 R\n  /StructParents 4\n  /Tabs /S\n  /Annots 64 0 R\n  /Contents 62 0 R\n>>\nendobj\n66 0 obj\n<<\n  /Type /FontDescriptor\n  /FontName /EAAAAA+ArialUnicodeMS\n  /FontBBox [-1011 -329 2260 1078]\n  /Flags 33\n  /CapHeight 715\n  /Ascent 1078\n  /Descent -329\n  /ItalicAngle 0\n  /StemV 0\n  /MissingWidth 500\n  /FontFile2 67 0 R\n  /CIDSet 68 0 R\n>>\nendobj\n67 0 obj\n<<\n  /Length1 36660\n  /Length 69 0 R\n  /Filter /FlateDecode\n>>\nstream\nxœ´½	xTE¶8~N\Õ\İzß·t–nš@€@Y0JË–¢‹	Œ!I\ØB\Ø21,nˆDGEÀe0Jd\ÔQdsÁ]ÁqQDgd\ã¨ø”t~§nwB`˜\ï\Í{ÿ\ïß—º·nİªº§\Î9u¶ª\0À«€Cô\Úq\Ù9‹>øİ«\0\ï \Ò\ë¦-^º|l\ÒÊ¿F•–Ì˜W=\ç±s·X†¨3«g/\á}\âğ\Í\0\ï†n­©ªœ~\"\Ô/\ÚEmòj¨Ày›qÀ¤\İw¯™³pÉ¯\Ë\Ór\é\Úctvİ´J0>y=€»…\î‡Í©\\2\Ï\á\Ó>øõo¨~hnåœªy/¿†\î\é\Öıó\ê,lÏƒ\03¯\Ï\çÍ¯š÷õ\ç[+\è~9uÿ\è?ù\0\è¼Cœ»ş¤ôxIû\é\Ëc5¢Dœ\é4XØ‹\íÿ¤^,ğ¿şi‰ôÿù·J ©½¡½µıK\ØSÀ\Ò~}û¶ö\âQVØµš´@Z\0×·o‡—\ápZa<Jg +À#pw—ü-\0¬nƒ\İt¿	v\è\Ï6Q\Ú\r\Ç{\Ã\É8\ï\Ç:¼¯¼U”\ÓQWcøğ\î¢c,¥\Ü-°\Z–\Óñ\Z ‚\Û\ál,\ã\Z½«5Q»´ıı:\ÆR¿\ë(Õ·\ßN5¯·ÁMı\"T/xKL†Fz\Ó\í‚¿ğ8û=»\Í\Å\Û`2[÷\ásğ\Z{~f\Â\\v-\Ü¯&Ï\0k\è»6Âp+½y¤·\è¾?¼)\Å\Íôt½\ç:©\ç\î\çñC¸Œ\à…$˜\Ş~ä´¿\×\è\Ç]t\ì!\n\Ü?H\ÇJXÉ·±2¾’h{§}®k×¤û€\Ñqw¬\Ô\ÂB¸NšFÅ­loÿ16…\ÏÁ,¢EœwwLg`ÿ\Ø\nó\à6ı\îx\çX/§Ò­t³a$wÁ.ü@/¿×©<¦\ë÷ut¬#ª>#m“öt)¯„t>A©¢3\çƒ0ôBSa\ÜA\Üv\áoŒ€I„ñ‡.Aõ{\ái¢ú\Ó\ÄU®\î¦\ãÒ¿?\Ã\'pŸcø9ˆ—l™\ìQ\\MØ˜À‡Á<\Ü£`‰€—\Â÷\è…,x§\Ë;6¬K\Ûÿ\Üşwö<8\éx8i.¦\ÔõwA¿	\î\Ô\ÇRG\ÔË¡Q_\ê7•(A+=±\'a&‡o\ç›\è\Ø./‚©˜ŸğCR€\Æ\\!\Ñ\Ø:r€\à|\ß\Ä?\á0²‰o±\ç\Ùö,\Ñ\êg\Z\Ã\Õ\ìQg5\ÌSö({ğy‰\"\æ\Øz¾~\r7POÛ¥\Éğ›k\Ğ»±\"UgNj…Q|\àK\ÇY5\ÆgL†¦/ªmû7eŸ\È„R2|\r‹ù«„—‰¦‹1O‡~®^¯‰py/<|©²\Äuå€gh6‡†K”-†\áğ\Z0¿ózœøq\çh\Ü\éøÿ\ë÷’.\×Áµpı%\ËFĞŒˆÿ\æÁ4â«®#{\â’e#;“\×	„“‹\ëˆ1ÿ+\à’e—j{©²{ù^iƒ´\ï%®\èÇ ¸a,\á\ïV:ö\à!ˆBtt\İŒ—è¨ƒ2¢\æ(\Z\Éz\ßM„‘Tr\á¯ü\Ğ\\\\\"~Ó©\íLƒU\Ä\ÛsAHm¡\Ñ~·IŸ€÷B:¬E¬„füZ¨\Î5şBzõ(¦ò\ÑHGqw5I\ë6j9‘f\äƒ4¥n%o„fX¥D“;)õ%º\Z\ìğ\0õ´ƒf\Ñeô\Æp‚ ü%~\Ê\Ó\Ê]\àVœòT°KH›øLzó/\íÿhÿ[\Û\ß/¨(\æGm§/\'¼\ÜBjA²d¹7\â£ğü¿\Ô[rA½¿\â‚jõ\×z)hş¿¼öWh\ä“\Úw@L¾\n\"D|zó˜\Ãi^mk{rğvz÷öâ¹±g\0A‚ni rf\à ½È¿!\è¶\é~„`=XA†Á\Ü\Ì?!ùöÌ”/Ãğ¾r\0«©\İ5\Ğ\r\ï\ã*\áÀg	¿e0T²PşŸ\ĞÀ~2ócñ\Ç*\Ø\0\æ\ÛÀ‹¥¤^g£ù~ÿóy°‰$~A1£ùş2ì‡±¼ú\ÛNl‘\ïµ\ÚÿJVB\Ñı\×T*,\å(Óˆnaı\Ø0’\Ú\Ï\ÃHVÂ–GŒge\Ä¯Ş¢YğX\\ó¨\ÖÄ›¶^–‘$\İL\Ú\àNˆš±Zú˜ t¬]Foú‘ª6\Ğ\ì‹Qÿñ\ßd\Â\Äj]m€º\Î$¹0˜\Ú×‘~ø‚¸¥2N´¾ğ\'L¼÷n‚x$I•5”j)7™\ä[oş4a°£¤» ½“\Ó\ïı>\Ì|°\0wÁ\Û\Ä\áKˆ– H¤‰Dnš\İ\Éòœ@¹©¿ûš™Ò›DOñ+‡p¬ı\åş@½-ö[½ôršË‹\Ùpx{ã³„\Ëø’$ƒ\Ü>¤ı\êu+\éK/{+\ì:\âœQD*\ê»P\éoş•\İ$;ô\Òa)#¼$N~—¸};\å\'“ğ—ÁOc{ˆ±hl\ÂrCOªc»—Lº\î8ñ\Ğj\Z\ÃM\Ôz¶ò\Çñ¨š/\â—´ş—?\å¸Ğ®š°2m3i\\ó\ĞJ\Ö\Ê¸/“>aq.&	1(ûa]pÁ´°ş8\ÕË’\áI¢\Ñ\Â\à\Â\Ûm°“\æ\ÌhQM½&A\ßy4ö$‡—Q\Ëõzş9\ÖK~V\à\0v¢dT<‡¥&\ŞQ@}ß…\n\Ù¿!¨t¼“ÿ@o«Ù¯\Ñ\èØ«J.¿lPaA~\ŞÀ¹9ıûe÷\í\Ó;«W\ÏÌŒ\é\İ#\İÂ¡´Ô”\ä`RÀ\ïóz\Ü.§\Ãn³Z\Ì&£ASY\â¡7ú[üCË†\Ïl	\Ò2\"2,bµŒ¸\æ\Û\Ñ\Ù-\à†#Pnö\Ä>‰Z-rV¸Fµ¸Ç”=	Ñ‚‰-J\Ö\ÅU®i\á\éö\ï\Â\Ôxt04¼EJ§‘‘•\Ó[2Ç–…#ö÷ƒ\Ï\'R›–¤¡e\áp°…¥Ó¿«\èıYš\ŞbC\å\á`¼\äªS&Rkû_\n¨\n\Â\é<¶¬%µ\ãv\â\ÄKùaô…N0s©\Ê5¸\Şş\äˆÀ\Ğa-\à~Fü¥<¢Ò·¤OŠZ2³;\åô¾ »\İßµ «=£	\à_ š}Vp	Ÿ>32|z-\ású”óı6\Ïph}hı\Ø2G.euGµûUÙ“&\ã\Ğ\È\Ğ*#€^\0O\ZMTb\ÔÅ¼\'q\Ä¨gØˆáƒd YyN\îp‘f¶D7L¡Lda¸\Î?imá–®€šu\ä\\ñ\\ˆeh‹\Z\"T\Û­l\r¡\'{¿°ş–V;L’e™^y}Y¯¤\nOO^3¾%yÔ˜ITD¯¢4¥&$ˆ=L?	Ò…†×„\ÖÓ½¨;…Î‘a‚\ä”O¯©š\"˜§D†\Ñ3\ÃĞ²¦ğÁ\']‡·8²ZŠ©Zñ\r_ùú\áşÚ¸]¿¾)Ô²À\íò4,\Î\Ä~}ığ½:>sˆ Iv\'\Ùt^¼jºNœ\è†\ÊPËª©3\ãœWyK÷‡\×\Û[Fü&\ê}¨¥\Ş0\Ê\éSf\ngVŠaŸZ¿¡J\ê-úĞˆ[C\ÃgI4$Ş‡	\ÔzR\Ùğš\Èğó/¤S†§_\Ü6n	d‰†\ë\× VN\'\è\ã Óƒóğ‹\ÌB‚ghKt¼~ñ:\r\è\Ñ\ÊaE‰\n“D3ñdÊ°‰\ÃqºS\Õ5½I\î	­=ª\é-\î,{ø={¡O\ïQcË†\ê£oaC\Ë.?\ã¡ü¨1\Å\è§:\ë³\Ï\ã8\Z5.2\êWq.¨\é8MŸ¾¬“òT5Q_\ïõ¸?xœò#\"#¦¬_?\"\Z±~\Êú\Ê\ÖöUS#!{dı“£F­Ÿ7|JHŸ÷H\å6[F\Ü2±\Å>¥‘¿+(3\"TS—ƒ#\á‚`\Ø1±\ãñ˜÷81ÅˆÙ‰\å\Å[oÿ†À2“(\n†F¹\ÒJ!\Øb/3”€˜PFS`šÎ®ú‰¦\Æ8\ê<(&	Ÿ˜>¼v\\7Äˆ	^\ïW‰R\ê$\ÓgCk¦\ÒMËª_•\Å\ïC05¸¢\ÙYD¶)\â\ÉO<Ä“UO:›O‰™ü£\Æı\ìÜ••\×;\"\ÎPa¶z]\ÎNoya<ñ§‚­ Ai\×\Ğ2d‰r‘3f‘\ä*jñe\é\rNH@®·GBoFZ\ìY-òĞ²‚ECvI6\ì\äƒD‚C\íoF^F!?ÁmoÁ¢ôŠr yªu\î+ ‡\rC\Ã\×OIp˜\ÑNGd\Ë)&O‚a\Ã<¡¦\×ü\ëğ\Í4|ªc´˜\Æ\ë;œ„\×ô)p1c\\ı¨ñ¹±e+‚7L\ì\Ói2K¤yd¹¼À%²y	Y;¤\ée*Wò(-&\Íÿ-€^0’udŠ˜\ï°’e›`¿Ày„µ‘”(\ïY\à-¢D…ÿ€¤n”~\"œ<€”!\0©ô\Ğ”\èyˆ,…nd‘v»™\Ò>J\äE’(-¤ô @w‚-<\Ó!JôÎŒñ”I–k/2FzÑ»²¦ô\îM\é]€¾\Ôo_‚³\ï9€~\0ú\Óxú?+œJ}r÷\0x“ˆ€ü1”v“qÒ\ÒV€A“\0.\Ë(ú\àŠ«“µ{e\rÀ±”VQ¢~‡*”n&‚¾*\Ğ\r§K0jRQB¹A\Íş\ÉqúÙ¹Ç³÷\ïv„\étBªüó*~WX%Œa‚­¬†\ì§ñ^Â°Ì²¹Ù}¦?³š¶?±\Øú°vÂ¹\\& ·\Ù\ĞMd@UA£lE®šP5c\nh\Ñ`\ã’d5‘Š–ff\åU™}¦ı¦£¦\Ó&\Éd5 ®\Õ-|IZ-+nYVV…ñ;£š\r5\Íf“U…¢$c J¦q5¹šG\É\åQ`W	dI¦	¨\Éh9SEUõ©G\Õª”¯`†’¯0Mñ+Ç”“ŠdgVƒ¢Ê ˜L4·LC¦÷\Ë\Â‡/·bryy}y¹?›2¹\Ù\å“\Ë\ës!»¨\È^4¸\ÈY˜]4¹<it\å\nI´gYW\Ø\ÑÕ¯gÀ‘[^QŸ¥\Êö¢‡T{QQÿ~ ºÃŠò\É\åPğ0`®‹õÈˆ(*—\Ë>|¼\í¾³Ü·\î\Ú\×7YN\ÎŞ\ÏÇ†\È\Îİ­}×±«\ÈÁ\Ë	³BQ\ã\è„\Æ(¢\\Ó¨IXÅ²²H÷&>ƒ1\Éú\Â\Ë÷\í£\ÚH7°ò;\äI\\½\Ì2Xó\ß\í‘,\Æ\Ív\Õfv–i˜¡¡¦’\ÍÀ¯š¬vSc¦¹À\ÌTs†¹\É\Ül\Şi–Álöû4\èŠòú3EG\ìEö÷\Ë•—Ó»ŠÚŠ·!6\ÈBµG¤›’‚¹ˆƒ¹\\¹9lE0oÀ•\ãß·m[\ê\ê›\Ç\È/\ŞoÌŸ3}Ã¹|\ë†cnª%\×„‡¥\ËÁs¢VMòK™RT\"\ÉF´´¶uÈª\Égb4©\ÄH\ÍÖ¨UP7LË³\Ú\r6\ÕI78Œj£µk„Lò\ÛG·²!´”ƒ³@/8Bc \"G\Ò5²‡À\Íõ\ä\æ¬‡¯\Z­ªÙ·]ºn\Ãõ’´#ã©‡\ÚŞ‘Ò·µfÆ´Ÿ–\"£›ü¹ÑºWløC\Ş@L³£fF\rKd,ğ—ø™*ù¤£\Ò	I2±\à\ælB\âw“³\ÃŞ¬\"¨I›M.¿\'\ÓS\à\á\'¬X@¬¹F¢yĞ³‚*¢YEf ·0\\c¦@-K¶\Î\Ô\Õ@@O.?l?Sş\ã™rÿ3_T\Ô>C„)?#Œ\èP.®PQ^A\ìN%\ä\åû¬\é@nN*ª}\éFQ¥È¹S¦½7Wß’şLŸo÷ıW\ìŸ(ŸYx\â\îgL{g®\ÜnÁS-\æ\Ìõ\íØƒ\é±_°`\Æµ\Şş¨\à‘\í§ù\ç\ÄUvòTE\×\'#\Ë÷#\æ\Óõ˜ç¤‡a/\'òs¾¹\Ø\Ìñ´Š¬—D\ß\ëó®$—Ä¸\êò¹\ãf—™™ø~\å¨\Â\n|˜\ï@öùI†6nñm6Ù™c³\ìB§šDøHò%e$\íLÚŸ$[˜\Û6!iMƒ\Z–ªubæŒ½\í‹C:vˆ\Üg\nÅ¿r		”ˆ¼•óŠS820¢\ìØ¹9¾\\š69\ä\Ù\él\áNEşù.©ò\ĞK±_~|\åùiÒ¾Ø\Å\Û\ï¾\å–\ÛG¯oÚ†D\Ä^™õ\ç>ø\åŸ÷ÿfÿõ„¡\â“,\âø`vtT©¹\Ú\Ü`\æe\Î\Z\ç\'wn»y³\â*±a±UV{\Z<g=œ¤Zm‰\í\'gš—pT9jÜ¶†{\Ö¢^\Ëü†.#\ÕIM°\×ùD<0øŒ>\ÌpØ†Bg\×ùAxY\á	\Æ^\á\å\ØIL}gë¶§\Z×µ\ì•.}‹Å\Æ\ÚĞˆaô£\ë\Ü_8ú\ÊñW_9.d\ri)›\è,C8jg\\\ÚD\ÒF•VbTÁY¬\×Å»û÷ë‰\\GX\Ê>7\ë {G>ğó÷„…ka\ÂB²\à\Çè£“z!?‘\é%\ée\éœmñ \î2}eb\rF,0–ËŒ­\ÆcFÙ¯d*J‰R¦\Èls\0y~rqò‰\ä\Ó\ÉS“}\É\É\\«1,10Mõ«$\nw%ñ^œq_VF\Û/#—#›·XwY[­Ç¬+±\"Z­²w›ks’½§\ÎN¼È­|H7\\\İ\ZÓ¼š´ƒ\Ï×ƒØ©OZ\r\ëİ…r…\Ø\'T¿\Æ~ª¨Bg*šlº¬(?Cò]ğÄ™ˆ¨\Ñ\É`:a*\Êu\Î\ê‘Aœ\Õc\à€¼Á˜—? /ó.C\È\ÄTLA·—T$¢\ÍP)ü\\’é©·wü\Ã\é]“/7öŸı\ë…M–”o\ßş\ãŞÃ·\Æj\æV7¾šó«ûv­ÿ\Íc\É›÷WCKz_·\È÷\Ğöúm7~÷q3n¸2;\ãU\Ê\Íl?-?M\Ò>EH©|cƒ‘UK\rc¥ZµÆŠ¥†ª\Ï\ç+õq\Íî·—\Ù9€/iS~JuJC\nOIa†LK…\Åb\ßh|›˜KL\ÙR7”YHû\Ä\Ì6³`\Ğ°\Üh\Ü®2\Í\Å:–*\Ï\îÂ¡\ïÑµ…C	Ÿ\å]N9\nuü$X.…C\à\àì›#ù„t¢;·S\Ê\Í\Éwi!?û[l\ì‰Ø´Gğª¿ŸÅ¬»{¾ûX\ìl\ì»5ˆ\Í_‰a³‰÷\â„7±úğô¿ÿØ³±Ÿ\Å\Î56£ı	‘\rdü|C¼èƒ›¢\ã{­\ç$j\ì_\Ù™\Ì\í\Ã\í\\v{\Ü\én\ÎU7jq¬QHÿ\ÔHv´p›I\Şì´›m`\"\ác16š¢’>j\0]\à7	mC\íT9g\ÈF,d2\rP<õ“õqÆ…if11­˜\Ğ::;0ÿ\æ©E5cn/\Ú÷ T¸s\îø\í\å~\Öø\Ğ\r\×\ÜvSÛ³Rúİ¥¥EK\Ö.c\éIcyOJ,ˆ\Ú9—­k\ãnf¥Ij:±ŸÙ\ÇH3\æ1»Á‘g\à\Êf\ÕÆ¬\Í\à´rfP\è`\àŠ’	fu³u\è	ö×‰0\Ù\ÙD£B<úL¡¡…YYYMZ_ÿh:¯8$fú@T\"D*ª¢\æ\å†ù{\çÆ³\í\r\ãc\×ğ\ém/:ŠJõrüf#WÕ»µMñŒ¶›õõ$\r¾!LGŒ¶4v\'B-3Y†\'\ßS\ì\á>fb– \Ç\Ò\îXª	-	ñ%©X\æ\ÄR+²	\æ*3\ãÉšQ[’\ìNII^BM«SPJO˜\Âx¾¯\ØW\í\ã¬\ØXj¬6r^ÀK8cZŠ1Y²w«Ì„’HÀ7u“ªİ¨º}\îw¾»\Ø]\êVŒ\àvû6\Ù])Z²Q²¤Á›\éIoZ”7\Ó\Üoº¢–:\Ö\Ãu©\ßO°µğ\å\âZ^.Šº\ê•&kß¬&«À—®a\ÄOº”@]ÿÒ¼÷\Ù\İq{F¾®¦I`w\'a¡OI2\ï\Ùq÷³?ı\åö\Ø;\ß\Å^7´Z~\Üı\Ğ\Ëo\ÇB÷ß¿Ç\É|Ë­ófU”÷\Íÿ\ä\æ\ç~F÷Gö–\ßİ¼`\É\ÜY\ïmùò\Ô;‚_\"\íß±y+\Ù~¢yR?b	»º™¬ğ¸Zj2Kf‹\Ñ\æu\ß\Í\\¶\ØBhR,FÍ¤*\Ê~²°¥\Ã\ì+:\ÒVdÿ¸üµ7¸\èxyy[‘0ú\ÒI\ÂõÅ\Â\Üs\ä;„\é\'Z>\Ë“¿x¶Íš}ûö…‡fôdöq«\æ³iP›Û°¡mÓ˜¡š€ü)™ø\ÜX=\ÚjD\î“Ñ§ \ì¤\á*òŸŒØ¬\ágl¨^n—»	¼´1…­u\Ù\Ü.—Íª)\ÚZ³\Õm6[\r½LfS“\Ñ\à6\Z\r\Ô\ìT„}ÁQ1mV7\Øö»ºX™k	\Ù™®W‰‹£Ñ•\äbû\ÍXf®1/1s\æ7Ë·\Ä,¡‘,º“fd.³&‹Ó­’ø(%/c\'©D»p«ø	–¹j\\\ÌeÒŒ~Ra5\Æ]F\Ùh“0\ÍhĞŒ\\Kf³\ÕfvIŠòxr.Z½H\Üw1‚‹|¹şlò-\è¦</Ï…ÁEEE¹¹	µ’P)¢Šu“ûÒœLøÊ‡š\È\íhZqÁ¥\ã‘Îƒ\å¡\ĞVŒpRJ\İ\Éwåº¼¾\\—üll\ïva¦ôÎ³±8\İı¹gn/R¤H\é¿|\ÈV<®{CJ?\×z;{¦\í\İ/\Óx¢\\\æ\Ói¢œ	>xºD-S\Ã\Öö×£=r\nòXZM¸Ÿ,?\Ä\"c)23\ÃsKXª¨:¥WN!§°(lzS‚®LR¥&\ÎH3•!“D¢WƒX\Ç@¢J:\âı*y+%\êZõ˜zR•\Éh\î\ä#>\áx”Ÿ\àl-§j\ÂW©ŸŸ«\ãµ~¾Àly}Y{‘#Wøl\çq†Y¥£ª~¾øW•:¦PGO^¾‹Ÿ\Õ\íŠ\Íyş\Ã+Ì’=\ãG)½m\ë\î+¢³\Ùš6b5R:\é;$Ã›\Ñ;dŒIFfLNJfb™”™v=\åb¼5€°6°%°+À\Ñ\ï\Ù\åiõ£\Ïo\È4pò”}4óª•…\\ $oÀ‚~ªŸƒY™f\Ä\0\Ú}›™\İj3:6G5—%˜-¼\"Os£™’\æö»3\İ\ä8¸\×\ÈI¶!\æFK4U®e)–ªN÷\á‹CºñH\Z)üƒ“»X(¬e¡¦t\ïA7,\ë\Ï[\Èq;\É5rz„m™ÑµVÙ‹¹U¯¼õ]\ìû—«–÷m\Ç\à?°|\Õ\Ã÷óû~{ëŸ±¶\Øk\Ûş[~nİ¹O\ßzã¥·ÿz\àğkä¿–µ,g>H…^0\0\×Eÿ~C\îú\\6¡U\Æ<.\äk™ß\èóù{÷\é\ÕÇ›–\Ö\Ëd4YŒ¡´´\Ï\çõû“RRS’S{™L\ÆŞ½ûde\r\à\\bfVR6OÑ‚i\İ2M½}\Üme½R{5™	\ê\ã\í³\Ö\"\ÙZCv}C*‰]–\ÚÒ™‹½\Õ\Ş/\Ço©—±>\Ş‡1”ô\'aS&%\É\é›`ÙÆÖ­7\ÛM\í2©¡Ûš}\"5¸÷»™\ÜIk‚ZFƒ3\×\ä[‹­¬‰ªY‹³‘e¯ñk\ä/g©(Wø\Òöw\Ë\Î\ä’©?“+to\×Dz\æHNÜ»+\Ïu\Ä\ËYœ\ç³\çµ\r]ız…>¢\ç½ô\ï§jEñC\Õ\ì\çs‡´Cñ3v»<]\ÕMVróòIª º{=nE%óÕ§¨^¼;\Én ±ÇW9c\é”Õ»|«v\ïşÕ¸·\ï\İô\â†õh\ÈHıCÿ±sÚœ=z\Ú\Ğa3’pi\ì\é\å\Ë6/ûÕ£s\î|\ÇaTv4}4¾ü\îkn>¸ÿ¦™{Kb-c—e¼¸|;uù\ì\áW—O*Œn\ã¸u\ä½c¦\îŸ4¿F\Ä\Æò¿\ÓüJ†L4FŸ\Ö\ÂøS‘§\á?N²Ï´\ß`\çVYY\Øf\Ã)É˜t<›j\Í@¦yU\'uR\ÖIY\ÖDöóu\Ë\è\Æ\Ğe\í\äK\ÍHe\Ì\åø/‰”EXqJi\nc?$\á\Ï6\äI‘\Í>{\ĞfK\Ù\ìpŠ@RƒÊ n7m–’\Õ\ä¡öğõ\È\èA/b[Z£¨“¡òdP\Õk\Ü\Ñ^d,ötÿ‹oq\Şa=#&\å\à\Ä\\,Ox­.&\Ü\×úŠ¸\Ï\'Œ	rü\è¶>\İ-\\û}Â‚ \êñ\ØÀº\';°«\'\ë\åŸô\å¶}\ß>a\\:ï–›R\íy\ã—\ïO>»X\Ú\Ë]°\ç\Ñ«~÷\È\íùtù¶§ƒ\ã\Ç\Ï\ß~\Ç\Ìùú¯XĞ¼ò\Ü\Üı\'õÍ§\ŞzQ\Ğ\à|üI…Ì¨GV8³¡\n\ä¢¡¦Q\Ó:¢PE\".ÙƒG¢’u ¢QûöI\é/¿FR¼†|”šÿhŠN\Îv6Ë´`\Ü\ã «\Ú\È ?¥:\Ğ!ğnä®µ$-[\'’ğD\ØZŠ\0¹\ÕkÌ‡bh\0\ÎÈ¿3pòG\È+q­P¢AsKRºº$\ïŸ\Ññ·\Ç\âI½nÀ‘\Ø+GEXb\ä9‡NH7F7\"x\"7Dc/~\Z\ÛÛk°\ßû\Ø\ïò\çû\Úô\íO(¿ıø‰,|\ë\ì?ñ%¼+ğ\Ö?½\İç­±\Ãä›¼{ÿÀc÷“}0f\ÔG‡5I\È\Ùp¹\rop’\r¬\é^>Z6ù™FF£É³	¸É™¡ fG+³¯P,¦•æ¨¦ |Jóšg‰ñ\Ä\ÍuBq<\0º³!dJ\Ü\ác¡\é]\á\İ\Ä$ÿ<\â\n‡hX\áûY\Ï5\Ï=8.öK\ì³Øºƒq)Nš´fulƒ| i\Îf¼úC\Ûnh.k\nû\ìi:­\ãDqo\Ô\ÄZ\Ğ	O#fWÔŸ!\n\êe\×?~\\ğÇ‚\ØXõù=\0Q|,\Ú^p9‰\Ø\ì\ê\ì¦\ìı\ÙÒ–>ˆ}\Êú\Ôô\á\Ğ\Ğyq°9\È\Ø ?\åÌ¥d4Q£r(‘·(\É\Å\ê~;û±\ÒŞˆk{m\é\Å@\ë…[ˆMd—›JMó\r\Õ\ä\ÏøY&c%w&#\æ \ÏO©‚\ä”\ä`Š3”\âLiJ\r¹SSCK.Ã†\ØĞ¿©ÿşşGûKY5Yl§E‚g½a”’œ!Éz\Ù\æ${Jª\r\Ü\İ\ï¶¸\Ù\í\ìÿoº\Ù\Úˆ5–`¾¾}ö\åŒ<^CJÄ˜úJ*Ó¸šJ&}ƒ³Ù¹\Ó\ÉYu4bA\" Re§3óŠ5¾¾\Ş8ªGc3ß°\éû\ézP\ÕìŸœy¿€.\ï*úr\ãÑƒ\É\"Y—\Ù\ä@\Æ~hp\Ñ`\İ|¦Ã±\Ğ\ÍúB’[ay\\b×º¾¢k\å‰X\ÅE!0ıiº¢{\àv\'\è¡\æ\ãr„øß—Ÿ\Ë]Î“t±\'*„sº\ç§\ç8u\áB\æU?˜@ŒŸ\Üö¿\âó\ä#6\â;±\ÆOŸ\Ñ6>x\Ï[xù\Ë\Ï\×Göl\nöñ>´*6-öVlc¬¾ƒş³ª\ÎMjúòæ©›®r¾úş\È\Îñkt\Çòb\Ï\ÇNÅ®Ùµ¥gÿ†w¶\Ş\×6zVr(²5¶	=85fmmˆ-\Úv\ëJ\Ì9²\î\î\Ø\ŞG\Z\ïü\Ú d–\èoG-š\Ã\ï`š\æ\×X\0C­\í_E\r.p<!¿ó\æ©Aº·¶¶—nÂ¢4\Í`\Êó§€ms’²9š¤¦ù\Ò2Ò¸™¥\Ù=6·	œ)\"\ç\n\æ©)¾”Œn@l„S)\ÆF“\×\ÕuŸ2™ª\"ƒ\"\İM\Óûev/\é\Î\Ô\î¨v\Ï\ï^İkb ¾\\\ÈGû\è\ï“\Ú\Ù\Û/\æ¯0ÄŠŠ¦,\ÉM’Sº\ÊF²@A\Úq\Ò#q\ß\Ñ!t	\\{}ºªV2ö¹Ç•\ÍÜº¯r\â\Â\Íû”f¿µ¨¹\Û\â·~˜\İ?²öWw\íh\Û\Âö¬Ÿ±\íÃ¶¤ô»//?°gamLûi]·&Áªhiƒ›\Íû\ÍGÍ¼Ù„š´V:)}%Iš¶Vc\Z\Íıf:\Ğú;\Çf£=\éA\ßf\î\ÊL*Hbq§š[4«\ß\Êl,©¬÷\Z%šl©eAe\Æ\Åbxr<vMÿ\â\Ú\ÉBb	ÿD¨3_8ğ\Æ\åpœûòòù\ß#?\ßú\Ü\Æ?-\Ùşupwp\é\ä\æû\î¹ca£\ë^}³~ã¿«}88köû/z¯±‘F\ÕD£:EŠ–G¯®r¢lM·2w„L–¼\"rM\Ä\"\ÓTt3\Õo0\æ©v´32Zò˜\ì6\Ú\ìz¼]`n4D}\"\Ú\ãCx\rD{H‡\Ò#ƒE\ÎBHú:H\\C\Õôø²ğ‘sî¸£\ï\È\å§~\'\ßğN\İsƒ÷\ç_;cß¾ûª~\êvgÛ¾[o¸ö\ÖOX>Á&‹\ç[‚ß‡ı£M²\âl\'Xña+ò](|*\ä\ÃÉœ)v‘6u\áQI>\×N«\Õ\ær9¼>K“\ËH•\ĞnóM²˜\\šµ\ÌZc%V´:\r¦»•drf\Å6Ì°\í´í·°IKHAM \ÜSC±\Ã\Z\âÑ“]\Ğ\n\'AfŸHnX	ÁV‹$5¹°Ä…š‹¬(—¯µ!\ØH¤	Ç¶¾^wf\É\\\É\É\îğ`u»E fr‰Ï…3V^Q£Z\ãÊ¢^‹\Ï\×9‚u\çµ7‘\×n³Y…ˆÓº®®M\Är\ÕZ¤‘\å\n		†º\×\í#b¤z*ª\à¤l\ÔY\ç¼÷ml&\â {o\ï7\Ü9 gú\è~±9ö¤@\Æ\×\äÑ½\Ì\ä}v?jŸ{‡”\ÑvU´ja-[)¤\n‰\ÅJZÜ…\Ş\ès“œ8Á„ƒœ8Ğ„Í¦úš¥tT\ÆcJN›ó&&¹“d“\Ít“*»UUöı¸\Ëv\Ì\ÆX™M |­MB\Í\æ·e\Ú\nlT©‹\ÈQ,V›T2YI³1,#Ç·˜U“C­0´I*sš8h²\ä”d›\rN“\ÊVº\Ê\Õ\ÇLóò\rÅ†&C³\á„\á´AU\r†ı†£†³Ù¨Z‰ı\çŠ%…pfu°®>\ë\ãV\ÍHGnù	\ì\Ü\\]\r.\Ê\Í˜qÜ\×õú\ÌbŞŠ_}=I¦ù\Ê\Â7£i+\ÖV)6iw\ìz¥»\á¯¤`.N&ÿ\Õ_JŸş–üò\İ\ï{O¸›Ÿ#¦¹\ÚB(#\Ñû\ÔBs\0›=HxBPe<+#\Û\"›\0÷÷8Úƒ\ì†\Ğ\È9\Ò\ÎcN6œlf\äZ\nj)šQkJKq§¥¥ø|\è\ç\Èf¦İ\Æø\Î4\\i\Èd£\Çx\Øøñ”Q¶ñjRüš1-E²O\Ã\Ã|sw»\ê&C\Ëıos\Ô\î\Ò\Âşpf¸ ,©Ÿ…¹X\Øn0\çYDp\'L*\"MK1J–04fd$­±¸].¥1\íI\Â.3\Ü\Õ\Î\'\ì\ÒI¨\ì¸\İVN&!ÿ…n\îQN>¯Œ;œ9˜\Ü\át®+$\ìÿ‰ Š%†\Îb_\Ì\èğ\Û|\ìó¢š\ê•U›w\í,ÿ\ê\à+Ÿ\'íµ®[¶ø\ÆA¥[ş²ñİ½Ï¿\ãa\çJKGœ—‘5¤a\æm{,X7wZq¿A)\éy[g5>¾ù®övxŒ»dù–\×\ĞTğ\Â\èc\0®¨	‹‰ñtT= k f\ró\äñØ§¤\rƒ&D»¥\Ë\å\á2\çb5“PÚ£q¿Xj \çÁ©µD§\Ô\ÚşB\Ôjp\äIªò$Ù•bm”\ìJ2sdÅ±4¸\è]\á\'Å­Z¨¨“\'š‘—/L\Î\Æ\Ê\âşó°\êøÊ›“¯\î÷°n}®ë³‰•\É¢kş$<\0s8ù½\ä®Q\îO\Æ\ÖÀ±\0óù1_Á‰ Dô«ØªS™\ßx\Ò\È|ùp$¿/\ÓW\à\ã>G†#\ßÁ­Dô\Å\èØ¬¹,\Îx\Ô\Å\ï\Ş\â\Şå–¬L“1À\ÏG^\Ò\äZ–ú¯‘—‹V(\Ë\ã\ê¯~‰\Î#\â\Ú%\â\â!%\ï¸`U‡L?pü\ÇØ™\Ö?\ÔH»ö¡e\ÅCwÿ\æ¦†4òİ·\Ç\Şÿ6ö·\Ø÷7\ÊÚ¾?wü\ÄÁ?|ø—\ß?r{\ra¨}{l¼\î¿YÁ	E\ÏPÁg\ÑTƒ%\Ï\î\à›j _\Ö…\Ü9³\ÙMŞœ\Ë|~OÁkEö\"]n³d\İ\ë\Ì\È÷Æ•YÜ½K^´¬xD$§Û \ä\ç\Ö6/pn±^s«4‰>\â#}UT\ç#±ŠFƒ\ØyKœ\ÄF&ù\r<%ur\Õ\Ö\×\Úõ\Ú\êÅµS“­\ÎR»òİ³tZ©û¥ib­a¥\Ø1w¥&\á¬ó\Û\"²;¶E¬|\é%ªL\íú¢yZß©’My“Â¹S%o’[%r\Ú@æš¯BüúNòk\ê\é±\ï°w\Ã\ÒÓ±\àK±4ilşù{Ù¼[À¯¯~\êğ›.‚ÿê¾½5‚¿\ïyø\\«\á§õ\Øa\nN\Ñ\×\Ñ3Ì˜!ôŠ,¾\â\ß/¢7ûwúY³²Sa\Í\É;“ke$8}~K„\rõõt›96GÉ¦an1\ïº\ç]‘\çKB±°Ÿ\Ä\Å*ûÿ¼²^^q\Ì0¾ˆ§k÷\É]\äTE=10)Ir\\\"A^\Ó\é}RÍ£‡b?|÷\æ+UòC±!+\ïß¾zù#\×\Æ\È\ÎZ‹ı‘ÿ³·\î\Üu¯>ğ×·_Zw \\\Ğ\ëÁöÓ²˜\á>¸.ZpÒ…\ÂdaK´c\ZMš\ì—[å“²döš¸c“*g\È\Ì\Ëd—g%˜WŠ»¹\Ìoš\Õ\Åa…32®\Ë\Ğmedª±NS\í\naµÉ‘À¬¼|\è\Ûyi{<ø\Ècx‰Í¬\áÕ¦%Ï¿¾’9·÷7¼kñ\áûø\èøş°`A4\"Ğ¿Ó±\ß!X5yôJ|u[ò»\n‰½\ìL\ß\Ü!“\Ó\Ä- o¶\Ù\r\à$\Z˜\rÆ¨G˜œ29\İ\Æ‹\äE\Â\å\ÜarŠ¨\å\Â]\İGXf\ëŠó\ê\æş~ß¾U/T?{5»ÿ¦›\î9\Üö,	‡\ï6\ß}¯Uš_\Ì&¸:\ÚË°I‰’\á±\É\ßO\ŞÄ¸q:5I“@6WbTŸcX ™ñ\Â8D‘#77;[_\æ\ï³9£o\n{\Âñ$}ı\Ë3Rú¹\ßò¬s\ïq’L»c\Ñ\İ1;½\ÛJøúl\\3¼ı51´¬È’‚ƒ\ÑfˆE³\É&n0¨²$+’UP›t+\n\Z¹‰7IF·$\r23K`2ªŠM¢\é\ï4S›L¤R€L,Ÿdr\ä‘Ñª*Š0oK¤2‰•H¸VB²õ°\ZÌør(\rÈŸ«/õ\éQQ\å\ã‹.ö<½ \Z?1c@úG\í1ùwŸÄ¾‰}ı!6Æ¶~ú\'7J\'bq{\ìz\Ö\Ï\Åö÷Àº˜UX@D£ü\"ù`?FPh²}˜_\æò­^¿\Û\ëõ\ïòb†ˆbŠ9mgF»Ù–W\Í8“½\ä\É‹ñ‡\Z¸7J\Ğl\Ş\éExÊ‹\r\Şf\ïN/gª7\ß{\ÖË­\Z?\ÉY\nr»7g\äø3G^Æ·ˆ\ÕR&î•©/\Â\Ù:·\Zğòg’5 !a-\ë¬\Ñd÷r´.\ëœBB;\\n?sH\Ø1‰eÂº‚ ^¨\í¸&\'+HAqO6n\çˆE\å\ÎE\Ò\É\å=q@^~G|™\Ô|w=ô\ÌdE\rK\Æsf\ã¿]²t;>\ã@~ô\ä?^½õÀ\0ö\Öò\Ø¶¯®Û¸ù.\Ï\ëú¯Gn}ú\İ\Ê\ë…L+\Î>Â§¤\Åş\èMƒp$²«m8\Ü[\åeCÓœ¬\Ètµ‰ñbb—\\BB	CD†w‰FW\r]\æˆ9\×<\Ô,¹¼o®w¨—tco[‘\íj›”\ì\ê\í*r]\í’v)H6i3 WX\àÀ|#j$†˜\ãP÷\È.\Ë:\æ^§Fl9ó«\Ë.;„¸OlO‚òòò.vvy|É®C;‹\Ğ\É\é\Êq\Æ}\æp;½¬?9{:9û\åÆ»®\\3m\ãCn’_ls\Æ\Zc·³op.øù\0pğ\'\í+b‰ú°]|6Šğ¹\ØJ\Ñh2\é\Ş2¹F^\"¯¥y¥*4­6Ô÷·Vj•$I¬\×Uc3\îD9¾­\Å.¶ıT\ÅTy½¼\í8©\Ó÷\Ë\Û\ë*UQv\Ï\Ïå°¯\é/˜_¿HZ¶j\â\î\Í‰wN%®ö\É;À-\Ñ\ã\äùˆŒ)²r+\é!\Ê\ÊLAI•@»× HN¿Z ®U9\î\'s¿X®–›\É|,ˆ›ş|+\Õ\ÖĞŸ\Ø&P†Š@l¢ÎºSe\à\ë¢b\ß ³‚Dİ™a93i:\ÒÉ³\Ñwp^lm\ë\ZK¨2Áš,Ú‹X™<\â—\Ğğ¾“±CÉ­*>k\Ë\åO\ÉÁ3m#b·`{\Ùn\âµ\í\0ò]‚H\î÷\ßeh5œ4|e\ØZû\ß8\î\äûùQ~šKMÀÍ›¢&§\æô;Ëœ\ÜÀT\áTølö<U%öq®P…º\nªu,\éu\Õ\á¹uÌ¨şı:B|\"\Î\Ë\ÉX\ì‰ù\áœ+y<Ş?7¾ğÄšQ±\×bkÛ¾=ˆƒ¦4\ß;#£v\í\êª\Økò`m\ë=\Z{6V±\Û?ó»£sÿøÛ«\ì‚^ù\ä‡]¯\ÛĞ³¢®f‚\Ş/g\Ê$$TIe¡¾¶\İ\Ç\æÌ³qU-V›Õ\ê	U¶«ªqwYW‚z£V+Q‹-Oq’\Ê\ÖW§¦ˆ3n69?Y±jBµ]\ß&•ß©qùõ<|x7›;{\Ú\ïA|/ö\Ï?ü‰ÿ\Î;\'/»ÿ—€ó:İ¾\Ú\ÉhŒ¦œp\àG•ƒ±|–Zª-¬T©VX™¾{\'¹µıÍ¨+g@\Ş$÷L7+°\ã£ˆˆ0\åS¨ü4\àp\Ì@_2ş\ä[~w \àNN;0ÿI\ßW¾Ÿ\Èü÷Ü·Ÿi\É÷”3‚\Ùl»Gsı@v\"p:@¨	øÌ\á\Ï÷ûKı’ -3³ P;oJ^Ğ¹NöA Yò›×™¢©òr–b:/ør\ìgVÊŠ¯\Ë\êL\é/OÄ—ş\È\ä\Ìq\êkşzD*\ëË³t)‘Õ±\çL÷À\ã&Ÿ¡ûù%‘nj†‹”0»ùıh}ó\Ùş\Ø÷\îg}w\Ï]÷\è\îu¿/ôvv¢­•\×_k;ù§\Øo¼jİ°\î\æ­{nu³\ïvb–\ÅÆ²)ò;¤¡\'F{\ÑD\Ì4\"n%Ÿ[ln\È0s±£›	N\Ñ\â#òg*‚[T	“I`hšf\Ú eŸy· \è½\"}kr½¾p%¬\ÄNq\éÁÚù¹Fô\ØÙ”\Õ;e\ë\ê=Kcc\ß\Å$ô\Ék±b%Ÿ\ÇRÈ²\Ş·°Xñ7;¨ÿkõ/=…G\n¿Ù—Nvg§e\Íu>	’\ÌóB7\è‹ı£ŒÁ¤\à\Ì\àÖ dŞ’¹+“ñj\ÖXP\ë\é\ïYÒ“³\æ\ÍÕˆ/R\áş”’”%)\Ü\ç+ö5ø8k›d¦˜•›4³•û÷ˆmtô\Ğ>ŸœB\Ú7r\ØeIX\Z\ÂbÀfô\Æ\Ìú†#¦FU\æcñˆ´õs\É@Z¼‡P\å!q×2I\âN5¡Éš´\ÎuG\î<wu,´N\ßõüB\Ô\ît\çY{¯Ó¢ı\Ø{,[{·“‘uÊŠœX$&±‘•>tü:DH|‡\Ø\æ‰u#º1L\\8¹%‡[J¬\ìÑ±¬ftYX\ìºÓ”“\æŒ}÷\îû±6¯ú\è«gÿø·oT­\ÛPU}óúª•>q\ãš\íğ@Y\ì\Ï\Ï\Å^\Üğ¦W\Zv\êÁ>{\à\äè¡«+§­½ù\×sV¶·¯Y³\ë÷7¬|\\\Ìò‘\Ä{\Ù:ïöÂŸ	Ÿ©šOcl\Ù%›MTdò›2M&aÇ©\É\n¨\æ\ÖöŸ¢F34™xö™òzâ¾\ã\Ü\×\És\å\å./y\ØL$\á@;¾\ÚÁt\ï\É\ï¼3ı5\Ö\í5\ìû?\Ç/ğS\rIyi5\ÉFG3\É:j*\Ûè‡›4®’•ŒF	˜²R[\É&²’\êE«uG\â§‰Œqó˜¼Hiõ¹S\ìÉ¶kòesl\Ğ\î¶\Z\á¡2ñ%:)t}\Å5u`³)-²¤\'°XF³+\ê‹ÚŠtƒ‚º{°ô\à\Èqúñ²\ã¿|x¼½=ş=†šK¾(û¢8§\è¾\è\0§]&_\Ô)wñ¥\ï¦\Úc….\Ã\ÑÑü\ße5k2šÀ(\Ö,\Ïjx‚\ÎFü\Ê 8Êˆ\Üd2\"\Ã\Õ`r˜4#7®6hnƒA[Ë‘%KXªBJL#‡\ÕÇ›9\ãM1ƒ0œƒb4p	\Èv5\à\ÃO6RˆC¦a3;\Ëø%¡²“	@`-kŒ4#ú¸\Ùø°‘1Õ˜o\Üo<j”PD÷~0r^-v¾2;·Š€ÔšE\ã+\å¨Y\î\Ø\ÃLTy¿@\Ş#!¸úrõ\Ë…]¶ô•\×7€ş%¶ÿŠwbó…ˆˆJ+\â±i±G+\ê\ëõõ\×úùñ\Íúd2o\Ét\×9a”Ç¶C\ÛO\ß<\È>@¥m+;õuL\"¬\'I\â\İBjm!N^¤¼<\Z­#y\Ğdj665Ilyy“¬/$ó&²Š\è!­‘Mö¨A³C&m2ğ\à&Í©¥¡\ÕgÉ°4Xš,\Í™y °T¬yyn\Ô,~K¦…¤—%m·Wj\Ñt^Çºk6‡ğ4õ\0Gnb\'o‚;··v\îS¨Gr8Ehˆø:$ö¤‡…>×—á¸œóÖ¯[ş\ÅKmo°hú°ª-ˆWLmœQ}û¼Ø‡8\çĞ–ß‰=\ÎÍ½[¶\ìõJùÀW·My\È\å<­fš÷—o^Ü ¯\ëŠ~\Ò9t@ôm¿®urˆ-‡6|\ÚY\áiÂˆÁOlÄ¿¼tŒ˜˜±NójS‚W\r†&#wœ\ä…\Ìñÿ3Î±”m\æq»\í×˜\Â\ï¯\Z\r6Áª\"Ì²‹¬#y\0»\0‰/w±¯\ØOŒ73¼AXÜ \ZK‰›Œ\ÍÆ:w0’kk7SfGV\ÃQ8§A5A\'_V\çKo\Ê\Ñ7\n~,™Ğ™qf\Ô‹ëª´^\ÌKk$‚;™/¾\æB\r\çOÛ¹\êÃ‘F$\×ô§c¬Ü·ıkl&K[\Z›$8÷\î5\ì™\Ò~Zş¤¯øawt\éQ/s\ã1;µ\"Õ‘uŒ\áI\çWN\Æ¶,sn<&>½:a>mfúö\ÇR3g\æGT\\e\\„ó¿²ıdc¼Œ|[±\Âl+¸\êÁÓ³\ÆK‰-U\Ï\ÃÜ³B|õP\Çü†ó8:Lû™ø•\Ğ X³¢>q!{8±\ÒM“¾J­Ÿ1\\ñ¯\"\ÜÀ\Óp\0®-½{)v#¹yŸ¢c§\Şÿ(öz\åwb“c\Æ‹U\ân\Ì\ÃZ|€ü¨ôWˆ½;\Ö;,$$´¿Á\nõh\ã\Ñ\Õ\ä‰ˆ#\Ş&6a3\â’x®b±¿HlZd\ÄÀ*[,x\ÕK(B*ˆí…¬0V¶w\É~ö\ÈKDcô—	\ÆFû¶\Òô6wºZ5¸U\Õ@Y£\Êet’£\à\ähX*_%G-df\ë-(²&sô¯t&)l\êx¡\Ø{®¯\Ñ\äb®ˆjmcR\ë“‘VşBš\í—\Õ\ÒÊ¸K@P\rñMZT‘5+&…¼G#®_ü\Ë;‰]Å†za§r#¿0¬óYX¼\ë¥6…\Ä\İ\Ï/±=m×¨\ÛÁ&\év«ü#q˜\"xYô†&®\r!Np!/µa™q	_+¶\ä¢\Ó\é²;\ì6G„s)-”–\ZbŒ\ÆqSˆ¹C!&V\âKS¦H\"\æY\æ;\æ“È¥\"$qòœ™„İœi¾;7\Éİ¢NO^·¨Á”\×MömŒúM¤¶$\Ñ-v®¾-¦˜²ñ¨øŠ\Ä%\Âúen.¾<*M\"-a	\Âi\Î$7·k\Öp8	À½ÂªY1i…%\é\ã\á\éV!<gw\Ñøg\Ê\Åâ£0ûü–>=LB”©(?sD·¹ü”‹ş‡²²\à¢j¢¦˜\Îñ0‰_\ìâ³¯8¿gtJ\ÇÖø®½ó<¯z\Óó:¿\Ê\Í\Éï‘‘\ï•ô\è\í;ÆÇ–\àrJ“\İ\Ç\Ëc\ß<û\Û\'ŸÄ¾Bÿ\'sJ++²÷º›®\\øk|G\ãH|œ¦\Ã\î\Ø\İ\'&¾ô\0M^F“\à“\Ø±\×2®ğŞ–KôK#=\å&N1‚\îˆN\ÙiE–ny\Ø\Â6[\ÑlµŞ¦¨nEQ7)){\ÎÍªb°Ş‡’\ÄU…;Œ§\r\æjñ‘S¦¾__j\å_ñŸ¸\È\ä£€s«øƒ‰/1–(kI\ß+S®ï”¤£¨­°\èS\â3LL¸GB&¬\×øj\ä@Á\êÄ‡(¹\ìkkd÷\Şu$v³+\ÄÉ±qòşô¹‘\ìî¶™\Â\Ö¾B\nù\n>\âÆ’\è\îª$d³“QH¥RVGfp¦g{’\×\0\Ó,\ÈK\\ˆ³U\Ì\í6´Û¸n¼\È{µ—ñc¡“!¶Ä‹\r¶&\Ûen53Ÿø\Æ	Y¯nøJ·?uc<ƒ\äœÏƒX\æ\Âf;²cFû~U±V\ï\'q¡¥\Ş\'ü„R\Ò>a\è\ë\àtºï±ªş{¢šKúƒ™AÂ¦C¬IqS\Ã8@layaoV®\Ø\ÂòB´{zF^8\çGp¬’i‚fL\ÈùL\'\ç³{\ç³B\Ä\ï\â\ë\Ä97¾@\Õ%jG&¹¥g„\ZW\'«’úºU}‡û\Ù\éÑ•w\ì7\ê\Ø9\ìf¼\èõ‰/.™\ã‚\r\Ä\æ\å§öû\å\Íwb\'\Ğ\Òşğ}ı®?‚#–o\İzS\Ãã°\ï\Æ~|\ã-2\nğv\\‹ZŸ²û{ìƒ¶¦c·\İv\à‰\Û\ï|=ƒi!^ôBÚ¢…šd&2-ÉŸ\ÄÀœšœJ›Ï‹d\éy:øj¸=ğptû6©Qª) \nVyüyš\Ø\Ó^£~¥ş¤òjó\Åê¤Š¡;\ÉP İ¿Äª½Á\Şdo¶K\Z+ö”zIÉ°2su­¾¨\É+T;\ÚT{†=\ß^l—`\ï\æ\ÓV\Z¢aCô\åb#bA|\æ\×\Ç?)\Ó\Õ||g_½X{\é+‡…P·öÍ’‰\Ù\ã&\'`@\Øh\á\ëK\î×·ÿ)ª\Ç\ëÃ¸%Fö—\Üòı‡3UOø\ì [×¸o\íUo¿¼iõ¹§qÛ›\Ê\î\Üë“\î¯Om[*\è6g\Çõ;^	JW¾‚;²–~‹\ĞN“şt/ôG\æZy~`g€‰/¡l>lò3lù6\Æ2†bVƒ—öD6’¼\ë\Òt\ÔRı©©\ÄÁb]\İ\Çô%õlrz\ÅWWŒ¬T\×=\'¼\èõ*\é\Ä\Ù\æp8õt•f–{¢ŠK\ÍD;\Ó\ãPù\ÂQû\Âùaê‹´®0ó™!\Ó\ã\é\\—ÍŒZy™öu<¼¡›qƒ!Ú›/gY†e|\Îs\ŞO\Îv\ä\ê(¼ \ÈÁˆx•ş\åZ[!b:&wn\Ğ\ĞY>\×Ÿº®É‹L¾—\ë\Ñù ğ¢¹¶vC\ì\ãWó\ìŞ¾\è\Æ\'X5`”§d|Í°s\Ö9÷Eşk\Çş^æ¤w–‹µÿ\å@`\ãO®Zö \ë~k^Õ¨9KÖ¯\nÿñù·Ÿ$\è\0Pˆû“\Ñ\ê!\ÍV\ì+%\á!–ó½¥\Ş¯,¾`½\\˜oF\î\'—\r“É«]x›d\æ–e¦¹m\î›d²šÁd3­K#¢[™ß´B\"GÁ³QG-€²\É\èö$“wE¡³j\àğbc5»œh²?€\0Pg­6´ÙŒ\êØ˜·}›`\'Ù¿\n@ªÉ˜­›¸9}ŠÀtn®#~©Ğƒ‰%˜¢¢Gnn<V‘ĞŒ+.õ\íËŠCp^V\éd©¶VŒˆšø¢\Ã\ë\É\Õw9õ]AjClö\ØU\ê;v(¶ô\È_ú˜™”\éC\ß7o^‘<ıO“}6BZ3±\ï\î_¶“…|\Åsüù±ü\ã¶`\ì›\ïñİ‚f’@%º\İ\Ô]²U}T= rCß|\Û\ÅZI¥-{ME$\é€\áÃŸ5ülg\Zn0¬7l5<j“½ƒ#\r“27\ZğgòÅ·1«\Ï³ú\Âoc¸\Ä.z¥ø,FU%->wû®r*\â\äRßºT\ÔÏ¯˜?>Ìº´†ø‡.‰;rI\ÛÁ#m\Ç\Ş\ÂYa)µ/\Ş*\ÆN\Æ\á‰\ë\İ õ«\Ûú\Î:}u;\å\Â\Õm\í÷\Z=\é\è\ïº:ÿ¹t€\'+C¿¨®\"±†-ab\Z°\ÖöÏbü9\ç\Ùg>\Îxùñr\ÈN\rq±ñ\ß\ÕH¦ùiˆ\Ş\Òi±kı6¼ôŸ@\è\\\ë_,¶œ‹vŠt‚m\×WfGDû\Ä7_ñ2Ke‰…—²j\ÖÀ8\í°\Õar\æ®C\à1\Òÿ\à\0y‰ö÷+ôÍ¹}¦\ÈşÑ™Ÿ\n\ão\Ä\ä\èq1ñ\Õ\Ûöcû^‘U\Ük_¶dÜ•\Íı†›\äóx’ûL®[8yò\ÅM|\çrÈ \É[\å\\ºo_É£œÁ–h23)’ğ[™\ÔN¿¯)QÁ¢aÿ+\Ç\r…(„\Ú\Û1cÑª\İÊ²¦\Æx\r\İG”\Ó~\Ó0²{…­\è\ÆÿNñƒŸ§\×W\í¯:ûu[¹Ó£m\ÓÿP\Z\ê-ôvÚ­\â\ï 9]g¿ş9\ìô$\Ê\ÏÿÆˆ\Ê\â\ï³Gaˆ|]{\Â:º·\Óı\ZiŒ¡4’R	¥­”®Q\na&]7H\0=\å\ë\àzª‘‚‘îƒ¢œ\Ê\Ê\è:BôC\å5t?\ÕyZKƒÊ£\ĞHõDŸMt\r\Óı}tL\Ï£ô8•¯Ã£\í\Û\ïCe\ÏJŸCñ^‘¨¿E\êóAjgp\Óı`ñw”)}Ni*\Õ\ÙN\Ïò)a™k<?’ú\ÚNmZ\Å8©»)m¡ºM4¦)¢/Ñ¿h/\î©Mšh§÷·\0&©·B€\ê›\ì\Ô\×\çTÿ ]£c°2\à$I&¸\ÆØ³”)\Ä	\âi?6¢\ï\Ï$¨	ú¾ñgy*¼œ\ÈsH‚7y©K™zÿk\"¯}şc\"¯\Â4¸.‘o‡f”¨”8õi\Æ{õ¼, Âz^\Ñ\Ë÷\ëyU/I\Ïkzş=/öóLÁ\Ïy„š\È3°òi‰<‡¼>‘—ºÔ‘Á\ÏN\äH\æ\Ï%ò*a+y\r2ù‰¼fH˜\È\á¤TÈ› @œÈ›\áz¹!‘·È¯\ÈpZ\á\Z\Óoõ¼±\ËxMb,¦¿\éys—r«È›~\Ñóv1³ª\ç]”wš=z\Şİ¥¾Gôc\Î\Ğó\Ş.\å½m¾\êu†\ëù”.uÒº\ä»\ëõ\'\èù>z^Ç¡\Öf­Kÿ\æ.\å\æü\Ãj«k\Ö\ŞP5=4½raehZİ¼¥ók«k†2‡öõ/,\Ì\í“Ó¯_¿\Ğøšª\Ğèº¹u—Î«\n\r­›?¯n~\å\ÂÚº¹}CWÎ\Ò[,Í¯ZP5q\Õt*œ_[9{W¨vA¨2´p~\åôª9•óg…\êfü\Û~B\r5µ\ÓjBs*—†¦VQGÕµV\Í\'¨jç†¦U\Í_XI×™‹\æ\×.˜^;M\Ô_\ĞWEh\Â\Ü\ÚiuÓ©\Ïqc«ªÍ®œqqhÈ¢\Ú\Ù\ÓCıûõ¿®jşñ¦ş}û\å\èµ•FQ7wah\Şüºé‹¦\Ñ§.\ZB\ÏçŠ¡U\Í\í\Z¾˜\0\r™]W5gÁœ\ÊŞ¡‘UT\ZR§\ßS•\é•!zWñ¢\æTRõ‘ujU†J*§Ï®Z\Ú;TZ9{vå´ªPI]\ïĞ¨\Ê9\Ü\èÊ¹\ê\Í\ï\Z·°j1ÁX¹paÕ‚:j9¾¦nN\å‚\Ğ\Ø\Úi³\æV\Í\ï\×@Ì‡9P	³)7–¢ª`&Ì…¯)6\Òu.L§ó|˜Î·ò\'ùsü”\áø\ã0jÉŠd¼n ¦“\ã#\êŠV!š\äu0–RKQ«†JC	C¡\']\Ç\Ó}]GSñÆ…To^2Tÿ<ı\\©÷,jô¥\'!¸’`šM\×ó=.\Ğ\ïª\èZE\×\Å:}õš¢\Ãnº«\Õ\ë	˜\ê½N§zsô1Í¢²:˜ñ€(\rÔ¢–FYCy\Ñ\ÛRºN\Õ[ˆªõ·.\Ô\áŠc¦Vo5M/Š\ßÏ„E:¬¨è­£ÿ4ó£Á*«\Õq:=\ç8ı±VSû\ÙúXş§\Ú!Buké¹€¦?ô£tÍ‚\Î1õ§·öƒœ.}]Ø“\è\çJª/F1W/™ÿo1tm‚Nbœq¨¦\ë”esaİÕ¹/‡k¸¬\ÓG³\0zS\Ù½·ùú“Z~\ãè¼¨ó\ÍG\ãu*úVÁ\ßñ§bŒ‹/\Z]œ\Ò]ñ4M\ÒA\r\ÑK5•\Ê\×\èw3ô1…ô\Úõ\ã£­\Õ\Û.\ĞyAÌ‚š\ÄX:x\éb*\\4Ÿô1^L\Z“ ‚\à\î…ô–A¤œ³©qô\Õ1\Ó÷\Ó˜\ï«\ç\æP\Íÿk»~\ïJ£‹>\ç\Ğø¯\ÖGS¥cJŒg˜^wš\Ïyt”À@m\'\ç\êsÿ…O¥>\':\æ\å\Â¶\ëX^D\ç©t\ãx¾.C\â3fi\nşgJ`;;A\Å\Úµ\Ğ[\æ\Ñ1›J\âc\ì¨y¾Î¢\Ä§\ê\ï]J=,\ê„X\àlq—™½¨$£‰\Ïü9zı8Ô‚g_„ÁJÂ³\èEÈ£*O}ÿ—Ø»°\Ç\éú›\ëº@‡ÿ?\ÇX\Ç\Ç\Û\Ï×©\ÇQ]\ç<×˜ª\ã¨V\ç“\à,Ş“Àq43¨\Ş\âM/\î-Îó¨ş\ÂNÁ\Äü’5.“Ï¿c\á„£8$stˆ;ZU&\Æù¿(N\ãÙ#\íÀ®\èmq\âMS;\åHœ—¢÷£\ç\\’\"qLM\×\Ï\Z…\á$\ÓD­yúø*\Ü+ q†\Ş{\\6-\í\É‡& ˆÓ¿ƒ+/„§w—‘\\Œ\ç\íıŸaº/X\è¸J\çóÅÀ¸è©Ê«t­Ø¡\ãz\ëP¼V&0$z[¬\ÏË†÷¥\æ\Íù÷\Î×±S• \ïô.\Òù?K\ï‘\çµ\Ä4½\Å:›^†^\Ôş*º›\Ñig—›–ÿ¸g”\Òó©:–ÿ/òşÿª%ªÖ†°\Î\ë…óöd¥N©û?_ğLP¹«Œ\ëÀ®Ï‰K¤T©¿4J*–.§s\á=‰yu\ÎS•úP§kòùú\Ì½Š½%ºK™\Û\åÿ\ë\éò‹\Z0G ğYi/ùª!Š{Á\Âh+6F\Çi†\ÂO?óú’\ß}NË–{ƒ\Ëê–­\\\Æ/»v[¶<ğ\Ö\ÛT¾¸Ns\æ\Ñivf\Íõ¯[1·n\îs%˜µrÖªY-³¤7fá¬¹+\ç\']{eõ.\í”B”>£ô-%™\î² J‰A?ß« ¯|\0p€÷¸=\É\Ï`\æFó(·pªg\ÒiF-ªj\ÜÁ•5·×¼QóiÔ¯\nÓª°ª¦±>)°À{\Ã\Ğ@x)%öLûgJ·½[a¿V%¼\×\á*Ì»²¯’L üZ\ïRb`¢{‹¦”\r)tM¡kJYJlPz\ÃJ‡©\n•~Ô²·’	+ğ\İ\í£\ë\èú*%E)P{XV´U	\î1\Û\nŸS‚Š‡ğ¥ôQœ{xV¨Uñ\îqû©<_ñ\Ñ{³¿\â\Û#e¿\Ò@÷\ë\è|ş$¤øöö\íWH\r|{SBñ«\Ó]˜E\Âe”Uv*n\ê˜e]we@q\Ò]Š’ª¤Y±*6\ÅN×J/%‹†Qº+\é4U†)œ\0ñ…ü÷=\Î@\á•N…\É1ƒü5ñM–ü_‰\ëÏ‰\ë/ò)zC¨U>µ\×,¼\êò)V\Û÷ø…\Ï\É\ß\Ê_èµ¾—¿ˆ\×úbOŸ~…WzEşL¡FW•®¢b]\éuò¹øóö\Ï\ä¿\ì5[i„òg{#ñ«\ÓWhº2Uş+ü†ƒkå¡‚“ÿ&#Ÿ³ü‘ü±ü	˜![şP>+ÿ$ÿ7X\ä\È\ß\Éÿ¤\ë\Óò¾=rÖ¡+]ò>x—ƒ^ò6\è.?(‘€)”\æQR\àÿ\Õu-\ĞUUgz?ò¼7	—$77o$!ñ\0š{ò@4E\"\Â4i°‰\Z­–\Ä\æ‚\Ó*% \Ô\nÁ\0BHğ•Qn\ÎA{c\Ìc)µ]µ]\Å\ëtjg5\Õ\Ö\Ôjk\É|{\ß\Ãkf5+\ßşö\Şg?şıÿÿ~œs_!9\ìøfš~+Q 5òG\ä„$Ÿ‚T\Ê/n#\ì\êT%#r’Y¸¼\ß\å}.ï‘½°2*ô\Ù>¿	Ç“}NZ¦j\á7Ó¬“?€\î¾#Ÿ…\Ğ\ÏÊ½PX£•$÷’V`-ÀI?B:uJ\îv<ip\Ô$©>ş\n\åó²W+ğ˜\îz\êuªMSs ¨ú\Øe£\Õ\é.\å\íI\ÖLù‚òr\Ê~yPşŠû¾|L\î€\â’d?rŸ’O\Ëg °#ò	y”¤LM\È-N‰aJ+YnA\Õ\Ït˜(±L\Ş-¯·sóı\Öy7¹X\Ü<\nHR,¿A\Ë$Àˆ\ï$ô\Û\î$ù\ÌûG\ä7\Ñ\áz\Ùó’§j¡’½Å†w\Êo\É&­À&yCLmvj\Zò\Û\ä\×Ñ†!WÈ•˜&ı£r%”û®uò‹Tkô\éŠ;\ìò*sX\Ş!oD ¢òÒ¯\Û9\ÅÈ½A.G¿YQP\Õı¦uµ¼G®#©²S\ŞK<)²xF£–Wa)F@F\êQğ·Œ„C\Ş‡¼\n¸‡Ü®kx\Ë`1 r®#OÊ»\ĞFH^gCFk¹\\-ÿA~VX*¯“\Ë`…8¹Z7òR\ÔSX¾V“c€$¯#|¹JõğÉƒğB™F ñvğı\àA\Õ$A\Ş*o“·Ã­r¼\Ó\İ/[\áú­\Ä–\Ó!„\ë\å5˜Z×\İ\0‡–\êløù°\\\"0o \Ë\ÙNnÀ„¶\'o.—¥0]™,Ô¦(‘E±BUv •\n‘\Ö\îXä˜‹•!Š\ì@‰\é4O\æ\ã._V^\äy°aÒ¨œ½Íƒ;uw-\Ö<Y@\î˜œ+\Ëeô“+ód\0l\ÊEr1\Æs•œ/`<‰r.¤O“\ä»\âSòğL ‘\êÁ\å¤\Z€À3(ñ\"rÿ&31\Å\â3g\æ,S	õØµA|¦=\Ã\ç”\Ï3¬E2ƒdKõqƒô‡¥zn¸HüFô@\Ñ>ó\ÏI\Ä\ä\Ì ñ2U|¤}5\Å\åd°š—\Ó\\sY‚\ÕB\Çc\å\ÄÇ±|ñ‘ø\0\n\Û`ù¤W‹s¬˜ôŠ6¤\0«z¬\Êÿ\å	\ÔT¬¯?¬\ÃŸ˜ø“øDü™$‹w\Å{\â\\\êzñ.i˜øRœS$EüU|.ş¦”\'~E^¿P4¿°‹\ÔRÈ¬7’\ì5­\Ù\âw\âmµ\\‹·\Åkš+\Ş\Ğüo\â\Íÿ\"†”t\â\r—*l=ºQñ\Í?j\Å2\Ä\Ïp]Io‹\ìiF¢5Kü†Pñ\È\Ü\'õÕ·\Ä\Ïu+?Gi8—xÍ­õ2zS<¦k¢ \Ìv+UŒ£@.¼\èv?\ìrTÁ¹®¶Ò¦\Â\'H*ñ\àd“,¸xE¼Š¹\î	NA±)¬q„d¯og8\"®\ØÔ„8\â¤g™^\Ë\' M@7\Ğ2ğğ)À\Åaqˆd£¯Cü¬š·Éš)~Dv‡€\ãÀ8ğ+ e\"Wı,a¡ø!\Ù\n¼	ğ©SbŸ“j¶¢\ê>d\ïƒ<û\È$ H’8@ü\0=±—„€v \è¤\Ø#\â\í\ÆüL«@\ì$A \à\èN”\ßI*İœo\İ@/pˆ\0	LyR\ì†\âzEĞ—d\å‰\Ç\Ñ\ç\ãP\ì\ãd1\ĞqW\ä\09#\ça´\Ñ*AŠT;\'\ï\Óñ}5\Ï\ÄcÎŒ3¦Û’;Pr\ê\î G8hy»“˜n\Ë#Ô›	±\Ô«€\İÀ@Šg\Ä\Óva^§•.F™^\Î[Pj	»€Ä€7\Ú\Ën2G\ÅF$YPøFq»]–\×ay\Å(ú\0\äÜŠp·\í›¡\ÍZ·[\í¬Y¨¶U¤\êjbey«Dl@µ\r\ès,¾œ$|k=¤\Ä]1ÀÅ“\â>mÿc.\ß\Î\×\å\ï¸üO\â>;7¯\Îw$¿O‹rFò¡X‡0	¡0\0)\Ù\é$¤˜k­fñmr?ÀH£ûz\Ø€³€€w¡¡.Œ£6o\ß\"k¯¾^­60\"\Ö\Â\Ö\"\Ö!¾wıbo\"<£c­\âNÔ¸ùw¢~›P\ßş\Ş*\î\"/	µq­‘uÀ!\0[\Â\n şPÀ\í¨ÓpPk\Ëmg¦yU*\Ú`¡v\İMµ·¢«6¥\rƒhC•68 k0ˆ5˜\rkÈ€¸6¼Â¯ğk •5d\ZıkÚZœ„d³\\´ £¸^t4!J\í\Ò2Kc.Œ„†óÀy\à\0¸œV/gƒÀe\àbp2¸¬,V\Zcˆ´qúA¸A2&D¦\ÛE\"rTI`\ÕE2¸œ\â²ü\Ø^N«®\ÒÁª«°\ê*\å\ËK\ZA’¢¿ru®\Ç\n—jc©\æ\ãŸ\ÃE<\Ö=ü\Ï\Ä\Ãÿ\n|Nò¯\ĞøğW\às(\ê)\Øğ)Ü’ø„ò\Ïø§\Ä\Ç?\ÇUI\ÂuJvrµS\Ô \\´\ë€~`ÀRÄ£¸>‘0À\ÈC_×±ıü—hñ=şœZƒù»ü·š\ßq\Óÿ\éò¯¹ú´Á\ßtùW.¿\Ä_\Ñü‚›~Ÿ\Ô<KO\æ\Ï\Û\é\æ(\r\Å\éŒ3öS\íBˆKù?\ãx2 ş[§¼Vñ\ëÎ¬ \Ùa%ò÷!\íû„ñŸpõÚ§ªüª\í\ÏÕ•O\Ú\Æ\\DN!\'9\r›Û•ô7`%Á¿ºüNŸBAdŒ\ç­µã„²\Õv]q¾•ÀndMjca\ìF\ÍËœº\Üü•\ÄÔ—\í\Ô#\\\ì\à…¸˜d~h%«×ŠY«W{Z¨W{\Ú\Ô)Voge+Á˜e\'`\à\Ìb‹\Õ^ŠŒ]T¢¯„\ì\é9fTW’e5( K\Ò¤©A§\'Øµ\ä$ÀPüZ{z–®w­Y1\Ê±jLƒ™¬\Zûee”U;U&\î\åùNnnŒ1R\ÍIIf\å(+#\í\0Î¦ô};!ÍŒ\Ò÷\ã\ÜY	ô]\å:´a›\n\Ù+z\àQö’“˜jzF˜º§±6F<<5A\ç:Ù¹f…•F\ç’n\à40@&†ŠihŠ¶Ÿ?|ş\Ôù\Ó\ç\'\Ï\Ë\Ê/Û¿\ìır\âKA\ÎUk?\×{Nœ«-\ÍO\Âp¿JüÀ\0pl¥S77ß°\Ò\ÙJµ>!\\\Ë\ÔMÀ	vÒ«\Ø\Í$œ-WE¡€\å\'\İl´f0õE\0»a¡.>‚ğC€±›Xƒò?¶,´9\Z”¡F\ÙB6_ks›m&Á®ó!\Ğ|ô<=\ÏGOó‰d×°%8—aK ¥«X•]hø­rV…>&t8a#º \Éa7v8`G\0:€Ns–©/õ\í@N\0œ„x‡k\Ë×–6l\å­\Îƒù,Bª—±,È†•²€l\Òn·ƒ\ÛÁ\àNp\"ù”A?‡\è{„\Ò÷\è;vzŞ¡ú\Ï\Ñ\çqF\İ9F÷i?@S\ïs¦%¡_6\â$x•\'kOˆ†ÁBŸ‹\ÍOö0ƒ¼KC?õ¦›\Ç„\Ñ}”\àF÷ô‰#\Ò8¢¢‡\éağ´tk!;Ï¾\ĞúŒ\É\ÊÎÕ„;\ëòlRóyö±¼KøBU/«ô\"0®s\Ó\å«Á°*¯vy\ËóùB‰Y3ù,£Kúyn!ƒ§\ée\"¬ò½.{\ÜüT†\å‚Y¹,ÂkY³\çµ\ç<Ï\Ó\é\çØ \æ«üg]~\Æ\å§Ù ƒ¾‰•\Âzˆ\0•@h\â\Ø6§O\Ä\n±-¤`\Ä\Ëo&•@;À\á#¹d+0\0p„\êùU&\Âz \Ø\núıƒZrøM|¹YX`…\Ë7ºü—ù\rz¤×»\ée\\\İ&³(}\É\Ş%Œ(\Ú}Š\Æ\ìh\Ô\îQ4bo’ a{£4¬Dú\İO2\è÷i·\æ\ítN\âm#\ê‹\É\è6º\r¶Qu°¨Q!üè›¶?7ˆôNz—šfô.ª~¨Ã +\è\Ü\æR5YC\êƒÀô\Z»§*O-3‹íœ ‹¤g\ê\È\ÕvmƒT_ˆ,t	³Q±Œª·~´”–@šP”–8UW©‡›%vn\Ë]I(\Îú““\ÌxC\Ü\r„Ÿ=\Ç|¼\ê\ÍÛ»:\î65·\Ü\ã\å«ÿx—u½¹«/Q•	•÷-Xhö\í¡Æ=\Ò8¸_\Z¡şœ<3´A?rö?\0ö{ı\é\ã=\åfhOy%‚@Æ²¢®\ØO±³ı\ÔF\è+£\àµÃ¦ò=¼O›s7X]y\Ü\å]¼O™k”}\âÎ‘?±IŒÇ¤{ğ û#&ºğ$;¢Z`\ÇÀ*=\àòQ0†=\áòa—¹\åÄ(\ÇE‹G\ìjÓ´ryŸ£§\ß<°’©¬d©p¹\Ü\å¹`åŠ†Ë³ù5š\á©ID\Ò\ÔöŸÅ³u\É<;¶g;3sMf¥ó¯51\r¬JÄ¹,\İ|Áãµ›²D—İ¡ö\ßuc¬ƒ\ì\"\0\ç\íö(¼•·\Åh¥3ªR\Ğÿ°J\Õ\ÆI\ßr<>³pœ¾EVg\0N\ß`EX\Ñ­Y¬“ªÓ¬HO½B½y±\İõ®À>P[N\ßfùú\Ùı“˜l&Y\êYØ\è/IÀ\È\Ûô\Ø(=OªIış\Î\Şı2ı=\é’˜]V_Ç—j…-\Õo\Ê2xƒ\Ëõ`¥„Z°R¼\år\È\å\Z—¯\åu6…\Û$\Ò\ÍT?0¤\İ`uğš \Øù…zª<`gL7‡\é.ª%N l/D\íT!ıİ¨ú¡i\ÔEi—]™úvŒ\îUô2\íÄ‰7\ê4½\×Éœn’Qz/ñ8ı\ÓN;Mµ¼\Ş)0ño\Óÿ6=ñow0ñ1ÛR\Ãl³Ri»\Ş}\Ò¬ª\×[Üµ`İ£W—›\èJu˜¢\×\Ò%¤C\Ç\é\"û+Mz‹l«ÎÌ«Ò‘%öò›\İH\İõ±ˆ3{\ê±Ö1CgX¶¹È”n${¦ÁQJEj\ìš\Z7b.v#X<b‘¹n$t#J“*\â$$š¡1fc4AZ lHœ8c|„?©ßˆw\ÔNI\ÑÕ£\êV¦İª\àON \è`8L\Ãpõa8FÆ) WÔ›ùQ\Õ.®\Åù\à(v€lšC~¦ô„ŞªhÁüNUµ\Ùwœ¥¿YÁSùq:ó\Ã\ïü\Ğù$Be¿=«\Ğ-Ÿ–…»ñ«İ’¸…¤ˆe\à|—:\ä0&€x,\Ô¤	h:ÿO©xX7‹\ÆNV l\Ö›€À‡V²œ²\neª,»j‰–#\Ñnjr#UõX²m‰†\×ò\Ğ=ı\æFõ(h[½‘3Jõtö&¬Î”…\Z{¸qönú3=µ©)\ï8’\ï`‚M¤¯¼ÊÓ¯\Ò÷ó?=\Ôx\r\Z\r…\Æùøh¢1ŒbUy\ì\ÑD\ãa\àÑx½#t\×\Ôë ZU¼Ë¡æº¥ŠC[J\Ë\Í-›…±t\ß6¡M7¯67¡•\í\è~üak0T\ëVœª»‡ú«}Y}¾¾ôù>\ÏU¾\ä*_\Â<_\\¥WøH¹¯¸$µ´\Ä3\ÛHcx‚©…Ü¼\Ô@\Çc¥\Ğ\Ó´z…#ôÑ‡\é#¤PO‘Gœ\é\ÙfÈšƒŒv \è\"€¤_£­$•®¢«\Õ26Í©Ğ‡pxi\Zò+¨¶ò\ÂV^h\×¿J¥Uªk©\'ÿ\Â\Ç\Ç\è\'¨0Iÿ„\ì?Ò_H\re”\Åt\â-+\Ó:©esM7-99%59!1)9.~Z22\ë`òºB\Z\n²P°)8<œJU§8ˆ=±˜—q@‡zøÇœùiNJVü\ÌŸwFJº\ÈLiºŠF\ÒI\ãª\ÚH\ß\\¹\ÊhŒòÀ\ÊH•\Ñ™\Ö\Ô\Ú<D\é\äF\Øö(V\áˆ\Øe ôº¯µ6Gi¶º\Ü\ã\Ç	–’Hc{\Ïc-CŒ\ÔF\èöHÁ\ÍÍŠB75GÛ£^²ªyˆ\ÑZD<\Ö\Ò\Ò©nljV%[ŒœH‡ú-\Îîœ–H•Šô\æ´õ\Í]]*«ğ\Ò_—¡s¤ş†J‹\"³n\Ìih¯¿¼0½²î¥¿ğ\å-¡£®®p,\İ!\'¼~=\ëu.’\ëÿN+úrø¢¨¦©®y\Ói³z\é\r[q,4\ZÆ–¢¤\ÈJ\×w\äuv `\ZF\Ëru)”D]n»]n‹<\ŞYP­ª\Å;\Åe1ö\Í4û‡±“\ëqúceÒ§›¿\Öya·\áºf¿U\Ì\ËxP6J].\áEz+v¹\È\Í/p¹\Ğ\å|—.\çñ\à½L-F\ì\åsœŠy¦7\nÆˆ5c˜Š\íi	\ê÷–ÿKd›:ó„/¸®ùeÜ¾Q\ÎG¥¦:9ş\Í\ê¥,òˆx\Ót\ë\ÕU¹9±r¹yn¹Ó¸BZ$l}vy…‹òMWG}vºÏ¼(8.Ô¯w©ˆ(Tš=hû²T‹~\ËKv\ã9\0œ\ĞgJ\ŞÔ©\0JbÏ‚\áUk$ş;\âş¹~¤ıZ9Î¥\âuÍ£üıE{\ê1\Ìr;7_Ë³\Ü6\Êcw\Ó \Ä^u?¢ğ[	$wT\×dnM˜ VSOT$3;¦»K\êq½«®yº\Ôaµ \Öü\à\Í*Í«È=\İo\Æ|Ü¯\Ó\ÎL­ûAgöœ\Çl1\è\Ú\â’1”Š\'qÛ§·P)(2µ+¼‰{\ÂK®+¶06`\É\r ò\"Y~7\'-3\æEjXíŠ˜\Éª\ãy,’–õÿ¼@Í°šV\ás^\é½Kk\à‚&Â˜¶\çZ86ûT\éÉ\àzº¸œ\\¾(u±Åƒtô²Lu¥(´+<\ÌOğ¡†»¢ü¹†»o­\×\åv\ìW½#¡ö(w\n\ê\Ñ%\ÑA£\"…EjAı•«\Ğ\r£c4­B,_´1Qÿ‚º+›»šT™T/0ab\è!†•pÆ°\Ø+öª\Ë¾y«\ê2ª\æP8\ìª.Œ¾»Œ+½\ëri¨›¡‹¯\éô\Òu­X\ÕwxXœ“ª«´\"E\Å_R„ø¢ h-†/ªÄŒ¨D\'\ë]3¹\Şv{võqQ\ãj\Ø]Zh\×ö®Ñƒ¾ÜŠJ!n±+¶\rrAñ46\ĞõPš*¾¯•\Ö-œ/’©\Ä.Š\ìõ]4¯ûº˜\Ò4” ¶×¦•µ\ØcW\ê}62³\0‰Ÿ!±‰d•\èX‘zCF~óP­Š\'µC‰\à$R\ë§C„L÷-%Cd\éµQñR‰Š‘†H’IDµ¤‚ZRS“ex—\Ğ\rWg\Å%G\â_P\ÛBù_„•[f\nendstream\nendobj\n69 0 obj\n24029\nendobj\n68 0 obj\n<< /Length 70 0 R /Filter /FlateDecode >>\nstream\nxœ›ùÿ‹üÿÿøÿÿÿ£ÀÀÀ \0Â‚\"\0¢\î	P\nendstream\nendobj\n70 0 obj\n30\nendobj\n71 0 obj\n<<\n  /Type /Font\n  /Subtype /Type0\n  /BaseFont /EAAAAA+ArialUnicodeMS\n  /Encoding /Identity-H\n  /ToUnicode 72 0 R\n  /DescendantFonts [73 0 R]\n>>\nendobj\n73 0 obj\n<< /Type /Font\n/BaseFont /EAAAAA+ArialUnicodeMS \n/CIDToGIDMap /Identity \n/Subtype /CIDFontType2\n/CIDSystemInfo << /Registry (Adobe) /Ordering (UCS) /Supplement 0 >>\n/FontDescriptor 66 0 R\n/DW 0\n/W [ 0 [1000 277 333 666 222 277 333 556 556 556 556 556 777 556 500 666 277 722 500 556 666 556 222 722 666 277 1015 833 500 556 500 833 500 277 277 556 222 556 556 277 610 556 556 722 556 666 500 277 556 556 556 556 722 500 556 333 556 556 333 610 277 666 666 666 500 777 277 722 722 777 556 556 722 556 943 666 556 ] ]\n>>\nendobj\n72 0 obj\n<< /Length 74 0 R /Filter /FlateDecode >>\nstream\nxœ]”É›@†\ï~Š>N#\è˜‘F–\"G‘|È¢8y\0 )„ñÁo\è¯Æ‘‚\äå§º–¯\n*;?‡~1\Ù÷ylO²˜®\â,\×ñ6·b\Z9÷\Ã\Î:ûvQ•¾\ÛK=\í²\Õùt¿.r9\İh<§\âmÒ“\Æd?\Ö?\×e¾›§qläƒ‰\Òm÷¿\ÍQ\æ~8›§_‡\Ó\ã\î\é6M\ä\"\ÃbòtO†˜~³Ã—zúZ_\Äd)\Îó1®‡ú\åş¼ºÿ;ñó>‰qI[jh\Ç(×©ne®‡³\ì\ŞòõÚ›·\Ï\ëµß¢ÿg¯\nÜš®ı]Ï\ã\İzí“²«\Ês—£*¢|RÁ¢BRe‹*P%ªLªr¨\n[zA\Ô+J³\×dĞ˜\r6\Í\×b«P› „|5ªKªğI\Ùù,|Q,|U[ø*\Ø-|NmÊ§~ğ•¯(ø‚æƒ¯\Ğ(ğ9\ê´Ê§6å£»¾R£ÀW\Ñ3«|š¾€ŸS>ü|¢6ıtğ•L\Å\éüè™ƒ¯\Ó(ğ	ùœò©R>ú\é\àf\ä\à«TÁWÀ\à”\ï_P›ò©\r¾š.yø<U{<sğ0jñ0ˆ<GCG¯6´†ÀS\àağš†V£À\Z”Îˆª%¶ÀŒ\Ï|\Ğ©\ÒwŒ\ç%(•ø\nò\åƒ=À\ç©3\èŒ4»ò1\Û\0_Aƒ\ÎHı\à\ë\ê´:tG\Ø÷ñ\Ø0Ş¾\Ä0 Nc\ßvÎ¶;­½\Íóº\Ë\Ò\êLKl[_ı <\Ó\æ•>±XQ\nendstream\nendobj\n74 0 obj\n556\nendobj\n75 0 obj\n<<\n  /S /Document\n  /P 76 0 R\n  /K [77 0 R 78 0 R]\n>>\nendobj\n77 0 obj\n<<\n  /S /Part\n  /P 75 0 R\n  /K [79 0 R 80 0 R]\n>>\nendobj\n80 0 obj\n<<\n  /S /Sect\n  /P 77 0 R\n  /K [20 0 R]\n>>\nendobj\n20 0 obj\n<<\n  /S /P\n  /P 80 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 30\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 33\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 34\n>> <<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 5\n>> 21 0 R]\n>>\nendobj\n21 0 obj\n<<\n  /S /Quote\n  /P 20 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 31\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 34\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 35\n>> <<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 6\n>>]\n>>\nendobj\n79 0 obj\n<<\n  /S /Sect\n  /P 77 0 R\n  /K [8 0 R 9 0 R 10 0 R 81 0 R 11 0 R 12 0 R 82 0 R 13 0 R 83 0 R 84 0 R 85 0 R 86 0 R 87 0 R 88 0 R 89 0 R 90 0 R]\n>>\nendobj\n8 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 0\n>>]\n>>\nendobj\n9 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 1\n>>]\n>>\nendobj\n10 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 2\n>>]\n>>\nendobj\n81 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n11 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 3\n>>]\n>>\nendobj\n12 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 4\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 5\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 6\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 7\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 8\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 9\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 10\n>>]\n>>\nendobj\n82 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n13 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 11\n>>]\n>>\nendobj\n83 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [14 0 R 15 0 R 91 0 R]\n>>\nendobj\n14 0 obj\n<<\n  /S /P\n  /P 83 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 12\n>>]\n>>\nendobj\n15 0 obj\n<<\n  /S /P\n  /P 83 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 13\n>>]\n>>\nendobj\n91 0 obj\n<< /S /P /P 83 0 R >>\nendobj\n84 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [16 0 R 17 0 R 19 0 R]\n>>\nendobj\n16 0 obj\n<<\n  /S /P\n  /P 84 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 14\n>>]\n>>\nendobj\n17 0 obj\n<<\n  /S /P\n  /P 84 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 15\n>> 18 0 R]\n>>\nendobj\n18 0 obj\n<<\n  /S /Span\n  /P 17 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 16\n>>]\n>>\nendobj\n19 0 obj\n<<\n  /S /P\n  /P 84 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 17\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 18\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 19\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 20\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 21\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 22\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 23\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 24\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 25\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 26\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 27\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 28\n>> <<\n  /Type /MCR\n  /Pg 24 0 R\n  /MCID 29\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 0\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 1\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 2\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 3\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 4\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 5\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 6\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 7\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 8\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 9\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 10\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 11\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 12\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 13\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 14\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 15\n>>]\n>>\nendobj\n85 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [28 0 R 29 0 R 31 0 R]\n>>\nendobj\n28 0 obj\n<<\n  /S /P\n  /P 85 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 16\n>>]\n>>\nendobj\n29 0 obj\n<<\n  /S /P\n  /P 85 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 17\n>> 30 0 R]\n>>\nendobj\n30 0 obj\n<<\n  /S /Span\n  /P 29 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 18\n>>]\n>>\nendobj\n31 0 obj\n<<\n  /S /P\n  /P 85 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 19\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 20\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 21\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 22\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 23\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 24\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 25\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 26\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 27\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 28\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 29\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 30\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 31\n>> <<\n  /Type /MCR\n  /Pg 34 0 R\n  /MCID 32\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 0\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 1\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 2\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 3\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 4\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 5\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 6\n>>]\n>>\nendobj\n86 0 obj\n<<\n  /S /P\n  /P 79 0 R\n  /K [36 0 R 37 0 R 39 0 R]\n>>\nendobj\n36 0 obj\n<<\n  /S /P\n  /P 86 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 7\n>>]\n>>\nendobj\n37 0 obj\n<<\n  /S /P\n  /P 86 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 8\n>> 38 0 R]\n>>\nendobj\n38 0 obj\n<<\n  /S /Span\n  /P 37 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 9\n>>]\n>>\nendobj\n39 0 obj\n<<\n  /S /P\n  /P 86 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 10\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 11\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 12\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 13\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 14\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 15\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 16\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 17\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 18\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 19\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 20\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 21\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 22\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 23\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 24\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 25\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 26\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 27\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 28\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 29\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 30\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 31\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 32\n>> <<\n  /Type /MCR\n  /Pg 42 0 R\n  /MCID 33\n>>]\n>>\nendobj\n87 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n88 0 obj\n<<\n  /S /Table\n  /P 79 0 R\n  /K [92 0 R]\n>>\nendobj\n92 0 obj\n<<\n  /S /TBody\n  /P 88 0 R\n  /K [93 0 R 94 0 R 95 0 R]\n>>\nendobj\n93 0 obj\n<<\n  /S /TR\n  /P 92 0 R\n  /K [96 0 R]\n>>\nendobj\n96 0 obj\n<<\n  /S /TD\n  /P 93 0 R\n  /K [44 0 R]\n>>\nendobj\n44 0 obj\n<<\n  /S /P\n  /P 96 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 0\n>>]\n>>\nendobj\n94 0 obj\n<<\n  /S /TR\n  /P 92 0 R\n  /K [97 0 R]\n>>\nendobj\n97 0 obj\n<<\n  /S /TD\n  /P 94 0 R\n  /K [98 0 R]\n>>\nendobj\n98 0 obj\n<<\n  /S /P\n  /P 97 0 R\n  /K [45 0 R 46 0 R]\n>>\nendobj\n45 0 obj\n<<\n  /S /P\n  /P 98 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 1\n>>]\n>>\nendobj\n46 0 obj\n<<\n  /S /P\n  /P 98 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 2\n>>]\n>>\nendobj\n95 0 obj\n<<\n  /S /TR\n  /P 92 0 R\n  /K [99 0 R]\n>>\nendobj\n99 0 obj\n<<\n  /S /TD\n  /P 95 0 R\n  /K [100 0 R]\n>>\nendobj\n100 0 obj\n<<\n  /S /P\n  /P 99 0 R\n  /K [47 0 R 48 0 R]\n>>\nendobj\n47 0 obj\n<<\n  /S /P\n  /P 100 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 3\n>>]\n>>\nendobj\n48 0 obj\n<<\n  /S /P\n  /P 100 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 51 0 R\n  /MCID 4\n>>]\n>>\nendobj\n89 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n90 0 obj\n<< /S /P /P 79 0 R >>\nendobj\n78 0 obj\n<<\n  /S /Part\n  /P 75 0 R\n  /K [101 0 R 102 0 R]\n>>\nendobj\n102 0 obj\n<<\n  /S /Sect\n  /P 78 0 R\n  /K [60 0 R]\n>>\nendobj\n60 0 obj\n<<\n  /S /P\n  /P 102 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 5\n>> 61 0 R]\n>>\nendobj\n61 0 obj\n<<\n  /S /Quote\n  /P 60 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 6\n>>]\n>>\nendobj\n101 0 obj\n<<\n  /S /Sect\n  /P 78 0 R\n  /K [55 0 R 56 0 R 57 0 R 103 0 R 104 0 R 105 0 R]\n>>\nendobj\n55 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 0\n>>]\n>>\nendobj\n56 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 1\n>>]\n>>\nendobj\n57 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 2\n>>]\n>>\nendobj\n103 0 obj\n<< /S /P /P 101 0 R >>\nendobj\n104 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [58 0 R]\n>>\nendobj\n58 0 obj\n<<\n  /S /Figure\n  /P 104 0 R\n  /Alt ()\n  /K 3\n  /Pg 65 0 R\n>>\nendobj\n105 0 obj\n<<\n  /S /P\n  /P 101 0 R\n  /K [59 0 R]\n>>\nendobj\n59 0 obj\n<<\n  /S /Link\n  /P 105 0 R\n  /Alt ()\n  /K [<<\n  /Type /MCR\n  /Pg 65 0 R\n  /MCID 4\n>> <<\n  /Type /OBJR\n  /Pg 65 0 R\n  /Obj 53 0 R\n>>]\n>>\nendobj\n26 0 obj\n<< /Type /Pages\n/Count 5\n/Kids [24 0 R 34 0 R 42 0 R 51 0 R 65 0 R ] >>\nendobj\n106 0 obj\n<<\n  /Type /Catalog\n  /Pages 26 0 R\n  /Lang (x-unknown)\n  /MarkInfo << /Marked true >>\n  /StructTreeRoot 76 0 R\n  /Metadata 5 0 R\n  /PageLabels 107 0 R\n>>\nendobj\n25 0 obj\n<<\n  /Font << /F15 71 0 R >>\n  /ProcSet [/PDF /ImageB /ImageC /Text]\n  /ColorSpace << /DefaultRGB 4 0 R >>\n>>\nendobj\n76 0 obj\n<<\n  /Type /StructTreeRoot\n  /K [75 0 R]\n  /ParentTree << /Kids [108 0 R] >>\n>>\nendobj\n107 0 obj\n<< /Nums [0 << /S /D >>] >>\nendobj\n108 0 obj\n<< /Nums [0 7 0 R 1 27 0 R 2 35 0 R 3 43 0 R 4 54 0 R 5 59 0 R] /Limits [0 5] >>\nendobj\nxref\n0 109\n0000000000 65535 f \n0000000015 00000 n \n0000000139 00000 n \n0000002816 00000 n \n0000002836 00000 n \n0000002869 00000 n \n0000003812 00000 n \n0000003831 00000 n \n0000041204 00000 n \n0000041294 00000 n \n0000041384 00000 n \n0000041513 00000 n \n0000041604 00000 n \n0000041986 00000 n \n0000042148 00000 n \n0000042240 00000 n \n0000042440 00000 n \n0000042532 00000 n \n0000042631 00000 n \n0000042726 00000 n \n0000040591 00000 n \n0000040818 00000 n \n0000004070 00000 n \n0000005756 00000 n \n0000005777 00000 n \n0000049264 00000 n \n0000049004 00000 n \n0000006001 00000 n \n0000044082 00000 n \n0000044174 00000 n \n0000044273 00000 n \n0000044368 00000 n \n0000006264 00000 n \n0000007592 00000 n \n0000007613 00000 n \n0000007837 00000 n \n0000045383 00000 n \n0000045474 00000 n \n0000045572 00000 n \n0000045666 00000 n \n0000008107 00000 n \n0000009942 00000 n \n0000009963 00000 n \n0000010187 00000 n \n0000047033 00000 n \n0000047301 00000 n \n0000047392 00000 n \n0000047662 00000 n \n0000047754 00000 n \n0000010254 00000 n \n0000010746 00000 n \n0000010766 00000 n \n0000010990 00000 n \n0000011086 00000 n \n0000011239 00000 n \n0000048342 00000 n \n0000048434 00000 n \n0000048526 00000 n \n0000048716 00000 n \n0000048852 00000 n \n0000048050 00000 n \n0000048149 00000 n \n0000011306 00000 n \n0000014225 00000 n \n0000014246 00000 n \n0000014273 00000 n \n0000014514 00000 n \n0000014775 00000 n \n0000038923 00000 n \n0000038901 00000 n \n0000039029 00000 n \n0000039048 00000 n \n0000039744 00000 n \n0000039209 00000 n \n0000040376 00000 n \n0000040396 00000 n \n0000049390 00000 n \n0000040466 00000 n \n0000047922 00000 n \n0000041042 00000 n \n0000040532 00000 n \n0000041475 00000 n \n0000041948 00000 n \n0000042078 00000 n \n0000042370 00000 n \n0000044012 00000 n \n0000045313 00000 n \n0000046747 00000 n \n0000046785 00000 n \n0000047846 00000 n \n0000047884 00000 n \n0000042332 00000 n \n0000046845 00000 n \n0000046919 00000 n \n0000047124 00000 n \n0000047483 00000 n \n0000046976 00000 n \n0000047181 00000 n \n0000047238 00000 n \n0000047540 00000 n \n0000047598 00000 n \n0000048244 00000 n \n0000047990 00000 n \n0000048618 00000 n \n0000048658 00000 n \n0000048794 00000 n \n0000049092 00000 n \n0000049486 00000 n \n0000049531 00000 n \ntrailer\n<<\n  /Root 106 0 R\n  /Info 1 0 R\n  /ID [<339714BE9BC1314CA996D430E8F8C267> <339714BE9BC1314CA996D430E8F8C267>]\n  /Size 109\n>>\nstartxref\n49629\n%%EOF\n');
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_detail`
--

DROP TABLE IF EXISTS `payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank` varchar(50) DEFAULT NULL,
  `account_number` varchar(50) DEFAULT NULL,
  `account_type_id` int(11) DEFAULT NULL,
  `bank_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_bank_id` (`bank_id`),
  KEY `fk_account_type_id` (`account_type_id`),
  CONSTRAINT `fk_account_type_id` FOREIGN KEY (`account_type_id`) REFERENCES `account_type` (`id`),
  CONSTRAINT `fk_bank_id` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=655 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `fiscal_id` varchar(10) NOT NULL COMMENT 'Identificador de la persona e.j.: rut, pasaporte, etc.',
  `dv` char(1) DEFAULT NULL,
  `names` varchar(100) DEFAULT NULL,
  `first_lastname` varchar(50) DEFAULT NULL,
  `second_lastname` varchar(50) DEFAULT NULL,
  `birthday` varchar(10) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL COMMENT '''M'': male, ''F'': female',
  `marital_status` varchar(20) DEFAULT NULL COMMENT 'Estado Civil',
  `nationality` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `created` varchar(50) DEFAULT NULL,
  `updated` varchar(50) DEFAULT NULL,
  `afp_id` int(11) DEFAULT NULL,
  `isapre_id` int(11) DEFAULT NULL,
  `payment_detail_id` int(11) DEFAULT NULL,
  `emergency_data_id` int(11) DEFAULT NULL,
  `has_blacklist` int(1) DEFAULT NULL,
  `blacklist_motive` varchar(50) DEFAULT NULL,
  `isapre_percent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`fiscal_id`),
  KEY `fk_person_address_idx` (`address_id`),
  KEY `fk_afp_id` (`afp_id`),
  KEY `fk_isapre_id` (`isapre_id`),
  KEY `fk_payment_detail_id` (`payment_detail_id`),
  KEY `fk_person_emergency_data_id` (`emergency_data_id`),
  CONSTRAINT `fk_afp_id` FOREIGN KEY (`afp_id`) REFERENCES `afp` (`id`),
  CONSTRAINT `fk_isapre_id` FOREIGN KEY (`isapre_id`) REFERENCES `isapre` (`id`),
  CONSTRAINT `fk_payment_detail_id` FOREIGN KEY (`payment_detail_id`) REFERENCES `payment_detail` (`id`),
  CONSTRAINT `fk_person_emergency_data_id` FOREIGN KEY (`emergency_data_id`) REFERENCES `person_emergency_data` (`id`),
  CONSTRAINT `person_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_comment`
--

DROP TABLE IF EXISTS `person_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_comment` (
  `fiscal_id` varchar(10) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`fiscal_id`,`comment_id`),
  KEY `fk_person_has_comment_comment1_idx` (`comment_id`),
  KEY `fk_person_has_comment_person1_idx` (`fiscal_id`),
  CONSTRAINT `fk_person_has_comment_comment1` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_comment_person1` FOREIGN KEY (`fiscal_id`) REFERENCES `person` (`fiscal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_comment`
--

LOCK TABLES `person_comment` WRITE;
/*!40000 ALTER TABLE `person_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `person_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_emergency_data`
--

DROP TABLE IF EXISTS `person_emergency_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_emergency_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=658 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_metadata`
--

DROP TABLE IF EXISTS `person_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_metadata` (
  `fiscal_id` varchar(10) NOT NULL,
  `metadata_id` int(11) NOT NULL,
  PRIMARY KEY (`fiscal_id`,`metadata_id`),
  KEY `fk_person_has_metadata_metadata1_idx` (`metadata_id`),
  KEY `fk_person_has_metadata_person1_idx` (`fiscal_id`),
  CONSTRAINT `fk_person_has_metadata_metadata1` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_metadata_person1` FOREIGN KEY (`fiscal_id`) REFERENCES `person` (`fiscal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `person_position`
--

DROP TABLE IF EXISTS `person_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person_position` (
  `fiscal_id` varchar(10) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`fiscal_id`,`position_id`),
  KEY `fk_person_has_position_position1_idx` (`position_id`),
  KEY `fk_person_has_position_person1_idx` (`fiscal_id`),
  CONSTRAINT `fk_person_has_position_person1` FOREIGN KEY (`fiscal_id`) REFERENCES `person` (`fiscal_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_person_has_position_position1` FOREIGN KEY (`position_id`) REFERENCES `cleardigital`.`position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Current Database: `cleardigital`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `cleardigital` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cleardigital`;

--
-- Table structure for table `academy_requirement`
--

DROP TABLE IF EXISTS `academy_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy_requirement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `specialty_name` varchar(255) DEFAULT NULL,
  `academy_requeriment_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_academy_requirement_academy_requeriment_type1_idx` (`academy_requeriment_type_id`),
  CONSTRAINT `fk_academy_requirement_academy_requeriment_type1` FOREIGN KEY (`academy_requeriment_type_id`) REFERENCES `academy_requirement_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `academy_requirement_type`
--

DROP TABLE IF EXISTS `academy_requirement_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `academy_requirement_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy_requirement_type`
--

LOCK TABLES `academy_requirement_type` WRITE;
/*!40000 ALTER TABLE `academy_requirement_type` DISABLE KEYS */;
INSERT INTO `academy_requirement_type` VALUES (1,'BÃ¡sica Completa'),(2,'Media Completa'),(3,'TÃ©cnico medio/colegio tÃ©cnico Completo'),(4,'TÃ©cnico profesional superior Completo'),(5,'Univesitaria Completa'),(6,'Postgrado Completo'),(7,'MagÃ­ster Completo'),(8,'Doctorado Completo'),(9,'Basica Incompleta'),(10,'Media Incompleta'),(11,'TÃ©cnico medio/colegio tÃ©cnico Incompleto'),(12,'TÃ©cnico profesional superior Incompleto'),(13,'Universitaria Incompleta'),(14,'Postgrado Incompleto'),(15,'MagÃ­ster Incompleto'),(16,'Doctorado Incompleto');
/*!40000 ALTER TABLE `academy_requirement_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `competition`
--

DROP TABLE IF EXISTS `competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `experience`
--

DROP TABLE IF EXISTS `experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `references` varchar(255) DEFAULT NULL,
  `rent_expectations` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `experience_type_id` int(11) DEFAULT NULL,
  `experience_years` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_experience_customer1_idx` (`customer_id`),
  KEY `experience_type_id` (`experience_type_id`),
  CONSTRAINT `experience_ibfk_1` FOREIGN KEY (`experience_type_id`) REFERENCES `experience_type` (`id`),
  CONSTRAINT `fk_experience_customer1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `experience_type`
--

DROP TABLE IF EXISTS `experience_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `experience_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `experience_type`
--

LOCK TABLES `experience_type` WRITE;
/*!40000 ALTER TABLE `experience_type` DISABLE KEYS */;
INSERT INTO `experience_type` VALUES (1,'Sin experiencia'),(2,'Igual que'),(3,'Mayor que'),(4,'Menor que');
/*!40000 ALTER TABLE `experience_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function`
--

DROP TABLE IF EXISTS `function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1),(1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hierarchical_level`
--

DROP TABLE IF EXISTS `hierarchical_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hierarchical_level` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `metadata`
--

DROP TABLE IF EXISTS `metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attachment` varchar(255) DEFAULT NULL,
  `metadata_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_metadata_metadata_type1_idx` (`metadata_type_id`),
  CONSTRAINT `fk_metadata_metadata_type1` FOREIGN KEY (`metadata_type_id`) REFERENCES `metadata_type` (`type_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata`
--

LOCK TABLES `metadata` WRITE;
/*!40000 ALTER TABLE `metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metadata_type`
--

DROP TABLE IF EXISTS `metadata_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metadata_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metadata_type`
--

LOCK TABLES `metadata_type` WRITE;
/*!40000 ALTER TABLE `metadata_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `metadata_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizational_unit`
--

DROP TABLE IF EXISTS `organizational_unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizational_unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `organizational_unit_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`organizational_unit_type_id`),
  KEY `fk_organizational_unit_organizational_unit_type1_idx` (`organizational_unit_type_id`),
  CONSTRAINT `fk_organizational_unit_organizational_unit_type1` FOREIGN KEY (`organizational_unit_type_id`) REFERENCES `organizational_unit_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `organizational_unit_type`
--

DROP TABLE IF EXISTS `organizational_unit_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organizational_unit_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizational_unit_type`
--

LOCK TABLES `organizational_unit_type` WRITE;
/*!40000 ALTER TABLE `organizational_unit_type` DISABLE KEYS */;
INSERT INTO `organizational_unit_type` VALUES (1,'Abastecimiento'),(2,'AdministraciÃ³n'),(3,'AdministraciÃ³n PÃºblica'),(4,'Aduanas'),(5,'AgronomÃ­a'),(6,'Alimentos y Bebidas'),(7,'Ambiental'),(8,'Amparo'),(9,'Arquitectura'),(10,'Aseo'),(11,'Asistente y Secretaria'),(12,'AuditorÃ­a'),(13,'AutomatizaciÃ³n / InstrumentaciÃ³n'),(14,'Banca y Servicios Financieros'),(15,'BursÃ¡til'),(16,'Cadena de Suministro'),(17,'Calidad'),(18,'Call Center'),(19,'CapacitaciÃ³n'),(20,'Category management'),(21,'Clinica'),(22,'Cobranza'),(23,'Comedores Industriales'),(24,'Comercial'),(25,'Comercio Exterior'),(26,'Compras'),(27,'ComputaciÃ³n e InformÃ¡tica'),(28,'ComunicaciÃ³n / Medios'),(29,'ComunicaciÃ³n Audiovisual'),(30,'ComunicaciÃ³n Institucional'),(31,'ConfecciÃ³n'),(32,'ConstrucciÃ³n'),(33,'Contabilidad'),(34,'ContadurÃ­a'),(35,'ContralorÃ­a'),(36,'Control de Calidad'),(37,'Control de GestiÃ³n'),(38,'Corporativa'),(39,'Costura'),(40,'CrÃ©dito'),(41,'Cuentas clave'),(42,'DecoraciÃ³n'),(43,'Derecho'),(44,'Derecho Administrativo'),(45,'Derecho Aduanero'),(46,'Derecho Bancario y BursÃ¡til'),(47,'Derecho Civil'),(48,'Derecho Constitucional'),(49,'Derecho Electoral'),(50,'Derecho EnergÃ©tico'),(51,'Derecho Familiar'),(52,'Derecho Financiero'),(53,'Derecho Internacional'),(54,'Derecho Laboral'),(55,'Derecho Mercantil'),(56,'Derecho Notarial'),(57,'Derecho Penal'),(58,'Derechos Humanos'),(59,'Desarrollo'),(60,'Desarrollo de Producto'),(61,'Despacho'),(62,'Dibujante'),(63,'Digitadores'),(64,'DirecciÃ³n en servicios de salud'),(65,'DirecciÃ³n General'),(66,'DiseÃ±o'),(67,'DiseÃ±o Audiovisual'),(68,'DiseÃ±o de Confecciones'),(69,'DiseÃ±o Industrial'),(70,'DistribuciÃ³n'),(71,'Docencia'),(72,'EconomÃ­a'),(73,'EdiciÃ³n/RedacciÃ³n'),(74,'EdificaciÃ³n'),(75,'Editorialismo mÃ©dico'),(76,'EducaciÃ³n / Docencia'),(77,'EducaciÃ³n FÃ­sica'),(78,'EducaciÃ³n mÃ©dica'),(79,'Electricidad'),(80,'ElectrÃ³nica'),(81,'Empaque'),(82,'Envasado'),(83,'EpidemiologÃ­a'),(84,'EstÃ©tica'),(85,'EstimulaciÃ³n temprana'),(86,'Estudio'),(87,'FacturaciÃ³n'),(88,'Finanzas'),(89,'Fiscal'),(90,'FotografÃ­a'),(91,'GastronomÃ­a'),(92,'GeotÃ©cnia'),(93,'Gerencia'),(94,'GestiÃ³n'),(95,'Hospitalaria'),(96,'Hoteles'),(97,'Idiomas'),(98,'IlustraciÃ³n de FigurÃ­n'),(99,'Impuestos'),(100,'Industria'),(101,'InformÃ¡tica'),(102,'InformÃ¡tica â€“ hardware'),(103,'InformÃ¡tica â€“ internet'),(104,'IngenierÃ­a'),(105,'Inteligencia de Negocios'),(106,'Internet'),(107,'InversiÃ³n Extranjera'),(108,'Inversiones'),(109,'InvestigaciÃ³n'),(110,'InvestigaciÃ³n clÃ­nica'),(111,'InvestigaciÃ³n de mercados'),(112,'Laboratorio'),(113,'Leyes'),(114,'Litigio'),(115,'LogÃ­stica'),(116,'MantenciÃ³n'),(117,'Marketing / Mercadeo'),(118,'MecÃ¡nica'),(119,'Medicina y Salud'),(120,'Medio Ambiente'),(121,'Medios de nformaciÃ³n'),(122,'Mercadotecnia'),(123,'Negocios Internacionales'),(124,'NÃ³minas'),(125,'Operaciones'),(126,'OrganizaciÃ³n de eventos'),(127,'OrientaciÃ³n'),(128,'Otra Ãrea'),(129,'Patronaje'),(130,'Periodismo'),(131,'PlanificaciÃ³n y Desarrollo'),(132,'Post Venta'),(133,'Precios de transferencia'),(134,'PrevenciÃ³n de Riesgos'),(135,'ProducciÃ³n en bosque'),(136,'ProducciÃ³n y Manufactura'),(137,'Promociones'),(138,'Propiedad Industrial e Intelectual'),(139,'Propiedades'),(140,'ProtecciÃ³n en bosque'),(141,'Proyectos'),(142,'PsicopedagÃ³gica'),(143,'Publicidad'),(144,'QuÃ­mica'),(145,'QuÃ­mica y Farmacia'),(146,'RecepciÃ³n'),(147,'Reclutamiento y SelecciÃ³n'),(148,'Recursos Humanos'),(149,'Redes y Telecomunicaciones'),(150,'Relaciones PÃºblicas'),(151,'Salud'),(152,'Salud PÃºblica'),(153,'Secretaria Bilingue'),(154,'Seguridad e Higiene'),(155,'Seguros'),(156,'Servicio al Cliente'),(157,'Servicio TÃ©cnico'),(158,'Servicios'),(159,'Servicios de Seguridad'),(160,'Servicios Generales'),(161,'Servicios Sociales'),(162,'Silvicultura en bosque'),(163,'Sociedades Mercantiles'),(164,'Soporte Administrativo'),(165,'Suministros'),(166,'TecnologÃ­as de InformaciÃ³n'),(167,'Telecomunicaciones'),(168,'TelÃ©fonos'),(169,'Telemarketing'),(170,'Todas las Areas'),(171,'Trade Marketing'),(172,'Tributarios'),(173,'Turismo y HotelerÃ­a'),(174,'Ventas'),(175,'Veterinaria');
/*!40000 ALTER TABLE `organizational_unit_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position`
--

DROP TABLE IF EXISTS `position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `leadership_name` varchar(50) DEFAULT NULL,
  `number_owned_people` int(11) DEFAULT NULL,
  `organizational_unit_id` int(11) DEFAULT NULL,
  `hierarchical_level_id` int(11) DEFAULT NULL,
  `academy_requirement_id` int(11) DEFAULT NULL,
  `similar` varchar(255) DEFAULT NULL,
  `rent_from` int(11) DEFAULT NULL,
  `rent_to` int(11) DEFAULT NULL,
  `average_rent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_position_organizational_unit1_idx` (`organizational_unit_id`),
  KEY `fk_position_hierarchical_level1_idx` (`hierarchical_level_id`),
  KEY `fk_position_academy_requirement1_idx` (`academy_requirement_id`),
  CONSTRAINT `fk_position_academy_requirement1` FOREIGN KEY (`academy_requirement_id`) REFERENCES `academy_requirement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_hierarchical_level1` FOREIGN KEY (`hierarchical_level_id`) REFERENCES `hierarchical_level` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_organizational_unit1` FOREIGN KEY (`organizational_unit_id`) REFERENCES `organizational_unit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_competition`
--

DROP TABLE IF EXISTS `position_competition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_competition` (
  `position_id` int(11) NOT NULL,
  `competition_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`competition_id`),
  KEY `fk_position_has_competition_competition1_idx` (`competition_id`),
  KEY `fk_position_has_competition_position_idx` (`position_id`),
  CONSTRAINT `fk_position_has_competition_competition1` FOREIGN KEY (`competition_id`) REFERENCES `competition` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_competition_position` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_experience`
--

DROP TABLE IF EXISTS `position_experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_experience` (
  `position_id` int(11) NOT NULL,
  `experience_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`experience_id`),
  KEY `fk_position_has_experience_experience1_idx` (`experience_id`),
  KEY `fk_position_has_experience_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_experience_experience1` FOREIGN KEY (`experience_id`) REFERENCES `experience` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_experience_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_function`
--

DROP TABLE IF EXISTS `position_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_function` (
  `position_id` int(11) NOT NULL,
  `function_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`function_id`),
  KEY `fk_position_has_function_function1_idx` (`function_id`),
  KEY `fk_position_has_function_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_function_function1` FOREIGN KEY (`function_id`) REFERENCES `function` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_function_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_metadata`
--

DROP TABLE IF EXISTS `position_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_metadata` (
  `position_id` int(11) NOT NULL,
  `metadata_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`metadata_id`),
  KEY `fk_position_has_metadata_metadata1_idx` (`metadata_id`),
  KEY `fk_position_has_metadata_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_metadata_metadata1` FOREIGN KEY (`metadata_id`) REFERENCES `metadata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_metadata_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position_metadata`
--

LOCK TABLES `position_metadata` WRITE;
/*!40000 ALTER TABLE `position_metadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `position_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `position_target`
--

DROP TABLE IF EXISTS `position_target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_target` (
  `position_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`target_id`),
  KEY `fk_position_has_target_target1_idx` (`target_id`),
  KEY `fk_position_has_target_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_target_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_target_target1` FOREIGN KEY (`target_id`) REFERENCES `target` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `position_technical_requirement`
--

DROP TABLE IF EXISTS `position_technical_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `position_technical_requirement` (
  `position_id` int(11) NOT NULL,
  `technical_requirement_id` int(11) NOT NULL,
  PRIMARY KEY (`position_id`,`technical_requirement_id`),
  KEY `fk_position_has_technical_requirement_technical_requirement_idx` (`technical_requirement_id`),
  KEY `fk_position_has_technical_requirement_position1_idx` (`position_id`),
  CONSTRAINT `fk_position_has_technical_requirement_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_position_has_technical_requirement_technical_requirement1` FOREIGN KEY (`technical_requirement_id`) REFERENCES `technical_requirement` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `similar`
--

DROP TABLE IF EXISTS `similar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `similar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `similar_position`
--

DROP TABLE IF EXISTS `similar_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `similar_position` (
  `similar_id` int(11) NOT NULL,
  `position_id` int(11) NOT NULL,
  PRIMARY KEY (`similar_id`,`position_id`),
  KEY `fk_similar_has_position_position1_idx` (`position_id`),
  KEY `fk_similar_has_position_similar1_idx` (`similar_id`),
  CONSTRAINT `fk_similar_has_position_position1` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_similar_has_position_similar1` FOREIGN KEY (`similar_id`) REFERENCES `similar` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `target`
--

DROP TABLE IF EXISTS `target`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `target` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=353 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `technical_requirement`
--

DROP TABLE IF EXISTS `technical_requirement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technical_requirement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `active` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,1,'alfredo.larag@gmail.com','admin','admin','$2a$10$MOUbCOnv4NHS.9K5lO8Sv.LY1UOu1FhK/sDG8Y5pQhbtbGSXnhwLi');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`),
  CONSTRAINT `FK859n2jvi8ivhui0rl0esws6o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKa68196081fvovjhkek5m97n3y` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (6,2);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-05 15:58:16
