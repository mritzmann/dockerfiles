# Xpra

Serve a xpra environment with a html5 webclient.

## Build

```
docker build -t xpra .
```

## Use

```
docker run -it -p 10000:10000 --platform linux/amd64 xpra
```