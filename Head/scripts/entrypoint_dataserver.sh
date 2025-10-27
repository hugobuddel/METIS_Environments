#!/usr/bin/env bash

echo "Create /root/space/dataserver"
mkdir -p /root/space/dataserver
# TODO: Also create cdata, pdata, sdata, xdata, and ydata directories?


#source /local/micado-users/micado-oper/miniconda3/etc/profile.d/conda.sh
#conda activate micadowise-env
#cd /mnt/dh4/muse/micado/data

echo "Starting dataserver"
env datadir=/root/space/dataserver python -u -m dataserver.main --config /root/scripts/ds.cfg

echo "Sleeping so the script won't quit"
while true ; do sleep 60 ; done
