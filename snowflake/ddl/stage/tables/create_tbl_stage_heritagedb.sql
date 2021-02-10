-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

create table if not exists stage.heritagedb_person(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB person table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_person_group_history(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB person_group_history table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_address(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB address table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_authentication(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB authentication table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_place(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB place table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_place_language(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB place_language table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_region(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB region table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_region_language(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB region_language table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_advertisement(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB advertisement table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_multi_media_document(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB multi_media_document table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_aws_importer_agencies(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB aws_importer_agencies table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_aws_importer_listings(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB aws_importer_listings table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_thirdparty_output(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB thirdparty_output table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_immopool_history(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB immopool_history table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_online_publishing_desktop(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB online_publishing_desktop table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_coupons(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB coupons table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_data_owner(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB data_owner table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_delivery_count(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB delivery_count table as source in PARQUET format.'
;

/*
create table if not exists stage.heritagedb_delivery_group(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB delivery_group table as source in PARQUET format.
The data stored in this table...'
;
*/

create table if not exists stage.heritagedb_publishing_count(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB publishing_count table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_publishing_group(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB publishing_group table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_inquiry(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB inquiry table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_inquiry_archive(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB inquiry_archive table as source in PARQUET format.'
;

create table if not exists stage.heritagedb_inquiry_publication_order(
 src variant not null comment 'to store PARQUET data type',
 src_md5 string not null comment 'md5 hash of src column. This helps with use cases such as finding duplicates',
 dt date not null comment 'date parsed from s3 file path indicating the partition date',
 file_row_number int not null comment 'row number retrieved from s3 file. This can be used for debugging load failures',
 file_path string not null comment 's3 file path',
 batch_id string not null comment 'batch id of the data load',
 src_load_dt_utc timestamp not null comment 'timestamp when data was loaded into source table',
 load_dt_utc timestamp not null comment 'timestamp when data was loaded into this table'
)
comment='This table stores data that is extracted from heritageDB inquiry_publication_order table as source in PARQUET format.'
;
