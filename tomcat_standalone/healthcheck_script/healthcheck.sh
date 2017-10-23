#!/bin/bash
# author: Michael Wellner
# date: 23.10.2017
# healthcheck script for a tomcat docker container

ROWCOUNTER=$(curl -f --silent http://localhost:8080 | wc -l)

# check if rowcounter is greater than 0
echo "${ROWCOUNTER}"
if [ "${ROWCOUNTER}" -gt 0 ]; then
  echo "tomcat server is healthy!"
  exit 0
fi

echo "tomcat server isn't healthy!"
exit 1
