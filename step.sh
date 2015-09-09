#!/bin/bash

echo "IPA path => ${BITRISE_IPA_PATH}"
echo "API key => ${APPALOOSA_API_KEY}"
echo "screen1 => ${SCREENSHOT_1}"
echo "screen2 => ${SCREENSHOT_2}"
echo "screen3 => ${SCREENSHOT_3}"
echo "screen4 => ${SCREENSHOT_4}"
echo "screen5 => ${SCREENSHOT_5}"
echo "icon => ${ICON}"
echo "banner => ${BANNER}"
echo "description => ${DESCRIPTION}"
echo "store_id => ${STORE_ID}"

export BITRISE_IPA_PATH=${BITRISE_IPA_PATH}
export APPALOOSA_API_KEY=${APPALOOSA_API_KEY}
export SCREENSHOT_1=${SCREENSHOT_1}
export SCREENSHOT_2=${SCREENSHOT_2}
export SCREENSHOT_3=${SCREENSHOT_3}
export SCREENSHOT_4=${SCREENSHOT_4}
export SCREENSHOT_5=${SCREENSHOT_5}
export ICON=${ICON}
export BANNER=${BANNER}
export DESCRIPTION=${DESCRIPTION}
export STORE_ID=${STORE_ID}

curl -H "Content-Type: application/json" -X POST --data '{ "application": 
{ "binary_path": "'"$BITRISE_IPA_PATH"'", "screenshot1": "'"$SCREENSHOT_1"'"}}' http://appaloosa-int.herokuapp.com/api/v1/"'"$STORE_ID"'"/applications/upload?api_key=ENV['APPALOOSA_API_KEY']

exit 0