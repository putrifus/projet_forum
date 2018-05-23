-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema forum
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `forum` ;

-- -----------------------------------------------------
-- Schema forum
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `forum` DEFAULT CHARACTER SET utf8 ;
USE `forum` ;

-- -----------------------------------------------------
-- Table `forum`.`utilisateur`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `forum`.`utilisateur` ;

CREATE TABLE IF NOT EXISTS `forum`.`utilisateur` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(50) NOT NULL,
  `nom` VARCHAR(25) NOT NULL,
  `prenom` VARCHAR(25) NOT NULL,
  `tranche_d_age` ENUM('-18', '18-25', '+25') NOT NULL,
  `pseudo` VARCHAR(20) NOT NULL,
  `mdp` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `forum`.`score`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `forum`.`score` ;

CREATE TABLE IF NOT EXISTS `forum`.`score` (
  `id` INT NOT NULL,
  `id_utilisateur` INT NOT NULL,
  `score_easy` INT(3) NOT NULL DEFAULT 0,
  `score_medium` INT(3) NOT NULL DEFAULT 0,
  `score_hard` INT(3) NOT NULL DEFAULT 0,
  `score_total` INT(3) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  INDEX `fk_score_to_util_idx` (`id_utilisateur` ASC),
  CONSTRAINT `fk_score_to_util`
    FOREIGN KEY (`id_utilisateur`)
    REFERENCES `forum`.`utilisateur` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `forum`.`question`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `forum`.`question` ;

CREATE TABLE IF NOT EXISTS `forum`.`question` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `question` VARCHAR(400) NOT NULL,
  `reponse` TINYINT(1) NOT NULL,
  `path_photo` VARCHAR(255) NOT NULL,
  `type_questionnaire` ENUM('easy', 'medium', 'hard') NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
