#!/bin/bash
echo "After install"
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
php composer.phar self-update 1.10.1
#php composer.phar install --no-interaction --no-progress
