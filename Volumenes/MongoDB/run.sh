#!/bin/bash

docker rm -f mongo_db
docker run --name mongo_db -p 2707:27017 -v `pwd`/data:/data/db -d mongo:dev
