FROM php:fpm-alpine
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.tuna.tsinghua.edu.cn/g' /etc/apk/repositories \
    && apk update \
    && apk add nginx \
    && mkdir /run/nginx
COPY ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
CMD nginx&&php-fpm
