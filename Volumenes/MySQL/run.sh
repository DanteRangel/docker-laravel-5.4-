#!/bin/bash

docker rm -f my_db
docker run -d -p 3030:3306 --name my_db -e MYSQL_ROOT_PASSWORD=12345678 -d -v `pwd`/data/mysql:/var/lib/mysql mysql:dev 

