docker-s3cmd
============

An [Alpine](https://hub.docker.com/_/alpine/) image with [s3cmd](https://s3tools.org/s3cmd) tool installed.

Current version installed is `2.0.2`, but you can change this at runtime.

# Supported tags and respective `Dockerfile` links

- [`latest` `alpine3.9` (*alpine3.9/Dockerfile*)](https://github.com/rbsdev/docker-s3cmd/blob/master/alpine3.9/Dockerfile)
- [`alpine3.7` (*alpine3.7/Dockerfile*)](https://github.com/rbsdev/docker-s3cmd/blob/master/alpine3.7/Dockerfile)
- [`docker-stable-git` (*docker-stable-git/Dockerfile*)](https://github.com/rbsdev/docker-s3cmd/blob/master/alpine3.7/Dockerfile)
* Under development image
-- [**`develop`** (*alpine3.7/Dockerfile*)](https://github.com/rbsdev/docker-s3cmd/blob/master/alpine3.7/Dockerfile)

Usage
-----

```
docker run --rm -e AWS_ACCESS_KEY_ID=xxx \
                -e AWS_SECRET_ACCESS_KEY=xxx \
                -it rbsdev/s3cmd \
                s3cmd ls
2018-08-24 14:56  s3://your-bucket-name
```

If you want to change the `s3cmd` version just pass `S3CMD_VERSION` environment variable at startup

```
docker run --rm -e AWS_ACCESS_KEY_ID=xxx \
                -e AWS_SECRET_ACCESS_KEY=xxx \
                -e S3CMD_VERSION=2.0.1 \
                -it rbsdev/s3cmd
Current Version: 2.0.2
3dbfaf0e7844:/tmp# s3cmd ls
2018-08-24 14:56  s3://your-bucket-name
```