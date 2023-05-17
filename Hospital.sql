CREATE DATABASE  IF NOT EXISTS `hospital` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `hospital`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hospital
-- ------------------------------------------------------
-- Server version	5.6.20-log

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
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `id_consulta` int(11) NOT NULL AUTO_INCREMENT,
  `Data` date DEFAULT NULL,
  `Hora` varchar(20) DEFAULT NULL,
  `id_Medico` varchar(255) DEFAULT NULL,
  `id_Paciente` varchar(255) DEFAULT NULL,
  `valor_consulta` decimal(5,2) DEFAULT NULL,
  `id_convenio` int(11) DEFAULT NULL,
  `id_especialidade` int(11) DEFAULT NULL,
  `id_receita` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_consulta`),
  KEY `id_convenio` (`id_convenio`),
  KEY `id_especialidade` (`id_especialidade`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (1,'2017-03-05','09:30:00','1','1',150.00,1,1,3),(2,'2015-07-10','14:15:00','2','2',200.00,2,2,11),(3,'2016-09-18','11:00:00','3','3',120.00,3,3,1),(4,'2015-11-25','16:45:00','4','4',180.00,4,5,5),(5,'2021-04-02','10:30:00','5','5',160.00,5,6,5),(6,'2017-08-12','13:00:00','6','6',170.00,NULL,7,2),(7,'2018-06-30','15:45:00','7','7',190.00,NULL,8,11),(8,'2016-02-14','09:00:00','8','8',130.00,NULL,4,2),(9,'2020-05-07','11:30:00','9','9',140.00,NULL,1,2),(10,'2019-11-21','14:45:00','10','10',170.00,NULL,6,5),(11,'2017-07-09','10:15:00','11','11',160.00,NULL,10,9),(12,'2018-03-02','13:30:00','12','12',150.00,NULL,9,8),(13,'2020-09-17','15:00:00','5','13',180.00,NULL,6,5),(14,'2015-11-22','09:45:00','6','14',130.00,NULL,7,4),(15,'2021-05-10','11:15:00','3','15',150.00,NULL,3,1),(16,'2016-08-08','13:45:00','2','16',160.00,NULL,2,11),(17,'2017-06-29','10:30:00','1','17',170.00,NULL,1,2),(18,'2016-02-13','14:00:00','8','18',140.00,NULL,4,1),(19,'2020-05-06','16:15:00','10','19',190.00,NULL,6,5),(20,'2019-11-20','09:30:00','4','20',180.00,NULL,5,5);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convenio`
--

DROP TABLE IF EXISTS `convenio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convenio` (
  `id_convenio` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) DEFAULT NULL,
  `Cnpj` varchar(30) DEFAULT NULL,
  `Tempo_carencia` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_convenio`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convenio`
--

