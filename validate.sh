#!/bin/sh
current_version="v1"
set -e
for file in `ls $current_version/*.json`; do
    echo "Validate $file"
    jq <$file >/dev/null
done
