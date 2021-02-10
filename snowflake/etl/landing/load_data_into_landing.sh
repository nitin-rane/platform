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

PARTITION_DATE=$1

# input variable must exist
if [ -z $PARTITION_DATE ];then
 exit_on_error "FAILED no variable or value found for PARTITION_DATE"
fi


# loading landing tables
for file in $CODE_BASE_PATH/snowflake/etl/landing/*.sql
do
 echo "RUNNING $file"
 snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
 PARTITION_DATE=${PARTITION_DATE=} ||  exit_on_error "FAILED $file"
done
