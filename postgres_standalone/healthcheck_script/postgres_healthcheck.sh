#!/bin/bash
# author: Michael Wellner
# date: 23.10.2017
# healthcheck script for a postgres docker container

DBCOUNTER=$(psql -U postgres -c "\l"|tail -n+4|cut -d'|' -f 1|sed -e '/^ *$/d'|sed -e '$d' | wc -l)

# check if dbcounter is greater than 0
echo "${DBCOUNTER}"
if [ "${DBCOUNTER}" -gt 0 ]; then
  echo "postgres db is healthy!"
  exit 0
fi

echo "postgres db isn't healthy!"
exit 1
