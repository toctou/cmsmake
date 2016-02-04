#!/bin/sh

buildargs=""

for arg in "$@"
do
	buildargs="$buildargs --build-arg $arg"
done

docker build -t cmsmake --no-cache $buildargs https://github.com/toctou/cmsmake.git
