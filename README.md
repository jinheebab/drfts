# Ours, Ourselves

Project Drfts (temporary naming), a safe community media platform for us, ours, ourselves

## Tech specs
 - PHP 7 (alpine latest) + embeded web server
 - Docker CE (^17.09); https://docs.docker.com/engine/installation/linux/docker-ce
 - Redis (^3.0.6); dockerfile included; https://redis.io/commands
 - Sqlite (^3.0); https://www.sqlite.org/fullsql.html
 - Slim framework

## Install (ubuntu)
 - docker https://docs.docker.com/engine/installation/linux/docker-ce
   - `$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -`
   - `$ sudo apt-key fingerprint 0EBFCD88`
   - `$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"`
   - `$ sudo apt update -y && sudo apt install -y docker-ce`
 - PHP 7 & Composer
   - `$ sudo apt install php7`
   - `$ curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer`

## Install (OSX)
 - Docker for Mac
   - https://store.docker.com/editions/community/docker-ce-desktop-mac
   - Drag your cute whale and drop it on the Appliation directory
 - Brew (if you don't have one)
   - `$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
 - PHP 7 (from https://slobell.com/blogs/43) 
   - `$ brew update`
   - `$ brew upgrade`
   - `$ brew tap homebrew/dupes`
   - `$ brew tap homebrew/versions`
   - `$ brew tap homebrew/homebrew-php`
   - (If you have any previous version of php, unlink it first; `$brew unlink php56`)
   - `$ brew install php71`
 - Composer (from https://www.abeautifulsite.net/installing-composer-on-os-x)
   - `$ curl -sS https://getcomposer.org/installer | php`
   - `$ sudo mv composer.phar /usr/local/bin/`
   - Open ~/.bash_profile and add following line; `alias composer="php /usr/local/bin/composer.phar"`

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

 
