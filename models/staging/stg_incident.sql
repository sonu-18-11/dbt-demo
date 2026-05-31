{{ config(
    materialized='view',
    schema='STAGING'
) }}

select
    dwi_incident,
    dwk_location,
    incident_date,
    incident_number,
    title,
    investigation_can_be_classified_as
from {{ source('oilgas_staging', 'incident') }}