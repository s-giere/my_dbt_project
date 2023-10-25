select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      





with validation_errors as (

    select
        device_id, transaction_date
    from dbt_dev_db.marts.rpt_device_transactions__daily_rollup
    group by device_id, transaction_date
    having count(*) > 1

)

select *
from validation_errors



      
    ) dbt_internal_test