#!/usr/bin/env bash

set -e

if [ "$1" = 'init' ]; then
    composer create-project drupal-tome/tome-project /var/www/tome --stability dev --no-interaction
    vendor/bin/drush tome:init
elif [ "$1" = 'runserver' ]; then
    echo "Use this URL to login as admin once the server is started:"
    vendor/bin/drush uli -l 0.0.0.0:8888
    echo
    vendor/bin/drush runserver 0.0.0.0:8888
else
    exec "$@"
fi
