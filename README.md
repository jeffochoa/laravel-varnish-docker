# Requirements

- Docker
- Docker compose

## General disclaimer

**Do not use on production.** This image is meant to be use for development purposes only, the use of it on a production environment is all up to your entire responsibility.

## Includes

- Varnish
- Redis
- MariaDB
- Nginx
- Supervisor

## Install

Download and run:

```bash
docker-compose build --no-cache
```

> The `public/` folder must be present before build the image

Then add the config for your local environment

```bash
cp .docker.env.example .docker.env
```

## Interacting with the containers

Use the interactive console

```bash
docker exec -it laravel-app bash
docker exec -it laravel-nginx bash
docker exec -it laravel-varnish bash
docker exec -it laravel-database bash
```

## Running supervisor

Open the terminal in the app container

```bash
docker exec -it laravel-app bash
```

Then start the laravel worker

```bash
supervisorctl start laravel-worker:*
```

 ---

 # Want to know more about Docker?
> Learn How to Make PHP Development with Docker Feel like 127.0.0.1

 [![Docker for PHP developers](https://bitpress.io/assets/images/docker-book/lead-product.png)](https://bitpress.io/docker-for-php-developers/)

This book and video-course was created by [@paulredmon](https://twitter.com/paulredmond)

# Licence
This package is an open-sourced software licensed under the MIT license.