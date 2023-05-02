#!/bin/bash
sed -i "s/MARIADB_ROOT_PASSWORD/$MARIADB_ROOT_PASSWORD/g" /etc/mysql/conf.d/db_script.sql && \
sed -i "s/MARIADB_DATABASE/$MARIADB_DATABASE/g" /etc/mysql/conf.d/db_script.sql && \
sed -i "s/MARIADB_USER/$MARIADB_USER/g" /etc/mysql/conf.d/db_script.sql
service mysql start 
mariadb < /etc/mysql/conf.d/db_script.sql
sleep 1

service mysql stop

mysqld_safe --bind-address=0.0.0.0