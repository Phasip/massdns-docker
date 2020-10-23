#!/bin/sh -e
wget -q -O /resolvers.txt https://raw.githubusercontent.com/phasip/resolvers/master/resolvers.txt
/massdns/bin/massdns -r /resolvers.txt "$@"
