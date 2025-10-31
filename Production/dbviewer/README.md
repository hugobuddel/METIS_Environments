Get `OMEGACEN_CREDENTIALS` from https://metis.strw.leidenuniv.nl/wiki/doku.php?id=ait:archive .

```
export OMEGACEN_CREDENTIALS=username:password
```

Build the image.
```
podman build --secret=id=OMEGACEN_CREDENTIALS,type=env -t metis_dbviewer .
```

Deploy image.

Run image.
```
podman run -it --network=host metis_dbviewer
```

A private key and certificate are required to use SSL, a self-signed
certificate is created automatically.

```commandline
podman run -it --network=host metis_dbviewer
```
