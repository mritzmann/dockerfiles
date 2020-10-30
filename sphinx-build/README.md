# Sphinx

Build and serv a Sphinx documentation.

## Build

```
docker build -t phinx-build .
```

## Use

```
docker run -it -p 8080:80 --volume $(pwd):/tmp/docs:ro phinx-build /bin/bash
```
