#!/usr/bin/env bash

#### halt script on error
set -xe

echo '##### Print docker version'
docker --version

echo '##### Print environment'
env | sort

#### Build the Docker Images
if [ -n "${PHP_VERSION}" ]; then
    cp .env.dist .env
    sed -i -- "s/PHP_VERSION=.*/PHP_VERSION=${PHP_VERSION}/g" .env
    sed -i -- 's/=false/=true/g' .env
### SET PHP INI FILES
    sed -i -- "s/AEROSPIKE_INI_FILE=.*/AEROSPIKE_INI_FILE=aerospike.ini/g" .env
    sed -i -- "s/XDEBUG_INI_FILE=.*/XDEBUG_INI_FILE=xdebug.ini/g" .env
    cat .env
    docker-compose build ${BUILD_SERVICE}
    docker images
fi
