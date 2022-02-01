#!/bin/bash
sleep 15
curl --write-out %{http_code} --silent --output /dev/null http://localhost:3000 > Result
if grep 200 Result
  then
    exit
else
echo "VERSION=1.8.2" > .env
docker-compose up -d
fi