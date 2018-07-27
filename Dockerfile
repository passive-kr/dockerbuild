FROM ubuntu:16.04
MAINTAINER yongjju
LABEL purpose="HandsOnLab"
RUN apt-get update
RUN apt-get install -y apache2
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo welcome to doceker automation!! >> test.html"]
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]