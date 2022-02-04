#To build this image:
#
#    docker build -t svilstrup/xsltproc .
#
#To run it, use this command:
#
#    docker run --rm -v "$PWD:/wrk" svilstrup/xsltproc
#
FROM alpine:3.14
RUN apk add --no-cache libxslt

# Create an 'app' user, so we don't run the install as root. 
# There could potentially be malicious code in the package manager repo
RUN addgroup -g 1000 app
RUN adduser -u 1000 -G app -s /bin/sh -D app

# Create the working folder and change owner
WORKDIR /wrk
RUN chown -R app:app /wrk
USER app  

ENTRYPOINT ["/usr/bin/xsltproc"]
