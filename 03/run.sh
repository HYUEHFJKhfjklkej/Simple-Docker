#!/bin/bash

gcc $(pkg-config --cflags --libs fcgi) hello.c -lfcgi -o con

nginx spawn-fcgi -a 127.0.0.1 -p 8080 -f con -n
nginx -g 'daemon off;'