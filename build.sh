#!/bin/bash

# Construire l'image pour lemele-vizier.web
docker compose build -f DockerfileLemeleVizier.web -t lemele-vizier-web .

# Construire l'image pour lemele-vizier.bdd
docker compose build -f DockerfileLemeleVizier.bdd -t lemele-vizier-bdd .
