#!/bin/bash -x
MYSQL_ALLOW_EMPTY_PASSWORD=true bash /entrypoint.sh mysqld &
sleep 30

STORAGE_ENGINES=("example" "fizzbuzz")
for engine in ${STORAGE_ENGINES[@]}; do
    sql="INSTALL PLUGIN ${engine} SONAME \"ha_${engine}.so\""
    mysql -uroot -e "${sql}"
done
