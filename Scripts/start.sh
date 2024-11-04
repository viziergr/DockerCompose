#!/bin/bash

# Démarrer le conteneur pour lemele-vizier.web
docker run -d --name lemele-vizier-web -p 1234:80 lemele-vizier-web

# Démarrer le conteneur pour lemele-vizier.bdd
docker run -d --name lemele-vizier-bdd \
    -e MYSQL_ROOT_PASSWORD=root_password \
    -e MYSQL_DATABASE=dvwa \
    -e MYSQL_USER=dvwa \
    -e MYSQL_PASSWORD=p@ssw0rd \
    -p 3306:3306 \
    lemele-vizier-bdd

