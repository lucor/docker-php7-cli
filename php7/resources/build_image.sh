#!/usr/bin/env sh

BASE_DIR=$(cd "$(dirname "$0")" && pwd)

mkdir -p $PHP_INI_DIR/conf.d

apk --update add \
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

apk --update add \
    autoconf \
    build-base \
    bzip2-dev \
    curl-dev \
    gmp-dev \
    icu-dev \
    libmcrypt-dev \
    libxml2-dev \
    openssl-dev \
    readline-dev \
    sqlite-dev

curl -sSL "http://php.net/get/php-$PHP_VERSION.tar.gz/from/this/mirror" -o php.tar.gz \
    && [[ $PHP_SHA256 == "$(sha256sum php.tar.gz | awk '{print $1}')" ]] \
    && mkdir -p /usr/src \
    && tar -zxf php.tar.gz -C /usr/src \
    && rm -f php.tar.* \
    && cd /usr/src/php-$PHP_VERSION \
    && ./configure \
        --with-config-file-path="$PHP_INI_DIR" \
        --with-config-file-scan-dir="$PHP_INI_DIR/conf.d" \
        --disable-cgi \
        --disable-debug \
        --disable-phpdbg \
        --enable-intl \
        --enable-mbstring \
        --enable-opcache \
        --enable-bcmath \
        --enable-exif \
        --enable-pcntl \
        --enable-zip \
        --enable-zend-signals \
        --enable-sockets \
        --enable-shmop \
        --enable-sysvmsg \
        --enable-sysvsem \
        --enable-sysvshm \
        --enable-xmlreader \
        --without-pear \
        --with-curl \
        --with-mcrypt \
        --with-mysqli=mysqlnd \
        --with-pdo-mysql=mysqlnd \
        --with-pdo-sqlite \
        --with-readline \
        --with-iconv \
        --with-openssl \
        --with-readline \
        --with-zlib=/usr \
        --with-bz2=/usr \
    && make \
    && make install \
    && make clean

cp $BASE_DIR/php.ini /usr/local/etc/php/php.ini

apk del --purge \
    autoconf \
    build-base \
    bzip2-dev \
    curl-dev \
    gmp-dev \
    icu-dev \
    libmcrypt-dev \
    libxml2-dev \
    openssl-dev \
    readline-dev \
    sqlite-dev

rm -rf /var/cache/apk/* \
  && rm -rf /tmp/php* \
  && rm -rf /usr/src/php*
