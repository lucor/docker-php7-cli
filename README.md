# Lightweight Docker Image for PHP7 CLI

[![](https://badge.imagelayers.io/lucor/php7-cli:latest.svg)](https://imagelayers.io/?images=lucor/php7-cli:latest 'Get your own badge on imagelayers.io')

A lightweight Docker image for [PHP7](https://php.net/) based on Alpine linux

It provides:

- alpine `edge@testing`
- PHP `v7.0.8`

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

  docker run -ti --rm -v $(pwd):/app lucor/php php -v
