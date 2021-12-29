#!/bin/bash
echo "Before install"
apt install software-properties-common -y
add-apt-repository ppa:ondrej/php
apt update -y
apt install nginx -y
apt install php7.4-fpm php7.4-mysql php7.4-mbstring -y
service php7.4-fpm start


