-- ===============DISTRIBUTION FUNCTIONS=============
-- Use Case: Segment customers by spending and visit frequency
-- Functions: NTILE(), CUME_DIST()
-- ==================================================

SELECT 
    c.customer_id,
    c.name,
    c.region,
    SUM(t.amount) as total_spent,                     -- Total amount spent by each customer
    COUNT(t.transaction_id) as visit_count,          -- Number of transactions
    NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) as spending_quartile,  -- Quartile ranking by spending
    CUME_DIST() OVER (ORDER BY SUM(t.amount)) as cumulative_distribution,  -- Percentile ranking
    CASE 
        WHEN NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) = 1 THEN 'VIP Customer'
        WHEN NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) = 2 THEN 'Regular Customer'
        WHEN NTILE(4) OVER (ORDER BY SUM(t.amount) DESC) = 3 THEN 'Occasional Customer'
        ELSE 'Infrequent Customer'  -- Lowest quartile spenders
    END as customer_segment
FROM customers c
JOIN transactions t ON c.customer_id = t.customer_id
GROUP BY c.customer_id, c.name, c.region
ORDER BY total_spent DESC;
