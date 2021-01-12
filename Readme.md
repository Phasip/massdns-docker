# What
Massdns that downloads resolvers from https://raw.githubusercontent.com/phasip/resolvers/master/resolvers-stable-grade11.txt before running
# Usage
echo "example.com" | docker run -i phasip/massdns -o S -q
