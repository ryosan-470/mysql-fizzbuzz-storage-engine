#!/bin/bash -x

STORAGE_ENGINES=("example" "fizzbuzz")
for engine in ${STORAGE_ENGINES[@]}; do
    sql="INSTALL PLUGIN ${engine} SONAME \"ha_${engine}.so\""
    mysql -uroot -e "${sql}"
done
