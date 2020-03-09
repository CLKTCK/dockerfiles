# A basic apache server. To use either add or bind mount content under /var/www
FROM ubuntu:12.04

RUN apt-get update && apt-get install -y apache2 vim wget ca-certificates && apt-get clean && rm -rf /var/lib/apt/lists/*


#download and install vulnerable versions of bash
RUN wget https://launchpad.net/ubuntu/+source/bash/4.2-1ubuntu1/+build/2975250/+files/bash_4.2-1ubuntu1_amd64.deb
RUN wget https://launchpad.net/ubuntu/+source/bash/4.2-1ubuntu1/+build/2975250/+files/bash-static_4.2-1ubuntu1_amd64.deb
RUN wget https://launchpad.net/ubuntu/+source/bash/4.2-1ubuntu1/+build/2975250/+files/bash-builtins_4.2-1ubuntu1_amd64.deb
RUN dpkg -i *.deb

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
ENV APACHE_RUN_DIR /var/run/apache2
RUN mkdir $APACHE_RUN_DIR

COPY test.cgi /usr/lib/cgi-bin
RUN  chmod 755 /usr/lib/cgi-bin/test.cgi


EXPOSE 80

CMD ["/usr/sbin/apache2", "-D", "FOREGROUND"]

