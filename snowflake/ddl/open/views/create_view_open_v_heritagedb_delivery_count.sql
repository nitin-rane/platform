-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_delivery_count
AS
SELECT
src:delivery_timestamp::TIMESTAMP AS DELIVERY_TIMESTAMP
,src:delivery_id::STRING AS DELIVERY_ID
,src:agency_id::STRING AS AGENCY_ID
,src:object_referenz::STRING AS OBJECT_REFERENZ
,src:ref_property::STRING AS REF_PROPERTY
,src:ref_house::STRING AS REF_HOUSE
,src:ref_object::STRING AS REF_OBJECT
,src:advertisement_id::BIGINT AS ADVERTISEMENT_ID
,src:billing_number::BIGINT AS BILLING_NUMBER
,src
,dt
FROM stage.heritagedb_delivery_count;
