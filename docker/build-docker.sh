#!/usr/bin/env bash

export LC_ALL=C

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/.. || exit

DOCKER_IMAGE=${DOCKER_IMAGE:-ultichainpay/ultichaind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/ultichaind docker/bin/
cp $BUILD_DIR/src/ultichain-cli docker/bin/
cp $BUILD_DIR/src/ultichain-tx docker/bin/
strip docker/bin/ultichaind
strip docker/bin/ultichain-cli
strip docker/bin/ultichain-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
