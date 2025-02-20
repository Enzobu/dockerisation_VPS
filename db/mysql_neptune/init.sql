-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mer. 29 jan. 2025 à 08:06
-- Version du serveur : 8.0.40-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `projet_neptune`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `num` int NOT NULL,
  `nb_place` int NOT NULL,
  `prix/nuit` int NOT NULL,
  `expo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `etage` int NOT NULL,
  `dispo` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `chambre`
--

INSERT INTO `chambre` (`num`, `nb_place`, `prix/nuit`, `expo`, `etage`, `dispo`) VALUES
(2, 2, 89, 'N', 2, 1),
(4, 5, 260, 'S', 0, 1),
(5, 1, 26, 'E', 4, 1),
(6, 2, 180, 'W', 6, 1),
(7, 1, 80, 'S', 2, 1),
(8, 4, 190, 'E', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `resa`
--

CREATE TABLE `resa` (
  `id_resa` int NOT NULL,
  `id_user` int NOT NULL,
  `num_chambre` int NOT NULL,
  `prix` float NOT NULL,
  `d_debut` date NOT NULL,
  `d_fin` date NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

--
-- Déchargement des données de la table `resa`
--

INSERT INTO `resa` (`id_resa`, `id_user`, `num_chambre`, `prix`, `d_debut`, `d_fin`, `etat`) VALUES
(8, 13, 0, 150, '2022-12-10', '2022-12-20', -1),
(9, 12, 8, 150, '2022-12-05', '2022-12-09', 1),
(10, 14, 6, 150, '2022-12-01', '2022-12-03', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `civilite` text NOT NULL,
  `email` varchar(139) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `nom`, `prenom`, `civilite`, `email`, `password`, `isAdmin`) VALUES
(12, 'Palermo', 'Giovanni', 'F', 'dz@gmail.com', 'dzd', 0),
(13, 'Palermo', 'Enzo', 'M', 'palermo.enzo.ep@gmail.com', 'pass', 1),
(14, 'Palermo', 'Alexandra', 'F', 'rthgf@gmail.com', 'kty', 0),
(15, 'LENOM', 'Lenom', 'homme', 'lenom@lenom.lenom', 'lenom', 0),
(16, 'NECTOUX', 'Louis', 'homme', 'louis@louis.louis', 'password', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`num`);

--
-- Index pour la table `resa`
--
ALTER TABLE `resa`
  ADD PRIMARY KEY (`id_resa`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `num` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `resa`
--
ALTER TABLE `resa`
  MODIFY `id_resa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;