FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN docker-php-ext-install pdo pdo_mysql

## We don't have a CMD or ENTRYPOINT as we want to use the base image's entrypoint to run the server