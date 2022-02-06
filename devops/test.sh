#!/usr/bin/env bash
set -euo pipefail

if docker run --rm -v "$PWD:/wrk" s3v1/xsltproc --version| grep 'xsltproc was compiled against libxml' 
then
  echo 'INFO: Test OK'
else
  echo 'ERROR: Test failed, see above'
  exit 1
fi
