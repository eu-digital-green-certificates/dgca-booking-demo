#!/bin/sh
sed -i "s/PROXY_AUTH/$PROXY_AUTH/g" /etc/nginx/conf.d/default.conf;
sh docker-entrypoint.sh nginx -g 'daemon off;'