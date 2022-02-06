#!/usr/bin/env bash
set -euo pipefail

docker build -t s3v1/xsltproc .

#docker buildx create --name mybuilder
#docker buildx use mybuilder
#docker buildx inspect --bootstrap
