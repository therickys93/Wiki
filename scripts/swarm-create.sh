#!/bin/bash

# Creating 6 nodes 
echo "### Creating nodes ..."
for c in {1..3} ; do
    docker-machine create -d virtualbox node$c
done

# Get IP from leader node
leader_ip=$(docker-machine ip node1)

# Init Docker Swarm mode
echo "### Initializing Swarm mode ..."
eval $(docker-machine env node1)
docker swarm init --advertise-addr $leader_ip

# Swarm tokens
manager_token=$(docker swarm join-token manager -q)
worker_token=$(docker swarm join-token worker -q)

# Joinig manager nodes
eval $(docker-machine env node2)
docker swarm join --token $manager_token $leader_ip:2377

eval $(docker-machine env node3)
docker swarm join --token $worker_token $leader_ip:2377

# Clean Docker client environment
echo "### Cleaning Docker client environment ..."
eval $(docker-machine env -u)