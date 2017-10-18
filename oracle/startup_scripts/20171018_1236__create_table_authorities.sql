-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new authorities table @ mydatabase
CREATE TABLE testuser.app_authorities (
   uuid VARCHAR2(36) NOT NULL,
   authority VARCHAR2(100) NOT NULL,
   app_user VARCHAR2(36) NOT NULL,
   PRIMARY KEY (uuid),
   CONSTRAINT app_authorities_2_app_users FOREIGN KEY (app_user) REFERENCES testuser.app_users(uuid)
);
