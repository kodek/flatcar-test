#!/bin/bash

# Transpile config to ignition
docker run --rm -i quay.io/coreos/butane:latest < example.yaml > ignition.json
# Install flatcar as per https://flatcar-linux.org/docs/latest/installing/bare-metal/installing-to-disk/
flatcar-install -d /dev/sda -i ignition.json
