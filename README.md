# Docker Compose Project

Bienvenue dans le repository de mon projet Docker Compose. Ce projet a pour objectif de partir d'un docker-compose permettant l'hébergement d'un DVWA (Damn Vulnerable Web Application) pour devenir autonome par rapport aux images imposées (alpine, mysql) en développant des Dockerfiles personnels qui sont exploités par le docker-compose.

## Objectifs

- Héberger un DVWA à l'aide de Docker Compose.
- Remplacer les images Docker imposées (alpine, mysql) par des Dockerfiles personnalisés.
- Développer des Dockerfiles personnels pour chaque service.
- Exploiter ces Dockerfiles via Docker Compose.

## Structure du repository

- `docker-compose.yml` : Fichier de configuration principal pour Docker Compose.
- `Dockerfile-alpine` : Dockerfile personnalisé pour remplacer l'image alpine.
- `Dockerfile-mysql` : Dockerfile personnalisé pour remplacer l'image mysql.
- `dvwa/` : Répertoire contenant les fichiers nécessaires pour héberger DVWA.

## Prérequis

- Docker installé sur votre machine.
- Docker Compose installé sur votre machine.

## Utilisation

1. Clonez ce repository :
    ```sh
    git clone https://github.com/votre-utilisateur/votre-repository.git
    ```
2. Naviguez dans le répertoire du projet :
    ```sh
    cd votre-repository
    ```
3. Lancez Docker Compose :
    ```sh
    docker-compose up
    ```

## Contribution

Les contributions sont les bienvenues ! N'hésitez pas à ouvrir une issue ou une pull request.

## Licence

Ce projet est sous licence MIT. Voir le fichier [LICENSE](LICENSE) pour plus de détails.
