#!/bin/bash

echo "########################################"
echo "##### start build script"
echo ""

docker build -t m1well/postgres_db:latest .
echo ""
docker-compose up -d

echo ""
echo "##### finished build script"
echo "########################################"
echo ""
