#!/usr/bin/env bash

export DATADIR=/root/space/dataserver
echo "Create ${DATADIR}"
mkdir -p "${DATADIR}"
mkdir -p "${DATADIR}/cdata"  # Cache from other data servers, unused
mkdir -p "${DATADIR}/idata"  # 'Ingested data', unused
mkdir -p "${DATADIR}/sdata"  # Stored data, default, can be overwritten
mkdir -p "${DATADIR}/pdata"  # Permanent data, cannot be overwritten
mkdir -p "${DATADIR}/xdata"  # Direct read, unused
mkdir -p "${DATADIR}/ydata"  # Direct write, unused
mkdir -p "${DATADIR}/ddata"  # Deleted data
mkdir -p "${DATADIR}/tdata"  # Temporary data, unused

echo "Generate self-signed certificate"
cd "${DATADIR}" || die
# Create key.
openssl genrsa -out localhost_selfsigned.key 2048
# Create certificate signing request.
openssl req -key localhost_selfsigned.key -new -out localhost_selfsigned.csr -subj "/CN=localhost"
# Sign certificate.
openssl x509 -signkey localhost_selfsigned.key -in localhost_selfsigned.csr -req -days 365 -out localhost_selfsigned.crt
# Combine key and certificate in single pem file.
cat localhost_selfsigned.key localhost_selfsigned.crt > localhost_selfsigned.pem

echo "Starting dataserver"
python -u -m dataserver.main --config /root/scripts/ds.cfg
