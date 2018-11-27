# A dockerfile for YAPI based on silsuer/yapi

## Build

Build

```shell
docker build -t web-yapi ./
```

Run

```shell
docker run -p 27017:27017 -p 3000:3000 -p 9090:9090 --restart always -d web-yapi
```

**Caution**: Parameter `-p` is case sensitive

## Run

For the first runing

[http://127.0.0.1:9090](http://127.0.0.1:9090)

> Do not change the *INSTALL PATH* `(/my-yapi)` or you will also have to modify the path in `run.sh` manully.
> 
> This container is delivered with MongoDB running at `127.0.0.1:27017`

After installing, restart the container.

```shell
docker ps | grep php | awk '{ print $1}'| xargs docker restart
```

Access to your YAPI

[http://127.0.0.1:3000](http://127.0.0.1:3000)

> Default exposed port is `3000` which can be changed while installing.
