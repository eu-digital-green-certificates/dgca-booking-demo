FROM nginx:alpine

COPY nginx/default.conf.template /etc/nginx/conf.d/default.conf
COPY ./entrypoint/entrypoint.sh /entrypoint.sh
EXPOSE 80
STOPSIGNAL SIGTERM
CMD sh ./entrypoint.sh