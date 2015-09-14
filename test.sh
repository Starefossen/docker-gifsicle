#!/bin/bash

for i in {0..10}; do
  echo $i
  docker-compose run --rm gifsicle assets/logo.gif "#$i" -o "assets/logo_$i.gif"
done
