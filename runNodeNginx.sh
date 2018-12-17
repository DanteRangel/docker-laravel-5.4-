#delete node-nginx container
docker rm -f node-nginx

#run node-nginx
docker run --name node-nginex -p 1337:3000 -d  -v /home/danterangelrobles/Documentos/RedWolf/quaker:/usr/src/app node-nginx 