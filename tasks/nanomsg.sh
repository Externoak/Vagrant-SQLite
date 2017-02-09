#!/bin/sh

set -e
wget https://github.com/nanomsg/nanomsg/archive/1.0.0.tar.gz -O nanomsg-1.0.0.tar.gz
tar -xzvf nanomsg-1.0.0.tar.gz
cd nanomsg-1.0.0
mkdir build
cd build
# I added -DCMAKE_INSTALL_PREFIX=/usr because on my Ubuntu 14.04 machine, the
# library is installed in /usr/local/lib/x86_64-linux-gnu/ by default, and for
# some reason ldconfig cannot find it
cmake .. -DCMAKE_INSTALL_PREFIX=/usr
cmake --build .
sudo cmake --build . --target install
cd ..