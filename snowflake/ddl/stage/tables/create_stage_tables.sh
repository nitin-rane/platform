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


# creating stage tables
for file in $CODE_BASE_PATH/stage/tables/*.sql
do
 echo "RUNNING $file"
 snowsql -o exit_on_error=true -o log_level=DEBUG -f $file ||  exit_on_error "FAILED $file"
done
