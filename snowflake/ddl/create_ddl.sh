#!/bin/bash

exit_on_error(){
 exit -1
}

log_msg(){
 echo " $(date "+%Y-%m-%d %T") $1"
}

export CODE_BASE_PATH=$(dirname ${0})

# create landing external stages
log_msg "creating landing external stages"
$CODE_BASE_PATH/landing/external_stages/create_external_stages.sh || exit_on_error
log_msg "landing external stages created successfully"

# create landing tables
log_msg "creating landing tables"
$CODE_BASE_PATH/landing/tables/create_landing_tables.sh || exit_on_error
log_msg "landing tables created successfully"

# create pipes
log_msg "creating pipes"
$CODE_BASE_PATH/landing/pipes/create_pipes.sh || exit_on_error
log_msg "pipes created successfully"

# create stage tables
log_msg "creating stage tables"
$CODE_BASE_PATH/stage/tables/create_stage_tables.sh || exit_on_error
log_msg "stage tables created successfully"

# create open views
log_msg "creating open views"
$CODE_BASE_PATH/open/views/create_open_views.sh || exit_on_error
log_msg "open views created successfully"
