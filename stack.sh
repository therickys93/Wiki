#!/bin/sh

# bisogna essere nel node master di uno swarm per far andare questi comandi
# docker swarm init
docker service create --name registry --publish published=5000,target=5000 registry:2
docker-compose build
docker-compose up -d
docker-compose ps
docker-compose down --volumes
docker-compose push 
docker stack deploy --compose-file stack.yml wiki
