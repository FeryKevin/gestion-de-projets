-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 03 déc. 2022 à 18:09
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gestion-de-projets`
--

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `contact`
--

INSERT INTO `contact` (`id`, `host_id`, `customer_id`, `email`, `phone_number`, `role`, `name`) VALUES
(1, NULL, 1, 'dyson@contact.fr', '0344853614', 'Client', 'John Codeur'),
(2, NULL, 1, 'ca@contact.fr', '0344812514', 'Client', 'Hugo Dupont'),
(3, NULL, 3, 'citroen@contact.fr', '0344813614', 'Client', 'John Doe'),
(4, NULL, 4, 'philips@contact.fr', '0344818414', 'Client', 'Josuke Higashikata'),
(5, NULL, 5, 'orpi@contact.fr', '0344812314', 'Client', 'Nabil Ferry'),
(6, NULL, 6, 'saint-gobain@contact.fr', '0344851354', 'Client', 'Loris Jolie'),
(7, NULL, 7, 'pmu@contact.fr', '0344100814', 'Client', 'Titouan Trotinnette'),
(8, NULL, 8, 'pocalin@contact.fr', '0344817314', 'Client', 'Pierre Aitrofort'),
(9, NULL, 9, 'cofidis@contact.fr', '0344853614', 'Client', 'Katy Ferry'),
(10, NULL, 10, 'ipsec@contact.fr', '0344853452', 'Client', 'Matthieu Ducil'),
(11, NULL, 11, 'eads@contact.f', '0344060606', 'Client', 'Edouard Elric'),
(12, NULL, 12, 'corporate@hotelbb.com', '0892788115', 'Client', 'Theodort Grasset'),
(13, NULL, 13, 'marketing@assystem.com', '0341252900', 'Client', 'Jesus de Nazareth'),
(14, 1, NULL, 'contact@ionos.fr', '0970808911', 'Hébergeur web', 'Christofer Palado'),
(15, 1, NULL, 'fr@hostinger.com', '0892977093', 'Hébergeur web', 'Alex Tiso'),
(16, 3, NULL, 'investors@godaddy.com', '0975187039', 'Gestion nom de domaine', 'Ismaelle Venouillie'),
(17, 4, NULL, 'support@gator.com', '0891150447', 'Hébergeur web', 'Julia Blaze'),
(18, 5, NULL, 'contact@com-network.fr', '03825745692', 'Gestion nom de domaine', 'Oscar Koichi'),
(19, 6, NULL, 'contacta2hosting.com', '1734-222-4678', 'Hébergeur web', 'Jean-Pierre Polnareff'),
(20, 7, NULL, 'contact@inmotion.com', '888-321-4678', 'Hébergeur web', 'Cassidy McCree'),
(21, 8, NULL, 'marketing@webhostingpad.com', '1847346180', 'Hébergeur web', 'Noémie Pirame'),
(22, 9, NULL, 'contact@007hebergement.com', '0177623003', 'Hébergeur web', 'Eric Dufour'),
(23, 10, NULL, 'support@planethoster.com', '0176604143', 'Hébergeur web', 'Jean lecompte'),
(24, 11, NULL, 'support@ovh.com', '0972101007', 'Hébergeur web', 'Jim Kim-Young'),
(25, 12, NULL, 'support@lws.com', '0177623003', 'Hébergeur web', 'Chloe Descure');

-- --------------------------------------------------------

--
-- Structure de la table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `customer`
--

INSERT INTO `customer` (`id`, `code`, `name`, `notes`) VALUES
(1, 'CUST_DYSON', 'DYSON', 'Ceci est un client'),
(2, 'CUST_CREDIT_AGRICOLE', 'CREDIT AGRICOLE', 'Ceci est un autre client'),
(3, 'CUST_CITROEN', 'CITROEN', 'Ceci est un troisième client'),
(4, 'CUST_PHILIPS', 'PHILIPS', 'Ceci est un quatrième client'),
(5, 'CUST_ORPI', 'ORPI', 'Ceci est un cinquième client'),
(6, 'CUST_SAINT_GOBAIN', 'SAINT-GOBAIN', 'Ceci est un sixième client'),
(7, 'CUST_PMU', 'PMU', 'Ceci est un septième client'),
(8, 'CUST_POCLAIN_HYDRAULICS', 'POCLAIN HYDRAULICS', 'Ceci est un huitième client'),
(9, 'CUST_COFIDIS', 'COFIDIS', 'Ceci est un neuvième client'),
(10, 'CUST_IPSEC', 'IPSEC', 'Ceci est un dixième client'),
(11, 'CUST_EADS', 'EADS', 'Ceci est un onzième client'),
(12, 'CUST_B&B_HOTELS', 'B&B HOTELS', 'Ceci est un douzième client'),
(13, 'CUST_ASSYSTEM', 'ASSYSTEM', 'Ceci est un autre client');

-- --------------------------------------------------------

--
-- Structure de la table `environment`
--

CREATE TABLE `environment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ssh_port` smallint(6) DEFAULT NULL,
  `ssh_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phpmyadmin_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip_restriction` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `environment`
--

INSERT INTO `environment` (`id`, `project_id`, `name`, `link`, `ip_address`, `ssh_port`, `ssh_username`, `phpmyadmin_link`, `ip_restriction`) VALUES
(1, 1, 'Production', 'https://adobe-xd.com//dyson-extranet', '172.00.00.01', 22, 'ssh-dyson', 'http://localhost/phpmyadmin/index.php?route=/database/structure&amp;db=poo_php', 0),
(2, 2, 'Production_2', 'https://adobe-xd.com//creditAgricole-extranet', '172.00.00.02', 22, 'ssh-creditAgricole', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(3, 3, 'Production_3', 'https://adobe-xd.com//citroen-extranet', '172.00.00.03', 22, 'ssh-citroen', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(4, 4, 'Production_4', 'https://adobe-xd.com//philips-extranet', '172.00.00.04', 22, 'ssh-philips', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(5, 5, 'Production_5', 'https://adobe-xd.com//orpi-extranet', '172.00.00.05', 22, 'ssh-orpi', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(6, 6, 'Production_6', 'https://adobe-xd.com//saintGobain-extranet', '172.00.00.06', 22, 'ssh-saintGobain', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(7, 7, 'Production_7', 'https://adobe-xd.com//pmu-extranet', '172.00.00.07', 23, 'ssh-pmu', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(8, 8, 'Production_8', 'https://adobe-xd.com//poclainHydraulics-extranet', '172.00.00.08', 22, 'ssh-poclainHudraulics', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(9, 9, 'Production_9', 'https://adobe-xd.com//cofidis-extranet', '172.00.00.09', 22, 'ssh-cofidis', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 1),
(10, 11, 'Production_10', 'https://adobe-xd.com//ipsec-extranet', '172.00.00.10', 22, 'ssh-ipsec', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 1),
(11, 11, 'Production_11', 'https://adobe-xd.com//eads-extranet', '172.00.00.11', 22, 'ssh-eads', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 0),
(12, 11, 'Production_12', 'https://adobe-xd.com//B&B_Hotels-extranet', '172.00.00.20', 21, 'ssh-B&B_Hotels', 'http://localhost/phpmyadmin/index.php?route=/database/structure&db=poo_php', 1);

-- --------------------------------------------------------

--
-- Structure de la table `host`
--

CREATE TABLE `host` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `host`
--

INSERT INTO `host` (`id`, `code`, `name`, `notes`) VALUES
(1, 'HOST_IONOS', 'IONOS', 'Ceci est un hébergeur'),
(2, 'HOST_HOSTINGER', 'HOSTINGER', 'Ceci est un autre hébergeur'),
(3, 'HOST_GODADDY', 'GODADDY', 'Ceci est un troisième hébergeur'),
(4, 'HOST_HOSTGATOR', 'HOSTGATOR', 'Ceci est un quatrième hébergeur'),
(5, 'HOST_NETWORK_SOLUTIONS', 'NETWORK_SOLUTIONS', 'Ceci est un cinquième hébergeur'),
(6, 'HOST_A2_HOSTING', 'A2_HOSTING', 'Ceci est un sixième hébergeur'),
(7, 'HOST_INMOTION', 'INMOTION', 'Ceci est un septième hébergeur'),
(8, 'HOST_WEBHOSTINGPAD', 'WEBHOSTINGPAD', 'Ceci est un huitième hébergeur'),
(9, 'HOST_007HEBERGEMENT', '007HEBERGEMENT', 'Ceci est un neuvième hébergeur'),
(10, 'HOST_PLANETHOSTER', 'PLANETHOSTER', 'Ceci est un dixième hébergeur'),
(11, 'HOST_OVH', 'OVH', 'Ceci est un onzième hébergeur'),
(12, 'HOST_LWS', 'LWS', 'Ceci est un douzième hébergeur');

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `available_at` datetime NOT NULL,
  `delivered_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `host_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastpass_folder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_mock_ups` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `managed_server` tinyint(1) NOT NULL,
  `notes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `project`
--

INSERT INTO `project` (`id`, `host_id`, `customer_id`, `name`, `code`, `lastpass_folder`, `link_mock_ups`, `managed_server`, `notes`) VALUES
(1, 1, 1, 'Dyson', 'PROJECT_DYSON', 'Clients/Dyson/Extranet', 'https://adobe-xd.com//dyson-extranet', 0, 'Site web pour la sociÃ©tÃ© Dyson'),
(2, 1, 2, 'Crédit agricole', 'PROJECT_CREDIT_AGRICOLE', 'Clients/creditAgricole/Extranet', 'https://adobe-xd.com//creditAgricole-extranet', 1, 'Site web pour la société Crédit Agricole'),
(3, 1, 3, 'Citroen', 'PROJECT_CITROEN', 'Clients/Citroen/Extranet', 'https://adobe-xd.com//Citroen-extranet', 0, 'Site web pour la société Citroen'),
(4, 4, 4, 'Philips', 'PROJECT_PHILIPS', 'Clients/Philips/Extranet', 'https://adobe-xd.com//Philips-extranet', 0, 'Site web pour la société Philips'),
(5, 5, 4, 'Orpi', 'PROJECT_ORPI', 'Clients/Orpi/Extranet', 'https://adobe-xd.com//Orpi-extranet', 1, 'Site web pour la société Orpi'),
(6, 6, 4, 'Saint-Gobain', 'PROJECT_SAINT_GOBAIN', 'Clients/Saint-Gobain/Extranet', 'https://adobe-xd.com//Saint-Gobain-extranet', 0, 'Site web pour la société Saint-Gobain'),
(7, 7, 7, 'PMU', 'PROJECT_PMU', 'Clients/PMU/Extranet', 'https://adobe-xd.com//PMU-extranet', 1, 'Site web pour la société PMU'),
(8, 8, 8, 'Poclain Hydraulics', 'PROJECT_POCLAIN_HYDRAULICS', 'Clients/poclainHydraulics/Extranet', 'https://adobe-xd.com//poclainHydraulics-extranet', 1, 'Site web pour la société Poclain Hydraulics'),
(9, 9, 9, 'Cofidis', 'PROJECT_COFIDIS', 'Clients/Cofidis/Extranet', 'https://adobe-xd.com//Cofidis-extranet', 0, 'Site web pour la société Cofidis'),
(10, 10, 10, 'Ipsec', 'PROJECT_IPSEC', 'Clients/Ipsec/Extranet', 'https://adobe-xd.com//Ipsec-extranet', 1, 'Site web pour la société Ipsec'),
(11, 11, 11, 'Eads', 'PROJECT_EADS', 'Clients/Eads/Extranet', 'https://adobe-xd.com//Eads-extranet', 1, 'Site web pour la société Eads'),
(12, 12, 1, 'B&amp;B Hotels', 'PROJECT_B_AMP_B_HOTELS', 'Clients/B&amp;B_Hotels/Extranet', 'https://adobe-xd.com//B&amp;B_Hotels-extranet', 1, 'Site web pour la sociï¿½tï¿½ B&amp;B_Hotels');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4C62E6381FB8D185` (`host_id`),
  ADD KEY `IDX_4C62E6389395C3F3` (`customer_id`);

--
-- Index pour la table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `environment`
--
ALTER TABLE `environment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4626DE22166D1F9C` (`project_id`);

--
-- Index pour la table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2FB3D0EE1FB8D185` (`host_id`),
  ADD KEY `IDX_2FB3D0EE9395C3F3` (`customer_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT pour la table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `environment`
--
ALTER TABLE `environment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `host`
--
ALTER TABLE `host`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `FK_4C62E6381FB8D185` FOREIGN KEY (`host_id`) REFERENCES `host` (`id`),
  ADD CONSTRAINT `FK_4C62E6389395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Contraintes pour la table `environment`
--
ALTER TABLE `environment`
  ADD CONSTRAINT `FK_4626DE22166D1F9C` FOREIGN KEY (`project_id`) REFERENCES `project` (`id`);

--
-- Contraintes pour la table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_2FB3D0EE1FB8D185` FOREIGN KEY (`host_id`) REFERENCES `host` (`id`),
  ADD CONSTRAINT `FK_2FB3D0EE9395C3F3` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
