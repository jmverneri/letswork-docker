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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ 'd46e6ade-f635-11f0-bd1b-4bbac5ad1358:1-601';

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `careers` (
  `careerId` int NOT NULL,
  `description` varchar(100) NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`careerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Ingeniería Pesquera',1),(2,'Ingeniería Naval',1),(3,'Técnico Universitario en Procedimientos y Tecnologías Ambientales',1),(4,'Técnico Universitario en Producción Textil',1),(5,'Técnico Universitario en Administración',1),(6,'Técnico Universitario en Programación',1),(7,'Técnico Superior en Interiorismo',1);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `job_positions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_positions` (
  `jobPositionId` int NOT NULL AUTO_INCREMENT,
  `careerId` int NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`jobPositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `job_positions` WRITE;
/*!40000 ALTER TABLE `job_positions` DISABLE KEYS */;
INSERT INTO `job_positions` VALUES (1,1,'Supervisor de Planta de Procesamiento'),(2,1,'Analista de Control de Calidad Marina'),(3,1,'Inspector de Flota Pesquera'),(4,2,'Diseñador de Estructuras Navales'),(5,2,'Ingeniero de Mantenimiento de Astilleros'),(6,2,'Perito Naval'),(7,3,'Técnico en Gestión de Residuos Industriales'),(8,3,'Analista de Monitoreo de Impacto Ambiental'),(9,3,'Asesor en Normativas ISO 14001'),(10,4,'Controlador de Procesos de Tintorería'),(11,4,'Supervisor de Línea de Confección'),(12,4,'Analista de Hilandería y Tejeduría'),(13,5,'Asistente de Recursos Humanos'),(14,5,'Analista de Cuentas a Pagar'),(15,5,'Auxiliar administrativo contable'),(16,6,'Desarrollador Fullstack PHP'),(17,6,'Analista QA / Tester'),(18,6,'Junior Backend Developer'),(19,7,'Diseñador de Espacios Comerciales'),(20,7,'Asistente de Visual Merchandising'),(21,7,'Proyectista de Interiores Residenciales');
/*!40000 ALTER TABLE `job_positions` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `subjectId` int NOT NULL AUTO_INCREMENT,
  `careerId` int NOT NULL,
  `asignatura` varchar(100) NOT NULL,
  `cursado` varchar(50) NOT NULL,
  `hsSemanales` varchar(20) NOT NULL,
  `cargaHorariaTotal` int NOT NULL,
  `creditos` int NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`subjectId`),
  KEY `careerId` (`careerId`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`careerId`) REFERENCES `careers` (`careerId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,6,'Programación I','Cuatrimestral','8',128,13,1),(2,6,'Arquitectura y Sistemas Operativos','Cuatrimestral','4',64,5,1),(3,6,'Matemática','Cuatrimestral','4',64,5,1),(4,6,'Organización Empresarial','Cuatrimestral','4',64,5,1),(5,6,'Programación II','Cuatrimestral','8',128,13,1),(6,6,'Probabilidad y Estadística','Cuatrimestral','4',64,5,1),(7,6,'Base de Datos I','Cuatrimestral','4',64,5,1),(8,6,'Inglés I','Cuatrimestral','4',64,5,1),(9,6,'Programación III','Cuatrimestral','8',128,13,1),(10,6,'Base de Datos II','Cuatrimestral','4',64,5,1),(11,6,'Metodología de Sistemas I','Cuatrimestral','4',64,5,1),(12,6,'Inglés II','Cuatrimestral','4',64,5,1),(13,6,'Programación IV','Cuatrimestral','8',128,13,1),(14,6,'Metodología de Sistemas II','Cuatrimestral','4',64,5,1),(15,6,'Introducción al Análisis de Datos','Cuatrimestral','2',32,2,1),(16,6,'Legislación','Cuatrimestral','2',32,2,1),(17,6,'Gestión de Desarrollo de Software','Cuatrimestral','4',64,5,1),(18,6,'Trabajo Final Integrador','Cuatrimestral','18',95,9,1),(19,1,'Algebra y Geometría Analítica','Anual','5',160,10,1),(20,1,'Análisis Matemático I','Anual','5',160,10,1),(21,1,'Química General','Anual','5',160,10,1),(22,1,'Recursos Pesqueros I (Integradora)','Anual','4',128,8,1),(23,1,'Ingeniería y Sociedad','Cuatrimestral','4',64,4,1),(24,1,'Física I','Anual','4',128,8,1),(25,1,'Buques Pesqueros (Electiva I)','Cuatrimestral','6',96,6,1),(26,1,'Gabinete Sistemas de Representación','Cuatrimestral','3',48,3,1),(27,1,'Gabinete Informática I','Anual','2',64,4,1),(28,1,'Física II','Cuatrimestral','8',128,8,1),(29,1,'Química Analítica e Instrumental','Anual','6',192,12,1),(30,1,'Recursos Pesqueros II (Integradora)','Anual','4',128,8,1),(31,1,'Análisis Matemático II','Anual','5',160,10,1),(32,1,'Termodinámica','Cuatrimestral','8',128,8,1),(33,1,'Seminario I','Anual','6',192,12,1),(34,1,'Gabinete de Idiomas I','Anual','2',64,4,1),(35,1,'Estática y Resistencia de Materiales','Cuatrimestral','6',96,6,1),(36,1,'Química Orgánica y Biológica','Cuatrimestral','8',128,8,1),(37,1,'Tecnología del Producto Pesquero I','Cuatrimestral','6',96,6,1),(38,1,'Higiene y Seguridad Industrial','Cuatrimestral','4',64,4,1),(39,1,'Probabilidad y Estadística','Anual','3',96,6,1),(40,1,'Tecnología del Producto Pesquero II (Integradora)','Cuatrimestral','6',96,6,1),(41,1,'Bioquímica de Alimentos','Cuatrimestral','8',128,8,1),(42,1,'Equipos e Instalaciones Industriales','Cuatrimestral','8',128,8,1),(43,1,'Acuicultura I','Cuatrimestral','6',96,6,1),(44,1,'Gabinete de Idiomas II','Anual','2',64,4,1),(45,1,'Gabinete de Informática II','Anual','2',64,4,1),(46,1,'Tecnología del Producto Pesquero III (Integradora)','Cuatrimestral','6',96,6,1),(47,1,'Operaciones Unitarias I','Cuatrimestral','10',160,10,1),(48,1,'Materiales y Envases de la Industria Pesquera','Cuatrimestral','4',64,4,1),(49,1,'Gestión de Calidad','Cuatrimestral','6',96,6,1),(50,1,'Matemática Superior','Cuatrimestral','4',64,4,1),(51,1,'Bromatología','Cuatrimestral','8',128,8,1),(52,1,'Operaciones Unitarias II','Cuatrimestral','8',128,8,1),(53,1,'Proyecto Integrador I (Integradora)','Cuatrimestral','6',96,6,1),(54,1,'Seminario II','Cuatrimestral','4',64,4,1),(55,1,'Economía','Cuatrimestral','6',96,6,1),(56,1,'Programación y Control de la Producción','Cuatrimestral','6',96,6,1),(57,1,'Legislación','Anual','2',64,4,1),(58,1,'Proyecto Integrador II (Integradora)','Anual','6',192,12,1),(59,1,'Maquinas e Instalaciones Térmicas','Cuatrimestral','6',96,6,1),(60,1,'Investigación Operativa','Cuatrimestral','6',96,6,1),(61,1,'Acuicultura II','Cuatrimestral','6',96,6,1),(62,1,'Economía Pesquera (Electiva II)','Cuatrimestral','6',96,6,1),(63,1,'Tratamientos de Efluentes (Electiva III)','Anual','2',64,4,1),(64,1,'Práctica Profesional Supervisada','Anual','0',200,12,1),(65,2,'Álgebra y Geometría Analítica','Anual','5',160,10,1),(66,2,'Análisis Matemático I','Anual','5',160,10,1),(67,2,'Física I','Anual','5',160,10,1),(68,2,'Química General','Anual','5',160,10,1),(69,2,'Introducción a la Ingeniería Naval (Integradora)','Anual','3',96,6,1),(70,2,'Sistemas de Representación','Anual','3',96,6,1),(71,2,'Inglés I','Anual','2',64,4,1),(72,2,'Fundamentos de Informática','Anual','2',64,4,1),(73,2,'Análisis Matemático II','Anual','5',160,10,1),(74,2,'Probabilidad y Estadística','Anual','3',96,6,1),(75,2,'Física II','Anual','5',160,10,1),(76,2,'Física III','Cuatrimestral','2',64,4,1),(77,2,'Análisis Estructural I','Anual','4',128,8,1),(78,2,'Ingeniería y Sociedad','Cuatrimestral','2',64,4,1),(79,2,'Dibujo Naval (Integradora)','Anual','4',128,8,1),(80,2,'Legislación','Anual','2',64,4,1),(81,2,'Modelización de Procesos (Electiva 1)','Cuatrimestral','2',64,4,1),(82,2,'Análisis Estructural II','Anual','4',128,8,1),(83,2,'Termodinámica','Anual','5',160,10,1),(84,2,'Mecánica Racional','Anual','5',160,10,1),(85,2,'Teoría del Buque I (Integradora)','Anual','4',128,8,1),(86,2,'Matemática Aplicada a la Ingeniería','Anual','5',160,10,1),(87,2,'Electrotecnia y Máquinas Eléctricas','Anual','4',128,8,1),(88,2,'Mecánica de los Fluidos','Anual','3',60,4,1),(89,2,'Teoría del Buque II (Integradora)','Anual','3',48,3,1),(90,2,'Alistamiento de Buques','Anual','5',80,5,1),(91,2,'Análisis Estructural III','Cuatrimestral','4',64,4,1),(92,2,'Máquinas Alternativas y Turbomáquinas','Anual','4',64,4,1),(93,2,'Materiales Navales','Anual','3',48,3,1),(94,2,'Construcción Naval','Anual','3',48,3,1),(95,2,'Actividad Naviera','Cuatrimestral','3',48,3,1),(96,2,'Inglés II','Anual','3',48,3,1),(97,2,'Diseño Naval Asistido (Electiva 2)','Cuatrimestral','3',48,3,1),(98,2,'Plantas Eléctricas Navales','Cuatrimestral','2',64,4,1),(99,2,'Plantas Propulsoras Navales','Anual','5',160,10,1),(100,2,'Cálculo de Estructuras de Buques','Anual','5',160,10,1),(101,2,'Mecánica Aplicada a las Máquinas','Anual','4',128,8,1),(102,2,'Proyecto de Buques (Integradora)','Anual','5',160,10,1),(103,2,'Organización Industrial','Anual','2',64,4,1),(104,2,'Soldadura','Anual','3',96,6,1),(105,2,'Análisis por Elementos Finitos','Cuatrimestral','3',96,6,1),(106,2,'Proyecto Final (Integradora)','Anual','2',64,4,1),(107,2,'Embarcaciones Veloces','Cuatrimestral','3',96,6,1),(108,2,'Seguridad, Higiene e Ingeniería Ambiental','Anual','2',64,4,1),(109,2,'Procedimientos de Astilleros','Cuatrimestral','3',96,6,1),(110,2,'Navegación (Electiva 3)','Cuatrimestral','2',64,4,1),(111,2,'Buques Militares (Electiva 4)','Cuatrimestral','2',64,4,1),(112,2,'Práctica Profesional Supervisada','Anual','0',267,17,1);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `mustChangePassword` tinyint(1) DEFAULT '1',
  `reset_token` varchar(255) DEFAULT NULL,
  `token_expires` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `unq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin@letswork.com','$2y$12$TDlMCb62WJ152o.PCzWt3.KZjs1Nm.cptfLKT2q6BPZl5tl8j09iW','admin',1,0,NULL,NULL),(2,'juan@utn.com','$2y$12$jHioX5hsEJoXou4.1YB8/O8ZrKdFdcX3fgm35peP5gfARY4NbA882','student',1,0,NULL,NULL),(3,'lucas.gomez2@utn.com','$2y$12$EncIvT8sZaNYDXiY2EnS6OnDnQ0/dxKzOzIJefwCeP1SfZX4gclNG','student',1,0,NULL,NULL),(4,'ana.martinez5@utn.com','$2y$12$FCeEkighfPNgb5BWPKJ/ZuvUL6skpBVgVQNScVzfeZDzpsskR73KO','student',1,0,NULL,NULL),(5,'diego.gonzalez6@utn.com','$2y$12$XIow7fEApjMdkyoV8Yum9uYTYKPbocrbk3BfWXHkgkfON/Kri1n3y','student',1,0,NULL,NULL),(6,'belen.perez7@utn.com','$2y$12$0HgwvIhri2CPGtDQuXCTbuXwAcJi1GaFCxRecxfCRMbyhU4CJyCTu','student',1,0,NULL,NULL),(7,'marcos.benitez50@utn.com','$2y$12$YqvdQUmQ1VgNv1oJvgSf0usx8gIJXfb7295l.6D4x9y1GKh868shW','student',1,0,NULL,NULL),(8,'tomas.molina18@utn.com','$2y$12$Du0joK0GEGyZk1Fu5K4v6e.F.FbJe94zJFBQuJjVMkAFUZzqmN5wC','student',1,0,NULL,NULL),(9,'victoria.morales19@utn.com','$2y$12$3qkH9Kf1etCuDukTLLTn/.s.EnmaYsm7mDNjQAOiu/OvJcfGTc.m6','student',1,0,NULL,NULL),(10,'bruno.ortega20@utn.com','$2y$12$0Qf/PyTvaXyYZ4dOMLmoGuRtU8aPr9WzLAwwnic4SWTfffcw/QOHm','student',1,0,NULL,NULL),(11,'bautista.acosta28@utn.com','$2y$12$poNmQgBSsvJSpUx0VSfJg.v.rGKoA5ZEVeJR4hvSONXOjHVZgmvZO','student',1,0,NULL,NULL),(12,'accenture@mail.com','30692338081','company',1,0,NULL,NULL),(14,'sense8@gmail.com','$2y$12$7wd/eqwHN/AZ5V1vIEo7DOxNTPt/daIAQK7JgJbxwAqj818yodzG6','company',1,0,NULL,NULL),(15,'x@mail.com','$2y$12$7wA0giE/ki7HiohpdPDC6uGkOd98EirByQwApP2xB/HcWj54KQvBy','company',1,0,NULL,NULL),(17,'sega@mail.com','$2y$12$RxwNk8RS.fu/Odh5C7oYn.fvDsg0N6ZrnV878L4zIQyEQSgsxs.I6','company',1,0,NULL,NULL),(18,'ripcurl@mail.com','$2y$12$JX/pf2N8MDFt/XPYpUFsSeRdnIE/XwpC67tMh3xsajdjKU8w1Nu4S','company',1,0,NULL,NULL),(19,'bausela@mail.com','$2y$12$yitGZwgIH48M2tTqsaUjVemLGxcrR6SeslziRSDW/oKVVRngwRLKW','company',1,0,NULL,NULL),(20,'utn@mail.com','$2y$12$LdSZS7XLJP82a4kmBXnHdu9aw4k8gsYL7bQ/rPb7bCY5/ykYJabqS','company',1,0,NULL,NULL),(21,'dnrpa@mail.com','$2y$12$l4KpDmm9/FeLC/jNnCMeiO5DRe6gwL9f7S/S7ur3F9xrkC2zNr9Ru','company',1,0,NULL,NULL),(22,'ritter@mail.com','$2y$12$Xs3.Te23w6TjbQl0l7lE3O2WibMvF78Eu39JYmaLljvuvlfCWQs6i','company',1,0,NULL,NULL),(23,'fouques@mail.com','$2y$12$dbJOY2tAzVcJXigzPRQKYuB2nBh0G.Ga86T26zdGo3xG2jaT.JhHW','company',1,0,NULL,NULL),(24,'elite@gmail.com','$2y$12$6wY4dGsKg7tRupT/3vVWzeGOXJSsP12em0zN7AVqhmxeenz0MdW6y','company',1,0,NULL,NULL),(26,'macintosh@mail.com','$2y$12$ydQEV92qmj9vlHVVYkGv7.qdshskRVd95FM9qXfCxT1zpIPqHY.ry','company',1,0,NULL,NULL),(27,'admin2@letswork.com','$2y$12$X58nPMpyQhNbEgmcaIlFgOr8nWDaMgbnmEYQvzXa4le9uvnZwkH6m','admin',0,0,NULL,NULL),(31,'admin3@letswork.com','$2y$12$CMAlW9zyXFJ/GkBt6tqMreA3YlgD7TY9/wb1lBnkUFM6WvHAmMCP.','admin',1,0,NULL,NULL),(32,'ekoparty@mail.com','$2y$12$/v0VFTQ9Ry4cFd4ntHzp0eLmY8uwcgvyssL.7qRrsNUFm4YaAH17.','company',1,0,NULL,NULL),(33,'hack@mail.com','$2y$12$2XaqTgSbZ0Geo9lzwtu9UegLRTO38.HMednSvPAhMOs1lIE/6.8F.','company',1,0,NULL,NULL),(34,'belgrano@mail.com','$2y$12$ZbYKUTmJ3hl7tmdtKJV4kODuTC8rAidO9to7TOneoTccNQSY.zf06','company',1,0,NULL,NULL),(35,'admin4@letswork.com','$2y$12$c0vcutQhn4X9i9aROY8pAOu3IvxTB20ZalaLEg6nvWyno1b0HE99u','admin',0,0,NULL,NULL),(36,'paz.vidal49@utn.com','$2y$12$Y/zh5zAnZF71FxBQ.RMNJueEMdF68L8z2ArobfIOEai4mVYqJO3Ei','student',1,0,NULL,NULL),(37,'uriel.farias48@utn.com','$2y$12$7tpnf17DXWI1KGNS/QgiD.EtR1Rr1MuKanExQ.ci9T2J0rhyo1YKO','student',1,0,NULL,NULL),(38,'juanvaldez@mail.com','$2y$12$CRCxZiizsOI8sq/HmsRVW./CBGkQOgxxCSRwBeyLPRRbEkW/MK7.m','company',1,1,NULL,NULL),(39,'lara.vega39@utn.com','$2y$12$foruu8SeDRTq2iINGkEBqOFOYhlMtMMwdIkhfeUdstzwfVFqQUnpm','student',1,0,NULL,NULL),(40,'mia.aguirre31@utn.com','$2y$12$mu6pRtMYvBjHFcjZb76zL.MmX7IJoZeWOdhZjUvx2Mw11kDnUMp8m','student',1,1,NULL,NULL),(41,'sofia.alvarez11@utn.com','$2y$12$0D9rsLQKi1XXZlzFUAFWK.IViNSi8kYVpe2JeA.HjnAUOJ1MDvDJu','student',1,1,NULL,NULL),(42,'sara.gimenez47@utn.com','$2y$12$89Hevmv9wpU7156JxLCaWOCX/EGI1XDssXhh9O.kVOWKdoCmzUg3W','student',1,0,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `studentId` int NOT NULL AUTO_INCREMENT,
  `careerId` int NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `dni` varchar(20) NOT NULL,
  `fileNumber` varchar(20) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `birthDate` date DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `userId` int DEFAULT NULL,
  PRIMARY KEY (`studentId`),
  KEY `fk_user_id` (`userId`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,6,'Juan','Verneri','12345678','MDP-1001','Masculino','1998-05-20','223445566',1,2),(2,1,'Lucas','Gomez','35123456','MDP-1002','Masculino','1996-03-15','223556677',1,3),(3,5,'Ana','Martinez','37222333','MDP-1005','Femenino','1997-01-30','223665544',1,4),(4,3,'Diego','Gonzalez','42333444','MDP-1006','Masculino','2003-05-12','223334455',1,5),(5,7,'Belen','Perez','39555666','MDP-1007','Femenino','2000-09-18','223009988',1,6),(6,6,'Marcos','Benitez','34111222','MDP-1050','Masculino','1994-01-01','223555888',1,7),(7,2,'Tomas','Molina','37543210','MDP-1018','Masculino','1997-09-09','223777888',1,8),(8,3,'Victoria','Morales','35876543','MDP-1019','Femenino','1996-01-25','223000111',1,9),(9,4,'Bruno','Ortega','43987654','MDP-1020','Masculino','2004-10-31','223222333',1,10),(10,1,'Bautista','Acosta','43000111','MDP-1028','Masculino','2004-01-22','223999888',1,11),(11,7,'Paz','Vidal','39444777','MDP-1049','Femenino','2000-05-05','223000999',1,36),(12,5,'Uriel','Farías','42888666','MDP-1048','Masculino','2003-12-12','223111444',1,37),(13,1,'Lara','Vega','37555000','MDP-1039','Femenino','1997-02-02','223333111',1,39),(14,6,'Mia','Aguirre','38111999','MDP-1031','Femenino','1999-04-04','223222888',1,40),(15,2,'Sofia','Alvarez','34999000','MDP-1011','Femenino','1994-08-14','223554433',1,41),(16,3,'Sara','Gimenez','37000333','MDP-1047','Femenino','1997-10-10','223222555',1,42);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `student_subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_subjects` (
  `studentId` int NOT NULL,
  `subjectId` int NOT NULL,
  PRIMARY KEY (`studentId`,`subjectId`),
  KEY `subjectId` (`subjectId`),
  CONSTRAINT `student_subjects_ibfk_1` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`) ON DELETE CASCADE,
  CONSTRAINT `student_subjects_ibfk_2` FOREIGN KEY (`subjectId`) REFERENCES `subjects` (`subjectId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `student_subjects` WRITE;
/*!40000 ALTER TABLE `student_subjects` DISABLE KEYS */;
INSERT INTO `student_subjects` VALUES (1,1),(1,2),(1,4),(1,6),(1,8),(1,16),(10,19);
/*!40000 ALTER TABLE `student_subjects` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `companyId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `cuit` varchar(11) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `description` text,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `cuit` (`cuit`),
  KEY `fk_company_user` (`userId`),
  CONSTRAINT `fk_company_user` FOREIGN KEY (`userId`) REFERENCES `users` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES 
(1,22,'Globant','30712345678','Mar del Plata','Empresa líder en desarrollo de software y transformación digital.','2234567890',1),
(2,23,'Astillero SPI','33548796124','Mar del Plata','Astillero privado líder en reparaciones y construcciones navales en la región.','2234891234',1),
(3,24,'Solimeno S.A.','30516478952','Mar del Plata','Empresa pesquera integral dedicada a la captura, procesamiento y comercialización de productos marinos.','2234812345',1),
(4,26,'Accenture Argentina','30707189254','CABA','Consultora global de servicios profesionales en estrategia, tecnología y operaciones.','1148975555',1),
(5,32,'Mar del Plata Tecno','30692309555','Mar del Plata','Cámara de empresas de tecnología que impulsa el desarrollo de software local.','2235333666',1),
(6,33,'QM Equipment','30710254871','Mar del Plata','Diseño y fabricación de equipamiento pesado para la industria energética y naval.','2234641122',1),
(7,34,'Grupo Logístico Andreani','30500012457','Tandil','Líder en servicios de logística integral y gestión de cadena de suministro.','1148523699',1),
(8,38,'Consultora Integral MdP','30692334560','Mar del Plata','Estudio de consultoría especializado en gestión ambiental, seguridad e higiene industrial.','2234102030',1);
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `job_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_offers` (
  `jobOfferId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `salary` int DEFAULT NULL,
  `startDate` date NOT NULL,
  `deadline` date NOT NULL,
  `active` tinyint(1) DEFAULT '1',
  `companyId` int NOT NULL,
  `jobPositionId` int NOT NULL,
  `notified` tinyint(1) DEFAULT '0',
  `flyer_image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`jobOfferId`),
  KEY `fk_job_offer_company` (`companyId`),
  KEY `fk_job_offer_job_position` (`jobPositionId`),
  CONSTRAINT `fk_job_offer_company` FOREIGN KEY (`companyId`) REFERENCES `companies` (`companyId`) ON DELETE CASCADE,
  CONSTRAINT `fk_job_offer_job_position` FOREIGN KEY (`jobPositionId`) REFERENCES `job_positions` (`jobPositionId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `job_offers` WRITE;
/*!40000 ALTER TABLE `job_offers` DISABLE KEYS */;
INSERT INTO `job_offers` VALUES 
(1,'Asesor Junior en Certificaciones Ambientales','Buscamos estudiante avanzado de la Tecnicatura en Tecnologías Ambientales. Colaborará en el relevamiento de procesos para adecuación a la norma ISO 14001:2015 y seguimiento de indicadores de sostenibilidad.',450000,'2026-06-01','2026-07-15',1,8,9,1,NULL),
(2,'Asistente de Recursos Humanos Jr.','Orientado a estudiantes de la Tecnicatura en Administración. Soporte en procesos de reclutamiento (screening de CVs), control de ausentismo, gestión de legajos y asistencia en la comunicación interna.',520000,'2026-06-05','2026-07-10',1,4,13,1,NULL),
(3,'Pasantía en Peritaje Naval de Casco','Buscamos estudiante de Ingeniería Naval para incorporarse al staff técnico. Participará en inspecciones de condición, verificación de reparaciones en astillero y redacción de informes periciales iniciales.',600000,'2026-06-10','2026-07-20',1,2,6,1,NULL),
(4,'Junior Backend Developer (Python/FastAPI)','Sumate al equipo de desarrollo. Requisitos: Conocimientos en Python, arquitectura REST, bases de datos relacionales y Git. Se valorará experiencia previa con Docker en entornos locales.',750000,'2026-06-12','2026-07-15',1,1,18,1,NULL),
(5,'Desarrollador Fullstack PHP / MySQL Jr.','Buscamos un programador júnior para el mantenimiento y evolutivos de plataformas internas utilizando PHP (POO), arquitectura MVC y bases de datos MySQL.',680000,'2026-06-15','2026-07-30',1,5,16,1,NULL),
(6,'Analista de Control de Calidad Alimentaria','Destinado a estudiantes avanzados de Ingeniería Pesquera. Sus tareas incluirán el monitoreo de líneas de proceso en planta, control de puntos críticos de control (HACCP) y auditorías de BPM.',580000,'2026-06-18','2026-07-25',1,3,2,1,NULL),
(7,'Técnico en Gestión de Residuos Industriales','Buscamos técnico para coordinar el almacenamiento, segregación y disposición final de residuos peligrosos y no peligrosos en planta industrial, cumpliendo con la normativa ambiental provisional.',490000,'2026-06-20','2026-07-15',1,6,7,1,NULL),
(8,'Analista QA / Tester Trainee','Buscamos estudiantes de programación con ganas de dar sus primeros pasos en QA. Sus principales tareas serán el diseño y ejecución de casos de prueba funcionales, reporte de bugs y armado de documentación.',550000,'2026-06-22','2026-07-20',1,1,17,1,NULL);
/*!40000 ALTER TABLE `job_offers` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `applications` (
  `studentId` int NOT NULL,
  `jobOfferId` int NOT NULL,
  `applicationDate` datetime NOT NULL,
  `status` varchar(20) DEFAULT 'active',
  PRIMARY KEY (`studentId`,`jobOfferId`),
  KEY `fk_application_job_offer` (`jobOfferId`),
  CONSTRAINT `fk_application_job_offer` FOREIGN KEY (`jobOfferId`) REFERENCES `job_offers` (`jobOfferId`) ON DELETE CASCADE,
  CONSTRAINT `fk_application_student` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `applications` WRITE;
/*!40000 ALTER TABLE `applications` DISABLE KEYS */;
INSERT INTO `applications` VALUES 
(1,4,'2026-06-13 10:15:30','interview'),
(1,5,'2026-06-16 14:22:10','active'),
(2,6,'2026-06-19 09:05:14','active'),
(6,8,'2026-06-23 11:40:22','declined'),
(13,3,'2026-06-14 16:44:00','interview'),
(16,1,'2026-06-11 11:11:55','completed'),
(16,7,'2026-06-21 15:30:00','active');
/*!40000 ALTER TABLE `applications` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `interviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interviews` (
  `interviewId` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `jobOfferId` int NOT NULL,
  `date_time` datetime NOT NULL,
  `location_or_link` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'proposed',
  PRIMARY KEY (`interviewId`),
  KEY `fk_interview_application_composite` (`studentId`,`jobOfferId`),
  CONSTRAINT `fk_interview_application_composite` FOREIGN KEY (`studentId`, `jobOfferId`) REFERENCES `applications` (`studentId`, `jobOfferId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `interviews` WRITE;
/*!40000 ALTER TABLE `interviews` DISABLE KEYS */;
INSERT INTO `interviews` VALUES 
(1,1,4,'2026-07-06 15:00:00','https://meet.google.com/abc-defg-hij','scheduled'),
(2,13,3,'2026-07-07 10:30:00','Oficinas SPI - Espigón 4, Puerto MdP','scheduled'),
(3,16,1,'2026-06-25 11:00:00','https://zoom.us/j/123456789','completed');
/*!40000 ALTER TABLE `interviews` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `notificationId` int NOT NULL AUTO_INCREMENT,
  `studentId` int NOT NULL,
  `jobOfferId` int NOT NULL,
  `message` text NOT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`notificationId`),
  KEY `fk_notif_student` (`studentId`),
  KEY `fk_notif_offer` (`jobOfferId`),
  CONSTRAINT `fk_notif_offer` FOREIGN KEY (`jobOfferId`) REFERENCES `job_offers` (`jobOfferId`) ON DELETE CASCADE,
  CONSTRAINT `fk_notif_student` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (1,1,4,'¡Nueva oportunidad! Se publicó la oferta: Junior Backend Developer',1,'2026-06-12 19:46:22'),(2,16,1,'¡Nueva oportunidad! Se publicó la oferta: Asesor Junior en Certificaciones Ambientales',1,'2026-06-01 21:14:08'),(3,2,6,'¡Nueva oportunidad! Se publicó la oferta: Analista de Control de Calidad Alimentaria',1,'2026-06-18 21:31:05');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `student_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_preferences` (
  `studentId` int NOT NULL,
  `jobPositionId` int NOT NULL,
  PRIMARY KEY (`studentId`,`jobPositionId`),
  CONSTRAINT `fk_student_pref` FOREIGN KEY (`studentId`) REFERENCES `students` (`studentId`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `student_preferences` WRITE;
/*!40000 ALTER TABLE `student_preferences` DISABLE KEYS */;
INSERT INTO `student_preferences` VALUES (1,16),(13,3),(16,7),(16,8),(16,9);
/*!40000 ALTER TABLE `student_preferences` ENABLE KEYS */;
UNLOCK TABLES;

SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;