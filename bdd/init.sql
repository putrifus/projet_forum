-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 24 mai 2018 à 13:00
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
(1, 'Lorsque l\'on déplace la souris, le curseur bouge', 'Vrai', 'image-f1.png', 'easy'),
(2, 'Il existe plusieurs types de claviers', 'Vrai', 'image-f2.png', 'easy'),
(3, 'De nos jours, les souris de bureau possèdent au moins 4 boutons', 'Faux', 'image-f3.png', 'easy'),
(4, 'Le logiciel Word permet de modifier des images', 'Faux', 'image-f4.png', 'easy'),
(5, 'Il faut avoir accès à internet pour pouvoir se connecter à Facebook', 'Vrai', 'image-f5.png', 'easy'),
(6, 'Le logo de Twitter est un chien rouge', 'Faux', 'image-f6.png', 'easy'),
(7, 'Samsung est une marque de smartphones', 'Vrai', 'image-f7.png', 'easy'),
(8, 'Les tablettes sont en général plus grandes que les smartphones', 'Vrai', 'image-f8.png', 'easy'),
(9, 'Les virus d\'ordinateurs sont contagieux pour l\'Homme', 'Faux', 'image-f9.png', 'easy'),
(10, 'Il est possible de brancher un casque audio à son ordinateur', 'Vrai', 'image-f10.png', 'easy'),
(11, 'Tous les claviers d\'ordinateurs possèdent la touches F13', 'Faux', 'image-f11.png', 'easy'),
(12, 'Un smartphone est un téléphone très limité en fonctionnalités', 'Faux', 'image-f12.png', 'easy'),
(13, 'Il est possible de contrôler certains appareils électriques à partir de son téléphone', 'Vrai', 'image-f13.png', 'easy'),
(14, 'Il est possible de rouler en voiture depuis son smartphone', 'Faux', 'image-f14.png', 'easy'),
(15, 'Un ordinateur produit de la chaleur', 'Vrai', 'image-f15.png', 'easy'),
(16, 'Le symbole d\'Apple est une poire', 'Faux', 'image-f16.png', 'easy'),
(17, 'Facebook est un logiciel de retouche de photos', 'Faux', 'image-f17.png', 'easy'),
(18, 'Photoshop est un réseau social où l\'on peut dialoguer avec ses amis', 'Faux', 'image-f18.png', 'easy'),
(19, 'eBay est un jeu vidéo de zombie mondialement connu', 'Faux', 'image-f19.png', 'easy'),
(20, 'Un antivirus permet de se protéger des données infectées', 'Vrai', 'image-f20.png', 'easy'),
(21, 'Un bug est un défaut de réalisation dans un programme', 'Vrai', 'image-f21.png', 'easy'),
(22, 'La corbeille est vidée tous les mardis soirs à 21h', 'Faux', 'image-f22.png', 'easy'),
(23, 'Il est possible de zoomer avec ses doigts sur un écran tactile', 'Vrai', 'image-f23.png', 'easy'),
(24, 'Un e-mail est un courrier électronique', 'Vrai', 'image-f24.png', 'easy'),
(25, 'Il est possible de mettre en veille un ordinateur', 'Vrai', 'image-f25.png', 'easy'),
(26, 'Un bandit informatique est une personne qui tente de prendre le contrôle de votre ordinateur par effraction', 'Faux', 'image-f26.png', 'easy'),
(27, 'Les écrans sont composés de pixels', 'Vrai', 'image-f27.png', 'easy'),
(28, 'Un Pop-up est un message électronique non sollicité qui encombre votre boîte de courrier internet', 'Faux', 'image-f28.png', 'easy'),
(29, 'Pour aller sur Internet, j\'utilise un aviateur', 'Faux', 'image-f29.png', 'easy'),
(30, 'Outlook est un moteur de recherche', 'Faux', 'image-f30.png', 'easy'),
(31, 'Lorsqu\'un fichier se retrouve dans la corbeille, il est perdu à tout jamais', 'Faux', 'image-f31.png', 'easy'),
(32, 'Dans un logiciel de traitement de texte, le pompier gère le style de l\'écriture', 'Faux', 'image-f32.png', 'easy'),
(33, 'Un « surfeur » est le nom donné au logiciel qui permet de surfer sur Internet', 'Faux', 'image-f33.png', 'easy'),
(34, 'Instagram est une application de messagerie instantanée en ligne', 'Faux', 'image-f34.png', 'easy'),
(35, 'Il existe des perches pour prendre des selfies', 'Vrai', 'image-f35.png', 'easy'),
(36, 'Le « S » dans HTTPS indique que le site est sécurisé', 'Vrai', 'image-i1.png', 'medium'),
(37, 'Les smartphones sont des mini-ordinateurs', 'Vrai', 'image-i2.png', 'medium'),
(38, 'Le raccourci clavier « CTRL + C » permet de coller un élément préalablement copié', 'Faux', 'image-i3.png', 'medium'),
(39, 'Windows fabrique tous les ordinateurs du monde', 'Faux', 'image-i4.png', 'medium'),
(40, 'Il est impossible de recharger son téléphone via le port USB de son ordinateur', 'Faux', 'image-i5.png', 'medium'),
(41, 'Le système binaire n\'est composé que des chiffres 0, 1 et 2', 'Faux', 'image-i6.png', 'medium'),
(42, 'Les composants d\'un ordinateur sont reliés à une carte Père', 'Faux', 'image-i7.png', 'medium'),
(43, 'Les sites internet utilisent des brownies pour garder nos données', 'Faux', 'image-i8.png', 'medium'),
(44, 'Certains ordinateurs possèdent un écran tactile', 'Vrai', 'image-i9.png', 'medium'),
(45, 'Un dossier permet de stocker un nombre infini de fichiers tant que ça ne dépasse pas la capacité maximale du disque dur', 'Vrai', 'image-i10.png', 'medium'),
(46, 'Il est possible de partitionner son disque dur', 'Vrai', 'image-i11.png', 'medium'),
(47, 'Il est possible de créer ses propres raccourcis clavier', 'Vrai', 'image-i12.png', 'medium'),
(48, 'Un serveur est un « gros ordinateur » qui stocke des données', 'Vrai', 'image-i13.png', 'medium'),
(49, 'Une « URL » est l\'adresse d\'un site internet', 'Vrai', 'image-i14.png', 'medium'),
(50, 'La page d\'accueil internet peut être changée', 'Vrai', 'image-i15.png', 'medium'),
(51, 'Il est possible d\'avoir la même adresse mail que son voisin', 'Faux', 'image-i16.png', 'medium'),
(52, 'Au démarrage de l\'ordinateur, on peut lancer automatiquement des programmes', 'Vrai', 'image-i17.png', 'medium'),
(53, 'Windows Update sert à mettre à jour son système d\'exploitation', 'Vrai', 'image-i18.png', 'medium'),
(54, 'L\'acronyme « FAI » signifie Fournisseur d\'Accès Internet', 'Vrai', 'image-i19.png', 'medium'),
(55, 'Apple est un système d\'exploitation', 'Faux', 'image-i20.png', 'medium'),
(56, 'Supprimer le raccourci d\'un programme efface aussi le programme de l\'ordinateur', 'Faux', 'image-i21.png', 'medium'),
(57, 'Le Bluetooth permet l\'échange de données à très courte distance', 'Vrai', 'image-i22.png', 'medium'),
(58, 'iTunes est une boutique en ligne d\'Apple', 'Vrai', 'image-i23.png', 'medium'),
(59, 'Le Cloud est un système pour accrocher son smartphone ou sa tablette au mur', 'Faux', 'image-i24.png', 'medium'),
(60, 'Jack Zubertberg est le fondateur du réseau social Facebook', 'Faux', 'image-i25.png', 'medium'),
(61, 'Le logo de l\'application Periscope est un petit fantôme blanc sur fond jaune', 'Faux', 'image-i26.png', 'medium'),
(62, 'La phrase « OK Siri » permet de déclencher l\'application de commande vocale d\'Apple', 'Faux', 'image-i27.png', 'medium'),
(63, 'Le format d\'image JPEG permet de fournir un fond transparent à son image ', 'Faux', 'image-i28.png', 'medium'),
(64, 'Whatsapp est une application de messagerie instantanée', 'Vrai', 'image-i29.png', 'medium'),
(65, 'Aucune intelligence artificielle n\'a réussi à battre le meilleur joueur d\'échecs humain', 'Faux', 'image-i30.png', 'medium'),
(66, 'Les deux sites les plus visités au monde sont Google et Youtube', 'Vrai', 'image-i31.png', 'medium'),
(67, 'Le fait de tricher dans un jeu vidéo est aussi appelé « cheat »', 'Vrai', 'image-i32.png', 'medium'),
(68, 'Avant Facebook, le réseau social qui dominait était MyFace', 'Faux', 'image-i33.png', 'medium'),
(69, 'WordPress est un logiciel de traitement de texte', 'Faux', 'image-i34.png', 'medium'),
(70, 'MOOC est un type de formation à distance ouvert à tous', 'Vrai', 'image-i35.png', 'medium'),
(71, 'Les unités de stockages suivantes sont-elles classées dans l\'ordre : To, Mo, Ko, Go', 'Faux', 'image-i36.png', 'medium'),
(72, 'Google Trends est un outil permettant de connaître la fréquence à laquelle un terme a été tapé dans le moteur de recherche google', 'Vrai', 'image-i37.png', 'medium'),
(73, 'Un « dogfie » est l\'appellation d\'une photo prise avec son chien', 'Faux', 'image-i38.png', 'medium'),
(74, 'Internet était à l\'origine une invention militaire', 'Vrai', 'image-d1.png', 'hard'),
(75, 'Bill Gates a inventé Linux', 'Faux', 'image-d2.png', 'hard'),
(76, 'GladOS est le système d\'exploitation des smartphones Android', 'Faux', 'image-d3.png', 'hard'),
(77, 'Une souris a toujours eu au minimum 2 boutons', 'Faux', 'image-d4.png', 'hard'),
(78, 'Le nom « Google » provient d\'une expression française', 'Faux', 'image-d5.png', 'hard'),
(79, 'Java est un langage de programmation', 'Vrai', 'image-d6.png', 'hard'),
(80, 'Un bug informatique mondial s\'est produit au passage de l\'an 2000', 'Vrai', 'image-d7.png', 'hard'),
(81, 'Un « Cheval de Troie » est un programme malveillant dissimulé', 'Vrai', 'image-d8.png', 'hard'),
(82, 'Le WiFi est une invention brevetée', 'Vrai', 'image-d9.png', 'hard'),
(83, 'WaterFox est un navigateur internet', 'Vrai', 'image-d10.png', 'hard'),
(84, 'Les smartphones possèdent un processeur', 'Vrai', 'image-d11.png', 'hard'),
(85, 'La RAM est la mémoire du disque dur', 'Faux', 'image-d12.png', 'hard'),
(86, 'La touche « F2 » permet de renommer des fichiers', 'Vrai', 'image-d13.png', 'hard'),
(87, 'Le raccourci « ALT + F4 » imprime l\'écran actuel', 'Faux', 'image-d14.png', 'hard'),
(88, 'Formater un ordinateur permet de créer un point de sauvegarde', 'Faux', 'image-d15.png', 'hard'),
(89, 'Dans le jeu original Tetris, il existe 7 formes différentes', 'Vrai', 'image-d16.png', 'hard'),
(90, 'La version de Windows qui précède Windows XP est Windows 98', 'Vrai', 'image-d17.png', 'hard'),
(91, 'Le jeu vidéo populaire Candy Crush Saga a été développé par King', 'Vrai', 'image-d18.png', 'hard'),
(92, 'L\'application mobile de navigation GPS Waze a été rachetée par Microsoft', 'Faux', 'image-d19.png', 'hard'),
(93, 'En 3 jours, l\'intelligence artificielle de Google a appris le jeu de Go et écrasé la machine qui a détrôné l\'Homme', 'Vrai', 'image-d20.png', 'hard'),
(94, 'La vidéo la plus consultée sur YouTube a dépassé les 5 milliards de vues', 'Vrai', 'image-d21.png', 'hard'),
(95, 'L\'abréviation WWW est l\'acronyme de « World Wild Web»', 'Faux', 'image-d22.png', 'hard'),
(96, 'Sur un navigateur internet, l\'erreur 404 signifie que la page recherchée est introuvable', 'Vrai', 'image-d23.png', 'hard'),
(97, 'Le « Fishing » est une technique frauduleuse utilisée par les pirates informatiques pour récupérer des informations', 'Faux', 'image-d24.png', 'hard'),
(98, 'En plus des versions Android Lollipop et Kitkat, il existe aussi la version Oreo', 'Vrai', 'image-d25.png', 'hard'),
(99, 'Généralement, une page internet est composée de HTML et CSS', 'Vrai', 'image-d26.png', 'hard'),
(100, 'Moodle est une application de partage de vidéos', 'Faux', 'image-d27.png', 'hard'),
(101, 'Facebook est apparu en 2003', 'Faux', 'image-d28.png', 'hard'),
(102, 'Dans le jeu Angry Birds, les cochons sont de couleur rose', 'Faux', 'image-d29.png', 'hard'),
(103, 'Les requêtes SKL permettent d\'échanger avec une base de données', 'Faux', 'image-d30.png', 'hard'),
(104, 'La définition de Licorne dans l\'univers des startups correspond à une société valorisée à 1 milliard de dollars sans être en bourse', 'Vrai', 'image-d31.png', 'hard'),
(105, 'Les créateurs de Google sont Larry Page et Sergueï Brin', 'Vrai', 'image-d32.png', 'hard'),
(106, 'L\'open source est le qualificatif associé à un logiciel libre de distribution et de modification du code', 'Vrai', 'image-d33.png', 'hard'),
(107, 'L\'adresse MAC est l\'autre nom donné à l\'adresse du site Apple', 'Faux', 'image-d34.png', 'hard'),
(108, 'Didapage est un logiciel permettant à l\'utilisateur de créer des livres virtuels', 'Vrai', 'image-d35.png', 'hard'),
(109, 'L\'iBeacon est une monnaie virtuelle', 'Faux', 'image-d36.png', 'hard'),
(110, 'Un CMS est un système de gestion de contenu destinés à la conception et à la mise à jour dynamique de sites Web', 'Vrai', 'image-d37.png', 'hard');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `score`
--

