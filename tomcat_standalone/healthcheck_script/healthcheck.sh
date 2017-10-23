#!/bin/bash
# author: Michael Wellner
# date: 23.10.2017
# healthcheck script for a tomcat docker container

# call a dummy url to generate a 404 error
ROWCOUNTER=$(curl -s http://localhost:8080/dummy-url | grep "HTTP Status 404 – Not Found" | wc -l)

# check if rowcounter is greater than 0
echo "${ROWCOUNTER}"
if [ "${ROWCOUNTER}" -gt 0 ]; then
  echo "tomcat server is healthy!"
  exit 0
fi

echo "tomcat server isn't healthy!"
exit 1
