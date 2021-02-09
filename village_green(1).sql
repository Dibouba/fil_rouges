-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 08 fév. 2021 à 09:29
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

--
-- la sauvegarde de ma base de données village_green
--
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `village_green`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `cat_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_nom` varchar(50) NOT NULL,
  `cat_parent_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `cat_parent_id` (`cat_parent_id`) USING BTREE,
  KEY `n_cat` (`cat_id`,`cat_nom`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_nom`, `cat_parent_id`) VALUES
(1, 'Guitare', NULL),
(2, 'Sono', NULL),
(3, 'Piano', NULL),
(4, 'Batterie', NULL),
(5, 'Micro', NULL),
(6, 'Saxo', NULL),
(7, 'Cable', NULL),
(8, 'Cases', NULL),
(9, 'acoustique', 1),
(10, 'classique', 1),
(11, 'éléctrique', 1),
(12, 'Amplificateur', 2),
(13, 'sonorisation portable', 2),
(14, 'lecteur audio', 2),
(15, 'acoustique', 4),
(16, 'éléctrique', 4),
(17, 'piano à queue', 3),
(18, 'piano éléctrique', 3),
(19, 'sans-fil', 5),
(20, 'micro_usb', 5),
(21, 'saxo_soprano', 6),
(22, 'saxo-baryton', 6),
(23, 'cable haut-parleur', 7),
(24, 'cable à métre', 7),
(25, 'case platine', 8),
(26, 'case contôleur dj', 8),
(27, 'case éclairage', 8);

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE IF NOT EXISTS `clients` (
  `cli_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cli_nom` varchar(50) NOT NULL,
  `cli_pre` varchar(50) NOT NULL,
  `cli_voie` varchar(50) NOT NULL,
  `cli_nro_voie` int(10) NOT NULL,
  `cli_codpos` int(20) NOT NULL,
  `cli_ville` varchar(50) NOT NULL,
  `cli_phone` int(20) NOT NULL,
  `cli_mail` varchar(50) NOT NULL,
  `cli_type` varchar(50) NOT NULL,
  `cli_emp_id` int(10) NOT NULL,
  `cli_pays_id` int(10) NOT NULL,
  PRIMARY KEY (`cli_id`),
  KEY `cli_emp_id` (`cli_emp_id`),
  KEY `cli_pays_id` (`cli_pays_id`),
  KEY `n_pays_id` (`cli_id`,`cli_ville`) USING BTREE,
  KEY `n_phone` (`cli_nom`,`cli_pre`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `clients`
--

INSERT INTO `clients` (`cli_id`, `cli_nom`, `cli_pre`, `cli_voie`, `cli_nro_voie`, `cli_codpos`, `cli_ville`, `cli_phone`, `cli_mail`, `cli_type`, `cli_emp_id`, `cli_pays_id`) VALUES
(1, 'LIGNAC', 'Gerome', 'Rue de Bastille', 2, 75012, 'Paris', 606009000, 'lignacgerome@ya.com', 'particulier', 14, 0),
(2, 'KOLON', 'Harouna', 'Rue verte', 10, 1028, 'Bruxelles', 2147483647, 'kolonharouna@ht.be', 'professionnel', 4, 0),
(3, 'SIMONE', 'Elisabeth', 'Rue Lacuée', 4, 75012, 'Paris', 700012003, 'simoneelisabeth@ml.fr', 'particulier', 14, 0),
(4, 'SOUAMAORO', 'Ismael', 'Rue Beauville', 70, 80080, 'Amiens', 702009001, 'soumaoroismael@ht.com', 'particulier', 14, 0),
(5, 'LEBLANC', 'Eric', 'Rue ain', 2, 95000, 'Sarcelles', 768000900, 'leblanceric@ht.com', 'professionnel', 10, 0),
(6, 'BEN', 'Abdel', 'Rue Magenta', 2, 78020, 'Limay', 700340001, 'benabdel@gm.fr', 'Professinnel', 10, 0),
(7, 'CARLOS', 'Roberto', 'Carrera san jeronimo', 2, 28010, 'Madrid', 2147483647, 'carlosroberto@ht.es', 'professionnel', 10, 0),
(9, 'JAILLARD', 'Benjamin', 'Rue lorene', 30, 60060, 'Creil', 769009000, 'jaillardbenjamin', 'particulier', 14, 0),
(10, 'BINETA', 'Gaoussou', 'Boulevard St Joseph', 17, 76020, 'Verviers', 700010900, 'binetagaoussou@ht.com', 'particuler', 14, 0),
(11, 'KAMEL', 'Idris', 'Rue Morceau', 2, 78000, 'Mantes', 700090807, 'kamelidris@hy.com', 'particulier', 14, 0),
(12, 'RENARD', 'Sofia', 'Avenue Goerges', 90, 94000, 'Créteil', 678760004, 'renardsofia@ht.com', 'particulier', 14, 0),
(13, 'BOURGES', 'Anne', 'Rue des clois', 3, 23000, 'Lima', 700019090, 'bourgesanne@hy.com', 'particulier', 14, 0),
(14, 'SULIMA', 'Yassine', 'Avenue Général De Gaule', 2, 94020, 'Boissy St Goerges', 2147483647, 'sulimaneyassine@ml.fr', 'professionnel', 4, 0),
(15, 'KONE', 'Drissa', 'Clos chapelle-aux-champs', 2, 1200, 'Bruxelles', 2147483647, 'drissakone32@ht.com', 'particulier', 14, 0),
(16, 'CHERIF', 'Issa', 'Rue des libres', 87, 69000, 'Lyon', 2147483647, 'issacherif@ml.com', 'professionnel', 10, 0),
(17, 'DURAND', 'Michel', 'Rue des bonnes nouvelles', 20, 75012, 'Paris', 679096745, 'micheldurand@music.fr', 'professionel', 4, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `com_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `com_date` datetime NOT NULL,
  `com_date_paie` datetime NOT NULL,
  `com_date_livr` datetime NOT NULL,
  `com_date_exp` datetime NOT NULL,
  `com_cli_id` int(10) NOT NULL,
  PRIMARY KEY (`com_id`),
  KEY `com_cli_id` (`com_cli_id`),
  KEY `n_client` (`com_id`,`com_date_paie`,`com_date_exp`,`com_cli_id`) USING BTREE,
  KEY `n_com_id` (`com_date`,`com_cli_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=71 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `commandes`
--

INSERT INTO `commandes` (`com_id`, `com_date`, `com_date_paie`, `com_date_livr`, `com_date_exp`, `com_cli_id`) VALUES
(1, '2018-05-20 00:00:00', '2020-01-21 00:00:00', '0000-00-00 00:00:00', '2003-11-18 00:00:00', 2),
(2, '2023-01-16 00:00:00', '2012-09-18 00:00:00', '0000-00-00 00:00:00', '2005-11-16 00:00:00', 15),
(3, '2021-10-19 00:00:00', '2007-04-19 00:00:00', '0000-00-00 00:00:00', '2024-11-17 00:00:00', 10),
(4, '2008-07-16 00:00:00', '2028-07-20 00:00:00', '0000-00-00 00:00:00', '2004-09-20 00:00:00', 7),
(5, '2003-01-17 00:00:00', '2021-06-16 00:00:00', '2001-10-22 00:00:00', '2016-03-20 00:00:00', 12),
(6, '2004-04-19 00:00:00', '2021-02-16 00:00:00', '2011-11-18 00:00:00', '2002-12-17 00:00:00', 13),
(7, '2015-06-19 00:00:00', '2018-07-19 00:00:00', '2005-06-21 00:00:00', '2003-12-18 00:00:00', 17),
(8, '2021-03-21 00:00:00', '2021-03-21 00:00:00', '2005-11-17 00:00:00', '2006-01-19 00:00:00', 7),
(9, '2028-07-17 00:00:00', '2010-07-17 00:00:00', '0000-00-00 00:00:00', '2027-10-20 00:00:00', 4),
(10, '2029-04-17 00:00:00', '2021-04-20 00:00:00', '0000-00-00 00:00:00', '2004-03-16 00:00:00', 11),
(11, '2020-02-18 00:00:00', '2010-04-20 00:00:00', '0000-00-00 00:00:00', '2006-06-20 00:00:00', 4),
(12, '2013-07-17 00:00:00', '2010-06-18 00:00:00', '0000-00-00 00:00:00', '2023-08-21 00:00:00', 7),
(13, '2009-02-17 00:00:00', '2021-07-18 00:00:00', '0000-00-00 00:00:00', '2022-12-21 00:00:00', 17),
(14, '2011-10-20 00:00:00', '2029-01-16 00:00:00', '0000-00-00 00:00:00', '2017-09-19 00:00:00', 10),
(15, '2006-12-16 00:00:00', '2005-07-18 00:00:00', '0000-00-00 00:00:00', '2027-03-19 00:00:00', 3),
(16, '2023-07-17 00:00:00', '2010-11-16 00:00:00', '0000-00-00 00:00:00', '2008-05-19 00:00:00', 15),
(17, '2009-02-19 00:00:00', '2013-11-18 00:00:00', '2009-10-16 00:00:00', '2005-09-19 00:00:00', 4),
(18, '2010-07-19 00:00:00', '2029-07-21 00:00:00', '0000-00-00 00:00:00', '2020-12-18 00:00:00', 17),
(19, '2023-01-17 00:00:00', '2012-08-18 00:00:00', '0000-00-00 00:00:00', '2026-12-21 00:00:00', 8),
(20, '2003-09-20 00:00:00', '2016-05-19 00:00:00', '2005-09-19 00:00:00', '2028-12-17 00:00:00', 8),
(21, '2019-03-16 00:00:00', '2025-03-16 00:00:00', '0000-00-00 00:00:00', '2014-07-20 00:00:00', 7),
(22, '2030-07-19 00:00:00', '2021-12-17 00:00:00', '2007-12-16 00:00:00', '2021-05-19 00:00:00', 17),
(23, '2017-05-21 00:00:00', '2014-02-20 00:00:00', '2004-07-18 00:00:00', '2014-05-21 00:00:00', 3),
(24, '2025-10-16 00:00:00', '2010-10-20 00:00:00', '0000-00-00 00:00:00', '2020-02-17 00:00:00', 12),
(25, '2030-06-19 00:00:00', '2002-12-18 00:00:00', '2005-03-16 00:00:00', '2004-07-21 00:00:00', 10),
(26, '2021-06-18 00:00:00', '2017-12-17 00:00:00', '2007-11-21 00:00:00', '2003-04-19 00:00:00', 13),
(27, '2025-12-21 00:00:00', '2015-10-17 00:00:00', '0000-00-00 00:00:00', '2007-10-18 00:00:00', 14),
(28, '2001-11-16 00:00:00', '2002-05-18 00:00:00', '0000-00-00 00:00:00', '2026-02-21 00:00:00', 9),
(29, '2005-05-21 00:00:00', '2028-04-21 00:00:00', '0000-00-00 00:00:00', '2017-07-16 00:00:00', 2),
(30, '2009-03-19 00:00:00', '2004-11-19 00:00:00', '0000-00-00 00:00:00', '2003-08-20 00:00:00', 7),
(31, '2008-08-21 00:00:00', '2023-12-21 00:00:00', '2003-01-16 00:00:00', '2006-08-19 00:00:00', 5),
(32, '2017-12-18 00:00:00', '2007-05-16 00:00:00', '0000-00-00 00:00:00', '2031-01-19 00:00:00', 3),
(33, '2022-03-18 00:00:00', '2020-05-20 00:00:00', '2008-07-21 00:00:00', '2029-08-21 00:00:00', 2),
(34, '2021-02-21 00:00:00', '2023-09-21 00:00:00', '0000-00-00 00:00:00', '2002-08-20 00:00:00', 2),
(35, '2011-08-17 00:00:00', '2005-10-17 00:00:00', '0000-00-00 00:00:00', '2003-10-16 00:00:00', 1),
(36, '2029-02-20 00:00:00', '2005-09-16 00:00:00', '0000-00-00 00:00:00', '2008-01-21 00:00:00', 13),
(37, '2030-01-19 00:00:00', '2023-10-21 00:00:00', '2003-02-17 00:00:00', '2031-12-20 00:00:00', 2),
(38, '2010-05-21 00:00:00', '2016-11-17 00:00:00', '0000-00-00 00:00:00', '2023-04-18 00:00:00', 5),
(39, '2012-03-17 00:00:00', '2029-12-19 00:00:00', '2009-12-21 00:00:00', '2026-09-17 00:00:00', 17),
(40, '2008-06-16 00:00:00', '2021-04-17 00:00:00', '2011-12-19 00:00:00', '2020-06-19 00:00:00', 11),
(41, '2031-12-16 00:00:00', '2006-10-18 00:00:00', '2010-04-21 00:00:00', '2004-06-20 00:00:00', 6),
(42, '2010-04-17 00:00:00', '2030-05-21 00:00:00', '0000-00-00 00:00:00', '2005-08-20 00:00:00', 4),
(43, '2013-12-18 00:00:00', '2002-04-21 00:00:00', '0000-00-00 00:00:00', '2025-06-18 00:00:00', 4),
(44, '2020-03-16 00:00:00', '2002-09-16 00:00:00', '0000-00-00 00:00:00', '2022-12-20 00:00:00', 11),
(45, '2010-09-17 00:00:00', '2023-12-21 00:00:00', '0000-00-00 00:00:00', '2030-11-21 00:00:00', 14),
(46, '2005-09-20 00:00:00', '2010-08-21 00:00:00', '0000-00-00 00:00:00', '2004-09-20 00:00:00', 8),
(47, '2031-01-19 00:00:00', '2012-10-20 00:00:00', '2009-05-21 00:00:00', '2005-07-20 00:00:00', 2),
(48, '2020-05-21 00:00:00', '2024-01-22 00:00:00', '0000-00-00 00:00:00', '2019-10-18 00:00:00', 12),
(49, '2014-02-16 00:00:00', '2004-03-20 00:00:00', '0000-00-00 00:00:00', '2023-11-21 00:00:00', 11),
(50, '2010-08-21 00:00:00', '2013-01-16 00:00:00', '0000-00-00 00:00:00', '2013-08-20 00:00:00', 13),
(51, '2001-06-19 00:00:00', '2009-11-16 00:00:00', '2004-11-18 00:00:00', '2013-12-18 00:00:00', 15),
(52, '2009-04-19 00:00:00', '2004-01-22 00:00:00', '0000-00-00 00:00:00', '2009-12-21 00:00:00', 9),
(53, '2024-12-16 00:00:00', '2006-11-19 00:00:00', '0000-00-00 00:00:00', '2028-04-16 00:00:00', 11),
(54, '2020-07-16 00:00:00', '2015-02-19 00:00:00', '0000-00-00 00:00:00', '2003-10-17 00:00:00', 4),
(55, '2028-11-16 00:00:00', '2026-06-21 00:00:00', '2012-04-21 00:00:00', '2002-05-16 00:00:00', 13),
(56, '2024-11-17 00:00:00', '2028-05-19 00:00:00', '2008-05-19 00:00:00', '2013-10-21 00:00:00', 6),
(57, '2014-02-18 00:00:00', '2007-10-20 00:00:00', '0000-00-00 00:00:00', '2004-04-19 00:00:00', 7),
(58, '2011-08-19 00:00:00', '2003-03-17 00:00:00', '2009-03-16 00:00:00', '2029-09-19 00:00:00', 6),
(59, '2002-12-17 00:00:00', '2021-02-20 00:00:00', '0000-00-00 00:00:00', '2002-03-18 00:00:00', 11),
(60, '2011-09-21 00:00:00', '2025-10-20 00:00:00', '2006-07-16 00:00:00', '2007-05-18 00:00:00', 6),
(61, '2014-05-16 00:00:00', '2019-09-19 00:00:00', '2012-12-21 00:00:00', '2027-05-18 00:00:00', 6),
(62, '2019-08-21 00:00:00', '2001-11-19 00:00:00', '2008-05-17 00:00:00', '2015-05-18 00:00:00', 2),
(63, '2002-04-17 00:00:00', '2007-09-16 00:00:00', '0000-00-00 00:00:00', '2011-04-16 00:00:00', 13),
(64, '2017-11-18 00:00:00', '2023-12-16 00:00:00', '2010-03-17 00:00:00', '2024-01-22 00:00:00', 15),
(65, '2006-09-21 00:00:00', '2021-02-16 00:00:00', '2004-07-20 00:00:00', '2001-01-18 00:00:00', 15),
(66, '2025-09-17 00:00:00', '2017-11-18 00:00:00', '0000-00-00 00:00:00', '2006-11-17 00:00:00', 12),
(67, '2018-11-20 00:00:00', '2028-02-18 00:00:00', '0000-00-00 00:00:00', '2003-04-18 00:00:00', 10),
(68, '2009-01-22 00:00:00', '2018-05-21 00:00:00', '0000-00-00 00:00:00', '2021-01-17 00:00:00', 14),
(69, '2026-07-21 00:00:00', '2010-02-19 00:00:00', '2012-10-20 00:00:00', '2013-07-17 00:00:00', 2),
(70, '2006-01-22 00:00:00', '2012-10-21 00:00:00', '2010-10-21 00:00:00', '2025-11-18 00:00:00', 9);

-- --------------------------------------------------------

--
-- Structure de la table `departements`
--

DROP TABLE IF EXISTS `departements`;
CREATE TABLE IF NOT EXISTS `departements` (
  `dep_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dep_nom` varchar(50) NOT NULL,
  PRIMARY KEY (`dep_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `departements`
--

INSERT INTO `departements` (`dep_id`, `dep_nom`) VALUES
(1, 'Direction'),
(2, 'Ressources humaines'),
(3, 'Logistique'),
(4, 'Direction des systémes d\"information'),
(5, 'Distribution'),
(6, 'Marketing'),
(7, 'Comptabilités'),
(8, 'Achat');

-- --------------------------------------------------------

--
-- Structure de la table `employes`
--

DROP TABLE IF EXISTS `employes`;
CREATE TABLE IF NOT EXISTS `employes` (
  `emp_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `emp_nom` varchar(50) NOT NULL,
  `emp_pre` varchar(50) NOT NULL,
  `emp_genre` char(1) NOT NULL,
  `emp_voie` varchar(50) NOT NULL,
  `emp_nro_voie` int(10) NOT NULL,
  `emp_codpos` int(10) NOT NULL,
  `emp_ville` varchar(50) NOT NULL,
  `emp_phone` int(20) NOT NULL,
  `emp_mail` varchar(50) NOT NULL,
  `emp_date_emb` datetime NOT NULL,
  `emp_nbr_enf` int(10) NOT NULL,
  `emp_sal` decimal(15,0) NOT NULL,
  `emp_pos_id` int(10) NOT NULL,
  `emp_dep_id` int(10) NOT NULL,
  `emp_pays_id` int(10) NOT NULL,
  `emp_sup_id` int(10) UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_dep_id` (`emp_dep_id`),
  KEY `emp_sup_id` (`emp_sup_id`),
  KEY `emp_pays_id` (`emp_pays_id`),
  KEY `n_dep` (`emp_nom`,`emp_pre`,`emp_dep_id`) USING BTREE,
  KEY `n_nbrenfant` (`emp_id`,`emp_nom`,`emp_pre`) USING BTREE,
  KEY `n_poste` (`emp_pos_id`,`emp_nom`,`emp_pre`) USING BTREE,
  KEY `salaire` (`emp_id`,`emp_nom`,`emp_pre`,`emp_pos_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employes`
--

INSERT INTO `employes` (`emp_id`, `emp_nom`, `emp_pre`, `emp_genre`, `emp_voie`, `emp_nro_voie`, `emp_codpos`, `emp_ville`, `emp_phone`, `emp_mail`, `emp_date_emb`, `emp_nbr_enf`, `emp_sal`, `emp_pos_id`, `emp_dep_id`, `emp_pays_id`, `emp_sup_id`) VALUES
(1, 'DURAND', 'Georges', 'M', 'Boulevard Balzac', 10, 94320, 'BRY-SUR-MARNE', 630014277, 'durandgeorges@yahoo.zp', '0000-00-00 00:00:00', 3, '20000', 1, 1, 0, NULL),
(2, 'JEAN', 'Marinne', 'F', 'Rue Molier', 2, 7700, 'Villiers', 760023442, 'jeanmarinne@hotmail.com', '0000-00-00 00:00:00', 2, '16000', 9, 7, 0, 12),
(3, 'SOUBALI', 'Ichame', 'M', 'Rue Balzac', 20, 80000, 'AMIENS', 700200040, 'soubaliichame@y.com', '0000-00-00 00:00:00', 1, '14000', 15, 8, 0, 14),
(4, 'ASSILE', 'Isabelle', 'F', 'Avenue Beauville', 7, 80080, 'Salouël', 637560100, 'assileisabelle@g.com', '0000-00-00 00:00:00', 2, '13000', 10, 3, 0, 14),
(5, 'SIMONE', 'Eric', 'M', 'Boulevard méliés', 7, 85000, 'Boukis', 434770032, 'simoneeric@hot.com', '0000-00-00 00:00:00', 2, '12000', 6, 5, 0, 13),
(6, 'DORIAN', 'Maria', 'F', 'Rue St Georges', 2, 60000, 'Calan', 653473800, 'dorienmaria@mel.com', '0000-00-00 00:00:00', 0, '13000', 5, 3, 0, 14),
(7, 'FILIOR', 'Sandrine', 'F', 'Avenue Mir', 10, 50020, 'Aniers', 650009001, 'filiorsandrine@kal.com', '0000-00-00 00:00:00', 2, '11000', 13, 5, 0, 9),
(8, 'BARRY', 'Ali', 'M', 'Boulevard Charles', 19, 89080, 'Ain', 504020900, 'barryali@hot.com', '0000-00-00 00:00:00', 3, '11000', 13, 5, 0, 9),
(9, 'SOUANE', 'Brahim', 'M', 'Rue salouel', 3, 80680, 'Berne', 600012001, 'souanebrahim@gm.fr', '0000-00-00 00:00:00', 3, '14000', 8, 5, 0, 14),
(10, 'BOUZA', 'Soul', 'M', 'Avenue Gorgette', 1, 69000, 'Villiers', 704569000, 'bouzasoul1@ht.com', '0000-00-00 00:00:00', 3, '16000', 8, 5, 0, 14),
(11, 'MILLER', 'Chris', 'M', 'Impasse colin', 10, 42890, 'Beauchamps', 700049001, 'millerchris@yh.com', '0000-00-00 00:00:00', 0, '16000', 4, 1, 0, 12),
(12, 'BORNE', 'Myléne', 'F', 'Rue Beauville', 2, 80080, 'Salouël', 760017700, 'bornemylene@team.com', '0000-00-00 00:00:00', 1, '16000', 2, 1, 0, 1),
(13, 'DARMATAN', 'Cydric', 'M', 'Bis rue collin', 3, 60060, 'Beauvais', 700012004, 'darmtancydric@hot.com', '0000-00-00 00:00:00', 0, '16000', 3, 1, 0, 12),
(14, 'CORNER', 'Blaise', 'M', 'Rue Mopase', 19, 56030, 'Toun', 600099000, 'cornerblaise@cm.fr', '0000-00-00 00:00:00', 3, '13000', 7, 5, 0, 13),
(15, 'DRAKIL', 'Brems', 'M', 'Bis rue Balzac', 2, 80080, 'AMIENS', 789059023, 'drakilbrems@tl.com', '0000-00-00 00:00:00', 0, '13000', 16, 2, 0, 3),
(16, 'YOUSSEF', 'Karim', 'M', 'Avenue Midrette', 76, 56020, 'Ponin', 670030000, 'youssefkarim@ml.fr', '0000-00-00 00:00:00', 3, '15000', 14, 1, 0, 3),
(17, 'WARMER', 'Elisabeth', 'F', 'Rue Moulin', 40, 77800, 'Pente', 656043423, 'elisabethwarmer@cl.fr', '0000-00-00 00:00:00', 1, '14000', 12, 3, 0, 14),
(18, 'SOUM', 'Kerf', 'M', 'Rue des sourires', 3, 65090, 'Creil', 789050665, 'kerfsoum20@hl.com', '0000-00-00 00:00:00', 1, '14000', 11, 4, 0, 16),
(19, 'DIARA', 'Souleymane', 'M', 'Boulevard st Anne', 10, 80000, 'Amiens', 706009040, 'diarasouleymane@ht.com', '0000-00-00 00:00:00', 1, '13000', 5, 3, 0, 14),
(20, 'SOUZA', 'Corine', 'F', 'Rue fiquet', 3, 85000, 'Albertville', 605002045, 'corinesouza@yo.com', '0000-00-00 00:00:00', 2, '14000', 15, 8, 0, 14),
(21, 'DIBOLA', 'George', 'M', 'Rue calmette', 3, 80080, 'Amiens', 506045070, 'dibolageorge@cn.fr', '0000-00-00 00:00:00', 3, '13000', 5, 3, 0, 14),
(22, 'BOURNE', 'Simone', 'F', 'Rue des camille', 3, 78890, 'Dou', 780908086, 'simonebourne@gm.com', '0000-00-00 00:00:00', 0, '12000', 16, 5, 0, 8);

-- --------------------------------------------------------

--
-- Structure de la table `fournisseurs`
--

DROP TABLE IF EXISTS `fournisseurs`;
CREATE TABLE IF NOT EXISTS `fournisseurs` (
  `fou_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fou_nom` varchar(50) NOT NULL,
  `fou_voie` varchar(50) NOT NULL,
  `fou_nro_voie` int(20) NOT NULL,
  `fou_codpos` int(10) NOT NULL,
  `fou_ville` varchar(50) NOT NULL,
  `fou_phone` int(20) NOT NULL,
  `fou_mail` varchar(50) NOT NULL,
  `fou_type` varchar(50) NOT NULL,
  `fou_pays_id` int(10) NOT NULL,
  `fou_emp_id` int(10) NOT NULL,
  PRIMARY KEY (`fou_id`),
  KEY `fou_pays_id` (`fou_pays_id`),
  KEY `fou_emp_id` (`fou_emp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `fournisseurs`
--

INSERT INTO `fournisseurs` (`fou_id`, `fou_nom`, `fou_voie`, `fou_nro_voie`, `fou_codpos`, `fou_ville`, `fou_phone`, `fou_mail`, `fou_type`, `fou_pays_id`, `fou_emp_id`) VALUES
(1, 'HEBEI', 'Boulevard Magenta', 10, 75010, 'Paris', 2147483647, 'hebeimusic@yahoo.com', 'importateur', 0, 4),
(2, 'Music Town', 'Boulevard marchal', 10, 33000, 'Bordeaux', 128674534, 'musictown@ml.com', 'Fabricant', 0, 14),
(3, 'HitJazz', 'Brodway Avenue', 74, 10007, 'New York', 2147483647, 'hitjazzprod@focus.com', 'Fabricant', 0, 9),
(4, 'Found musical corporation', 'Mohrenstrasse', 2, 10117, 'Berlin', 2147483647, 'foundmusicalcorporation@ht.com', 'importateur', 0, 20),
(5, 'Fender instrument', 'Jianguomenwal avenue', 1, 100004, 'Beijing', 2147483647, 'fenderinstrument@ht.com', 'Fabricant', 0, 9),
(6, 'Music flow', 'Rue volacan', 10, 69000, 'Lyon', 167985603, 'musicflow@gm.com', 'importateur', 0, 14),
(7, 'instrumental music', 'Rue de taverne', 23, 38000, 'Grenoble', 398674527, 'instrumentmusic@hotmail.com', 'importateur', 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `ligne_commandes`
--

DROP TABLE IF EXISTS `ligne_commandes`;
CREATE TABLE IF NOT EXISTS `ligne_commandes` (
  `lig_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lig_pu` decimal(15,3) NOT NULL,
  `lig_qua` int(10) NOT NULL,
  `lig_rem` int(10) NOT NULL,
  `lig_com_id` int(10) NOT NULL,
  `lig_pro_id` int(10) NOT NULL,
  PRIMARY KEY (`lig_id`),
  KEY `lig_com_id` (`lig_com_id`),
  KEY `n_lig_rem` (`lig_pro_id`,`lig_com_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ligne_commandes`
--

INSERT INTO `ligne_commandes` (`lig_id`, `lig_pu`, `lig_qua`, `lig_rem`, `lig_com_id`, `lig_pro_id`) VALUES
(1, '7600.990', 2, 20, 37, 10),
(2, '502.000', 8, 2, 31, 17),
(3, '202.990', 9, 4, 31, 6),
(4, '446.000', 5, 4, 35, 15),
(5, '179.000', 1, 2, 25, 16),
(6, '467.000', 7, 8, 6, 19),
(7, '784.000', 1, 7, 13, 15),
(8, '911.000', 8, 6, 49, 17),
(9, '809.000', 1, 10, 34, 7),
(10, '160.990', 2, 10, 49, 12),
(11, '509.900', 9, 4, 21, 19),
(12, '289.890', 6, 7, 43, 21),
(13, '492.000', 5, 3, 20, 14),
(14, '631.000', 6, 6, 14, 21),
(15, '754.900', 9, 2, 34, 14),
(16, '607.000', 4, 2, 14, 20),
(17, '715.990', 4, 7, 10, 5),
(18, '285.000', 1, 7, 34, 20),
(19, '791.900', 9, 4, 2, 1),
(20, '583.000', 5, 4, 14, 18),
(21, '317.890', 3, 4, 4, 3),
(22, '381.900', 4, 5, 20, 2),
(23, '739.670', 2, 1, 9, 1),
(24, '275.000', 6, 5, 25, 6),
(25, '255.000', 7, 6, 3, 14),
(26, '665.890', 9, 4, 33, 16),
(27, '420.990', 10, 6, 49, 9),
(28, '933.900', 1, 6, 41, 20),
(29, '573.000', 7, 8, 37, 4),
(30, '628.900', 5, 8, 50, 15);

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE IF NOT EXISTS `pays` (
  `pays_id` char(2) NOT NULL,
  `pays_nom` varchar(50) NOT NULL,
  PRIMARY KEY (`pays_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`pays_id`, `pays_nom`) VALUES
('AD', 'Andorre'),
('AE', 'Émirats Arabes Unis'),
('AF', 'Afghanistan'),
('AG', 'Antigua-et-Barbuda'),
('AI', 'Anguilla'),
('AL', 'Albanie'),
('AM', 'Arménie'),
('AN', 'Antilles Néerlandaises'),
('AO', 'Angola'),
('AQ', 'Antarctique'),
('AR', 'Argentine'),
('AS', 'Samoa Américaines'),
('AT', 'Autriche'),
('AU', 'Australie'),
('AW', 'Aruba'),
('AX', 'Îles Åland'),
('AZ', 'Azerbaïdjan'),
('BA', 'Bosnie-Herzégovine'),
('BB', 'Barbade'),
('BD', 'Bangladesh'),
('BE', 'Belgique'),
('BF', 'Burkina Faso'),
('BG', 'Bulgarie'),
('BH', 'Bahreïn'),
('BI', 'Burundi'),
('BJ', 'Bénin'),
('BM', 'Bermudes'),
('BN', 'Brunéi Darussalam'),
('BO', 'Bolivie'),
('BR', 'Brésil'),
('BS', 'Bahamas'),
('BT', 'Bhoutan'),
('BV', 'Île Bouvet'),
('BW', 'Botswana'),
('BY', 'Bélarus'),
('BZ', 'Belize'),
('CA', 'Canada'),
('CC', 'Îles Cocos (Keeling)'),
('CD', 'République Démocratique du Congo'),
('CF', 'République Centrafricaine'),
('CG', 'République du Congo'),
('CH', 'Suisse'),
('CI', 'Côte d\'Ivoire'),
('CK', 'Îles Cook'),
('CL', 'Chili'),
('CM', 'Cameroun'),
('CN', 'Chine'),
('CO', 'Colombie'),
('CR', 'Costa Rica'),
('CS', 'Serbie-et-Monténégro'),
('CU', 'Cuba'),
('CV', 'Cap-vert'),
('CX', 'Île Christmas'),
('CY', 'Chypre'),
('CZ', 'République Tchèque'),
('DE', 'Allemagne'),
('DJ', 'Djibouti'),
('DK', 'Danemark'),
('DM', 'Dominique'),
('DO', 'République Dominicaine'),
('DZ', 'Algérie'),
('EC', 'Équateur'),
('EE', 'Estonie'),
('EG', 'Égypte'),
('EH', 'Sahara Occidental'),
('ER', 'Érythrée'),
('ES', 'Espagne'),
('ET', 'Éthiopie'),
('FI', 'Finlande'),
('FJ', 'Fidji'),
('FK', 'Îles (malvinas) Falkland'),
('FM', 'États Fédérés de Micronésie'),
('FO', 'Îles Féroé'),
('FR', 'France'),
('GA', 'Gabon'),
('GB', 'Royaume-Uni'),
('GD', 'Grenade'),
('GE', 'Géorgie'),
('GF', 'Guyane Française'),
('GH', 'Ghana'),
('GI', 'Gibraltar'),
('GL', 'Groenland'),
('GM', 'Gambie'),
('GN', 'Guinée'),
('GP', 'Guadeloupe'),
('GQ', 'Guinée Équatoriale'),
('GR', 'Grèce'),
('GS', 'Géorgie du Sud et les Îles Sandwich du Sud'),
('GT', 'Guatemala'),
('GU', 'Guam'),
('GW', 'Guinée-Bissau'),
('GY', 'Guyana'),
('HK', 'Hong-Kong'),
('HM', 'Îles Heard et Mcdonald'),
('HN', 'Honduras'),
('HR', 'Croatie'),
('HT', 'Haïti'),
('HU', 'Hongrie'),
('ID', 'Indonésie'),
('IE', 'Irlande'),
('IL', 'Israël'),
('IM', 'Île de Man'),
('IN', 'Inde'),
('IO', 'Territoire Britannique de l\'Océan Indien'),
('IQ', 'Iraq'),
('IR', 'République Islamique d\'Iran'),
('IS', 'Islande'),
('IT', 'Italie'),
('JM', 'Jamaïque'),
('JO', 'Jordanie'),
('JP', 'Japon'),
('KE', 'Kenya'),
('KG', 'Kirghizistan'),
('KH', 'Cambodge'),
('KI', 'Kiribati'),
('KM', 'Comores'),
('KN', 'Saint-Kitts-et-Nevis'),
('KP', 'République Populaire Démocratique de Corée'),
('KR', 'République de Corée'),
('KW', 'Koweït'),
('KY', 'Îles Caïmanes'),
('KZ', 'Kazakhstan'),
('LA', 'République Démocratique Populaire Lao'),
('LB', 'Liban'),
('LC', 'Sainte-Lucie'),
('LI', 'Liechtenstein'),
('LK', 'Sri Lanka'),
('LR', 'Libéria'),
('LS', 'Lesotho'),
('LT', 'Lituanie'),
('LU', 'Luxembourg'),
('LV', 'Lettonie'),
('LY', 'Jamahiriya Arabe Libyenne'),
('MA', 'Maroc'),
('MC', 'Monaco'),
('MD', 'République de Moldova'),
('MG', 'Madagascar'),
('MH', 'Îles Marshall'),
('MK', 'L\'ex-République Yougoslave de Macédoine'),
('ML', 'Mali'),
('MM', 'Myanmar'),
('MN', 'Mongolie'),
('MO', 'Macao'),
('MP', 'Îles Mariannes du Nord'),
('MQ', 'Martinique'),
('MR', 'Mauritanie'),
('MS', 'Montserrat'),
('MT', 'Malte'),
('MU', 'Maurice'),
('MV', 'Maldives'),
('MW', 'Malawi'),
('MX', 'Mexique'),
('MY', 'Malaisie'),
('MZ', 'Mozambique'),
('NA', 'Namibie'),
('NC', 'Nouvelle-Calédonie'),
('NE', 'Niger'),
('NF', 'Île Norfolk'),
('NG', 'Nigéria'),
('NI', 'Nicaragua'),
('NL', 'Pays-Bas'),
('NO', 'Norvège'),
('NP', 'Népal'),
('NR', 'Nauru'),
('NU', 'Niué'),
('NZ', 'Nouvelle-Zélande'),
('OM', 'Oman'),
('PA', 'Panama'),
('PE', 'Pérou'),
('PF', 'Polynésie Française'),
('PG', 'Papouasie-Nouvelle-Guinée'),
('PH', 'Philippines'),
('PK', 'Pakistan'),
('PL', 'Pologne'),
('PM', 'Saint-Pierre-et-Miquelon'),
('PN', 'Pitcairn'),
('PR', 'Porto Rico'),
('PS', 'Territoire Palestinien Occupé'),
('PT', 'Portugal'),
('PW', 'Palaos'),
('PY', 'Paraguay'),
('QA', 'Qatar'),
('RE', 'Réunion'),
('RO', 'Roumanie'),
('RU', 'Fédération de Russie'),
('RW', 'Rwanda'),
('SA', 'Arabie Saoudite'),
('SB', 'Îles Salomon'),
('SC', 'Seychelles'),
('SD', 'Soudan'),
('SE', 'Suède'),
('SG', 'Singapour'),
('SH', 'Sainte-Hélène'),
('SI', 'Slovénie'),
('SJ', 'Svalbard etÎle Jan Mayen'),
('SK', 'Slovaquie'),
('SL', 'Sierra Leone'),
('SM', 'Saint-Marin'),
('SN', 'Sénégal'),
('SO', 'Somalie'),
('SR', 'Suriname'),
('ST', 'Sao Tomé-et-Principe'),
('SV', 'El Salvador'),
('SY', 'République Arabe Syrienne'),
('SZ', 'Swaziland'),
('TC', 'Îles Turks et Caïques'),
('TD', 'Tchad'),
('TF', 'Terres Australes Françaises'),
('TG', 'Togo'),
('TH', 'Thaïlande'),
('TJ', 'Tadjikistan'),
('TK', 'Tokelau'),
('TL', 'Timor-Leste'),
('TM', 'Turkménistan'),
('TN', 'Tunisie'),
('TO', 'Tonga'),
('TR', 'Turquie'),
('TT', 'Trinité-et-Tobago'),
('TV', 'Tuvalu'),
('TW', 'Taïwan'),
('TZ', 'République-Unie de Tanzanie'),
('UA', 'Ukraine'),
('UG', 'Ouganda'),
('UM', 'Îles Mineures Éloignées des États-Unis'),
('US', 'États-Unis'),
('UY', 'Uruguay'),
('UZ', 'Ouzbékistan'),
('VA', 'Saint-Siège (état de la Cité du Vatican)'),
('VC', 'Saint-Vincent-et-les Grenadines'),
('VE', 'Venezuela'),
('VG', 'Îles Vierges Britanniques'),
('VI', 'Îles Vierges des États-Unis'),
('VN', 'Viet Nam'),
('VU', 'Vanuatu'),
('WF', 'Wallis et Futuna'),
('WS', 'Samoa'),
('YE', 'Yémen'),
('YT', 'Mayotte'),
('ZA', 'Afrique du Sud'),
('ZM', 'Zambie'),
('ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Structure de la table `postes`
--

DROP TABLE IF EXISTS `postes`;
CREATE TABLE IF NOT EXISTS `postes` (
  `pos_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pos_nom` varchar(60) NOT NULL,
  PRIMARY KEY (`pos_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `postes`
--

INSERT INTO `postes` (`pos_id`, `pos_nom`) VALUES
(1, 'President Directeur General'),
(2, 'Directeur(/trice) des finances'),
(3, 'Directeur(/trice) des ressources humaines'),
(4, 'Directeur(/trice)commercial'),
(5, 'preparateur(trice) de commande'),
(6, 'vigile'),
(7, 'Manageur(geuse)'),
(8, 'Commercial(e)'),
(9, 'comptable'),
(10, 'Chef(fe) de rayon'),
(11, 'Technicien(/ne) support informatique'),
(12, 'Technicien(/ne) de maintenance'),
(13, 'Hote(/esse'),
(14, 'Directeur des systemes informatique'),
(15, 'Acheteur'),
(16, 'Assistant RH'),
(17, 'Apres-vente');

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `pro_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_photo` varchar(200) NOT NULL,
  `pro_nom` varchar(50) NOT NULL,
  `pro_descr` varchar(80) NOT NULL,
  `pro_pru` decimal(15,2) NOT NULL,
  `pro_fou_id` int(10) NOT NULL,
  `pro_cat_id` int(10) NOT NULL,
  `pro_stk` int(20) NOT NULL,
  PRIMARY KEY (`pro_id`),
  KEY `pro_cat_id` (`pro_cat_id`),
  KEY `n_pro_nom` (`pro_fou_id`,`pro_cat_id`) USING BTREE,
  KEY `n_pro_pru` (`pro_id`,`pro_nom`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `produits`
--

INSERT INTO `produits` (`pro_id`, `pro_photo`, `pro_nom`, `pro_descr`, `pro_pru`, `pro_fou_id`, `pro_cat_id`, `pro_stk`) VALUES
(1, 'JPG', 'guitare flok', 'Tous les modèles comprennent une table en érable, un corps en acajou massif et l', '303.00', 2, 9, 5),
(2, 'JPG', 'tableur', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adi', '507.99', 5, 12, 2),
(3, 'JPG', 'Soundcraft', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adi', '209.00', 7, 27, 7),
(4, 'JPG', 'flamenco', 'Surtout employée par les musiciens de Flamenco, cette guitare ressemble à une gu', '308.99', 3, 9, 2),
(5, 'JPG', 'steinway', 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adi', '28000.00', 1, 17, 6),
(6, 'JPG', 'yamaha', 'Surtout employée par les musiciens de Flamenco, cette guitare ressemble à une gu', '16000.00', 4, 20, 4),
(7, 'JPG', 'piphone', 'Inspirée par le SG de 1961 la guitare électrique SG Standard 61 est dotée un cor', '429.99', 3, 10, 8),
(8, 'JPG', 'Alto', 'enceinte SLT TS215S est une enceinte sono actives de 15 pouces et une puissance ', '14900.00', 5, 13, 5),
(9, 'JPG', 'Pearl', 'loren melato srrarra tocu tocu', '420.99', 1, 15, 10),
(10, 'JPG', 'Paul', 'lomate lolo riimater toppama', '7600.99', 2, 23, 8),
(11, 'JPG', 'caseplatine', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '1200.00', 5, 25, 10),
(12, 'JPG', 'Lauten audio', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '308.00', 3, 19, 9),
(13, 'JPG', 'Neuman', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '879.00', 7, 20, 6),
(14, 'JPG', 'Soprano', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '209.99', 6, 21, 5),
(15, 'JPG', 'Baryton', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '879.00', 7, 22, 4),
(16, 'JPG', 'thomson', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '209.00', 4, 24, 11),
(17, 'JPG', 'Sony', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '340.00', 13, 20, 9),
(18, 'JPG', 'Yamaha', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '290.99', 7, 18, 12),
(19, 'JPG', 'Continantal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '349.99', 3, 27, 15),
(20, 'JPG', 'Yous', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '359.99', 1, 26, 8),
(21, 'JPG', 'Samsumg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor i', '348.90', 13, 19, 4);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
