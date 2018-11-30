FROM centos:7
RUN yum -y update
##install apache
RUN yum -y install httpd                                 && \
#install php  
  yum -y install https://centos7.iuscommunity.org/ius-release.rpm         && \
  yum -y install                                                             \
    mod_php71u                                                               \
    php71u-cli                                                               \
    php71u-mysqlnd                                                           \
    php71u-soap                                                              \
    php71u-xml                                                               \
    php71u-zip                                                               \
    php71u-json                                                              \
    php71u-mcrypt                                                            \
    php71u-mbstring                                                          \
    php71u-zip                                                               \
    php71u-gd                                                                \
    php71u-xdebug                                                            \
            --enablerepo=ius && yum clean all
#install composer
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer

COPY httpd.conf /etc/httpd/conf/httpd.conf
RUN /usr/sbin/httpd -k stop
RUN /usr/sbin/httpd -k start
           
CMD apachectl -DFOREGROUND


