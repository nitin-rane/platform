!set variable_substitution=true;

-- for debugging and logging
select 'PARTITION_DATE=&PARTITION_DATE' as col1;

delete from stage.ga_hits_all where dt='&PARTITION_DATE';

insert into stage.ga_hits_all (src,src_md5,bq_platform_name,bq_dataset_id,dt,file_row_number,file_path,batch_id,load_dt_utc)
select src,src_md5,bq_platform_name,bq_dataset_id,dt,file_row_number,file_path,batch_id,load_dt_utc
from stage.ga_hits_homegate_web
where dt='&PARTITION_DATE'
union all
select src,src_md5,bq_platform_name,bq_dataset_id,dt,file_row_number,file_path,batch_id,load_dt_utc
from stage.ga_hits_homegate_apps
where dt='&PARTITION_DATE'
union all
select src,src_md5,bq_platform_name,bq_dataset_id,dt,file_row_number,file_path,batch_id,load_dt_utc
from stage.ga_hits_immostreet
where dt='&PARTITION_DATE'
union all
select src,src_md5,bq_platform_name,bq_dataset_id,dt,file_row_number,file_path,batch_id,load_dt_utc
from stage.ga_hits_home
where dt='&PARTITION_DATE';
