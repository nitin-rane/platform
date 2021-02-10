!set variable_substitution=true;

-- for debugging and logging
select 'PARTITION_DATE=&PARTITION_DATE' as col1;

delete from stage.ga_hits_homegate_apps where dt='&PARTITION_DATE';

set load_dt_utc = current_timestamp();

insert into stage.ga_hits_homegate_apps(src,src_md5,bq_platform_name,bq_dataset_id,dt,file_row_number,file_path,batch_id,load_dt)
select src
      ,src_md5
      ,bq_platform_name
      ,bq_dataset_id
      ,dt
      ,file_row_number
      ,file_path
      ,batch_id
      ,load_dt_utc
from (
      select src
      ,src_md5
      ,bq_platform_name
      ,bq_dataset_id
      ,dt
      ,file_row_number
      ,file_path
      ,batch_id
      ,load_dt_utc
      ,dense_rank() over (partition by dt order by load_dt_utc desc) as latest_row
      from landing.ga_hits_homegate_apps_history
      where dt = '&PARTITION_DATE'
  ) as s
where latest_row = 1;
