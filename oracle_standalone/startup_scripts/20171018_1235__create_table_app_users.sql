-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_users table @ testuser schema
CREATE TABLE testuser.app_users (
  id NUMBER(20) NOT NULL,
  username VARCHAR2(30) NOT NULL,
  password VARCHAR2(120) NOT NULL,
  first_name VARCHAR2(50) NOT NULL,
  last_name VARCHAR2(50) NOT NULL,
  email VARCHAR2(80) NOT NULL,
  creation_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  PRIMARY KEY (id)
);

CREATE SEQUENCE testuser.app_users_seq;
