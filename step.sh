#!/bin/bash

curl -H "Content-Type: application/json" -X POST --data '{ "application": { "binary_path": "'"$S3_DEPLOY_STEP_URL_IPA"'", "description": "'"$DESCRIPTION"'"}}' http://appaloosa-int.herokuapp.com/api/v1/$STORE_ID/applications/upload?api_key=$APPALOOSA_API_KEY | head

exit 0