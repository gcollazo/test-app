#!/usr/bin/env bash

docker build -t gcollazo/php-demo .
docker push gcollazo/php-demo:latest

aws ecs register-task-definition --cli-input-json file://task-definition.json --profile alias

aws ecs update-service --cli-input-json file://update-service.json --profile alias
