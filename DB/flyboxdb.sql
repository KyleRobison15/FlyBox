-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema flyboxdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `flyboxdb` ;

-- -----------------------------------------------------
-- Schema flyboxdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `flyboxdb` DEFAULT CHARACTER SET utf8 ;
USE `flyboxdb` ;

-- -----------------------------------------------------
-- Table `fly`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `fly` ;

CREATE TABLE IF NOT EXISTS `fly` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `first_name` VARCHAR(255) NULL,
  `last_name` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `active` TINYINT NULL,
  `role` VARCHAR(45) NULL,
  `create_date` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS angler@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'angler'@'localhost' IDENTIFIED BY 'angler';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'angler'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `fly`
-- -----------------------------------------------------
START TRANSACTION;
USE `flyboxdb`;
INSERT INTO `fly` (`id`, `name`) VALUES (1, 'Pat\'s Rubber Legs');
INSERT INTO `fly` (`id`, `name`) VALUES (2, 'UV Scud');
INSERT INTO `fly` (`id`, `name`) VALUES (3, 'RS2');
INSERT INTO `fly` (`id`, `name`) VALUES (4, 'Mercury Flashback Pheasant Tail Nymph');
INSERT INTO `fly` (`id`, `name`) VALUES (5, 'Chubby Chernobyl');

COMMIT;


-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `flyboxdb`;
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `create_date`) VALUES (1, 'TestUser1', 'TestUser1', 'Bob', 'Smith', 'bobsmith@example.com', 1, 'standard', NULL);
INSERT INTO `user` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `active`, `role`, `create_date`) VALUES (2, 'TestUser2', 'TestUser2', 'Jane', 'Smith', 'janesmith@example.com', 1, 'standard', NULL);

COMMIT;

