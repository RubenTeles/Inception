CREATE DATABASE MARIADB_DATABASE;
CREATE USER 'MARIADB_USER'@'%' IDENTIFIED BY 'MARIADB_ROOT_PASSWORD';
GRANT ALL PRIVILEGES ON *.* TO 'MARIADB_USER'@'%';
FLUSH PRIVILEGES;