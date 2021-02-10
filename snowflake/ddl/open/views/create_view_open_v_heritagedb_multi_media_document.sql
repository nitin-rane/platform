-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_multi_media_document
AS
SELECT
src:multi_media_document_id::BIGINT AS MULTI_MEDIA_DOCUMENT_ID
,src:advertisement_id::BIGINT AS ADVERTISEMENT_ID
,src:title::TEXT AS TITLE
,src:document_filename::TEXT AS DOCUMENT_FILENAME
,src:type::TEXT AS TYPE
,src:description::TEXT AS DESCRIPTION
,src:customer_parameter::TEXT AS CUSTOMER_PARAMETER
,src:object_parameter::TEXT AS OBJECT_PARAMETER
,src:t_parameter::TEXT AS T_PARAMETER
,src:index_no::SMALLINT AS INDEX_NO
,src:active::TEXT AS ACTIVE
,src:document_filename_orig::TEXT AS DOCUMENT_FILENAME_ORIG
,src:photo_plan::BOOLEAN AS PHOTO_PLAN
,src:index_no_new::SMALLINT AS INDEX_NO_NEW
,src
,dt
FROM stage.heritagedb_multi_media_document;
