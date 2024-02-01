#!/bin/bash

read -p "Enter the VCS provider (\"gh\" or \"bb\"): " VCS
read -p "Enter your Organization: " ORGANIZATION
read -p "Enter your Projects (separated by space): " -a PROJECTS
read -p "Enter your CircleCI Token: " TOKEN
read -p "Enter the Environment Variable Name: " ENV_VAR_NAME
read -p "Enter the New Value for the Environment Variable: " NEW_VALUE

for PROJECT in "${PROJECTS[@]}"
do
  curl --request POST \
    --url "https://circleci.com/api/v2/project/${VCS}/${ORGANIZATION}/${PROJECT}/envvar" \
    --header "Circle-Token: ${TOKEN}" \
    --header 'content-type: application/json' \
    --data "{\"name\":\"${ENV_VAR_NAME}\",\"value\":\"${NEW_VALUE}\"}"
done