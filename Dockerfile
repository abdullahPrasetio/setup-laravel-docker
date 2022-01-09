FROM php:fpm-buster

RUN apt-get update \
    && apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-enable pdo pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
RUN chown -R www-data:www-data /var/www/html