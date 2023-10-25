select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select address
from sumup_test_db.source_prod.stores
where address is null



      
    ) dbt_internal_test