FROM php:5.6.24-fpm

RUN apt-get update && apt-get -y install git gzip wget libgcrypt11-dev zlib1g-dev zip bzip2
RUN apt-get -y install libbz2-dev
RUN docker-php-ext-install zip bz2

RUN cd /usr/local/bin && echo '<?php file_put_contents("composer.phar", file_get_contents("https://getcomposer.org/composer.phar")); ' | php
RUN cd /usr/local/bin && echo '#!/bin/bash\nDIR=$(dirname $0)\nphp $DIR/composer.phar "$@"' > composer && chmod +x composer

