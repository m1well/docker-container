--------------------
-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017
--------------------

-- create new user
CREATE USER 'masteruser'@'%' IDENTIFIED BY 'masterpassword';

-- grant all privileges
GRANT ALL PRIVILEGES ON * . * TO 'masteruser'@'%' identified by 'masterpassword';
