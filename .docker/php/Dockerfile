FROM php:7.2-fpm

LABEL maintainer="Paul Redmond"

COPY . /srv/app/
COPY .docker/php/php.ini /usr/local/etc/php/php.ini

WORKDIR /srv/app/

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
    supervisor

COPY .docker/php/laravel-worker.ini /etc/supervisor/conf.d/laravel-worker.ini

RUN docker-php-ext-install pdo_mysql \
    && pecl install xdebug-2.6.1 \
    && docker-php-ext-enable xdebug \
    && touch /var/run/supervisor.sock  \
    && supervisord -c /etc/supervisor/supervisord.conf \
    && supervisorctl reread \
    && supervisorctl update

COPY .docker/php/xdebug-dev.ini /usr/local/etc/php/conf.d/xdebug-dev.ini

RUN chown -R www-data:www-data /srv/app