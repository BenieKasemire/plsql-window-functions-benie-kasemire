-- ===============NAVIGATION=============
-- Use Case: Analyze month-over-month growth in sales
-- Functions: LAG(), LEAD()
-- =======================================

WITH monthly_sales AS (
    SELECT 
        TO_CHAR(sale_date, 'YYYY-MM') as month,  -- Convert date to monthly format
        SUM(amount) as monthly_sales             -- Total sales per month
    FROM transactions
    GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
)
SELECT 
    month,
    monthly_sales,
    -- Sales from previous month
    LAG(monthly_sales, 1) OVER (ORDER BY month) as prev_month_sales,
    -- Sales for next month (can be used for forecasting)
    LEAD(monthly_sales, 1) OVER (ORDER BY month) as next_month_sales,
    -- Calculate month-over-month growth percentage
    ROUND(((monthly_sales - LAG(monthly_sales, 1) OVER (ORDER BY month)) / 
          LAG(monthly_sales, 1) OVER (ORDER BY month)) * 100, 2) as growth_percentage
FROM monthly_sales
ORDER BY month;