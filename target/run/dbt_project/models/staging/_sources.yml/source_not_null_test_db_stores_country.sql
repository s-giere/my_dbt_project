select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select country
from test_db.source_data.stores
where country is null



      
    ) dbt_internal_test