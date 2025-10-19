
A private key and certificate are required to use SSL, below are
the steps to create them. In the second step give the server dns when
the "Common name" is asked.

```commandline
openssl genrsa -out certificate/server.key 4096
openssl req -new -key certificate/server.key -out certificate/server.csr
openssl x509 -req -days 365 -in certificate/server.csr -signkey certificate/server.key -out certificate/server.crt 
```


```commandline
podman run -it --network=host --volume="$(pwd)/certificate:/root/certificate" metis_dbviewer
```
