FROM alpine:3.8

LABEL maintainer="Jeff Ochoa"

WORKDIR /srv/app/

COPY .docker/supervisor/supervisor.conf /etc/supervisor/conf.d

RUN apk add supervisor
