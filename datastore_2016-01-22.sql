# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Hôte: 127.0.0.1 (MySQL 5.5.46-0ubuntu0.14.04.2)
# Base de données: datastore
# Temps de génération: 2016-01-22 09:52:35 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Affichage de la table criteres
# ------------------------------------------------------------

DROP TABLE IF EXISTS `criteres`;

CREATE TABLE `criteres` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `criteres` WRITE;
/*!40000 ALTER TABLE `criteres` DISABLE KEYS */;

INSERT INTO `criteres` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(5,'Chiffre d\'affaires/Effectif salarié','2016-01-22 09:41:23','2016-01-22 09:41:23');

/*!40000 ALTER TABLE `criteres` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table dataview
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dataview`;

CREATE TABLE `dataview` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `secteur_id` int(10) unsigned NOT NULL,
  `critere_id` int(10) unsigned NOT NULL,
  `value_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `dataview_secteur_id_foreign` (`secteur_id`),
  KEY `dataview_critere_id_foreign` (`critere_id`),
  KEY `dataview_value_id_foreign` (`value_id`),
  CONSTRAINT `dataview_critere_id_foreign` FOREIGN KEY (`critere_id`) REFERENCES `criteres` (`id`),
  CONSTRAINT `dataview_secteur_id_foreign` FOREIGN KEY (`secteur_id`) REFERENCES `secteurs` (`id`),
  CONSTRAINT `dataview_value_id_foreign` FOREIGN KEY (`value_id`) REFERENCES `valueview` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `dataview` WRITE;
/*!40000 ALTER TABLE `dataview` DISABLE KEYS */;

