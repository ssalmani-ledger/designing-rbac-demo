select
    customers.id as customer_id,
    customers.first_name,
    customers.last_name,
    departments.name as department

from {{ ref('raw_customers') }} as customers

left join {{ ref('departments') }} as departments on
    departments.number = customers.department
