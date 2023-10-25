select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select type
from sumup_test_db.source_prod.devices
where type is null



      
    ) dbt_internal_test