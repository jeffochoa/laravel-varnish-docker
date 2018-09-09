FROM php:7.2-fpm

LABEL maintainer="Jeff Ochoa"

COPY . /srv/app/
COPY .docker/php/php.ini /usr/local/etc/php/php.ini
COPY .docker/php/laravel-worker.conf /etc/supervisor/conf.d/laravel-worker.conf
COPY .docker/php/start.sh /startsupervisor

WORKDIR /srv/app/

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        supervisor

RUN docker-php-ext-install pdo_mysql \
    && pecl install xdebug-2.6.1 \
    && docker-php-ext-enable xdebug

COPY .docker/php/xdebug-dev.ini /usr/local/etc/php/conf.d/xdebug-dev.ini

RUN chown -R www-data:www-data /srv/app \
    && touch /var/run/supervisor.sock


# RUN sh /startsupervisor