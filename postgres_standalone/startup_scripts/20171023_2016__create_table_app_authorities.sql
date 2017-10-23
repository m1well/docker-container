-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_authorities table @ mydatabase
\c mydatabase;

DROP TABLE IF EXISTS app_authorities;

CREATE TABLE app_authorities (
   uuid VARCHAR(36) NOT NULL,
   authority VARCHAR(100) NOT NULL,
   app_user VARCHAR(36) NOT NULL,
   PRIMARY KEY (uuid),
   CONSTRAINT app_authorities_2_app_users FOREIGN KEY (app_user) REFERENCES app_users(uuid) ON UPDATE CASCADE
);
