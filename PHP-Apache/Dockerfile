FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install apache2 -y

RUN apt-get -y install php \
    php-pear \
    php7.0-dev \
    php7.0-zip \
    php7.0-curl \
    php7.0-gd \
    php7.0-mysql \
    php7.0-mcrypt \
    php7.0-xml \
    libapache2-mod-php7.0
ENV variable valor

RUN echo $variable > /var/www/html/hola.html && echo '<?php phpinfo();?>' > /var/www/html/index.php
RUN mkdir -p /var/www/distroller && mkdir -p /var/www/holfer && mkdir -p /var/www/html
COPY default.conf /etc/apache2/sites-enabled/ssl.conf 
COPY laravel.crt /etc/apache2/ssl/laravel.crt
COPY laravel.key /etc/apache2/ssl/laravel.key
COPY proyectos /var/www/html/proyectos
COPY cmd.sh /var/www/cmd.sh

RUN chmod +x /var/www/cmd.sh
RUN a2enmod ssl 

EXPOSE 80 443
CMD '/var/www/cmd.sh'


