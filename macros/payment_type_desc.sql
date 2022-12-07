---- 1= Credit card
---- 2= Cash
---- 3= No charge
---- 4= Dispute
---- 5= Unknown
---- 6= Voided trip


{% macro payment_type_desc(payment_type) -%}

    case {{ payment_type }}
        when 1 then 'Credit Card'
        when 2 then 'Cash'
        when 3 then 'No Charge'
        when 4 then 'Dispute'
        when 5 then 'Unknown'
        when 6 then 'Voided trip'
    end

{%- endmacro %}