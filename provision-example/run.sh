#!/bin/bash

docker run --env-file KEYS.env -i -t --rm -v $(pwd):/ansible ec2ansible ./provision.sh
