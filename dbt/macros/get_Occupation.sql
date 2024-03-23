
{#
    This macro returns the description of the payment_type 
#}

{% macro get_occupation_desc(occupation) -%}

    case {{ dbt.safe_cast("occupation", api.Column.translate_type("integer")) }}  
        when 0 then 'other'
        when 1 then 'academic/educator'
        when 2 then 'artist'
        when 3 then 'clerical/admin'
        when 4 then 'college/grad student'
        when 5 then 'customer service"'
        when 6 then 'doctor/health care'
        when 7 then 'executive/managerial'
        when 8 then 'farmer'
        when 9 then 'homemaker'
        when 10 then 'K-12 student'
        when 11 then 'lawyer'
        when 12 then 'programmer'
        when 13 then 'retired'
        when 14 then 'sales/marketing'
        when 15 then 'scientist'
        when 16 then 'self-employed'
        when 17 then 'technician/engineer'
        when 18 then 'tradesman/craftsman'
        when 19 then 'unemployed'
        when 20 then '"writer'
        else 'EMPTY'
    end

{%- endmacro %}
