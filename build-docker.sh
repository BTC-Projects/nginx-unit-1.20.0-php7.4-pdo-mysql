#!/bin/bash

export RELEASE=${1:-1.20.0-php7.4}

docker build -t nginx-unit-btc:${RELEASE} .
