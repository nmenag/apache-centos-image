FROM centos:7

RUN \
  yum -y install \ 
  httpd \ 
  php php-cli php-common \
  mod_ssl openssl

RUN echo "<?php phpinfo(); ?>" > /var/www/html/test.php

COPY ca.crt /ca.crt
COPY ca.key /ca.key
COPY ssl.conf /etc/httpd/conf.d/default.conf

EXPOSE 443

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

