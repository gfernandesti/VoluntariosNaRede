SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `voluntarionaredebd` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `voluntarionaredebd` ;

-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Estado`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Estado` (
  `Estado_id` INT NOT NULL AUTO_INCREMENT ,
  `Estado_codigo` VARCHAR(45) NULL ,
  `Estado_nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Estado_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Cidade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Cidade` (
  `Cidade_id` INT NOT NULL AUTO_INCREMENT ,
  `Cidade_nome` VARCHAR(45) NOT NULL ,
  `Cidade_isAtiva` TINYINT(1) NULL ,
  PRIMARY KEY (`Cidade_id`) ,
  CONSTRAINT `fk_Estado`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Estado` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Endereco`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Endereco` (
  `Endereco_id` INT NOT NULL AUTO_INCREMENT ,
  `Endereco_rua` VARCHAR(45) NOT NULL ,
  `Endereco_numero` VARCHAR(45) NULL ,
  `Endereco_bairro` VARCHAR(45) NULL ,
  `Endereco_cep` VARCHAR(45) NULL ,
  `Endereco_latitude` FLOAT NULL ,
  `Endereco_longitude` VARCHAR(45) NULL ,
  PRIMARY KEY (`Endereco_id`) ,
  CONSTRAINT `fk_Cidade`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Cidade` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Usuario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Usuario` (
  `Usuario_id` INT NOT NULL AUTO_INCREMENT ,
  `Usuario_primeiroNome` VARCHAR(45) NOT NULL ,
  `Usuario_ultimoNome` VARCHAR(45) NULL ,
  `Usuario_email` VARCHAR(60) NULL ,
  `Usuario_senha` VARCHAR(45) NULL ,
  `Usuario_telefone` VARCHAR(45) NULL ,
  `Usuario_isAtivo` TINYINT(1) NULL ,
  `Usuario_isFuncionario` TINYINT(1) NULL ,
  `Usuario_cadastroNoSite` DATE NULL ,
  `Usuario_ultimoAcesso` DATE NULL ,
  `Usuario_modificacaoPerfil` VARCHAR(45) NULL ,
  PRIMARY KEY (`Usuario_id`) ,
  CONSTRAINT `fk_Endereco`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Endereco` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`ONG`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`ONG` (
  `ONG_id` INT UNSIGNED NOT NULL AUTO_INCREMENT ,
  `ONG_nome` VARCHAR(45) NOT NULL ,
  `ONG_website` VARCHAR(60) NULL ,
  `ONG_descricao` TEXT NULL ,
  `ONG_detalhe` TEXT NULL ,
  `ONG_capa` MEDIUMBLOB NULL ,
  `ONG_imagemONG` MEDIUMBLOB NULL ,
  `ONG_isPublicado` VARCHAR(45) NULL ,
  `ONG_isCancelado` TINYINT(1) NULL ,
  `ONG_dataPublicacao` DATE NULL ,
  `ONG_dataCancelamento` DATE NULL ,
  PRIMARY KEY (`ONG_id`) ,
  CONSTRAINT `fk_User`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Usuario` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Voluntario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Voluntario` (
  `Voluntario_id` INT NOT NULL AUTO_INCREMENT ,
  `Voluntario_imagem` MEDIUMBLOB NULL ,
  PRIMARY KEY (`Voluntario_id`) ,
  CONSTRAINT `fk_Usuario`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Usuario` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Projeto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Projeto` (
  `Projeto_id` INT NOT NULL AUTO_INCREMENT ,
  `Projeto_nome` VARCHAR(45) NOT NULL ,
  `Projeto_email` VARCHAR(45) NOT NULL ,
  `Projeto_responsavel` VARCHAR(45) NOT NULL ,
  `Projeto_detalhes` TEXT NULL ,
  `Projeto_telefone` VARCHAR(45) NULL ,
  `Projeto_isFechado` TINYINT(1) NULL ,
  `Projeto_dataFechamento` DATE NULL ,
  `Projeto_isCancelado` TINYINT(1) NULL ,
  `Projeto_dataCancelamento` DATE NULL ,
  `Projetocol_isPublicado` TINYINT(1) NULL ,
  `Projeto_dataPublicacao` DATE NULL ,
  `Projeto_dataCriacao` DATE NULL ,
  `Projeto_dataModificacao` DATE NULL ,
  `Projeto_imagem` VARCHAR(45) NULL ,
  PRIMARY KEY (`Projeto_id`) ,
  CONSTRAINT `fk_Endereco`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Endereco` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ONG`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`ONG` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Habilidade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Habilidade` (
  `Habilidade_id` INT NOT NULL AUTO_INCREMENT ,
  `Habilidade_nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Habilidade_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Disponibilidade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Disponibilidade` (
  `Disponibilidade_id` INT NOT NULL AUTO_INCREMENT ,
  `Disponibilidade_periodo` VARCHAR(45) NULL ,
  `Disponibilidadecol` VARCHAR(45) NULL ,
  PRIMARY KEY (`Disponibilidade_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Causa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Causa` (
  `Causa_id` INT NOT NULL AUTO_INCREMENT ,
  `Causa_nome` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`Causa_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Cargo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Cargo` (
  `Cargo_id` INT NOT NULL AUTO_INCREMENT ,
  `Cargo_nome` VARCHAR(45) NOT NULL ,
  `Cargo_vagas` INT NULL ,
  `Cargo_detalhe` TEXT NULL ,
  `Cargo_preRequisito` TEXT NULL ,
  `Cargo_dataInicio` DATE NULL ,
  `Cargo_dataFinal` DATE NULL ,
  PRIMARY KEY (`Cargo_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`StatusCadastro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`StatusCadastro` (
  `StatusCadastro_id` INT NOT NULL AUTO_INCREMENT ,
  `StatusCadastro_situacao` VARCHAR(45) NULL ,
  PRIMARY KEY (`StatusCadastro_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`AtividadeUnica`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`AtividadeUnica` (
  `AtividadeUnica_id` INT NOT NULL AUTO_INCREMENT ,
  `AtividadeUnica_dataInicio` DATE NULL ,
  `AtividadeUnica_dataFim` VARCHAR(45) NULL ,
  PRIMARY KEY (`AtividadeUnica_id`) ,
  CONSTRAINT `fk_Projeto`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Projeto` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`AtividadeEstendida`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`AtividadeEstendida` (
  `AtividadeEstendida_id` INT NOT NULL AUTO_INCREMENT ,
  `AtividadeEstendidacol` VARCHAR(45) NULL ,
  PRIMARY KEY (`AtividadeEstendida_id`) ,
  CONSTRAINT `fk_Projeto`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Projeto` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Cadastro`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Cadastro` (
  `Cadastro_id` INT NOT NULL AUTO_INCREMENT ,
  `Cadastro_isCancelado` TINYINT(1) NULL ,
  `Cadastro_dataCancelamento` DATE NULL ,
  `Cadastro-dataCadastro` VARCHAR(45) NULL ,
  PRIMARY KEY (`Cadastro_id`) ,
  CONSTRAINT `fk_Projeto`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Projeto` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voluntario`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`Voluntario` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Status`
    FOREIGN KEY ()
    REFERENCES `voluntarionaredebd`.`StatusCadastro` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Causa_has_ONG`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Causa_has_ONG` (
  `Causa_Causa_id` INT NOT NULL ,
  `ONG_ONG_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`Causa_Causa_id`, `ONG_ONG_id`) ,
  INDEX `fk_Causa_has_ONG_ONG1_idx` (`ONG_ONG_id` ASC) ,
  INDEX `fk_Causa_has_ONG_Causa1_idx` (`Causa_Causa_id` ASC) ,
  CONSTRAINT `fk_Causa_has_ONG_Causa1`
    FOREIGN KEY (`Causa_Causa_id` )
    REFERENCES `voluntarionaredebd`.`Causa` (`Causa_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Causa_has_ONG_ONG1`
    FOREIGN KEY (`ONG_ONG_id` )
    REFERENCES `voluntarionaredebd`.`ONG` (`ONG_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Voluntario_has_ONG`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Voluntario_has_ONG` (
  `Voluntario_Voluntario_id` INT NOT NULL ,
  `ONG_ONG_id` INT UNSIGNED NOT NULL ,
  PRIMARY KEY (`Voluntario_Voluntario_id`, `ONG_ONG_id`) ,
  INDEX `fk_Voluntario_has_ONG_ONG1_idx` (`ONG_ONG_id` ASC) ,
  INDEX `fk_Voluntario_has_ONG_Voluntario1_idx` (`Voluntario_Voluntario_id` ASC) ,
  CONSTRAINT `fk_Voluntario_has_ONG_Voluntario1`
    FOREIGN KEY (`Voluntario_Voluntario_id` )
    REFERENCES `voluntarionaredebd`.`Voluntario` (`Voluntario_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voluntario_has_ONG_ONG1`
    FOREIGN KEY (`ONG_ONG_id` )
    REFERENCES `voluntarionaredebd`.`ONG` (`ONG_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Causa_has_Projeto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Causa_has_Projeto` (
  `Causa_Causa_id` INT NOT NULL ,
  `Projeto_Projeto_id` INT NOT NULL ,
  PRIMARY KEY (`Causa_Causa_id`, `Projeto_Projeto_id`) ,
  INDEX `fk_Causa_has_Projeto_Projeto1_idx` (`Projeto_Projeto_id` ASC) ,
  INDEX `fk_Causa_has_Projeto_Causa1_idx` (`Causa_Causa_id` ASC) ,
  CONSTRAINT `fk_Causa_has_Projeto_Causa1`
    FOREIGN KEY (`Causa_Causa_id` )
    REFERENCES `voluntarionaredebd`.`Causa` (`Causa_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Causa_has_Projeto_Projeto1`
    FOREIGN KEY (`Projeto_Projeto_id` )
    REFERENCES `voluntarionaredebd`.`Projeto` (`Projeto_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Habilidade_has_Projeto`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Habilidade_has_Projeto` (
  `Habilidade_Habilidade_id` INT NOT NULL ,
  `Projeto_Projeto_id` INT NOT NULL ,
  PRIMARY KEY (`Habilidade_Habilidade_id`, `Projeto_Projeto_id`) ,
  INDEX `fk_Habilidade_has_Projeto_Projeto1_idx` (`Projeto_Projeto_id` ASC) ,
  INDEX `fk_Habilidade_has_Projeto_Habilidade1_idx` (`Habilidade_Habilidade_id` ASC) ,
  CONSTRAINT `fk_Habilidade_has_Projeto_Habilidade1`
    FOREIGN KEY (`Habilidade_Habilidade_id` )
    REFERENCES `voluntarionaredebd`.`Habilidade` (`Habilidade_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Habilidade_has_Projeto_Projeto1`
    FOREIGN KEY (`Projeto_Projeto_id` )
    REFERENCES `voluntarionaredebd`.`Projeto` (`Projeto_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Projeto_has_Cargo`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Projeto_has_Cargo` (
  `Projeto_Projeto_id` INT NOT NULL ,
  `Cargo_Cargo_id` INT NOT NULL ,
  PRIMARY KEY (`Projeto_Projeto_id`, `Cargo_Cargo_id`) ,
  INDEX `fk_Projeto_has_Cargo_Cargo1_idx` (`Cargo_Cargo_id` ASC) ,
  INDEX `fk_Projeto_has_Cargo_Projeto1_idx` (`Projeto_Projeto_id` ASC) ,
  CONSTRAINT `fk_Projeto_has_Cargo_Projeto1`
    FOREIGN KEY (`Projeto_Projeto_id` )
    REFERENCES `voluntarionaredebd`.`Projeto` (`Projeto_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Projeto_has_Cargo_Cargo1`
    FOREIGN KEY (`Cargo_Cargo_id` )
    REFERENCES `voluntarionaredebd`.`Cargo` (`Cargo_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Habilidade_has_Voluntario`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Habilidade_has_Voluntario` (
  `Habilidade_Habilidade_id` INT NOT NULL ,
  `Voluntario_Voluntario_id` INT NOT NULL ,
  PRIMARY KEY (`Habilidade_Habilidade_id`, `Voluntario_Voluntario_id`) ,
  INDEX `fk_Habilidade_has_Voluntario_Voluntario1_idx` (`Voluntario_Voluntario_id` ASC) ,
  INDEX `fk_Habilidade_has_Voluntario_Habilidade1_idx` (`Habilidade_Habilidade_id` ASC) ,
  CONSTRAINT `fk_Habilidade_has_Voluntario_Habilidade1`
    FOREIGN KEY (`Habilidade_Habilidade_id` )
    REFERENCES `voluntarionaredebd`.`Habilidade` (`Habilidade_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Habilidade_has_Voluntario_Voluntario1`
    FOREIGN KEY (`Voluntario_Voluntario_id` )
    REFERENCES `voluntarionaredebd`.`Voluntario` (`Voluntario_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`Voluntario_has_Causa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`Voluntario_has_Causa` (
  `Voluntario_Voluntario_id` INT NOT NULL ,
  `Causa_Causa_id` INT NOT NULL ,
  PRIMARY KEY (`Voluntario_Voluntario_id`, `Causa_Causa_id`) ,
  INDEX `fk_Voluntario_has_Causa_Causa1_idx` (`Causa_Causa_id` ASC) ,
  INDEX `fk_Voluntario_has_Causa_Voluntario1_idx` (`Voluntario_Voluntario_id` ASC) ,
  CONSTRAINT `fk_Voluntario_has_Causa_Voluntario1`
    FOREIGN KEY (`Voluntario_Voluntario_id` )
    REFERENCES `voluntarionaredebd`.`Voluntario` (`Voluntario_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Voluntario_has_Causa_Causa1`
    FOREIGN KEY (`Causa_Causa_id` )
    REFERENCES `voluntarionaredebd`.`Causa` (`Causa_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `voluntarionaredebd`.`AtividadeEstendida_has_Disponibilidade`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `voluntarionaredebd`.`AtividadeEstendida_has_Disponibilidade` (
  `AtividadeEstendida_AtividadeEstendida_id` INT NOT NULL ,
  `Disponibilidade_Disponibilidade_id` INT NOT NULL ,
  PRIMARY KEY (`AtividadeEstendida_AtividadeEstendida_id`, `Disponibilidade_Disponibilidade_id`) ,
  INDEX `fk_AtividadeEstendida_has_Disponibilidade_Disponibilidade1_idx` (`Disponibilidade_Disponibilidade_id` ASC) ,
  INDEX `fk_AtividadeEstendida_has_Disponibilidade_AtividadeEstendid_idx` (`AtividadeEstendida_AtividadeEstendida_id` ASC) ,
  CONSTRAINT `fk_AtividadeEstendida_has_Disponibilidade_AtividadeEstendida1`
    FOREIGN KEY (`AtividadeEstendida_AtividadeEstendida_id` )
    REFERENCES `voluntarionaredebd`.`AtividadeEstendida` (`AtividadeEstendida_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_AtividadeEstendida_has_Disponibilidade_Disponibilidade1`
    FOREIGN KEY (`Disponibilidade_Disponibilidade_id` )
    REFERENCES `voluntarionaredebd`.`Disponibilidade` (`Disponibilidade_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `voluntarionaredebd` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
