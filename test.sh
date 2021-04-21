#!/bin/bash
set -xe
docker-compose up -d --build --force-recreate --remove-orphans test-server
curl http://127.0.0.1:8080/folder/ > index.html
docker-compose down
cmp index.html test/htdocs/folder/index.html
rm index.html