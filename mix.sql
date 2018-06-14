-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server Version:               10.1.31-MariaDB - mariadb.org binary distribution
-- Server Betriebssystem:        Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Exportiere Struktur von Tabelle test.cocktails
CREATE TABLE IF NOT EXISTS `cocktails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `makingdescription` text,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.cocktails: ~8 rows (ungefähr)
/*!40000 ALTER TABLE `cocktails` DISABLE KEYS */;
INSERT INTO `cocktails` (`id`, `title`, `description`, `makingdescription`, `user_id`, `updated_at`, `created_at`) VALUES
	(11, 'Piña Colada', 'Der Piña Colada ist ein populärer, süßer und cremiger Cocktail.', 'Alles, bis auf die Eiswürfel, in einem Shaker gut mischen und in ein Longdrinkglas über die Eiswürfel geben. Zum Schluss noch eine Ananasscheibe auf den Rand des Glases stecken: Fertig!', 7, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(12, 'Swimming Pool', 'Ein sahnig-süßer Cocktail auf Wodka / Rum Basis.', 'Ein Longdrinkglas oder eine Fancy-Glas zur Hälfte mit gestoßenem Eis füllen. Alle Zutaten außer den Früchten und dem Curacao in den Elektromixer geben und solange durchmixen, bis sich Schaum bildet. Die Mischung über das gestoßene Eis in das Glas schütten und gut durchrühren. Jetzt Früchte und den Curasao vorsichtig hinzufügen. Mit Trinkhalm servieren.', 7, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(13, 'Sex on the Beach', 'Fruchtig, süßer Cocktail.', 'Alle Zutaten zusammen mit einigen Eiswürfeln in den Shaker geben und kräftig schütteln. Die Mischung durch das Barsieb in eine Cocktailschale abgießen.', 7, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(14, 'Caipirinha', 'Ein aus Brasilien stammender Cocktail.', 'In einem Caipirinha-Glas oder in einem Tumbler die Limettenviertel mit dem Zucker zusammen zerdrücken. Cachaca zugeben, mit gestoßenem Eis auffüllen und umrühren. Evtl. Soda zugeben', 7, '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(15, 'Tequila Sunrise', 'Fruchtig, süßer Cocktail, welcher seinen Namen aufgrund seiner charakteristischen Farbabstufung hat.', 'Alle Zutaten mit Ausnahme des Grenadinesirups zusammen mit einigen Eiswürfeln im Shaker kräftig schütteln und durch ein Barsieb ins Longdrinkglas auf weitere Eiswürfel abgießen. Den Grenadinesirup vorsichtig über den Drink gießen. Um den "Sonnenaufgang" besonders eindrucksvoll ablaufen zu lassen, mit einem Löffel langsam umrühren. Mit Trinkhalm servieren.', 7, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(16, 'Cuba Libre', NULL, 'Einige Eiswürfel in ein Longdrinkglas geben. Zitronensaft (ruhig etwas weniger, gegebenenfalls nur einige Tropfen) und Rum über die Eiswürfel gießen und je nach Geschmack mit Cola auffüllen. Kurz umrühren. Mit Trinkhalm servieren.', 7, '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(19, 'Long Island Ice Tea', 'Wie ein leckerer Eistee, nur mit Alkohol ;)', 'Alle Zutaten mischen und mit Strohhalm schön anrichten. Evt. Mit Obst verzieren', 12, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(29, 'TestCocktail', 'toller cocktail', 'trinken', 12, '2018-06-05 14:34:12', '2018-06-05 14:34:12');
/*!40000 ALTER TABLE `cocktails` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.cocktail_recipebook
CREATE TABLE IF NOT EXISTS `cocktail_recipebook` (
  `recipebook_id` int(11) NOT NULL,
  `cocktail_id` int(11) NOT NULL,
  PRIMARY KEY (`recipebook_id`,`cocktail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.cocktail_recipebook: ~2 rows (ungefähr)
/*!40000 ALTER TABLE `cocktail_recipebook` DISABLE KEYS */;
INSERT INTO `cocktail_recipebook` (`recipebook_id`, `cocktail_id`) VALUES
	(1, 14),
	(6, 19);
