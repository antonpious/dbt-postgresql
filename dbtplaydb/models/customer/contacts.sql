{{ config(
  post_hook = "
update {{this}}
 set is_active = 'false'
 where contact_id
 in
 (select t.contact_id from
{{ this }} t
 left join {{ source('dbtplaydb', 'contacts')}} s
  on t.contact_id = s.id
 where s.id is null)"
) }}

with
source as (

    select * from {{ source('dbtplaydb', 'contacts')}}
    {% if is_incremental() %}
        where updated_at > (SELECT MAX(updated_at) FROM {{ this }})  -- incremental condition
    {% endif %}
),

contacts as (
    select 
        ----- id
        id as contact_id,
        *,
        -- last loaded as current timestamp,
        true as is_active,
        CURRENT_TIMESTAMP as last_loaded_at
    from source
)

select * from contacts