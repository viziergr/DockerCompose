#!/bin/bash

# Construire l'image pour lemele-vizier.web
docker compose build web

# Construire l'image pour lemele-vizier.bdd
docker compose build db