/*!40000 ALTER TABLE `cocktail_recipebook` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.ingredients
CREATE TABLE IF NOT EXISTS `ingredients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `unit` varchar(20) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.ingredients: ~40 rows (ungefähr)
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` (`id`, `title`, `unit`, `updated_at`, `created_at`) VALUES
	(1, 'Vodka', 'ml', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(2, 'Rum', 'ml', '2017-12-12 10:52:52', '2017-12-12 10:52:52'),
	(3, 'Zitrone', 'Stück', '2017-12-12 10:55:07', '2017-12-12 10:55:07'),
	(4, 'Weißer Rum', 'ml', '2017-12-12 11:50:15', '2017-12-12 11:50:15'),
	(5, 'Kokosmilch', 'ml', '2017-12-12 11:50:15', '2017-12-12 11:50:15'),
	(6, 'Sahne', 'ml', '2017-12-12 11:50:15', '2017-12-12 11:50:15'),
	(7, 'Ananassaft', 'ml', '2017-12-12 11:50:15', '2017-12-12 11:50:15'),
	(8, 'Kokosnusscreme', 'ml', '2017-12-12 11:50:15', '2017-12-12 11:50:15'),
	(9, 'Ananasscheibe', 'Stück', '2017-12-12 11:50:15', '2017-12-12 11:50:15'),
	(10, 'Wodka', 'ml', '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(11, 'Blue Curacao', 'ml', '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(12, 'gestoßenes Eis', 'Stück', '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(13, 'Pfirsich Likör', 'ml', '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(14, 'Cranberrysaft', 'ml', '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(15, 'Orangensaft', 'ml', '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(16, 'Eiswürfel', 'Stück', '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(17, 'Orangenscheibe', 'Stück', '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(18, 'Cachaca', 'ml', '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(19, 'Rohrzocker', 'EL', '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(20, 'Limette', 'Stück', '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(21, 'Tequilla', 'ml', '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(22, 'Zitronensaft', 'ml', '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(23, 'Grenadinesirup', 'ml', '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(24, 'Rum (weiß)', 'ml', '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(25, 'Cola', 'ml', '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(26, 'Tequila', 'ml', '2017-12-13 11:55:18', '2017-12-13 11:55:18'),
	(27, 'Cointreau', 'ml', '2017-12-13 11:55:18', '2017-12-13 11:55:18'),
	(28, 'Gin', 'ml', '2017-12-13 11:55:18', '2017-12-13 11:55:18'),
	(29, 'brauner Rum', 'ml', '2017-12-13 14:31:53', '2017-12-13 14:31:53'),
	(30, 'Orangenlikör', 'ml', '2017-12-13 14:31:53', '2017-12-13 14:31:53'),
	(31, 'Limettensaft, frisch gepresst', 'ml', '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(32, 'testingredient1', 'ml', '2017-12-14 08:45:16', '2017-12-14 08:45:16'),
	(33, 'ice', 'Stück', '2017-12-14 08:45:16', '2017-12-14 08:45:16'),
	(37, 'Curshed Ice', 'g', '2018-04-23 19:18:40', '2018-04-23 19:18:40'),
	(38, 'Zyklon B', 'EL', '2018-04-23 19:36:27', '2018-04-23 19:36:27'),
	(39, 'Bernstein Kandis', 'Stück', '2018-04-23 19:36:27', '2018-04-23 19:36:27'),
	(40, 'Wasser', 'ml', '2018-04-23 19:36:27', '2018-04-23 19:36:27'),
	(41, 'Doppelkorn', 'ml', '2018-04-23 19:36:27', '2018-04-23 19:36:27'),
	(42, 'Absinth', 'ml', '2018-04-23 19:36:27', '2018-04-23 19:36:27'),
	(43, 'Apfelsaft Naturtrüb', 'ml', '2018-04-23 19:36:27', '2018-04-23 19:36:27');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.ingredient_combinations
CREATE TABLE IF NOT EXISTS `ingredient_combinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` int(11) NOT NULL,
  `cocktail_id` int(11) NOT NULL,
  `ingredient_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.ingredient_combinations: ~49 rows (ungefähr)
/*!40000 ALTER TABLE `ingredient_combinations` DISABLE KEYS */;
INSERT INTO `ingredient_combinations` (`id`, `amount`, `cocktail_id`, `ingredient_id`, `created_at`, `updated_at`) VALUES
	(16, 40, 11, 4, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(17, 20, 11, 5, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(18, 20, 11, 6, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(19, 90, 11, 7, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(20, 40, 11, 8, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(21, 1, 11, 9, '2017-12-12 11:50:35', '2017-12-12 11:50:35'),
	(22, 20, 12, 10, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(23, 40, 12, 4, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(24, 10, 12, 11, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(25, 10, 12, 6, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(26, 40, 12, 7, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(27, 20, 12, 8, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(28, 1, 12, 12, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(29, 1, 12, 9, '2017-12-12 11:54:51', '2017-12-12 11:54:51'),
	(30, 40, 13, 10, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(31, 40, 13, 13, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(32, 80, 13, 14, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(33, 80, 13, 15, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(34, 3, 13, 16, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(35, 1, 13, 17, '2017-12-12 11:56:59', '2017-12-12 11:56:59'),
	(36, 50, 14, 18, '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(37, 2, 14, 19, '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(38, 1, 14, 20, '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(39, 1, 14, 12, '2017-12-12 12:03:37', '2017-12-12 12:03:37'),
	(40, 60, 15, 21, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(41, 10, 15, 22, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(42, 120, 15, 15, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(43, 20, 15, 23, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(44, 1, 15, 16, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(45, 1, 15, 17, '2017-12-12 12:05:52', '2017-12-12 12:05:52'),
	(46, 40, 16, 24, '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(47, 5, 16, 22, '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(48, 120, 16, 25, '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(49, 3, 16, 16, '2017-12-12 12:07:18', '2017-12-12 12:07:18'),
	(64, 20, 19, 10, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(65, 20, 19, 28, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(66, 20, 19, 29, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(67, 20, 19, 26, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(68, 20, 19, 30, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(69, 30, 19, 31, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(70, 5, 19, 16, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(71, 50, 19, 25, '2017-12-13 14:32:44', '2017-12-13 14:32:44'),
	(74, 2300, 22, 34, '2018-04-23 19:18:39', '2018-04-23 19:18:39'),
	(75, 3, 22, 35, '2018-04-23 19:18:39', '2018-04-23 19:18:39'),
	(76, 450, 22, 36, '2018-04-23 19:18:39', '2018-04-23 19:18:39'),
	(77, 100, 22, 1, '2018-04-23 19:18:40', '2018-04-23 19:18:40'),
	(78, 20, 22, 22, '2018-04-23 19:18:40', '2018-04-23 19:18:40'),
	(79, 80, 22, 37, '2018-04-23 19:18:40', '2018-04-23 19:18:40'),
	(92, 100, 29, 42, '2018-06-05 14:34:12', '2018-06-05 14:34:12');
/*!40000 ALTER TABLE `ingredient_combinations` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.pictures
CREATE TABLE IF NOT EXISTS `pictures` (
  `Cocktail_Cocktail_ID` int(11) NOT NULL,
  `picture` mediumblob NOT NULL,
  `title` varchar(20) NOT NULL,
  PRIMARY KEY (`Cocktail_Cocktail_ID`),
  CONSTRAINT `fk_Bildbeschreibung_Cocktail` FOREIGN KEY (`Cocktail_Cocktail_ID`) REFERENCES `cocktails` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.pictures: ~0 rows (ungefähr)
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.recipebooks
CREATE TABLE IF NOT EXISTS `recipebooks` (
  `title` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.recipebooks: ~3 rows (ungefähr)
/*!40000 ALTER TABLE `recipebooks` DISABLE KEYS */;
INSERT INTO `recipebooks` (`title`, `id`, `user_id`, `updated_at`, `created_at`) VALUES
	('Mein Rezeptbuch', 1, 12, '2018-03-25 19:51:12', '2018-03-25 19:51:12'),
	('Mein zweites Rezeptbuch', 2, 12, '2018-03-25 19:52:44', '2018-03-25 19:52:44'),
	('TestRezeptbuch', 6, 12, '2018-06-08 12:16:45', '2018-06-08 12:16:45');
/*!40000 ALTER TABLE `recipebooks` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle test.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `role` varchar(30) NOT NULL DEFAULT 'fe-user',
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `remember_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Nutzername_UNIQUE` (`name`),
  UNIQUE KEY `Passwort_UNIQUE` (`password`),
  UNIQUE KEY `Email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- Exportiere Daten aus Tabelle test.users: ~1 rows (ungefähr)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `role`, `email`, `password`, `updated_at`, `created_at`, `remember_token`) VALUES
	(12, 'Admin', 'admin', 'admin@mail.com', '$2y$10$nHLMMWaHchybQd0r4T.apeKlOpgMY4J4skKScfLz1pism9xZQzTWm', '2018-06-14 10:32:01', '2018-03-18 20:11:40', '0gfljHRkfZpir7zGyou3bjNGStlfopsSDfVrKOBAU5BkD6NE2q7a0CZNAMM3');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
