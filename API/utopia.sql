-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : lun. 22 jan. 2024 à 14:36
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `utopia`
--

-- --------------------------------------------------------

--
-- Structure de la table `director`
--

CREATE TABLE `director` (
  `ID` int(11) NOT NULL,
  `name` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `director`
--

INSERT INTO `director` (`ID`, `name`) VALUES
(1, 'Franc Drabont'),
(2, 'Francis Ford'),
(3, 'Christopher Nollan'),
(4, 'Sidney Lumet'),
(5, 'Steven Spilbergt'),
(6, 'Peter Jackson'),
(7, 'Sergio Leone'),
(8, 'Quentin Tarantino'),
(9, 'Robert Zemeckis'),
(10, 'Olivier Nakache'),
(11, 'Abdellatif Kechiche'),
(12, 'Jonathan Demme');

-- --------------------------------------------------------

--
-- Structure de la table `distribution_compagny`
--

CREATE TABLE `distribution_compagny` (
  `ID` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `distribution_compagny`
--

INSERT INTO `distribution_compagny` (`ID`, `name`) VALUES
(1, 'Paramount'),
(2, 'Columbia Pictures'),
(3, 'Warner Bros'),
(4, 'Orion Pictures'),
(5, 'Universal Pictures'),
(6, 'New Line Cinema'),
(7, 'Miramax Films'),
(8, 'United Artists'),
(9, 'Gaumont Film Company'),
(10, 'The Weinstein Company '),
(11, 'Wild Bunch');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

CREATE TABLE `genre` (
  `ID` int(11) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`ID`, `name`) VALUES
(1, 'Drame'),
(2, 'Crime'),
(3, 'Action'),
(4, 'Fantasy'),
(5, 'Western'),
(6, 'Comedy'),
(7, 'thriller'),
(8, 'War'),
(9, 'Romance');

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `ID` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`ID`, `name`) VALUES
(1, 'english'),
(2, 'sicilian'),
(3, 'germand'),
(4, 'yiddish'),
(5, 'italian'),
(6, 'spanish'),
(7, 'french');

-- --------------------------------------------------------

--
-- Structure de la table `movies`
--

CREATE TABLE `movies` (
  `ID` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `rating` float NOT NULL,
  `yearreleased` int(11) NOT NULL,
  `boxoffice` bigint(20) NOT NULL,
  `budget` bigint(20) NOT NULL,
  `duration` int(11) NOT NULL,
  `compagnyID` int(11) NOT NULL,
  `genreID` int(11) NOT NULL,
  `directorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movies`
--

INSERT INTO `movies` (`ID`, `title`, `rating`, `yearreleased`, `boxoffice`, `budget`, `duration`, `compagnyID`, `genreID`, `directorID`) VALUES
(1, 'The God Father', 9.2, 1973, 291000000, 7200000, 175, 1, 2, 2),
(2, 'The Dark Knight', 9, 2008, 291000000, 7234000, 152, 3, 3, 3),
(3, 'The Shawshank Redemption ', 9.2, 1994, 73300000, 25000000, 142, 2, 1, 1),
(4, 'The Godfather Part II', 9, 1974, 93000000, 13000000, 202, 1, 2, 2),
(5, '12 Angry Men', 9, 1957, 2000000, 340000, 96, 4, 1, 4),
(6, 'Schindler\'s List', 8.9, 1993, 322200000, 22000000, 195, 5, 1, 5),
(7, 'The Lord of the Rings: The Return of the King', 8.9, 2003, 1146000000, 94000000, 201, 6, 4, 6),
(8, 'Pulp Fiction', 8.8, 1994, 213900000, 8500000, 154, 7, 2, 8),
(14, 'The Lord of the Rings: The Fellowship of the Ring', 8.8, 2001, 898200000, 93000000, 178, 6, 4, 6),
(15, 'The Good, the Bad and the Ugly', 8.8, 1966, 38900000, 1200000, 161, 8, 1, 9),
(16, 'Forrest Gump', 8.7, 1994, 677400000, 55000000, 142, 5, 1, 9),
(17, 'Intouchables', 8.5, 2011, 426600000, 10800000112, 112, 9, 6, 10),
(18, 'The Silence of the Lambs', 8.6, 1991, 272700000, 19000000, 118, 4, 7, 12),
(19, 'Inglourious Bastards', 8.4, 2009, 321500000, 70000000, 153, 10, 8, 8),
(20, 'La Vie d\'Adèle', 7.7, 2013, 19000000, 4000000, 180, 11, 9, 11);

-- --------------------------------------------------------

--
-- Structure de la table `movie_language`
--

CREATE TABLE `movie_language` (
  `movieID` int(11) NOT NULL,
  `languageID` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `movie_language`
--

INSERT INTO `movie_language` (`movieID`, `languageID`) VALUES
(1, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `director`
--
ALTER TABLE `director`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `distribution_compagny`
--
ALTER TABLE `distribution_compagny`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `compagnyID` (`compagnyID`),
  ADD KEY `genreID` (`genreID`),
  ADD KEY `directorID` (`directorID`);

--
-- Index pour la table `movie_language`
--
ALTER TABLE `movie_language`
  ADD KEY `movieID` (`movieID`),
  ADD KEY `languageID` (`languageID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `director`
--
ALTER TABLE `director`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `distribution_compagny`
--
ALTER TABLE `distribution_compagny`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `genre`
--
ALTER TABLE `genre`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `movies`
--
ALTER TABLE `movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`compagnyID`) REFERENCES `distribution_compagny` (`ID`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genre` (`ID`),
  ADD CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`directorID`) REFERENCES `director` (`ID`);

--
-- Contraintes pour la table `movie_language`
--
ALTER TABLE `movie_language`
  ADD CONSTRAINT `movie_language_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `movies` (`ID`),
  ADD CONSTRAINT `movie_language_ibfk_2` FOREIGN KEY (`languageID`) REFERENCES `languages` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
