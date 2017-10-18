-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new user
CREATE USER 'testuser'@'%' IDENTIFIED BY 'password';

-- grant all privileges
GRANT ALL PRIVILEGES ON *.* TO 'testuser'@'%' IDENTIFIED BY 'password';
