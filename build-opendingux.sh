#!/usr/bin/env bash

set -euo pipefail

BUILDROOT="${BUILDROOT:-$HOME/buildroot-rg350}"

set -x

mkdir -p build
cd build
rm -f CMakeCache.txt
cmake .. -DCMAKE_TOOLCHAIN_FILE="$BUILDROOT/output/host/usr/share/buildroot/toolchainfile.cmake"
make

mksquashfs \
  controllermap ../controllermap.sh ../default.gcw0.desktop ../readme.gcw0.txt \
  ../logo.png ../controllermap.bmp ../button.bmp ../axis.bmp \
  controllermap-sdl2.opk \
  -all-root -no-xattrs -noappend -no-exports
