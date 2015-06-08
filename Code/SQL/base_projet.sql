-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 08 Juin 2015 à 09:42
-- Version du serveur :  5.6.16
-- Version de PHP :  5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `base_projet`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `commandeID` int(10) NOT NULL AUTO_INCREMENT,
  `commande_dateCommande` date NOT NULL,
  `commande_dateEnvoi` date NOT NULL,
  `commande_prix` decimal(15,2) NOT NULL,
  `commande_stockOK` tinyint(1) NOT NULL,
  PRIMARY KEY (`commandeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `compo_vehicule`
--

CREATE TABLE IF NOT EXISTS `compo_vehicule` (
  `VehiculeID` int(10) NOT NULL,
  `PieceID` int(10) NOT NULL,
  PRIMARY KEY (`VehiculeID`,`PieceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `lignecommande`
--

CREATE TABLE IF NOT EXISTS `lignecommande` (
  `ligneCmdeID` int(11) NOT NULL AUTO_INCREMENT,
  `ligneCmde_prixLigne` int(11) NOT NULL,
  `stockOK` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ligneCmdeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `piece`
--

CREATE TABLE IF NOT EXISTS `piece` (
  `ProduitID` int(5) NOT NULL AUTO_INCREMENT,
  `piece_prix` decimal(7,2) NOT NULL,
  `piece_categorie` enum('Carrosserie','Moteur','Chenille','Radio','Canon','Mitraillette') NOT NULL,
  PRIMARY KEY (`ProduitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `produitID` int(10) NOT NULL AUTO_INCREMENT,
  `produit_nom` varchar(150) NOT NULL,
  PRIMARY KEY (`produitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `utilisateurID` int(10) NOT NULL AUTO_INCREMENT,
  `utilisateur_nom` varchar(150) NOT NULL,
  `utilisateur_prenom` varchar(150) NOT NULL,
  `utilisateur_mail` varchar(200) NOT NULL,
  `utilisateur_adresse` varchar(255) NOT NULL,
  `utilisateur_codePostal` varchar(5) NOT NULL,
  `utilisateur_numeroTelephone` varchar(10) NOT NULL,
  `utilisateur_role` enum('''utilisateur_site'',''admin_site'',''employe'',''gestionnaire''') NOT NULL,
  PRIMARY KEY (`utilisateurID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `produitID` int(10) NOT NULL AUTO_INCREMENT,
  `prix_base` decimal(10,2) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `stock` int(10) NOT NULL,
  `en_commande` int(10) NOT NULL,
  PRIMARY KEY (`produitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
