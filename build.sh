#!/bin/bash -e

SCRIPT_DIR=$(cd $(dirname $0); pwd)
BUILD_DIR=$SCRIPT_DIR/../build
mkdir -p $BUILD_DIR

cd $SCRIPT_DIR

autoreconf
cd $BUILD_DIR
$SCRIPT_DIR/configure
make
