FROM alpine:3.10

RUN apk add --update nginx nginx-mod-http-headers-more &&\
    mkdir -p /tmp/nginx/client-body

COPY files/start.sh /start.sh

RUN chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    chmod +x /start.sh &&\
    rm -rf /var/cache/apk/*

CMD ["/start.sh"]
