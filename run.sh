#!/bin/bash

export TARGET=manylinux2014-aarch64
#
export TARGET=manylinux2014-x64

docker pull dockcross/$TARGET:latest
docker run --rm dockcross/$TARGET:latest > dockcross.$TARGET
chmod +x dockcross.$TARGET

rm -rf build

./dockcross.$TARGET cmake -Bbuild -H.
./dockcross.$TARGET cmake --build build -v

# Native
#cmake -Bbuild_native -H.
#cmake --build build_native -v
