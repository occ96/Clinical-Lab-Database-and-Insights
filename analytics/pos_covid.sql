-- Count daily positive COVID-PCR test results

SELECT 
    lr.test_date,
    COUNT(*) AS positive_cases
FROM lab_results lr
JOIN lab_tests lt ON lr.test_id = lt.test_id
WHERE lt.test_name = 'COVID-PCR'
  AND LOWER(lr.result_value) = 'positive'
GROUP BY lr.test_date
ORDER BY lr.test_date;
