#!/bin/bash

if [ -z "${S3_DEPLOY_STEP_URL_IPA}" ] || [ -z "${APPALOOSA_API_KEY}"]; then
	echo 'binary path or api key are missing'
elif [ -z "${DESCRIPTION}" ]; then
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$S3_DEPLOY_STEP_URL_IPA"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head
else
	curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$S3_DEPLOY_STEP_URL_IPA"'", "description": "'"$DESCRIPTION"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head
fi
exit 0