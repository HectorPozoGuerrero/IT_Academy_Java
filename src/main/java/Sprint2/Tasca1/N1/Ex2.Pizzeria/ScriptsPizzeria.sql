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
  INDEX `fk_Marcas_Proveedor1_idx` (`id_proveedor` ASC) VISIBLE,
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
  INDEX `fk_Gafas_ColorMontura_idx` (`idcolorMontura` ASC) VISIBLE,
  INDEX `fk_Gafas_TipoMontura1_idx` (`idTipoMontura` ASC) VISIBLE,
  PRIMARY KEY (`idGafa`),
  INDEX `fk_Gafas_ColorCristal1_idx` (`ColorCristal1` ASC) VISIBLE,
  INDEX `fk_Gafas_ColorCristal2_idx` (`ColorCrista2` ASC) VISIBLE,
  INDEX `fk_Gafas_Marcas1_idx` (`idMarcas` ASC) VISIBLE,
  INDEX `fk_Gafas_Cliente1_idx` (`idCliente` ASC) VISIBLE,
  INDEX `fk_Gafas_Vendedor1_idx` (`idVendedor` ASC) VISIBLE,
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


-- -----------------------------------------------------
-- Table `mydb`.`Provincia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Provincia` (
  `idProvincia` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idProvincia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Localidad`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Localidad` (
  `idLocalidad` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `idProvincia` INT NOT NULL,
  PRIMARY KEY (`idLocalidad`),
  INDEX `fk_Localidad_Provincia1_idx` (`idProvincia` ASC) VISIBLE,
  CONSTRAINT `fk_Localidad_Provincia1`
    FOREIGN KEY (`idProvincia`)
    REFERENCES `mydb`.`Provincia` (`idProvincia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  `codPostal` INT NOT NULL,
  `idLocalidad` INT NOT NULL,
  `telf` INT NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `fk_Clientes_Localidad1_idx` (`idLocalidad` ASC) VISIBLE,
  UNIQUE INDEX `telf_UNIQUE` (`telf` ASC) VISIBLE,
  CONSTRAINT `fk_Clientes_Localidad1`
    FOREIGN KEY (`idLocalidad`)
    REFERENCES `mydb`.`Localidad` (`idLocalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoComanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoComanda` (
  `idTipoComanda` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoComanda`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoEmpleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoEmpleado` (
  `idTipoEmpleado` INT NOT NULL AUTO_INCREMENT,
  `nombreTipoEmpleado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoEmpleado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `idEmpleado` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellidos` VARCHAR(45) NULL,
  `nif` VARCHAR(45) NOT NULL,
  `telf` VARCHAR(45) NOT NULL,
  `idTipoEmpleado` INT NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  INDEX `fk_Empleado_TipoEmpleado1_idx` (`idTipoEmpleado` ASC) VISIBLE,
  UNIQUE INDEX `nif_UNIQUE` (`nif` ASC) VISIBLE,
  UNIQUE INDEX `telf_UNIQUE` (`telf` ASC) VISIBLE,
  CONSTRAINT `fk_Empleado_TipoEmpleado1`
    FOREIGN KEY (`idTipoEmpleado`)
    REFERENCES `mydb`.`TipoEmpleado` (`idTipoEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comanda` (
  `idComanda` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NOT NULL,
  `fecha` DATE NOT NULL,
  `idTipoComanda` INT NOT NULL,
  `precio` FLOAT NOT NULL,
  `horaEntregaDomicilio` DATETIME(20) NULL,
  `idRepartidor` INT NULL,
  PRIMARY KEY (`idComanda`),
  INDEX `fk_Comanda_Clientes1_idx` (`idCliente` ASC) VISIBLE,
  INDEX `fk_Comanda_TipoComanda1_idx` (`idTipoComanda` ASC) VISIBLE,
  INDEX `fk_Comanda_Empleado1_idx` (`idRepartidor` ASC) VISIBLE,
  CONSTRAINT `fk_Comanda_Clientes1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `mydb`.`Clientes` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comanda_TipoComanda1`
    FOREIGN KEY (`idTipoComanda`)
    REFERENCES `mydb`.`TipoComanda` (`idTipoComanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comanda_Empleado1`
    FOREIGN KEY (`idRepartidor`)
    REFERENCES `mydb`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoProducto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoProducto` (
  `idTipoProducto` INT NOT NULL AUTO_INCREMENT,
  `nombreTipoProducto` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoProducto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`CategoriaPizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`CategoriaPizza` (
  `idCategoriaPizza` INT NOT NULL AUTO_INCREMENT,
  `nombreCatPizza` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoriaPizza`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Producto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Producto` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `nombreProducto` VARCHAR(45) NOT NULL,
  `idTipoProducto` INT NOT NULL,
  `idCategoriaPizza` INT NULL,
  `descripcion` VARCHAR(100) NULL,
  `img` VARBINARY(8000) NULL,
  `precio` FLOAT NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `fk_Producto_TipoProducto1_idx` (`idTipoProducto` ASC) VISIBLE,
  INDEX `fk_Producto_CategoriaPizza1_idx` (`idCategoriaPizza` ASC) VISIBLE,
  CONSTRAINT `fk_Producto_TipoProducto1`
    FOREIGN KEY (`idTipoProducto`)
    REFERENCES `mydb`.`TipoProducto` (`idTipoProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Producto_CategoriaPizza1`
    FOREIGN KEY (`idCategoriaPizza`)
    REFERENCES `mydb`.`CategoriaPizza` (`idCategoriaPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`LineasComanda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`LineasComanda` (
  `idLineaComanda` INT NOT NULL AUTO_INCREMENT,
  `idComanda` INT NOT NULL,
  `idProducto` INT NOT NULL,
  `cantidad` INT NOT NULL,
  PRIMARY KEY (`idLineaComanda`),
  INDEX `fk_Comanda_has_LineasComanda_Comanda1_idx` (`idComanda` ASC) VISIBLE,
  INDEX `fk_Comanda_has_LineasComanda_Producto1_idx` (`idProducto` ASC) VISIBLE,
  CONSTRAINT `fk_Comanda_has_LineasComanda_Comanda1`
    FOREIGN KEY (`idComanda`)
    REFERENCES `mydb`.`Comanda` (`idComanda`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comanda_has_LineasComanda_Producto1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `mydb`.`Producto` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tienda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tienda` (
  `idTienda` INT NOT NULL AUTO_INCREMENT,
  `direccion` VARCHAR(45) NOT NULL,
  `codPostal` INT NOT NULL,
  `idLocalidad` INT NOT NULL,
  PRIMARY KEY (`idTienda`),
  INDEX `fk_Tienda_Localidad1_idx` (`idLocalidad` ASC) VISIBLE,
  UNIQUE INDEX `direccion_UNIQUE` (`direccion` ASC) VISIBLE,
  CONSTRAINT `fk_Tienda_Localidad1`
    FOREIGN KEY (`idLocalidad`)
    REFERENCES `mydb`.`Localidad` (`idLocalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
