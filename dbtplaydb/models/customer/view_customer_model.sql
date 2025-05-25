-- The default is a table now on the profile
-- so we can create a view by overriding it

{{ config(materialized='view') }}

-- there is no semi colon at the end
select id, full_name from sales.customer