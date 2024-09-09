-- models/fact_sales.sql

WITH customer_sales AS (
    SELECT
        c.c_custkey AS customer_id,
        o.o_orderdate AS order_date,
        SUM(l.l_extendedprice) AS total_sales,
        SUM(l.l_discount) AS total_discount,
        SUM(l.l_quantity) AS total_quantity
    FROM
        lineitem l
    JOIN
        orders o ON l.l_orderkey = o.o_orderkey
    JOIN
        customer c ON o.o_custkey = c.c_custkey
    GROUP BY
        c.c_custkey, o.o_orderdate
)

SELECT
    customer_id,
    order_date,
    total_sales,
    total_discount,
    total_quantity
FROM
    customer_sales
ORDER BY
    order_date, customer_id