# Intro

This docker image wraps the 'xsltproc' command-line XSLT parser from libxslt.
It's based on alpine to keep it small.
It runs as a non-root user called 'app' with low privileges

## How to run

You need to map your working folder to /wrk in order for xsltproc to see your files

    docker run --rm -v "$PWD:/wrk" svilstrup/xsltproc <xsltproc options>

example:

    docker run --rm -v "$PWD:/wrk" svilstrup/xsltproc transform_svn_log.xslt svnlog.xml >svn-log.csv

## Docker hub

This image is publicly [available on docker hub](https://hub.docker.com/r/svilstrup/xsltproc/)

## Source

The source for this docker image [is in github](https://github.com/svilstrup/docker-xsltproc)
