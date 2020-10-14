# Collectd-web


## Build

```
docker build -t ops-collectdweb .
```

## Use

```
rsync -avz host:/var/lib/collectd/rrd/ /tmp/rrd/
docker run -p 8080:80 --volume /tmp:/tmp -it ops-collectdweb:latest
```
