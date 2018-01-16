#To build this image:
#
#    docker build -t ${PWD##*/}:latest .
#
#To run it, use this command:
#
#    docker run -it --rm -v $PWD:/src -w /src ${PWD##*/}:latest
#
FROM alpine:3.7
RUN apk add --no-cache libxslt
ENTRYPOINT ["/usr/bin/xsltproc"]
