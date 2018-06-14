# docker-php

| [![Build Status](https://travis-ci.org/crazybydefault/docker-php.svg?branch=master)](https://travis-ci.org/crazybydefault/docker-php) | [![](https://imagelayers.io/badge/crazybydefault/php:latest.svg)](https://imagelayers.io/?images=crazybydefault/php:latest 'Get your own badge on imagelayers.io') |
|:-:|:-:|

An Alpine-based PHP image loaded with modules.

The container contains the following:
* `PHP` (5.5+)
* `PHP-FPM`

## Images
* `latest`, `0.1`, `0.1.2` ([Dockerfile](./Dockerfile))

## Usage
Pull the docker image from Docker hub as:
```
$ docker pull crazybydefault/php
```
By default, this will pull the latest image.

A basic run command looks like:
```
$ docker run --rm crazybydefault/php:latest
```

But by itself, this image is not really helpful and should be used as a base to
extend functionality. Here is the output of `php -m` in this container:

```
[PHP Modules]
bcmath
bz2
Core
ctype
curl
date
dba
dom
ereg
exif
fileinfo
filter
ftp
gd
gettext
hash
iconv
json
libxml
mbstring
mcrypt
mysql
mysqli
mysqlnd
openssl
pcre
PDO
pdo_mysql
pdo_sqlite
Phar
posix
readline
Reflection
session
shmop
SimpleXML
soap
sockets
SPL
sqlite3
standard
sysvmsg
sysvsem
sysvshm
tokenizer
wddx
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib

[Zend Modules]
Zend OPcache
```

## Build
To build the latest image from source, run
```
$ make latest
```
