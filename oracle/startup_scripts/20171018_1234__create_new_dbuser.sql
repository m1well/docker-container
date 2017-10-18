-- mysql script
-- author: Michael Wellner
-- date: 18.10.2017

-- create new user
CREATE USER testuser IDENTIFIED BY password;

-- grant DBA privileges
GRANT DBA TO testuser;
