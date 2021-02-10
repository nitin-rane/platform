-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_inquiry_publication_order
AS
SELECT
src:id::BIGINT AS ID
,src:object_referenz::STRING AS OBJECT_REFERENZ
,src:free_publication_date::TIMESTAMP AS FREE_PUBLICATION_DATE
,src:premium_publication_date::TIMESTAMP AS PREMIUM_PUBLICATION_DATE
,src:order_creation_date::TIMESTAMP AS ORDER_CREATION_DATE
,src:order_close_date::TIMESTAMP AS ORDER_CLOSE_DATE
,src:last_reminder_email_date::TIMESTAMP AS LAST_REMINDER_EMAIL_DATE
,src:agency_id::STRING AS AGENCY_ID
,src:order_type::STRING AS ORDER_TYPE
,src:billing_number::BIGINT AS BILLING_NUMBER
,src:person_id::BIGINT AS PERSON_ID
,src:advertisement_id::BIGINT AS ADVERTISEMENT_ID
,src:sent_to_sns::BOOLEAN AS SENT_TO_SNS
,src
,dt
FROM stage.heritagedb_inquiry_publication_order;
