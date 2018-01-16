#To build this image:
#
#    docker build -t ${PWD##*/}:latest .
#
#To run it, use this command:
#
#    docker run -it --rm -v $PWD:/app ${PWD##*/}:latest
#
FROM alpine:3.7
RUN apk add --no-cache libxslt

# Create an 'app' user, so we don't run the install as root. 
# There could potentially be malicious code in the package manager repo
RUN addgroup -g 1000 app \
    && adduser -u 1000 -G app -s /bin/sh -D app
# Create the working folder and change owner
WORKDIR /app
RUN chown -R app:app /app  

ENTRYPOINT ["/usr/bin/xsltproc"]
