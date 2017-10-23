#!/bin/bash
# author: Michael Wellner
# date: 23.10.2017
# healthcheck script for a mysql docker container

TABLECOUNTER=$(mysql -B -u root -proot \
      --disable-column-names \
      --execute "SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES;" 2>/dev/null)

# check if tablecounter is greater than 0
echo "${TABLECOUNTER}"
if [ "${TABLECOUNTER}" -gt 0 ]; then
  echo "mysql db is healthy!"
  exit 0
fi

echo "mysql db isn't healthy!"
exit 1
