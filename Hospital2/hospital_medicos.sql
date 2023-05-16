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
-- Table structure for table `medicos`
--

DROP TABLE IF EXISTS `medicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL AUTO_INCREMENT,
  `nome_completo` varchar(255) NOT NULL,
  `especialidade` varchar(255) NOT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `crm` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `telefone` varchar(30) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `id_formacao` int(11) DEFAULT NULL,
  `id_especialidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_medico`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicos`
--

LOCK TABLES `medicos` WRITE;
/*!40000 ALTER TABLE `medicos` DISABLE KEYS */;
INSERT INTO `medicos` VALUES (1,'José Oliveira','','M','12345','111.222.333-44','Rua das Flores, 123, Bairro Centro, São Paulo - SP','(11) 99999-9999','jose.oliveira@cardio.com',NULL,NULL),(2,'Ana Souza','','F','56789','222.333.444-55','Rua das Acácias, 456, Bairro Jardim, Rio de Janeiro - RJ','(21) 88888-8888','ana.souza@neuro.com',NULL,NULL),(3,'Carlos Ferreira','','M','98765','333.444.555-66','Rua das Oliveiras, 789, Bairro Oliveira, Belo Horizonte - MG','(31) 77777-7777','carlos.ferreira@dermato.com',NULL,NULL),(4,'Fernanda Silva','','F','24680','444.555.666-77','Rua dos Lírios, 135, Bairro Flor, Porto Alegre - RS','(51) 66666-6666','fernanda.silva@pediatra.com',NULL,NULL),(5,'Rafaela Costa','','F','13579','555.666.777-88','Rua dos Cravos, 246, Bairro Jasmim, Florianópolis - SC','(48) 55555-5555','rafaela.costa@clinicageral.com',NULL,NULL),(6,'Daniel Santos','','M','46810','666.777.888-99','Rua das Rosas, 579, Bairro Rosal, Campinas - SP','(19) 44444-4444','daniel.santos@gastro.com',NULL,NULL),(7,'Mariana Pereira','','F','10111','777.888.999-00','Rua das Orquídeas, 246, Bairro Orquidário, Curitiba - PR','(41) 33333-3333','mariana.pereira@oftalmo.com',NULL,NULL),(8,'Luiz Costa','','M','12121','888.999.000-11','Rua dos Girassóis, 789, Bairro Girassol, Belém - PA','(91) 22222-2222','luiz.costa@ortopedia.com',NULL,NULL),(9,'Paula Santos','','F','19283','999.888.777-66','Rua das Margaridas, 246, Bairro Margarida, Salvador - BA','(71) 55555-5555','paula.santos@dermato.com',NULL,NULL),(10,'Maria Silva','','F','12345','111.222.333-44','Rua das Flores, 123, Bairro Centro, São Paulo - SP','(11) 99999-9999','maria.silva@cardio.com',NULL,NULL),(11,'Pedro Santos','','M','56789','222.333.444-55','Rua das Acácias, 456, Bairro Jardim, Rio de Janeiro - RJ','(21) 88888-8888','pedro.santos@neuro.com',NULL,NULL),(12,'Julia Costa','','F','98765','333.444.555-66','Rua das Oliveiras, 789, Bairro Oliveira, Belo Horizonte - MG','(31) 77777-7777','julia.costa@dermato.com',NULL,NULL);
/*!40000 ALTER TABLE `medicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-15 22:09:25
