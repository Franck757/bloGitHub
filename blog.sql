-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 25 Janvier 2019 à 15:48
-- Version du serveur :  5.7.25-0ubuntu0.16.04.2
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `billet`
--

CREATE TABLE `billet` (
  `id` bigint(11) NOT NULL,
  `titre` varchar(64) NOT NULL,
  `corps_de_texte` text NOT NULL,
  `image` varchar(128) NOT NULL DEFAULT '0',
  `video` varchar(128) NOT NULL DEFAULT '0',
  `date_publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_de_creation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` smallint(6) DEFAULT NULL,
  `auteur` bigint(11) DEFAULT NULL,
  `categorie` bigint(11) DEFAULT NULL,
  `favori` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `billet`
--

INSERT INTO `billet` (`id`, `titre`, `corps_de_texte`, `image`, `video`, `date_publication`, `date_de_creation`, `likes`, `auteur`, `categorie`, `favori`) VALUES
(4, 'TitreUn', '"Il n’y a personne qui n’aime la souffrance pour elle-même, qui ne la recherche et qui ne la veuille pour elle-même…"\r\nQu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre', '0', '0', '2019-01-08 11:50:31', '2019-01-08 11:50:31', 5, 3, NULL, NULL),
(5, 'titreDeux', '"Il n’y a personne qui n’aime la souffrance pour elle-même, qui ne la recherche et qui ne la veuille pour elle-même…"\r\nQu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre', '0', '0', '2019-01-08 11:50:44', '2019-01-08 11:50:44', NULL, 4, NULL, NULL),
(6, 'titreTrois', '"Il n’y a personne qui n’aime la souffrance pour elle-même, qui ne la recherche et qui ne la veuille pour elle-même…"\r\nQu\'est-ce que le Lorem Ipsum?\r\nLe Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l\'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre', '0', '0', '2019-01-08 11:51:40', '2019-01-08 11:51:40', 8, 5, NULL, NULL),
(7, 'test', 'blablablaDuTexte', '0', '0', '2019-01-08 17:25:34', '2019-01-08 17:25:34', NULL, NULL, NULL, NULL),
(8, 'fgsdgsd', 'sdfgsdfgdfg', '0', '0', '2019-01-09 14:47:43', '2019-01-09 14:47:43', NULL, NULL, NULL, NULL),
(9, 'fgsdgsd', 'sdfgsdfgdfg', '0', '0', '2019-01-09 14:48:21', '2019-01-09 14:48:21', NULL, NULL, NULL, NULL),
(10, 'fgsdgsd', 'sdfgsdfgdfg', '0', '0', '2019-01-09 14:50:14', '2019-01-09 14:50:14', NULL, NULL, NULL, NULL),
(11, 'fgsdgsd', 'sdfgsdfgdfg', '0', '0', '2019-01-09 14:50:56', '2019-01-09 14:50:56', NULL, NULL, NULL, NULL),
(12, 'fgsdgsd', 'sdfgsdfgdfg', '0', '0', '2019-01-09 14:51:13', '2019-01-09 14:51:13', NULL, NULL, NULL, NULL),
(13, 'ghjgghjfj', 'vbncvncvvn', '0', '0', '2019-01-09 14:51:50', '2019-01-09 14:51:50', NULL, NULL, NULL, NULL),
(14, 'cvbxcvbxcv', 'bxcvbxcvbxcvb', '0', '0', '2019-01-09 14:52:11', '2019-01-09 14:52:11', NULL, NULL, NULL, NULL),
(15, 'cvbxcvbcv', 'rtyrtyeryt', '0', '0', '2019-01-09 14:53:33', '2019-01-09 14:53:33', NULL, NULL, NULL, NULL),
(16, 'Hello worl', 'Partager et lier des donnÃ©es entres associations en utilisant le web semantique\r\njeu. 24 janv. 2019 Ã  19:00: Programme (non dÃ©finitif)- Comment rÃ©aliser des projets lÃ©gers, Ã©conomiques et durables avec les technologies du web sÃ©mantique dans le monde associatif (prÃ©sentateurs : Je', '0', '0', '2019-01-09 14:57:11', '2019-01-09 14:57:11', NULL, NULL, NULL, NULL),
(17, 'Hello worl', 'Partager et lier des données entres associations en utilisant le web semantique\r\njeu. 24 janv. 2019 à 19:00: Programme (non définitif)- Comment réaliser des projets légers, économiques et durables avec les technologies du web sémantique dans le monde associatif (présentateurs : Je', '0', '0', '2019-01-09 15:27:41', '2019-01-09 15:27:41', NULL, NULL, NULL, NULL),
(18, 'truic', 'blablablablabla', '0', '0', '2019-01-09 16:21:42', '2019-01-09 16:21:42', NULL, NULL, NULL, NULL),
(19, 'fsd', 'fdqsqsdfqsd', '0', '0', '2019-01-09 17:20:37', '2019-01-09 17:20:37', NULL, NULL, NULL, NULL),
(20, 'fqsd', 'rtazetzertzer', 'peinture-a-la-paille4.jpg', '0', '2019-01-09 17:32:59', '2019-01-09 17:32:59', NULL, NULL, NULL, NULL),
(21, 'fdsq', 'fdsfqsdf', 'peinture-a-la-paille4.jpg', '0', '2019-01-10 10:18:05', '2019-01-10 10:18:05', NULL, NULL, NULL, NULL),
(22, 'titre', 'articlesfdgfgsdf', 'peinture-a-la-paille4.jpg', '0', '2019-01-10 10:21:16', '2019-01-10 10:21:16', NULL, NULL, NULL, NULL),
(23, 'azer', 'raezrazereazrazerazeraz', 'header_article_tmpphppeDvQl.jpg', '0', '2019-01-10 10:43:18', '2019-01-10 10:43:18', NULL, NULL, NULL, NULL),
(24, 'azer', 'raezrazereazrazerazeraz', 'header_article_tmpphppeDvQl.jpg', '0', '2019-01-10 10:43:47', '2019-01-10 10:43:47', NULL, NULL, NULL, NULL),
(25, 'Hello worl', 'voici un nouvel article', '', '0', '2019-01-10 15:36:52', '2019-01-10 15:36:52', NULL, NULL, NULL, NULL),
(26, 'azer', 'dgsdfgdsf', 'peinture-a-la-paille4.jpg', '0', '2019-01-10 17:33:39', '2019-01-10 17:33:39', NULL, 8, NULL, NULL),
(27, 'blabla', '', '', '0', '2019-01-11 10:46:11', '2019-01-11 10:46:11', NULL, NULL, NULL, NULL),
(28, 'bonjour', 'voici un nouveau billet de test, dans le but d\'afficher une liste d\'article', '1178325838_small.jpg', '0', '2019-01-11 11:35:46', '2019-01-11 11:35:46', NULL, NULL, NULL, NULL),
(29, 'azer', 'Évidemment, plus vous jouerez bien, plus le public appréciera. Votre originalité et votre performance artistique seront vos meilleurs atouts. Pour autant, tout comme moi, vous n’éviterez sûrement pas les fausses notes : souriez, et poursuivez ! Dialoguez avec votre public, suscitez la curiosité, et provoquez les interactions. Une petite blague glissée au bon moment, un clin d’œil à un enfant qui vous regarde, un merci quand on vous glisse une pièce : ne jouez pas pour vous, mais bien pour les passants.', '1178325838_small.jpg', '0', '2019-01-14 13:05:14', '2019-01-14 13:05:14', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` int(11) NOT NULL,
  `date` date NOT NULL,
  `parent` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

CREATE TABLE `commentaires` (
  `id` bigint(11) NOT NULL,
  `auteur` bigint(11) NOT NULL,
  `date_de_publication` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `texte` text NOT NULL,
  `image` varchar(64) NOT NULL,
  `valider_un_commentaire` tinyint(1) NOT NULL,
  `reponse_commentaire` bigint(11) NOT NULL,
  `likes` tinyint(1) NOT NULL,
  `billet` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `titre` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(11) NOT NULL,
  `nom_des_tags` varchar(64) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `tag_billet`
--

CREATE TABLE `tag_billet` (
  `idBillet` bigint(11) NOT NULL,
  `idTag` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` bigint(11) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `prenom` varchar(64) NOT NULL,
  `mot_de_passe` varchar(64) NOT NULL,
  `pseudo` varchar(128) NOT NULL,
  `mail` varchar(96) NOT NULL DEFAULT '0',
  `avatar` varchar(64) DEFAULT NULL,
  `role` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `mot_de_passe`, `pseudo`, `mail`, `avatar`, `role`) VALUES
(3, 'Jean', 'Francois', '123456789', 'Alex', 'ezra@gmail.com', NULL, NULL),
(4, 'Claire', 'sophie', '321564987', 'Samantha', 'gqsdfqsdfsdf@gmail.com', NULL, NULL),
(5, 'Luc', 'Romuald', '789456123', 'Gregory', 'qfqsdfdsfqsd@gmail.com', NULL, NULL),
(6, 'Eric', 'axel', 'dqsdq', 'batman', 'croissant@gmail.com', NULL, NULL),
(8, 'Handy', 'Emile', '147852369', 'superman', 'brioche@gmail.com', NULL, NULL),
(9, 'Roxanne', 'Valerie', '147852369', 'Aquaman', 'sapin@gmail.fr', NULL, NULL),
(10, 'Olga', 'Sophie', '78945613', 'Spiderman', 'parapluie@gmail.com', NULL, NULL),
(11, 'roger', 'Marc', '78945613', 'Ironman', 'caillou@gmail.com', NULL, NULL),
(12, 'Alex', 'Francis', '78945613', 'Petra', 'boite@gmail.com', NULL, NULL),
(13, 'Vivien', 'Maxime', '78945613', 'Wonderwoman', 'sakado@gmail.com', NULL, NULL),
(14, 'qsdffqsdf', 'erazraz', 'azerazera', 'eazrazer', 'azerz1@mail.fr', NULL, NULL),
(15, 'marie', 'pierre', '123456', 'world', 'chaussette@gmail.com', NULL, NULL),
(17, 'sandwich', 'luc', '123456', 'ecran', 'simple@gmail.com', NULL, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `billet`
--
ALTER TABLE `billet`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteur` (`auteur`),
  ADD KEY `categorie` (`categorie`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent` (`parent`);

--
-- Index pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteur` (`auteur`),
  ADD KEY `reponse_commentaire` (`reponse_commentaire`),
  ADD KEY `billet` (`billet`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag_billet`
--
ALTER TABLE `tag_billet`
  ADD KEY `idBillet` (`idBillet`),
  ADD KEY `idTag` (`idTag`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `billet`
--
ALTER TABLE `billet`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `commentaires`
--
ALTER TABLE `commentaires`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `billet`
--
ALTER TABLE `billet`
  ADD CONSTRAINT `billet_ibfk_1` FOREIGN KEY (`auteur`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `billet_ibfk_2` FOREIGN KEY (`categorie`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `categories` (`id`);

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`auteur`) REFERENCES `utilisateurs` (`id`),
  ADD CONSTRAINT `commentaires_ibfk_2` FOREIGN KEY (`reponse_commentaire`) REFERENCES `commentaires` (`id`),
  ADD CONSTRAINT `commentaires_ibfk_3` FOREIGN KEY (`billet`) REFERENCES `billet` (`id`);

--
-- Contraintes pour la table `tag_billet`
--
ALTER TABLE `tag_billet`
  ADD CONSTRAINT `tag_billet_ibfk_1` FOREIGN KEY (`idBillet`) REFERENCES `billet` (`id`),
  ADD CONSTRAINT `tag_billet_ibfk_2` FOREIGN KEY (`idTag`) REFERENCES `tag` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
