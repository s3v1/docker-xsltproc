# Intro

This docker image wraps the 'xsltproc' command-line XSLT parser from libxslt.
It's based on alpine to keep it small. It runs as a non-root user called 'app' with low privileges

## Multi-architecture build

This image is based on Alpine and supports the same architectures:

linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64/v8,linux/386,linux/ppc64le,linux/s390x

## How to run

You need to map your working folder to /wrk in order for xsltproc to see your files

    docker run --rm -v "$PWD:/wrk" svilstrup/xsltproc <xsltproc options>

example:

    docker run --rm -v "$PWD:/wrk" svilstrup/xsltproc transform_svn_log.xslt svnlog.xml >svn-log.csv

## Docker hub

This image is publicly [available on docker hub](https://hub.docker.com/r/s3v1/xsltproc/)

## Source

The source for this docker image [is in github](https://github.com/s3v1/docker-xsltproc)
