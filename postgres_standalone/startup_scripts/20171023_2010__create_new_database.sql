-- mysql script
-- author: Michael Wellner
-- date: 23.10.2017

-- drop database if it exists
DROP DATABASE IF EXISTS mydatabase;

-- create new database with utf8 charset
CREATE DATABASE mydatabase ENCODING UTF8 LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8' TEMPLATE template0;
