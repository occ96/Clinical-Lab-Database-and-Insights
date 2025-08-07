-- Analyze any lab test orders in system and then group results by patient sex and test type

SELECT 
    p.sex,
    lt.test_name,
    COUNT(*) AS test_count
FROM test_orders o
JOIN CL_patients p ON o.patient_id = p.patient_id
JOIN lab_tests lt ON o.test_id = lt.test_id
GROUP BY p.sex, lt.test_name
ORDER BY p.sex, test_count DESC;
