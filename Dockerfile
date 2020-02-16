FROM alpine:3.11

RUN apk add --update nginx nginx-mod-http-headers-more &&\
    mkdir -p /tmp/nginx/client-body

COPY files/start.sh /start.sh

RUN mkdir /web &&\
    chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    chmod +x /start.sh &&\
    rm -rf /var/cache/apk/*

CMD ["/start.sh"]
