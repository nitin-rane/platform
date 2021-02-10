-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_region_language
AS
SELECT
src:language_id::TEXT AS LANGUAGE_ID
,src:region_id::BIGINT AS REGION_ID
,src:text::TEXT AS TEXT
,src:url_text::TEXT AS URL_TEXT
,src:text_hg5::TEXT AS TEXT_HG5
,src
,dt
FROM stage.heritagedb_region_language;
