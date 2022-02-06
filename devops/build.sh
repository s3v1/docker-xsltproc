#!/usr/bin/env bash
set -euo pipefail

#docker build -t s3v1/xsltproc .

docker buildx ls | grep multi_arch_builder || docker buildx create --name multi_arch_builder
docker buildx use multi_arch_builder
docker buildx inspect --bootstrap

docker buildx build --platform linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64/v8,linux/386,linux/ppc64le,linux/s390x -t s3v1/xsltproc:latest --push .
