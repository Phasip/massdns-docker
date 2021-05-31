#!/bin/sh -e
wget -q -O /resolvers.txt https://raw.githubusercontent.com/phasip/resolvers/master/resolvers-stable-grade11.txt
sort -ru -o /resolvers.txt /resolvers.txt
/massdns/bin/massdns -r /resolvers.txt "$@"
