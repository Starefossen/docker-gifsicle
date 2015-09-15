#!/bin/bash

export GIFSICLE_VERSION=$1

if [ -z ${GIFSICLE_VERSION} ]; then
  echo "Usage: $0 [VERSION]";
  exit 1
fi

echo ""
echo "[Gifsicle Build] Building build container…"
docker-compose build build || exit 1

echo ""
echo "[Gifsicle Build] Building binaries…"
docker-compose run --rm build "${GIFSICLE_VERSION}" || exit 1

echo ""
echo "[Gifsicle Build] Packaging binaries…"
tar -cvzf gifsicle.tar.gz \
  -C "build/gifsicle-${GIFSICLE_VERSION}/src" gifsicle gifdiff
tar -cvzf ffmpeg/gifsicle.tar.gz \
  -C "build/gifsicle-${GIFSICLE_VERSION}/src" gifsicle gifdiff

echo ""
echo "[Gifsicle Build] Removing build files…"
rm -vrf "build/gifsicle-${GIFSICLE_VERSION}" "v${GIFSICLE_VERSION}.tar.gz"

echo ""
echo "[Gifsicle Build] rebuilding starefossen/gifsicle…"
docker-compose build gifsicle || exit 1

echo ""
echo "[Gifsicle Build] testing starefossen/gifsicle…"
docker-compose run gifsicle --version || exit 1
