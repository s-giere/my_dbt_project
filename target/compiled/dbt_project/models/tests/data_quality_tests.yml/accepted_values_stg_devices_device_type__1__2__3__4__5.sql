
    
    

with all_values as (

    select
        device_type as value_field,
        count(*) as n_records

    from dbt_dev_db.staging.stg_devices
    group by device_type

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5'
)


