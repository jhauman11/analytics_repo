with 

source as (

    select * from {{ source('raw', 'weather_data_raw') }}

),

renamed as (

    select
        'Test' as test,
        timestamp,
        city,
        lat,
        lon,
        temp_c,
        feels_like_c,
        temp_min_c,
        temp_max_c,
        pressure,
        humidity,
        wind_speed,
        wind_deg,
        wind_gust,
        clouds,
        weather_main,
        weather_description,
        country,
        sunrise_unix,
        sunset_unix,
        utc_offset,
        weather_dt_utc,
        weather_dt_local

    from source

)

select * from renamed
