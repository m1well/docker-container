-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new users table @ mydatabase
USE mydatabase;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
   uuid VARCHAR(36) NOT NULL,
   user_name VARCHAR(20) NOT NULL,
   password VARCHAR(30) NOT NULL,
   first_name VARCHAR(40) NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   email VARCHAR(80) NOT NULL,
   creation_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
   enabled BOOLEAN DEFAULT TRUE NOT NULL,
   PRIMARY KEY (uuid)
) ENGINE=InnoDB;
