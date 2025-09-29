-- ===============AGGREGATE FUNCTIONS=============
-- Use Case: Calculate monthly sales totals, running totals using ROWS vs RANGE
-- Functions: SUM() OVER(), AVG() OVER(), MIN() OVER(), MAX() OVER()
-- ===============================================

SELECT 
    TO_CHAR(sale_date, 'YYYY-MM') as month,  -- Convert date to 'YYYY-MM' format for monthly grouping
    SUM(amount) as monthly_sales,            -- Total sales for the month
    -- ROWS: Physical rows; cumulative sum of all months up to current month
    SUM(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM') 
                          ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total_rows,
    -- RANGE: Logical range; groups identical month values for cumulative sum
    SUM(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM') 
                          RANGE BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) as running_total_range,
    AVG(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')) as avg_sales,  -- Average monthly sales
    MIN(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')) as min_sales,  -- Minimum monthly sales
    MAX(SUM(amount)) OVER (ORDER BY TO_CHAR(sale_date, 'YYYY-MM')) as max_sales   -- Maximum monthly sales
FROM transactions
GROUP BY TO_CHAR(sale_date, 'YYYY-MM')
ORDER BY month;