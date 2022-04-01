FROM josefjebavy/debian-apache-php5.6
RUN apt update && apt dist-upgrade -y
RUN apt install nano mariadb-client net-tools -y
RUN apt clean && apt autoclean
RUN ln -sf /usr/share/zoneinfo/America/Cordoba /etc/localtime && dpkg-reconfigure tzdata
RUN mv /var/www/html/index.html

