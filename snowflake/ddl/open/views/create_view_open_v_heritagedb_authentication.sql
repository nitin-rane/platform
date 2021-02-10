-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_authentication
AS
SELECT
src:person_id::BIGINT AS PERSON_ID
,src:authentication_id::STRING AS AUTHENTICATION_ID
,src:logon_id::STRING AS LOGON_ID
,src:password::STRING AS PASSWORD
,src:certificate::STRING AS CERTIFICATE
,src:md5_password::STRING AS MD5_PASSWORD
,src:dps_user_id::BIGINT AS DPS_USER_ID
,src:last_login::TIMESTAMP AS LAST_LOGIN
,src:gtc_id_accepted::BIGINT AS GTC_ID_ACCEPTED
,src:gtc_accepted_timestamp::TIMESTAMP AS GTC_ACCEPTED_TIMESTAMP
,src:lastactivity_date::TIMESTAMP AS LASTACTIVITY_DATE
,src:registration_date::TIMESTAMP AS REGISTRATION_DATE
,src:status::STRING AS STATUS
,src:publishing_id::STRING AS PUBLISHING_ID
,src:auto_login::BOOLEAN AS AUTO_LOGIN
,src:google_id::STRING AS GOOGLE_ID
,src:facebook_id::STRING AS FACEBOOK_ID
,src:hash_type::STRING AS HASH_TYPE
,src:password_hash::STRING AS PASSWORD_HASH
,src
,dt
FROM stage.heritagedb_authentication;
