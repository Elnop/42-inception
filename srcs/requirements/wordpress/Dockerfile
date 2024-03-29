ARG ALPINE_VERSION=3.18.6

FROM alpine:${ALPINE_VERSION}

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
	curl \
    php81 \
    php81-fpm \
    php81-mysqli \
    php81-gd \
    php81-curl \
    php81-openssl \
    php81-mbstring \
    php81-xml \
    php81-zip \
    php81-json \
    php81-iconv \
    php81-posix

RUN mkdir -p /var/www/html
RUN adduser -u 82 -D -S -G www-data www-data
RUN chown www-data:www-data /var/www/html
RUN chmod 777 /var/www/html

EXPOSE 9000

COPY ./conf/php-fpm.conf /etc/php81/php-fpm.conf

RUN mkdir -p scripts
COPY tools/setup.sh /scripts/setup.sh
RUN chmod -R +x /scripts

WORKDIR /var/www/html

ENTRYPOINT [ "/scripts/setup.sh" ]
