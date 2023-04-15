#!/usr/bin/env bash

envsubst < .bitrise.bazelrc.tpl > .bitrise.bazelrc
echo "using bitrise remote cache endpoint: ${BITRISE_CACHE_ENDPOINT}"
