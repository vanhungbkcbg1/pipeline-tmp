#!/bin/bash
echo "After install"
cd /var/www/html
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
php composer.phar self-update 1.10.10
php composer.phar install --no-interaction --no-progress
# copy config to nginx config
cp ./conf/laravel.conf /etc/nginx/conf.d/
service nginx reload
