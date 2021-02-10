-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_inquiry_archive
AS
SELECT
src:inquiry_id::BIGINT AS INQUIRY_ID
,src:timestamp::TIMESTAMP AS TIMESTAMP
,src:advertisement_id::BIGINT AS ADVERTISEMENT_ID
,src:ref_property::STRING AS REF_PROPERTY
,src:ref_house::STRING AS REF_HOUSE
,src:ref_object::STRING AS REF_OBJECT
,src:object_category::STRING AS OBJECT_CATEGORY
,src:object_type::INT AS OBJECT_TYPE
,src:offer_type::STRING AS OFFER_TYPE
,src:agency_id::STRING AS AGENCY_ID
,src:agency_ref::STRING AS AGENCY_REF
,src:agency_city::STRING AS AGENCY_CITY
,src:agency_email::STRING AS AGENCY_EMAIL
,src:inquiry_name::STRING AS INQUIRY_NAME
,src:inquiry_firstname::STRING AS INQUIRY_FIRSTNAME
,src:inquiry_company::STRING AS INQUIRY_COMPANY
,src:inquiry_street::STRING AS INQUIRY_STREET
,src:inquiry_zip::STRING AS INQUIRY_ZIP
,src:inquiry_city::STRING AS INQUIRY_CITY
,src:inquiry_country::STRING AS INQUIRY_COUNTRY
,src:inquiry_birthdate::STRING AS INQUIRY_BIRTHDATE
,src:inquiry_phone_day::STRING AS INQUIRY_PHONE_DAY
,src:inquiry_email::STRING AS INQUIRY_EMAIL
,src:inquiry_employer::STRING AS INQUIRY_EMPLOYER
,src:inquiry_job::STRING AS INQUIRY_JOB
,src:remark::STRING AS REMARK
,src:language_id::STRING AS LANGUAGE_ID
,src:publishing_id::STRING AS PUBLISHING_ID
,src:object_referenz::STRING AS OBJECT_REFERENZ
,src:ff_offer_type::STRING AS FF_OFFER_TYPE
,src:ff_max_number_rooms::DECIMAL(5,1) AS FF_MAX_NUMBER_ROOMS
,src:ff_min_surface_living::BIGINT AS FF_MIN_SURFACE_LIVING
,src:ff_min_rent_price::DECIMAL(12,2) AS FF_MIN_RENT_PRICE
,src:ff_max_rent_price::DECIMAL(12,2) AS FF_MAX_RENT_PRICE
,src:ff_max_surface_property::BIGINT AS FF_MAX_SURFACE_PROPERTY
,src:ff_min_number_rooms::DECIMAL(5,1) AS FF_MIN_NUMBER_ROOMS
,src:ff_country::STRING AS FF_COUNTRY
,src:ff_min_selling_price::BIGINT AS FF_MIN_SELLING_PRICE
,src:ff_max_selling_price::BIGINT AS FF_MAX_SELLING_PRICE
,src:ff_max_surface_living::BIGINT AS FF_MAX_SURFACE_LIVING
,src:ff_dialling_code::STRING AS FF_DIALLING_CODE
,src:ff_phone::STRING AS FF_PHONE
,src:ff_zip::STRING AS FF_ZIP
,src:ff_city::STRING AS FF_CITY
,src:ff_object_art::STRING AS FF_OBJECT_ART
,src:ff_min_surface_property::BIGINT AS FF_MIN_SURFACE_PROPERTY
,src:inquiry_nationality::STRING AS INQUIRY_NATIONALITY
,src:inquiry_amountperson::STRING AS INQUIRY_AMOUNTPERSON
,src:inquiry_income::BIGINT AS INQUIRY_INCOME
,src:inquiry_marriage::STRING AS INQUIRY_MARRIAGE
,src:title_id::STRING AS TITLE_ID
,src:send_copy::BOOLEAN AS SEND_COPY
,src:platform::STRING AS PLATFORM
,src:source_publishing_id::STRING AS SOURCE_PUBLISHING_ID
,src:interest_costs::BIGINT AS INTEREST_COSTS
,src:amortization_costs::BIGINT AS AMORTIZATION_COSTS
,src:additional_costs::BIGINT AS ADDITIONAL_COSTS
,src:total_costs::BIGINT AS TOTAL_COSTS
,src:url_similar_ads::STRING AS URL_SIMILAR_ADS
,src:person_id::BIGINT AS PERSON_ID
,src:mig_from_immostreet::BOOLEAN AS MIG_FROM_IMMOSTREET
,src:listing_type::STRING AS LISTING_TYPE
,src:status::STRING AS STATUS
,src:last_updated::TIMESTAMP AS LAST_UPDATED
,src
,dt
FROM stage.heritagedb_inquiry_archive;
