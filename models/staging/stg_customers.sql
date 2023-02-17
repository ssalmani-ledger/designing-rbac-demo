{{
  config(
    materialized='view',
    grants={'select': ["reporter_customers"]}
  )
}}

select
    customers.id as customer_id,
    customers.first_name,
    customers.last_name

from {{ source('customers', 'customers') }} as customers
