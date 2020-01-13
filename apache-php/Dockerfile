FROM centos:7

RUN \
  yum install httpd -y php php-cli php-common

RUN echo "<?php phpinfo(); ?>" > /var/www/html/test.php

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]

