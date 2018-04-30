#!/bin/sh

# bisogna essere nel node master di uno swarm per far andare questi comandi
# docker swarm init
docker service create --name registry --publish published=5000,target=5000 registry:2
docker-compose -f stack.yml build
docker-compose -f stack.yml up -d
docker-compose -f stack.yml ps
docker-compose -f stack.yml down --volumes
docker-compose -f stack.yml push 
docker stack deploy --compose-file stack.yml --with-registry-auth wiki
