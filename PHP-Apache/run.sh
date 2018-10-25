#!/bin/bash
#
# Executes docker-compose which runs the three needed docker images: Spots, SYS, Dbs
# 

# force kill & run
docker rm -f laravel


docker run -d --name laravel -p 80:80 -p 443:443 -v `pwd`/../RedWolf/distroller:/var/www/distroller -v `pwd`/../RedWolf/holfer:/var/www/holfer -v `pwd`/proyectos:/var/www/html laravel:v2
