
#delete cursophp container
docker rm -f cursophp

#run cursophp

docker run -d -p 81:80 --name cursophp  -v /home/danterangelrobles/Documentos/TecGurus/CursoPHP:/var/www/html laravel-dependency
