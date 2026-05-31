{{ config(
    materialized='table',
    schema='MART'
) }}

select
    i.dwi_incident,
    i.incident_number,
    i.title,
    i.incident_date,
    i.investigation_can_be_classified_as,

    l.dwi_location,
    l.location_name,
    l.dwk_parent_location_location_name,

    ps.process_safety_id,
    ps.spse_nomination_basis

from {{ ref('stg_incident') }} i
left join {{ ref('stg_location') }} l
    on i.dwk_location = l.dwi_location
left join {{ ref('stg_incident_process_safety') }} ps
    on i.dwi_incident = ps.dwk_incident