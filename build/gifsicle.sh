#!/bin/bash

export GIFSICLE_VERSION=$1
export GIFSICLE_URL="https://github.com/kohler/gifsicle/archive/v${GIFSICLE_VERSION}.tar.gz"

if [ -z ${GIFSICLE_VERSION} ]; then
  echo "Usage: $0 [VERSION]";
  exit 1
fi

curl -SLO ${GIFSICLE_URL} \
  && tar -xvzf "v${GIFSICLE_VERSION}.tar.gz" \
  && cd "gifsicle-${GIFSICLE_VERSION}" \
  && autoreconf -i \
  && ./configure --disable-gifview \
  && make
