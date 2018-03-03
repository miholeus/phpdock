<p align="center">
    <a href="https://www.docker.com/" target="_blank">
        <img src="https://www.docker.com/sites/default/files/mono_vertical_large.png" height="100px">
    </a>
    <h1 align="center">PHPdock</h1>
    <br>
</p>

[![Build Status](https://travis-ci.org/miholeus/phpdock.svg?branch=master)](https://travis-ci.org/miholeus/phpdock)

> ### Status
> This is still work in progress. The images available on docker hub are in **public preview** state.

## About

These Docker images are built on top of the official PHP Docker image, they contain additional PHP extensions required to run PHP applications.
Under `docker` folder you may find services that may be enabled for your application.


## Features

- Switch between PHP versions: 7.0, 7.1
- Switch database engine: MySQL, Postgres
- Choose NoSQL database: Memcached, Redis, MongoDB
- Easy to install/remove software

## Installable software

- Database engines: MySQL (MariaDB), Postgres
- NoSQL databases: Memcached, Redis, MongoDB, Aerospike, RethinkDB
- PHP compilers: PHP-FPM
- Message Queueing: RabbitMQ
- Nginx, Apache2

## Available PHP extensions

- Databases: pgsql, sqlsrv, pdo_sqlsrv, mysqli
- NoSQL: Memcached, Redis, MongoDB, Aerospike
- Message Queueing: amqp
- Cache & debugging: xdebug, opcache, blackfire
- Other extensions: zip, soap, bcmath, gmp, exif, tokenizer, intl, ghostscript, ldap, imagick, swoole
- Image optimizers: jpegoptim, optipng, pngquant, gifsicle
