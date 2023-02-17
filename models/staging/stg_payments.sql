{{
  config(
    materialized='view',
    grants={'select': ["reporter_products"]}
  )
}}

with source as (

    select * from {{ source('stripe', 'payments') }}

),

renamed as (

    select
        orderid as order_id,
        paymentmethod as payment_method,
        amount / 100 as amount

    from source

)

select * from renamed
