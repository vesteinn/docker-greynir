# Greynir in a docker container

This setup uses nginx and gunicorn to serve the flask web app greynir

## Getting started

1. Clone the Reynir repository under src. https://github.com/vthorsteinsson/Reynir

2. Install docker and docker compose if they are not installed already.

3. run `docker-compose up` or `./run-dev.sh`

4. Visit `localhost:5050`

## In progress

Setup dev environment - mount in Tokenizer, ReynirCorrect and ReynirPackage

Add scripts to run scraper periodically in cron
