-- Find top 5 most frequently ordered lab tests

SELECT 
    lt.test_name,
    COUNT(*) AS order_count
FROM test_orders o
JOIN lab_tests lt ON o.test_id = lt.test_id
GROUP BY lt.test_name
ORDER BY order_count DESC
LIMIT 5;
