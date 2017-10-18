-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new users table @ mydatabase
CREATE TABLE testuser.app_users (
   uuid VARCHAR2(36) NOT NULL,
   user_name VARCHAR2(20) NOT NULL,
   password VARCHAR2(30) NOT NULL,
   first_name VARCHAR2(40) NOT NULL,
   last_name VARCHAR2(40) NOT NULL,
   email VARCHAR2(80) NOT NULL,
   creation_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
   enabled NUMBER(1) DEFAULT 1 NOT NULL,
   CONSTRAINT app_users_pk PRIMARY KEY (uuid)
);
