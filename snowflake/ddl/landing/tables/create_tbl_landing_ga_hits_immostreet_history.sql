-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

create table if not exists landing.ga_hits_immostreet_history(
 src variant not null comment 'to store JSON data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 bq_platform_name string not null comment 'platform name parsed from src column',
 bq_dataset_id int not null comment 'parsed from s3 file path. This is the Google big query dataset id. Also represents homegate properties on a particular platform (web,app,immostreet,home)',
 dt date not null comment 'date parsed from s3 file path indicating the partition date of a Google Big query dataset',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
cluster by (dt)
comment='This table stores immutable data that is extracted from a Google Big query source in JSON format. The data is for homegate apps. Google dataset ID number is 177726388'
;     
