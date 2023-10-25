
    
    

select
    typology as unique_field,
    count(*) as n_records

from dbt_hol_dev.trans.test
where typology is not null
group by typology
having count(*) > 1


