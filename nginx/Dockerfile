FROM larryeitel/dk_nginx:0.1

MAINTAINER Larry Eitel <larry@eitel.com>

ADD nginx.conf /etc/nginx/
COPY sites-available/*.conf /etc/nginx/sites-available/
COPY includes/* /etc/nginx/includes/

ARG PHP_UPSTREAM=php-fpm
