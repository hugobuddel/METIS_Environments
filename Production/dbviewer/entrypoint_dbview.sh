#!/usr/bin/env bash

echo "Generate self-signed certificate"
mkdir -p /root/certificate/
pushd /root/certificate/ || exit 1
# Create key.
openssl genrsa -out localhost_selfsigned.key 2048
# Create certificate signing request.
openssl req -key localhost_selfsigned.key -new -out localhost_selfsigned.csr -subj "/CN=localhost"
# Sign certificate.
openssl x509 -signkey localhost_selfsigned.key -in localhost_selfsigned.csr -req -days 365 -out localhost_selfsigned.crt
# Combine key and certificate in single pem file.
cat localhost_selfsigned.key localhost_selfsigned.crt > localhost_selfsigned.pem
popd

echo "Starting database"
"${HOME}/bin/dbview.sh" start

echo "Sleeping so the script won't quit"
while true ; do sleep 60 ; done
