#!/bin/sh

# bisogna essere nel node master di uno swarm per far andare questi comandi
# docker swarm init
if [ $# -gt 0 ]; then
	if [ "$1" == "registry" ]; then
		docker service create --name registry --publish published=5000,target=5000 registry:2
	elif [[ "$1" == "build" ]]; then
		docker-compose -f stack.yml build
		docker-compose -f stack.yml up -d
		docker-compose -f stack.yml ps
		docker-compose -f stack.yml down --volumes
		docker-compose -f stack.yml push
	elif [[ "$1" == "deploy" ]]; then
		docker stack deploy --compose-file stack.yml --with-registry-auth --prune wiki
	fi
else
	docker stack ls
fi
