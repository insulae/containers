# docker build -t debian-php74 .
FROM josefjebavy/debian-apache-php7.4
RUN apt update && apt dist-upgrade -y
RUN apt install nano mariadb-client net-tools -y
RUN apt clean && apt autoclean
RUN ln -sf /usr/share/zoneinfo/America/Cordoba /etc/localtime && dpkg-reconfigure tzdata
RUN mv /var/www/html/index.html /var/www/html/index.html.orig
RUN touch /var/www/html/index.php

