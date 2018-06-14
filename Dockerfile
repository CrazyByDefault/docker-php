FROM alpine:latest

MAINTAINER Shashank Varanasi "sasi8998vv@gmail.com"

RUN apk update &&\
  apk add --update \
    curl \
    openrc \
    php5-bcmath \
    php5-bz2 \
    php5-cli \
    php5-curl \
    php5-ctype \
    php5-dba \
    php5-dom \
    php5-exif \
    php5-fpm \
    php5-ftp \
    php5-gd \
    php5-gettext \
    php5-iconv \
    php5-json \
    php5-mcrypt \
    php5-mysql \
    php5-mysqli \
    php5-opcache \
    php5-openssl \
    php5-pdo \
    php5-pdo_mysql \
    php5-pdo_sqlite \
    php5-phar \
    php5-posix \
    php5-shmop \
    php5-soap \
    php5-sockets \
    php5-sqlite3 \
    php5-sysvmsg \
    php5-sysvsem \
    php5-sysvshm \
    php5-wddx \
    php5-xcache \
    php5-xml \
    php5-xmlreader \
    php5-zip \
    php5-zlib \
    musl &&\
  php -r "readfile('https://getcomposer.org/installer');" > composer-setup.php &&\
  php composer-setup.php --install-dir=/bin --filename=composer &&\
  php -r "unlink('composer-setup.php');" &&\
  # use sockets as they are memory efficient
  sed -i "s/^listen.*/listen = \/var\/run\/php5\-fpm.sock/" /etc/php/php-fpm.conf &&\
  # allow container environment variables into PHP-FPM
  sed -i "s/^;clear_env.*/clear_env = no/" /etc/php/php-fpm.conf &&\
  # don't override
  rm -rf /var/cache/apk/*
