FROM alpine:3.12

RUN apk add --update nginx nginx-mod-http-headers-more &&\
    mkdir -p /tmp/nginx/client-body &&\
    mkdir /web &&\
    chown -R nginx:www-data /web &&\
    chown -R nginx /var/lib/nginx &&\
    mkdir /run/nginx &&\
    rm -rf /var/cache/apk/*
    
CMD ["nginx", "-g", "daemon off;"]
