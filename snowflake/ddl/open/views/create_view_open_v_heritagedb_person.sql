-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_person
AS
SELECT
src:person_id::BIGINT AS PERSON_ID
,src:remark::STRING AS REMARK
,src:language_id::STRING AS LANGUAGE_ID
,src:agency_id::STRING AS AGENCY_ID
,src:roll_id::STRING AS ROLL_ID
,src:logo::STRING AS LOGO
,src:url::STRING AS URL
,src:birthdate::TIMESTAMP AS BIRTHDATE
,src:urldiscount::BOOLEAN AS URLDISCOUNT
,src:status::STRING AS STATUS
,src:datatool::BOOLEAN AS DATATOOL
,src:picturetool::BOOLEAN AS PICTURETOOL
,src:agentoncp::BOOLEAN AS AGENTONCP
,src:immovista::STRING AS IMMOVISTA
,src:sesame::STRING AS SESAME
,src:sesame_id::STRING AS SESAME_ID
,src:sex::STRING AS SEX
,src:search_inquiry::BOOLEAN AS SEARCH_INQUIRY
,src:default_publishing_group_id::INT AS DEFAULT_PUBLISHING_GROUP_ID
,src:default_delivery_group_id::INT AS DEFAULT_DELIVERY_GROUP_ID
,src:contact_type::STRING AS CONTACT_TYPE
,src:data_owner_id::BIGINT AS DATA_OWNER_ID
,src:lead_status::STRING AS LEAD_STATUS
,src:vertragsbeginn::TIMESTAMP AS VERTRAGSBEGINN
,src:vertragsende::TIMESTAMP AS VERTRAGSENDE
,src:access_tool_version::STRING AS ACCESS_TOOL_VERSION
,src:access_tool_license::STRING AS ACCESS_TOOL_LICENSE
,src:issuing_billing_date::TIMESTAMP AS ISSUING_BILLING_DATE
,src:agent_link::BOOLEAN AS AGENT_LINK
,src:object_statistic::BOOLEAN AS OBJECT_STATISTIC
,src:prospect_list::BOOLEAN AS PROSPECT_LIST
,src:billing_type::STRING AS BILLING_TYPE
,src:agency_newsletter::BOOLEAN AS AGENCY_NEWSLETTER
,src:verwaltungs_software::STRING AS VERWALTUNGS_SOFTWARE
,src:makler_software::STRING AS MAKLER_SOFTWARE
,src:position::STRING AS POSITION
,src:erfasser::STRING AS ERFASSER
,src:key_account::BOOLEAN AS KEY_ACCOUNT
,src:billing_immovista::BOOLEAN AS BILLING_IMMOVISTA
,src:docutool::BOOLEAN AS DOCUTOOL
,src:movietool::BOOLEAN AS MOVIETOOL
,src:pool_type::INT AS POOL_TYPE
,src:ecat_type::INT AS ECAT_TYPE
,src:ecat_number_of_user::INT AS ECAT_NUMBER_OF_USER
,src:ecat_contract_partner::STRING AS ECAT_CONTRACT_PARTNER
,src:changed_status_date::TIMESTAMP AS CHANGED_STATUS_DATE
,src:changed_portal_group_date::TIMESTAMP AS CHANGED_PORTAL_GROUP_DATE
,src:agency_status_changed_date::TIMESTAMP AS AGENCY_STATUS_CHANGED_DATE
,src:changed_portal_group::TIMESTAMP AS CHANGED_PORTAL_GROUP
,src:locationdatatool::BOOLEAN AS LOCATIONDATATOOL
,src:locationdatatool_expire_date::TIMESTAMP AS LOCATIONDATATOOL_EXPIRE_DATE
,src:billing_intro_offering::STRING AS BILLING_INTRO_OFFERING
,src:online_publishing::BOOLEAN AS ONLINE_PUBLISHING
,src:i2p_password::STRING AS I2P_PASSWORD
,src:testbeginn::TIMESTAMP AS TESTBEGINN
,src:testende::TIMESTAMP AS TESTENDE
,src:contact_form::STRING AS CONTACT_FORM
,src:agency_video_id::STRING AS AGENCY_VIDEO_ID
,src:changed_online_publishing_date::TIMESTAMP AS CHANGED_ONLINE_PUBLISHING_DATE
,src:application_dossier_banner::BOOLEAN AS APPLICATION_DOSSIER_BANNER
,src:contact_form_sale_addr::INT AS CONTACT_FORM_SALE_ADDR
,src:contact_form_rent_addr::INT AS CONTACT_FORM_RENT_ADDR
,src:invoice_delivery_type::INT AS INVOICE_DELIVERY_TYPE
,src:contact_form_template_rent::INT AS CONTACT_FORM_TEMPLATE_RENT
,src:contact_form_template_sale::INT AS CONTACT_FORM_TEMPLATE_SALE
,src:agency_recommendation::STRING AS AGENCY_RECOMMENDATION
,src:changed_agency_details::TIMESTAMP AS CHANGED_AGENCY_DETAILS
,src:free_premium_listing_days::INT AS FREE_PREMIUM_LISTING_DAYS
,src:free_top_listing_days::INT AS FREE_TOP_LISTING_DAYS
,src:clubone_start_date::TIMESTAMP AS CLUBONE_START_DATE
,src
,dt
FROM stage.heritagedb_person;
