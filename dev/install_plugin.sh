#!/bin/bash -x
engine="fizzbuzz"
sql="INSTALL PLUGIN ${engine} SONAME \"ha_${engine}.so\""
mysql -uroot -e "${sql}"
