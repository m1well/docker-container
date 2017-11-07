-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_authorities table @ testuser schema
CREATE TABLE testuser.app_authorities (
   id NUMBER(20) NOT NULL,
   type VARCHAR2(20) NOT NULL,
   PRIMARY KEY (id)
);

CREATE SEQUENCE testuser.app_authorities_seq;
