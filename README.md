# Docker Compose Project

Bienvenue dans le repository de mon projet Docker Compose. Ce projet a pour objectif de partir d'un docker-compose permettant l'hébergement d'un DVWA (Damn Vulnerable Web Application) (ou autre) pour devenir autonome par rapport aux images imposées (alpine, mysql) en développant des Dockerfiles personnels qui sont exploités par le docker-compose.

## Objectifs

- Héberger un DVWA (ou autre application) à l'aide de Docker Compose.
- Remplacer les images Docker imposées (alpine, mysql) par des Dockerfiles personnalisés.
- Développer des Dockerfiles personnels pour chaque service.
- Exploiter ces Dockerfiles via Docker Compose.
- Respecter les principes des [12 Factor Apps](https://12factor.net/).

## Dockerfiles

- `DockerfileLemeleVizier.web` : Dockerfile permettant la création du conteneur de l'application web.
- `DockerfileLemeleVizier.bdd` : Dockerfile permettant la création du conteneur de la BDD.
- `DockerfileLemeleVizier.db` : Dockerfile contenant le fichier de configuration de la base de données.

## Scripts

- `build.sh` : Script permettant la construction des images Docker personnalisées.
- `run.sh` : Script permettant le démarrage de l'infrastructure avec Docker Compose.

## Prérequis

- Docker installé sur votre machine.
- Docker Compose installé sur votre machine.

## Utilisation

1. Décompressez le fichier .ZIP contenant le repository :
    ```sh
    unzip votre-repository.zip
    ```
2. Naviguez dans le répertoire du projet :
    ```sh
    cd votre-repository
    ```
3. Construisez les images Docker en exécutant le script `build.sh` :
    ```sh
    ./build.sh
    ```
    **Explication :** Ce script construit les images Docker personnalisées à partir des Dockerfiles fournis. Chaque étape de la construction est commentée dans le script pour une meilleure compréhension.

4. Démarrez Docker Compose en exécutant le script `run.sh` :
    ```sh
    ./run.sh
    ```
    **Explication :** Ce script démarre l'infrastructure définie dans `docker-compose.yml`. Il inclut toutes les options nécessaires pour une configuration optimale. Les commandes utilisées dans ce script sont commentées pour expliquer leur fonctionnement.

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou une pull request.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.

---

**Commentaire dans `build.sh` :**
```sh
#!/bin/bash

# Construction de l'image personnalisée pour alpine
echo "Construction de l'image alpine personnalisée..."
docker build -t custom-alpine -f Dockerfile-alpine .

# Construction de l'image personnalisée pour mysql
echo "Construction de l'image mysql personnalisée..."
docker build -t custom-mysql -f Dockerfile-mysql .

echo "Toutes les images ont été construites avec succès."
