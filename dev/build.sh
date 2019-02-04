#!/bin/bash
STORAGE_ENGINE=example
make -j4 ${STORAGE_ENGINE}
cp plugin_output_directory/ha_*.so /usr/lib/mysql/plugin/
