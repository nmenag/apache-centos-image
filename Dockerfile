FROM centos:7

RUN yum update -y

RUN yum install httpd -y

WORKDIR /var/www/html
COPY site .

ENV contenido prueba

RUN echo "$contenido" > /var/www/html/prueba.html

ENTRYPOINT ["/usr/sbin/httpd","-D","FOREGROUND"]