INSERT INTO `dataview` (`id`, `year`, `secteur_id`, `critere_id`, `value_id`, `created_at`, `updated_at`)
VALUES
	(5,'2013',6,5,4,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(6,'2013',7,5,5,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(7,'2013',8,5,6,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(8,'2013',9,5,7,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(9,'2013',6,5,8,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(10,'2013',6,5,9,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(11,'2013',6,5,10,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(12,'2013',6,5,11,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(13,'2013',7,5,12,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(14,'2013',7,5,13,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(15,'2013',7,5,14,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(16,'2013',7,5,15,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(17,'2013',8,5,16,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(18,'2013',8,5,17,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(19,'2013',8,5,18,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(20,'2013',8,5,19,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(21,'2013',9,5,20,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(22,'2013',9,5,21,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(23,'2013',9,5,22,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(24,'2013',9,5,23,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(25,'2012',6,5,24,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(26,'2012',7,5,25,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(27,'2012',8,5,26,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(28,'2012',9,5,27,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(29,'2012',6,5,28,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(30,'2012',6,5,29,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(31,'2012',6,5,30,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(32,'2012',6,5,31,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(33,'2012',7,5,32,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(34,'2012',7,5,33,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(35,'2012',7,5,34,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(36,'2012',7,5,35,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(37,'2012',8,5,36,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(38,'2012',8,5,37,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(39,'2012',8,5,38,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(40,'2012',8,5,39,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(41,'2012',9,5,40,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(42,'2012',9,5,41,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(43,'2012',9,5,42,'2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(44,'2012',9,5,43,'2016-01-22 09:41:23','2016-01-22 09:41:23');

/*!40000 ALTER TABLE `dataview` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `group_name`, `description`, `created_at`, `updated_at`)
VALUES
	(1,'Admin','Administrator','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(2,'Moderator','Moderator','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(3,'User','User','2016-01-19 09:04:03','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`version`)
VALUES
	('20151221231934'),
	('20151222115832'),
	('20151222221225'),
	('20151223205740'),
	('20160111165429'),
	('20160113004609'),
	('20160113004636'),
	('20160113095057');

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `routes`;

CREATE TABLE `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;

INSERT INTO `routes` (`id`, `route`, `page`, `action`, `address`, `created_at`, `updated_at`)
VALUES
	(1,'admin','user','index','App\\Action\\Admin:index','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(2,'user','user','index','App\\Action\\Admin:users','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(3,'useredit','user','edit','App\\Action\\Admin:userEdit','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(4,'userdelete','user','delete','App\\Action\\Admin:userDelete','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(5,'group','group','index','App\\Action\\Admin:groups','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(6,'groupedit','group','edit','App\\Action\\Admin:groupEdit','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(7,'groupdelete','group','delete','App\\Action\\Admin:groupDelete','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(8,'permission','permission','index','App\\Action\\Admin:permissions','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(9,'permissionedit','permission','edit','App\\Action\\Admin:permissionEdit','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(10,'permissiondelete','permission','delete','App\\Action\\Admin:permissionDelete','2016-01-19 09:04:03','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table secteurs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `secteurs`;

CREATE TABLE `secteurs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sous_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `secteurs` WRITE;
/*!40000 ALTER TABLE `secteurs` DISABLE KEYS */;

INSERT INTO `secteurs` (`id`, `name`, `created_at`, `updated_at`, `sous_name`)
VALUES
	(6,'Édition','2016-01-22 09:41:23','2016-01-22 09:41:23',NULL),
	(7,'Télécommunications','2016-01-22 09:41:23','2016-01-22 09:41:23',NULL),
	(8,'Programmation, conseil et autres activités informatiques','2016-01-22 09:41:23','2016-01-22 09:41:23',NULL),
	(9,'Services d\'information','2016-01-22 09:41:23','2016-01-22 09:41:23',NULL);

/*!40000 ALTER TABLE `secteurs` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `username`, `email`, `password`, `group_id`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'admin','admin@slim.dev','$2y$10$ElXh/aFKLN1Vf4t2G0DTnupWcEpS2/2OP8fIsQXjHp7KXE3bjcUke',1,1,'2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(2,'moderator','moderator@slim.dev','$2y$10$ElXh/aFKLN1Vf4t2G0DTnupWcEpS2/2OP8fIsQXjHp7KXE3bjcUke',1,1,'2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(3,'user','user@slim.dev','$2y$10$ElXh/aFKLN1Vf4t2G0DTnupWcEpS2/2OP8fIsQXjHp7KXE3bjcUke',1,1,'2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(4,'bo','bo@mail.com','$2y$10$.FpJ4jR3ZUvdJWBwenKtuuwXEEfoqna06ARwUePnZqnt6j3dpxP2m',3,0,'2016-01-19 09:12:37','2016-01-19 09:12:37');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table users_permission
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users_permission`;

CREATE TABLE `users_permission` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `users_permission` WRITE;
/*!40000 ALTER TABLE `users_permission` DISABLE KEYS */;

INSERT INTO `users_permission` (`id`, `group_id`, `page`, `action`, `created_at`, `updated_at`)
VALUES
	(1,1,'user','index','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(2,1,'user','edit','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(3,1,'user','delete','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(4,1,'group','index','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(5,1,'group','edit','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(6,1,'group','delete','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(7,1,'permission','index','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(8,1,'permission','edit','2016-01-19 09:04:03','0000-00-00 00:00:00'),
	(9,1,'permission','delete','2016-01-19 09:04:03','0000-00-00 00:00:00');

/*!40000 ALTER TABLE `users_permission` ENABLE KEYS */;
UNLOCK TABLES;


# Affichage de la table valueview
# ------------------------------------------------------------

DROP TABLE IF EXISTS `valueview`;

CREATE TABLE `valueview` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` int(10) unsigned NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `valueview` WRITE;
/*!40000 ALTER TABLE `valueview` DISABLE KEYS */;

INSERT INTO `valueview` (`id`, `type`, `value`, `created_at`, `updated_at`)
VALUES
	(4,0,'241','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(5,0,'433','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(6,0,'178','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(7,0,'186','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(8,1,'229','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(9,2,'185','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(10,3,'222','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(11,4,'278','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(12,1,'486','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(13,2,'305','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(14,3,'1104','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(15,4,'385','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(16,1,'251','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(17,2,'154','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(18,3,'186','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(19,4,'163','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(20,1,'235','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(21,2,'149','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(22,3,'199','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(23,4,'158','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(24,0,'243','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(25,0,'476','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(26,0,'178','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(27,0,'194','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(28,1,'243','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(29,2,'170','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(30,3,'222','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(31,4,'285','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(32,1,'713','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(33,2,'598','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(34,3,'479','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(35,4,'468','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(36,1,'247','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(37,2,'176','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(38,3,'183','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(39,4,'163','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(40,1,'245','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(41,2,'172','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(42,3,'201','2016-01-22 09:41:23','2016-01-22 09:41:23'),
	(43,4,'171','2016-01-22 09:41:23','2016-01-22 09:41:23');

/*!40000 ALTER TABLE `valueview` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
