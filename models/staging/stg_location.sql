{{ config(
    materialized='view',
    schema='STAGING'
) }}

select
    dwi_location,
    dwk_parent_location_location_name,
    location_name
from {{ source('oilgas_staging', 'location') }}