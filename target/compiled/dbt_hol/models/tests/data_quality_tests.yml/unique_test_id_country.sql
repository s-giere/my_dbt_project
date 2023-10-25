
    
    

select
    id||country as unique_field,
    count(*) as n_records

from dbt_hol_dev.trans.test
where id||country is not null
group by id||country
having count(*) > 1


