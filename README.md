# Intro

This docker image wraps the 'xsltproc' command-line XSLT parser from libxslt.
It's based on alpine to keep it small.
It runs as a non-root user called 'app' with low privileges

## How to run

You need to map your working folder to /wrk in order for xsltproc to see your files

    docker run --rm -v "$PWD:/wrk" enalean/xsltproc <xsltproc options>
