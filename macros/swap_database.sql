{% macro swap_database() %}
    {% set sql='alter database analytics swap with dbt_staging_db' %}
    {% do run_query(sql) %}
    {{ log("database swapped", info=True) }}
{% endmacro %}