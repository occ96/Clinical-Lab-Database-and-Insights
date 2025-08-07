-- Calculate average turnaround time (in days) between test order and result

SELECT 
    lt.test_name,
    ROUND(AVG(DATEDIFF(result_date, order_date)), 2) AS avg_turnaround_days
FROM test_orders o
JOIN lab_tests lt ON o.test_id = lt.test_id
WHERE result_date IS NOT NULL
GROUP BY lt.test_name;
