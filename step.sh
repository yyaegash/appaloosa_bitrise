#!/bin/bash

echo "IPA path => ${BITRISE_IPA_PATH}"
echo "API key => ${APPALOOSA_API_KEY}"
# echo "screen1 => ${SCREENSHOT_1}"
# echo "screen2 => ${SCREENSHOT_2}"
# echo "screen3 => ${SCREENSHOT_3}"
# echo "screen4 => ${SCREENSHOT_4}"
# echo "screen5 => ${SCREENSHOT_5}"
# echo "icon => ${ICON}"
# echo "banner => ${BANNER}"
# echo "description => ${DESCRIPTION}"
echo "store_id => ${STORE_ID}"


# curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'", "screenshot1": "'"$SCREENSHOT_1"'","screenshot2": "'"$SCREENSHOT_2"'", "screenshot3": "'"$SCREENSHOT_3"'","screenshot4": "'"$SCREENSHOT_4"'","screenshot5": "'"$SCREENSHOT_5"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY

curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY

exit 0