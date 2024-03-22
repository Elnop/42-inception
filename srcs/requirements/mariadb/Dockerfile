ARG ALPINE_VERSION=3.18.6

FROM alpine:${ALPINE_VERSION} AS base

RUN apk update
RUN apk upgrade
RUN apk add --no-cache mariadb mariadb-server-utils pwgen && \
    rm -f /var/cache/apk/*

RUN mkdir -p /var/log/mysql/
RUN mkdir -p /run/mysqld

EXPOSE 3306

FROM base AS rootless

COPY ./conf/my.rootless.cnf /etc/my.cnf
COPY ./tools/setup.rootless.sh /scripts/setup.sh

VOLUME ["/var/lib/mysql"]

RUN chmod -R +x /scripts
ENTRYPOINT ["/scripts/setup.sh"]

FROM base AS production

COPY ./conf/my.cnf /etc/my.cnf
COPY ./tools/setup.sh /scripts/setup.sh

RUN chmod -R +x /scripts
VOLUME ["/var/lib/mysql"]

ENTRYPOINT ["/scripts/setup.sh"]