#!/usr/bin/env bash

set -e

if [ ${1} ]
then
    DOCKER_USER=${1}
else
    DOCKER_USER=${USER}
fi

# Node.js latest
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:latest" \
       .

# Node.js 4
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:4" \
       4

# Node.js 5
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:5" \
       5

# Node.js 6
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:6" \
       6

# Node.js 7
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:7" \
       7

# Node.js 8
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:8" \
       8

# Node.js 9
docker build \
       --force-rm \
       --tag "${DOCKER_USER}/nodejs:9" \
       9

# Tests
clear
COMMAND='node --version'
echo -n '4: ' && \
    docker run \
           --rm "${DOCKER_USER}/nodejs:4" \
           bash -c "${COMMAND}"
echo -n '5: ' && \
    docker run \
           --rm "${DOCKER_USER}/nodejs:5" \
           bash -c "${COMMAND}"
echo -n '6: ' && \
    docker run \
           --rm "${DOCKER_USER}/nodejs:6" \
           bash -c "${COMMAND}"
echo -n '7: ' && \
    docker run \
           --rm "${DOCKER_USER}/nodejs:7" \
           bash -c "${COMMAND}"
echo -n '8: ' && \
    docker run \
           --rm "${DOCKER_USER}/nodejs:8" \
           bash -c "${COMMAND}"
echo -n '9: ' && \
    docker run \
           --rm "${DOCKER_USER}/nodejs:9" \
           bash -c "${COMMAND}"
# EOF
