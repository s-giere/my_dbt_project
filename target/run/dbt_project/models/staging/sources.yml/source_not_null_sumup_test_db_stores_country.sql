select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select country
from sumup_test_db.source_prod.stores
where country is null



      
    ) dbt_internal_test