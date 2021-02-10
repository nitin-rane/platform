!set variable_substitution=true;

-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2,
'S3_STORAGE_URL=&S3_STORAGE_URL' as col3, 
'STORAGE_INTEGRATION=&STORAGE_INTEGRATION_NAME' as col4
;

create stage if not exists landing.ext_ga_hits_homegate_web
 url ='&S3_STORAGE_URL/ga/transformed/bqGaPropertyId=1901438/type=hits/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = json);
