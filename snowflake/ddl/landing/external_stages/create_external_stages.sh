#!/bin/bash

exit_on_error(){
 tput setaf 1;
 echo -e "$(date "+%Y-%m-%d %T") $0 => $1"
 tput sgr0;
 exit -1
}

log_msg(){
 echo " $(date "+%Y-%m-%d %T") $1"
}

# environment variables must exist
if [ -z $S3_BUCKET_NAME ];then
 exit_on_error "FAILED no variable or value found for environment variable S3_BUCKET_NAME"
fi

if [ -z $STORAGE_INTEGRATION_NAME ];then
 exit_on_error "FAILED no variable or value found for environment variable STORAGE_INTEGRATION_NAME"
fi

# creating external stages in landing
for file in $CODE_BASE_PATH/landing/external_stages/*.sql
do
  log_msg "RUNNING $file"
  snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
   S3_STORAGE_URL="s3://${S3_BUCKET_NAME}" \
   -D STORAGE_INTEGRATION_NAME=${STORAGE_INTEGRATION_NAME} || exit_on_error "FAILED $file"
done
