-- Adminer 4.2.0 MySQL dump
CREATE DATABASE grupp1;

CREATE USER 'grupp1'@'localhost' IDENTIFIED BY 'grupp1';
GRANT ALL PRIVILEGES ON grupp1 . * TO 'grupp1'@'localhost';


SET NAMES utf8mb4;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1,	'Spik',	'Många fina spikar'),
(2,	'Hammare',	'Oj vad fina');

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `products` (`id`, `name`, `category_id`, `price`, `description`) VALUES
(1,	'2 tum',	1,	2000,	'Box om 4000st spikar. Rostfria'),
(2,	'8 tum spik',	1,	515,	'Tre spikar'),
(3,	'Hultafors special',	2,	459,	'En bra jäkel'),
(4,	'Fender',	2,	889,	'Bra den');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`username`, `password`, `name`, `email`) VALUES
('masse',	'masse',	'Mattias',	'masse@hej.ru'),
('alex',	'alex',	'Alex Hoeing',	'alex@hej.ug');

-- 2015-03-02 09:40:20
