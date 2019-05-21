-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 21 mai 2019 à 19:01
-- Version du serveur :  10.1.40-MariaDB
-- Version de PHP :  7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `mybloger`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`, `user_id`) VALUES
(6, 'L’option ControlMaster', 'D’après le man ssh_config, elle permet d’activer le partage de multiples sessions à travers une seule connexion réseau. On ne le dit pas assez mais le man c’est brut de décoffrage, celui qui comprend à quoi cette option peut servir à partir de l’explication est un génie. Je vais faire la traduction en vous parlant de son usage et de son intérêt.\r\n\r\nLorsqu’on se connecte à un serveur en SSH, on passe par une phase d’authentification avant d’être connecté. C’est en général très rapide, j’ai fait quelques tests sur des serveurs au boulot, je tourne à 0.3s. Cela va dépendre de nombreux facteurs : la vitesse de votre connexion (fibre, ADSL…)', '2019-05-21 00:14:39', '2019-05-21 00:14:39', 1),
(7, 'Envoyer des vidéos et des photos sans perdre de la qualité', 'Vous avez un mobile dernier cri qui filme en 4K et qui prend des photos époustouflantes ?\r\n\r\nAvouons que c’est moche de constater que nos beaux clichés sont compressés quand on les partage via WhatsApp, Facebook Messenger ou encore iMessage à nos proches.\r\n\r\nAdieu la 4K des vidéos et les détails de nos photos. C’est quand même triste quand on s’est offert un mobile ou un réflexe dernier cri non ?\r\n\r\nPour corriger cela, je vous ai trouvé une solution gratuite, facile et sécurisée pour envoyer vos photos et vidéos sans compression. Cerise sur le gâteau, ce que nous allons voir marche aussi bien sur un mobile qu’un ordinateur de bureau.', '2019-05-21 00:16:53', '2019-05-21 00:16:53', 1),
(8, 'SwissTransfer, la solution la plus puissante pour partager des fichiers volumineux en toute sécurité', 'Il existe énormément d’alternatives à SwissTransfer (Smash, WeTransfer, etc.) pour envoyer de gros fichiers, mais aucune ne cumule autant d’avantages tout en restant 100% gratuite, sans inscription et sans publicité :\r\n\r\nVous pouvez envoyer jusqu’à 25 Go de données en 1x. C’est énorme !\r\nIl est possible de sécuriser en 1 clic vos envois par un mot de passe\r\nLe service permet de limiter la durée d’accessibilité et le nombre de téléchargements autorisés\r\nVos données sont stockées en Suisse par Infomaniak. L’entreprise précise explicitement dans ses conditions qu’elle s’engage à « ne faire aucune utilisation dérivée ou commerce des adresses email confiées à Infomaniak et de les utiliser dans le seul but de partager le lien de téléchargement conformément au souhait du Client ».\r\nAu-delà du partage de ses photos et de ses vidéos de vacances, SwissTransfer.com est donc également un outil intéressant lorsqu’il s’agit d’envoyer des fichiers sensibles ou confidentiels, d’autant plus que le service vous envoie automatiquement une confirmation par mail lorsque vos destinataires téléchargent vos fichiers.', '2019-05-21 00:17:31', '2019-05-21 00:17:31', 1),
(9, 'Facebook: désactiver la lecture automatique des vidéos', 'Facebook lit automatiquement les vidéos qui apparaissent sur votre fil d’actualité et ce, aussi bien sur la version bureau que mobile du service.\r\n\r\nLa lecture automatique des vidéos est négative pour plusieurs raisons:\r\n\r\nelle réduit l’autonomie et la durée de vie de la batterie de votre smartphone\r\nelle consomme des données sur votre forfait mobile\r\nelle vous distrait inutilement\r\nEn heureusement, la firme de Zuckerberg permet de revenir à la raison et dans cette formation, vous découvrirez comment désactiver la lecture automatique des vidéos sur Facebook.', '2019-05-21 00:19:07', '2019-05-21 00:19:07', 1),
(10, 'coooool', 'zertyuikjhgcvgjk', '2019-05-21 12:55:57', '2019-05-21 12:55:57', 1);

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `article_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `comment`, `created_at`, `updated_at`, `article_id`) VALUES
(3, 'nice', '2019-05-21 09:18:52', '2019-05-21 09:18:52', 6),
(4, 'cool', '2019-05-21 12:55:04', '2019-05-21 12:55:04', 6);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_05_19_183448_create_article', 2),
(4, '2019_05_19_183630_create_comments', 2),
(5, '2019_05_21_094548_add_extra_field_to_users_table', 3);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('mahmoud.laal@gmail.com', '$2y$10$yybDe9EHwEaNsRrYJTRl4eS/i0e8kyQ3thJkWaNfmhHnQF6r8N.cu', '2019-05-21 09:38:02');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isadmin` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `isadmin`) VALUES
(1, 'mahmoud', 'mahmoud.laal@gmail.com', NULL, '$2y$10$GEbn4cTCCYJQAwpp.nlfc.3T3/9ueyh3UNPjNFv7cs.ryE1XOStN6', 'E9RFPabk72Xy9QOpV80iKMd6Ie1EsviAdNnI3DY7mo8WTMU5l7SaAyOzwjqD', '2019-05-19 18:30:55', '2019-05-19 18:30:55', 1),
(3, 'mohamed', 'mohamed@gmail.com', NULL, '$2y$10$LiwwrOfVtf0pRzmBh/kd7.fp0MX6cUqEUrdH6rPTeIzzmizv48lbm', '8IPoxzc1VM9LRy9ujQPIe8JfxIxbveWKewaf7DsUPPL8CHqZTp3JZivWtPwK', '2019-05-20 23:42:51', '2019-05-20 23:42:51', 0),
(5, 'hiba', 'hiba@gmail.com', NULL, '$2y$10$2wYbmF/6OBCW3Q5ZHKw35.EIslHmH7dIZgb2VK5QMwRh3wiqxSJxW', NULL, '2019-05-21 12:34:46', '2019-05-21 12:34:46', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_article_id_foreign` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
