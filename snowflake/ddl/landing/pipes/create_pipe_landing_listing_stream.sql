-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

create or replace pipe landing.listing_importer_stream
    auto_ingest = true
    as
    copy into landing.listing_importer_stream
    from (
       SELECT
         $1 as src
        ,md5(src) as src_md5
        ,cast(substr(metadata$filename, 37 ,10) as date) as dt
        ,metadata$file_row_number as file_row_number
        ,metadata$filename as file_path
        ,1 as batch_id
        ,current_timestamp() as load_dt_utc
      FROM @landing.ext_listing_importer_stream)
    file_format = (type = 'JSON');