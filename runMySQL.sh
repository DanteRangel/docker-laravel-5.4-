#stop mysql
docker rm -f mysql
docker rm -f phpmyadmin
#run mysql

docker run --name mysql -e "MYSQL_ROOT_PASSWORD=311332065" -e "MYSQL_USER=root" -d -p 3306:3306 -v /home/danterangelrobles/Documentos/Data/MySQL:/var/lib/mysql   mysql:5.7



docker run --name phpmyadmin -d --link mysql:db -p 8080:80 phpmyadmin/phpmyadmin