select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select
    typology as unique_field,
    count(*) as n_records

from dbt_hol_dev.trans.test
where typology is not null
group by typology
having count(*) > 1



      
    ) dbt_internal_test