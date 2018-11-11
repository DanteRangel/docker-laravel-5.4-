#stop mongo
docker rm -f mongo
#run mongo

docker run --name mongo -d -p 27017:27017 -v /home/danterangelrobles/Documentos/Data/Mongo:/data/db  mongo
