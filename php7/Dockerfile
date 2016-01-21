FROM alpine:3.3

MAINTAINER Luca Corbo <lu.corbo@gmail.com>

ENV PHP_VERSION 7.0.2
ENV PHP_INI_DIR /usr/local/etc/php
ENV PHP_SHA256 040198aef3dc5f17c253c1282160aabc6a05ca0b18b3d6fc9213970363083412

COPY resources /build/
RUN /build/build_image.sh && rm -Rf /build

WORKDIR /app

CMD ["php", "-a"]
