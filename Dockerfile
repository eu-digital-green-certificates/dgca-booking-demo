FROM alpine:latest

RUN apk add nginx

RUN mkdir -p /run/nginx

RUN touch /run/nginx/nginx.pid

RUN adduser -D -g 'www' www

RUN mkdir /www

RUN chown -R www:www /var/lib/nginx

RUN chown -R www:www /www

COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template

EXPOSE 80

RUN ["./usr/sbin/nginx"]

ENTRYPOINT ["--http-port", "80", "--http-bundle", "-v"]
