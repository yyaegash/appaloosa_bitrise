#!/bin/bash

echo "Variables set"
echo "BINARY PATH:  ${BITRISE_IPA_PATH}"
echo "DESCRIPTION:  ${DESCRIPTION}"
echo "GROUP IDS  :  ${GROUP_IDS}"
echo "API KEY    :  ${APPALOOSA_API_KEY}"



if [ -z "${BITRISE_IPA_PATH}" ] || [ -z "${APPALOOSA_API_KEY}"] || [ -z "${STORE_ID}"]; then
	echo "Binary path, api key or store's id are missing"
	exit -1

elif [ -z "${DESCRIPTION}" ] && [ -z "${GROUP_IDS}" ] ; then
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head

elif [ -z "${GROUP_IDS}" ]; then
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'", "description": "'"$DESCRIPTION"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head

elif [ -z "${DESCRIPTION}" ] && [ -z "${GROUP_IDS}" ] ; then
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'", "group_ids": "'"$GROUP_IDS"'" }}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head

else
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$BITRISE_IPA_PATH"'", "description": "'"$DESCRIPTION"'", "group_ids": "'"$GROUP_IDS"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head
fi
exit 0