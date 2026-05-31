{{ config(materialized='view') }}

select
    dwi_location,
    dwk_parent_location,
    location_name
from {{ source('oilgas_staging', 'location') }}