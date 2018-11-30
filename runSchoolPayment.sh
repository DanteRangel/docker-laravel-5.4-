
#delete schoolPayment container
docker rm -f schoolPayment

#run schoolPayment
docker run -d -p 80:80 --name schoolPayment  -v /home/danterangelrobles/Documentos/RedWolf/:/var/www/html laravel-dependency


