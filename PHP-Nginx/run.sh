#!/bin/bash
#
# Executes docker-compose which runs the three needed docker images: Spots, SYS, Dbs
# 

# force kill & run
docker rm -f php_nginx


docker run -d --name php_nginx -p 80:80 -p 443:443 php:nginx
