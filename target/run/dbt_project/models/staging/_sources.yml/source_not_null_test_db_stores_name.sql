select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select name
from test_db.source_data.stores
where name is null



      
    ) dbt_internal_test