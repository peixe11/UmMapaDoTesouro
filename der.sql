-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Ajuste'
-- 
-- ---

DROP TABLE IF EXISTS `Ajuste`;
		
CREATE TABLE `Ajuste` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cultura_id` INTEGER NOT NULL DEFAULT NULL,
  `data_hora` DATETIME NULL DEFAULT NULL,
  `quantidade_agua` DOUBLE NULL DEFAULT NULL,
  `quantidade_nutrientes` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Cultura'
-- 
-- ---

DROP TABLE IF EXISTS `Cultura`;
		
CREATE TABLE `Cultura` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `produtor_id` INTEGER NOT NULL DEFAULT NULL,
  `nome` VARCHAR(100) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Produtor'
-- 
-- ---

DROP TABLE IF EXISTS `Produtor`;
		
CREATE TABLE `Produtor` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `nome` VARCHAR(150) NOT NULL DEFAULT 'NULL',
  `propriedade` CHAR(100) NULL DEFAULT NULL,
  `localizacao` VARCHAR(250) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Cultura_Sensor'
-- 
-- ---

DROP TABLE IF EXISTS `Cultura_Sensor`;
		
CREATE TABLE `Cultura_Sensor` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cultura_id` INTEGER NOT NULL DEFAULT NULL,
  `sensor_id` INTEGER NOT NULL DEFAULT NULL,
  `data_inicio_monitoramento` INTEGER NOT NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Leitura'
-- 
-- ---

DROP TABLE IF EXISTS `Leitura`;
		
CREATE TABLE `Leitura` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `cultura_sensor_id` INTEGER NOT NULL DEFAULT NULL,
  `data_hora` DATETIME NULL DEFAULT NULL,
  `valor_umidade` DOUBLE NULL DEFAULT NULL,
  `valor_ph` DOUBLE NULL DEFAULT NULL,
  `valor_fosforo` DOUBLE NULL DEFAULT NULL,
  `valor_potassio` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'Sensor'
-- 
-- ---

DROP TABLE IF EXISTS `Sensor`;
		
CREATE TABLE `Sensor` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `sensortipo_id` INTEGER NOT NULL DEFAULT NULL,
  `descricao` VARCHAR(200) NULL DEFAULT NULL,
  `valor1` DOUBLE NULL DEFAULT NULL,
  `valor2` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'SensorTipo'
-- 
-- ---

DROP TABLE IF EXISTS `SensorTipo`;
		
CREATE TABLE `SensorTipo` (
  `id` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `nome` VARCHAR(20) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Ajuste` ADD FOREIGN KEY (cultura_id) REFERENCES `Cultura` (`id`);
ALTER TABLE `Cultura` ADD FOREIGN KEY (produtor_id) REFERENCES `Produtor` (`id`);
ALTER TABLE `Cultura_Sensor` ADD FOREIGN KEY (cultura_id) REFERENCES `Cultura` (`id`);
ALTER TABLE `Cultura_Sensor` ADD FOREIGN KEY (sensor_id) REFERENCES `Sensor` (`id`);
ALTER TABLE `Leitura` ADD FOREIGN KEY (cultura_sensor_id) REFERENCES `Cultura_Sensor` (`id`);
ALTER TABLE `Sensor` ADD FOREIGN KEY (sensortipo_id) REFERENCES `SensorTipo` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Ajuste` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Cultura` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Produtor` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Cultura_Sensor` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Leitura` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Sensor` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `SensorTipo` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Ajuste` (`id`,`cultura_id`,`data_hora`,`quantidade_agua`,`quantidade_nutrientes`) VALUES
-- ('','','','','');
-- INSERT INTO `Cultura` (`id`,`produtor_id`,`nome`) VALUES
-- ('','','');
-- INSERT INTO `Produtor` (`id`,`nome`,`propriedade`,`localizacao`) VALUES
-- ('','','','');
-- INSERT INTO `Cultura_Sensor` (`id`,`cultura_id`,`sensor_id`,`data_inicio_monitoramento`) VALUES
-- ('','','','');
-- INSERT INTO `Leitura` (`id`,`cultura_sensor_id`,`data_hora`,`valor_umidade`,`valor_ph`,`valor_fosforo`,`valor_potassio`) VALUES
-- ('','','','','','','');
-- INSERT INTO `Sensor` (`id`,`sensortipo_id`,`descricao`,`valor1`,`valor2`) VALUES
-- ('','','','','');
-- INSERT INTO `SensorTipo` (`id`,`nome`) VALUES
-- ('','');