#!/bin/bash


docker rm -f ejercicio1
docker run -d --name ejercicio1 -m "50Mb" -c 0  -p 5555:80  -e "ENV=dev" -e "VIRTUALIZACION=docker" apache-php:ejercicio1