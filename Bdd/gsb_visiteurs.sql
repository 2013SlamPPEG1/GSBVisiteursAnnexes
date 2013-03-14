-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 14 Mars 2013 à 14:34
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `gsb_visiteurs`
--

-- --------------------------------------------------------

--
-- Structure de la table `inviter`
--

CREATE TABLE IF NOT EXISTS `inviter` (
  `AC_NUM` int(11) NOT NULL,
  `PRA_NUM` smallint(6) NOT NULL,
  `SPECIALISTEON` bit(1) DEFAULT NULL,
  PRIMARY KEY (`AC_NUM`,`PRA_NUM`),
  KEY `fk_inviter_activite_compl1_idx` (`AC_NUM`),
  KEY `fk_inviter_praticien1_idx` (`PRA_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `labo`
--

CREATE TABLE IF NOT EXISTS `labo` (
  `LAB_CODE` varchar(2) DEFAULT NULL,
  `LAB_NOM` varchar(10) DEFAULT NULL,
  `LAB_CHEFVENTE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `labo`
--

INSERT INTO `labo` (`LAB_CODE`, `LAB_NOM`, `LAB_CHEFVENTE`) VALUES
('BC', 'Bichat', 'Suzanne Terminus'),
('GY', 'Gyverny', 'Marcel MacDouglas'),
('SW', 'Swiss Kane', 'Alain Poutre');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE IF NOT EXISTS `medicament` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `MED_NOMCOMMERCIAL` varchar(25) DEFAULT NULL,
  `FAM_CODE` varchar(3) DEFAULT NULL,
  `MED_COMPOSITION` varchar(255) DEFAULT NULL,
  `MED_EFFETS` varchar(255) DEFAULT NULL,
  `MED_CONTREINDIC` varchar(255) DEFAULT NULL,
  `MED_PRIXECHANTILLON` float DEFAULT NULL,
  `MED_PRESENTATION` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`),
  KEY `fk_medicament_famille1_idx` (`FAM_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`MED_DEPOTLEGAL`, `MED_NOMCOMMERCIAL`, `FAM_CODE`, `MED_COMPOSITION`, `MED_EFFETS`, `MED_CONTREINDIC`, `MED_PRIXECHANTILLON`, `MED_PRESENTATION`) VALUES
('3MYC7', 'TRIMYCINE', 'CRT', 'Triamcinolone (ac', 'Ce m', 'Ce m', NULL, NULL),
('ADIMOL9', 'ADIMOL', 'ABP', 'Amoxicilline + Acide clavulanique', 'Ce m', 'Ce m', NULL, NULL),
('AMOPIL7', 'AMOPIL', 'ABP', 'Amoxicilline', 'Ce m', 'Ce m', NULL, NULL),
('AMOX45', 'AMOXAR', 'ABP', 'Amoxicilline', 'Ce m', 'La prise de ce m', NULL, NULL),
('AMOXIG12', 'AMOXI G', 'ABP', 'Amoxicilline', 'Ce m', 'Ce m', NULL, NULL),
('APATOUX22', 'APATOUX Vitamine C', 'ALO', 'Tyrothricine + T', 'Ce m', 'Ce m', NULL, NULL),
('BACTIG10', 'BACTIGEL', 'ABC', 'Erythromycine', 'Ce m', 'Ce m', NULL, NULL),
('BACTIV13', 'BACTIVIL', 'AFM', 'Erythromycine', 'Ce m', 'Ce m', NULL, NULL),
('BITALV', 'BIVALIC', 'AAA', 'Dextropropoxyph', 'Ce m', 'Ce m', NULL, NULL),
('CARTION6', 'CARTION', 'AAA', 'Acide ac', 'Ce m', 'Ce m', NULL, NULL),
('CLAZER6', 'CLAZER', 'AFM', 'Clarithromycine', 'Ce m', 'Ce m', NULL, NULL),
('DEPRIL9', 'DEPRAMIL', 'AIM', 'Clomipramine', 'Ce m', 'Ce m', NULL, NULL),
('DIMIRTAM6', 'DIMIRTAM', 'AAC', 'Mirtazapine', 'Ce m', 'La prise de ce produit est contre-indiqu', NULL, NULL),
('DOLRIL7', 'DOLORIL', 'AAA', 'Acide ac', 'Ce m', 'Ce m', NULL, NULL),
('DORNOM8', 'NORMADOR', 'HYP', 'Doxylamine', 'Ce m', 'Ce m', NULL, NULL),
('EQUILARX6', 'EQUILAR', 'AAH', 'M', 'Ce m', 'Ce m', NULL, NULL),
('EVILR7', 'EVEILLOR', 'PSA', 'Adrafinil', 'Ce m', 'Ce m', NULL, NULL),
('INSXT5', 'INSECTIL', 'AH', 'Diph', 'Ce m', 'Ce m', NULL, NULL),
('JOVAI8', 'JOVENIL', 'AFM', 'Josamycine', 'Ce m', 'Ce m', NULL, NULL),
('LIDOXY23', 'LIDOXYTRACINE', 'AFC', 'Oxyt', 'Ce m', 'Ce m', NULL, NULL),
('LITHOR12', 'LITHORINE', 'AP', 'Lithium', 'Ce m', 'Ce m', NULL, NULL),
('PARMOL16', 'PARMOCODEINE', 'AA', 'Cod', 'Ce m', 'Ce m', NULL, NULL),
('PHYSOI8', 'PHYSICOR', 'PSA', 'Sulbutiamine', 'Ce m', 'Ce m', NULL, NULL),
('PIRIZ8', 'PIRIZAN', 'ABA', 'Pyrazinamide', 'Ce m', 'Ce m', NULL, NULL),
('POMDI20', 'POMADINE', 'AO', 'Bacitracine', 'Ce m', 'Ce m', NULL, NULL),
('TROXT21', 'TROXADET', 'AIN', 'Parox', 'Ce m', 'Ce m', NULL, NULL),
('TXISOL22', 'TOUXISOL Vitamine C', 'ALO', 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce m', 'Ce m', NULL, NULL),
('URIEG6', 'URIREGUL', 'AUM', 'Fosfomycine trom', 'Ce m', 'La prise de ce m', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `offrir`
--

CREATE TABLE IF NOT EXISTS `offrir` (
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `RAP_NUM` int(11) NOT NULL,
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `OFF_QTE` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`RAP_NUM`,`MED_DEPOTLEGAL`),
  KEY `fk_offrir_rapport_visite1_idx` (`VIS_MATRICULE`),
  KEY `fk_offrir_rapport_visite2_idx` (`RAP_NUM`),
  KEY `fk_offrir_medicament1_idx` (`MED_DEPOTLEGAL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `offrir`
--

INSERT INTO `offrir` (`VIS_MATRICULE`, `RAP_NUM`, `MED_DEPOTLEGAL`, `OFF_QTE`) VALUES
('a17', 4, '3MYC7', 3),
('a17', 4, 'AMOX45', 12);

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE IF NOT EXISTS `posseder` (
  `PRA_NUM` smallint(6) NOT NULL,
  `SPE_CODE` varchar(5) NOT NULL,
  `POS_DIPLOME` varchar(10) DEFAULT NULL,
  `POS_COEFPRESCRIPTION` float DEFAULT NULL,
  PRIMARY KEY (`PRA_NUM`,`SPE_CODE`),
  KEY `fk_posseder_specialite1_idx` (`SPE_CODE`),
  KEY `fk_posseder_praticien1_idx` (`PRA_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE IF NOT EXISTS `praticien` (
  `PRA_NUM` smallint(6) NOT NULL,
  `PRA_NOM` varchar(25) DEFAULT NULL,
  `PRA_PRENOM` varchar(30) DEFAULT NULL,
  `PRA_ADRESSE` varchar(50) DEFAULT NULL,
  `PRA_CP` varchar(5) DEFAULT NULL,
  `PRA_VILLE` varchar(25) DEFAULT NULL,
  `PRA_COEFNOTORIETE` float DEFAULT NULL,
  `TYP_CODE` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`PRA_NUM`),
  KEY `fk_praticien_type_praticien1_idx` (`TYP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `praticien`
--

INSERT INTO `praticien` (`PRA_NUM`, `PRA_NOM`, `PRA_PRENOM`, `PRA_ADRESSE`, `PRA_CP`, `PRA_VILLE`, `PRA_COEFNOTORIETE`, `TYP_CODE`) VALUES
(1, 'Notini', 'Alain', '114 r Authie', '85000', 'LA ROCHE SUR YON', 290.03, 'MH'),
(2, 'Gosselin', 'Albert', '13 r Devon', '41000', 'BLOIS', 307.49, 'MV'),
(3, 'Delahaye', 'Andr', '36 av 6 Juin', '25000', 'BESANCON', 185.79, 'PS'),
(4, 'Leroux', 'Andr', '47 av Robert Schuman', '60000', 'BEAUVAIS', 172.04, 'PH'),
(5, 'Desmoulins', 'Anne', '31 r St Jean', '30000', 'NIMES', 94.75, 'PO'),
(6, 'Mouel', 'Anne', '27 r Auvergne', '80000', 'AMIENS', 45.2, 'MH'),
(7, 'Desgranges-Lentz', 'Antoine', '1 r Albert de Mun', '29000', 'MORLAIX', 20.07, 'MV'),
(8, 'Marcouiller', 'Arnaud', '31 r St Jean', '68000', 'MULHOUSE', 396.52, 'PS'),
(9, 'Dupuy', 'Benoit', '9 r Demolombe', '34000', 'MONTPELLIER', 395.66, 'PH'),
(10, 'Lerat', 'Bernard', '31 r St Jean', '59000', 'LILLE', 257.79, 'PO'),
(11, 'Mar', 'Bertrand', '86Bis r Basse', '67000', 'STRASBOURG', 450.96, 'MH'),
(12, 'Boscher', 'Bruno', '94 r Falaise', '10000', 'TROYES', 356.14, 'MV'),
(13, 'Morel', 'Catherine', '21 r Chateaubriand', '75000', 'PARIS', 379.57, 'PS'),
(14, 'Guivarch', 'Chantal', '4 av G', '45000', 'ORLEANS', 114.56, 'PH'),
(15, 'Bessin-Grosdoit', 'Christophe', '92 r Falaise', '6000', 'NICE', 222.06, 'PO'),
(16, 'Rossa', 'Claire', '14 av Thi', '6000', 'NICE', 529.78, 'MH'),
(17, 'Cauchy', 'Denis', '5 av Ste Th', '11000', 'NARBONNE', 458.82, 'MV'),
(18, 'Gaff', 'Dominique', '9 av 1', '35000', 'RENNES', 213.4, 'PS'),
(19, 'Guenon', 'Dominique', '98 bd Mar Lyautey', '44000', 'NANTES', 175.89, 'PH'),
(20, 'Pr', 'Dominique', '29 r Lucien Nelle', '87000', 'LIMOGES', 151.36, 'PO'),
(21, 'Houchard', 'Eliane', '9 r Demolombe', '49100', 'ANGERS', 436.96, 'MH'),
(22, 'Desmons', 'Elisabeth', '51 r Berni', '29000', 'QUIMPER', 281.17, 'MV'),
(23, 'Flament', 'Elisabeth', '11 r Pasteur', '35000', 'RENNES', 315.6, 'PS'),
(24, 'Goussard', 'Emmanuel', '9 r Demolombe', '41000', 'BLOIS', 40.72, 'PH'),
(25, 'Desprez', 'Eric', '9 r Vaucelles', '33000', 'BORDEAUX', 406.85, 'PO'),
(26, 'Coste', 'Evelyne', '29 r Lucien Nelle', '19000', 'TULLE', 441.87, 'MH'),
(27, 'Lefebvre', 'Fr', '2 pl Wurzburg', '55000', 'VERDUN', 573.63, 'MV'),
(28, 'Lem', 'Fr', '29 av 6 Juin', '56000', 'VANNES', 326.4, 'PS'),
(29, 'Martin', 'Fr', 'B', '70000', 'VESOUL', 506.06, 'PH'),
(30, 'Marie', 'Fr', '172 r Caponi', '70000', 'VESOUL', 313.31, 'PO'),
(31, 'Rosenstech', 'Genevi', '27 r Auvergne', '75000', 'PARIS', 366.82, 'MH'),
(32, 'Pontavice', 'Ghislaine', '8 r Gaillon', '86000', 'POITIERS', 265.58, 'MV'),
(33, 'Leveneur-Mosquet', 'Guillaume', '47 av Robert Schuman', '64000', 'PAU', 184.97, 'PS'),
(34, 'Blanchais', 'Guy', '30 r Authie', '8000', 'SEDAN', 502.48, 'PH'),
(35, 'Leveneur', 'Hugues', '7 pl St Gilles', '62000', 'ARRAS', 7.39, 'PO'),
(36, 'Mosquet', 'Isabelle', '22 r Jules Verne', '76000', 'ROUEN', 77.1, 'MH'),
(37, 'Giraudon', 'Jean-Christophe', '1 r Albert de Mun', '38100', 'VIENNE', 92.62, 'MV'),
(38, 'Marie', 'Jean-Claude', '26 r H', '69000', 'LYON', 120.1, 'PS'),
(39, 'Maury', 'Jean-Fran', '5 r Pierre Girard', '71000', 'CHALON SUR SAONE', 13.73, 'PH'),
(40, 'Dennel', 'Jean-Louis', '7 pl St Gilles', '28000', 'CHARTRES', 550.69, 'PO'),
(41, 'Ain', 'Jean-Pierre', '4 r', '2000', 'LAON', 5.59, 'MH'),
(42, 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', '14000', 'CAEN', 396.58, 'MV'),
(43, 'Comoz', 'Jean-Pierre', '35 r Auguste Lechesne', '18000', 'BOURGES', 340.35, 'PS'),
(44, 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', '29000', 'BREST', 71.76, 'PH'),
(45, 'Phan', 'J', '9 r Clos Caillet', '79000', 'NIORT', 451.61, 'PO'),
(46, 'Riou', 'Line', '43 bd G', '77000', 'MARNE LA VALLEE', 193.25, 'MH'),
(47, 'Chubilleau', 'Louis', '46 r Eglise', '17000', 'SAINTES', 202.07, 'MV'),
(48, 'Lebrun', 'Lucette', '178 r Auge', '54000', 'NANCY', 410.41, 'PS'),
(49, 'Goessens', 'Marc', '6 av 6 Juin', '39000', 'DOLE', 548.57, 'PH'),
(50, 'Laforge', 'Marc', '5 r', '50000', 'SAINT LO', 265.05, 'PO'),
(51, 'Millereau', 'Marc', '36 av 6 Juin', '72000', 'LA FERTE BERNARD', 430.42, 'MH'),
(52, 'Dauverne', 'Marie-Christine', '69 av Charlemagne', '21000', 'DIJON', 281.05, 'MV'),
(53, 'Vittorio', 'Myriam', '3 pl Champlain', '94000', 'BOISSY SAINT LEGER', 356.23, 'PS'),
(54, 'Lapasset', 'Nhieu', '31 av 6 Juin', '52000', 'CHAUMONT', 107, 'PH'),
(55, 'Plantet-Besnier', 'Nicole', '10 av 1', '86000', 'CHATELLEREAULT', 369.94, 'PO'),
(56, 'Chubilleau', 'Pascal', '3 r Hastings', '15000', 'AURRILLAC', 290.75, 'MH'),
(57, 'Robert', 'Pascal', '31 r St Jean', '93000', 'BOBIGNY', 162.41, 'MV'),
(58, 'Jean', 'Pascale', '114 r Authie', '49100', 'SAUMUR', 375.52, 'PS'),
(59, 'Chanteloube', 'Patrice', '14 av Thi', '13000', 'MARSEILLE', 478.01, 'PH'),
(60, 'Lecuirot', 'Patrice', 'r', '54000', 'NANCY', 239.66, 'PO'),
(61, 'Gandon', 'Patrick', '47 av Robert Schuman', '37000', 'TOURS', 599.06, 'MH'),
(62, 'Mirouf', 'Patrick', '22 r Puits Picard', '74000', 'ANNECY', 458.42, 'MV'),
(63, 'Boireaux', 'Philippe', '14 av Thi', '10000', 'CHALON EN CHAMPAGNE', 454.48, 'PS'),
(64, 'Cendrier', 'Philippe', '7 pl St Gilles', '12000', 'RODEZ', 164.16, 'PH'),
(65, 'Duhamel', 'Philippe', '114 r Authie', '34000', 'MONTPELLIER', 98.62, 'PO'),
(66, 'Grigy', 'Philippe', '15 r M', '44000', 'CLISSON', 285.1, 'MH'),
(67, 'Linard', 'Philippe', '1 r Albert de Mun', '81000', 'ALBI', 486.3, 'MV'),
(68, 'Lozier', 'Philippe', '8 r Gaillon', '31000', 'TOULOUSE', 48.4, 'PS'),
(69, 'Dech', 'Pierre', '63 av Thi', '23000', 'MONTLUCON', 253.75, 'PH'),
(70, 'Goessens', 'Pierre', '22 r Jean Romain', '40000', 'MONT DE MARSAN', 426.19, 'PO'),
(71, 'Lem', 'Pierre', '39 av 6 Juin', '57000', 'METZ', 118.7, 'MH'),
(72, 'N', 'Pierre', '39 av 6 Juin', '82000', 'MONTAUBAN', 72.54, 'MV'),
(73, 'Guyot', 'Pierre-Laurent', '43 bd G', '48000', 'MENDE', 352.31, 'PS'),
(74, 'Chauchard', 'Roger', '9 r Vaucelles', '13000', 'MARSEILLE', 552.19, 'PH'),
(75, 'Mabire', 'Roland', '11 r Boutiques', '67000', 'STRASBOURG', 422.39, 'PO'),
(76, 'Leroy', 'Soazig', '45 r Boutiques', '61000', 'ALENCON', 570.67, 'MH'),
(77, 'Guyot', 'St', '26 r H', '46000', 'FIGEAC', 28.85, 'MV'),
(78, 'Delposen', 'Sylvain', '39 av 6 Juin', '27000', 'DREUX', 292.01, 'PS'),
(79, 'Rault', 'Sylvie', '15 bd Richemond', '2000', 'SOISSON', 526.6, 'PH'),
(80, 'Renouf', 'Sylvie', '98 bd Mar Lyautey', '88000', 'EPINAL', 425.24, 'PO'),
(81, 'Alliet-Grach', 'Thierry', '14 av Thi', '7000', 'PRIVAS', 451.31, 'MH'),
(82, 'Bayard', 'Thierry', '92 r Falaise', '42000', 'SAINT ETIENNE', 271.71, 'MV'),
(83, 'Gauchet', 'Thierry', '7 r Desmoueux', '38100', 'GRENOBLE', 406.1, 'PS'),
(84, 'Bobichon', 'Tristan', '219 r Caponi', '9000', 'FOIX', 218.36, 'PH'),
(85, 'Duchemin-Laniel', 'V', '130 r St Jean', '33000', 'LIBOURNE', 265.61, 'PO'),
(86, 'Laurent', 'Youn', '34 r Demolombe', '53000', 'MAYENNE', 496.1, 'MH');

-- --------------------------------------------------------

--
-- Structure de la table `prescrire`
--

CREATE TABLE IF NOT EXISTS `prescrire` (
  `MED_DEPOTLEGAL` varchar(10) NOT NULL,
  `TIN_CODE` varchar(5) NOT NULL,
  `DOS_CODE` varchar(10) NOT NULL,
  `PRE_POSOLOGIE` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`MED_DEPOTLEGAL`,`TIN_CODE`,`DOS_CODE`),
  KEY `fk_prescrire_medicament1_idx` (`MED_DEPOTLEGAL`),
  KEY `fk_prescrire_type_individu1_idx` (`TIN_CODE`),
  KEY `fk_prescrire_dosage1_idx` (`DOS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE IF NOT EXISTS `rapport_visite` (
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `RAP_NUM` int(11) NOT NULL,
  `PRA_NUM` smallint(6) DEFAULT NULL,
  `RAP_DATE` datetime DEFAULT NULL,
  `RAP_BILAN` varchar(255) DEFAULT NULL,
  `RAP_MOTIF` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`RAP_NUM`),
  KEY `fk_rapport_visite_praticien1_idx` (`PRA_NUM`),
  KEY `fk_rapport_visite_visiteur1_idx` (`VIS_MATRICULE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`VIS_MATRICULE`, `RAP_NUM`, `PRA_NUM`, `RAP_DATE`, `RAP_BILAN`, `RAP_MOTIF`) VALUES
('a131', 3, 23, '2002-04-18 00:00:00', 'M', 'Actualisation annuelle'),
('a131', 7, 41, '2003-03-23 00:00:00', 'RAS\r\nChangement de tel : 05 89 89 89 89', 'Rapport Annuel'),
('a17', 4, 4, '2003-05-21 00:00:00', 'Changement de direction, red', 'Baisse activit');

-- --------------------------------------------------------

--
-- Structure de la table `realiser`
--

CREATE TABLE IF NOT EXISTS `realiser` (
  `AC_NUM` int(11) NOT NULL,
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `REA_MTTFRAIS` float DEFAULT NULL,
  PRIMARY KEY (`AC_NUM`,`VIS_MATRICULE`),
  KEY `fk_realiser_visiteur1_idx` (`VIS_MATRICULE`),
  KEY `fk_realiser_activite_compl1_idx` (`AC_NUM`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `REG_CODE` varchar(2) NOT NULL,
  `SEC_CODE` varchar(1) DEFAULT NULL,
  `REG_NOM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`REG_CODE`),
  KEY `fk_region_secteur_idx` (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `region`
--

INSERT INTO `region` (`REG_CODE`, `SEC_CODE`, `REG_NOM`) VALUES
('AL', 'E', 'Alsace Lorraine'),
('AQ', 'S', 'Aquitaine'),
('AU', 'P', 'Auvergne'),
('BG', 'O', 'Bretagne'),
('BN', 'O', 'Basse Normandie'),
('BO', 'E', 'Bourgogne'),
('CA', 'N', 'Champagne Ardennes'),
('CE', 'P', 'Centre'),
('FC', 'E', 'Franche Comt'),
('HN', 'N', 'Haute Normandie'),
('IF', 'P', 'Ile de France'),
('LG', 'S', 'Languedoc'),
('LI', 'P', 'Limousin'),
('MP', 'S', 'Midi Pyr'),
('NP', 'N', 'Nord Pas de Calais'),
('PA', 'S', 'Provence Alpes Cote d''Azur'),
('PC', 'O', 'Poitou Charente'),
('PI', 'N', 'Picardie'),
('PL', 'O', 'Pays de Loire'),
('RA', 'E', 'Rhone Alpes'),
('RO', 'S', 'Roussilon'),
('VD', 'O', 'Vend');

-- --------------------------------------------------------

--
-- Structure de la table `secteur`
--

CREATE TABLE IF NOT EXISTS `secteur` (
  `SEC_CODE` varchar(1) NOT NULL,
  `SEC_LIBELLE` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`SEC_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `secteur`
--

INSERT INTO `secteur` (`SEC_CODE`, `SEC_LIBELLE`) VALUES
('E', 'Est'),
('N', 'Nord'),
('O', 'Ouest'),
('P', 'Paris centre'),
('S', 'Sud');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `SPE_CODE` varchar(5) NOT NULL,
  `SPE_LIBELLE` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`SPE_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`SPE_CODE`, `SPE_LIBELLE`) VALUES
('ACP', 'anatomie et cytologie pathologiques'),
('AMV', 'ang'),
('ARC', 'anesth'),
('BM', 'biologie m'),
('CAC', 'cardiologie et affections cardio-vasculaires'),
('CCT', 'chirurgie cardio-vasculaire et thoracique'),
('CG', 'chirurgie g'),
('CMF', 'chirurgie maxillo-faciale'),
('COM', 'canc'),
('COT', 'chirurgie orthop'),
('CPR', 'chirurgie plastique reconstructrice et esth'),
('CU', 'chirurgie urologique'),
('CV', 'chirurgie vasculaire'),
('DN', 'diab'),
('DV', 'dermatologie et v'),
('EM', 'endocrinologie et m'),
('ETD', ''),
('GEH', 'gastro-ent'),
('GMO', 'gyn'),
('GO', 'gyn'),
('HEM', 'maladies du sang (h'),
('MBS', 'm'),
('MDT', 'm'),
('MMO', 'm'),
('MN', 'm'),
('MPR', 'm'),
('MTR', 'm'),
('NEP', 'n'),
('NRC', 'neurochirurgie'),
('NRL', 'neurologie'),
('ODM', 'orthop'),
('OPH', 'ophtalmologie'),
('ORL', 'oto-rhino-laryngologie'),
('PEA', 'psychiatrie de l''enfant et de l''adolescent'),
('PME', 'p'),
('PNM', 'pneumologie'),
('PSC', 'psychiatrie'),
('RAD', 'radiologie (radiodiagnostic et imagerie m'),
('RDT', 'radioth'),
('RGM', 'reproduction et gyn'),
('RHU', 'rhumatologie'),
('STO', 'stomatologie'),
('SXL', 'sexologie'),
('TXA', 'toxicomanie et alcoologie');

-- --------------------------------------------------------

--
-- Structure de la table `travailler`
--

CREATE TABLE IF NOT EXISTS `travailler` (
  `VIS_MATRICULE` varchar(10) NOT NULL,
  `JJMMAA` datetime NOT NULL,
  `REG_CODE` varchar(2) NOT NULL,
  `TRA_ROLE` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`VIS_MATRICULE`,`JJMMAA`,`REG_CODE`),
  KEY `fk_travailler_visiteur1_idx` (`VIS_MATRICULE`),
  KEY `fk_travailler_region1_idx` (`REG_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `travailler`
--

INSERT INTO `travailler` (`VIS_MATRICULE`, `JJMMAA`, `REG_CODE`, `TRA_ROLE`) VALUES
('a131', '1992-12-11 00:00:00', 'BN', 'Visiteur'),
('a131', '1996-05-27 00:00:00', 'BG', 'Visiteur'),
('a17', '1991-08-26 00:00:00', 'RA', 'Visiteur'),
('a17', '1997-09-19 00:00:00', 'RA', 'D'),
('a55', '1987-07-17 00:00:00', 'MP', 'Visiteur'),
('a55', '1995-05-19 00:00:00', 'RO', 'Visiteur'),
('a55', '1999-08-21 00:00:00', 'RO', 'D'),
('a93', '1999-01-02 00:00:00', 'PC', 'Visiteur'),
('b13', '1996-03-11 00:00:00', 'AL', 'Visiteur'),
('b16', '1997-03-21 00:00:00', 'BG', 'Visiteur'),
('b19', '1999-01-31 00:00:00', 'PL', 'Visiteur'),
('b25', '1994-07-03 00:00:00', 'PL', 'Visiteur'),
('b25', '2000-01-01 00:00:00', 'PL', 'D'),
('b28', '2000-08-02 00:00:00', 'LG', 'Visiteur'),
('b34', '1993-12-06 00:00:00', 'CE', 'D'),
('b34', '1999-06-18 00:00:00', 'CE', 'Responsable'),
('b4', '1997-09-25 00:00:00', 'AQ', 'Visiteur'),
('b50', '1998-01-18 00:00:00', 'PA', 'Visiteur'),
('b59', '1995-10-21 00:00:00', 'RA', 'Visiteur'),
('c14', '1989-02-01 00:00:00', 'PA', 'Visiteur'),
('c14', '1997-02-01 00:00:00', 'PA', 'D'),
('c14', '2001-03-03 00:00:00', 'PA', 'Responsable'),
('c3', '1992-05-05 00:00:00', 'CA', 'Visiteur'),
('c54', '1991-04-09 00:00:00', 'AL', 'Visiteur'),
('d13', '1991-12-05 00:00:00', 'PL', 'Visiteur'),
('d51', '1997-11-18 00:00:00', 'FC', 'D'),
('d51', '2002-03-20 00:00:00', 'FC', 'Responsable'),
('e22', '1989-03-24 00:00:00', 'AL', 'Visiteur'),
('e24', '1993-05-17 00:00:00', 'AL', 'D'),
('e24', '2000-02-29 00:00:00', 'AL', 'Responsable'),
('e39', '1988-04-26 00:00:00', 'IF', 'Visiteur'),
('e49', '1996-02-19 00:00:00', 'MP', 'Visiteur'),
('e5', '1990-11-27 00:00:00', 'MP', 'Visiteur'),
('e5', '1995-11-27 00:00:00', 'MP', 'D'),
('e5', '2000-11-27 00:00:00', 'AQ', 'Responsable'),
('e52', '1991-10-31 00:00:00', 'HN', 'Visiteur'),
('f21', '1993-06-08 00:00:00', 'RA', 'Visiteur'),
('f39', '1997-02-15 00:00:00', 'RA', 'Visiteur'),
('f4', '1994-05-03 00:00:00', 'MP', 'Visiteur'),
('g19', '1996-01-18 00:00:00', 'IF', 'Visiteur'),
('g30', '1999-03-27 00:00:00', 'PI', 'D'),
('g30', '2000-10-31 00:00:00', 'PI', 'Responsable'),
('g53', '1985-10-02 00:00:00', 'BG', 'Visiteur'),
('g7', '1996-01-13 00:00:00', 'LI', 'Visiteur'),
('h13', '1993-05-08 00:00:00', 'LI', 'Visiteur'),
('h30', '1998-04-26 00:00:00', 'IF', 'Visiteur'),
('h35', '1993-08-26 00:00:00', 'AU', 'Visiteur'),
('h40', '1992-11-01 00:00:00', 'CA', 'Visiteur'),
('j45', '1998-02-25 00:00:00', 'CA', 'Responsable'),
('j50', '1992-12-16 00:00:00', 'NP', 'Visiteur'),
('j8', '1998-06-18 00:00:00', 'IF', 'Responsable'),
('k4', '1996-11-21 00:00:00', 'LG', 'Visiteur'),
('k53', '1983-03-23 00:00:00', 'CA', 'Visiteur'),
('k53', '1992-04-03 00:00:00', 'AL', 'D'),
('l14', '1995-02-02 00:00:00', 'PL', 'Visiteur'),
('l23', '1995-06-05 00:00:00', 'PC', 'Visiteur'),
('l46', '1997-01-24 00:00:00', 'PL', 'Visiteur'),
('l56', '1996-02-27 00:00:00', 'FC', 'Visiteur'),
('m35', '1987-10-06 00:00:00', 'MP', 'Visiteur'),
('m45', '1990-10-13 00:00:00', 'AL', 'Visiteur'),
('m45', '1999-04-08 00:00:00', 'AL', 'D'),
('n42', '1996-03-06 00:00:00', 'HN', 'Visiteur'),
('n58', '1992-08-30 00:00:00', 'CE', 'Visiteur'),
('n59', '1994-12-19 00:00:00', 'PI', 'Visiteur'),
('o26', '1995-01-05 00:00:00', 'LG', 'Visiteur'),
('p32', '1992-12-24 00:00:00', 'IF', 'Visiteur'),
('p40', '1992-12-14 00:00:00', 'BN', 'D'),
('p40', '1999-07-17 00:00:00', 'BN', 'Responsable'),
('p41', '1998-07-27 00:00:00', 'PC', 'Visiteur'),
('p42', '1994-12-12 00:00:00', 'PI', 'Visiteur'),
('p49', '1977-10-03 00:00:00', 'CE', 'Visiteur'),
('p6', '1997-03-30 00:00:00', 'AQ', 'Visiteur'),
('p7', '1990-03-01 00:00:00', 'RO', 'Visiteur'),
('p8', '1991-06-23 00:00:00', 'BO', 'Visiteur'),
('q17', '1997-09-06 00:00:00', 'BN', 'Visiteur'),
('r24', '1984-07-29 00:00:00', 'BN', 'Visiteur'),
('r24', '1998-05-25 00:00:00', 'BN', 'Responsable'),
('r58', '1990-06-30 00:00:00', 'BG', 'Visiteur'),
('s10', '1995-11-14 00:00:00', 'FC', 'Visiteur'),
('s21', '1992-09-25 00:00:00', 'LI', 'Visiteur'),
('t43', '1995-03-09 00:00:00', 'BO', 'Visiteur'),
('t47', '1997-08-29 00:00:00', 'PI', 'Visiteur'),
('t55', '1994-11-29 00:00:00', 'MP', 'Visiteur'),
('t60', '1991-03-29 00:00:00', 'CE', 'Visiteur');

-- --------------------------------------------------------

--
-- Structure de la table `type_individu`
--

CREATE TABLE IF NOT EXISTS `type_individu` (
  `TIN_CODE` varchar(5) NOT NULL,
  `TIN_LIBELLE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TIN_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE IF NOT EXISTS `type_praticien` (
  `TYP_CODE` varchar(3) NOT NULL,
  `TYP_LIBELLE` varchar(25) DEFAULT NULL,
  `TYP_LIEU` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`TYP_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_praticien`
--

INSERT INTO `type_praticien` (`TYP_CODE`, `TYP_LIBELLE`, `TYP_LIEU`) VALUES
('MH', 'M', 'Hopital ou clinique'),
('MV', 'M', 'Cabinet'),
('PH', 'Pharmacien Hospitalier', 'Hopital ou clinique'),
('PO', 'Pharmacien Officine', 'Pharmacie'),
('PS', 'Personnel de sant', 'Centre param');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
