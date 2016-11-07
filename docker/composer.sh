#!/bin/sh
php -r "copy('https://composer.github.io/installer.sig', 'installer.sig');"
EXPECTED_SIGNATURE=$(php -r "echo trim(file_get_contents('installer.sig'));")
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" = "$ACTUAL_SIGNATURE" ]
then
    php composer-setup.php --quiet
    RESULT=$?
    rm composer-setup.php
    rm installer.sig
    exit $RESULT
else
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    rm installer.sig
    exit 1
fi
