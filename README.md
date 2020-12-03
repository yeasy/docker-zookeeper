Apache Zookeeper
===
Docker images for [Apache zookeeper](https://zookeeper.apache.org).

If you wanna create a zookeeper MVP quickly, go to [zookeeper compose file](https://github.com/yeasy/docker-compose-files/tree/master/zookeeper).

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-zookeeper/blob/master/Dockerfile): Tracking latest release.
* [`3.6.2` (3.6.2/Dockerfile)](https://github.com/yeasy/docker-zookeeper/blob/master/3.6.2/Dockerfile): Build for the 3.6.2 release.
* [`3.5.7` (3.5.7/Dockerfile)](https://github.com/yeasy/docker-zookeeper/blob/master/3.5.7/Dockerfile): Build for the 3.5.7 release.
* [`3.5.6` (3.5.6/Dockerfile)](https://github.com/yeasy/docker-zookeeper/blob/master/3.5.6/Dockerfile): Build for the 3.5.6 release.

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-zookeeper` GitHub repo](https://github.com/yeasy/docker-zookeeper).

# What is docker-zookeeper?
Docker image with zookeeper.

# How to use this image?
The docker image is auto built at [https://hub.docker.com/repository/docker/yeasy/zookeeper](https://hub.docker.com/repository/docker/yeasy/zookeeper).

## In Dockerfile
```sh
FROM yeasy/zookeeper:latest
```

## Local development
```sh
$ docker run yeasy/zookeeper
```

# Which image is based on?
The image is built based on [anapsix/alpine-java](https://hub.docker.com/r/anapsix/alpine-java) image.

# What has been changed?
## Install zookeeper
Download and install zookeeper.

## Config
Config zookeeper home (`$ZOOKEEPER_HOME`) to `/opt/zookeeper`, and add zookeeper bin to the `$PATH`.

## Workdir
The workdir is set to `$ZOOKEEPER_HOME`.

# Supported Docker versions

This image is officially supported on Docker version 1.10.0+.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# Known Issues
* N/A.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-zookeeper/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-zookeeper/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-zookeeper/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
