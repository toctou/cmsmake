#!/bin/sh

export cmsmkwd=$(pwd)

case $1 in
    -h|--help)
    echo "\n -- cmsMake Tool --\n\n Usage: cmsmk [OPTIONS]\n\n -h, --help:   Display this message\n -u, --update: Rebuild container (it takes a while)\n"
    exit
    ;;
    -u|--update)
    docker-compose -f /etc/cmsmake/docker-compose.yml build --no-cache make
    ;;
esac

docker-compose -f /etc/cmsmake/docker-compose.yml run --rm make
