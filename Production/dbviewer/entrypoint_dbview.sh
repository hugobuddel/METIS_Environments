#!/usr/bin/env bash

echo "Starting database"
"${HOME}/bin/dbview.sh" start

echo "Sleeping so the script won't quit"
while true ; do sleep 60 ; done
