#!/bin/sh -e
wget -q -O /resolvers.txt https://raw.githubusercontent.com/janmasarik/resolvers/master/resolvers.txt
/massdns/bin/massdns -r /resolvers.txt "$@"
