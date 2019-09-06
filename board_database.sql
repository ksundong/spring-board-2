/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- board Database Structure
CREATE DATABASE IF NOT EXISTS `board` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `board`;

-- Table board.posts Structure
CREATE TABLE `posts` (
	`id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`parent_id` INT(10) UNSIGNED NOT NULL,
	`depth` INT(10) UNSIGNED NOT NULL,
	`board_id` INT(10) UNSIGNED NOT NULL,
	`subject` VARCHAR(100) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`content` TEXT NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`created_datetime` DATETIME NOT NULL,
	`created_user_id` INT(10) UNSIGNED NOT NULL,
	`updated_datetime` DATETIME NOT NULL,
	`updated_user_id` INT(10) UNSIGNED NOT NULL,
	`hit` INT(10) UNSIGNED NOT NULL DEFAULT 0,
	`delete` TINYINT(1) NOT NULL DEFAULT 0,
	`thumbnail_id` INT(10) UNSIGNED NULL DEFAULT NULL,
	`file_id` INT(10) UNSIGNED NULL DEFAULT NULL,
	PRIMARY KEY (`id`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

-- Table board.user Structure
CREATE TABLE `user` (
	`user_id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
	`login_id` VARCHAR(20) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_name` VARCHAR(30) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`user_password` VARCHAR(120) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`email` VARCHAR(128) NOT NULL COLLATE 'utf8mb4_unicode_ci',
	`authentication` TINYINT(1) NOT NULL DEFAULT 0,
	`authorization` TINYINT(1) NOT NULL DEFAULT 0,
	`retry_count` SMALLINT(6) NOT NULL DEFAULT 0,
	`password_reset` TINYINT(1) NOT NULL DEFAULT 0,
	`delete` TINYINT(1) NOT NULL DEFAULT 0,
	PRIMARY KEY (`user_id`),
	UNIQUE INDEX `login_id` (`login_id`),
	UNIQUE INDEX `user_name` (`user_name`),
	UNIQUE INDEX `email` (`email`)
)
COLLATE='utf8mb4_unicode_ci'
ENGINE=InnoDB
;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
