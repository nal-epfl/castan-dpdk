#!/bin/bash

#sudo mkdir -p /mnt/huge
#sudo mount -t hugetlbfs nodev /mnt/huge
#echo 64 | sudo tee /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages > /dev/null

export RTE_SDK="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
export RTE_TARGET="build"
