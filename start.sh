#!/bin/sh

# Replace __PORT__ with the actual $PORT from Heroku
envsubst '__PORT__' < nginx.conf.template > nginx.conf

# Start nginx using the generated config
nginx -c "$PWD/nginx.conf" -g 'daemon off;'