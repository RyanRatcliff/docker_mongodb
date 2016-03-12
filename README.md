# docker_mongodb
A MongoDB container based upon Ubuntu 14.04

To startup with a mount point for persistent data
```
docker run -d -v /host/data/mount/point:/data/db ryanratcliff/mongodb
```
