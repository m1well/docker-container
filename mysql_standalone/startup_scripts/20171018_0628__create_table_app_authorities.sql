-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_authorities table @ mydatabase
USE mydatabase;

DROP TABLE IF EXISTS app_authorities;

CREATE TABLE app_authorities (
  id BIGINT NOT NULL AUTO_INCREMENT,
  type VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;
