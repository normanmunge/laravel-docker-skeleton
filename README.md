# Dockerized Laravel Skeleton Application

This is a skeleton application that uses docker container to start a Laravel application without the need to install all the required PHP and Laravel dependencies on your host machine / computer.

The containers are 6 in total: 
    - Nginx Web Server 
    - PHP Interpreter 
    - MySql DB 
    - Composer (utility container used for laravel specific commands eg installing a new app) 
    - Artisan (utility container used for laravel commands to ensure db interaction and migrate the database) 
    - NPM (utility container used for JS commands)


The repository is divided into 2 branches: main and development.

The development branch has bind mounts that exposes the src folder of the Laravel app and host machine's nginx configuration which enables easier code updates without the need of rebuilding the apps each time. Bind mounts are only recommended for development purposes.

The main branch has a `nginx.dockerfile` [https://github.com/normanmunge/laravel-docker-skeleton/blob/main/nginx/nginx.conf] that copies the laravel app and removes the bind mounts in docker compose

All the commands to run the containers are described in the `docker-commands.txt` [https://github.com/normanmunge/laravel-docker-skeleton/blob/main/docker-commands.txt]
