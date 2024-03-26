#!/bin/sh

[ -f /run-pre.sh ] && /run-pre.sh

if [ ! -d /usr/html ] ; then
  echo $0" : Creating directories..."
  mkdir -p /usr/html
  echo $0" : Fixing permissions..."
  chown -R nginx:nginx /usr/html
else
  echo $0" : Fixing permissions..."
  chown -R nginx:nginx /usr/html
fi

chown -R nginx:www-data /usr/html

# start php-fpm
mkdir -p /usr/logs/php-fpm
php-fpm81