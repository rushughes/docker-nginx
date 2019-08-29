FROM nginx:alpine

RUN	mkdir /var/run/php-fpm /var/www /var/www/html \
    && addgroup -g 82 -S www-data \
    && adduser -u 82 -D -S -G www-data www-data \
    && chown www-data: /var/run/php-fpm

COPY nginx.conf /etc/nginx/nginx.conf

VOLUME ["/var/www/html", "/usr/local/etc/php-fpm.d", "/var/run/php-fpm", "/etc/nginx/conf.d"]
