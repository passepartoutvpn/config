#!/bin/sh
set -e
for file in `ls $1/*.json`; do
    echo "Validate $file"
    jq <$file >/dev/null
done
