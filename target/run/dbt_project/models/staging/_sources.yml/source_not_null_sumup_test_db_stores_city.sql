select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select city
from sumup_test_db.source_prod.stores
where city is null



      
    ) dbt_internal_test