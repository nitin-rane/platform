-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_coupons
AS
SELECT
src:coupon_id::STRING AS COUPON_ID
,src:created::TIMESTAMP AS CREATED
,src:timestamp::TIMESTAMP AS TIMESTAMP
,src:startdate::TIMESTAMP AS STARTDATE
,src:enddate::TIMESTAMP AS ENDDATE
,src:coupon_action::STRING AS COUPON_ACTION
,src:action_amount::DECIMAL(5,2) AS ACTION_AMOUNT
,src:email::STRING AS EMAIL
,src:email_title::STRING AS EMAIL_TITLE
,src:action_amount_francs::DECIMAL(5,2) AS ACTION_AMOUNT_FRANCS
,src
,dt
FROM stage.heritagedb_coupons;
