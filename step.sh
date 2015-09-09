#!/bin/bash

echo "IPA path => ${BITRISE_IPA_PATH}"
echo "API key => ${APPALOOSA_API_KEY}"
echo "screen1 => ${SCREENSHOT_1}"
echo "store_id => ${STORE_ID}"

export BITRISE_IPA_PATH=${BITRISE_IPA_PATH}
export APPALOOSA_API_KEY=${APPALOOSA_API_KEY}
export SCREENSHOT_1=${SCREENSHOT_1}
export STORE_ID=${STORE_ID}

curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": ENV["BITRISE_IPA_PATH"], "screenshot1": ENV["SCREENSHOT_1"]}}' http://appaloosa-int.herokuapp.com/api/v1/ENV['STORE_ID']/applications/upload?api_key=ENV['APPALOOSA_API_KEY']

exit 0