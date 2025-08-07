-- Insert sample data into clinical lab analytics tables or derive data from publicly available source

-- Patients data
INSERT INTO CL_patients VALUES (101, 'John', 'Doe', 45, 'M');
INSERT INTO CL_patients VALUES (102, 'Jane', 'Smith', 39, 'F');
INSERT INTO CL_patients VALUES (103, 'Mary', 'Johnson', 28, 'F');
INSERT INTO CL_patients VALUES (104, 'James', 'Brown', 51, 'M');

-- Lab tests definitions
INSERT INTO lab_tests VALUES (1, 'HbA1c', 'Chemistry', 4.0, 5.6, '%');
INSERT INTO lab_tests VALUES (2, 'Triglycerides', 'Chemistry', 0, 150, 'mg/dL');
INSERT INTO lab_tests VALUES (3, 'LDL-C', 'Chemistry', 0, 100, 'mg/dL');
INSERT INTO lab_tests VALUES (4, 'COVID-PCR', 'Molecular', NULL, NULL, 'Positive/Negative');

-- Lab results per patient and test
INSERT INTO lab_results VALUES (1, 101, 1, '2024-01-15', '6.1');
INSERT INTO lab_results VALUES (2, 101, 2, '2024-01-15', '180');
INSERT INTO lab_results VALUES (3, 102, 4, '2024-01-16', 'Positive');
INSERT INTO lab_results VALUES (4, 103, 1, '2024-01-17', '5.3');
INSERT INTO lab_results VALUES (5, 104, 3, '2024-01-18', '95');
INSERT INTO lab_results VALUES (6, 104, 2, '2024-01-18', '140');

-- Test orders with order and result dates
INSERT INTO test_orders VALUES (1, 101, 1, '2024-01-10', '2024-01-15');
INSERT INTO test_orders VALUES (2, 101, 2, '2024-01-10', '2024-01-15');
INSERT INTO test_orders VALUES (3, 102, 4, '2024-01-12', '2024-01-16');
INSERT INTO test_orders VALUES (4, 103, 1, '2024-01-14', '2024-01-17');
INSERT INTO test_orders VALUES (5, 104, 3, '2024-01-16', '2024-01-18');
INSERT INTO test_orders VALUES (6, 104, 2, '2024-01-16', '2024-01-18');
