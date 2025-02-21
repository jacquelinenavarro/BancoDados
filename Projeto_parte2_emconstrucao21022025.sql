CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	8.0.37

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
-- Table structure for table `administra_usuario`
--

DROP TABLE IF EXISTS `administra_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administra_usuario` (
  `codigo_admin` int NOT NULL,
  `codigo_usuario` int NOT NULL,
  `data_acao` datetime DEFAULT CURRENT_TIMESTAMP,
  `tipo_acao` enum('bloquear','desbloquear','promover') NOT NULL,
  PRIMARY KEY (`codigo_admin`,`codigo_usuario`),
  KEY `codigo_usuario` (`codigo_usuario`),
  CONSTRAINT `administra_usuario_ibfk_1` FOREIGN KEY (`codigo_admin`) REFERENCES `usuario` (`Codigo_Usuario`),
  CONSTRAINT `administra_usuario_ibfk_2` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`Codigo_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administra_usuario`
--

LOCK TABLES `administra_usuario` WRITE;
/*!40000 ALTER TABLE `administra_usuario` DISABLE KEYS */;
INSERT INTO `administra_usuario` VALUES (3,1,'2025-01-15 14:30:00','bloquear'),(3,2,'2025-01-16 09:45:00','desbloquear'),(3,4,'2025-01-17 10:00:00','promover'),(3,5,'2025-01-18 11:15:00','bloquear');
/*!40000 ALTER TABLE `administra_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `Codigo_Autor` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Pseudonimo` varchar(255) DEFAULT NULL,
  `Nacionalidade` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Codigo_Autor`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Joaquim Maria Machado de Assis','1839-06-21',NULL,'Brasileiro'),(2,'Clarice Lispector','1920-12-10',NULL,'Brasileira'),(3,'Jorge Amado','1912-08-10',NULL,'Brasileiro'),(4,'Machado de Assis','1839-06-21',NULL,'Brasileiro'),(5,'Clarice Lispector','1920-12-10',NULL,'Brasileira'),(49,'Mário de Andrade','1893-10-09',NULL,'Brasileiro'),(50,'João Guimarães Rosa','1908-06-27',NULL,'Brasileiro'),(51,'Aluísio Azevedo','1857-04-14',NULL,'Brasileiro'),(52,'Graciliano Ramos','1892-10-27',NULL,'Brasileiro'),(53,'José de Alencar','1829-05-01',NULL,'Brasileiro'),(54,'Joaquim Manuel de Macedo','1820-06-24',NULL,'Brasileiro'),(55,'Euclides da Cunha','1866-01-20',NULL,'Brasileiro'),(56,'Lima Barreto','1881-05-13',NULL,'Brasileiro'),(57,'José Lins do Rego','1901-06-03',NULL,'Brasileiro'),(58,'Rachel de Queiroz','1910-11-17',NULL,'Brasileira'),(59,'Osman Lins','1924-07-05',NULL,'Brasileiro'),(60,'Dias Gomes','1922-10-19',NULL,'Brasileiro'),(61,'Ariano Suassuna','1927-06-16',NULL,'Brasileiro'),(62,'Joaquim Maria Machado de Assis','1839-06-21',NULL,'Brasileiro'),(63,'Clarice Lispector','1920-12-10',NULL,'Brasileira'),(64,'Jorge Amado','1912-08-10',NULL,'Brasileiro'),(65,'José de Alencar','1829-05-01',NULL,'Brasileiro'),(66,'Aluísio Azevedo','1857-04-14',NULL,'Brasileiro'),(67,'Graciliano Ramos','1892-10-27',NULL,'Brasileiro'),(68,'José de Alencar','1829-05-01',NULL,'Brasileiro'),(69,'Joaquim Manuel de Macedo','1820-06-24',NULL,'Brasileiro'),(70,'Euclides da Cunha','1866-01-20',NULL,'Brasileiro'),(71,'José Lins do Rego','1901-06-03',NULL,'Brasileiro'),(72,'Silva, J.','1980-01-01',NULL,'Brasileiro'),(73,'Ferreira, A.','1981-02-02',NULL,'Brasileiro'),(74,'Mendes, R.','1982-03-03',NULL,'Brasileiro'),(75,'Gomes, L.','1983-04-04',NULL,'Brasileiro'),(76,'Santos, M.','1984-05-05',NULL,'Brasileiro'),(77,'Lima, F.','1985-06-06',NULL,'Brasileiro'),(78,'Costa, P.','1986-07-07',NULL,'Brasileiro'),(79,'Oliveira, T.','1987-08-08',NULL,'Brasileiro'),(80,'Nunes, V.','1988-09-09',NULL,'Brasileiro'),(81,'Almeida, C.','1989-10-10',NULL,'Brasileiro'),(82,'Pereira, D.','1990-11-11',NULL,'Brasileiro'),(83,'Siqueira, E.','1991-12-12',NULL,'Brasileiro'),(84,'Moraes, R.','1992-01-01',NULL,'Brasileiro'),(85,'Ferreira, S.','1993-02-02',NULL,'Brasileiro'),(86,'Santos, P.','1994-03-03',NULL,'Brasileiro'),(87,'Mendes, J.','1995-04-04',NULL,'Brasileiro'),(88,'Gomes, A.','1996-05-05',NULL,'Brasileiro'),(89,'Lima, R.','1997-06-06',NULL,'Brasileiro'),(90,'Costa, F.','1998-07-07',NULL,'Brasilero');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avalia_obra`
--

DROP TABLE IF EXISTS `avalia_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avalia_obra` (
  `codigo_avaliacao` int NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int DEFAULT NULL,
  `codigo_obra` int DEFAULT NULL,
  `data_avaliacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `nota` int NOT NULL,
  `comentario` text,
  PRIMARY KEY (`codigo_avaliacao`),
  KEY `codigo_usuario` (`codigo_usuario`),
  KEY `codigo_obra` (`codigo_obra`),
  CONSTRAINT `avalia_obra_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`Codigo_Usuario`),
  CONSTRAINT `avalia_obra_ibfk_2` FOREIGN KEY (`codigo_obra`) REFERENCES `obraimpressa` (`Codigo_Obra`),
  CONSTRAINT `avalia_obra_chk_1` CHECK (((`nota` >= 1) and (`nota` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avalia_obra`
--

LOCK TABLES `avalia_obra` WRITE;
/*!40000 ALTER TABLE `avalia_obra` DISABLE KEYS */;
/*!40000 ALTER TABLE `avalia_obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `Endereco_ID` int NOT NULL AUTO_INCREMENT,
  `Rua` varchar(255) NOT NULL,
  `Numero` int NOT NULL,
  `Complemento` varchar(255) DEFAULT NULL,
  `Bairro` varchar(255) NOT NULL,
  `Cidade` varchar(255) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  PRIMARY KEY (`Endereco_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua das Flores',123,'Apto 101','Centro','Olinda','53010-001'),(2,'Avenida Brasil',456,NULL,'Jardim das Palmeiras','Recife','50030-001'),(3,'Rua do Sol',789,'Casa','Boa Viagem','Recife','51020-001'),(4,'Rua das Acácias',101,'Apto 202','Iputinga','Olinda','53040-001'),(5,'Avenida Boa Viagem',202,NULL,'Boa Vista','Recife','50050-001'),(6,'Rua das Mangueiras',142,'Apto 303','Pina','Recife','51110-001'),(7,'Avenida João Pessoa',278,'Casa','Cajueiro','Olinda','53120-001'),(8,'Rua dos Pinheiros',312,'Apto 404','Espinheiro','Recife','52020-001'),(9,'Avenida Domingos Ferreira',4595,'Apto 805','Pina','Recife','51110-002'),(10,'Rua Marquês de Olinda',182,'Casa','Varadouro','Olinda','53100-001'),(11,'Avenida Governador Agamenon Magalhães',1234,'Apto 101','Derby','Recife','52010-002'),(12,'Rua Bom Jesus',87,'Apto 201','Recife Antigo','Recife','50030-002'),(13,'Avenida Caxangá',1440,'Casa','Cordeiro','Recife','50721-001'),(14,'Rua da Harmonia',305,'Apto 203','Casa Amarela','Recife','52120-001'),(15,'Avenida Conselheiro Aguiar',6789,'Apto 1503','Boa Viagem','Recife','51020-002'),(16,'Rua São Francisco',456,'Casa','Carmo','Olinda','53120-002'),(17,'Avenida Herculano Bandeira',248,'Casa','Ilha do Retiro','Recife','50710-001'),(18,'Rua do Futuro',222,'Apto 402','Aflitos','Recife','52050-001'),(19,'Avenida Conde da Boa Vista',912,'Apto 301','Boa Vista','Recife','50060-001'),(20,'Rua 13 de Maio',789,'Casa','Várzea','Recife','50741-001'),(21,'Avenida Dantas Barreto',456,'Apto 1103','São José','Recife','50010-001'),(22,'Rua Joaquim Nabuco',302,'Apto 702','Parnamirim','Recife','52060-001'),(23,'Avenida Rosa e Silva',1985,'Apto 1104','Aflitos','Recife','52050-002'),(24,'Rua do Apolo',150,'Casa','Recife Antigo','Recife','50030-003'),(25,'Avenida Beira Mar',999,'Apto 1701','Piedade','Jaboatão dos Guararapes','54400-001'),(26,'Rua Padre Roma',345,'Apto 603','Torre','Recife','50710-002'),(27,'Avenida Norte Miguel Arraes de Alencar',1234,'Apto 1205','Santo Amaro','Recife','50100-001'),(28,'Rua da Aurora',500,'Casa','Santo Antônio','Recife','50050-002'),(29,'Avenida Presidente Kennedy',678,'Apto 1103','Peixinhos','Olinda','53220-001'),(30,'Rua da Imperatriz',789,'Apto 403','Santo Antônio','Recife','50010-002'),(31,'Avenida General San Martin',1010,'Apto 503','Afogados','Recife','50710-003'),(32,'Rua Henrique Dias',234,'Casa','Derby','Recife','52010-003'),(33,'Avenida Boa Esperança',876,'Apto 1204','Dois Irmãos','Recife','52041-001'),(34,'Rua Benfica',456,'Casa','Madalena','Recife','50610-001'),(35,'Avenida Guararapes',908,'Apto 605','São José','Recife','50010-003');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escreve`
--

DROP TABLE IF EXISTS `escreve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escreve` (
  `codigo_autor` int NOT NULL,
  `codigo_obra` int NOT NULL,
  PRIMARY KEY (`codigo_autor`,`codigo_obra`),
  KEY `codigo_obra` (`codigo_obra`),
  CONSTRAINT `escreve_ibfk_1` FOREIGN KEY (`codigo_autor`) REFERENCES `autor` (`Codigo_Autor`),
  CONSTRAINT `escreve_ibfk_2` FOREIGN KEY (`codigo_obra`) REFERENCES `obraimpressa` (`Codigo_Obra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escreve`
--

LOCK TABLES `escreve` WRITE;
/*!40000 ALTER TABLE `escreve` DISABLE KEYS */;
/*!40000 ALTER TABLE `escreve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genero_literario`
--

DROP TABLE IF EXISTS `genero_literario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genero_literario` (
  `Codigo_Genero` int NOT NULL AUTO_INCREMENT,
  `Nome_Genero` varchar(255) NOT NULL,
  `Descricao` text,
  PRIMARY KEY (`Codigo_Genero`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genero_literario`
--

LOCK TABLES `genero_literario` WRITE;
/*!40000 ALTER TABLE `genero_literario` DISABLE KEYS */;
INSERT INTO `genero_literario` VALUES (1,'Romance','Narrativa longa e fictícia que envolve personagens e eventos que se desenrolam ao longo de um período de tempo.'),(2,'Poesia','Gênero literário que se caracteriza pelo uso de versos e estrofes, explorando a linguagem de forma criativa e estética.'),(3,'Conto','Narrativa curta e fictícia que se concentra em um único evento ou personagem principal.'),(4,'Biografia','Relato detalhado sobre a vida de uma pessoa, geralmente escrito por outra pessoa.'),(5,'Artigo Científico','Trabalho escrito que apresenta resultados de pesquisas científicas originais, revisões ou estudos teóricos em diversas áreas do conhecimento.'),(6,'Ensaio','Texto curto que expressa a opinião do autor sobre um determinado tema, abordando-o de maneira pessoal e subjetiva.'),(7,'Ficção Científica','Gênero que explora conceitos futuristas e tecnológicos, muitas vezes extrapolando descobertas científicas e tecnológicas atuais.'),(8,'Fantasia','Gênero que envolve elementos mágicos e sobrenaturais, situando-se em universos fictícios.'),(9,'Drama','Narrativa que foca em conflitos emocionais e situações difíceis, explorando a profundidade psicológica dos personagens.'),(10,'História em Quadrinhos','Narrativa visual composta por uma sequência de imagens e textos, geralmente distribuída em quadrinhos.'),(11,'Manual Técnico','Documento que fornece instruções detalhadas e informações sobre a operação, montagem ou manutenção de dispositivos técnicos.'),(12,'Relatório de Pesquisa','Documento que apresenta os resultados de uma pesquisa científica de forma detalhada e estruturada.'),(13,'Revisão de Literatura','Artigo que compila e analisa criticamente a literatura existente sobre um determinado tema de pesquisa.'),(14,'Estudo de Caso','Artigo que descreve e analisa detalhadamente um caso específico, geralmente para ilustrar um conceito ou teoria.');
/*!40000 ALTER TABLE `genero_literario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gera_multa`
--

DROP TABLE IF EXISTS `gera_multa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gera_multa` (
  `codigo_emprestimo` int NOT NULL,
  `codigo_multa` int NOT NULL,
  PRIMARY KEY (`codigo_emprestimo`,`codigo_multa`),
  KEY `codigo_multa` (`codigo_multa`),
  CONSTRAINT `gera_multa_ibfk_1` FOREIGN KEY (`codigo_emprestimo`) REFERENCES `realiza_emprestimo` (`codigo_emprestimo`),
  CONSTRAINT `gera_multa_ibfk_2` FOREIGN KEY (`codigo_multa`) REFERENCES `multa` (`codigo_multa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gera_multa`
--

LOCK TABLES `gera_multa` WRITE;
/*!40000 ALTER TABLE `gera_multa` DISABLE KEYS */;
/*!40000 ALTER TABLE `gera_multa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerencia_obra`
--

DROP TABLE IF EXISTS `gerencia_obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerencia_obra` (
  `codigo_admin` int NOT NULL,
  `codigo_obra` int NOT NULL,
  `data_acao` datetime DEFAULT CURRENT_TIMESTAMP,
  `tipo_acao` enum('adicionar','editar','remover') NOT NULL,
  PRIMARY KEY (`codigo_admin`,`codigo_obra`),
  KEY `codigo_obra` (`codigo_obra`),
  CONSTRAINT `gerencia_obra_ibfk_1` FOREIGN KEY (`codigo_admin`) REFERENCES `usuario` (`Codigo_Usuario`),
  CONSTRAINT `gerencia_obra_ibfk_2` FOREIGN KEY (`codigo_obra`) REFERENCES `obraimpressa` (`Codigo_Obra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerencia_obra`
--

LOCK TABLES `gerencia_obra` WRITE;
/*!40000 ALTER TABLE `gerencia_obra` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerencia_obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `multa`
--

DROP TABLE IF EXISTS `multa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `multa` (
  `codigo_multa` int NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int DEFAULT NULL,
  `codigo_emprestimo` int DEFAULT NULL,
  `valor` decimal(10,2) NOT NULL,
  `data_emissao` date NOT NULL,
  `status` enum('Pendente','Paga') NOT NULL,
  PRIMARY KEY (`codigo_multa`),
  KEY `codigo_usuario` (`codigo_usuario`),
  CONSTRAINT `multa_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`Codigo_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `multa`
--

LOCK TABLES `multa` WRITE;
/*!40000 ALTER TABLE `multa` DISABLE KEYS */;
/*!40000 ALTER TABLE `multa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obraimpressa`
--

DROP TABLE IF EXISTS `obraimpressa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obraimpressa` (
  `Codigo_Obra` int NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(255) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Codigo_Genero` int NOT NULL,
  `Resumo` text,
  `Referencia_Bibliografica` text,
  `Quantidade` int NOT NULL,
  `Idioma` varchar(50) NOT NULL,
  `Numero_Paginas` int NOT NULL,
  `Ano_Publicacao` year NOT NULL,
  `Editora` varchar(255) NOT NULL,
  `Codigo_Autor` int DEFAULT NULL,
  PRIMARY KEY (`Codigo_Obra`),
  KEY `Codigo_Autor` (`Codigo_Autor`),
  KEY `Codigo_Genero` (`Codigo_Genero`),
  CONSTRAINT `obraimpressa_ibfk_1` FOREIGN KEY (`Codigo_Autor`) REFERENCES `autor` (`Codigo_Autor`),
  CONSTRAINT `obraimpressa_ibfk_2` FOREIGN KEY (`Codigo_Genero`) REFERENCES `genero_literario` (`Codigo_Genero`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obraimpressa`
--

LOCK TABLES `obraimpressa` WRITE;
/*!40000 ALTER TABLE `obraimpressa` DISABLE KEYS */;
INSERT INTO `obraimpressa` VALUES (1,'Dom Casmurro','Livro',1,'Romance escrito por Machado de Assis.','Machado de Assis. Dom Casmurro. Editora XYZ, 1999.',10,'Português',256,1999,'Editora XYZ',1),(2,'A Hora da Estrela','Livro',2,'Obra de Clarice Lispector.','Clarice Lispector. A Hora da Estrela. Editora ABC, 1977.',8,'Português',88,1977,'Editora ABC',2),(3,'Capitães da Areia','Livro',3,'Romance de Jorge Amado.','Jorge Amado. Capitães da Areia. Editora DEF, 1937.',5,'Português',272,1937,'Editora DEF',3),(4,'Macunaíma','Livro',4,'Obra de Mário de Andrade.','Mário de Andrade. Macunaíma. Editora GHI, 1998.',7,'Português',192,1998,'Editora GHI',4),(5,'Grande Sertão: Veredas','Livro',5,'Romance de João Guimarães Rosa.','João Guimarães Rosa. Grande Sertão: Veredas. Editora JKL, 1996.',12,'Português',624,1996,'Editora JKL',5),(6,'O Cortiço','Livro',1,'Romance naturalista de Aluísio Azevedo.','Aluísio Azevedo. O Cortiço. Editora XYZ, 1990.',15,'Português',318,1990,'Editora XYZ',1),(7,'Memórias Póstumas de Brás Cubas','Livro',2,'Romance de Machado de Assis.','Machado de Assis. Memórias Póstumas de Brás Cubas. Editora ABC, 1981.',10,'Português',208,1981,'Editora ABC',2),(8,'Vidas Secas','Livro',3,'Romance de Graciliano Ramos.','Graciliano Ramos. Vidas Secas. Editora DEF, 1998.',12,'Português',175,1998,'Editora DEF',3),(9,'Iracema','Livro',4,'Obra de José de Alencar.','José de Alencar. Iracema. Editora GHI, 1995.',8,'Português',98,1995,'Editora GHI',4),(10,'O Guarani','Livro',5,'Romance de José de Alencar.','José de Alencar. O Guarani. Editora JKL, 1997.',14,'Português',560,1997,'Editora JKL',5),(11,'A Moreninha','Livro',1,'Romance de Joaquim Manuel de Macedo.','Joaquim Manuel de Macedo. A Moreninha. Editora XYZ, 1994.',9,'Português',124,1994,'Editora XYZ',1),(12,'Os Sertões','Livro',2,'Obra de Euclides da Cunha.','Euclides da Cunha. Os Sertões. Editora ABC, 2002.',7,'Português',688,2002,'Editora ABC',2),(13,'Triste Fim de Policarpo Quaresma','Livro',3,'Romance de Lima Barreto.','Lima Barreto. Triste Fim de Policarpo Quaresma. Editora DEF, 2015.',10,'Português',288,2015,'Editora DEF',3),(14,'Menino de Engenho','Livro',4,'Obra de José Lins do Rego.','José Lins do Rego. Menino de Engenho. Editora GHI, 2002.',13,'Português',208,2002,'Editora GHI',4),(15,'O Quinze','Livro',5,'Romance de Rachel de Queiroz.','Rachel de Queiroz. O Quinze. Editora JKL, 2000.',11,'Português',192,2000,'Editora JKL',5),(16,'São Bernardo','Livro',1,'Romance de Graciliano Ramos.','Graciliano Ramos. São Bernardo. Editora XYZ, 1994.',14,'Português',272,1994,'Editora XYZ',1),(17,'Lisbela e o Prisioneiro','Livro',2,'Obra de Osman Lins.','Osman Lins. Lisbela e o Prisioneiro. Editora ABC, 2001.',9,'Português',176,2001,'Editora ABC',2),(18,'Mar Morto','Livro',3,'Romance de Jorge Amado.','Jorge Amado. Mar Morto. Editora DEF, 1996.',8,'Português',220,1996,'Editora DEF',3),(19,'O Pagador de Promessas','Livro',4,'Obra de Dias Gomes.','Dias Gomes. O Pagador de Promessas. Editora GHI, 2005.',12,'Português',256,2005,'Editora GHI',4),(20,'Auto da Compadecida','Livro',5,'Obra de Ariano Suassuna.','Ariano Suassuna. Auto da Compadecida. Editora JKL, 1995.',11,'Português',192,1995,'Editora JKL',5),(21,'O Alienista','Livro',1,'Obra de Machado de Assis.','Machado de Assis. O Alienista. Editora XYZ, 1982.',10,'Português',96,1982,'Editora XYZ',1),(22,'O Cortiço','Livro',2,'Romance naturalista de Aluísio Azevedo.','Aluísio Azevedo. O Cortiço. Editora ABC, 1990.',15,'Português',318,1990,'Editora ABC',2),(23,'Memórias Póstumas de Brás Cubas','Livro',3,'Romance de Machado de Assis.','Machado de Assis. Memórias Póstumas de Brás Cubas. Editora DEF, 1981.',10,'Português',208,1981,'Editora DEF',3),(24,'Vidas Secas','Livro',4,'Romance de Graciliano Ramos.','Graciliano Ramos. Vidas Secas. Editora GHI, 1998.',12,'Português',175,1998,'Editora GHI',4),(25,'Iracema','Livro',5,'Obra de José de Alencar.','José de Alencar. Iracema. Editora GHI, 1995.',8,'Português',98,1995,'Editora GHI',5),(26,'O Guarani','Livro',1,'Romance de José de Alencar.','José de Alencar. O Guarani. Editora JKL, 1997.',14,'Português',560,1997,'Editora JKL',1),(27,'A Moreninha','Livro',2,'Romance de Joaquim Manuel de Macedo.','Joaquim Manuel de Macedo. A Moreninha. Editora XYZ, 1994.',9,'Português',124,1994,'Editora XYZ',2),(28,'Os Sertões','Livro',3,'Obra de Euclides da Cunha.','Euclides da Cunha. Os Sertões. Editora ABC, 2002.',7,'Português',688,2002,'Editora ABC',3),(29,'Estudo sobre a Biodiversidade da Amazônia','Artigo',4,'Análise detalhada da biodiversidade na Amazônia.','Silva, J. (2023). Estudo sobre a Biodiversidade da Amazônia. Revista de Ecologia, 45(2), 123-145.',5,'Português',23,2023,'Revista de Ecologia',NULL),(30,'Impacto das Mudanças Climáticas na Agricultura','Artigo',4,'Estudo sobre os efeitos das mudanças climáticas na produção agrícola.','Ferreira, A. (2024). Impacto das Mudanças Climáticas na Agricultura. Jornal de Ciências Ambientais, 39(1), 98-115.',7,'Português',18,2024,'Jornal de Ciências Ambientais',NULL),(31,'Avanços na Inteligência Artificial','Artigo',4,'Discussão sobre os recentes avanços em IA e suas aplicações.','Mendes, R. (2022). Avanços na Inteligência Artificial. Revista de Tecnologia, 50(4), 201-218.',10,'Português',27,2022,'Revista de Tecnologia',NULL),(32,'Estudo de Casos de Marketing Digital','Artigo',4,'Análise de diferentes estratégias de marketing digital.','Gomes, L. (2023). Estudo de Casos de Marketing Digital. Jornal de Administração, 28(3), 188-205.',8,'Português',22,2023,'Jornal de Administração',NULL),(33,'Efeitos do Exercício Físico na Saúde Mental','Artigo',4,'Pesquisa sobre a relação entre exercícios físicos e saúde mental.','Santos, M. (2023). Efeitos do Exercício Físico na Saúde Mental. Revista de Saúde, 37(2), 145-162.',6,'Português',20,2023,'Revista de Saúde',NULL),(34,'Desafios da Educação à Distância','Artigo',4,'Estudo sobre os principais desafios enfrentados na educação à distância.','Lima, F. (2022). Desafios da Educação à Distância. Jornal de Educação, 30(1), 45-62.',9,'Português',18,2022,'Jornal de Educação',NULL),(35,'Biotecnologia no Desenvolvimento de Novos Medicamentos','Artigo',4,'Exploração do uso da biotecnologia na criação de medicamentos.','Costa, P. (2024). Biotecnologia no Desenvolvimento de Novos Medicamentos. Revista de Ciências Médicas, 42(1), 78-95.',8,'Português',25,2024,'Revista de Ciências Médicas',NULL),(36,'Estudo sobre a Eficiência Energética em Edificações','Artigo',4,'Análise das práticas de eficiência energética em construções.','Oliveira, T. (2022). Estudo sobre a Eficiência Energética em Edificações. Jornal de Engenharia, 36(2), 167-184.',5,'Português',21,2022,'Jornal de Engenharia',NULL),(37,'Impacto da Poluição Marinha na Vida Aquática','Artigo',4,'Pesquisa sobre os efeitos da poluição marinha nos ecossistemas aquáticos.','Nunes, V. (2023). Impacto da Poluição Marinha na Vida Aquática. Revista de Biologia, 41(3), 209-226.',7,'Português',24,2023,'Revista de Biologia',NULL),(38,'Desenvolvimento Sustentável na Indústria Alimentícia','Artigo',4,'Estudo sobre práticas sustentáveis na produção de alimentos.','Almeida, C. (2022). Desenvolvimento Sustentável na Indústria Alimentícia. Jornal de Sustentabilidade, 33(2), 153-170.',10,'Português',19,2022,'Jornal de Sustentabilidade',NULL),(39,'Análise de Redes Neurais em Processamento de Imagens','Artigo',4,'Pesquisa sobre o uso de redes neurais no processamento de imagens.','Pereira, D. (2024). Análise de Redes Neurais em Processamento de Imagens. Revista de Computação, 49(1), 101-118.',6,'Português',23,2024,'Revista de Computação',NULL),(40,'Estudo Comparativo de Fontes de Energia Renovável','Artigo',4,'Comparação entre diferentes fontes de energia renovável.','Siqueira, E. (2023). Estudo Comparativo de Fontes de Energia Renovável. Jornal de Energia, 29(3), 188-205.',8,'Português',22,2023,'Jornal de Energia',NULL),(41,'Impacto da Internet das Coisas na Vida Cotidiana','Artigo',4,'Estudo sobre a influência da Internet das Coisas no dia a dia.','Moraes, R. (2022). Impacto da Internet das Coisas na Vida Cotidiana. Revista de Tecnologia, 50(2), 123-140.',10,'Português',18,2022,'Revista de Tecnologia',NULL),(42,'Estudo sobre a Influência da Música na Memória','Artigo',4,'Pesquisa sobre como a música pode afetar a memória.','Ferreira, S. (2023). Estudo sobre a Influência da Música na Memória. Jornal de Psicologia, 37(1), 78-95.',9,'Português',20,2023,'Jornal de Psicologia',NULL),(43,'Efeitos da Urbanização na Biodiversidade','Artigo',4,'Análise dos impactos da urbanização nos ecossistemas naturais.','Santos, P. (2024). Efeitos da Urbanização na Biodiversidade. Revista de Ecologia, 45(3), 145-162.',7,'Português',23,2024,'Revista de Ecologia',NULL),(44,'Estudo sobre a Ética na Inteligência Artificial','Artigo',4,'Discussão sobre questões éticas envolvendo IA.','Mendes, J. (2022). Estudo sobre a Ética na Inteligência Artificial. Jornal de Filosofia, 40(2), 101-118.',8,'Português',21,2022,'Jornal de Filosofia',NULL),(45,'Impacto do Teletrabalho na Produtividade','Artigo',4,'Estudo sobre como o teletrabalho afeta a produtividade dos trabalhadores.','Gomes, A. (2023). Impacto do Teletrabalho na Produtividade. Revista de Administração, 28(4), 188-205.',10,'Português',19,2023,'Revista de Administração',NULL),(46,'Desafios da Inclusão Digital na Educação','Artigo',4,'Pesquisa sobre os principais desafios da inclusão digital nas escolas.','Lima, R. (2022). Desafios da Inclusão Digital na Educação. Jornal de Educação, 30(3), 45-62.',7,'Português',20,2022,'Jornal de Educação',NULL),(47,'Estudo sobre a Sustentabilidade no Setor de Construção','Artigo',4,'Análise das práticas sustentáveis na construção civil.','Costa, F. (2024). Estudo sobre a Sustentabilidade no Setor de Construção. Revista de Engenharia, 36(3), 153-170.',9,'Português',25,2024,'Revista de Engenharia',NULL),(48,'Impacto das Redes Sociais na Saúde Mental dos Jovens','Artigo',4,'Pesquisa sobre a influência das redes sociais na saúde mental dos jovens.','Oliveira, A. (2023). Impacto das Redes Sociais na Saúde Mental dos Jovens. Revista de Psicologia, 37(2), 123-140.',8,'Português',23,2023,'Revista de Psicologia',NULL);
/*!40000 ALTER TABLE `obraimpressa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realiza_emprestimo`
--

DROP TABLE IF EXISTS `realiza_emprestimo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiza_emprestimo` (
  `codigo_emprestimo` int NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int DEFAULT NULL,
  `codigo_obra` int DEFAULT NULL,
  `data_emprestimo` datetime DEFAULT CURRENT_TIMESTAMP,
  `data_entrega` datetime DEFAULT NULL,
  `data_devolucao_efetiva` datetime DEFAULT NULL,
  `status` enum('ativo','devolvido','atrasado') NOT NULL,
  `observacoes` text,
  `quantidade` int NOT NULL,
  PRIMARY KEY (`codigo_emprestimo`),
  KEY `codigo_usuario` (`codigo_usuario`),
  KEY `codigo_obra` (`codigo_obra`),
  CONSTRAINT `realiza_emprestimo_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`Codigo_Usuario`),
  CONSTRAINT `realiza_emprestimo_ibfk_2` FOREIGN KEY (`codigo_obra`) REFERENCES `obraimpressa` (`Codigo_Obra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realiza_emprestimo`
--

LOCK TABLES `realiza_emprestimo` WRITE;
/*!40000 ALTER TABLE `realiza_emprestimo` DISABLE KEYS */;
/*!40000 ALTER TABLE `realiza_emprestimo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realiza_reserva`
--

DROP TABLE IF EXISTS `realiza_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realiza_reserva` (
  `codigo_reserva` int NOT NULL AUTO_INCREMENT,
  `codigo_usuario` int DEFAULT NULL,
  `codigo_obra` int DEFAULT NULL,
  `data_reserva` datetime NOT NULL,
  `status_reserva` enum('pendente','confirmada','cancelada') NOT NULL,
  PRIMARY KEY (`codigo_reserva`),
  KEY `codigo_usuario` (`codigo_usuario`),
  KEY `codigo_obra` (`codigo_obra`),
  CONSTRAINT `realiza_reserva_ibfk_1` FOREIGN KEY (`codigo_usuario`) REFERENCES `usuario` (`Codigo_Usuario`),
  CONSTRAINT `realiza_reserva_ibfk_2` FOREIGN KEY (`codigo_obra`) REFERENCES `obraimpressa` (`Codigo_Obra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realiza_reserva`
--

LOCK TABLES `realiza_reserva` WRITE;
/*!40000 ALTER TABLE `realiza_reserva` DISABLE KEYS */;
/*!40000 ALTER TABLE `realiza_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `Codigo_Usuario` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(255) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Endereco_ID` int DEFAULT NULL,
  `Email` varchar(255) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `Senha` varchar(255) NOT NULL,
  `Status` enum('liberado','advertido','bloqueado') NOT NULL,
  `Data_Cadastro` datetime DEFAULT CURRENT_TIMESTAMP,
  `Is_Admin` tinyint(1) NOT NULL,
  `Historico_Emprestimos` int DEFAULT NULL,
  PRIMARY KEY (`Codigo_Usuario`),
  UNIQUE KEY `CPF` (`CPF`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Login` (`Login`),
  KEY `Endereco_ID` (`Endereco_ID`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`Endereco_ID`) REFERENCES `endereco` (`Endereco_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Maria Silva','12345678901','1985-05-20',1,'maria.silva@example.com','mariasilva','senha123','liberado','2025-02-20 23:06:09',0,10),(2,'João Oliveira','23456789012','1990-08-15',2,'joao.oliveira@example.com','joaooliveira','senha456','advertido','2025-02-20 23:06:09',0,5),(3,'Ana Souza','34567890123','1992-12-01',3,'ana.souza@example.com','anasouza','senha789','bloqueado','2025-02-20 23:06:09',1,15),(4,'Carlos Lima','45678901234','1988-03-22',4,'carlos.lima@example.com','carloslima','senha321','liberado','2025-02-20 23:06:09',0,8),(5,'Beatriz Santos','56789012345','1995-09-10',5,'beatriz.santos@example.com','beatrizsantos','senha654','advertido','2025-02-20 23:06:09',0,12),(124,'Leonardo Alves','09876543210','1982-07-11',1,'leonardo.alves@example.com','leonardoalves','senha789','liberado','2025-02-20 23:06:09',0,15),(125,'Juliana Martins','01234567891','1991-05-13',2,'juliana.martins@example.com','julianamartins','senha321','bloqueado','2025-02-20 23:06:09',1,5),(126,'Paulo Rocha','23456789013','1984-09-05',3,'paulo.rocha@example.com','paulorocha','senha123','liberado','2025-02-20 23:06:09',0,10),(127,'Lucas Barbosa','34567890124','1995-02-14',4,'lucas.barbosa@example.com','lucasbarbosa','senha456','advertido','2025-02-20 23:06:09',0,6),(128,'Fernanda Lima','45678901235','1989-11-07',5,'fernanda.lima@example.com','fernandalima','senha789','liberado','2025-02-20 23:06:09',0,8),(129,'Roberto Silveira','56789012346','1993-08-19',1,'roberto.silveira@example.com','robertosilveira','senha321','bloqueado','2025-02-20 23:06:09',1,14),(130,'Marta Oliveira','67890123457','1987-06-22',2,'marta.oliveira@example.com','martaoliveira','senha123','liberado','2025-02-20 23:06:09',0,12),(131,'Diego Mendes','78901234568','1983-03-09',3,'diego.mendes@example.com','diegomendes','senha456','advertido','2025-02-20 23:06:09',0,9),(132,'Carla Souza','89012345679','1992-12-25',4,'carla.souza@example.com','carlasouza','senha789','liberado','2025-02-20 23:06:09',0,10),(133,'Bruno Araújo','90123456780','1994-01-01',5,'bruno.araujo@example.com','brunoaraujo','senha321','bloqueado','2025-02-20 23:06:09',1,7),(134,'Daniela Vieira','01234567892','1993-04-03',1,'daniela.vieira@example.com','danielavieira','senha123','liberado','2025-02-20 23:06:09',0,11),(135,'Rafael Nunes','23456789014','1988-02-29',2,'rafael.nunes@example.com','rafaelnunes','senha456','advertido','2025-02-20 23:06:09',0,6),(136,'Camila Cardoso','34567890125','1990-10-13',3,'camila.cardoso@example.com','camilacardoso','senha789','liberado','2025-02-20 23:06:09',0,9),(137,'Igor Fernandes','45678901236','1991-05-19',4,'igor.fernandes@example.com','igorfernandes','senha321','bloqueado','2025-02-20 23:06:09',1,8),(138,'Letícia Castro','56789012347','1995-06-17',5,'leticia.castro@example.com','leticiacastro','senha123','liberado','2025-02-20 23:06:09',0,7),(139,'Thiago Costa','67890123458','1992-08-15',1,'thiago.costa@example.com','thiagocosta','senha456','advertido','2025-02-20 23:06:09',0,9),(140,'Eduardo Albuquerque','78901234569','1987-07-21',2,'eduardo.albuquerque@example.com','eduardoalbuquerque','senha789','liberado','2025-02-20 23:06:09',0,13),(141,'Vanessa Rodrigues','89012345670','1993-11-11',3,'vanessa.rodrigues@example.com','vanessarodrigues','senha321','bloqueado','2025-02-20 23:06:09',1,10),(142,'Felipe Santos','90123456781','1989-01-08',4,'felipe.santos@example.com','felipesantos','senha123','liberado','2025-02-20 23:06:09',0,12),(143,'Priscila Neves','01234567893','1994-09-23',5,'priscila.neves@example.com','priscilaneves','senha456','advertido','2025-02-20 23:06:09',0,11);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-21  0:35:51
