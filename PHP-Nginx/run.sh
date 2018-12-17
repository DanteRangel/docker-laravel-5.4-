#!/bin/bash
#
# Executes docker-compose which runs the three needed docker images: Spots, SYS, Dbs
# 

# force kill & run
docker rm -f php_nginx


docker run -d --name php_nginx -p 80:80 -p 443:443 php:nginx
# docker run -d --name php_nginx -p 80:80 -e "prueba2=4321" php:nginx
#  docker run -d --name php_nginx_1000 -p 1000:80 php:nginx
