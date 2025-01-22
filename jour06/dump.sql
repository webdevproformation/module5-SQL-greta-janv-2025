-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
-- supprimer la table ville si elle existe

CREATE TABLE `ville` (
 `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `nom` VARCHAR(20) NOT NULL
) ;
-- créer la table 

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `nom`) VALUES
(1, 'PARIS'),
(2, 'Lyon'),
(3, 'Marseille'),
(4, 'Lille'),
(18, 'BORDEAUX');


-- supprimer la table client si elle existe
DROP TABLE IF EXISTS `client`;

-- créer la table client
CREATE TABLE `client` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `titre` VARCHAR(5) NOT NULL,
  `nom` VARCHAR(20) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `mdp` VARCHAR(255) NOT NULL,
  `status` tinyint NOT NULL,
  `dt_creation` datetime NOT NULL
);

-- SMALLINT 
-- TINYINT => chiffre petit 
--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `titre`, `nom`, `email`, `mdp`, `status`, `dt_creation`) VALUES
(1, 'Mme', 'Aurélie', 'alain@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-14 11:46:47'),
(2, 'Mme', 'Béatrice', 'beatrice@yahoo.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', 1, '2020-01-14 11:50:49'),
(3, 'Mme', 'Chantal', 'chantal@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 0, '2020-01-14 11:51:33'),
(4, 'M', 'Denis', '', '', 0, '2020-01-15 11:08:17'),
(5, 'Mme', 'Estelle', 'estelle@yahoo.fr', 'azerty', 1, '2020-01-15 11:14:17'),
(6, 'Mme', 'Francine', 'francine@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:22:03'),
(7, 'M', 'Gérard', 'gerard@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:26:31'),
(8, 'M', 'Henri', 'henri@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:26:31'),
(9, 'M', 'Ismael', 'ismael@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:26:31');

-- --------------------------------------------------------




-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

DROP TABLE IF EXISTS `salle`;
CREATE TABLE `salle` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `nom` VARCHAR(20) NOT NULL,
  `description` text NOT NULL,
  `url` VARCHAR(255) NOT NULL,
  `categorie` VARCHAR(255) NOT NULL DEFAULT 'reunion',
  `capacite` int(255) NOT NULL,
  `id_ville` int(10) NOT NULL,
  FOREIGN KEY(id_ville)  REFERENCES ville(id)
);

--
-- Déchargement des données de la table `salle`
--

INSERT INTO `salle` (`id`, `nom`, `description`, `url`, `categorie`, `capacite`, `id_ville`) VALUES
(1, 'Rouge', 'Rouge', 'https://via.placeholder.com/400x200?text=rouge', 'reunion', 30, 1),
(2, 'Vert', 'Vert', 'https://via.placeholder.com/400x200?text=vert', 'reunion', 10, 2),
(3, 'Bleu', 'Bleu', 'https://via.placeholder.com/400x200?text=Bleu', 'reunion', 30, 1),
(4, 'Gris', 'Gris', 'https://via.placeholder.com/400x200?text=gris', 'conference', 30, 1),
(5, 'Rose', 'Rose', 'https://via.placeholder.com/400x200?text=rose', 'dejeuner', 5, 2),
(6, 'Pourpre', 'Pourpre', 'https://via.placeholder.com/400x200?text=Pourpre', 'conference', 0, 4),
(7, 'Jaune', 'Jaune', 'https://via.placeholder.com/400x200?text=Jaune', 'reunion', 0, 4);



--
-- Structure de la table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
CREATE TABLE `reservation` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT,
  `id_salle` int(10) NOT NULL,
  `id_client` int(10) NOT NULL,
  `dt_arrivee` datetime NOT NULL,
  `dt_depart` datetime NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  FOREIGN KEY(id_salle)  REFERENCES salle(id),
  FOREIGN KEY(id_client)  REFERENCES client(id)

);

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `id_salle`, `id_client`, `dt_arrivee`, `dt_depart`, `prix`) VALUES
(1, 1, 1, '2020-01-14 09:00:00', '2020-01-14 12:02:00', '20.00'),
(2, 4, 1, '2020-01-15 09:00:00', '2020-01-18 08:00:00', '100.50'),
(3, 3, 3, '2020-01-14 14:00:00', '2020-01-14 17:00:00', '25.90'),
(7, 3, 7, '2020-01-19 00:00:00', '2020-01-19 03:00:00', '10.00'),
(8, 3, 7, '2020-01-19 00:00:00', '2020-01-19 03:00:00', '10.00'),
(9, 4, 4, '2020-01-20 00:00:00', '2020-01-21 00:00:00', '10.00');

