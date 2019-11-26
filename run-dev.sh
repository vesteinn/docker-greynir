#!/usr/bin/env bash

if [ ! -d "src" ]; then
    mkdir src
    cd src
    git clone git@github.com:mideind/Greynir.git
    git clone git@github.com:mideind/Tokenizer.git
    git clone git@github.com:mideind/ReynirCorrect.git
    git clone git@github.com:mideind/ReynirPackage.git
    cd ..
fi
  
docker-compose -f docker-compose.yml -f docker-compose-dev.yml down
docker-compose -f docker-compose.yml -f docker-compose-dev.yml up
