-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_region
AS
SELECT
src:region_id::BIGINT AS REGION_ID
,src:description::STRING AS DESCRIPTION
,src:sub_region_id::BIGINT AS SUB_REGION_ID
,src:type::STRING AS TYPE
,src:search_name::STRING AS SEARCH_NAME
,src:abacus_cantons_id::BIGINT AS ABACUS_CANTONS_ID
,src:search_name_id::SMALLINT AS SEARCH_NAME_ID
,src:geosearch_zoom_min::SMALLINT AS GEOSEARCH_ZOOM_MIN
,src:geosearch_zoom_max::SMALLINT AS GEOSEARCH_ZOOM_MAX
,src:type_hg5::STRING AS TYPE_HG5
,src:geometry_lat::DECIMAL(10,7) AS GEOMETRY_LAT
,src:geometry_lng::DECIMAL(10,7) AS GEOMETRY_LNG
,src
,dt
FROM stage.heritagedb_region;
