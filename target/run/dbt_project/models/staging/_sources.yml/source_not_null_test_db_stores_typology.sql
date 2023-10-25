select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select typology
from test_db.source_data.stores
where typology is null



      
    ) dbt_internal_test