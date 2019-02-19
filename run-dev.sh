#!/usr/bin/env bash

if [ ! -d "src" ]; then
    mkdir src
    cd src
    git clone git@github.com:vthorsteinsson/Reynir.git
    git clone git@github.com:vthorsteinsson/Tokenizer.git
    git clone git@github.com:vthorsteinsson/ReynirCorrect.git
    git clone git@github.com:vthorsteinsson/ReynirPackage.git
    cd ..
fi
  
docker-compose -f docker-compose.yml -f docker-compose-dev.yml down
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up
