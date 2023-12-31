FROM php:8.1.18-fpm-alpine

WORKDIR /var/www/html

COPY src .

RUN docker-php-ext-install pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html

## We don't have a CMD or ENTRYPOINT as we want to use the base image's entrypoint to run the server