-- models/sales/sales_summary_by_date.sql

SELECT
    o.o_orderdate AS order_date,
    SUM(l.l_extendedprice) AS total_sales,
    SUM(l.l_discount) AS total_discount,
    SUM(l.l_quantity) AS total_quantity_sold
FROM
    lineitem l
JOIN
    orders o ON l.l_orderkey = o.o_orderkey
GROUP BY
    o.o_orderdate
ORDER BY
    o.o_orderdate
