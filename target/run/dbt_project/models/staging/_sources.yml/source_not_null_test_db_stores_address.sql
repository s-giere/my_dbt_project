select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select address
from test_db.source_data.stores
where address is null



      
    ) dbt_internal_test