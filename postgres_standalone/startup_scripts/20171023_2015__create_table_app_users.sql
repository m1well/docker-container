-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_users table @ mydatabase
\c mydatabase;

DROP TABLE IF EXISTS app_users;

CREATE TABLE app_users (
  id SERIAL NOT NULL,
  username VARCHAR(30) NOT NULL,
  password VARCHAR(120) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(80) NOT NULL,
  creation_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);
