with 

source as (

    select * from {{ source('staging', 'movie') }}

),

renamed as (

    select
        movieid,
        title,
        genres,
        moviedate

    from source

)

select * from renamed
