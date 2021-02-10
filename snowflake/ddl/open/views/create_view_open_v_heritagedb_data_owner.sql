-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_data_owner
AS
SELECT
src:id::BIGINT AS ID
,src:abacus_id::BIGINT AS ABACUS_ID
,src:text::STRING AS TEXT
,src:abacus_mandant_id::INT AS ABACUS_MANDANT_ID
,src:publishing_id::STRING AS PUBLISHING_ID
,src
,dt
FROM stage.heritagedb_data_owner;
