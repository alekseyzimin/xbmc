#!/bin/bash
cd tools/depends/ && \
./bootstrap && \
./configure --with-tarballs=$HOME/android-tools/xbmc-tarballs --host=arm-linux-androideabi --with-sdk-path=$HOME/android-tools/android-sdk-linux --with-ndk-path=$HOME/android-tools/android-ndk-r18 --with-toolchain=$HOME/android-tools/arm-linux-androideabi-vanilla/android-21 --prefix=$HOME/android-tools/xbmc-depends && \
make -j 4 && \
cd ../../ && \
make -C tools/depends/target/cmakebuildsys/ && \
cd build && \
make -j 4 && \
make apk
