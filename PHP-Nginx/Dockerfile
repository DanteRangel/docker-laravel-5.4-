FROM centos:7

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN                                                                     \
    yum -y install nginx --enablerepo=nginx                         &&  \
    yum -y install https://centos7.iuscommunity.org/ius-release.rpm &&  \
    yum -y install                                                      \
        php71u-bcmath                                                   \
        php71u-cli                                                      \
        php71u-common                                                   \
        php71u-dba                                                      \
        php71u-dbg                                                      \
        php71u-devel                                                    \
        php71u-embedded                                                 \
        php71u-enchant                                                  \
        php71u-fpm                                                      \
        php71u-fpm-httpd                                                \
        php71u-fpm-nginx                                                \
        php71u-zip                                                      \
        php71u-json                                                     \
        php71u-mcrypt                                                   \
        php71u-soap                                                     \
        php71u-mbstring                                                 \
        php71u-gd                                                       \
        php71u-xml                                                      \
        php71u-fpm-nginx                                                \
            --enablerepo=ius && yum clean all
EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

RUN echo "<?php phpinfo();?>" > /usr/share/nginx/html/index.php

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./bin/start.sh /start.sh
RUN chmod +x /start.sh
CMD /start.sh