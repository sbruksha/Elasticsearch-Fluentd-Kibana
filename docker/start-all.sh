#!/usr/bin/env bash

# get the absolute path of the executable
SELF_PATH=$(cd -P -- "$(dirname -- "$0")" && pwd -P) && SELF_PATH="$SELF_PATH"/$(basename -- "$0")

echo "Stopping all"
docker ps | \
grep "kibana\|elasticsearch\|fluentd\|nginx" | \
awk '{print $1}' | xargs docker stop

#echo "Starting all dockerized"
cd ./../docker/
docker-compose -f docker-compose-files/all-stack.yml up --build -d
