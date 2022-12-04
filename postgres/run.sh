#!/bin/bash

docker-compose --file ${PWD}/postgres/docker-compose-db.yml build --no-cache &&\
docker-compose --file ${PWD}/postgres/docker-compose-db.yml up