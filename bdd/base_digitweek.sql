

--
-- Table structure for table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `tranche_d_age` enum('-18','18-25','+25') NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateur`
--

LOCK TABLES `utilisateur` WRITE;
/*!40000 ALTER TABLE `utilisateur` DISABLE KEYS */;
INSERT INTO `utilisateur` VALUES (1,'crew@crewstiant.tk','Crew','Stiant','+25','CrewStiant','$2y$10$8rXEUi92xN/8FR58NhbLGerRgJmpRyHS.fb6g59W3fafd5.rnAqCO'),(2,'gerardjohann@hotmail.fr','G','J','+25','Thor','$2y$10$dPlRN8bfoXd1lt31dbnx5O1mu2Qvr5YdniZ4P3btxPUbxbAyD52Ce'),(3,'frederic.lequien@gmail.com','Lequien','Frederic','+25','Phoenix 2048','$2y$10$zY1J0uJCagEgeKkR.yyO..QlyHqsEZ82N3cYYo1tknCI7M86ax8Ce'),(4,'sam.jah2@gmail.com','Phil','Helmut','+25','TheBrat','$2y$10$qxnVA.gWLIfJiglC92Adk.TBXXLt1cg/90LZzeW1l2MB.571gjMfi'),(5,'lroussel2703@gmail.com','Roussel','Loic','+25','BlueStier','$2y$10$m7CJi.h2uvgdZTaKdx8rquYYkNafZKl6RgmA6mlUaszky7pwEP08O'),(6,'beckflann@gmail.com','Carsalade ','Christophe ','+25','WAYLANDER ','$2y$10$2sXD1u.FMAgIKn0QBV9Zhuy/KqtZHVf6guWTytYnvPTtkum967Eee'),(7,'C.catillon59@gmail.com','catillon','christophe','+25','Korgo','$2y$10$flyewBZTOShPhTsXhwVzBekppYkmGplGoykZZ0gnRaq8yyvkeYxfG'),(8,'julien.dequidt@lilo.org','Dequidt','Julien','18-25','la_banane','$2y$10$lJLLGrLgwIQA6xXuYsZ2Mex6gekdBgTo6yaDahTtZhDF1eRi9S02m'),(9,'Mathieu_bouquerel@hotmail.fr','Bouquerel','Mathieu','+25','Mat','$2y$10$FmH5f40anxGhZDp38TYkJ.iv6dpetmr7HewmsJzIX0uUK.z6b8Gki'),(10,'boukacem@hotmail.com','Boukacem','Abdeslam','18-25','Sham','$2y$10$5ylkHSXFEq/os/Pgs4rh.u52YodBaZ4GnOCD1ihVBFQRHy9iSnmbu'),(11,'coralie_epowe@hotmail.com','Le Foll','Coralie','18-25','Coralie','$2y$10$fVIBz7amilGczZgwsJTWy.fFPvOclX8DE9PjkO6xSxEHTbPTYpwcC'),(12,'bonte.nicodu62@gmail.com','Bonte','Nicolas','18-25','Nico','$2y$10$Nq3gWzYNfektKExGVoo67Ot3k4L8V9LYu8MlcC9Qp2qSh9EKDNQte'),(13,'ckiltonton@gmail.com','Rémi','Legrand','18-25','Rémi ','$2y$10$8Bwq4barkZQ3/XhZKfzeGOzVQQmN9icyuCvoQbXyJ/Z/myDb/2J1W'),(14,'Scozor@hotmail.com','Dambrine','Benjamin','18-25','Scozor','$2y$10$2CqAqGKxuecMcUq4NgnRqeiXGnA8sh37FhXc6BTpguIh9jWACf2Bu'),(15,'marie.pieri@orange.fr','Piéri ','Marie','18-25','Malanthe','$2y$10$aRH6pV8mCTR9gEyxaO3DBuq98JoIJlJRr2l/MMpc6pwMYqlcu1/IO'),(16,'f.delfy@cegetel.net','Delfly','Frederic','+25','Mackfly','$2y$10$Y/Rjatlajp4cR93QWrXKJuUW95q41Cu6MsAB17VB8VQfbB0HsDG3W');
/*!40000 ALTER TABLE `utilisateur` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo_user` varchar(20) NOT NULL,
  `score_easy` int(2) NOT NULL DEFAULT '0',
  `score_medium` int(2) NOT NULL DEFAULT '0',
  `score_hard` int(2) NOT NULL DEFAULT '0',
  `score_total` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_score_to_util` (`pseudo_user`),
  CONSTRAINT `fk_score_to_util` FOREIGN KEY (`pseudo_user`) REFERENCES `utilisateur` (`pseudo`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
INSERT INTO `score` VALUES (1,'CrewStiant',10,18,32,60),(2,'Thor',10,20,36,66),(3,'Phoenix 2048',10,18,36,64),(4,'TheBrat',10,20,32,62),(5,'BlueStier',10,20,40,70),(6,'WAYLANDER ',10,20,28,58),(7,'Korgo',8,18,32,58),(8,'la_banane',10,20,40,70),(9,'Mat',9,18,32,59),(10,'Sham',7,0,0,7),(11,'Coralie',10,16,20,46),(12,'Nico',10,20,28,58),(13,'Rémi ',8,14,32,54),(14,'Scozor',8,18,28,54),(15,'Malanthe',9,18,24,51),(16,'Mackfly',9,0,0,9);
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;