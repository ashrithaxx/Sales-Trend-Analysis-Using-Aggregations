SELECT strftime('%Y', c5) AS year, strftime('%m', c5) AS month, SUM(CAST(c4 AS REAL) * CAST(c6 AS REAL)) AS total_revenue, COUNT(DISTINCT c1) AS total_orders FROM online_sales_dataset GROUP BY year, month ORDER BY year, month;

SELECT strftime('%m', c5) AS month, SUM(CAST(c4 AS REAL) * CAST(c6 AS REAL)) AS total_revenue, COUNT(DISTINCT c1) AS total_orders FROM online_sales_dataset WHERE strftime('%Y', c5) = '2023' GROUP BY month ORDER BY month;

SELECT strftime('%Y-%m', c5) AS month, SUM(CAST(c4 AS REAL) * CAST(c6 AS REAL)) AS total_revenue FROM online_sales_dataset GROUP BY month ORDER BY total_revenue DESC LIMIT 1;

WITH monthly_sales AS (SELECT strftime('%Y-%m', c5) AS month, SUM(CAST(c4 AS REAL) * CAST(c6 AS REAL)) AS revenue FROM online_sales_dataset GROUP BY month) SELECT month, revenue, LAG(revenue) OVER (ORDER BY month) AS previous_month, ROUND((revenue - LAG(revenue) OVER (ORDER BY month)) * 100.0 / LAG(revenue) OVER (ORDER BY month), 2) AS growth_percent FROM monthly_sales;

SELECT c3 AS Description, SUM(CAST(c4 AS REAL) * CAST(c6 AS REAL)) AS total_revenue FROM online_sales_dataset GROUP BY c3 ORDER BY total_revenue DESC LIMIT 5;

SELECT c8 AS Country, SUM(CAST(c4 AS REAL) * CAST(c6 AS REAL)) AS total_revenue FROM online_sales_dataset GROUP BY c8 ORDER BY total_revenue DESC;

SELECT COUNT(*) AS total_orders, SUM(CASE WHEN c14 = 'Returned' THEN 1 ELSE 0 END) AS returned_orders, ROUND(SUM(CASE WHEN c14 = 'Returned' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_percentage FROM online_sales_dataset;

SELECT strftime('%Y-%m', c5) AS month, COUNT(DISTINCT c1) AS total_orders FROM online_sales_dataset GROUP BY month ORDER BY month;