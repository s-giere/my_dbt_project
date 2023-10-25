select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select id
from test_db.source_data.transactions
where id is null



      
    ) dbt_internal_test