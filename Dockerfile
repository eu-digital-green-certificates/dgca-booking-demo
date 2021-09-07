FROM nginx:latest
COPY /nginx/default.conf.template /etc/nginx/templates/default.conf.template
