#!/usr/bin/env bash
while true ; do
    echo "Run another database again!"
    podman run  -it --network=host --volume="/mnt/dh5/metis/data/dataserver:/root/space/dataserver" metis_dataserver
done
