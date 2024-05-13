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
  PRIMARY KEY (`idCliente`, `telf`),
  INDEX `fk_Clientes_Localidad1_idx` (`idLocalidad` ASC) VISIBLE,
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
  PRIMARY KEY (`idEmpleado`, `nif`, `telf`),
  INDEX `fk_Empleado_TipoEmpleado1_idx` (`idTipoEmpleado` ASC) VISIBLE,
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
  PRIMARY KEY (`idComanda`, `idTipoComanda`),
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
  PRIMARY KEY (`idTienda`, `direccion`),
  INDEX `fk_Tienda_Localidad1_idx` (`idLocalidad` ASC) VISIBLE,
  CONSTRAINT `fk_Tienda_Localidad1`
    FOREIGN KEY (`idLocalidad`)
    REFERENCES `mydb`.`Localidad` (`idLocalidad`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Canal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Canal` (
  `idCanal` INT NOT NULL AUTO_INCREMENT,
  `nombreCanal` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(45) NULL,
  `fechaCreacion` DATETIME NOT NULL,
  PRIMARY KEY (`idCanal`, `nombreCanal`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Usuario` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `mail` VARCHAR(45) NOT NULL,
  `pswd` VARCHAR(45) NOT NULL,
  `nombreUsuario` VARCHAR(45) NOT NULL,
  `fechaNacim` DATETIME(20) NOT NULL,
  `sexo` VARCHAR(45) NULL,
  `pais` VARCHAR(45) NOT NULL,
  `codPostal` INT NOT NULL,
  `idCanal` INT NOT NULL,
  PRIMARY KEY (`idUsuario`, `mail`, `nombreUsuario`),
  INDEX `fk_Usuario_Canal1_idx` (`idCanal` ASC) VISIBLE,
  UNIQUE INDEX `idCanal_UNIQUE` (`idCanal` ASC) VISIBLE,
  CONSTRAINT `fk_Usuario_Canal1`
    FOREIGN KEY (`idCanal`)
    REFERENCES `mydb`.`Canal` (`idCanal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EstadoVideo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EstadoVideo` (
  `idEstadoVideo` INT NOT NULL AUTO_INCREMENT,
  `nombreEstado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstadoVideo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Etiqueta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Etiqueta` (
  `idEtiqueta` INT NOT NULL AUTO_INCREMENT,
  `nombreEtiqueta` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEtiqueta`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Video` (
  `idVideo` INT NOT NULL AUTO_INCREMENT,
  `idUsuario` INT NOT NULL,
  `idEstadoVideo` INT NOT NULL,
  `tituloVideo` VARCHAR(45) NOT NULL,
  `descripcion` VARCHAR(100) NULL,
  `tamaño` FLOAT NULL,
  `nombreDocum` VARCHAR(45) NOT NULL,
  `duracion` FLOAT NOT NULL,
  `thumbnail` VARBINARY(8000) NOT NULL,
  `reproducciones` INT NOT NULL,
  `likes` INT NOT NULL,
  `dislikes` VARCHAR(45) NOT NULL,
  `fechaPublic` DATETIME NOT NULL,
  `Etiqueta_idEtiqueta` INT NOT NULL,
  PRIMARY KEY (`idVideo`),
  INDEX `fk_Video_EstadoVideo1_idx` (`idEstadoVideo` ASC) VISIBLE,
  INDEX `fk_Video_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
  INDEX `fk_Video_Etiqueta1_idx` (`Etiqueta_idEtiqueta` ASC) VISIBLE,
  CONSTRAINT `fk_Video_EstadoVideo1`
    FOREIGN KEY (`idEstadoVideo`)
    REFERENCES `mydb`.`EstadoVideo` (`idEstadoVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Video_Usuario1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Video_Etiqueta1`
    FOREIGN KEY (`Etiqueta_idEtiqueta`)
    REFERENCES `mydb`.`Etiqueta` (`idEtiqueta`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Comentario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Comentario` (
  `idComentario` INT NOT NULL AUTO_INCREMENT,
  `idVideo` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `texto` VARCHAR(100) NOT NULL,
  `fechaPublicacion` DATETIME NOT NULL,
  PRIMARY KEY (`idComentario`),
  INDEX `fk_Comentario_Video1_idx` (`idVideo` ASC) VISIBLE,
  INDEX `fk_Comentario_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
  CONSTRAINT `fk_Comentario_Video1`
    FOREIGN KEY (`idVideo`)
    REFERENCES `mydb`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Comentario_Usuario1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoLike/Dislike`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoLike/Dislike` (
  `idTipoAccion` INT NOT NULL AUTO_INCREMENT,
  `nombreTipoAccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoAccion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Like/Dislike`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Like/Dislike` (
  `idAccion` INT NOT NULL AUTO_INCREMENT,
  `idTipoAccion` INT NOT NULL,
  `idUsuario` INT NOT NULL,
  `idComentario` INT NOT NULL,
  PRIMARY KEY (`idAccion`),
  INDEX `fk_Accion_TipoAccion1_idx` (`idTipoAccion` ASC) VISIBLE,
  INDEX `fk_Accion_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
  INDEX `fk_Accion_Comentario1_idx` (`idComentario` ASC) VISIBLE,
  CONSTRAINT `fk_Accion_TipoAccion1`
    FOREIGN KEY (`idTipoAccion`)
    REFERENCES `mydb`.`TipoLike/Dislike` (`idTipoAccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Accion_Usuario1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Accion_Comentario1`
    FOREIGN KEY (`idComentario`)
    REFERENCES `mydb`.`Comentario` (`idComentario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`TipoFollow/Unfollow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`TipoFollow/Unfollow` (
  `idTipoFollow/Unfollow` INT NOT NULL AUTO_INCREMENT,
  `nombreaccionFollowUnfollow` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTipoFollow/Unfollow`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Follow/Unfollow`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Follow/Unfollow` (
  `idFollow/Unfollow` INT NOT NULL AUTO_INCREMENT,
  `idUsuario` INT NOT NULL,
  `idTipoFollow/Unfollow` INT NOT NULL,
  `idCanal` INT NOT NULL,
  PRIMARY KEY (`idFollow/Unfollow`),
  INDEX `fk_Follow/Unfollow_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
  INDEX `fk_Follow/Unfollow_TipoFollow/Unfollow1_idx` (`idTipoFollow/Unfollow` ASC) VISIBLE,
  INDEX `fk_Follow/Unfollow_Canal1_idx` (`idCanal` ASC) VISIBLE,
  CONSTRAINT `fk_Follow/Unfollow_Usuario1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Follow/Unfollow_TipoFollow/Unfollow1`
    FOREIGN KEY (`idTipoFollow/Unfollow`)
    REFERENCES `mydb`.`TipoFollow/Unfollow` (`idTipoFollow/Unfollow`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Follow/Unfollow_Canal1`
    FOREIGN KEY (`idCanal`)
    REFERENCES `mydb`.`Canal` (`idCanal`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`EstadoPlaylist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`EstadoPlaylist` (
  `idEstadoPlaylist` INT NOT NULL AUTO_INCREMENT,
  `nombreEstado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEstadoPlaylist`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Playlist`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Playlist` (
  `idPlaylist` INT NOT NULL,
  `nombrePlaylist` VARCHAR(45) NOT NULL,
  `idUsuario` INT NOT NULL,
  `idVideo` INT NOT NULL,
  `fechaCreacion` DATETIME NOT NULL,
  `idEstadoPlaylist` INT NOT NULL,
  PRIMARY KEY (`idPlaylist`),
  INDEX `fk_Playlist_Usuario1_idx` (`idUsuario` ASC) VISIBLE,
  INDEX `fk_Playlist_Video1_idx` (`idVideo` ASC) VISIBLE,
  INDEX `fk_Playlist_EstadoPlaylist1_idx` (`idEstadoPlaylist` ASC) VISIBLE,
  CONSTRAINT `fk_Playlist_Usuario1`
    FOREIGN KEY (`idUsuario`)
    REFERENCES `mydb`.`Usuario` (`idUsuario`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Playlist_Video1`
    FOREIGN KEY (`idVideo`)
    REFERENCES `mydb`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Playlist_EstadoPlaylist1`
    FOREIGN KEY (`idEstadoPlaylist`)
    REFERENCES `mydb`.`EstadoPlaylist` (`idEstadoPlaylist`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
