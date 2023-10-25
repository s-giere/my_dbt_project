-- back compat for old kwarg name
  
  begin;
    
        
            
                
                
            
                
                
            
        
    

    

    merge into dbt_dev_db.marts.rpt_device_transactions__daily_rollup as DBT_INTERNAL_DEST
        using dbt_dev_db.marts.rpt_device_transactions__daily_rollup__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                    DBT_INTERNAL_SOURCE.device_id = DBT_INTERNAL_DEST.device_id
                ) and (
                    DBT_INTERNAL_SOURCE.transaction_date = DBT_INTERNAL_DEST.transaction_date
                )

    
    when matched then update set
        "DEVICE_ID" = DBT_INTERNAL_SOURCE."DEVICE_ID","DEVICE_TYPE" = DBT_INTERNAL_SOURCE."DEVICE_TYPE","STORE_ID" = DBT_INTERNAL_SOURCE."STORE_ID","STORE_NAME" = DBT_INTERNAL_SOURCE."STORE_NAME","STORE_TYPOLOGY" = DBT_INTERNAL_SOURCE."STORE_TYPOLOGY","STORE_COUNTRY" = DBT_INTERNAL_SOURCE."STORE_COUNTRY","TRANSACTION_DATE" = DBT_INTERNAL_SOURCE."TRANSACTION_DATE","TRANSACTION_ACCEPTED__AMOUNT" = DBT_INTERNAL_SOURCE."TRANSACTION_ACCEPTED__AMOUNT","TRANSACTION_ACCEPTED__COUNT" = DBT_INTERNAL_SOURCE."TRANSACTION_ACCEPTED__COUNT"
    

    when not matched then insert
        ("DEVICE_ID", "DEVICE_TYPE", "STORE_ID", "STORE_NAME", "STORE_TYPOLOGY", "STORE_COUNTRY", "TRANSACTION_DATE", "TRANSACTION_ACCEPTED__AMOUNT", "TRANSACTION_ACCEPTED__COUNT")
    values
        ("DEVICE_ID", "DEVICE_TYPE", "STORE_ID", "STORE_NAME", "STORE_TYPOLOGY", "STORE_COUNTRY", "TRANSACTION_DATE", "TRANSACTION_ACCEPTED__AMOUNT", "TRANSACTION_ACCEPTED__COUNT")

;
    commit;