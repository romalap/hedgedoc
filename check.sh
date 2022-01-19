#!/bin/bash
sleep 15
curl --write-out %{http_code} --silent --output /dev/null http://192.168.97.200:3000 > Result
if grep 200 Result
  then
    exit
else
echo "VERSION=1.8.2" > .env
docker-compose up -d
fi
