DROP DATABASE IF EXISTS garnet_users;

CREATE DATABASE garnet_users DEFAULT CHARACTER SET 'utf8'
  DEFAULT COLLATE 'utf8_unicode_ci';

USE garnet_users;


CREATE TABLE user (
  UserId BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(30) NOT NULL,
  HashedPassword BINARY(60) NOT NULL,
  AccountNonExpired BOOLEAN NOT NULL,
  AccountNonLocked BOOLEAN NOT NULL,
  CredentialsNonExpired BOOLEAN NOT NULL,
  Enabled BOOLEAN NOT NULL,
  CONSTRAINT user_unique UNIQUE (Username)
) ENGINE = InnoDB;

CREATE TABLE user_Authority (
  UserId BIGINT UNSIGNED NOT NULL,
  Authority VARCHAR(100) NOT NULL,
  UNIQUE KEY user_Authority_User_Authority (UserId, Authority),
  CONSTRAINT user_Authority_UserId FOREIGN KEY (UserId)
    REFERENCES user (UserId) ON DELETE CASCADE
) ENGINE = InnoDB;


INSERT INTO user (Username, HashedPassword, AccountNonExpired,
                           AccountNonLocked, CredentialsNonExpired, Enabled)
VALUES ( -- sator
  'Carol', '$2a$04$PyrFfrZ4xNm6UQdvuXCxtuhuhiRP3wNi/DRGS3qWYw/aCDbMURewm',
  TRUE, TRUE, TRUE, TRUE
);

INSERT INTO user (Username, HashedPassword, AccountNonExpired,
                           AccountNonLocked, CredentialsNonExpired, Enabled)
VALUES ( -- arepo
  'Alice', '$2a$04$3lBlL0CrSqwOlk8lEYpAeulr4ZV7NnvH/QO3KTKnKGYTBW/bOuahC',
  TRUE, TRUE, TRUE, TRUE
);

INSERT INTO user (Username, HashedPassword, AccountNonExpired,
                           AccountNonLocked, CredentialsNonExpired, Enabled)
VALUES ( -- rotas
  'Richard', '$2a$04$yVfrFQ8uO4jHEOrjsxcvheX6.pMQaxLtUyao53QcLdswPMKZR6U7G',
  TRUE, TRUE, TRUE, TRUE
);

INSERT INTO user (Username, HashedPassword, AccountNonExpired,
                           AccountNonLocked, CredentialsNonExpired, Enabled)
VALUES ( -- wombat
  'Marissa', '$2a$04$zOhA5afTfDclVDt1NAEeDeV5nB5rguq.BapkUXQwk67P5Pg9MMZ8m',
  TRUE, TRUE, TRUE, TRUE
);

INSERT INTO user (Username, HashedPassword, AccountNonExpired,
                           AccountNonLocked, CredentialsNonExpired, Enabled)
VALUES ( -- apple
  'Steve', '$2a$04$klU98OuJ9hxF3tn6rH7Dxe3XpyQRx36b3YIg9LhnllJA0fs7JbVNC',
  TRUE, TRUE, TRUE, TRUE
);

INSERT INTO user (Username, HashedPassword, AccountNonExpired,
                           AccountNonLocked, CredentialsNonExpired, Enabled)
VALUES ( -- orange
  'Bill', '$2a$04$PNwcHqi2LtGRoJ.O171QuOvfF8RocPaWLQIXbl7nFLfnZaWlvXbgm',
  TRUE, TRUE, TRUE, TRUE
);



INSERT INTO user_Authority (UserId, Authority)
  VALUES (1, 'ROLE_CUSTOMER_USER');

INSERT INTO user_Authority (UserId, Authority)
  VALUES (2, 'ROLE_CUSTOMER_USER'), (2, 'ROLE_CREATE'), (2, 'ROLE_UPDATE');

INSERT INTO user_Authority (UserId, Authority)
  VALUES (3, 'ROLE_CUSTOMER_USER'), (3, 'ROLE_CREATE'),(3, 'ROLE_UPDATE'), (3, 'ROLE_DELETE');

INSERT INTO user_Authority (UserId, Authority)
  VALUES (4, 'ROLE_DOG_USER');

INSERT INTO user_Authority (UserId, Authority)
  VALUES (5, 'ROLE_DOG_USER'), (5, 'ROLE_CREATE'), (5, 'ROLE_UPDATE');

INSERT INTO user_Authority (UserId, Authority)
  VALUES (6, 'ROLE_DOG_USER'), (6, 'ROLE_CREATE'), (6, 'ROLE_UPDATE'), (6, 'ROLE_DELETE');



GRANT ALL ON garnet_users.* TO 'dbuser'@'%' 


