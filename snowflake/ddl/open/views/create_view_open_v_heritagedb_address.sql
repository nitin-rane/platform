-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_address
AS
SELECT
src:address_id::BIGINT AS ADDRESS_ID
,src:address_type::STRING AS ADDRESS_TYPE
,src:person_id::BIGINT AS PERSON_ID
,src:name::STRING AS NAME
,src:name2::STRING AS NAME2
,src:vorname::STRING AS VORNAME
,src:street::STRING AS STREET
,src:place_id::BIGINT AS PLACE_ID
,src:state::STRING AS STATE
,src:canton::STRING AS CANTON
,src:country::STRING AS COUNTRY
,src:region::STRING AS REGION
,src:fax::STRING AS FAX
,src:phone_day::STRING AS PHONE_DAY
,src:phone_evening::STRING AS PHONE_EVENING
,src:mobile::STRING AS MOBILE
,src:email::STRING AS EMAIL
,src:zip::STRING AS ZIP
,src:place_name::STRING AS PLACE_NAME
,src:address_zusatz::STRING AS ADDRESS_ZUSATZ
,src:title_id::STRING AS TITLE_ID
,src:language_id::STRING AS LANGUAGE_ID
,src:cc_email::STRING AS CC_EMAIL
,src:geo_match::INT AS GEO_MATCH
,src:geometry_lat::DECIMAL(10,7) AS GEOMETRY_LAT
,src:geometry_lng::DECIMAL(10,7) AS GEOMETRY_LNG
,src
,dt
FROM stage.heritagedb_address;
