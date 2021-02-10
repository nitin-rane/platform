#!/bin/sh
unset AWS_DEFAULT_PROFILE
CREDS=$(aws sts assume-role --role-arn $DEPLOYER_ARN --role-session-name GitLab-$CI_COMMIT_SHORT_SHA-$CI_JOB_ID --external-id $EXTERNAL_ID)
KEYID=`      echo $CREDS | jq -r '.Credentials.AccessKeyId'`
SECRETKEY=`  echo $CREDS | jq -r '.Credentials.SecretAccessKey'`
TOKEN=`      echo $CREDS | jq -r '.Credentials.SessionToken'`
cat > ~/.aws/config << EOF
[profile deployer-role]
region = $REGION
aws_access_key_id = $KEYID
aws_secret_access_key = $SECRETKEY
aws_session_token = $TOKEN
EOF
export AWS_DEFAULT_PROFILE=deployer-role
