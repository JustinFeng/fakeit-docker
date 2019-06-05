#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 <Version>" >&2
  exit 1
fi

VERSION=$1

docker build --no-cache --build-arg version=$VERSION -t realfengjia/fakeit .
docker tag realfengjia/fakeit:latest realfengjia/fakeit:$VERSION

docker push realfengjia/fakeit:latest
docker push realfengjia/fakeit:$VERSION
