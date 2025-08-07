-- Find patients with 2 or more abnormal results

SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    COUNT(*) AS abnormal_count
FROM lab_results lr
JOIN lab_tests lt ON lr.test_id = lt.test_id
JOIN CL_patients p ON lr.patient_id = p.patient_id
WHERE lt.normal_range_min IS NOT NULL
  AND (
    CAST(lr.result_value AS DECIMAL(10,2)) < lt.normal_range_min
    OR CAST(lr.result_value AS DECIMAL(10,2)) > lt.normal_range_max
  )
GROUP BY p.patient_id
HAVING abnormal_count >= 2;
