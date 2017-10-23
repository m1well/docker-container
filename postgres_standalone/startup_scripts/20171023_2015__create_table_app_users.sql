-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_users table @ mydatabase
\c mydatabase;

DROP TABLE IF EXISTS app_users;

CREATE TABLE app_users (
   uuid VARCHAR(36) NOT NULL,
   user_name VARCHAR(20) NOT NULL,
   password VARCHAR(30) NOT NULL,
   first_name VARCHAR(40) NOT NULL,
   last_name VARCHAR(40) NOT NULL,
   email VARCHAR(80) NOT NULL,
   creation_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   enabled BOOLEAN DEFAULT TRUE NOT NULL,
   PRIMARY KEY (uuid)
);
