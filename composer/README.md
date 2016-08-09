# Docker for php+composer using PHP 5.6

## Build

docker build -t php-composer:5.6.24-fpm


## Run

### Composer

```bash
docker run -ti -v /your/project/dir:/var/www/html php-composer:5.6.24-fpm composer update
```

### PHP:

```bash
docker run -ti php-composer:5.6.24-fpm php
```
### PHPUnit example:

```bash
docker run -ti -v /your/project/dir:/var/www/html php-composer:5.6.24-fpm php vendor/bin/phpunit -c tests
```
