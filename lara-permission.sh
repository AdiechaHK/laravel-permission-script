#!/bin/bash

echo -n "Enter larevel project folder > "

read laradir

find $laradir/ -type d -exec sudo chmod 755 {} \;

find $laradir/ -type d -exec sudo chmod ug+s {} \;

find $laradir/ -type f -exec sudo chmod 644 {} \;

sudo chown -R $USER:www-data $laradir/

sudo chmod -R 777 $laradir/storage

sudo chmod -R 777 $laradir/bootstrap/cache/