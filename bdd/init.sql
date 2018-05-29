-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 29 mai 2018 à 09:35
-- Version du serveur :  5.7.19-log
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `forum`
--
DROP DATABASE IF EXISTS `forum`;
CREATE DATABASE IF NOT EXISTS `forum` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `forum`;

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

DROP TABLE IF EXISTS `question`;
CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(400) NOT NULL,
  `reponse` enum('Vrai','Faux') NOT NULL,
  `path_photo` varchar(255) NOT NULL,
  `type_questionnaire` enum('easy','medium','hard') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `question`, `reponse`, `path_photo`, `type_questionnaire`) VALUES
(1, 'Lorsque l\'on déplace la souris, le curseur bouge', 'Vrai', 'ressources/img/questionnaire/image-f1.png', 'easy'),
(2, 'Il existe plusieurs types de claviers', 'Vrai', 'ressources/img/questionnaire/image-f2.png', 'easy'),
(3, 'De nos jours, les souris de bureau possèdent au moins 4 boutons', 'Faux', 'ressources/img/questionnaire/image-f3.png', 'easy'),
(4, 'Le logiciel Word permet de modifier des images', 'Faux', 'ressources/img/questionnaire/image-f4.png', 'easy'),
(5, 'Il faut avoir accès à internet pour pouvoir se connecter à Facebook', 'Vrai', 'ressources/img/questionnaire/image-f5.png', 'easy'),
(6, 'Le logo de Twitter est un chien rouge', 'Faux', 'ressources/img/questionnaire/image-f6.png', 'easy'),
(7, 'Samsung est une marque de smartphones', 'Vrai', 'ressources/img/questionnaire/image-f7.png', 'easy'),
(8, 'Les tablettes sont en général plus grandes que les smartphones', 'Vrai', 'ressources/img/questionnaire/image-f8.png', 'easy'),
(9, 'Les virus d\'ordinateurs sont contagieux pour l\'Homme', 'Faux', 'ressources/img/questionnaire/image-f9.png', 'easy'),
(10, 'Il est possible de brancher un casque audio à son ordinateur', 'Vrai', 'ressources/img/questionnaire/image-f10.png', 'easy'),
(11, 'Tous les claviers d\'ordinateurs possèdent la touches F13', 'Faux', 'ressources/img/questionnaire/image-f11.png', 'easy'),
(12, 'Un smartphone est un téléphone très limité en fonctionnalités', 'Faux', 'ressources/img/questionnaire/image-f12.png', 'easy'),
(13, 'Il est possible de contrôler certains appareils électriques à partir de son téléphone', 'Vrai', 'ressources/img/questionnaire/image-f13.png', 'easy'),
(14, 'Il est possible de rouler en voiture depuis son smartphone', 'Faux', 'ressources/img/questionnaire/image-f14.png', 'easy'),
(15, 'Un ordinateur produit de la chaleur', 'Vrai', 'ressources/img/questionnaire/image-f15.png', 'easy'),
(16, 'Le symbole d\'Apple est une poire', 'Faux', 'ressources/img/questionnaire/image-f16.png', 'easy'),
(17, 'Facebook est un logiciel de retouche de photos', 'Faux', 'ressources/img/questionnaire/image-f17.png', 'easy'),
(18, 'Photoshop est un réseau social où l\'on peut dialoguer avec ses amis', 'Faux', 'ressources/img/questionnaire/image-f18.png', 'easy'),
(19, 'eBay est un jeu vidéo de zombie mondialement connu', 'Faux', 'ressources/img/questionnaire/image-f19.png', 'easy'),
(20, 'Un antivirus permet de se protéger des données infectées', 'Vrai', 'ressources/img/questionnaire/image-f20.png', 'easy'),
(21, 'Un bug est un défaut de réalisation dans un programme', 'Vrai', 'ressources/img/questionnaire/image-f21.png', 'easy'),
(22, 'La corbeille est vidée tous les mardis soirs à 21h', 'Faux', 'ressources/img/questionnaire/image-f22.png', 'easy'),
(23, 'Il est possible de zoomer avec ses doigts sur un écran tactile', 'Vrai', 'ressources/img/questionnaire/image-f23.png', 'easy'),
(24, 'Un e-mail est un courrier électronique', 'Vrai', 'ressources/img/questionnaire/image-f24.png', 'easy'),
(25, 'Il est possible de mettre en veille un ordinateur', 'Vrai', 'ressources/img/questionnaire/image-f25.png', 'easy'),
(26, 'Un bandit informatique est une personne qui tente de prendre le contrôle de votre ordinateur par effraction', 'Faux', 'ressources/img/questionnaire/image-f26.png', 'easy'),
(27, 'Les écrans sont composés de pixels', 'Vrai', 'ressources/img/questionnaire/image-f27.png', 'easy'),
(28, 'Un Pop-up est un message électronique non sollicité qui encombre votre boîte de courrier internet', 'Faux', 'ressources/img/questionnaire/image-f28.png', 'easy'),
(29, 'Pour aller sur Internet, j\'utilise un aviateur', 'Faux', 'ressources/img/questionnaire/image-f29.png', 'easy'),
(30, 'Outlook est un moteur de recherche', 'Faux', 'ressources/img/questionnaire/image-f30.png', 'easy'),
(31, 'Lorsqu\'un fichier se retrouve dans la corbeille, il est perdu à tout jamais', 'Faux', 'ressources/img/questionnaire/image-f31.png', 'easy'),
(32, 'Dans un logiciel de traitement de texte, le pompier gère le style de l\'écriture', 'Faux', 'ressources/img/questionnaire/image-f32.png', 'easy'),
(33, 'Un « surfeur » est le nom donné au logiciel qui permet de surfer sur Internet', 'Faux', 'ressources/img/questionnaire/image-f33.png', 'easy'),
(34, 'Instagram est une application de messagerie instantanée en ligne', 'Faux', 'ressources/img/questionnaire/image-f34.png', 'easy'),
(35, 'Il existe des perches pour prendre des selfies', 'Vrai', 'ressources/img/questionnaire/image-f35.png', 'easy'),
(36, 'Le « S » dans HTTPS indique que le site est sécurisé', 'Vrai', 'ressources/img/questionnaire/image-i1.png', 'medium'),
(37, 'Les smartphones sont des mini-ordinateurs', 'Vrai', 'ressources/img/questionnaire/image-i2.png', 'medium'),
(38, 'Le raccourci clavier « CTRL + C » permet de coller un élément préalablement copié', 'Faux', 'ressources/img/questionnaire/image-i3.png', 'medium'),
(39, 'Windows fabrique tous les ordinateurs du monde', 'Faux', 'ressources/img/questionnaire/image-i4.png', 'medium'),
(40, 'Il est impossible de recharger son téléphone via le port USB de son ordinateur', 'Faux', 'ressources/img/questionnaire/image-i5.png', 'medium'),
(41, 'Le système binaire n\'est composé que des chiffres 0, 1 et 2', 'Faux', 'ressources/img/questionnaire/image-i6.png', 'medium'),
(42, 'Les composants d\'un ordinateur sont reliés à une carte Père', 'Faux', 'ressources/img/questionnaire/image-i7.png', 'medium'),
(43, 'Les sites internet utilisent des brownies pour garder nos données', 'Faux', 'ressources/img/questionnaire/image-i8.png', 'medium'),
(44, 'Certains ordinateurs possèdent un écran tactile', 'Vrai', 'ressources/img/questionnaire/image-i9.png', 'medium'),
(45, 'Un dossier permet de stocker un nombre infini de fichiers tant que ça ne dépasse pas la capacité maximale du disque dur', 'Vrai', 'ressources/img/questionnaire/image-i10.png', 'medium'),
(46, 'Il est possible de partitionner son disque dur', 'Vrai', 'ressources/img/questionnaire/image-i11.png', 'medium'),
(47, 'Il est possible de créer ses propres raccourcis clavier', 'Vrai', 'ressources/img/questionnaire/image-i12.png', 'medium'),
(48, 'Un serveur est un « gros ordinateur » qui stocke des données', 'Vrai', 'ressources/img/questionnaire/image-i13.png', 'medium'),
(49, 'Une « URL » est l\'adresse d\'un site internet', 'Vrai', 'ressources/img/questionnaire/image-i14.png', 'medium'),
(50, 'La page d\'accueil internet peut être changée', 'Vrai', 'ressources/img/questionnaire/image-i15.png', 'medium'),
(51, 'Il est possible d\'avoir la même adresse mail que son voisin', 'Faux', 'ressources/img/questionnaire/image-i16.png', 'medium'),
(52, 'Au démarrage de l\'ordinateur, on peut lancer automatiquement des programmes', 'Vrai', 'ressources/img/questionnaire/image-i17.png', 'medium'),
(53, 'Windows Update sert à mettre à jour son système d\'exploitation', 'Vrai', 'ressources/img/questionnaire/image-i18.png', 'medium'),
(54, 'L\'acronyme « FAI » signifie Fournisseur d\'Accès Internet', 'Vrai', 'ressources/img/questionnaire/image-i19.png', 'medium'),
(55, 'Apple est un système d\'exploitation', 'Faux', 'ressources/img/questionnaire/image-i20.png', 'medium'),
(56, 'Supprimer le raccourci d\'un programme efface aussi le programme de l\'ordinateur', 'Faux', 'ressources/img/questionnaire/image-i21.png', 'medium'),
(57, 'Le Bluetooth permet l\'échange de données à très courte distance', 'Vrai', 'ressources/img/questionnaire/image-i22.png', 'medium'),
(58, 'iTunes est une boutique en ligne d\'Apple', 'Vrai', 'ressources/img/questionnaire/image-i23.png', 'medium'),
(59, 'Le Cloud est un système pour accrocher son smartphone ou sa tablette au mur', 'Faux', 'ressources/img/questionnaire/image-i24.png', 'medium'),
(60, 'Jack Zubertberg est le fondateur du réseau social Facebook', 'Faux', 'ressources/img/questionnaire/image-i25.png', 'medium'),
(61, 'Le logo de l\'application Periscope est un petit fantôme blanc sur fond jaune', 'Faux', 'ressources/img/questionnaire/image-i26.png', 'medium'),
(62, 'La phrase « OK Siri » permet de déclencher l\'application de commande vocale d\'Apple', 'Faux', 'ressources/img/questionnaire/image-i27.png', 'medium'),
(63, 'Le format d\'image JPEG permet de fournir un fond transparent à son image ', 'Faux', 'ressources/img/questionnaire/image-i28.png', 'medium'),
(64, 'Whatsapp est une application de messagerie instantanée', 'Vrai', 'ressources/img/questionnaire/image-i29.png', 'medium'),
(65, 'Aucune intelligence artificielle n\'a réussi à battre le meilleur joueur d\'échecs humain', 'Faux', 'ressources/img/questionnaire/image-i30.png', 'medium'),
(66, 'Les deux sites les plus visités au monde sont Google et Youtube', 'Vrai', 'ressources/img/questionnaire/image-i31.png', 'medium'),
(67, 'Le fait de tricher dans un jeu vidéo est aussi appelé « cheat »', 'Vrai', 'ressources/img/questionnaire/image-i32.png', 'medium'),
(68, 'Avant Facebook, le réseau social qui dominait était MyFace', 'Faux', 'ressources/img/questionnaire/image-i33.png', 'medium'),
(69, 'WordPress est un logiciel de traitement de texte', 'Faux', 'ressources/img/questionnaire/image-i34.png', 'medium'),
(70, 'MOOC est un type de formation à distance ouvert à tous', 'Vrai', 'ressources/img/questionnaire/image-i35.png', 'medium'),
(71, 'Les unités de stockages suivantes sont-elles classées dans l\'ordre : To, Mo, Ko, Go', 'Faux', 'ressources/img/questionnaire/image-i36.png', 'medium'),
(72, 'Google Trends est un outil permettant de connaître la fréquence à laquelle un terme a été tapé dans le moteur de recherche google', 'Vrai', 'ressources/img/questionnaire/image-i37.png', 'medium'),
(73, 'Un « dogfie » est l\'appellation d\'une photo prise avec son chien', 'Faux', 'ressources/img/questionnaire/image-i38.png', 'medium'),
(74, 'Internet était à l\'origine une invention militaire', 'Vrai', 'ressources/img/questionnaire/image-d1.png', 'hard'),
(75, 'Bill Gates a inventé Linux', 'Faux', 'ressources/img/questionnaire/image-d2.png', 'hard'),
(76, 'GladOS est le système d\'exploitation des smartphones Android', 'Faux', 'ressources/img/questionnaire/image-d3.png', 'hard'),
(77, 'Une souris a toujours eu au minimum 2 boutons', 'Faux', 'ressources/img/questionnaire/image-d4.png', 'hard'),
(78, 'Le nom « Google » provient d\'une expression française', 'Faux', 'ressources/img/questionnaire/image-d5.png', 'hard'),
(79, 'Java est un langage de programmation', 'Vrai', 'ressources/img/questionnaire/image-d6.png', 'hard'),
(80, 'Un bug informatique mondial s\'est produit au passage de l\'an 2000', 'Vrai', 'ressources/img/questionnaire/image-d7.png', 'hard'),
(81, 'Un « Cheval de Troie » est un programme malveillant dissimulé', 'Vrai', 'ressources/img/questionnaire/image-d8.png', 'hard'),
(82, 'Le WiFi est une invention brevetée', 'Vrai', 'ressources/img/questionnaire/image-d9.png', 'hard'),
(83, 'WaterFox est un navigateur internet', 'Vrai', 'ressources/img/questionnaire/image-d10.png', 'hard'),
(84, 'Les smartphones possèdent un processeur', 'Vrai', 'ressources/img/questionnaire/image-d11.png', 'hard'),
(85, 'La RAM est la mémoire du disque dur', 'Faux', 'ressources/img/questionnaire/image-d12.png', 'hard'),
(86, 'La touche « F2 » permet de renommer des fichiers', 'Vrai', 'ressources/img/questionnaire/image-d13.png', 'hard'),
(87, 'Le raccourci « ALT + F4 » imprime l\'écran actuel', 'Faux', 'ressources/img/questionnaire/image-d14.png', 'hard'),
(88, 'Formater un ordinateur permet de créer un point de sauvegarde', 'Faux', 'ressources/img/questionnaire/image-d15.png', 'hard'),
(89, 'Dans le jeu original Tetris, il existe 7 formes différentes', 'Vrai', 'ressources/img/questionnaire/image-d16.png', 'hard'),
(90, 'La version de Windows qui précède Windows XP est Windows 98', 'Faux', 'ressources/img/questionnaire/image-d17.png', 'hard'),
(91, 'Le jeu vidéo populaire Candy Crush Saga a été développé par King', 'Vrai', 'ressources/img/questionnaire/image-d18.png', 'hard'),
(92, 'L\'application mobile de navigation GPS Waze a été rachetée par Microsoft', 'Faux', 'ressources/img/questionnaire/image-d19.png', 'hard'),
(93, 'En 3 jours, l\'intelligence artificielle de Google a appris le jeu de Go et écrasé la machine qui a détrôné l\'Homme', 'Vrai', 'ressources/img/questionnaire/image-d20.png', 'hard'),
(94, 'La vidéo la plus consultée sur YouTube a dépassé les 5 milliards de vues', 'Vrai', 'ressources/img/questionnaire/image-d21.png', 'hard'),
(95, 'L\'abréviation WWW est l\'acronyme de « World Wild Web»', 'Faux', 'ressources/img/questionnaire/image-d22.png', 'hard'),
(96, 'Sur un navigateur internet, l\'erreur 404 signifie que la page recherchée est introuvable', 'Vrai', 'ressources/img/questionnaire/image-d23.png', 'hard'),
(97, 'Le « Fishing » est une technique frauduleuse utilisée par les pirates informatiques pour récupérer des informations', 'Faux', 'ressources/img/questionnaire/image-d24.png', 'hard'),
(98, 'En plus des versions Android Lollipop et Kitkat, il existe aussi la version Oreo', 'Vrai', 'ressources/img/questionnaire/image-d25.png', 'hard'),
(99, 'Généralement, une page internet est composée de HTML et CSS', 'Vrai', 'ressources/img/questionnaire/image-d26.png', 'hard'),
(100, 'Moodle est une application de partage de vidéos', 'Faux', 'ressources/img/questionnaire/image-d27.png', 'hard'),
(101, 'Facebook est apparu en 2003', 'Faux', 'ressources/img/questionnaire/image-d28.png', 'hard'),
(102, 'Dans le jeu Angry Birds, les cochons sont de couleur rose', 'Faux', 'ressources/img/questionnaire/image-d29.png', 'hard'),
(103, 'Les requêtes SKL permettent d\'échanger avec une base de données', 'Faux', 'ressources/img/questionnaire/image-d30.png', 'hard'),
(104, 'La définition de Licorne dans l\'univers des startups correspond à une société valorisée à 1 milliard de dollars sans être en bourse', 'Vrai', 'ressources/img/questionnaire/image-d31.png', 'hard'),
(105, 'Les créateurs de Google sont Larry Page et Sergueï Brin', 'Vrai', 'ressources/img/questionnaire/image-d32.png', 'hard'),
(106, 'L\'open source est le qualificatif associé à un logiciel libre de distribution et de modification du code', 'Vrai', 'ressources/img/questionnaire/image-d33.png', 'hard'),
(107, 'L\'adresse MAC est l\'autre nom donné à l\'adresse du site Apple', 'Faux', 'ressources/img/questionnaire/image-d34.png', 'hard'),
(108, 'Didapage est un logiciel permettant à l\'utilisateur de créer des livres virtuels', 'Vrai', 'ressources/img/questionnaire/image-d35.png', 'hard'),
(109, 'L\'iBeacon est une monnaie virtuelle', 'Faux', 'ressources/img/questionnaire/image-d36.png', 'hard'),
(110, 'Un CMS est un système de gestion de contenu destinés à la conception et à la mise à jour dynamique de sites Web', 'Vrai', 'ressources/img/questionnaire/image-d37.png', 'hard');

