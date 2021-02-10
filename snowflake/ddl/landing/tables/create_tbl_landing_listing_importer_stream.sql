-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

create table if not exists landing.listing_importer_stream(
 src variant not null comment 'to store JSON data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from listing stream table as source in PARQUET format.'
;