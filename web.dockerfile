FROM alpine:latest

ENV HOST localhost
ENV PORT 8000

RUN apk update && \
	apk add \
		php7 sqlite curl nginx \
		php7-sqlite3 php7-socket php7-json php7-openssl php7-intl php7-session php7-mbstring && \
	curl -sS https://getcomposer.org/install | php -- --install-dir=/usr/loca/bin --filname=composer && \
	chmod +x /usr/local/bin/composer

WORKDIR /var/www

RUN git clone https://github.com/insaint03/drfts.git

# Run redis server
RUN redis-server --daemonize yes

# TODO: run nginx daemon on test completed
RUN composer install && \
	composer update && \
	composer test

# RUN nginx
