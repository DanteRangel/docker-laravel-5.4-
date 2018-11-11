
#delete distroller container
docker rm -f distroller

#run distroller
docker run -d -p 80:80 --name distroller  -v /home/danterangelrobles/Documentos/RedWolf/distroller:/var/www/html laravel-dependency  


