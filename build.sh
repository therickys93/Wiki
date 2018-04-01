#!/bin/bash

docker build -t therickys93/wikiredis wikiredis/
docker build -t therickys93/wikicontroller wikicontroller/
docker build -t therickys93/wikiproxy wikiproxy/
docker build -t therickys93/wikimediaserver wikimediaserver/
docker build -t therickys93/wikirediscommander wikirediscommander/
docker build -t therickys93/wikiserver wikiserver/