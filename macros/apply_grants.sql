{%- macro get_grant_sql(relation, privilege, grantees) -%}
    {%- for grantee in grantees %}
        grant {{ privilege }} on {{ relation }} to {{ grantee }}_{{ target.name }}
    {%- endfor -%}
{%- endmacro -%}

{% macro apply_grants(relation, grant_config, should_revoke) %}
    {{ return(adapter.dispatch("apply_grants")(relation, grant_config, should_revoke)) }}
{% endmacro %}
