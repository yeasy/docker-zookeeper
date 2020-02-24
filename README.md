Apache Kafka
===
Docker images for [Apache Kafka](https://kafka.apache.org).

If you wanna create a kafka MVP quickly, go to [Kafka compose file](https://github.com/yeasy/docker-compose-files/tree/master/kafka).

# Supported tags and respective Dockerfile links

* [`latest` (latest/Dockerfile)](https://github.com/yeasy/docker-kafka/blob/master/Dockerfile): Tracking latest release.
* [`2.13-2.4.0` (2.13-2.4.0/Dockerfile)](https://github.com/yeasy/docker-kafka/blob/master/v2.13-2.4.0/Dockerfile): Build for the 2.13-2.4.0 release.
* [`0.11.0.1` (0.11.0.1/Dockerfile)](https://github.com/yeasy/docker-kafka/blob/master/v0.11.0.1/Dockerfile): Build for the 0.11.0.1 release.

For more information about this image and its history, please see the relevant manifest file in the [`yeasy/docker-kafka` GitHub repo](https://github.com/yeasy/docker-kafka).

# What is docker-kafka?
Docker image with kafka.

# How to use this image?
The docker image is auto built at [https://registry.hub.docker.com/u/yeasy/kafka/](https://registry.hub.docker.com/u/yeasy/kafka/).

## In Dockerfile
```sh
FROM yeasy/kafka:latest
```

## Local development
```sh
$ docker run yeasy/kafka
```

# Which image is based on?
The image is built based on [anapsix/alpine-java](https://hub.docker.com/r/anapsix/alpine-java) image.

# What has been changed?
## Install kafka
Download and install kafka.

## Config
Config kafka home (`$KAFKA_HOME`) to `/opt/kafka`, and add kafka bin to the `$PATH`.

## Workdir
The workdir is set to `$KAFKA_HOME`.

# Supported Docker versions

This image is officially supported on Docker version 1.7.0+.

Support for older versions (down to 1.0) is provided on a best-effort basis.

# Known Issues
* N/A.

# User Feedback
## Documentation
Be sure to familiarize yourself with the [repository's `README.md`](https://github.com/yeasy/docker-kafka/blob/master/README.md) file before attempting a pull request.

## Issues
If you have any problems with or questions about this image, please contact us through a [GitHub issue](https://github.com/yeasy/docker-kafka/issues).

You can also reach many of the official image maintainers via the email.

## Contributing

You are invited to contribute new features, fixes, or updates, large or small; we are always thrilled to receive pull requests, and do our best to process them as fast as we can.

Before you start to code, we recommend discussing your plans through a [GitHub issue](https://github.com/yeasy/docker-kafka/issues), especially for more ambitious contributions. This gives other contributors a chance to point you in the right direction, give you feedback on your design, and help you find out if someone else is working on the same thing.
