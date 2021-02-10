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

# loading stage tables
dir_path=$CODE_BASE_PATH/snowflake/etl/stage
file=$dir_path/insert_into_stage_ga_hits_homegate_web.sql
log_msg "RUNNING $file"
  snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
  PARTITION_DATE=${PARTITION_DATE=} || exit_on_error "FAILED $file"

dir_path=$CODE_BASE_PATH/snowflake/etl/stage
file=$dir_path/insert_into_stage_ga_hits_homegate_apps.sql
log_msg "RUNNING $file"
  snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
  PARTITION_DATE=${PARTITION_DATE=} || exit_on_error "FAILED $file"
  
dir_path=$CODE_BASE_PATH/snowflake/etl/stage
file=$dir_path/insert_into_stage_ga_hits_immostreet.sql
log_msg "RUNNING $file"
  snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
  PARTITION_DATE=${PARTITION_DATE=} || exit_on_error "FAILED $file" 

dir_path=$CODE_BASE_PATH/snowflake/etl/stage
file=$dir_path/insert_into_stage_ga_hits_home.sql
log_msg "RUNNING $file"
  snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
  PARTITION_DATE=${PARTITION_DATE=} || exit_on_error "FAILED $file" 

dir_path=$CODE_BASE_PATH/snowflake/etl/stage
file=$dir_path/insert_into_stage_ga_hits_all.sql
log_msg "RUNNING $file"
  snowsql -o exit_on_error=true -o log_level=DEBUG -f $file -D \
  PARTITION_DATE=${PARTITION_DATE=} || exit_on_error "FAILED $file"
