-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new authorities table @ mydatabase
USE mydatabase;

DROP TABLE IF EXISTS authorities;

CREATE TABLE authorities (
   uuid VARCHAR(36) NOT NULL,
   authority VARCHAR(100) NOT NULL,
   user VARCHAR(36) NOT NULL,
   PRIMARY KEY (uuid),
   CONSTRAINT authorities_2_users FOREIGN KEY (user) REFERENCES users(uuid) ON UPDATE CASCADE
) ENGINE=InnoDB;
