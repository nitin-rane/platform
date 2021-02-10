-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_publishing_group
AS
SELECT
src:group_id::INT AS GROUP_ID
,src:publishing_id::STRING AS PUBLISHING_ID
,src:master::BOOLEAN AS MASTER
,src
,dt
FROM stage.heritagedb_publishing_group;
