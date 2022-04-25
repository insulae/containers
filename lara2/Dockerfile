FROM php:8.1.5-apache
#lara version 2
#docker build -t lara:<version> .
# nodejs 16

USER root

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y \
        libpng-dev \
        zlib1g-dev \
        libxml2-dev \
        libzip-dev \
        zip \
        curl \
        unzip \
        ghostscript \
        nano \
        mariadb-client \
        git \
    && docker-php-ext-configure gd \
    && docker-php-ext-install -j$(nproc) gd \
    && docker-php-ext-install pdo_mysql \
    && docker-php-ext-install mysqli \
    && docker-php-ext-install zip \
    && docker-php-source delete

RUN ln -sf /usr/share/zoneinfo/America/Cordoba /etc/localtime \
    && dpkg-reconfigure tzdata

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filname=composer

RUN a2enmod rewrite

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get install -y nodejs

RUN apt-get autoremove --purge
RUN apt-get clean autoclean
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/




