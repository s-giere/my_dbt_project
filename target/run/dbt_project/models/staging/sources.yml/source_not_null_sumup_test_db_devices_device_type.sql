select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select device_type
from sumup_test_db.source_prod.devices
where device_type is null



      
    ) dbt_internal_test