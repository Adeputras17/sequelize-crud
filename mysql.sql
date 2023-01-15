-- Adminer 4.8.1 MySQL 8.0.30 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP DATABASE IF EXISTS `mysql sequelize`;
CREATE DATABASE `mysql sequelize` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mysql sequelize`;

DROP TABLE IF EXISTS `mysql`;
CREATE TABLE `mysql` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_name` varchar(1000) NOT NULL,
  `user_email` varchar(1000) NOT NULL,
  `user_password` varchar(1000) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `mysql` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1,	'ade',	'adeputraservulus@gmail.com',	'adegh'),
(2,	'anto',	'anto@gmail.com',	'antogh'),
(3,	'anto',	'anti@gmail.com',	'adeswerty'),
(4,	'anti',	'anto@gmail.com',	'adeswerto'),
(5,	'ary',	'ary@gmail.com',	'aryswerto'),
(6,	'ici',	'ici@gmail.com',	'iciswerto'),
(7,	'anggy',	'anggy@gmail.com',	'anggyswerto');

-- 2023-01-08 15:35:41
