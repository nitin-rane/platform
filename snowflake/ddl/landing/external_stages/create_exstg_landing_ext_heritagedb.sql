!set variable_substitution=true;

-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2,
'S3_STORAGE_URL=&S3_STORAGE_URL' as col3,
'STORAGE_INTEGRATION=&STORAGE_INTEGRATION_NAME' as col4
;

create stage if not exists landing.ext_heritagedb_person
 url ='&S3_STORAGE_URL/heritagedb/person/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_person_group_history
 url ='&S3_STORAGE_URL/heritagedb/person_group_history/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_address
 url ='&S3_STORAGE_URL/heritagedb/address/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_authentication
 url ='&S3_STORAGE_URL/heritagedb/authentication/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_place
 url ='&S3_STORAGE_URL/heritagedb/place/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_place_language
 url ='&S3_STORAGE_URL/heritagedb/place_language/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_region
 url ='&S3_STORAGE_URL/heritagedb/region/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_region_language
 url ='&S3_STORAGE_URL/heritagedb/region_language/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_advertisement
 url ='&S3_STORAGE_URL/heritagedb/advertisement/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_multi_media_document
 url ='&S3_STORAGE_URL/heritagedb/multi_media_document/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_aws_importer_agencies
 url ='&S3_STORAGE_URL/heritagedb/aws_importer_agencies/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_aws_importer_listings
 url ='&S3_STORAGE_URL/heritagedb/aws_importer_listings/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_thirdparty_output
 url ='&S3_STORAGE_URL/heritagedb/thirdparty_output/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_immopool_history
 url ='&S3_STORAGE_URL/heritagedb/immopool_history/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_online_publishing_desktop
 url ='&S3_STORAGE_URL/heritagedb/online_publishing_desktop/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_coupons
 url ='&S3_STORAGE_URL/heritagedb/coupons/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_data_owner
 url ='&S3_STORAGE_URL/heritagedb/data_owner/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

/*
create stage if not exists landing.ext_heritagedb_delivery_group
 url ='&S3_STORAGE_URL/heritagedb/delivery_group'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);
*/

create stage if not exists landing.ext_heritagedb_delivery_count
 url ='&S3_STORAGE_URL/heritagedb/delivery_count/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_publishing_count
 url ='&S3_STORAGE_URL/heritagedb/publishing_count/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_publishing_group
 url ='&S3_STORAGE_URL/heritagedb/publishing_group/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_inquiry
 url ='&S3_STORAGE_URL/heritagedb/inquiry/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_inquiry_archive
 url ='&S3_STORAGE_URL/heritagedb/inquiry_archive/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);

create stage if not exists landing.ext_heritagedb_inquiry_publication_order
 url ='&S3_STORAGE_URL/heritagedb/inquiry_publication_order/'
 storage_integration =&STORAGE_INTEGRATION_NAME
 file_format = (type = parquet);
