
    
    

select
    id as unique_field,
    count(*) as n_records

from dbt_hol_dev.trans.test
where id is not null
group by id
having count(*) > 1


