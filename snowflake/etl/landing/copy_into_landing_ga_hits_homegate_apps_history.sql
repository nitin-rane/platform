!set variable_substitution=true;

-- for debugging and logging
select 'PARTITION_DATE=&PARTITION_DATE' as col1;

set load_dt = convert_timezone('Europe/Zurich',current_timestamp())::TIMESTAMP_NTZ;
set batch_id = (select UUID_STRING());

copy into landing.ga_hits_homegate_apps_history
from (
      SELECT $1 as src
       ,md5(src) as src_md5
       ,ltrim(rtrim($1:BQ_PLATFORM_NAME::STRING)) AS bq_platform_name
       ,regexp_substr(regexp_substr(metadata$filename, 'bqGaPropertyId=[0-9]+'),'[0-9]+') as bq_dataset_id
       ,cast(regexp_substr(regexp_substr(metadata$filename, 'dt=[0-9]{4}-[0-9]{2}-[0-9]{2}'),'[0-9]{4}-[0-9]{2}-[0-9]{2}') as date) as dt
       ,metadata$file_row_number as file_row_number
       ,metadata$filename as file_path
       ,$batch_id as batch_id
       ,$load_dt_utc as load_dt_utc
     FROM @landing.ext_ga_hits_homegate_apps
)
pattern='.*dt=&PARTITION_DATE/.*.json.gz'
on_error = continue;
