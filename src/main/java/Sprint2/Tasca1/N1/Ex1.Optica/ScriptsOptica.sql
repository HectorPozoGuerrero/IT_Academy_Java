-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Proveedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Proveedor` (
  `id_prov` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `Telf` INT NOT NULL,
  `fax` INT NULL,
  `nif` VARCHAR(9) NOT NULL,
  PRIMARY KEY (`id_prov`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ColorMontura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ColorMontura` (
  `idColor` INT NOT NULL AUTO_INCREMENT,
  `color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idColor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoMontura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoMontura` (
  `idTipoMontura` INT NOT NULL AUTO_INCREMENT,
  `tipoMontura` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoMontura`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ColorCristal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ColorCristal` (
  `idColorCristal` INT NOT NULL AUTO_INCREMENT,
  `colorCristal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idColorCristal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Marcas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Marcas` (
  `idMarcas` INT NOT NULL AUTO_INCREMENT,
  `nombreMarca` VARCHAR(45) NOT NULL,
  `id_proveedor` INT NOT NULL,
  PRIMARY KEY (`idMarcas`),
  INDEX `fk_Marcas_Proveedor1_idx` (`id_proveedor` ASC) ,
  CONSTRAINT `fk_Marcas_Proveedor1`
    FOREIGN KEY (`id_proveedor`)
    REFERENCES `mydb`.`Proveedor` (`id_prov`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `idCliente` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NOT NULL,
  `telf` INT NOT NULL,
  `mail` VARCHAR(45) NOT NULL,
  `fecRegistro` DATE NOT NULL,
  `recomendado` VARCHAR(45) NULL,
  PRIMARY KEY (`idCliente`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Vendedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Vendedor` (
  `idVendedor` INT NOT NULL AUTO_INCREMENT,
  `nombreVendedor` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idVendedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Gafas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Gafas` (
  `idGafa` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NOT NULL,
  `idMarcas` INT NOT NULL,
  `gradCristal1` FLOAT NOT NULL,
  `gradCristal2` FLOAT NOT NULL,
  `idTipoMontura` INT NOT NULL,
  `idcolorMontura` INT NOT NULL,
  `ColorCristal1` INT NOT NULL,
  `ColorCrista2` INT NOT NULL,
  `precio` FLOAT NOT NULL,
  `idVendedor` INT NOT NULL,
  `fechaVenta` VARCHAR(45) NOT NULL,
  INDEX `fk_Gafas_ColorMontura_idx` (`idcolorMontura` ASC) ,
  INDEX `fk_Gafas_TipoMontura1_idx` (`idTipoMontura` ASC) ,
  PRIMARY KEY (`idGafa`),
  INDEX `fk_Gafas_ColorCristal1_idx` (`ColorCristal1` ASC) ,
  INDEX `fk_Gafas_ColorCristal2_idx` (`ColorCrista2` ASC) ,
  INDEX `fk_Gafas_Marcas1_idx` (`idMarcas` ASC) ,
  INDEX `fk_Gafas_Cliente1_idx` (`idCliente` ASC) ,
  INDEX `fk_Gafas_Vendedor1_idx` (`idVendedor` ASC) ,
  CONSTRAINT `fk_Gafas_ColorMontura`
    FOREIGN KEY (`idcolorMontura`)
    REFERENCES `mydb`.`ColorMontura` (`idColor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gafas_TipoMontura1`
    FOREIGN KEY (`idTipoMontura`)
    REFERENCES `mydb`.`TipoMontura` (`idTipoMontura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gafas_ColorCristal1`
    FOREIGN KEY (`ColorCristal1`)
    REFERENCES `mydb`.`ColorCristal` (`idColorCristal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gafas_ColorCristal2`
    FOREIGN KEY (`ColorCrista2`)
    REFERENCES `mydb`.`ColorCristal` (`idColorCristal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gafas_Marcas1`
    FOREIGN KEY (`idMarcas`)
    REFERENCES `mydb`.`Marcas` (`idMarcas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gafas_Cliente1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `mydb`.`Cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Gafas_Vendedor1`
    FOREIGN KEY (`idVendedor`)
    REFERENCES `mydb`.`Vendedor` (`idVendedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
