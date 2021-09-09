FROM nginx:alpine

COPY nginx/default.conf.template /etc/nginx/conf.d/default.conf

EXPOSE 80
