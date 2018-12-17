#!/bin/bash


docker rm -f ejercicio2
docker run -d --name ejercicio2 -m "100Mb" -c 0  -p 8181:80  -e "ENV=stg" -e "VIRTUALIZACION=docker" -e "TYPE=container" apache-php:ejercicio1