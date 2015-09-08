#!/bin/bash

echo "IPA path => ${BITRISE_IPA_PATH}"
echo "API key => ${APPALOOSA_API_KEY}"
echo "screen1 => ${SCREENSHOT_1}"

export BITRISE_IPA_PATH=${BITRISE_IPA_PATH}
export APPALOOSA_API_KEY=${APPALOOSA_API_KEY}
export SCREENSHOT_1=${SCREENSHOT_1}

source .bashrc

echo 'ENV :'
env

exit 0