#!/bin/sh
status=$1
# pending,

curl -v --request POST --data '{"state": "'$status'", "target_url": "https://gitlab.com/'$CI_PROJECT_PATH'", "description": "Build '$status'", "context": "continuous-integration/gitlab-ci"}' -H "Authorization: token $GITHUB_STATUS_TOKEN" https://api.github.com/repos/DanielG/status-test/statuses/$CI_BUILD_REF
