if [! -f /var/www/html/wp-config.php]; then
	curl -o /tmp/wordpress.tar.gz -SL https://wordpress.org/latest.tar.gz
	tar -xzf /tmp/wordpress.tar.gz -C /var/www/html --strip-components=1
	rm /tmp/wordpress.tar.gz
	echo \
$'\n'"define('DB_NAME', '${WORDPRESS_DB_NAME})'"; \
$'\n'"define('DB_USER', '${WORDPRESS_DB_USER})'"; \
$'\n'"define('DB_PASSWORD', '${WORDPRESS_DB_PASSWORD})'"; \
$'\n'"define('DB_HOST', '${WORDPRESS_DB_HOST})'"; \
>> wp-config.php
fi
