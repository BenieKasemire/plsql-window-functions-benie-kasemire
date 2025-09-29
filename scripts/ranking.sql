-- ===============RANKING FUNCTIONS=============
-- Use Case: Top N customers by revenue
-- Functions: ROW_NUMBER(), RANK(), DENSE_RANK(), PERCENT_RANK()
-- =============================================

SELECT 
    c.customer_id,
    c.name,
    c.region,
    SUM(t.amount) as total_revenue,
    -- Unique sequential numbers
    ROW_NUMBER() OVER (ORDER BY SUM(t.amount) DESC) as row_num,
    -- Rank with gaps for ties
    RANK() OVER (ORDER BY SUM(t.amount) DESC) as rank,
    -- Rank without gaps for ties  
    DENSE_RANK() OVER (ORDER BY SUM(t.amount) DESC) as dense_rank,
    -- Percentage ranking (0-1)
    PERCENT_RANK() OVER (ORDER BY SUM(t.amount) DESC) as percent_rank
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name, c.region
ORDER BY total_revenue DESC;