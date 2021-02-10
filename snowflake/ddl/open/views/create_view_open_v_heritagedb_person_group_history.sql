-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_person_group_history
AS
SELECT
src:head_person_id::BIGINT AS HEAD_PERSON_ID
,src:sub_person_id::BIGINT AS SUB_PERSON_ID
,src:groupname::STRING AS GROUPNAME
,src:valid_from::TIMESTAMP AS VALID_FROM
,src:valid_to::TIMESTAMP AS VALID_TO
,src:state::BOOLEAN AS STATE
,src
,dt
FROM stage.heritagedb_person_group_history;
