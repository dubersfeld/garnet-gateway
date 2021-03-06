DROP DATABASE IF EXISTS garnet_dogs;

CREATE DATABASE garnet_dogs DEFAULT CHARACTER SET 'utf8'
  DEFAULT COLLATE 'utf8_unicode_ci';

USE garnet_dogs;


CREATE TABLE IF NOT EXISTS `dog` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(32),
  `breed` VARCHAR(32),
  `age` INT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;


INSERT INTO dog VALUES (
  '100', 'Rex', 'German Shepherd', '3'
);

INSERT INTO dog VALUES (
  '101', 'Demon', 'Labrador Retriever', '4'
);

INSERT INTO dog VALUES (
  '102', 'Bounce', 'Beagle', '5'
);

GRANT ALL ON garnet_dogs.* TO 'dbuser'@'%' 


