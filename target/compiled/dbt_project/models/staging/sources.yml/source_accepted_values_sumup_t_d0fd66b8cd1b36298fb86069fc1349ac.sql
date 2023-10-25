
    
    

with all_values as (

    select
        device_type as value_field,
        count(*) as n_records

    from sumup_test_db.source_prod.devices
    group by device_type

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5'
)


