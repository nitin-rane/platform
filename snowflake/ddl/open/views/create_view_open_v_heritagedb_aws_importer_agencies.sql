-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_aws_importer_agencies
AS
SELECT
src:id::BIGINT AS ID
,src:created::TIMESTAMP AS CREATED
,src:updated::TIMESTAMP AS UPDATED
,src:agency_id::STRING AS AGENCY_ID
,src:active::BOOLEAN AS ACTIVE
,src
,dt
FROM stage.heritagedb_aws_importer_agencies;
