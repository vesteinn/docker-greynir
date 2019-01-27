#!/usr/bin/env bash

docker-compose down
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up
