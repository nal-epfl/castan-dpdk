# CASTAN DPDK Fork

## Overview

[DPDK](https://www.dpdk.org/) is a set of libraries and drivers for fast packet processing.
This fork is used by the [CASTAN](https://github.com/nal-epfl/castan) project to facilitate building NFs for analysis.

In this fork we have added additional scripts that help prepare LLVM bit-code builds of some of the DPDK libraries.
NFs that use these libraries can then link against the LLVM bit-code to produce analysis builds.


## Building

DPDK needs kernel headers for the currently running kernel to build.
Attention: depending on the user environment, this may not be the headers that are installed with the linux-headers-generic package.
The following command installs the correct version:

    sudo apt-get install -y linux-headers-$(uname -r)

This repo has build scripts to perform the actual build.
[build.sh](build.sh) does a normal native build.
[build-llvm.sh](build-llvm.sh) does an LLVM bit-code build.
