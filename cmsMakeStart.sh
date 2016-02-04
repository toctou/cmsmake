#!/bin/sh

export cmsmkwd=$(pwd)

docker-compose -f /etc/cmsmake/docker-compose.yml run --rm make