LOCK TABLES `convenio` WRITE;
/*!40000 ALTER TABLE `convenio` DISABLE KEYS */;
INSERT INTO `convenio` VALUES (1,'Convênio A','12345678901234','30'),(2,'Convênio B','98765432109876','60'),(3,'Convênio C','54321678905432','15'),(4,'Convênio D','90876543210987','45'),(5,'Convênio E','76543210987654','20');
/*!40000 ALTER TABLE `convenio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermeiro`
--

DROP TABLE IF EXISTS `enfermeiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermeiro` (
  `id_enfermeiro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `cre` varchar(255) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_formacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_enfermeiro`),
  KEY `id_formacao` (`id_formacao`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermeiro`
--

LOCK TABLES `enfermeiro` WRITE;
/*!40000 ALTER TABLE `enfermeiro` DISABLE KEYS */;
INSERT INTO `enfermeiro` VALUES (1,'Maria da Silva','123.456.789-00','98765','F','Rua das Flores, 123','123456789','maria.silva@example.com',3),(2,'João Santos','987.654.321-00','54321','M','Avenida Central, 456','987654321','joao.santos@example.com',3),(3,'Ana Oliveira','456.123.789-00','24680','F','Travessa das Palmeiras, 789','456123789','ana.oliveira@example.com',3),(4,'Pedro Ferreira','789.321.654-00','13579','M','Rua dos Pinheiros, 987','789321654','pedro.ferreira@example.com',3),(5,'Laura Santos','987.789.321-00','24680','F','Avenida dos Eucaliptos, 654','987789321','laura.santos@example.com',3),(6,'Carlos Lima','321.789.987-00','97531','M','Rua das Oliveiras, 321','321789987','carlos.lima@example.com',3),(7,'Beatriz Santos','654.987.123-00','75310','F','Rua das Palmas, 987','654987123','beatriz.santos@example.com',3),(8,'Andréia Oliveira','789.321.654-00','15973','F','Avenida dos Lírios, 654','789321654','andreia.oliveira@example.com',3),(9,'Ricardo Almeida','987.789.321-00','75391','M','Rua das Acácias, 456','987789321','ricardo.almeida@example.com',3),(10,'Juliana Costa','321.789.987-00','36974','F','Avenida dos Pinheiros, 321','321789987','juliana.costa@example.com',3);
/*!40000 ALTER TABLE `enfermeiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidade`
--

DROP TABLE IF EXISTS `especialidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especialidade` (
  `id_especialidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome_especialidade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_especialidade`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidade`
--

LOCK TABLES `especialidade` WRITE;
/*!40000 ALTER TABLE `especialidade` DISABLE KEYS */;
INSERT INTO `especialidade` VALUES (1,'Pediatria'),(2,'Ortopedia'),(3,'Oftalmologia'),(4,'Gastrenterologia'),(5,'Clínica_Geral'),(6,'Pediatria'),(7,'Dermatologia'),(8,'Neurologia'),(9,'Cardiologia');
/*!40000 ALTER TABLE `especialidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formacao`
--

DROP TABLE IF EXISTS `formacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formacao` (
  `id_formacao` int(11) NOT NULL AUTO_INCREMENT,
  `nome_formacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_formacao`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formacao`
--

LOCK TABLES `formacao` WRITE;
/*!40000 ALTER TABLE `formacao` DISABLE KEYS */;
INSERT INTO `formacao` VALUES (1,'Generalista'),(2,'Especialista'),(3,'Residente');
/*!40000 ALTER TABLE `formacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `internacao`
--

DROP TABLE IF EXISTS `internacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `internacao` (
  `id_internaca` int(11) NOT NULL AUTO_INCREMENT,
  `id_quarto` int(11) DEFAULT NULL,
  `id_medico` int(11) DEFAULT NULL,
  `id_enfermeiro1` int(11) DEFAULT NULL,
  `id_enfermeiro2` int(11) DEFAULT NULL,
  `id_paciente` int(11) DEFAULT NULL,
  `data_entrada` date DEFAULT NULL,
  `data_prev_alta` date DEFAULT NULL,
  `data_alta` date DEFAULT NULL,
  `procedimento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_internaca`),
  KEY `id_enfermeiro2` (`id_enfermeiro2`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `internacao`
--

LOCK TABLES `internacao` WRITE;
/*!40000 ALTER TABLE `internacao` DISABLE KEYS */;
INSERT INTO `internacao` VALUES (1,1,1,1,2,1,'2021-06-15','2021-07-01','2021-07-05','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make'),(2,1,1,1,2,1,'2021-06-15','2021-07-01','2021-07-05','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make'),(3,2,2,3,4,2,'2021-07-15','2021-08-01','2021-08-05','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make'),(4,3,3,5,6,3,'2021-08-15','2021-09-01','2021-09-05','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make'),(5,4,4,7,8,4,'2021-05-15','2021-06-01','2021-07-05','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make'),(6,5,5,9,10,5,'2021-08-15','2021-08-01','2021-10-05','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make');
/*!40000 ALTER TABLE `internacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(255) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `crm` varchar(15) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_especialidade` int(11) DEFAULT NULL,
  `id_formacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_medico`),
  KEY `id_especialidade` (`id_especialidade`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'José Oliveira','M','12345','111.222.333-44','Rua das Flores, 123, Bairro Centro, São Paulo - SP','(11) 99999-9999','jose.oliveira@cardio.com',1,1),(2,'Ana Souza','F','56789','222.333.444-55','Rua das Acácias, 456, Bairro Jardim, Rio de Janeiro - RJ','(21) 88888-8888','ana.souza@neuro.com',2,2),(3,'Carlos Ferreira','M','98765','333.444.555-66','Rua das Oliveiras, 789, Bairro Oliveira, Belo Horizonte - MG','(31) 77777-7777','carlos.ferreira@dermato.com',3,2),(4,'Fernanda Silva','F','24680','444.555.666-77','Rua dos Lírios, 135, Bairro Flor, Porto Alegre - RS','(51) 66666-6666','fernanda.silva@pediatra.com',5,1),(5,'Rafaela Costa','F','13579','555.666.777-88','Rua dos Cravos, 246, Bairro Jasmim, Florianópolis - SC','(48) 55555-5555','rafaela.costa@clinicageral.com',6,1),(6,'Daniel Santos','M','46810','666.777.888-99','Rua das Rosas, 579, Bairro Rosal, Campinas - SP','(19) 44444-4444','daniel.santos@gastro.com',7,2),(7,'Mariana Pereira','F','10111','777.888.999-00','Rua das Orquídeas, 246, Bairro Orquidário, Curitiba - PR','(41) 33333-3333','mariana.pereira@oftalmo.com',8,2),(8,'Luiz Costa','M','12121','888.999.000-11','Rua dos Girassóis, 789, Bairro Girassol, Belém - PA','(91) 22222-2222','luiz.costa@ortopedia.com',4,2),(9,'Paula Santos','F','19283','999.888.777-66','Rua das Margaridas, 246, Bairro Margarida, Salvador - BA','(71) 55555-5555','paula.santos@dermato.com',1,2),(10,'Maria Silva','F','12345','111.222.333-44','Rua das Flores, 123, Bairro Centro, São Paulo - SP','(11) 99999-9999','maria.silva@cardio.com',6,2),(11,'Pedro Santos','M','56789','222.333.444-55','Rua das Acácias, 456, Bairro Jardim, Rio de Janeiro - RJ','(21) 88888-8888','pedro.santos@neuro.com',10,2),(12,'Julia Costa','F','98765','333.444.555-66','Rua das Oliveiras, 789, Bairro Oliveira, Belo Horizonte - MG','(31) 77777-7777','julia.costa@dermato.com',9,2);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `id_paciente` int(11) NOT NULL AUTO_INCREMENT,
  `Nome_completo` varchar(255) DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `Data_Nascimento` date DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Telefone` varchar(30) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `CPF` varchar(15) DEFAULT NULL,
  `RG` varchar(15) DEFAULT NULL,
  `id_Convenio` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_paciente`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'João da Silva','M','1990-05-10','Rua A, 123','(11) 1111-1111','joao.silva@example.com','111.111.111-11','1234567',1),(2,'Maria Santos','F','1995-07-15','Rua B, 456','(22) 2222-2222','maria.santos@example.com','222.222.222-22','2345678',2),(3,'Carlos Oliveira','M','1988-03-20','Rua C, 789','(33) 3333-3333','carlos.oliveira@example.com','333.333.333-33','3456789',3),(4,'Ana Costa','F','1992-09-25','Rua D, 012','(44) 4444-4444','ana.costa@example.com','444.444.444-44','4567890',4),(5,'Pedro Rodrigues','M','1997-11-30','Rua E, 345','(55) 5555-5555','pedro.rodrigues@example.com','555.555.555-55','5678901',5),(6,'Juliana Fernandes','F','1991-04-05','Rua F, 678','(66) 6666-6666','juliana.fernandes@example.com','666.666.666-66','6789012',NULL),(7,'Rafaela Almeida','F','1989-06-15','Rua G, 901','(77) 7777-7777','rafaela.almeida@example.com','777.777.777-77','7890123',NULL),(8,'Lucas Pereira','M','1994-02-25','Rua H, 234','(88) 8888-8888','lucas.pereira@example.com','888.888.888-88','8901234',NULL),(9,'Laura Souza','F','1996-08-10','Rua I, 567','(99) 9999-9999','laura.souza@example.com','999.999.999-99','9012345',NULL),(10,'Mariano Santos','M','1993-12-05','Rua J, 890','(00) 0000-0000','mariano.santos@example.com','000.000.000-10','0123451',NULL),(11,'Maria Silva','F','1990-05-15','Rua A, 123','(11) 1111-1111','maria.silva@example.com','111.111.111-11','1234562',NULL),(12,'João Souza','M','1985-07-20','Rua B, 456','(22) 2222-2222','joao.souza@example.com','222.222.222-12','2345673',NULL),(13,'Julia Santos','F','2000-03-10','Av. C, 789','(33) 3333-3333','julia.santos@example.com','333.333.333-13','3456784',NULL),(14,'Pedro Oliveira','M','1995-12-05','Rua D, 246','(44) 4444-4444','pedro.oliveira@example.com','444.444.444-14','4567895',NULL),(15,'Ana Costa','F','1980-01-30','Av. E, 369','(55) 5555-5555','ana.costa@example.com','555.555.555-15','5678901',NULL),(16,'Lucas Ferreira','M','1992-08-25','Rua F, 802','(66) 6666-6666','lucas.ferreira@example.com','666.666.666-16','6789016',NULL),(17,'Mariana Santos','F','1988-04-12','Av. G, 528','(77) 7777-7777','mariana.santos@example.com','777.777.777-17','7890127',NULL),(18,'Fernando Silva','M','1999-06-18','Rua H, 468','(88) 8888-8888','fernando.silva@example.com','888.888.888-18','8901238',NULL),(19,'Carla Oliveira','F','2005-09-22','Av. I, 364','(99) 9999-9999','carla.oliveira@example.com','999.999.999-19','9012349',NULL),(20,'Rafael Souza','M','1987-11-01','Rua J, 632','(00) 0000-0000','rafael.souza@example.com','000.000.000-20','0123410',NULL);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quarto`
--

DROP TABLE IF EXISTS `quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quarto` (
  `id_quarto` int(11) NOT NULL AUTO_INCREMENT,
  `numero` tinyint(30) DEFAULT NULL,
  `id_tipo_quarto` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_quarto`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quarto`
--

LOCK TABLES `quarto` WRITE;
/*!40000 ALTER TABLE `quarto` DISABLE KEYS */;
INSERT INTO `quarto` VALUES (1,101,1),(2,127,2),(3,127,3),(4,127,4),(5,127,5),(6,100,6);
/*!40000 ALTER TABLE `quarto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receita`
--

DROP TABLE IF EXISTS `receita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receita` (
  `id_receita` int(11) NOT NULL AUTO_INCREMENT,
  `Medicamentos` varchar(255) DEFAULT NULL,
  `Quantidade` varchar(30) DEFAULT NULL,
  `Instrucoes` varchar(400) DEFAULT NULL,
  `id_consulta` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_receita`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receita`
--

LOCK TABLES `receita` WRITE;
/*!40000 ALTER TABLE `receita` DISABLE KEYS */;
INSERT INTO `receita` VALUES (1,'Paracetamol','1 comprimido de 500mg','3 vezes ao dia',NULL),(2,'Amoxicilina','1 comprimido de 500mg','2 vezes ao dia',NULL),(3,'Ibuprofeno','1 comprimido de 400mg','3 vezes ao dia',NULL),(4,'Dipirona','1 comprimido de 500mg','4 vezes ao dia',NULL),(5,'Omeprazol','1 comprimido de 20mg','1 vez ao dia',NULL),(6,'Dipirona','1 comprimido de 500mg','4 vezes ao dia',NULL),(7,'Cefalexina','1 comprimido de 500mg','3 vezes ao dia',NULL),(8,'Carbamazepina','1 comprimido de 500mg','3 vezes ao dia',NULL),(9,'AAS','1 comprimido de 500mg','2 vezes ao dia',NULL),(10,'Ibuprofeno','1 comprimido de 400mg','3 vezes ao dia',NULL),(11,'Ácido salicílico','1 comprimido de 500mg','4 vezes ao dia',NULL),(12,'Prednisolona','1 comprimido de 20mg','1 vez ao dia',NULL);
/*!40000 ALTER TABLE `receita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_quarto`
--

DROP TABLE IF EXISTS `tipo_quarto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_quarto` (
  `id_tipo_quarto` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `valor_diaria` decimal(5,2) DEFAULT NULL,
  `id_internacao` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tipo_quarto`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_quarto`
--

LOCK TABLES `tipo_quarto` WRITE;
/*!40000 ALTER TABLE `tipo_quarto` DISABLE KEYS */;
INSERT INTO `tipo_quarto` VALUES (1,'Apartamento',400.00,1),(2,'Quarto Duplo',250.00,2),(3,'Enfermaria',150.00,3),(4,'Apartamento',400.00,4),(5,'Enfermaria',250.00,5),(6,'Enfermaria',150.00,6);
/*!40000 ALTER TABLE `tipo_quarto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-17 13:54:54
