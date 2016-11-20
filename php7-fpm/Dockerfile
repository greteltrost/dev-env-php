FROM alpine:edge
MAINTAINER Pablo Guerino <pablo.guerino@jadelabs.net>

WORKDIR /src

RUN addgroup www -S && adduser -D -S -G www www

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community  add \
        bash \
        ca-certificates \
        curl \
        unzip \
        php7 \
        php7-posix \
        php7-xml \
        php7-zip \
        php7-xmlreader \
        php7-zlib \
        php7-opcache \
        php7-mcrypt \
        php7-openssl \
        php7-curl \
        php7-json \
        php7-session \        
        php7-dom \
        php7-phar \
        php7-mbstring \
        php7-pdo \
        php7-pdo_mysql \
        php7-pdo_sqlite \
        php7-soap \
        php7-bcmath \
        php7-gd \
        php7-gettext \
        php7-iconv \
        php7-ctype \
        php7-fpm

RUN ln -s /usr/bin/php7 /usr/bin/php
COPY php.ini /etc/php7/php.ini
COPY php-fpm.conf /etc/php7/php-fpm.conf

EXPOSE 9000
CMD ["php-fpm7", "-F"]
