# What
Massdns that downloads resolvers from https://raw.githubusercontent.com/janmasarik/resolvers/master/resolvers.txt before running
# Usage
echo "example.com" | docker run -i phasip/massdns -o S -q
