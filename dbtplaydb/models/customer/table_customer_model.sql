-- this would come as a table since the default now is a table
select
    id,
    SPLIT_PART(full_name, ' ', 1) as first_name,
    SPLIT_PART(full_name, ' ', 2) as last_name
from sales.customer