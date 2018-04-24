#!/bin/sh

make config T=x86_64-native-linuxapp-gcc

sed -i -e 's/CONFIG_RTE_LIBRTE_PMD_PCAP=n/CONFIG_RTE_LIBRTE_PMD_PCAP=y/' build/.config

EXTRA_CFLAGS='-O2 -g' make -kj $(nproc)
