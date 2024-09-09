
    
    

select
    customer_id as unique_field,
    count(*) as n_records

from "test_db"."public"."sales_summary_by_customer"
where customer_id is not null
group by customer_id
having count(*) > 1


