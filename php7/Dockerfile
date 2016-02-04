FROM alpine:3.3

MAINTAINER Luca Corbo <lu.corbo@gmail.com>

ENV PHP_VERSION 7.0.3
ENV PHP_INI_DIR /usr/local/etc/php
ENV PHP_SHA256 5521df8db153aba35c90cf1a1829106b6bbdac32425216d440f9cc29f00a7c08

RUN apk --update add \
	    bash \
	    bison \
	    curl \
	    file \
	    git \
	    gmp \
	    grep \
	    icu \
	    libmcrypt \
	    libxml2 \
	    libbz2 \
	    libintl \
	    openssl \
	    re2c \
	    readline \
	    sqlite \
	    tar

COPY resources /build/
RUN /build/build_image.sh && rm -Rf /build

WORKDIR /app

CMD ["php", "-a"]
