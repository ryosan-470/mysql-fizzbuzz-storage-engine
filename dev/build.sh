#!/bin/bash
cmake .
make -j fizzbuzz
cp plugin_output_directory/ha_*.so /usr/lib/mysql/plugin/
