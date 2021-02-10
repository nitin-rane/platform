-- for logging and debugging
select CONCAT('DATABASE=',CURRENT_DATABASE()) as col1,
CONCAT('WAREHOUSE=',CURRENT_WAREHOUSE()) as col2
;

CREATE VIEW IF NOT EXISTS open.v_heritagedb_publishing_count
AS
SELECT
src:publishing_timestamp::TIMESTAMP AS PUBLISHING_TIMESTAMP
,src:advertisement_id::BIGINT AS ADVERTISEMENT_ID
,src:agency_id::STRING AS AGENCY_ID
,src:ref_property::STRING AS REF_PROPERTY
,src:ref_house::STRING AS REF_HOUSE
,src:ref_object::STRING AS REF_OBJECT
,src:billing_number::BIGINT AS BILLING_NUMBER
,src:publishing_group_id::INT AS PUBLISHING_GROUP_ID
,src:active_picture_counter::INT AS ACTIVE_PICTURE_COUNTER
,src:target_destination::STRING AS TARGET_DESTINATION
,src:active_docu_counter::INT AS ACTIVE_DOCU_COUNTER
,src:active_movie_counter::INT AS ACTIVE_MOVIE_COUNTER
,src:object_referenz::STRING AS OBJECT_REFERENZ
,src:active_immoviewer_counter::INT AS ACTIVE_IMMOVIEWER_COUNTER
,src:mig_from_is::INT AS MIG_FROM_IS
,src:listing_type::STRING AS LISTING_TYPE
,src:imported_by::STRING AS IMPORTED_BY
,src:imported_timestamp::TIMESTAMP AS IMPORTED_TIMESTAMP
,src:billing_relevant::BOOLEAN AS BILLING_RELEVANT
,src:is_prime_offer::BOOLEAN AS IS_PRIME_OFFER
,src:matching_id::STRING AS MATCHING_ID
,src:top_listing_product_type::STRING AS TOP_LISTING_PRODUCT_TYPE
,src
,dt
FROM stage.heritagedb_publishing_count;
