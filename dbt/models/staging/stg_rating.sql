with 

source as (

    select *,
    row_number() over(partition by userid, movieid) as rn
    from {{ source('staging', 'rating') }}
    where userid is not null 

)

select
        {{ dbt_utils.generate_surrogate_key(['userid', 'movieid']) }} as ratingid,
        userid,
        movieid,
        rating,
        cast(timestamp as timestamp) as rating_timestamp

    from source
    where rn=1




{% if var('is_test_run', default=true) %}

  limit 100

{% endif %}

-- dbt build --select <model_name> --vars '{'is_test_run': 'false'}'
-- dbt build --select stg_all_greent_taxi_external --vars '{'is_test_run': 'false'}'




    



