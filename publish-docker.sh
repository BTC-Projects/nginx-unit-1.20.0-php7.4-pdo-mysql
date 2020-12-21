#!/bin/bash

export RELEASE=${1:-1.20.0-php7.4}

aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/u6r9z1w5
docker tag nginx-unit-btc:${RELEASE} public.ecr.aws/u6r9z1w5/nginx-unit-btc:${RELEASE}
docker push public.ecr.aws/u6r9z1w5/nginx-unit-btc:${RELEASE}