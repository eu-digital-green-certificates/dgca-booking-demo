FROM nginx:1.19.10
COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template
