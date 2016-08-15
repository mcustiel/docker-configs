FROM php:5.6.24-fpm

RUN apt-get update && apt-get -y install git gzip wget libgcrypt11-dev zlib1g-dev zip bzip2
RUN apt-get -y install libbz2-dev libmcrypt-dev
RUN docker-php-ext-install zip bz2 mcrypt

COPY ./php.ini /usr/local/etc/php/

CMD ["php-fpm"]
