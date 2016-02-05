#!/bin/sh

docker run --rm -i -t -v $(pwd):/tasks/ -w /tasks/ --group-add cmsuser -u=$(id -u) cmsmake bash -l
