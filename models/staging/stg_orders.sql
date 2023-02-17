{{
  config(
    materialized='view',
    grants={'select': ["reporter_customers"]}
  )
}}

select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from {{ source('stripe', 'orders') }}
