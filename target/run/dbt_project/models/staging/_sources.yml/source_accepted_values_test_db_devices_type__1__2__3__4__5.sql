select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with all_values as (

    select
        type as value_field,
        count(*) as n_records

    from test_db.source_data.devices
    group by type

)

select *
from all_values
where value_field not in (
    '1','2','3','4','5'
)



      
    ) dbt_internal_test