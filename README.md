# Greynir in a docker container

This is a very early attempt at running Greynir in a docker setup.

## Getting started
1. Clone the Reynir repository under src.

2. Install docker and docker compose if they are not installed already.

3. run `docker-compose build`

4. run `docker-compose up`

5. Enter the postgres container by running `docker exec -it reynir_db bash`, create the scraper db following the Reynir doc.

6. Restart by doing `docker-compose down` and again `docker-compose up`

7. Visit `localhost:5000`

## Known issues

Locale needs to be fixed to Icelandic.

## In progress

Automatic db setup and dev environment
