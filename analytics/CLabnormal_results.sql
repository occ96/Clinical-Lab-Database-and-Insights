-- Identify lab results outside of normal reference range (numerical tests only)

SELECT 
    lr.result_id,
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    lt.test_name,
    lr.result_value,
    lt.normal_range_min,
    lt.normal_range_max,
    -- Determine if result is below, above or within normal limits
    CASE
        WHEN CAST(lr.result_value AS DECIMAL(10,2)) < lt.normal_range_min THEN 'Below Normal'
        WHEN CAST(lr.result_value AS DECIMAL(10,2)) > lt.normal_range_max THEN 'Above Normal'
        ELSE 'Normal'
    END AS status
FROM lab_results lr
JOIN lab_tests lt ON lr.test_id = lt.test_id
JOIN CL_patients p ON lr.patient_id = p.patient_id
WHERE lt.normal_range_min IS NOT NULL
-- Show only results that are abnormal
AND (
    CAST(lr.result_value AS DECIMAL(10,2)) < lt.normal_range_min
    OR CAST(lr.result_value AS DECIMAL(10,2)) > lt.normal_range_max
);
