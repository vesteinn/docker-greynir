#!/usr/bin/env bash

docker exec -it greynir bash -c "cd ../ReynirPackage/ && pypy3 -m pytest"
docker exec -it greynir bash -c "cd ../ReynirCorrect/ && pypy3 -m pytest"
docker exec -it greynir bash -c "cd ../Tokenizer/ && pypy3 -m pytest"
