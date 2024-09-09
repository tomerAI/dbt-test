-- models/sales/sales_summary_by_customer.sql

SELECT
    c.c_custkey AS customer_id,
    c.c_name AS customer_name,
    SUM(l.l_extendedprice) AS total_sales,
    SUM(l.l_discount) AS total_discount,
    SUM(l.l_quantity) AS total_quantity_purchased
FROM
    lineitem l
JOIN
    orders o ON l.l_orderkey = o.o_orderkey
JOIN
    customer c ON o.o_custkey = c.c_custkey
GROUP BY
    c.c_custkey, c.c_name
ORDER BY
    total_sales DESC
