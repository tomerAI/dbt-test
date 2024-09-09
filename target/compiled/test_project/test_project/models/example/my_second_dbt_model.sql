-- Use the `ref` function to select from other models

select *
from "test_db"."public"."my_first_dbt_model"
where id = 1