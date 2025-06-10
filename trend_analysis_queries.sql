-- 📈 Sales Trend Analysis Queries

-- 1. Monthly Revenue
SELECT 
    STRFTIME('%Y-%m', order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM online_sales
GROUP BY month
ORDER BY month;

-- 2. Monthly Order Count
SELECT 
    STRFTIME('%Y-%m', order_date) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY month
ORDER BY month;

-- 3. Top 3 Revenue Months
SELECT 
    STRFTIME('%Y-%m', order_date) AS month,
    SUM(amount) AS revenue
FROM online_sales
GROUP BY month
ORDER BY revenue DESC
LIMIT 3;
