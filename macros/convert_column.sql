{% macro payment_type_desc(payment_type) -%}

    case {{ payment_type }}
        when 1 then 'Credit Card'
        when 2 then 'Cash'
        when 3 then 'No Charge'
        when 4 then 'Dispute'
        when 5 then 'Unknown'
        else 'Voided trip'
    end

{%- endmacro %}

{% macro ratecode_desc(ratecode_id) -%}
    case {{ ratecode_id }}
        when '1' then "Standard rate"
        when '2' then "JFK"
        when '3' then "Newark"
        when '4' then "Nassau or Westchester"
        when '5' then "Negotiated fare"
        when '6' then "Group ride"
    end
{%- endmacro %}

{% macro vendor_desc(vendor_id) -%}
    case {{ vendor_id }}
        when '1' then "Creative Mobile Technologies, LLC"
        when '2' then "VeriFone Inc"
    end
{%- endmacro %}
