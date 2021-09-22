FROM nginx:alpine

COPY nginx/default.conf.template /etc/nginx/conf.d/default.conf
CMD sed -i "s/PROXY_AUTH/$PROXY_AUTH/g" /etc/nginx/conf.d/default.conf
EXPOSE 80