-- --------------------------------------------------------

--
-- Structure de la table `score`
--

DROP TABLE IF EXISTS `score`;
CREATE TABLE IF NOT EXISTS `score` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo_user` varchar(20) NOT NULL,
  `score_easy` int(3) NOT NULL DEFAULT '0',
  `score_medium` int(3) NOT NULL DEFAULT '0',
  `score_hard` int(3) NOT NULL DEFAULT '0',
  `score_total` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_score_to_util` (`pseudo_user`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `pseudo_user`, `score_easy`, `score_medium`, `score_hard`, `score_total`) VALUES
(1, 'Yoyanne', 5, 16, 24, 45),
(2, 'Julien', 5, 4, 12, 21),
(3, 'Axel', 5, 16, 20, 41),
(4, 'Loic', 6, 10, 28, 44),
(5, 'Benoit', 5, 2, 16, 23),
(6, 'Franck', 3, 16, 8, 27),
(7, 'Sebastien', 9, 12, 16, 37),
(8, 'Christophe', 4, 12, 28, 44),
(9, 'LilWhoreStier', 4, 8, 24, 36),
(10, 'CalviStier', 4, 10, 24, 38),
(11, 'CrewStiant', 2, 20, 28, 50);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `tranche_d_age` enum('-18','18-25','+25') NOT NULL,
  `pseudo` varchar(20) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pseudo` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `nom`, `prenom`, `tranche_d_age`, `pseudo`, `mdp`) VALUES
(1, 'yohann.demora@gmail.com', 'Demora', 'Yohann', '+25', 'Yoyanne', '$2y$10$EHPe9b78.yCkl6cbxNUePuf4rj4/ICzLqNvdcv5w9jVaK8NlnJz42'),
(2, 'benmonmail@hhuuu.fou', 'Dequidt', 'Julien', '18-25', 'Julien', '$2y$10$dswwo8f3A9qcjU9f4zk0Uehq9Z.jeuQQ0KD/SEe02nWadlf5wL42a'),
(3, 'axel@axel.fr', 'Ledieu', 'Axel', '18-25', 'Axel', '$2y$10$sRvBdM7Wd01lObyS9f/YzurxFzs6sevPEBKcYzFwKLbW55xYydYOm'),
(4, 'loic@loic.fr', 'Roussel', 'Loic', '+25', 'Loic', '$2y$10$iyvdE7sZHPUTrB14l27hLuNyqNoIbJXf4Ao2450I6u1hNDW2nlPXm'),
(5, 'ben@ben.fr', 'Poux', 'Benoit', '+25', 'Benoit', '$2y$10$9TAS2vNzshofD499WHFPHOReDyhmJ43zJApZS7Uw.CENuykXTzR26'),
(6, 'franck@franck.fr', 'Nouvion', 'Franck', '18-25', 'Franck', '$2y$10$RvjAjla3NXMGGiTC.2ajNOgI2axbP/6YbGH/V5K.1yJMAvZ1obp1e'),
(7, 'seb@seb.fr', 'DeGouy', 'Sebastien', '+25', 'Sebastien', '$2y$10$A5jBAi.1f4Wo282Qj8JRLOVwjfAqMCQYv7rmTJTcRQ7nvTnfwNzWq'),
(8, 'chris@chris.fr', 'Carsalade', 'Christophe', '+25', 'Christophe', '$2y$10$gO286Mp8yPh4Naj9L7mQfOJxLtDVo7DTTFy.kH/oXRmrX86Pokh3S'),
(9, 'lilwhore@gmail.com', 'Stiant', 'Crew', '18-25', 'LilWhoreStier', '$2y$10$LGsGxO0s4RJ0FmC2nL19zusM9TQn1Ne4hxPxRiNqzb6Xg/B0KuZQG'),
(10, 'calvi@crewstiant.fr', 'Stiant', 'Crew', '18-25', 'CalviStier', '$2y$10$2VGR1SOeuOCfh7h8JMWGU.dg8DP1M1QlFR3o3F4050AjyNVF/ZpO2'),
(11, 'stiant@crewstiant.fr', 'Stiant', 'Crew', '18-25', 'CrewStiant', '$2y$10$TpS/9SwAKPxgKQDRL.xhTeIwy0M0fDVmCHyNPkAr/pzqssQ5C4KKC');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `fk_score_to_util` FOREIGN KEY (`pseudo_user`) REFERENCES `utilisateur` (`pseudo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
