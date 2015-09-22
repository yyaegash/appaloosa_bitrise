#!/bin/bash

echo "Variables setted"
echo "Binary path:  ${BITRISE_IPA_PATH}"
echo "Description:  ${DESCRIPTION}"
echo "API Key    :  ${APPALOOSA_API_KEY}"
echo "API Key    :  $APPALOOSA_API_KEY"



if [ -z "${BITRISE_IPA_PATH}" ] || [ -z "${APPALOOSA_API_KEY}"] || [ -z "${STORE_ID}"]; then
	echo "binary path, api key or store's id are missing"
elif [ -z "${DESCRIPTION}" ]; then
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head
else
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'", "description": "'"$DESCRIPTION"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head
fi
exit 0