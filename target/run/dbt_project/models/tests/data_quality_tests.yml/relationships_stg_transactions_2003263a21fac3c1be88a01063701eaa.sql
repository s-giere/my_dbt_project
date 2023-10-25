select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

with child as (
    select device_id as from_field
    from dbt_dev_db.staging.stg_transactions
    where device_id is not null
),

parent as (
    select device_id as to_field
    from dbt_dev_db.staging.stg_devices
)

select
    from_field

from child
left join parent
    on child.from_field = parent.to_field

where parent.to_field is null



      
    ) dbt_internal_test