-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new app_users_2_authorities table @ testuser schema
CREATE TABLE testuser.app_users_2_authorities (
  app_user NUMBER(20) NOT NULL,
  app_authority NUMBER(20) NOT NULL,
  PRIMARY KEY (app_user, app_authority),
  CONSTRAINT fk_2_app_users FOREIGN KEY (app_user) REFERENCES testuser.app_users(id),
  CONSTRAINT fk_2_app_authorities FOREIGN KEY (app_authority) REFERENCES testuser.app_authorities(id)
);
