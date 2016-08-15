# What?

A docker-compose setup to run october cms using local sqlite as database. 

# How to:

1. Copy your installation of october cms inside ./php/app folder
2. In the root of the project (the directory where this readme file is located) run: `docker-composer up` or `docker-composer up -d` if you want to run it in background.
3. Access the page through: `http://localhost:8001`

# Running commands:

Use docker-exec script like: `./docker-exec php artisan october:up`

**Note:** docker-exec requires php-composer, which you can find in: https://github.com/mcustiel/docker-configs/tree/master/composer


