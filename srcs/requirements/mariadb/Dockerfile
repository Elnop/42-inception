FROM alpine:3.18.6

EXPOSE 3306

RUN apk update
RUN apk upgrade

RUN apk add --no-cache mariadb mariadb-server-utils pwgen && \
    rm -f /var/cache/apk/*

RUN mkdir /var/log/mysql/
RUN chmod 777 /var/lib/mysql

COPY ./conf/my.cnf /etc/my.cnf

COPY ./tools/setup.sh /scripts/setup.sh
RUN chmod -R 755 /scripts

VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/scripts/setup.sh"]