{% macro friday (column_name1,column_name2) %}
    {{ column_name1 }} * {{ column_name2 }} 
{%- endmacro %}