INSERT INTO `score` (`id`, `pseudo_user`, `score_easy`, `score_medium`, `score_hard`, `score_total`) VALUES
(1, 'Yoyanne', 0, 0, 0, 0),
(2, 'Julien', 0, 0, 0, 0),
(3, 'Axel', 0, 0, 0, 0),
(4, 'Loic', 0, 0, 0, 0);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `email`, `nom`, `prenom`, `tranche_d_age`, `pseudo`, `mdp`) VALUES
(1, 'yohann.demora@gmail.com', 'Demora', 'Yohann', '+25', 'Yoyanne', '$2y$10$EHPe9b78.yCkl6cbxNUePuf4rj4/ICzLqNvdcv5w9jVaK8NlnJz42'),
(2, 'benmonmail@hhuuu.fou', 'Dequidt', 'Julien', '18-25', 'Julien', '$2y$10$dswwo8f3A9qcjU9f4zk0Uehq9Z.jeuQQ0KD/SEe02nWadlf5wL42a'),
(3, 'axel@axel.fr', 'Ledieu', 'Axel', '18-25', 'Axel', '$2y$10$sRvBdM7Wd01lObyS9f/YzurxFzs6sevPEBKcYzFwKLbW55xYydYOm'),
(4, 'loic@loic.fr', 'Roussel', 'Loic', '+25', 'Loic', '$2y$10$iyvdE7sZHPUTrB14l27hLuNyqNoIbJXf4Ao2450I6u1hNDW2nlPXm');

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
