# Sphinx

Build and serv a Sphinx documentation.

## Build

```
docker build -t sphinx-build .
```

## Use

```
docker run -it -p 8080:80 --volume $(pwd):/tmp/docs:ro sphinx-build
```
