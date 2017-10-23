#!/bin/bash

echo "########################################"
echo "##### start build script"
echo ""

docker build -t m1well/tomcat_server:latest .
echo ""
docker-compose up -d

echo ""
echo "##### finished build script"
echo "########################################"
echo ""
