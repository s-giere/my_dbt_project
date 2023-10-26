{% macro ref(model_name) %}

    {% set rel = builtins.ref(model_name) %}

    {% if rel.database == 'snapshots_db' %}
        {% do return(builtins.ref(model_name)) %}
    {% else %}
        {% do return(builtins.ref(model_name).include(database=false)) %}
    {% endif %}

{% endmacro %}