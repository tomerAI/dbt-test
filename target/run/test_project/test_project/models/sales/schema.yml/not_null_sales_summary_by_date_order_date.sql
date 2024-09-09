select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select order_date
from "test_db"."public"."sales_summary_by_date"
where order_date is null



      
    ) dbt_internal_test