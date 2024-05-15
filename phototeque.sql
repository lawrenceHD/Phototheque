-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 21 fév. 2024 à 18:55
-- Version du serveur : 8.0.31
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `phototeque`
--

-- --------------------------------------------------------

--
-- Structure de la table `omeka_collections`
--

DROP TABLE IF EXISTS `omeka_collections`;
CREATE TABLE IF NOT EXISTS `omeka_collections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `public` tinyint NOT NULL,
  `featured` tinyint NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `public` (`public`),
  KEY `featured` (`featured`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `omeka_elements`
--

DROP TABLE IF EXISTS `omeka_elements`;
CREATE TABLE IF NOT EXISTS `omeka_elements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `element_set_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `comment` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_element_set_id` (`element_set_id`,`name`),
  UNIQUE KEY `order_element_set_id` (`element_set_id`,`order`),
  KEY `element_set_id` (`element_set_id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_elements`
--

INSERT INTO `omeka_elements` (`id`, `element_set_id`, `order`, `name`, `description`, `comment`) VALUES
(1, 3, NULL, 'Text', 'Any textual data included in the document', NULL),
(2, 3, NULL, 'Interviewer', 'The person(s) performing the interview', NULL),
(3, 3, NULL, 'Interviewee', 'The person(s) being interviewed', NULL),
(4, 3, NULL, 'Location', 'The location of the interview', NULL),
(5, 3, NULL, 'Transcription', 'Any written text transcribed from a sound', NULL),
(6, 3, NULL, 'Local URL', 'The URL of the local directory containing all assets of the website', NULL),
(7, 3, NULL, 'Original Format', 'The type of object, such as painting, sculpture, paper, photo, and additional data', NULL),
(10, 3, NULL, 'Physical Dimensions', 'The actual physical size of the original image', NULL),
(11, 3, NULL, 'Duration', 'Length of time involved (seconds, minutes, hours, days, class periods, etc.)', NULL),
(12, 3, NULL, 'Compression', 'Type/rate of compression for moving image file (i.e. MPEG-4)', NULL),
(13, 3, NULL, 'Producer', 'Name (or names) of the person who produced the video', NULL),
(14, 3, NULL, 'Director', 'Name (or names) of the person who produced the video', NULL),
(15, 3, NULL, 'Bit Rate/Frequency', 'Rate at which bits are transferred (i.e. 96 kbit/s would be FM quality audio)', NULL),
(16, 3, NULL, 'Time Summary', 'A summary of an interview given for different time stamps throughout the interview', NULL),
(17, 3, NULL, 'Email Body', 'The main body of the email, including all replied and forwarded text and headers', NULL),
(18, 3, NULL, 'Subject Line', 'The content of the subject line of the email', NULL),
(19, 3, NULL, 'From', 'The name and email address of the person sending the email', NULL),
(20, 3, NULL, 'To', 'The name(s) and email address(es) of the person to whom the email was sent', NULL),
(21, 3, NULL, 'CC', 'The name(s) and email address(es) of the person to whom the email was carbon copied', NULL),
(22, 3, NULL, 'BCC', 'The name(s) and email address(es) of the person to whom the email was blind carbon copied', NULL),
(23, 3, NULL, 'Number of Attachments', 'The number of attachments to the email', NULL),
(24, 3, NULL, 'Standards', '', NULL),
(25, 3, NULL, 'Objectives', '', NULL),
(26, 3, NULL, 'Materials', '', NULL),
(27, 3, NULL, 'Lesson Plan Text', '', NULL),
(28, 3, NULL, 'URL', '', NULL),
(29, 3, NULL, 'Event Type', '', NULL),
(30, 3, NULL, 'Participants', 'Names of individuals or groups participating in the event', NULL),
(31, 3, NULL, 'Birth Date', '', NULL),
(32, 3, NULL, 'Birthplace', '', NULL),
(33, 3, NULL, 'Death Date', '', NULL),
(34, 3, NULL, 'Occupation', '', NULL),
(35, 3, NULL, 'Biographical Text', '', NULL),
(36, 3, NULL, 'Bibliography', '', NULL),
(37, 1, 8, 'Contributor', 'An entity responsible for making contributions to the resource', NULL),
(38, 1, 15, 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant', NULL),
(39, 1, 4, 'Creator', 'An entity primarily responsible for making the resource', NULL),
(40, 1, 7, 'Date', 'A point or period of time associated with an event in the lifecycle of the resource', NULL),
(41, 1, 3, 'Description', 'An account of the resource', NULL),
(42, 1, 11, 'Format', 'The file format, physical medium, or dimensions of the resource', NULL),
(43, 1, 14, 'Identifier', 'An unambiguous reference to the resource within a given context', NULL),
(44, 1, 12, 'Language', 'A language of the resource', NULL),
(45, 1, 6, 'Publisher', 'An entity responsible for making the resource available', NULL),
(46, 1, 10, 'Relation', 'A related resource', NULL),
(47, 1, 9, 'Rights', 'Information about rights held in and over the resource', NULL),
(48, 1, 5, 'Source', 'A related resource from which the described resource is derived', NULL),
(49, 1, 2, 'Subject', 'The topic of the resource', NULL),
(50, 1, 1, 'Title', 'A name given to the resource', NULL),
(51, 1, 13, 'Type', 'The nature or genre of the resource', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `omeka_element_sets`
--

DROP TABLE IF EXISTS `omeka_element_sets`;
CREATE TABLE IF NOT EXISTS `omeka_element_sets` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `record_type` varchar(50) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `record_type` (`record_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_element_sets`
--

INSERT INTO `omeka_element_sets` (`id`, `record_type`, `name`, `description`) VALUES
(1, NULL, 'Dublin Core', 'The Dublin Core metadata element set is common to all Omeka records, including items, files, and collections. For more information see, http://dublincore.org/documents/dces/.'),
(3, 'Item', 'Item Type Metadata', 'The item type metadata element set, consisting of all item type elements bundled with Omeka and all item type elements created by an administrator.');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_element_texts`
--

DROP TABLE IF EXISTS `omeka_element_texts`;
CREATE TABLE IF NOT EXISTS `omeka_element_texts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `record_id` int UNSIGNED NOT NULL,
  `record_type` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `element_id` int UNSIGNED NOT NULL,
  `html` tinyint NOT NULL,
  `text` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `record_type_record_id` (`record_type`,`record_id`),
  KEY `element_id` (`element_id`),
  KEY `text` (`text`(20))
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_element_texts`
--

INSERT INTO `omeka_element_texts` (`id`, `record_id`, `record_type`, `element_id`, `html`, `text`) VALUES
(1, 1, 'Item', 50, 1, '<strong>tambour ou Nsiméü en Repkag</strong>'),
(2, 1, 'Item', 49, 0, 'Instrument de musique'),
(3, 1, 'Item', 41, 1, '<p><strong>Medium :</strong> bois, peau de lièvre</p>\r\n<p><strong>Année de création :</strong> 2003</p>\r\n<p><strong>Utilité :</strong> pendant la danse il récite les proverbes, les légendes et faits les éloges</p>\r\n'),
(4, 2, 'Item', 50, 1, '<strong>Petit tam-tam</strong>'),
(5, 2, 'Item', 49, 0, 'instrument de musique'),
(6, 2, 'Item', 41, 1, '<strong>Materiaux de fabrication :</strong> bois, peau de lièvre Année de <strong>création :</strong> 2003 <br /><strong>Utilité :</strong> c’est le porteur du message ; il permet d’annoncer l’évènement et faire une sorte d’introduction'),
(7, 3, 'Item', 50, 1, '<strong>collier ou keufang en langue Repkag</strong>'),
(8, 3, 'Item', 49, 0, 'Instrument de danse'),
(9, 3, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> inconnu</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> il est utilisé dans la danse pour montrer la frce de celui qui danse. C’est un trophé qu’on obtient lorsqu’on a rapté une femme.</p>'),
(10, 4, 'Item', 50, 1, '<strong>Tam-tam ou fukong en langue repkag</strong>'),
(11, 4, 'Item', 49, 0, 'Instrument de musique'),
(12, 4, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> bois</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> accompagne le grand tambour</p>'),
(13, 5, 'Item', 50, 1, '<strong>Grelot ou Beubeing en langue locale</strong>'),
(14, 5, 'Item', 49, 0, 'Instrument de chant et de danse'),
(15, 5, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> le fer</p>\r\n<p><strong>Date de création :</strong> 1990</p>\r\n<strong>Fonction :</strong> c’est l’objet tenu par le leader du groupe ; il permet de changer le rythme,'),
(16, 6, 'Item', 50, 1, '<strong>Tenue d’un danseur</strong>'),
(17, 6, 'Item', 49, 0, 'Accessoire de danse'),
(18, 6, 'Item', 41, 1, '<p><strong>Materiaux de fabrication:</strong> peau de mouton</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> elle est utilisée en fonction de la circonstance ou de la thématique qui est portée</p>'),
(19, 7, 'Item', 50, 1, '<strong>Cirage blanc</strong>'),
(20, 7, 'Item', 49, 0, 'Accessoire de danse'),
(21, 7, 'Item', 41, 1, 'Cet outil est utilisé par les danseurs pour décorer le corps notamment les points blancs qui sont appliqués à défaut d’avoir accès à l’argile ou au Kaolin'),
(22, 8, 'Item', 50, 1, '<strong>La jupe pu le Zoko en langue Repkak</strong>'),
(23, 8, 'Item', 49, 0, 'Accessoire de danse'),
(24, 8, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> feuille de raphia</p>\r\n<p><strong>Date de création :</strong> 2022</p>\r\n<p><strong>Fonction :</strong> c’est une jupe portée par tous les danseurs de sexe confondu pendant la danse</p>'),
(25, 9, 'Item', 50, 1, '<strong>Chapeau</strong>'),
(26, 9, 'Item', 49, 0, 'Accessoire de danse'),
(27, 9, 'Item', 41, 1, '<p><strong>Materiaux de fabrication:</strong> plumes d’oiseaux et peau de lièvre</p>\r\n<p><strong>Date de création :</strong> 2021</p>\r\n<p><strong>Fonction :</strong> le chapeau de plume est porté par le leader du groupe et le chapeau en peau de lièvre est porté  par les danseurs masculins du groupe. Il permet de faire la différence entre le leader et les autres danseurs. C’est aussi un élément essentiel dans la connexion entre l’homme et son milieu naturel</p>\r\n<strong>Nb :</strong> il existe plusieurs type de chapeau mais, avons juste pour avoir ceux des danseurs que nous avons interviewé.'),
(28, 10, 'Item', 50, 1, '<strong>Queue de cheval</strong>'),
(29, 10, 'Item', 49, 0, 'Accessoire de danse'),
(30, 10, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> poil de chevaux notamment la queue</p>\r\n<p><strong>Date de création :</strong> 2021</p>\r\n<p><strong>Fonction :</strong> objet utilisé par les femmes pendant la danse</p>'),
(31, 11, 'Item', 50, 1, '<strong>Bracelet</strong>'),
(32, 11, 'Item', 49, 0, 'Accessoire'),
(33, 11, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> bois ou l’ivoire tout dépend du  créateur de l’objet</p>\r\n<p><strong>Date de création :</strong> 2019</p>\r\n<p><strong>Fonction :</strong> c’est un bracelet qui est porté par les patriarches notamment ceux qui ont occupé de haute fonction dans la société. il annonce leur mise en retraite, du repos pour d’autres.</p>'),
(34, 12, 'Item', 50, 1, '<strong>Sac en forme de varan</strong>'),
(35, 12, 'Item', 49, 0, 'Accessoire de danse'),
(36, 12, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> cuir</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> c’est un sac porté par les initié pendant la danse il leur permet d’entrer en contact avec leur anomal totem.</p>'),
(37, 13, 'Item', 50, 1, '<strong>Arc et fleches</strong>'),
(38, 13, 'Item', 49, 0, 'Instrument de chasse'),
(39, 13, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> bois de rotin, corde</p>\r\n<p><strong>Date de création :</strong> 2010</p>\r\n<p><strong>Fonction :</strong> il est utilisé pendant les cérémonies des danses guerrières ou pendant les cérémonies de présentation d’une des activités principales du clan qui est la chasse.</p>'),
(40, 14, 'Item', 50, 1, '<strong>Bijoux pour les reins et le cou<br /></strong>'),
(41, 14, 'Item', 49, 1, 'Accessoire de décoration, danse'),
(42, 14, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> perles</p>\r\n<p><strong>Date de création :</strong> 2020</p>\r\n<p><strong>fonction :</strong> objet de décoration chez l’homme et la femme</p>\r\n'),
(43, 15, 'Item', 50, 1, '<strong>Chasse mouche à la main droite du danseur<br /></strong>'),
(44, 15, 'Item', 49, 0, 'Instrument de danse'),
(45, 15, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> brindilles de cocotier</p>\r\n<p><strong>Date de création :</strong> 2023</p>\r\n<p><strong>Fonction :</strong> c’est un instrument uniquement réservé aux hommes pendant la danse</p>'),
(46, 16, 'Item', 50, 1, '<strong>Petit tam-tam ou Dièr à fukong en Bepkag</strong>'),
(47, 16, 'Item', 49, 0, 'Instrument de musique'),
(48, 16, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> bois</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> il accompagne le rand tam-tam dans le rythme et aide aussi dans le changement de rythme ou de pas de danse</p>'),
(49, 17, 'Item', 50, 1, '<strong>Tenue traditionnelle</strong>'),
(50, 17, 'Item', 49, 0, 'Accessoire de danse,  tenue de mariage'),
(51, 17, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> laine</p>\r\n<p><strong>Date de création :</strong> 2021</p>\r\n<p><strong>Fonction :</strong> sur la tenue en bas il y a la représentation de la cloche des danseurs et au-dessus un masque. Cette tenue est arborée lors d’un évènement spécial notamment le mariage.</p>'),
(52, 18, 'Item', 50, 1, '<strong>Chaussure en caoutchouc</strong>'),
(53, 18, 'Item', 49, 0, 'Accessoire de danse'),
(54, 18, 'Item', 41, 1, '<p><strong>Materiaux de fabrication :</strong> plastique</p>\r\n<p><strong>Date de création :</strong> inconnue</p>\r\n<p><strong>Fonction :</strong> les danseurs utilisent les chaussures en fonction du terrain sur lequel ils doivent danser. Sur cette photo ils devaient danser sur la terre ferme. Ils utilisent les chaussures pour éviter les chutes ou les blessures. Dans d’autres contextes ils peuvent danser pieds-nu.</p>\r\n');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_exhibits`
--

DROP TABLE IF EXISTS `omeka_exhibits`;
CREATE TABLE IF NOT EXISTS `omeka_exhibits` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb3_unicode_ci,
  `credits` text COLLATE utf8mb3_unicode_ci,
  `featured` tinyint(1) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `theme` varchar(30) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `theme_options` text COLLATE utf8mb3_unicode_ci,
  `slug` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int UNSIGNED DEFAULT NULL,
  `use_summary_page` tinyint(1) DEFAULT '1',
  `cover_image_file_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `public` (`public`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_exhibits`
--

INSERT INTO `omeka_exhibits` (`id`, `title`, `description`, `credits`, `featured`, `public`, `theme`, `theme_options`, `slug`, `added`, `modified`, `owner_id`, `use_summary_page`, `cover_image_file_id`) VALUES
(1, 'Les outils de communication au travers de la danse Bafia', '<p></p>\r\n<p>   <strong> La danse</strong> est art ancien qui est perpétré d’une génération à une autre. En <strong>Afrique</strong> et au <strong>Cameroun</strong> en particulier, l’industrie de la danse évolue de façon exponentielle ; nos danses qui étaient autre fois des sources d’inspirations et de cohésion sociale sont devenues des outils de propagande qui encouragent à l’individualisme. Depuis la mondialisation, les sources de communication les plus utilisés sont beaucoup plus verbale avec la prolifération des médias. Mais dans ce flux d’éléments, la communication non verbale a été laissée. C’est dans cette optique nous avons dans ce travail présenté les outils de la communication au travers la danse chez les <strong>Bafia.</strong></p>\r\n<p></p>', '', 0, 0, '', NULL, 'les-outils-de-communication-au', '2024-01-30 00:17:57', '2024-01-30 00:17:57', 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `omeka_exhibit_block_attachments`
--

DROP TABLE IF EXISTS `omeka_exhibit_block_attachments`;
CREATE TABLE IF NOT EXISTS `omeka_exhibit_block_attachments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `block_id` int UNSIGNED NOT NULL,
  `item_id` int UNSIGNED NOT NULL,
  `file_id` int UNSIGNED DEFAULT NULL,
  `caption` text COLLATE utf8mb3_unicode_ci,
  `order` smallint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `block_id_order` (`block_id`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_exhibit_block_attachments`
--

INSERT INTO `omeka_exhibit_block_attachments` (`id`, `block_id`, `item_id`, `file_id`, `caption`, `order`) VALUES
(1, 1, 1, 1, '<h5><strong>tambour ou Nsiméü en Repkag</strong></h5>', 1),
(2, 1, 2, 3, '<h5 style=\"text-align:center;\"><strong>Petit tam-tam</strong></h5>', 2),
(3, 1, 16, 25, '<h5 style=\"text-align:center;\"><strong>Petit tam-tam ou Dièr à fukong en Bepkag</strong></h5>', 3),
(4, 1, 5, 11, '<h5 style=\"text-align:center;\"><strong>Grelot ou Beubeing en langue locale</strong></h5>', 4),
(8, 2, 3, 4, '<h5 style=\"text-align:center;\"><strong>collier ou keufang en langue Repkag</strong></h5>', 1),
(9, 2, 6, 12, '<h5 style=\"text-align:center;\"><strong>Tenue d’un danseur</strong></h5>', 2),
(10, 2, 9, 15, '<h5 style=\"text-align:center;\"><span> </span><strong>Chapeau</strong></h5>', 3),
(11, 2, 14, 21, '<h5 style=\"text-align:center;\"><strong>Bijoux pour les reins et le cou</strong></h5>', 4),
(12, 2, 13, 20, '<h5 style=\"text-align:center;\"><strong>Arc et fleches</strong></h5>', 5),
(13, 2, 12, 19, '<h5 style=\"text-align:center;\"><strong>Sac en forme de varan</strong></h5>', 6),
(14, 2, 11, 18, '<h5 style=\"text-align:center;\"><strong>Bracelet</strong></h5>', 7),
(15, 2, 10, 17, '<h5 style=\"text-align:center;\"><strong>Queue de cheval</strong></h5>', 8),
(16, 2, 8, 14, '<h5 style=\"text-align:center;\"><strong>La jupe pu le Zoko en langue Repkak</strong></h5>', 9),
(17, 2, 7, 13, '<h5 style=\"text-align:center;\"><strong>Cirage blanc</strong></h5>', 10),
(18, 2, 6, 12, '<h5 style=\"text-align:center;\"><strong>Tenue d’un danseur</strong></h5>', 11),
(19, 2, 3, 5, '<h5 style=\"text-align:center;\"><strong>collier ou keufang en langue Repkag</strong></h5>', 12),
(27, 4, 18, 27, NULL, 1),
(28, 4, 17, 26, NULL, 2),
(29, 4, 16, 25, NULL, 3),
(30, 4, 15, 24, NULL, 4);

-- --------------------------------------------------------

--
-- Structure de la table `omeka_exhibit_pages`
--

DROP TABLE IF EXISTS `omeka_exhibit_pages`;
CREATE TABLE IF NOT EXISTS `omeka_exhibit_pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `exhibit_id` int UNSIGNED NOT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `short_title` varchar(255) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `slug` varchar(30) COLLATE utf8mb3_unicode_ci NOT NULL,
  `order` smallint UNSIGNED DEFAULT NULL,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `modified` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `exhibit_id_parent_id_slug` (`exhibit_id`,`parent_id`,`slug`),
  KEY `exhibit_id_order` (`exhibit_id`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_exhibit_pages`
--

INSERT INTO `omeka_exhibit_pages` (`id`, `exhibit_id`, `parent_id`, `title`, `short_title`, `slug`, `order`, `added`, `modified`) VALUES
(1, 1, NULL, 'Les instruments de musique et accessoires de danse', 'instruments_et_accessoires', 'instruments_et_accessoires', 1, '2024-01-30 00:30:27', '2024-01-30 00:46:08');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_exhibit_page_blocks`
--

DROP TABLE IF EXISTS `omeka_exhibit_page_blocks`;
CREATE TABLE IF NOT EXISTS `omeka_exhibit_page_blocks` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` int UNSIGNED NOT NULL,
  `layout` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb3_unicode_ci,
  `text` mediumtext COLLATE utf8mb3_unicode_ci,
  `order` smallint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id_order` (`page_id`,`order`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_exhibit_page_blocks`
--

INSERT INTO `omeka_exhibit_page_blocks` (`id`, `page_id`, `layout`, `options`, `text`, `order`) VALUES
(1, 1, 'gallery', '{\"showcase-position\":\"left\",\"gallery-position\":\"left\",\"gallery-file-size\":\"thumbnail\",\"captions-position\":\"left\"}', '<p style=\"text-align:center;\"></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>', 1),
(2, 1, 'gallery', '{\"showcase-position\":\"none\",\"gallery-position\":\"left\",\"gallery-file-size\":\"square_thumbnail\",\"captions-position\":\"center\"}', '<p style=\"text-align:center;\"></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>', 2),
(4, 1, 'carousel', '{\"carousel-title\":\"test\",\"per-slide\":\"4\",\"file-size\":\"square_thumbnail\",\"show-title\":\"1\",\"float-caption\":\"0\",\"caption-position\":\"center\",\"stretch-image\":\"none\",\"speed\":\"400\",\"auto-slide\":\"8000\",\"loop\":\"0\",\"fade\":\"0\"}', NULL, 3);

-- --------------------------------------------------------

--
-- Structure de la table `omeka_files`
--

DROP TABLE IF EXISTS `omeka_files`;
CREATE TABLE IF NOT EXISTS `omeka_files` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `has_derivative_image` tinyint(1) NOT NULL,
  `authentication` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `type_os` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `filename` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `original_filename` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stored` tinyint(1) NOT NULL DEFAULT '0',
  `metadata` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_files`
--

INSERT INTO `omeka_files` (`id`, `item_id`, `order`, `size`, `has_derivative_image`, `authentication`, `mime_type`, `type_os`, `filename`, `original_filename`, `modified`, `added`, `stored`, `metadata`) VALUES
(1, 1, NULL, 679672, 1, '0546e986c7d57da46c79371bb6204d28', 'image/jpeg', '', '7ee2f96cae24c17a5c85fbe82abb2639.jpg', 'a.jpg', '2024-01-29 23:27:41', '2024-01-29 23:21:28', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1305,\"resolution_y\":1161,\"compression_ratio\":0.14953243064562083}}'),
(2, 2, NULL, 998484, 1, '6d4e53747fd572d6aff3a40314e3df03', 'image/jpeg', '', '0127b90c15970cb8db9916a32ea1feed.jpg', 'c.jpg', '2024-01-29 23:24:27', '2024-01-29 23:24:25', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.16276003716563156}}'),
(3, 2, NULL, 418536, 1, '958a301364ef619024ca24dbe4a35a6e', 'image/jpeg', '', 'd454c4eff5182a0dae09cbbceb82f2e9.jpg', 'd.jpg', '2024-01-29 23:24:28', '2024-01-29 23:24:27', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.06822436304953787},\"jpg\":{\"exif\":{\"FILE\":{\"FileName\":\"d454c4eff5182a0dae09cbbceb82f2e9.jpg\",\"FileDateTime\":1706574265,\"FileSize\":418536,\"FileType\":2,\"MimeType\":\"image\\/jpeg\",\"SectionsFound\":\"ANY_TAG, IFD0, THUMBNAIL\"},\"COMPUTED\":{\"html\":\"width=\\\"1430\\\" height=\\\"1430\\\"\",\"Height\":1430,\"Width\":1430,\"IsColor\":1,\"ByteOrderMotorola\":1,\"Thumbnail.FileType\":2,\"Thumbnail.MimeType\":\"image\\/jpeg\"},\"IFD0\":{\"Orientation\":6},\"THUMBNAIL\":{\"Compression\":6,\"XResolution\":220,\"YResolution\":220,\"ResolutionUnit\":2,\"JPEGInterchangeFormat\":120,\"JPEGInterchangeFormatLength\":3840}}}}'),
(4, 3, NULL, 544961, 1, 'eb35bf98162e09f6386ffb4d24bf7f8f', 'image/jpeg', '', 'bd0c2a35ee194d70a5fbf9919b131c88.jpg', 'e.jpg', '2024-01-29 23:26:59', '2024-01-29 23:26:58', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.08883254274862666}}'),
(5, 3, NULL, 454668, 1, '8c0d0c51d1821163915697a003744862', 'image/jpeg', '', '303c6062edffbdada580349b979946e6.jpg', 'f.jpg', '2024-01-29 23:27:00', '2024-01-29 23:26:59', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.0741141376106411}}'),
(6, 1, NULL, 520156, 1, '549cad3b5825cafdd2f5a3902ccda49a', 'image/jpeg', '', 'be850d6eadf56aeeddf3ea632a4963d2.jpg', 'b.jpg', '2024-01-29 23:27:41', '2024-01-29 23:27:22', 1, '0'),
(8, 4, NULL, 343690, 1, '87b5e8eb370bf0e1c0cd545810513aa0', 'image/jpeg', '', '5cb5bd14fea12955fd5255be897683ac.jpg', 'g.jpg', '2024-01-29 23:33:27', '2024-01-29 23:33:26', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.05602392945050288}}'),
(9, 4, NULL, 442091, 1, 'cb1ba7083d4b12267d6d03059e054990', 'image/jpeg', '', 'dcae69b87ce38a8a9a2209c2fe6491e8.jpg', 'h.jpg', '2024-01-29 23:33:28', '2024-01-29 23:33:27', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1221,\"resolution_y\":1430,\"compression_ratio\":0.08439927530836622}}'),
(10, 5, NULL, 544571, 1, 'dfa701b9a4542ab3e509c2da95d6f9b9', 'image/jpeg', '', '5b63b76b71035a06656880dd33513b60.jpg', 'i.jpg', '2024-01-29 23:39:09', '2024-01-29 23:39:08', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.08876896995778115}}'),
(11, 5, NULL, 366176, 1, '752330d6d55930c507033dbb16826987', 'image/jpeg', '', '2ca176a5d55a8b116ae79f24b171e3db.jpg', 'j.jpg', '2024-01-29 23:39:11', '2024-01-29 23:39:09', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.05968930836063703}}'),
(12, 6, NULL, 384398, 1, '0f10b2f5605baefb5bb4a01f188985cb', 'image/jpeg', '', '40850ee81b16ca0e6fc232823c0faefe.jpg', 'k.jpg', '2024-01-29 23:41:19', '2024-01-29 23:41:17', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.06265962475752686}}'),
(13, 7, NULL, 336685, 1, 'c70a9dad48668e7af3a2a80f672f0941', 'image/jpeg', '', '7328d49d9a723803e8dfff50638e3cb2.jpg', 'l.jpg', '2024-01-29 23:43:35', '2024-01-29 23:43:34', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.05488206432262376}}'),
(14, 8, NULL, 637463, 1, 'b4aecf3c68a3f162d550f0cf2778efa6', 'image/jpeg', '', '9c25b45abb6bc43c10be8b141bef6e56.jpg', 'm.jpg', '2024-01-29 23:45:31', '2024-01-29 23:45:29', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.10391103069424748}}'),
(15, 9, NULL, 383983, 1, '668a9a3b0dbdc92623bea59fe9826cf0', 'image/jpeg', '', '5d8892032553ea9ed63468448ffb6065.jpg', 'n.jpg', '2024-01-29 23:47:48', '2024-01-29 23:47:47', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1182,\"resolution_y\":998,\"compression_ratio\":0.10850324450367176}}'),
(16, 9, NULL, 686056, 1, '037b43eb3492ca28b3646b0a4cd0127f', 'image/jpeg', '', '1e9343e17694029be0c683571c2f8130.jpg', 'o.jpg', '2024-01-29 23:47:49', '2024-01-29 23:47:48', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1216,\"compression_ratio\":0.13151300453932033}}'),
(17, 10, NULL, 855199, 1, 'fb68ccd2b8f0bed8b36672809880888e', 'image/jpeg', '', '6fd99f3aca9dc6085460b25b9f7ad718.jpg', 'p.jpg', '2024-01-29 23:49:35', '2024-01-29 23:49:34', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.13940355681614422}}'),
(18, 11, NULL, 360045, 1, '8e71685ddad246185e1f457093b7efb1', 'image/jpeg', '', 'c22366fc06ffdd198b78292340fef854.jpg', 'q.jpg', '2024-01-29 23:51:08', '2024-01-29 23:51:07', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.058689911487114284}}'),
(19, 12, NULL, 459133, 1, 'bc769b201968cc9fbe18ee1d3dca2ab5', 'image/jpeg', '', '140f62e70fe2c11eda08f1d5b2be606a.jpg', 'r.jpg', '2024-01-29 23:53:11', '2024-01-29 23:53:10', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1216,\"compression_ratio\":0.08801316556250767}}'),
(20, 13, NULL, 303936, 1, '4540b76ad2112073432bfb452b624b79', 'image/jpeg', '', 'ab3763b4b3cabeebecaeadcfc9363dc2.jpg', 's.jpg', '2024-01-29 23:55:43', '2024-01-29 23:55:42', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1194,\"resolution_y\":1084,\"compression_ratio\":0.07827575763194818}}'),
(21, 14, NULL, 771706, 1, '79f1f8ea6eb983b5a0ef467cbcd1080d', 'image/jpeg', '', 'fb0815ac040f5fef6135e3f5e9005600.jpg', 't.jpg', '2024-01-30 00:00:55', '2024-01-29 23:59:58', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.12579360033905487}}'),
(22, 14, NULL, 436524, 1, '2d6c5024b4951cfa8dab4d8edac155f6', 'image/jpeg', '', '6cf9573d8902d191b40dc8b9a1826cf6.jpg', 'u.jpg', '2024-01-30 00:00:55', '2024-01-29 23:59:59', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":787,\"compression_ratio\":0.12929332421073209}}'),
(23, 14, NULL, 446255, 1, '4cfb95eee9542ff0ddcf75955c4449cb', 'image/jpeg', '', '760581b2e8dfcd8ae1c658f682dda30c.jpg', 'v.jpg', '2024-01-30 00:00:55', '2024-01-30 00:00:54', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1203,\"resolution_y\":1271,\"compression_ratio\":0.09728607060022816}}'),
(24, 15, NULL, 686056, 1, '037b43eb3492ca28b3646b0a4cd0127f', 'image/jpeg', '', '342db510487eb4c5a28dc4fad27b8aab.jpg', 'o.jpg', '2024-01-30 00:05:05', '2024-01-30 00:05:03', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1216,\"compression_ratio\":0.13151300453932033}}'),
(25, 16, NULL, 542641, 1, '0e0f97426b3561b357c8d793eb29fd1d', 'image/jpeg', '', 'c8faff05b1dce01e521726406f95c6b4.jpg', 'x.jpg', '2024-01-30 00:08:02', '2024-01-30 00:08:01', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.08845436614667383}}'),
(26, 17, NULL, 503872, 1, '30b0326a0c4b46d41e6e3f688ffb7937', 'image/jpeg', '', '81a83f415e26cd8672056a8e65a5943b.jpg', 'y.jpg', '2024-01-30 00:10:16', '2024-01-30 00:10:15', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1109,\"resolution_y\":1148,\"compression_ratio\":0.13192452419178322}}'),
(27, 18, NULL, 779837, 1, 'fcd3ddb10702daed080a97eeadd74157', 'image/jpeg', '', '314c3e0662c94b7da87f9af3e8c9304a.jpg', 'z.jpg', '2024-01-30 00:13:36', '2024-01-30 00:13:36', 1, '{\"mime_type\":\"image\\/jpeg\",\"video\":{\"dataformat\":\"jpg\",\"lossless\":false,\"bits_per_sample\":24,\"pixel_aspect_ratio\":1,\"resolution_x\":1430,\"resolution_y\":1430,\"compression_ratio\":0.12711901152460592}}');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_items`
--

DROP TABLE IF EXISTS `omeka_items`;
CREATE TABLE IF NOT EXISTS `omeka_items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_type_id` int UNSIGNED DEFAULT NULL,
  `collection_id` int UNSIGNED DEFAULT NULL,
  `featured` tinyint NOT NULL,
  `public` tinyint NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `added` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `owner_id` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_type_id` (`item_type_id`),
  KEY `collection_id` (`collection_id`),
  KEY `public` (`public`),
  KEY `featured` (`featured`),
  KEY `owner_id` (`owner_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_items`
--

INSERT INTO `omeka_items` (`id`, `item_type_id`, `collection_id`, `featured`, `public`, `modified`, `added`, `owner_id`) VALUES
(1, NULL, NULL, 1, 1, '2024-01-29 23:27:41', '2024-01-29 23:21:28', 1),
(2, NULL, NULL, 1, 1, '2024-01-29 23:24:25', '2024-01-29 23:24:25', 1),
(3, NULL, NULL, 1, 1, '2024-01-29 23:26:58', '2024-01-29 23:26:58', 1),
(4, NULL, NULL, 1, 1, '2024-01-29 23:33:26', '2024-01-29 23:33:26', 1),
(5, NULL, NULL, 1, 1, '2024-01-29 23:39:08', '2024-01-29 23:39:08', 1),
(6, NULL, NULL, 1, 1, '2024-01-29 23:41:17', '2024-01-29 23:41:17', 1),
(7, NULL, NULL, 0, 1, '2024-01-29 23:43:34', '2024-01-29 23:43:34', 1),
(8, NULL, NULL, 1, 1, '2024-01-29 23:45:29', '2024-01-29 23:45:29', 1),
(9, NULL, NULL, 1, 1, '2024-01-29 23:47:47', '2024-01-29 23:47:47', 1),
(10, NULL, NULL, 0, 1, '2024-01-29 23:49:34', '2024-01-29 23:49:34', 1),
(11, NULL, NULL, 1, 1, '2024-01-29 23:51:07', '2024-01-29 23:51:07', 1),
(12, NULL, NULL, 0, 1, '2024-01-29 23:53:10', '2024-01-29 23:53:10', 1),
(13, NULL, NULL, 0, 1, '2024-01-29 23:55:42', '2024-01-29 23:55:42', 1),
(14, NULL, NULL, 0, 1, '2024-01-30 00:00:55', '2024-01-29 23:59:58', 1),
(15, NULL, NULL, 0, 1, '2024-01-30 00:05:03', '2024-01-30 00:05:03', 1),
(16, NULL, NULL, 0, 1, '2024-01-30 00:08:01', '2024-01-30 00:08:01', 1),
(17, NULL, NULL, 0, 1, '2024-01-30 00:10:15', '2024-01-30 00:10:15', 1),
(18, NULL, NULL, 0, 1, '2024-01-30 00:13:36', '2024-01-30 00:13:36', 1);

-- --------------------------------------------------------

--
-- Structure de la table `omeka_item_types`
--

DROP TABLE IF EXISTS `omeka_item_types`;
CREATE TABLE IF NOT EXISTS `omeka_item_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_item_types`
--

INSERT INTO `omeka_item_types` (`id`, `name`, `description`) VALUES
(1, 'Text', 'A resource consisting primarily of words for reading. Examples include books, letters, dissertations, poems, newspapers, articles, archives of mailing lists. Note that facsimiles or images of texts are still of the genre Text.'),
(3, 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession. Examples include animations, movies, television programs, videos, zoetropes, or visual output from a simulation.'),
(4, 'Oral History', 'A resource containing historical information obtained in interviews with persons having firsthand knowledge.'),
(5, 'Sound', 'A resource primarily intended to be heard. Examples include a music playback file format, an audio compact disc, and recorded speech or sounds.'),
(6, 'Still Image', 'A static visual representation. Examples include paintings, drawings, graphic designs, plans and maps. Recommended best practice is to assign the type Text to images of textual materials.'),
(7, 'Website', 'A resource comprising of a web page or web pages and all related assets ( such as images, sound and video files, etc. ).'),
(8, 'Event', 'A non-persistent, time-based occurrence. Metadata for an event provides descriptive information that is the basis for discovery of the purpose, location, duration, and responsible agents associated with an event. Examples include an exhibition, webcast, conference, workshop, open day, performance, battle, trial, wedding, tea party, conflagration.'),
(9, 'Email', 'A resource containing textual messages and binary attachments sent electronically from one person to another or one person to many people.'),
(10, 'Lesson Plan', 'A resource that gives a detailed description of a course of instruction.'),
(11, 'Hyperlink', 'A link, or reference, to another resource on the Internet.'),
(12, 'Person', 'An individual.'),
(13, 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced. Examples include forms on Web pages, applets, multimedia learning objects, chat services, or virtual reality environments.'),
(14, 'Dataset', 'Data encoded in a defined structure. Examples include lists, tables, and databases. A dataset may be useful for direct machine processing.'),
(15, 'Physical Object', 'An inanimate, three-dimensional object or substance. Note that digital representations of, or surrogates for, these objects should use Moving Image, Still Image, Text or one of the other types.'),
(16, 'Service', 'A system that provides one or more functions. Examples include a photocopying service, a banking service, an authentication service, interlibrary loans, a Z39.50 or Web server.'),
(17, 'Software', 'A computer program in source or compiled form. Examples include a C source file, MS-Windows .exe executable, or Perl script.');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_item_types_elements`
--

DROP TABLE IF EXISTS `omeka_item_types_elements`;
CREATE TABLE IF NOT EXISTS `omeka_item_types_elements` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_type_id` int UNSIGNED NOT NULL,
  `element_id` int UNSIGNED NOT NULL,
  `order` int UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_type_id_element_id` (`item_type_id`,`element_id`),
  KEY `item_type_id` (`item_type_id`),
  KEY `element_id` (`element_id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_item_types_elements`
--

INSERT INTO `omeka_item_types_elements` (`id`, `item_type_id`, `element_id`, `order`) VALUES
(1, 1, 7, NULL),
(2, 1, 1, NULL),
(3, 6, 7, NULL),
(6, 6, 10, NULL),
(7, 3, 7, NULL),
(8, 3, 11, NULL),
(9, 3, 12, NULL),
(10, 3, 13, NULL),
(11, 3, 14, NULL),
(12, 3, 5, NULL),
(13, 5, 7, NULL),
(14, 5, 11, NULL),
(15, 5, 15, NULL),
(16, 5, 5, NULL),
(17, 4, 7, NULL),
(18, 4, 11, NULL),
(19, 4, 15, NULL),
(20, 4, 5, NULL),
(21, 4, 2, NULL),
(22, 4, 3, NULL),
(23, 4, 4, NULL),
(24, 4, 16, NULL),
(25, 9, 17, NULL),
(26, 9, 18, NULL),
(27, 9, 20, NULL),
(28, 9, 19, NULL),
(29, 9, 21, NULL),
(30, 9, 22, NULL),
(31, 9, 23, NULL),
(32, 10, 24, NULL),
(33, 10, 25, NULL),
(34, 10, 26, NULL),
(35, 10, 11, NULL),
(36, 10, 27, NULL),
(37, 7, 6, NULL),
(38, 11, 28, NULL),
(39, 8, 29, NULL),
(40, 8, 30, NULL),
(41, 8, 11, NULL),
(42, 12, 31, NULL),
(43, 12, 32, NULL),
(44, 12, 33, NULL),
(45, 12, 34, NULL),
(46, 12, 35, NULL),
(47, 12, 36, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `omeka_keys`
--

DROP TABLE IF EXISTS `omeka_keys`;
CREATE TABLE IF NOT EXISTS `omeka_keys` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `label` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `key` char(40) COLLATE utf8mb3_unicode_ci NOT NULL,
  `ip` varbinary(16) DEFAULT NULL,
  `accessed` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `omeka_options`
--

DROP TABLE IF EXISTS `omeka_options`;
CREATE TABLE IF NOT EXISTS `omeka_options` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_options`
--

INSERT INTO `omeka_options` (`id`, `name`, `value`) VALUES
(1, 'omeka_version', '3.1.2'),
(7, 'thumbnail_constraint', '200'),
(8, 'square_thumbnail_constraint', '200'),
(9, 'fullsize_constraint', '800'),
(10, 'per_page_admin', '10'),
(11, 'per_page_public', '10'),
(12, 'show_empty_elements', '0'),
(14, 'admin_theme', 'default'),
(16, 'file_extension_whitelist', 'aac,aif,aiff,asf,asx,avi,bmp,c,cc,class,css,divx,doc,docx,exe,gif,gz,gzip,h,ico,j2k,jp2,jpe,jpeg,jpg,m4a,m4v,mdb,mid,midi,mov,mp2,mp3,mp4,mpa,mpe,mpeg,mpg,mpp,odb,odc,odf,odg,odp,ods,odt,ogg,opus,pdf,png,pot,pps,ppt,pptx,qt,ra,ram,rtf,rtx,swf,tar,tif,tiff,txt,wav,wax,webm,wma,wmv,wmx,wri,xla,xls,xlsx,xlt,xlw,zip'),
(17, 'file_mime_type_whitelist', 'application/msword,application/ogg,application/pdf,application/rtf,application/vnd.ms-access,application/vnd.ms-excel,application/vnd.ms-powerpoint,application/vnd.ms-project,application/vnd.ms-write,application/vnd.oasis.opendocument.chart,application/vnd.oasis.opendocument.database,application/vnd.oasis.opendocument.formula,application/vnd.oasis.opendocument.graphics,application/vnd.oasis.opendocument.presentation,application/vnd.oasis.opendocument.spreadsheet,application/vnd.oasis.opendocument.text,application/x-ms-wmp,application/x-ogg,application/x-gzip,application/x-msdownload,application/x-shockwave-flash,application/x-tar,application/zip,audio/aac,audio/aiff,audio/mid,audio/midi,audio/mp3,audio/mp4,audio/mpeg,audio/mpeg3,audio/ogg,audio/wav,audio/wma,audio/x-aac,audio/x-aiff,audio/x-m4a,audio/x-midi,audio/x-mp3,audio/x-mp4,audio/x-mpeg,audio/x-mpeg3,audio/x-mpegaudio,audio/x-ms-wax,audio/x-realaudio,audio/x-wav,audio/x-wma,image/bmp,image/gif,image/icon,image/jpeg,image/pjpeg,image/png,image/tiff,image/x-icon,image/x-ms-bmp,text/css,text/plain,text/richtext,text/rtf,video/asf,video/avi,video/divx,video/mp4,video/mpeg,video/msvideo,video/ogg,video/quicktime,video/webm,video/x-m4v,video/x-ms-wmv,video/x-msvideo'),
(18, 'disable_default_file_validation', ''),
(20, 'display_system_info', '1'),
(21, 'html_purifier_is_enabled', '1'),
(22, 'html_purifier_allowed_html_elements', 'p,br,strong,em,span,div,ul,ol,li,a,h1,h2,h3,h4,h5,h6,address,pre,table,tr,td,blockquote,thead,tfoot,tbody,th,dl,dt,dd,q,small,strike,sup,sub,b,i,big,small,tt'),
(23, 'html_purifier_allowed_html_attributes', '*.style,*.class,a.href,a.title,a.target'),
(26, 'search_record_types', 'a:3:{s:4:\"Item\";s:4:\"Item\";s:4:\"File\";s:4:\"File\";s:10:\"Collection\";s:10:\"Collection\";}'),
(27, 'api_enable', ''),
(28, 'api_per_page', '50'),
(29, 'show_element_set_headings', '1'),
(30, 'use_square_thumbnail', '1'),
(31, 'public_theme', 'freedom'),
(34, 'site_title', 'Phototeque'),
(35, 'description', ''),
(36, 'administrator_email', 'haroldtetchouang@gmail.com'),
(37, 'copyright', ''),
(38, 'author', ''),
(39, 'tag_delimiter', ','),
(40, 'path_to_convert', 'C:\\ImageMagick-6.9.13-Q16-HDRI'),
(41, 'exhibit_builder_sort_browse', 'alpha'),
(42, 'exhibit_builder_researcher_permissions', ''),
(44, 'public_navigation_main', '[{\"uid\":\"\\/phototeque\\/items\\/browse\",\"can_delete\":false,\"label\":\"Photos\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":1,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/phototeque\\/items\\/browse\"},{\"uid\":\"\\/phototeque\\/collections\\/browse\",\"can_delete\":false,\"label\":\"Parcourir les collections\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":2,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":false,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/phototeque\\/collections\\/browse\"},{\"uid\":\"\\/phototeque\\/exhibits\",\"can_delete\":false,\"label\":\"Expositions\",\"fragment\":null,\"id\":null,\"class\":null,\"title\":null,\"target\":null,\"accesskey\":null,\"rel\":[],\"rev\":[],\"customHtmlAttribs\":[],\"order\":3,\"resource\":null,\"privilege\":null,\"active\":false,\"visible\":true,\"type\":\"Omeka_Navigation_Page_Uri\",\"pages\":[],\"uri\":\"\\/phototeque\\/exhibits\"}]'),
(45, 'homepage_uri', '/'),
(51, 'theme_freedom_options', 'a:45:{s:13:\"primary_color\";s:7:\"#e77f11\";s:13:\"header_layout\";s:6:\"inline\";s:4:\"logo\";N;s:14:\"banner_heading\";s:24:\"La danse chez les Bafias\";s:18:\"banner_description\";s:123:\"Bienvenue sur notre plateforme de présentation des instruments de musique et des accessoires de danses traditionnels Bafia\";s:23:\"banner_content_position\";s:4:\"left\";s:12:\"banner_width\";s:9:\"alignfull\";s:13:\"banner_height\";s:0:\"\";s:20:\"banner_height_mobile\";s:0:\"\";s:17:\"banner_v_position\";s:6:\"center\";s:17:\"banner_h_position\";s:6:\"center\";s:11:\"footer_logo\";N;s:16:\"footer_site_info\";s:346:\"La danse est art ancien qui est perpétré d’une génération à une autre. En Afrique et au Cameroun en particulier, l’industrie de la danse évolue de façon exponentielle ; nos danses qui étaient autre fois des sources d’inspirations et de cohésion sociale sont devenues des outils de propagande qui encouragent à l’individualisme.\";s:11:\"footer_menu\";s:1:\"1\";s:14:\"footer_content\";s:0:\"\";s:16:\"footer_copyright\";s:15:\"Phototeque-2024\";s:13:\"homepage_text\";s:32:\"<p></p>\r\n<p>         </p>\r\n\";s:23:\"homepage_featured_title\";s:24:\"Les objets traditionnels\";s:22:\"homepage_main_featured\";s:4:\"item\";s:24:\"homepage_second_featured\";s:4:\"item\";s:23:\"homepage_third_featured\";s:4:\"item\";s:22:\"homepage_recent_type_1\";s:4:\"item\";s:23:\"homepage_recent_title_1\";s:0:\"\";s:31:\"homepage_recent_records_count_1\";s:1:\"4\";s:22:\"homepage_recent_type_2\";s:4:\"none\";s:23:\"homepage_recent_title_2\";s:0:\"\";s:31:\"homepage_recent_records_count_2\";s:1:\"4\";s:22:\"homepage_recent_type_3\";s:4:\"none\";s:23:\"homepage_recent_title_3\";s:0:\"\";s:31:\"homepage_recent_records_count_3\";s:1:\"4\";s:22:\"homepage_show_tagcloud\";s:1:\"0\";s:23:\"homepage_tagcloud_title\";s:0:\"\";s:23:\"homepage_tagcloud_count\";s:2:\"10\";s:12:\"facebook_url\";s:0:\"\";s:11:\"twitter_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:11:\"youtube_url\";s:0:\"\";s:12:\"mastodon_url\";s:0:\"\";s:16:\"image_decoration\";s:1:\"0\";s:11:\"record_tags\";N;s:17:\"record_tags_count\";s:1:\"2\";s:13:\"browse_layout\";s:4:\"grid\";s:22:\"truncate_body_property\";s:8:\"ellipsis\";s:6:\"banner\";s:36:\"4168989e762b84762543963734f16306.jpg\";}');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_plugins`
--

DROP TABLE IF EXISTS `omeka_plugins`;
CREATE TABLE IF NOT EXISTS `omeka_plugins` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `active` tinyint NOT NULL,
  `version` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_plugins`
--

INSERT INTO `omeka_plugins` (`id`, `name`, `active`, `version`) VALUES
(1, 'Coins', 1, '2.1.1'),
(2, 'DerivativeImages', 1, '2.0'),
(3, 'ExhibitBuilder', 1, '3.6.1'),
(4, 'ShortcodeCarousel', 1, '1.0.1');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_processes`
--

DROP TABLE IF EXISTS `omeka_processes`;
CREATE TABLE IF NOT EXISTS `omeka_processes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `class` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `pid` int UNSIGNED DEFAULT NULL,
  `status` enum('starting','in progress','completed','paused','error','stopped') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `args` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `started` timestamp NOT NULL DEFAULT '1999-12-31 23:00:00',
  `stopped` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `pid` (`pid`),
  KEY `started` (`started`),
  KEY `stopped` (`stopped`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `omeka_records_tags`
--

DROP TABLE IF EXISTS `omeka_records_tags`;
CREATE TABLE IF NOT EXISTS `omeka_records_tags` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `record_id` int UNSIGNED NOT NULL,
  `record_type` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT '',
  `tag_id` int UNSIGNED NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag` (`record_type`,`record_id`,`tag_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `omeka_schema_migrations`
--

DROP TABLE IF EXISTS `omeka_schema_migrations`;
CREATE TABLE IF NOT EXISTS `omeka_schema_migrations` (
  `version` varchar(16) COLLATE utf8mb3_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_schema_migrations`
--

INSERT INTO `omeka_schema_migrations` (`version`) VALUES
('20100401000000'),
('20100810120000'),
('20110113000000'),
('20110124000001'),
('20110301103900'),
('20110328192100'),
('20110426181300'),
('20110601112200'),
('20110627223000'),
('20110824110000'),
('20120112100000'),
('20120220000000'),
('20120221000000'),
('20120224000000'),
('20120224000001'),
('20120402000000'),
('20120516000000'),
('20120612112000'),
('20120623095000'),
('20120710000000'),
('20120723000000'),
('20120808000000'),
('20120808000001'),
('20120813000000'),
('20120914000000'),
('20121007000000'),
('20121015000000'),
('20121015000001'),
('20121018000001'),
('20121110000000'),
('20121218000000'),
('20130422000000'),
('20130426000000'),
('20130429000000'),
('20130701000000'),
('20130809000000'),
('20140304131700'),
('20150211000000'),
('20150310141100'),
('20150814155100'),
('20151118214800'),
('20151209103299'),
('20151209103300'),
('20161209171900'),
('20170331084000'),
('20170405125800'),
('20200127165700');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_search_texts`
--

DROP TABLE IF EXISTS `omeka_search_texts`;
CREATE TABLE IF NOT EXISTS `omeka_search_texts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `record_type` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `record_id` int UNSIGNED NOT NULL,
  `public` tinyint(1) NOT NULL,
  `title` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `text` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `record_name` (`record_type`,`record_id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_search_texts`
--

INSERT INTO `omeka_search_texts` (`id`, `record_type`, `record_id`, `public`, `title`, `text`) VALUES
(1, 'Item', 1, 1, '<strong>tambour ou Nsiméü en Repkag</strong>', '<strong>tambour ou Nsiméü en Repkag</strong> Instrument de musique <p><strong>Medium :</strong> bois, peau de lièvre</p>\r\n<p><strong>Année de création :</strong> 2003</p>\r\n<p><strong>Utilité :</strong> pendant la danse il récite les proverbes, les légendes et faits les éloges</p>\r\n '),
(2, 'Item', 2, 1, '<strong>Petit tam-tam</strong>', '<strong>Petit tam-tam</strong> instrument de musique <strong>Materiaux de fabrication :</strong> bois, peau de lièvre Année de <strong>création :</strong> 2003 <br /><strong>Utilité :</strong> c’est le porteur du message ; il permet d’annoncer l’évènement et faire une sorte d’introduction '),
(3, 'Item', 3, 1, '<strong>collier ou keufang en langue Repkag</strong>', '<strong>collier ou keufang en langue Repkag</strong> Instrument de danse <p><strong>Materiaux de fabrication :</strong> inconnu</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> il est utilisé dans la danse pour montrer la frce de celui qui danse. C’est un trophé qu’on obtient lorsqu’on a rapté une femme.</p> '),
(4, 'Item', 4, 1, '<strong>Tam-tam ou fukong en langue repkag</strong>', '<strong>Tam-tam ou fukong en langue repkag</strong> Instrument de musique <p><strong>Materiaux de fabrication :</strong> bois</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> accompagne le grand tambour</p> '),
(5, 'Item', 5, 1, '<strong>Grelot ou Beubeing en langue locale</strong>', '<strong>Grelot ou Beubeing en langue locale</strong> Instrument de chant et de danse <p><strong>Materiaux de fabrication :</strong> le fer</p>\r\n<p><strong>Date de création :</strong> 1990</p>\r\n<strong>Fonction :</strong> c’est l’objet tenu par le leader du groupe ; il permet de changer le rythme, '),
(6, 'Item', 6, 1, '<strong>Tenue d’un danseur</strong>', '<strong>Tenue d’un danseur</strong> Accessoire de danse <p><strong>Materiaux de fabrication:</strong> peau de mouton</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> elle est utilisée en fonction de la circonstance ou de la thématique qui est portée</p> '),
(7, 'Item', 7, 1, '<strong>Cirage blanc</strong>', '<strong>Cirage blanc</strong> Accessoire de danse Cet outil est utilisé par les danseurs pour décorer le corps notamment les points blancs qui sont appliqués à défaut d’avoir accès à l’argile ou au Kaolin '),
(8, 'Item', 8, 1, '<strong>La jupe pu le Zoko en langue Repkak</strong>', '<strong>La jupe pu le Zoko en langue Repkak</strong> Accessoire de danse <p><strong>Materiaux de fabrication :</strong> feuille de raphia</p>\r\n<p><strong>Date de création :</strong> 2022</p>\r\n<p><strong>Fonction :</strong> c’est une jupe portée par tous les danseurs de sexe confondu pendant la danse</p> '),
(9, 'Item', 9, 1, '<strong>Chapeau</strong>', '<strong>Chapeau</strong> Accessoire de danse <p><strong>Materiaux de fabrication:</strong> plumes d’oiseaux et peau de lièvre</p>\r\n<p><strong>Date de création :</strong> 2021</p>\r\n<p><strong>Fonction :</strong> le chapeau de plume est porté par le leader du groupe et le chapeau en peau de lièvre est porté  par les danseurs masculins du groupe. Il permet de faire la différence entre le leader et les autres danseurs. C’est aussi un élément essentiel dans la connexion entre l’homme et son milieu naturel</p>\r\n<strong>Nb :</strong> il existe plusieurs type de chapeau mais, avons juste pour avoir ceux des danseurs que nous avons interviewé. '),
(10, 'Item', 10, 1, '<strong>Queue de cheval</strong>', '<strong>Queue de cheval</strong> Accessoire de danse <p><strong>Materiaux de fabrication :</strong> poil de chevaux notamment la queue</p>\r\n<p><strong>Date de création :</strong> 2021</p>\r\n<p><strong>Fonction :</strong> objet utilisé par les femmes pendant la danse</p> '),
(11, 'Item', 11, 1, '<strong>Bracelet</strong>', '<strong>Bracelet</strong> Accessoire <p><strong>Materiaux de fabrication :</strong> bois ou l’ivoire tout dépend du  créateur de l’objet</p>\r\n<p><strong>Date de création :</strong> 2019</p>\r\n<p><strong>Fonction :</strong> c’est un bracelet qui est porté par les patriarches notamment ceux qui ont occupé de haute fonction dans la société. il annonce leur mise en retraite, du repos pour d’autres.</p> '),
(12, 'Item', 12, 1, '<strong>Sac en forme de varan</strong>', '<strong>Sac en forme de varan</strong> Accessoire de danse <p><strong>Materiaux de fabrication :</strong> cuir</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> c’est un sac porté par les initié pendant la danse il leur permet d’entrer en contact avec leur anomal totem.</p> '),
(13, 'Item', 13, 1, '<strong>Arc et fleches</strong>', '<strong>Arc et fleches</strong> Instrument de chasse <p><strong>Materiaux de fabrication :</strong> bois de rotin, corde</p>\r\n<p><strong>Date de création :</strong> 2010</p>\r\n<p><strong>Fonction :</strong> il est utilisé pendant les cérémonies des danses guerrières ou pendant les cérémonies de présentation d’une des activités principales du clan qui est la chasse.</p> '),
(14, 'Item', 14, 1, '<strong>Bijoux pour les reins et le cou<br /></strong>', '<strong>Bijoux pour les reins et le cou<br /></strong> Accessoire de décoration, danse <p><strong>Materiaux de fabrication :</strong> perles</p>\r\n<p><strong>Date de création :</strong> 2020</p>\r\n<p><strong>fonction :</strong> objet de décoration chez l’homme et la femme</p>\r\n '),
(15, 'Item', 15, 1, '<strong>Chasse mouche à la main droite du danseur<br /></strong>', '<strong>Chasse mouche à la main droite du danseur<br /></strong> Instrument de danse <p><strong>Materiaux de fabrication :</strong> brindilles de cocotier</p>\r\n<p><strong>Date de création :</strong> 2023</p>\r\n<p><strong>Fonction :</strong> c’est un instrument uniquement réservé aux hommes pendant la danse</p> '),
(16, 'Item', 16, 1, '<strong>Petit tam-tam ou Dièr à fukong en Bepkag</strong>', '<strong>Petit tam-tam ou Dièr à fukong en Bepkag</strong> Instrument de musique <p><strong>Materiaux de fabrication :</strong> bois</p>\r\n<p><strong>Date de création :</strong> 2003</p>\r\n<p><strong>Fonction :</strong> il accompagne le rand tam-tam dans le rythme et aide aussi dans le changement de rythme ou de pas de danse</p> '),
(17, 'Item', 17, 1, '<strong>Tenue traditionnelle</strong>', '<strong>Tenue traditionnelle</strong> Accessoire de danse,  tenue de mariage <p><strong>Materiaux de fabrication :</strong> laine</p>\r\n<p><strong>Date de création :</strong> 2021</p>\r\n<p><strong>Fonction :</strong> sur la tenue en bas il y a la représentation de la cloche des danseurs et au-dessus un masque. Cette tenue est arborée lors d’un évènement spécial notamment le mariage.</p> '),
(18, 'Item', 18, 1, '<strong>Chaussure en caoutchouc</strong>', '<strong>Chaussure en caoutchouc</strong> Accessoire de danse <p><strong>Materiaux de fabrication :</strong> plastique</p>\r\n<p><strong>Date de création :</strong> inconnue</p>\r\n<p><strong>Fonction :</strong> les danseurs utilisent les chaussures en fonction du terrain sur lequel ils doivent danser. Sur cette photo ils devaient danser sur la terre ferme. Ils utilisent les chaussures pour éviter les chutes ou les blessures. Dans d’autres contextes ils peuvent danser pieds-nu.</p>\r\n '),
(19, 'Exhibit', 1, 0, 'Les outils de communication au travers de la danse Bafia', 'Les outils de communication au travers de la danse Bafia <p></p>\r\n<p>   <strong> La danse</strong> est art ancien qui est perpétré d’une génération à une autre. En <strong>Afrique</strong> et au <strong>Cameroun</strong> en particulier, l’industrie de la danse évolue de façon exponentielle ; nos danses qui étaient autre fois des sources d’inspirations et de cohésion sociale sont devenues des outils de propagande qui encouragent à l’individualisme. Depuis la mondialisation, les sources de communication les plus utilisés sont beaucoup plus verbale avec la prolifération des médias. Mais dans ce flux d’éléments, la communication non verbale a été laissée. C’est dans cette optique nous avons dans ce travail présenté les outils de la communication au travers la danse chez les <strong>Bafia.</strong></p>\r\n<p></p> '),
(20, 'ExhibitPage', 1, 0, 'Les instruments de musique et accessoires de danse', '<p style=\"text-align:center;\"></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p> <h5><strong>tambour ou Nsiméü en Repkag</strong></h5> <h5 style=\"text-align:center;\"><strong>Petit tam-tam</strong></h5> <h5 style=\"text-align:center;\"><strong>Petit tam-tam ou Dièr à fukong en Bepkag</strong></h5> <h5 style=\"text-align:center;\"><strong>Grelot ou Beubeing en langue locale</strong></h5> <p style=\"text-align:center;\"></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p>\r\n<p></p> <h5 style=\"text-align:center;\"><strong>collier ou keufang en langue Repkag</strong></h5> <h5 style=\"text-align:center;\"><strong>Tenue d’un danseur</strong></h5> <h5 style=\"text-align:center;\"><span> </span><strong>Chapeau</strong></h5> <h5 style=\"text-align:center;\"><strong>Bijoux pour les reins et le cou</strong></h5> <h5 style=\"text-align:center;\"><strong>Arc et fleches</strong></h5> <h5 style=\"text-align:center;\"><strong>Sac en forme de varan</strong></h5> <h5 style=\"text-align:center;\"><strong>Bracelet</strong></h5> <h5 style=\"text-align:center;\"><strong>Queue de cheval</strong></h5> <h5 style=\"text-align:center;\"><strong>La jupe pu le Zoko en langue Repkak</strong></h5> <h5 style=\"text-align:center;\"><strong>Cirage blanc</strong></h5> <h5 style=\"text-align:center;\"><strong>Tenue d’un danseur</strong></h5> <h5 style=\"text-align:center;\"><strong>collier ou keufang en langue Repkag</strong></h5>      Les instruments de musique et accessoires de danse ');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_sessions`
--

DROP TABLE IF EXISTS `omeka_sessions`;
CREATE TABLE IF NOT EXISTS `omeka_sessions` (
  `id` varchar(128) COLLATE utf8mb3_unicode_ci NOT NULL,
  `modified` bigint DEFAULT NULL,
  `lifetime` int DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_sessions`
--

INSERT INTO `omeka_sessions` (`id`, `modified`, `lifetime`, `data`) VALUES
('aa5oqt1ivrh3cofnp421l5s51j', 1706602690, 1209600, 0x44656661756c747c613a313a7b733a383a227265646972656374223b733a313a222f223b7d5a656e645f417574687c613a313a7b733a373a2273746f72616765223b693a313b7d4f6d656b6153657373696f6e43737266546f6b656e7c613a313a7b733a353a22746f6b656e223b733a33323a223032623563323064656566373463333939653966656232383633646633346265223b7d5f5f5a467c613a313a7b733a34353a225a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f63737266223b613a323a7b733a343a22454e4e48223b693a313b733a333a22454e54223b693a313730363630353337303b7d7d5a656e645f466f726d5f456c656d656e745f486173685f73616c745f7468656d655f636f6e6669675f637372667c613a313a7b733a343a2268617368223b733a33323a226265363235653339373564633932383130326430663938383561393762303938223b7d),
('i9aeht1qimc4jd45kse4os514n', 1708541576, 1209600, '');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_tags`
--

DROP TABLE IF EXISTS `omeka_tags`;
CREATE TABLE IF NOT EXISTS `omeka_tags` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `omeka_users`
--

DROP TABLE IF EXISTS `omeka_users`;
CREATE TABLE IF NOT EXISTS `omeka_users` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `salt` varchar(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `active` tinyint NOT NULL,
  `role` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL DEFAULT 'default',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `active_idx` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `omeka_users`
--

INSERT INTO `omeka_users` (`id`, `username`, `name`, `email`, `password`, `salt`, `active`, `role`) VALUES
(1, 'Kuroshi', 'Super User', 'haroldtetchouang@gmail.com', 'd1bf8bd5a471c8bd313d4c273cd7693a575d5fde', 'c8626f1aa356ca58', 1, 'super');

-- --------------------------------------------------------

--
-- Structure de la table `omeka_users_activations`
--

DROP TABLE IF EXISTS `omeka_users_activations`;
CREATE TABLE IF NOT EXISTS `omeka_users_activations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `omeka_search_texts`
--
ALTER TABLE `omeka_search_texts` ADD FULLTEXT KEY `text` (`text`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
