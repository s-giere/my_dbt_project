
    
    

select
    address as unique_field,
    count(*) as n_records

from dbt_hol_dev.trans.test
where address is not null
group by address
having count(*) > 1


