-- create the databases
CREATE DATABASE IF NOT EXISTS dvwa;

-- create the users for each database
CREATE USER 'dvwa'@'%' IDENTIFIED BY 'p@ssw0rd';
GRANT CREATE, ALTER, INDEX, LOCK TABLES, REFERENCES, UPDATE, DELETE, DROP, SELECT, INSERT ON `dvwa`.* TO 'dvwa'@'%';

FLUSH PRIVILEGES;
