-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 06 Mai 2015 à 10:06
-- Version du serveur :  5.6.16
-- Version de PHP :  5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `aupireonsenfout`
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
  `commande_` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`commandeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
  `produitID` int(5) NOT NULL,
  `produit_nom` varchar(255) NOT NULL,
  `produit_qteEnStock` int(10) NOT NULL,
  `produit_qteCommandee` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `utilisateurID` int(6) NOT NULL AUTO_INCREMENT,
  `utilisateur_nom` varchar(50) NOT NULL,
  `utilisateur_prenom` varchar(50) NOT NULL,
  `utilisateur_mail` varchar(150) NOT NULL,
  `utilisateur_adresse` varchar(255) NOT NULL,
  `utilisateur_codePostal` int(5) NOT NULL,
  `utilisateur_numeroTelephone` varchar(15) NOT NULL,
  `utilisateur_role` enum('utilisateur_site','admin_site','employe','gestionnaire') NOT NULL,
  PRIMARY KEY (`utilisateurID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `vehicule`
--

CREATE TABLE IF NOT EXISTS `vehicule` (
  `produitID` int(5) NOT NULL,
  `taille` enum('Leger','Moyen','Lourd') NOT NULL,
  `produit_prixAssemblage` decimal(8,2) NOT NULL DEFAULT '0.00',
  `produit_prixPieces` decimal(10,2) NOT NULL,
  PRIMARY KEY (`produitID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
