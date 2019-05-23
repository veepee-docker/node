#!/usr/bin/env bash

set -e

if [ ${1} ]
then
    DOCKER_USER=${1}
else
    DOCKER_USER=${USER}
fi

# Node.js 4
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:4" \
       4

# Node.js 5
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:5" \
       5

# Node.js 6
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:6" \
       6

# Node.js 7
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:7" \
       7

# Node.js 8
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:8" \
       8

# Node.js 9
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:9" \
       9

# Node.js 10
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:10" \
       10

# Node.js 11
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/node:11" \
       11

# Tests
clear
COMMAND='node --version'
echo -n '4: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:4" \
           bash -c "${COMMAND}"
echo -n '5: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:5" \
           bash -c "${COMMAND}"
echo -n '6: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:6" \
           bash -c "${COMMAND}"
echo -n '7: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:7" \
           bash -c "${COMMAND}"
echo -n '8: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:8" \
           bash -c "${COMMAND}"
echo -n '9: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:9" \
           bash -c "${COMMAND}"
echo -n '10: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:10" \
           bash -c "${COMMAND}"
echo -n '11: ' && \
    docker run \
           --rm "${DOCKER_USER}/node:11" \
           bash -c "${COMMAND}"
# EOF
