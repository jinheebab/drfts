FROM alpine:latest

ENV HOST localhost
ENV PORT 8000

RUN apk update && \
	apk add \
		php7 sqlite curl nginx \
		php7-sqlite3 php7-socket php7-json php7-openssl php7-intl php7-session php7-mbstring && \
	curl -sS https://getcomposer.org/install | php -- --install-dir=/usr/loca/bin --filname=composer && \
	chmod +x /usr/local/bin/composer

COPY ./* /var/www/

WORKDIR /var/www

RUN composer install

# TODO: RUN nginx
RUN nginx -d ${NGINX_CONF}

# TODO: redis connection

# TODO: sqlite volume

