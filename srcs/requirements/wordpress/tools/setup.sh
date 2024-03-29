#!/bin/sh
# set -eux

if [ ! -f ./wp-config.php ]; then
	echo "--- init wordpress ---"
	curl -o wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz
	tar xfz wordpress.tar.gz
	mv wordpress/* .
	rm -rf wordpress.tar.gz
	rm -rf wordpress
	#Inport env variables in the config file
	sed -i "s/username_here/$WORDPRESS_DB_USER/g" wp-config-sample.php
	sed -i "s/password_here/$WORDPRESS_DB_PASSWORD/g" wp-config-sample.php
	sed -i "s/localhost/$WORDPRESS_DB_HOST/g" wp-config-sample.php
	sed -i "s/database_name_here/$WORDPRESS_DB_NAME/g" wp-config-sample.php
	cp wp-config-sample.php wp-config.php
fi
echo "--- php-fpm ---"
php-fpm81 -F
echo "--- wordpress end ---"