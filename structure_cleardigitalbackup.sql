-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: clearpeopledevdb.c4cttcwhvxkm.sa-east-1.rds.amazonaws.com    Database: cleardigital
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `academy_requirement`
--

LOCK TABLES `academy_requirement` WRITE;
/*!40000 ALTER TABLE `academy_requirement` DISABLE KEYS */;
INSERT INTO `academy_requirement` VALUES (11,'Psicología Organizacional o Ingeniería comercial, mención en RRHH',5),(12,'',9),(13,'',9);
/*!40000 ALTER TABLE `academy_requirement` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `academy_requirement_type` VALUES (1,'Básica Completa'),(2,'Media Completa'),(3,'Técnico medio/colegio técnico Completo'),(4,'Técnico profesional superior Completo'),(5,'Univesitaria Completa'),(6,'Postgrado Completo'),(7,'Magíster Completo'),(8,'Doctorado Completo'),(9,'Basica Incompleta'),(10,'Media Incompleta'),(11,'Técnico medio/colegio técnico Incompleto'),(12,'Técnico profesional superior Incompleto'),(13,'Universitaria Incompleta'),(14,'Postgrado Incompleto'),(15,'Magíster Incompleto'),(16,'Doctorado Incompleto');
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
) ENGINE=InnoDB AUTO_INCREMENT=362 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `competition`
--

LOCK TABLES `competition` WRITE;
/*!40000 ALTER TABLE `competition` DISABLE KEYS */;
INSERT INTO `competition` VALUES (361,'Psicología Organizacional',NULL);
/*!40000 ALTER TABLE `competition` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `experience`
--

LOCK TABLES `experience` WRITE;
/*!40000 ALTER TABLE `experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `experience` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function`
--

LOCK TABLES `function` WRITE;
/*!40000 ALTER TABLE `function` DISABLE KEYS */;
INSERT INTO `function` VALUES (353,'Coordinar y participar en reuniónes con cliente , determinando y levantando perfil requerido',NULL),(354,'Generar avisos en redes sociales, portales de empleo y otros medios',NULL),(355,'Realizar entrevistas psicolaborales, utilizar test psicológicos u otras herramientas',NULL),(356,'Generar informes psicolaborales de los postulantes y presentarlos a cliente ',NULL),(357,'Realizar la entrega de informes, determinar finalista e informar',NULL);
/*!40000 ALTER TABLE `function` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hierarchical_level`
--

LOCK TABLES `hierarchical_level` WRITE;
/*!40000 ALTER TABLE `hierarchical_level` DISABLE KEYS */;
INSERT INTO `hierarchical_level` VALUES (10,'Táctico',NULL),(11,'Operativo',NULL),(12,'Operacional',NULL);
/*!40000 ALTER TABLE `hierarchical_level` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizational_unit`
--

LOCK TABLES `organizational_unit` WRITE;
/*!40000 ALTER TABLE `organizational_unit` DISABLE KEYS */;
INSERT INTO `organizational_unit` VALUES (11,NULL,NULL,147),(12,NULL,NULL,29),(13,NULL,NULL,29);
/*!40000 ALTER TABLE `organizational_unit` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `organizational_unit_type` VALUES (1,'Abastecimiento'),(2,'Administración'),(3,'Administración Pública'),(4,'Aduanas'),(5,'Agronomía'),(6,'Alimentos y Bebidas'),(7,'Ambiental'),(8,'Amparo'),(9,'Arquitectura'),(10,'Aseo'),(11,'Asistente y Secretaria'),(12,'Auditoría'),(13,'Automatización / Instrumentación'),(14,'Banca y Servicios Financieros'),(15,'Bursátil'),(16,'Cadena de Suministro'),(17,'Calidad'),(18,'Call Center'),(19,'Capacitación'),(20,'Category management'),(21,'Clinica'),(22,'Cobranza'),(23,'Comedores Industriales'),(24,'Comercial'),(25,'Comercio Exterior'),(26,'Compras'),(27,'Computación e Informática'),(28,'Comunicación / Medios'),(29,'Comunicación Audiovisual'),(30,'Comunicación Institucional'),(31,'Confección'),(32,'Construcción'),(33,'Contabilidad'),(34,'Contaduría'),(35,'Contraloría'),(36,'Control de Calidad'),(37,'Control de Gestión'),(38,'Corporativa'),(39,'Costura'),(40,'Crédito'),(41,'Cuentas clave'),(42,'Decoración'),(43,'Derecho'),(44,'Derecho Administrativo'),(45,'Derecho Aduanero'),(46,'Derecho Bancario y Bursátil'),(47,'Derecho Civil'),(48,'Derecho Constitucional'),(49,'Derecho Electoral'),(50,'Derecho Energético'),(51,'Derecho Familiar'),(52,'Derecho Financiero'),(53,'Derecho Internacional'),(54,'Derecho Laboral'),(55,'Derecho Mercantil'),(56,'Derecho Notarial'),(57,'Derecho Penal'),(58,'Derechos Humanos'),(59,'Desarrollo'),(60,'Desarrollo de Producto'),(61,'Despacho'),(62,'Dibujante'),(63,'Digitadores'),(64,'Dirección en servicios de salud'),(65,'Dirección General'),(66,'Diseño'),(67,'Diseño Audiovisual'),(68,'Diseño de Confecciones'),(69,'Diseño Industrial'),(70,'Distribución'),(71,'Docencia'),(72,'Economía'),(73,'Edición/Redacción'),(74,'Edificación'),(75,'Editorialismo médico'),(76,'Educación / Docencia'),(77,'Educación Física'),(78,'Educación médica'),(79,'Electricidad'),(80,'Electrónica'),(81,'Empaque'),(82,'Envasado'),(83,'Epidemiología'),(84,'Estética'),(85,'Estimulación temprana'),(86,'Estudio'),(87,'Facturación'),(88,'Finanzas'),(89,'Fiscal'),(90,'Fotografía'),(91,'Gastronomía'),(92,'Geotécnia'),(93,'Gerencia'),(94,'Gestión'),(95,'Hospitalaria'),(96,'Hoteles'),(97,'Idiomas'),(98,'Ilustración de Figurín'),(99,'Impuestos'),(100,'Industria'),(101,'Informática'),(102,'Informática – hardware'),(103,'Informática – internet'),(104,'Ingeniería'),(105,'Inteligencia de Negocios'),(106,'Internet'),(107,'Inversión Extranjera'),(108,'Inversiones'),(109,'Investigación'),(110,'Investigación clínica'),(111,'Investigación de mercados'),(112,'Laboratorio'),(113,'Leyes'),(114,'Litigio'),(115,'Logística'),(116,'Mantención'),(117,'Marketing / Mercadeo'),(118,'Mecánica'),(119,'Medicina y Salud'),(120,'Medio Ambiente'),(121,'Medios de nformación'),(122,'Mercadotecnia'),(123,'Negocios Internacionales'),(124,'Nóminas'),(125,'Operaciones'),(126,'Organización de eventos'),(127,'Orientación'),(128,'Otra Área'),(129,'Patronaje'),(130,'Periodismo'),(131,'Planificación y Desarrollo'),(132,'Post Venta'),(133,'Precios de transferencia'),(134,'Prevención de Riesgos'),(135,'Producción en bosque'),(136,'Producción y Manufactura'),(137,'Promociones'),(138,'Propiedad Industrial e Intelectual'),(139,'Propiedades'),(140,'Protección en bosque'),(141,'Proyectos'),(142,'Psicopedagógica'),(143,'Publicidad'),(144,'Química'),(145,'Química y Farmacia'),(146,'Recepción'),(147,'Reclutamiento y Selección'),(148,'Recursos Humanos'),(149,'Redes y Telecomunicaciones'),(150,'Relaciones Públicas'),(151,'Salud'),(152,'Salud Pública'),(153,'Secretaria Bilingue'),(154,'Seguridad e Higiene'),(155,'Seguros'),(156,'Servicio al Cliente'),(157,'Servicio Técnico'),(158,'Servicios'),(159,'Servicios de Seguridad'),(160,'Servicios Generales'),(161,'Servicios Sociales'),(162,'Silvicultura en bosque'),(163,'Sociedades Mercantiles'),(164,'Soporte Administrativo'),(165,'Suministros'),(166,'Tecnologías de Información'),(167,'Telecomunicaciones'),(168,'Teléfonos'),(169,'Telemarketing'),(170,'Todas las Areas'),(171,'Trade Marketing'),(172,'Tributarios'),(173,'Turismo y Hotelería'),(174,'Ventas'),(175,'Veterinaria');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `position`
--

LOCK TABLES `position` WRITE;
/*!40000 ALTER TABLE `position` DISABLE KEYS */;
INSERT INTO `position` VALUES (12,'Ejecutivo de Reclutamiento','Gestionar, planificar y realizar procesos de reclutamiento y selección completos para toda la gama de clientes de la consultora, velando por mantener los principios y valores corporativos','Jefe de Personas',2,11,10,11,NULL,500000,1000000,750000),(13,'Asistente de camara','Brindar asistencia técnica audiovisual. ','Jefe de Comunicación',1,12,11,12,NULL,300000,600000,450000),(14,'Camarografo Steady ','Grabar contenido audiovisual. ','Jefe de Comunicación',1,13,12,13,NULL,500000,700000,600000);
/*!40000 ALTER TABLE `position` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `position_competition`
--

LOCK TABLES `position_competition` WRITE;
/*!40000 ALTER TABLE `position_competition` DISABLE KEYS */;
INSERT INTO `position_competition` VALUES (12,361);
/*!40000 ALTER TABLE `position_competition` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `position_experience`
--

LOCK TABLES `position_experience` WRITE;
/*!40000 ALTER TABLE `position_experience` DISABLE KEYS */;
/*!40000 ALTER TABLE `position_experience` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `position_function`
--

LOCK TABLES `position_function` WRITE;
/*!40000 ALTER TABLE `position_function` DISABLE KEYS */;
INSERT INTO `position_function` VALUES (12,353),(12,354),(12,355),(12,356),(12,357);
/*!40000 ALTER TABLE `position_function` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `position_target`
--

LOCK TABLES `position_target` WRITE;
/*!40000 ALTER TABLE `position_target` DISABLE KEYS */;
INSERT INTO `position_target` VALUES (12,353),(12,354),(12,355),(12,356),(12,357);
/*!40000 ALTER TABLE `position_target` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `position_technical_requirement`
--

LOCK TABLES `position_technical_requirement` WRITE;
/*!40000 ALTER TABLE `position_technical_requirement` DISABLE KEYS */;
INSERT INTO `position_technical_requirement` VALUES (12,443),(12,444),(12,445),(12,446),(12,447);
/*!40000 ALTER TABLE `position_technical_requirement` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `similar`
--

LOCK TABLES `similar` WRITE;
/*!40000 ALTER TABLE `similar` DISABLE KEYS */;
INSERT INTO `similar` VALUES (208,'Asistente'),(209,'Camara'),(210,'Camarografo'),(211,'Audiovisual'),(212,'Reclutador');
/*!40000 ALTER TABLE `similar` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `similar_position`
--

LOCK TABLES `similar_position` WRITE;
/*!40000 ALTER TABLE `similar_position` DISABLE KEYS */;
INSERT INTO `similar_position` VALUES (212,12),(208,13),(209,13),(210,14),(211,14);
/*!40000 ALTER TABLE `similar_position` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=358 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `target`
--

LOCK TABLES `target` WRITE;
/*!40000 ALTER TABLE `target` DISABLE KEYS */;
INSERT INTO `target` VALUES (353,'Realizar levantamiento de Perfil con cliente',NULL),(354,'Realizar reclutamiento ',NULL),(355,'Ejecutar un proceso de selección',NULL),(356,'Elaborar Informes psicolaborales',NULL),(357,'Presentar informes a cliente interno',NULL);
/*!40000 ALTER TABLE `target` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=448 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technical_requirement`
--

LOCK TABLES `technical_requirement` WRITE;
/*!40000 ALTER TABLE `technical_requirement` DISABLE KEYS */;
INSERT INTO `technical_requirement` VALUES (443,'Conocimientos en Gestión de equipos de alto desempeño',NULL),(444,'Conocimientos en la aplicación de pruebas psicométricas',NULL),(445,'Conocimiento en la aplicación de pruebas proyectivas',NULL),(446,'Conocimiento en metodologías de Gestión por Competencias ',NULL),(447,'Conocimientos Office Intermedio',NULL);
/*!40000 ALTER TABLE `technical_requirement` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (6,1,'alfredo.larag@gmail.com','admin','admin','$2a$10$MOUbCOnv4NHS.9K5lO8Sv.LY1UOu1FhK/sDG8Y5pQhbtbGSXnhwLi'),(12,1,'cristobal@cgroup.ai','Quilodran','Cristobal','$2a$10$0bq/WxUqUOLwSaY/DWNFlOoI9FxQPzp8o4NRA8Dm.T0yLISlbsUqK'),(13,1,'leslie@cgroup.ai','Marchant','Leslie','$2a$10$WHAbGcD3zOdMDfba4qcMhuk5DMrNTVF0dBKkmBmRr7aZRbRSumJf.'),(14,1,'alex@cgroup.ai','Day','Alex','$2a$10$PdiRtxLRs1SfNWVjY./d8OZ2TQV6QMi6Oj7EJGKfbwPi6OrX767Yy'),(15,1,'ximena@cgroup.ai','Vives','Ximena','$2a$10$SgvxjHDqukgGVtF7cgxWO.WCOUWswUSGAfY5nuhOH6Mvz23TkEGMu');
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
INSERT INTO `user_role` VALUES (12,1),(13,1),(14,1),(15,1),(6,2);
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

-- Dump completed on 2018-07-05 18:12:22
