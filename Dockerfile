FROM php:fpm-buster

RUN apt-get update \
    && apt-get install -y \
    libzip-dev \
    zip \
    && docker-php-ext-install pdo pdo_mysql \
    && docker-php-ext-enable pdo pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer
COPY --from=node:16.13.2 /usr/local/lib/node_modules /usr/local/lib/node_modules
COPY --from=node:16.13.2 /usr/local/bin/node /usr/local/bin/node
RUN ln -s /usr/local/lib/node_modules/npm/bin/npm-cli.js /usr/local/bin/npm
RUN npm install -g npm@latest

RUN chown -R www-data:www-data /var/www/html