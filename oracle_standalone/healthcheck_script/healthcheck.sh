#!/bin/bash
# author: Michael Wellner
# date: 23.10.2017
# healthcheck script for an oracle docker container

export ORACLE_HOME=/u01/app/oracle/product/11.2.0/xe

TABLECOUNTER=$(/u01/app/oracle/product/11.2.0/xe/bin/sqlplus -s system/oracle@127.0.0.1:1521/XE <<SCRIPT
  set pagesize 0 feedback off verify off heading off echo off;
  SELECT COUNT(*) FROM ALL_TABLES;
  exit;
SCRIPT
)

# check if tablecounter is greater than 0
echo "${TABLECOUNTER}"
if [ "${TABLECOUNTER}" -gt 0 ]; then
  echo "oracle db is healthy!"
  exit 0
fi

echo "oracle db isn't healthy!"
exit 1
