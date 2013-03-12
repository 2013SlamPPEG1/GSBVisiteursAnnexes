-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Serveur: localhost
-- Généré le : Lun 25 Février 2013 à 12:56
-- Version du serveur: 5.1.36
-- Version de PHP: 5.3.0

--
-- Base de données: `gsb_visiteurs`
--

-- --------------------------------------------------------

--
-- Structure de la table `activite_compl`
--
USE gsb_visiteurs;

CREATE TABLE IF NOT EXISTS activite_compl 
(
  `AC_NUM` int(11) NOT NULL,
  `AC_DATE` datetime DEFAULT NULL,
  `AC_LIEU` varchar(25) DEFAULT NULL,
  `AC_THEME` varchar(10) DEFAULT NULL,
  `AC_MOTIF` varchar(50) DEFAULT NULL
) engine=INNODB;

--
-- Contenu de la table `activite_compl`
--


-- --------------------------------------------------------

--
-- Structure de la table `dosage`
--

CREATE TABLE IF NOT EXISTS dosage (
  `DOS_CODE` varchar(10) NOT NULL,
  `DOS_QUANTITE` varchar(10) DEFAULT NULL,
  `DOS_UNITE` varchar(10) DEFAULT NULL
  ) engine=INNODB;

--
-- Contenu de la table `dosage`
--


-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE IF NOT EXISTS `famille` (
  `FAM_CODE` varchar(3) NOT NULL,
  `FAM_LIBELLE` varchar(80) DEFAULT NULL
  ) engine=INNODB;

--
-- Contenu de la table `famille`
--

-- --------------------------------------------------------

--
-- Structure de la table `inviter`
--

CREATE TABLE IF NOT EXISTS `inviter` (
  `AC_NUM` int(11) NOT NULL,
  `PRA_NUM` smallint(6) NOT NULL,
  `SPECIALISTEON` bit(1) DEFAULT NULL
  ) engine=INNODB;

--
-- Contenu de la table `inviter`
--


-- --------------------------------------------------------

--
-- Structure de la table `labo`
--

CREATE TABLE IF NOT EXISTS `labo` (
  `LAB_CODE` varchar(2) DEFAULT NULL,
  `LAB_NOM` varchar(10) DEFAULT NULL,
  `LAB_CHEFVENTE` varchar(20) DEFAULT NULL
) engine=INNODB;

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
  `MED_DEPOTLEGAL` varchar(10) DEFAULT NULL,
  `MED_NOMCOMMERCIAL` varchar(25) DEFAULT NULL,
  `FAM_CODE` varchar(3) DEFAULT NULL,
  `MED_COMPOSITION` varchar(255) DEFAULT NULL,
  `MED_EFFETS` varchar(255) DEFAULT NULL,
  `MED_CONTREINDIC` varchar(255) DEFAULT NULL,
  `MED_PRIXECHANTILLON` float DEFAULT NULL
) engine=INNODB;


--
-- Structure de la table `offrir`
--

CREATE TABLE IF NOT EXISTS `offrir` (
  `VIS_MATRICULE` varchar(10) DEFAULT NULL,
  `RAP_NUM` int(11) DEFAULT NULL,
  `MED_DEPOTLEGAL` varchar(10) DEFAULT NULL,
  `OFF_QTE` smallint(6) DEFAULT NULL
) engine=INNODB;


-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE IF NOT EXISTS `posseder` (
  `PRA_NUM` smallint(6) DEFAULT NULL,
  `SPE_CODE` varchar(5) DEFAULT NULL,
  `POS_DIPLOME` varchar(10) DEFAULT NULL,
  `POS_COEFPRESCRIPTION` float DEFAULT NULL
) engine=INNODB;

--
-- Contenu de la table `posseder`
--


-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE IF NOT EXISTS `praticien` (
  `PRA_NUM` smallint(6) ,
  `PRA_NOM` varchar(25) DEFAULT NULL,
  `PRA_PRENOM` varchar(30) DEFAULT NULL,
  `PRA_ADRESSE` varchar(50) DEFAULT NULL,
  `PRA_CP` varchar(5) DEFAULT NULL,
  `PRA_VILLE` varchar(25) DEFAULT NULL,
  `PRA_COEFNOTORIETE` float DEFAULT NULL,
  `TYP_CODE` varchar(3) DEFAULT NULL
) engine=INNODB;


