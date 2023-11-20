-- MySQL Script generated by MySQL Workbench
-- Mon Nov 20 00:02:34 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema if0_35452623_thanos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema if0_35452623_thanos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `if0_35452623_thanos` DEFAULT CHARACTER SET utf8mb4 ;
USE `if0_35452623_thanos` ;

-- -----------------------------------------------------
-- Table `if0_35452623_thanos`.`projetos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `if0_35452623_thanos`.`projetos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `projeto` VARCHAR(245) NOT NULL,
  `link` VARCHAR(245) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = MEMORY
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
