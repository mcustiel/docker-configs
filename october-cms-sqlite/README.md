# What?

A docker-compose setup to run october cms using local sqlite as database. 

# How to:

1. Copy your installation of october cms inside `./php/app` folder
2. In the root of the project (the directory where this readme file is located) run: `docker-compose up` or `docker-compose up -d` if you want to run it in background.
3. Access the page through: `http://localhost:8001`

# Running commands:

Use docker-artisan script like: `./docker-artisan october:up`

