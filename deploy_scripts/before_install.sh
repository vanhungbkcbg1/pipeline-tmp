#!/bin/bash
echo "Before install"
apt update -y && apt install nginx -y
apt install php-fpm php-mysql -y
service php7.2-fpm start


