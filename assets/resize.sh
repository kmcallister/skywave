#!/bin/sh

set -e

mkdir -p small

# Does not handle spaces in filenames!
for f in $(cd orig; echo *.jpg); do
    convert -resize '25%' orig/$f small/$f
done
