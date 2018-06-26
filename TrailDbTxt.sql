-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema trailsdb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema trailsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `trailsdb` DEFAULT CHARACTER SET utf8 ;
USE `trailsdb` ;

-- -----------------------------------------------------
-- Table `trailsdb`.`trails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trailsdb`.`trails` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NULL,
  `description` VARCHAR(255) NULL,
  `length` DOUBLE NULL,
  `elevation` INT NULL,
  `longitude` DOUBLE NULL,
  `latitude` DOUBLE NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
