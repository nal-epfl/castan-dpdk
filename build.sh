#!/bin/sh

make config T=x86_64-native-linuxapp-gcc
make -kj $(grep -c 'processor' /proc/cpuinfo)
