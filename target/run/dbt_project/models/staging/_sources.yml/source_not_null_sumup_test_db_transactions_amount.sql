select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select amount
from sumup_test_db.source_prod.transactions
where amount is null



      
    ) dbt_internal_test