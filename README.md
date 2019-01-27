# Greynir in a docker container

This setup uses nginx and gunicorn to serve the flask web app greynir.

## Getting started

1. Clone the Reynir repository under src. https://github.com/vthorsteinsson/Reynir

2. Install docker and docker compose if they are not installed already. See https://docs.docker.com/install/

3. After cloning this repository run `docker-compose up` or `./run-dev.sh` to mount in the src files.

4. Visit `localhost:5050`

## In progress

Setup proper dev environment - mount in Tokenizer, ReynirCorrect and ReynirPackage
