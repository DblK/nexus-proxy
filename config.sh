#!/bin/sh

set -x

echo Build starting nginx config

echo replacing ___DOMAIN_NAME___/$DOMAIN_NAME
sed -i "s/___DOMAIN_NAME___/$DOMAIN_NAME/g" /etc/nginx/nginx.conf

if [ -z "$DOMAIN_NAME" ]; then
    echo "Need to set DOMAIN_NAME"
    exit 1
fi 

nginx -g 'daemon off;'
