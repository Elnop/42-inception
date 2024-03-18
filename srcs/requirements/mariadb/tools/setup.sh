#!/bin/bash

service mariadb start

sleep 5

echo "CREATE DATABASE IF NOT EXISTS mymaria;" > db1.sql
echo "CREATE USER IF NOT EXISTS'$SQL_USER'@'localhost' identified by '$SQL_PASSWORD';" >> db1.sql
echo "GRANT ALL on mymaria.* to '$SQL_USER'@'localhost';" >> db1.sql
echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$SQL_ROOT_PASSWORD' ;" >> db1.sql
echo "FLUSH PRIVILEGES;" >> db1.sql

mysql < db1.sql

kill $(cat /run/mysqld/mysqld.pid)

mysqld