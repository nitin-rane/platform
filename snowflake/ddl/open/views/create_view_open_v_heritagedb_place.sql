-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_place
AS
SELECT
src:place_id::BIGINT AS PLACE_ID
,src:zip::STRING AS ZIP
,src:additional_zip::STRING AS ADDITIONAL_ZIP
,src:description::STRING AS DESCRIPTION
,src:country_region_id::BIGINT AS COUNTRY_REGION_ID
,src:canton_region_id::BIGINT AS CANTON_REGION_ID
,src:anonymous::BOOLEAN AS ANONYMOUS
,src:municipal_code::BIGINT AS MUNICIPAL_CODE
,src:geometry_lat::DECIMAL(10,7) AS GEOMETRY_LAT
,src:geometry_lng::DECIMAL(10,7) AS GEOMETRY_LNG
,src:created_at::TIMESTAMP AS CREATED_AT
,src:updated_at::TIMESTAMP AS UPDATED_AT
,src
,dt
FROM stage.heritagedb_place;
