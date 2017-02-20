# Lightweight Docker Image for PHP7 CLI

[![](https://images.microbadger.com/badges/image/lucor/php7-cli.svg)](http://microbadger.com/images/lucor/php7-cli "Get your own image badge on microbadger.com")

A lightweight Docker image for [PHP7](https://php.net/) based on Alpine linux

It provides:

- alpine `edge@community`
- PHP `v7.0.16`

with the following extensions:

- curl
- date
- dom
- fileinfo
- filter
- hash
- iconv
- json
- libxml
- mbstring
- mcrypt
- openssl
- pcre
- PDO
- pdo_sqlite
- Phar
- Reflection
- SimpleXML
- SPL
- standard
- tokenizer
- xml
- xmlreader
- xmlwriter
- Zend OPCache
- zip
- zlib

## Usage

    docker run -ti --rm -v $(pwd):/app lucor/php7-cli php -v
