#!/bin/bash

set -x

echo Build starting nginx config

echo replacing ___DOMAIN_NAME___/$DOMAIN_NAME
sed -i "s/___DOMAIN_NAME___/$DOMAIN_NAME/g" /etc/nginx/nginx.conf

nginx -g 'daemon off;'