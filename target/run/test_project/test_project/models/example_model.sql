
  create view "test_db"."public"."example_model__dbt_tmp"
    
    
  as (
    -- models/example_model.sql

select 1 as id, 'dbt' as name
  );