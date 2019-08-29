FROM nginx:alpine

RUN	mkdir /var/run/php-fpm /var/www /var/www/html \
    && chown nginx:www-data: /var/run/php-fpm

COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/www/html", "/usr/local/etc/php-fpm.d", "/var/run/php-fpm", "/etc/nginx/conf.d"]
