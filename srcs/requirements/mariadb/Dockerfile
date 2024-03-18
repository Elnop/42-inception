FROM debian:bullseye

RUN apt update
RUN apt upgrade
RUN apt install mariadb-server -y
RUN apt install mariadb-client -y

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN mkdir -p /var/run/mysqld
RUN chown mysql:mysql /var/run/mysqld/
RUN chmod -R 755 /var/run/mysqld/

RUN mkdir -p /var/lib/mysql
RUN chown mysql:mysql /var/lib/mysql/
RUN chmod -R 755 /var/lib/mysql/

COPY ./tools/setup.sh ./
RUN chmod +rx ./setup.sh

ENTRYPOINT ["bash", "./setup.sh"]

