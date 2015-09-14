#!/bin/bash

export GIFSICLE_VERSION=$1

if [ -z ${GIFSICLE_VERSION} ]; then
  echo "Usage: $0 [VERSION]";
  exit 1
fi

docker-compose build build || exit 1
docker-compose run --rm build "${GIFSICLE_VERSION}" || exit 1

cp build/gifsicle.tar.gz .
mv build/gifsicle.tar.gz ffmpeg/.

docker-compose build gifsicle || exit 1
