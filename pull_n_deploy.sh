docker-compose -f docker-compose-simple.yml -f docker-compose-nn.yml pull
docker-compose -f docker-compose-simple.yml -f docker-compose-nn.yml down
docker-compose -f docker-compose-simple.yml -f docker-compose-nn.yml up -d

