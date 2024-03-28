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

EXPOSE 9000

RUN mkdir scripts
COPY tools/setup.sh scripts/setup.sh

ENTRYPOINT [ "scripts/setup.sh" ]
