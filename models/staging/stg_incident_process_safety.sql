{{ config(materialized='view') }}

select
    dwk_incident,
    process_safety_id,
    spse_nomination_basis
from {{ source('oilgas_staging', 'incident_process_safety') }}