select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select customer_id
from "test_db"."public"."sales_summary_by_customer"
where customer_id is null



      
    ) dbt_internal_test