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

# TODO: run redis daemon
RUN redis-server

# TODO: run nginx daemon on test completed
RUN composer install && 
	composer update &&
	composer test &&
	nginx -d

