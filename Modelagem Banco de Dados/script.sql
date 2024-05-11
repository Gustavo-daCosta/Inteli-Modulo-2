-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Formulário'
-- 
-- ---

DROP TABLE IF EXISTS `Formulário`;
		
CREATE TABLE `Formulário` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Título` MEDIUMTEXT NULL DEFAULT NULL,
  `Descrição` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Administrador'
-- 
-- ---

DROP TABLE IF EXISTS `Administrador`;
		
CREATE TABLE `Administrador` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Nome` MEDIUMTEXT NOT NULL DEFAULT 'NULL',
  `E-mail` MEDIUMTEXT NOT NULL DEFAULT 'NULL',
  `Senha` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Pergunta'
-- 
-- ---

DROP TABLE IF EXISTS `Pergunta`;
		
CREATE TABLE `Pergunta` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Título` MEDIUMTEXT NULL DEFAULT NULL,
  `Descrição` MEDIUMTEXT NULL DEFAULT NULL,
  `Tipo` MEDIUMTEXT NULL DEFAULT NULL,
  `id_Formulário` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Resposta'
-- 
-- ---

DROP TABLE IF EXISTS `Resposta`;
		
CREATE TABLE `Resposta` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `Resposta` MEDIUMTEXT NULL DEFAULT NULL,
  `Tipo` MEDIUMTEXT NULL DEFAULT NULL,
  `id_Formulário` INTEGER NULL DEFAULT NULL,
  `id_Pergunta` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Pergunta` ADD FOREIGN KEY (id_Formulário) REFERENCES `Formulário` (`id`);
ALTER TABLE `Resposta` ADD FOREIGN KEY (id_Formulário) REFERENCES `Formulário` (`id`);
ALTER TABLE `Resposta` ADD FOREIGN KEY (id_Pergunta) REFERENCES `Pergunta` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Formulário` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Administrador` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Pergunta` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Resposta` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Formulário` (`id`,`Título`,`Descrição`) VALUES
-- ('','','');
-- INSERT INTO `Administrador` (`id`,`Nome`,`E-mail`,`Senha`) VALUES
-- ('','','','');
-- INSERT INTO `Pergunta` (`id`,`Título`,`Descrição`,`Tipo`,`id_Formulário`) VALUES
-- ('','','','','');
-- INSERT INTO `Resposta` (`id`,`Resposta`,`Tipo`,`id_Formulário`,`id_Pergunta`) VALUES
-- ('','','','','');