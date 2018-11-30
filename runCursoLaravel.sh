
#delete ergonhaus container
docker rm -f cursoLaravel

#run ergonhaus
docker run -d -p 80:80 -p 8000:8000 --name cursoLaravel  -v /home/danterangelrobles/Documentos/TecGurus/:/var/www/html laravel-dependency  