-- --------------------------------------------------------

--
-- Structure de la table `prescrire`
--

CREATE TABLE IF NOT EXISTS `prescrire` (
  `MED_DEPOTLEGAL` varchar(10) DEFAULT NULL,
  `TIN_CODE` varchar(5) DEFAULT NULL,
  `DOS_CODE` varchar(10) DEFAULT NULL,
  `PRE_POSOLOGIE` varchar(40) DEFAULT NULL
) engine=INNODB;

--
-- Contenu de la table `prescrire`
--

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE IF NOT EXISTS `rapport_visite` (
  `VIS_MATRICULE` varchar(10) DEFAULT NULL,
  `RAP_NUM` int(11) DEFAULT NULL,
  `PRA_NUM` smallint(6) DEFAULT NULL,
  `RAP_DATE` datetime DEFAULT NULL,
  `RAP_BILAN` varchar(255) DEFAULT NULL,
  `RAP_MOTIF` varchar(255) DEFAULT NULL
) engine=INNODB;



--
-- Structure de la table `realiser`
--

CREATE TABLE IF NOT EXISTS `realiser` (
  `AC_NUM` int(11) DEFAULT NULL,
  `VIS_MATRICULE` varchar(10) DEFAULT NULL,
  `REA_MTTFRAIS` float DEFAULT NULL
) engine=INNODB;

--
-- Contenu de la table `realiser`
--


-- --------------------------------------------------------

--
-- Structure de la table `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `REG_CODE` varchar(2) DEFAULT NULL,
  `SEC_CODE` varchar(1) DEFAULT NULL,
  `REG_NOM` varchar(50) DEFAULT NULL
) engine=INNODB;



--
-- Structure de la table `secteur`
--

CREATE TABLE IF NOT EXISTS `secteur` (
  `SEC_CODE` varchar(1) DEFAULT NULL,
  `SEC_LIBELLE` varchar(15) DEFAULT NULL
) engine=INNODB;



-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `SPE_CODE` varchar(5) DEFAULT NULL,
  `SPE_LIBELLE` varchar(150) DEFAULT NULL
) engine=INNODB;


--
-- Structure de la table `travailler`
--

CREATE TABLE IF NOT EXISTS `travailler` (
  `VIS_MATRICULE` varchar(10) DEFAULT NULL,
  `JJMMAA` datetime DEFAULT NULL,
  `REG_CODE` varchar(2) DEFAULT NULL,
  `TRA_ROLE` varchar(11) DEFAULT NULL
) engine=INNODB;


-- --------------------------------------------------------

--
-- Structure de la table `type_individu`
--

CREATE TABLE IF NOT EXISTS `type_individu` (
  `TIN_CODE` varchar(5) DEFAULT NULL,
  `TIN_LIBELLE` varchar(50) DEFAULT NULL
) engine=INNODB;

--
-- Contenu de la table `type_individu`
--


-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE IF NOT EXISTS `type_praticien` (
  `TYP_CODE` varchar(3) DEFAULT NULL,
  `TYP_LIBELLE` varchar(25) DEFAULT NULL,
  `TYP_LIEU` varchar(35) DEFAULT NULL
) engine=INNODB;



-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE IF NOT EXISTS `visiteur` (
  `VIS_MATRICULE` varchar(10) DEFAULT NULL,
  `VIS_NOM` varchar(25) DEFAULT NULL,
  `Vis_PRENOM` varchar(50) DEFAULT NULL,
  login varchar(20) DEFAULT NULL,
  mdp varchar(20) DEFAULT NULL,
  `VIS_ADRESSE` varchar(50) DEFAULT NULL,
  `VIS_CP` varchar(5) DEFAULT NULL,
  `VIS_VILLE` varchar(30) DEFAULT NULL,
  `VIS_DATEEMBAUCHE` datetime DEFAULT NULL,
  `SEC_CODE` varchar(1) DEFAULT NULL,
  `LAB_CODE` varchar(2) DEFAULT NULL
) engine=INNODB;

