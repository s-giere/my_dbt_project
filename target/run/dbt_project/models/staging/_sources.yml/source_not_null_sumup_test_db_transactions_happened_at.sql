select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select happened_at
from sumup_test_db.source_prod.transactions
where happened_at is null



      
    ) dbt_internal_test