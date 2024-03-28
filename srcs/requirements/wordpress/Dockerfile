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

RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz
RUN tar -xzf /tmp/wordpress.tar.gz -C /var/www/html --strip-components=1
RUN rm /tmp/wordpress.tar.gz

WORKDIR /var/www/html

RUN echo \
$'\n'"define('DB_NAME', '${WORDPRESS_DB_NAME})'"; \
$'\n'"define('DB_USER', '${WORDPRESS_DB_USER})'"; \
$'\n'"define('DB_PASSWORD', '${WORDPRESS_DB_PASSWORD})'"; \
$'\n'"define('DB_HOST', '${WORDPRESS_DB_HOST})'"; \
>> wp-config.php

# EXPOSE 9000

CMD ["php-fpm81", "-F"]
