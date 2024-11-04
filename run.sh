#!/bin/bash

# Démarrage de Docker Compose
echo "Démarrage de Docker Compose..."
docker compose up

# Option -d pour démarrer en détaché (en arrière-plan)
# echo "Démarrage de Docker Compose en mode détaché..."
# docker-compose up -d

echo "Docker Compose a démarré avec succès."