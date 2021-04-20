#!/bin/bash
set -ex
docker-compose up -d --build --force-recreate --remove-orphans test-server
curl http://127.0.0.1:8080/folder/test.txt > test.txt
cmp test.txt test/htdocs/folder/test.txt
rm test.txt