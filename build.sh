#!/bin/bash -e

SCRIPT_DIR=$(cd $(dirname $0); pwd)
BUILD_DIR=$SCRIPT_DIR/../build
mkdir -p $BUILD_DIR

cd $SCRIPT_DIR

autoreconf -i
cd $BUILD_DIR
$SCRIPT_DIR/configure
make
