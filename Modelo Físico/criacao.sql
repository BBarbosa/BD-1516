-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema trabalho
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema trabalho
-- -----------------------------------------------------
drop schema if exists `trabalho`;
CREATE SCHEMA IF NOT EXISTS `trabalho` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `trabalho` ;

-- -----------------------------------------------------
-- Table `trabalho`.`Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Funcionario` (
  `NIF` INT NOT NULL,
  `Email` VARCHAR(45) NULL unique,
  `Salario` DECIMAL(10,4) NOT NULL check(Salario>200),
  `DataNascimento` DATETIME NOT NULL,
  `Rua` VARCHAR(45) NULL,
  `CodPostal` VARCHAR(45) NULL,
  `Localidade` VARCHAR(45) NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Chefe` INT NULL,
  PRIMARY KEY (`NIF`),
  INDEX `fk_Funcionario_Funcionario1_idx` (`Chefe` ASC),
  CONSTRAINT `fk_Funcionario_Funcionario1`
    FOREIGN KEY (`Chefe`)
    REFERENCES `trabalho`.`Funcionario` (`NIF`)
    ON DELETE set null
    ON UPDATE cascade
   
    )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Seccao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Seccao` (
  `idSeccao` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL unique,
  `Funcionario_NIF` INT NULL,
  PRIMARY KEY (`idSeccao`),
  INDEX `fk_Seccao_Funcionario1_idx` (`Funcionario_NIF` ASC),
  CONSTRAINT `fk_Seccao_Funcionario1`
    FOREIGN KEY (`Funcionario_NIF`)
    REFERENCES `trabalho`.`Funcionario` (`NIF`)
    ON DELETE set null
    ON UPDATE cascade)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `trabalho`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Cliente` (
  `NIF` INT NOT NULL,
  `DataNascimento` DATETIME NOT NULL ,
  `Contacto` INT NOT NULL,
  `Email` VARCHAR(45) NULL unique,
  `Nome` VARCHAR(45) NOT NULL,
  `Rua` VARCHAR(45) NULL,
  `Localidade` VARCHAR(45) NULL,
  `CodPostal` VARCHAR(45) NULL,
  PRIMARY KEY (`NIF`)
  )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Funcao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Funcao` (
  `idFuncao` INT NOT NULL AUTO_INCREMENT,
  `Descricao` VARCHAR(45) NOT NULL unique,
  PRIMARY KEY (`idFuncao`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Produto` (
  `idProduto` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL unique,
  `PrecoVenda` DECIMAL(10,4) NOT NULL check(PrecoVenda>0),
  `Stock` INT NOT NULL check(Stock>=0),
  PRIMARY KEY (`idProduto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Fornecedor` (
  `NIF` INT NOT NULL ,
  `Nome` VARCHAR(45) NOT NULL,
  `Rua` VARCHAR(45) NULL,
  `Localidade` VARCHAR(45) NULL,
  `CodPostal` VARCHAR(45) NULL,
  PRIMARY KEY (`NIF`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Contacto_Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Contacto_Funcionario` (
  `idContacto_Funcionario` INT NOT NULL,
  `Funcionario_NIF` INT NOT NULL,
  PRIMARY KEY (`idContacto_Funcionario`, `Funcionario_NIF`),
    FOREIGN KEY (`Funcionario_NIF`)
    REFERENCES `trabalho`.`Funcionario` (`NIF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Funcionario_Seccao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Funcionario_Seccao` (
  `idFuncionario_Seccao` INT NOT NULL AUTO_INCREMENT,
  `Funcionario_NIF` INT NULL,
  `Seccao_idSeccao` INT NULL,
  `Data` DATETIME NOT NULL,
  `Nr_Horas` DECIMAL(10,4) NOT NULL,
  PRIMARY KEY (`idFuncionario_Seccao`),
  INDEX `fk_Funcionario_has_Seccao_Seccao1_idx` (`Seccao_idSeccao` ASC),
  INDEX `fk_Funcionario_has_Seccao_Funcionario_idx` (`Funcionario_NIF` ASC),
  CONSTRAINT `fk_Funcionario_has_Seccao_Funcionario`
    FOREIGN KEY (`Funcionario_NIF`)
    REFERENCES `trabalho`.`Funcionario` (`NIF`)
    ON DELETE set null
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Funcionario_has_Seccao_Seccao1`
    FOREIGN KEY (`Seccao_idSeccao`)
    REFERENCES `trabalho`.`Seccao` (`idSeccao`)
    ON DELETE set null
    ON UPDATE cascade)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Produto_Seccao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Produto_Seccao` (
  `Produto_idProduto` INT NOT NULL,
  `Seccao_idSeccao` INT NOT NULL,
  `Quantidade` INT NOT NULL check(Quantidade>=0),
  PRIMARY KEY (`Produto_idProduto`, `Seccao_idSeccao`),
  INDEX `fk_Produto_has_Seccao_Seccao1_idx` (`Seccao_idSeccao` ASC),
  INDEX `fk_Produto_has_Seccao_Produto1_idx` (`Produto_idProduto` ASC),
  CONSTRAINT `fk_Produto_has_Seccao_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `trabalho`.`Produto` (`idProduto`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Produto_has_Seccao_Seccao1`
    FOREIGN KEY (`Seccao_idSeccao`)
    REFERENCES `trabalho`.`Seccao` (`idSeccao`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Fornecedor_Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Fornecedor_Produto` (
  `idFornecedor_Produto` INT NOT NULL AUTO_INCREMENT,
  `Fornecedor_NIF` INT  NULL,
  `Produto_idProduto` INT  NULL,
  `Quantidade` INT NOT NULL check(Quantidade>0),
  `Data` DATE NOT NULL,
  `PrecoCompra` DECIMAL(10,4) NOT NULL check (PrecoCompra>0),
  INDEX `fk_Fornecedor_has_Produto_Produto1_idx` (`Produto_idProduto` ASC),
  INDEX `fk_Fornecedor_has_Produto_Fornecedor1_idx` (`Fornecedor_NIF` ASC),
  PRIMARY KEY (`idFornecedor_Produto`),
  CONSTRAINT `fk_Fornecedor_has_Produto_Fornecedor1`
    FOREIGN KEY (`Fornecedor_NIF`)
    REFERENCES `trabalho`.`Fornecedor` (`NIF`)
    ON DELETE set null
    ON UPDATE cascade,
  CONSTRAINT `fk_Fornecedor_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `trabalho`.`Produto` (`idProduto`)
    ON DELETE set null
    ON UPDATE cascade)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Cliente_Produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Cliente_Produto` (
  `idCompra` INT NOT NULL AUTO_INCREMENT,
  `Cliente_NIF` INT  NULL,
  `Produto_idProduto` INT  NULL,
  `Data` DATE NOT NULL,
  `Quantidade` INT NOT NULL check(Quantidade>0),
  `PrecoCompra` DECIMAL(10,4) NULL check (PrecoCompra>0),
  PRIMARY KEY (`idCompra`),
  INDEX `fk_Cliente_has_Produto_Produto1_idx` (`Produto_idProduto` ASC),
  INDEX `fk_Cliente_has_Produto_Cliente1_idx` (`Cliente_NIF` ASC),
  CONSTRAINT `fk_Cliente_has_Produto_Cliente1`
    FOREIGN KEY (`Cliente_NIF`)
    REFERENCES `trabalho`.`Cliente` (`NIF`)
    ON DELETE set null
    ON UPDATE cascade,
  CONSTRAINT `fk_Cliente_has_Produto_Produto1`
    FOREIGN KEY (`Produto_idProduto`)
    REFERENCES `trabalho`.`Produto` (`idProduto`)
    ON DELETE set null
    ON UPDATE cascade)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Funcao_Funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Funcao_Funcionario` (
  `Funcao_idFuncao` INT NOT NULL,
  `Funcionario_NIF` INT NOT NULL,
  PRIMARY KEY (`Funcao_idFuncao`, `Funcionario_NIF`),
  INDEX `fk_Funcao_has_Funcionario_Funcionario1_idx` (`Funcionario_NIF` ASC),
  INDEX `fk_Funcao_has_Funcionario_Funcao1_idx` (`Funcao_idFuncao` ASC),
  CONSTRAINT `fk_Funcao_has_Funcionario_Funcao1`
    FOREIGN KEY (`Funcao_idFuncao`)
    REFERENCES `trabalho`.`Funcao` (`idFuncao`)
    ON DELETE cascade
    ON UPDATE cascade,
  CONSTRAINT `fk_Funcao_has_Funcionario_Funcionario1`
    FOREIGN KEY (`Funcionario_NIF`)
    REFERENCES `trabalho`.`Funcionario` (`NIF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `trabalho`.`Contacto_Fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `trabalho`.`Contacto_Fornecedor` (
  `idContacto_Fornecedor` INT NOT NULL,
  `Fornecedor_NIF` INT NOT NULL,
  PRIMARY KEY (`idContacto_Fornecedor`, `Fornecedor_NIF`),
  INDEX `fk_Contacto_Fornecedor_Fornecedor1_idx` (`Fornecedor_NIF` ASC),
  CONSTRAINT `fk_Contacto_Fornecedor_Fornecedor1`
    FOREIGN KEY (`Fornecedor_NIF`)
    REFERENCES `trabalho`.`Fornecedor` (`NIF`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
