CREATE TABLE users (
  username VARCHAR(50) NOT NULL,
  password VARCHAR(100) NOT NULL,
  enabled TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (username)
);

CREATE TABLE authorities (
  username VARCHAR(50) NOT NULL,
  authority VARCHAR(50) NOT NULL,
  FOREIGN KEY (username) REFERENCES users(username)
);

CREATE UNIQUE INDEX ix_auth_username
  on authorities (username,authority);


  INSERT INTO users (username, password, enabled)
  values ('moamen',
    '$2a$10$kl41B8IOojs4bMPQDmcjc.VeH.k.jzxk8ki42vcJh8.rntNfC7YRu',
    1);
  INSERT INTO authorities (username, authority)
  values ('moamen', 'ROLE_USER');
    INSERT INTO users (username, password, enabled)
  values ('kahky',
    '$2a$10$24Kvmr1SEF823jVS.V4yL.oNDZ6oM1s7t6ZScq0PnCHtSzQzrxwJi',
    1);

  INSERT INTO authorities (username, authority)
  values ('kahky', 'ROLE_ADMIN');
  
  CREATE TABLE persistent_logins(
  username VARCHAR(50) NOT NULL,
  series VARCHAR(64) PRIMARY KEY,
  token VARCHAR(64) NOT NULL,
  last_used TIMESTAMP NOT NULL,
  FOREIGN KEY (username) REFERENCES users(username)
  );
  commit;
  