{{
    config(
        materialized='table'
    )
}}

with 
users as (
    select *
        
    from {{ ref("stg_user") }}

),

rating as (
    select *
        
    from {{ ref("stg_rating") }}

),


movie as (
    select *
        
    from {{ ref("stg_movie") }}

)

select 
rating.ratingid,
movie.title as Movie_name,
movie.genres,
movie.moviedate,
rating.rating,
rating.userid,
users.gender,
users.age_range as User_age,
users.occupation_desc as user_occupation,
users.zip_code as user_Zipcode,
rating.rating_timestamp,

from rating
inner join users on rating.userid=users.userid
inner join movie on rating.movieid=movie.movieid


