
#delete ergonhaus container
docker rm -f ergonhaus

#run ergonhaus
docker run -d -p 80:80 --name ergonhaus  -v /home/danterangelrobles/Documentos/RedWolf/ergonhaus:/var/www/html laravel-dependency  


