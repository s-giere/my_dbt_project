select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select device_id
from sumup_test_db.source_prod.transactions
where device_id is null



      
    ) dbt_internal_test