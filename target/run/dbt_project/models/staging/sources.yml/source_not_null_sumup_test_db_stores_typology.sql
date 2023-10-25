select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select typology
from sumup_test_db.source_prod.stores
where typology is null



      
    ) dbt_internal_test