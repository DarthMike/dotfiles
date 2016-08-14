#!/bin/sh

SKDAEMON="SourceKittenDaemon"
sudo rm -rf SKDAEMON 
git clone https://github.com/terhechte/SourceKittenDaemon
pushd $SKDAEMON
make install
popd


