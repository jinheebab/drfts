# Ours, Ourselves

Project Drfts (temporary naming), a safe community media platform for us, ours, ourselves

## Tech specs
 - PHP 7 (alpine latest) + embeded web server
 - Docker CE (^17.09); https://docs.docker.com/engine/installation/linux/docker-ce
 - Redis (^3.0.6); dockerfile included; https://redis.io/commands
 - Sqlite (^3.0); https://www.sqlite.org/fullsql.html
 - Slim framework

## Install (based on ubuntu)
 - docker https://docs.docker.com/engine/installation/linux/docker-ce
   - `$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
   - `$ sudo apt-key fingerprint 0EBFCD88`
   - `$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
   - `$ sudo apt update -y && sudo apt install -y docker-ce`
 - PHP 7 & Composer
   - `$ sudo apt install php7`
   - `$ curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer`

## Project Initialization
 - Git clone to local repository
   - `$ git clone https://github.com/insaint03/drfts.git`
   - Following commands must be executed in the `drfts` directory
 - Project install & update
   - `$ composer install`
   - `$ composer update`
 - Run docker container & test
   - `$ sudo docker-compose up -d`
   - Visit http://localhost:8080 on your browser

 
