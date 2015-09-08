#!/bin/bash

echo "IPA path => ${BITRISE_IPA_PATH}"
echo "API key => ${APPALOOSA_API_KEY}"
echo "screen1 => ${SCREENSHOT_1}"

export BITRISE_IPA_PATH=${BITRISE_IPA_PATH}
export APPALOOSA_API_KEY=${APPALOOSA_API_KEY}
export SCREENSHOT_1=${SCREENSHOT_1}

curl -H "Content-Type: application/json" -X POST --data '{ store_id": 1, "application": { "binary_path": "http://127.0.0.1:8080/Infini.ipa", "screenshot1": ${SCREENSHOT_1}}}' http://www.lvh.me:3000/api/v1/1/applications/upload?api_key=${APPALOOSA_API_KEY}

cat /etc/hosts

exit 0