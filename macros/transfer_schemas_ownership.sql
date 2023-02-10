{% macro transfer_schemas_ownership(schemas) -%}

    {%- for schema in schemas -%}

        grant ownership on schema {{ schema }} to role sysadmin copy current grants;
        alter schema {{ schema }} enable managed access;

    {%- endfor -%}

{%- endmacro %}
