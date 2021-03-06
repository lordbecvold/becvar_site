
-- Adminer 4.8.1 MySQL 10.3.34-MariaDB-0ubuntu0.20.04.1 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `hash_gen`;
CREATE TABLE `hash_gen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hashType` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hash` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `image_uploader`;
CREATE TABLE `image_uploader` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imgSpec` char(255) CHARACTER SET utf8 NOT NULL,
  `image` longtext COLLATE utf8_czech_ci NOT NULL,
  `date` char(255) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `value` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `date` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `remote_addr` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `status` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `email` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `message` longtext CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `time` char(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  `status` char(255) CHARACTER SET utf8 COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_czech_ci;


DROP TABLE IF EXISTS `pastes`;
CREATE TABLE `pastes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `link` char(255) CHARACTER SET utf8 NOT NULL,
  `spec` char(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `todos`;
CREATE TABLE `todos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` char(255) COLLATE utf8_czech_ci NOT NULL,
  `status` char(255) COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(255) CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `password` char(255) CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `role` char(255) CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `image_base64` longtext CHARACTER SET cp1250 COLLATE cp1250_czech_cs NOT NULL,
  `token` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `visitors`;
CREATE TABLE `visitors` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `visited_sites` int(255) NOT NULL,
  `first_visit` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `last_visit` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `browser` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `os` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `location` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `banned` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  `ip_adress` char(255) CHARACTER SET cp1250 COLLATE cp1250_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2022-07-08 08:51:25