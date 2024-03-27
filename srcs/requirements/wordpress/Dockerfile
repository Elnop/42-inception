ARG ALPINE_VERSION=3.18.6

FROM alpine:${ALPINE_VERSION}

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    curl \
    php8 \
    php8-fpm \
    php8-opcache \
    php8-mysqli \
    php8-json \
    php8-openssl \
    php8-curl \
    php8-zlib \
    php8-gd \
    php8-session \
    php8-ctype \
    php8-mbstring \
    php8-dom \
    php8-simplexml \
    php8-tokenizer \
    php8-xml \
    php8-xmlwriter \
    php8-xmlreader \
    php8-posix \
    php8-sockets \
    php8-iconv \
    php8-fileinfo \
    php8-ldap \
    php8-phar \
    php8-intl \
    php8-exif \
    php8-pcntl \
    php8-xmlrpc \
    php8-posix \
    php8-bcmath \
    php8-pecl-imagick \
    php8-pecl-redis \
    php8-pear \
    php8-dev \
    php8-pear \
    php8-zip \
    imagemagick \
    imagemagick-dev \
    && rm -rf /var/cache/apk/*

# Créer un répertoire pour le code source de WordPress
RUN mkdir -p /var/www/html

# Télécharger et extraire WordPress
RUN curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz && \
    tar -xzf /tmp/wordpress.tar.gz -C /var/www/html --strip-components=1 && \
    rm /tmp/wordpress.tar.gz

# Définir le répertoire de travail
WORKDIR /var/www/html

# Exposer le port 9000 pour PHP-FPM
EXPOSE 9000

# Commande par défaut pour démarrer PHP-FPM
CMD ["php-fpm8", "-F"]
