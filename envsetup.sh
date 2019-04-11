#!/bin/sh

# Android NDK
export NDK=/home/roland/android-ndk-r19c
export HOST_TAG=linux-x86_64
export TOOLCHAIN=$NDK/toolchains/llvm/prebuilt/$HOST_TAG
export SYSROOT=$TOOLCHAIN/sysroot

# Compiler setup
target_host=aarch64-linux-android
api_level=28
export AR=$TOOLCHAIN/bin/$target_host-ar
export AS=$TOOLCHAIN/bin/$target_host-as
export CC=$TOOLCHAIN/bin/${target_host}${api_level}-clang
export CXX=$TOOLCHAIN/bin/${target_host}${api_level}-clang++
export LD=$TOOLCHAIN/bin/$target_host-ld
export RANLIB=$TOOLCHAIN/bin/$target_host-ranlib
export STRIP=$TOOLCHAIN/bin/$target_host-strip

# Compiler flags
export CFLAGS="-fPIE -fPIC --sysroot=$SYSROOT"
export LDFLAGS="-pie"

# Prefix and installation directories
export INSTALL_DIR=/data/lxc 
export PREFIX=$INSTALL_DIR/lxc
export bashcompdir=$PREFIX/etc/bash_completion.d
export DESTDIR="$PWD/target"