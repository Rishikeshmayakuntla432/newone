-- models/my_joined_model.sql
{{ config(
    materialized='table',
) }}

with employees as (
    select 
      e.employeekey,
        e.TITLE,
        e.VACATIONHOURS,
        e.SICKLEAVEHOURS
    from {{ ref('employee') }} as e
),

 customers as (
    select 
        c.GEOGRAPHYKEY,
        c.FIRSTNAME,
        c.MIDDLENAME,
        c.LASTNAME,
        c.MARITALSTATUS,
        c.gender
    from {{ ref('customer') }} as c
),


 rishi as (
select 
    c.firstname,
    c.lastname,
    e.title,
    e.vacationhours,
    e.sickleavehours
from customers c
join employees e
on e.employeekey = c.geographykey )

select * from rishi 

