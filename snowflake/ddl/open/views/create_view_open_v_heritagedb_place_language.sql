-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_place_language
AS
SELECT
src:language_id::STRING AS LANGUAGE_ID
,src:place_id::BIGINT AS PLACE_ID
,src:text::STRING AS TEXT
,src:text_url::STRING AS TEXT_URL
,src
,dt
FROM stage.heritagedb_place_language;
