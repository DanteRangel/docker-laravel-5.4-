#!/bin/bash
#
# Executes docker-compose which runs the three needed docker images: Spots, SYS, Dbs
# 

# force kill & run
docker rm -f php_apache


docker run -d --name php_apache -p 80:80 -p 443:443 -v `pwd`/../../RedWolf/distroller:/var/www/distroller -v `pwd`/../../RedWolf/holfer:/var/www/holfer -v `pwd`/proyectos:/var/www/html php:apache
