with 

source as (

    select * from {{ source('staging', 'user') }}

),

renamed as (

    select
        userid,
        gender,
        age,
        {{ get_age_range_desc('age') }} as age_range,
        occupation,
        {{ get_occupation_desc('occupation') }} as occupation_desc,
        zip_code

    from source

)

select * from renamed
