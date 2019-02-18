#!/bin/bash -x
MYSQL_ALLOW_EMPTY_PASSWORD=true bash /entrypoint.sh mysqld &
