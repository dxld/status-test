#!/bin/sh
status=$1
pipeline=$2
# pending,

curl --request POST --data '{"state": "'$status'", "target_url": "https://gitlab.com/'$CI_PROJECT_PATH/pipelines/$CI_PIPELINE_ID/'", "description": "GitlabCI build '$status'", "context": "continuous-integration/gitlab-ci"}' -H "Authorization: token $GITHUB_STATUS_TOKEN" https://api.github.com/repos/DanielG/status-test/statuses/$CI_BUILD_REF >/dev/null
