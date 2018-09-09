FROM nginx:1.15 AS nginx

LABEL maintainer="Jeff Ochoa"

RUN rm /etc/nginx/conf.d/default.conf


COPY .docker/nginx/nginx.conf /etc/nginx/nginx.conf
COPY .docker/nginx/conf.d/*.conf /etc/nginx/conf.d/
COPY public/ /srv/app/public
