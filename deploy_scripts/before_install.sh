#!/bin/bash
echo "Before install"
apt install  ca-certificates apt-transport-https software-properties-common -y
add-apt-repository ppa:ondrej/php -y
apt update -y
apt install nginx -y
apt install php8.0-fpm php9.0-mysql php8.0-mbstring -y
service php8.0-fpm start


